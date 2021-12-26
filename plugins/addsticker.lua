--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>, 2021 Chris
    This code is licensed under the MIT. See LICENSE for details.
]]

-- animated stickers have to go in special animated sticker packs.
-- we still add them to the pack, using external command to thumbnail at 80%

local addsticker = {}
local mattata = require('mattata')
local json = require('dkjson')
local redis = require('libs.redis')
local utf8 = utf8 or require('lua-utf8') -- Lua 5.2 compatibility.

function addsticker:init()
    addsticker.commands = mattata.commands(self.info.username):command('addsticker'):command('getsticker').table
    addsticker.help = '/addsticker [pack name] - Converts the replied-to photo into a sticker and adds it to your pack. Use /getsticker to get the uncompressed file to send to @stickers.'
end

function addsticker.delete_file(file)
    os.execute('rm ' .. file)
    os.execute('rm -f output.png')
    return true
end

function addsticker.new_pack(message, set_id, title, file, character) -- amount
    -- name logic needs to be injected in here so i can increment the pack number
    set_id = set_id + 1
    local name = addsticker.generate_name(message.from.id, set_id)
    local success, res = mattata.create_new_sticker_set(message.from.id, name, title, file, character)
    if not success and res.description == "Bad Request: sticker set name is already occupied" then
        -- need to increment pack number here
        redis:hset('user:' .. message.from.id .. ':info', 'sticker_packs', set_id)
        return addsticker.add_to_pack(message, set_id, title, file, character)
    end
    -- update pack count in database before handing back
    if success then
        redis:hset('user:' .. message.from.id .. ':info', 'sticker_packs', set_id)
        mattata.send_reply(message, 'I\'ve created you a pack called _' .. mattata.escape_markdown(title) .. '_ and added that sticker to [your new pack](https://t.me/addstickers/' .. name .. ')!', true, true)
    end
    return success, res, name, set_id -- pack name? what info we need to put a sticker in?
end

function addsticker.add_to_pack(message, set_id, title, file, character)
    local name = addsticker.generate_name(message.from.id, set_id)
    local success, res
    success, res = mattata.add_sticker_to_set(message.from.id, name, file, character)
    if not success and res.description == "Bad Request: STICKERSET_INVALID" then
        local exists = mattata.get_sticker_set(name)
        if exists then
            set_id = set_id + 1
        end
        return addsticker.new_pack(message, set_id, title, file, character)
    end
    if success then
        mattata.send_reply(message, 'I\'ve added that to [your pack](https://t.me/addstickers/' .. name .. ')!', true, true)
    end
    return success, res, name, set_id
end

function addsticker.generate_name(who, which)
    return string.format('U%s_%s_by_%s', who, which, mattata.info.username:lower())
end

function addsticker:on_message(message, configuration, language)
    local is_sticker, is_text, is_animated
    local input = mattata.input(message.text)
    if not message.reply then
        return mattata.send_reply(message, 'You must use this command in reply to a photo!')
    elseif not message.reply.is_media and message.reply.text then
        -- original user data is hidden in database; mattata messes it up with nicknames
        -- print(json.encode(mattata.get_chat(sender.id))) -- might be better?
        local sender = redis:hgetall('user:' .. message.reply.from.id .. ':info')
        if not message.reply.from.has_nickname then
            sender = message.reply.from
        end
        if message.reply.media_type == "forwarded" then
            if message.reply.forward_from_chat then
                sender = {
                    ['id'] = message.reply.forward_from_chat.id,
                    ['name'] = message.reply.forward_from_chat.title
                }
            else
                sender = message.reply.forward_from
            end
        else if message.reply.forward_sender_name then
            sender = {
                ['id'] = message.reply.forward_sender_name.length,
                ['name'] = message.reply.forward_sender_name
            }
        end
        end
        local success = mattata.get_user_profile_photos(sender.id)

        if success and success.result.total_count > 0 then
            sender.avatar = mattata.get_file(success.result.photos[1][1].file_id).result.file_path
        end

        local payload = {
            ['backgroundColor'] = '#243447',
            ['width'] = 512,
            ['scale'] = 2,
            ['message'] = {
                ['chatId'] = sender.id,
                ['from'] = sender,
                ['text'] = message.reply.text,
                --['replyMessage'] = reply,
                ['entities'] = message.reply.entities
            }
        }
        payload = json.encode(payload) -- Serialise the payload.
        local rr = io.popen("mtsticker ".. configuration.bot_directory .. '/output.webp', "w")
        rr:write(payload)
        rr:flush()
        rr:close()
        is_text = true
    elseif message.reply.sticker then
        if message.reply.sticker.is_animated then
            is_animated = true
        end
        is_sticker = true
    elseif not message.reply.photo and not message.reply.document then
        return mattata.send_reply(message, 'You must use this command in reply to a photo!')
    elseif message.reply.document then
        if (message.reply.document.mime_type ~= 'image/jpeg' and message.reply.document.mime_type ~= 'image/png') or not message.reply.document.file_name:match('%.[JjPp][PpNn][Ee]?[Gg]$') then
            if not message.reply.animation then
                return mattata.send_reply(message, 'The file must be JPEG or a PNG image.')
            end
        elseif message.reply.document.file_size > 1048576 then
            return mattata.send_reply(message, 'Please send a photo that is 1MB or smaller in file size!')
        end
    end

    local file, file_name
    if not is_text and message.reply.is_media then
        file = mattata.get_file(message.reply.file_id)
        if not file then
            return mattata.send_reply(message, language.errors.generic)
        end
        file_name = file.result.file_path
        if not configuration.local_mode then
            file_name = file.result.file_path
            local file_path = string.format('%s%s/%s', configuration.endpoint, configuration.bot_token, file_name)
            file = mattata.download_file(file_path, file_name:match('/(.-)$'), configuration.bot_directory)
            if not file then
                return false
            end
            file_name = file_name:match('/(.-)$')
        end
    else
        file_name = 'output.webp'
        file = configuration.bot_directory .. '/output.webp'
    end
    local command
    if is_sticker or (not is_text and message.reply.is_media) then
        if is_animated then
            command = string.format('lottiethumb %s output.png', file_name)
        else
            -- string.format('dwebp %s -resize 512 512 -o output.png', file_name) or
            command = string.format('convert %s[0] -resize 512x512 output.png', file_name)
        end
    end
    os.execute(command)
    local output_file = configuration.bot_directory .. '/output.png'
    if message.text:match('^[/!#]getsticker') then
        mattata.send_document(message.chat.id, output_file)
        if type(file) == 'string' then
            return addsticker.delete_file(file)
        end
        return true
    end

    -- start sticker uploading bit

    local amount = redis:hget('user:' .. message.from.id .. ':info', 'sticker_packs') or 0

    local emojis = input or  utf8.char(128045)

    local set_name
    local set_title = message.from.original_name or message.from.first_name
    local success, res
    local fn
    fn = output_file
    if is_text then
        fn = file_name
    end


    if amount == 0 or amount == '0' then
        success, res, set_name = addsticker.new_pack(message, amount, set_title, fn, emojis)
        if success then
            -- idk man, we already said what we were doing
            return true
        end
    else
        success, res, set_name = addsticker.add_to_pack(message, amount, set_title, fn, emojis)
        if success then
            -- we already said what we were doing
            return true
        end
    end

    if res.description == "Bad Request: invalid sticker emojis" then
        return mattata.send_reply(message, "Sticker emoji given as argument didn't work!", true, true)
    elseif res.description == "Bad Request: user not found" or res.description == "Bad Request: PEER_ID_INVALID" then
        return mattata.send_reply(message, 'I can\'t create your sticker pack until you\'ve [started a private chat](https://t.me/' .. self.info.username .. ') with me!', true, true)
    end

    -- do something with res
    mattata.send_message(mattata.get_log_chat(0), json.encode(success) .. json.encode(res) .. set_name, 'html')
    if type(file) == 'string' and success then addsticker.delete_file(file) end
    return mattata.send_reply(message, language.errors.generic)

end

return addsticker
