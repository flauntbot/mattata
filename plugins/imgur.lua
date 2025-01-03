--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local imgur = {}
local mattata = require('mattata')
local https = require('ssl.https')
local url = require('socket.url')
local ltn12 = require('ltn12')
local json = require('dkjson')

function imgur:init()
    imgur.commands = mattata.commands(self.info.username):command('imgur').table
    imgur.help = '/imgur - Uploads the replied-to photo to Imgur and returns the post URL. If the image has a caption, that caption is used as the description.'
end

function imgur:on_message(message, configuration, language)
    if not message.reply
    then
        return mattata.send_reply(
            message,
            'You must send this message as a reply to the photo you want to upload!'
        )
    elseif not message.reply.photo
    then
        return mattata.send_reply(
            message,
            'That\'s not a photo! You must send this command in reply to a photo.'
        )
    end
    local success = mattata.get_file(message.reply.photo[#message.reply.photo].file_id)
    if not success
    or not success.result
    or not success.result.file_path
    then
        return mattata.send_reply(
            message,
            'There was an error whilst retrieving that photo, so I could not upload it to Imgur - perhaps it\'s too old?'
        )
    end
    local query = 'image=' .. url.escape(configuration.endpoint .. configuration.bot_token .. '/' .. success.result.file_path)
    if message.reply.caption
    then
        if message.reply.caption:match('^.- %- .-$')
        then
            local title, description = message.reply.caption:match('^(.-) %- (.-)$')
            query = query .. '&title=' .. url.escape(title)
            message.reply.caption = description
        end
        query = query .. '&description=' .. url.escape(message.reply.caption)
    end
    local response = {}
    local _, res = https.request(
        {
            ['url'] = 'https://api.imgur.com/3/image',
            ['method'] = 'POST',
            ['headers'] = {
                ['Authorization'] = 'Client-ID ' .. configuration['keys']['imgur']['client_id'],
                ['Content-Type'] = 'application/x-www-form-urlencoded',
                ['Content-Length'] = query:len()
            },
            ['source'] = ltn12.source.string(query),
            ['sink'] = ltn12.sink.table(response)
        }
    )
    if res ~= 200
    then
        return mattata.send_reply(
            message,
            language['errors']['connection']
        )
    end
    local jstr = table.concat(response)
    local jdat = json.decode(jstr)
    if not jdat
    or not jdat.success
    or not jdat.data
    or not jdat.data.link
    then
        return mattata.send_reply(
            message,
            'There was an error whilst uploading that photo to Imgur!'
        )
    end
    return mattata.send_reply(
        message.reply,
        'Image successfully uploaded to Imgur. Click [here](https://' .. jdat.data.link:match('^https?://i%.(.-%..-)%.') .. ') to view it.',
        'markdown'
    )
end

return imgur