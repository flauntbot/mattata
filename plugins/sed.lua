--[[
    Based on a plugin by topkecleon. Licensed under GNU AGPLv3
    https://github.com/topkecleon/otouto/blob/master/LICENSE.
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local sed = {}
local mattata = require('mattata')
local re = require('re')
local regex = require('rex_pcre')
local utf8 = utf8 or require('lua-utf8') -- Lua 5.2 compatibility.

function sed:init()
    sed.commands = { '^[sS]/.-/.-/?.?$' }
    sed.help = 's/pattern/substitution - Replaces all occurences, of text matching a given PCRE pattern, with the given substitution. \
    \nAlso supports chaining multiple substitutions in one line, separated by semicolons (e.g. s/a/b/ ; s/c/d/).'
end

local compiled = re.compile [[
invocation <- 's/' {~ pcre ~} '/' {~ replace ~} ('/' modifiers)? !.
pcre <- ( [^\/] / slash / '\' )*
replace <- ( [^\/%$\\] / percent / slash / capture / '\' / '$' )*

modifiers <- { flags? } {~ matches? ~} {~ probability? ~}

flags <- ('i' / 'm' / 's' / 'x' / 'U' / 'X')+
matches <- ('#' {[0-9]+}) -> '%1'
probability <- ('%' {[0-9]+}) -> '%1'

slash <- ('\' '/') -> '/'
percent <- '%' -> '%%%%'
capture <- (('$' {[0-9]+}) / ('\\' {[0-9]+})) -> '%%%1'
]]

function sed:on_callback_query(callback_query, message, configuration, language)
    if not message.reply then
        return mattata.delete_message(message.chat.id, message.message_id)
    elseif mattata.is_global_admin(callback_query.from.id) then
        -- we'll pull a sneaky on them
        callback_query.from = message.reply.from
    elseif message.reply.from.id ~= callback_query.from.id then
        return mattata.answer_callback_query(callback_query.id, 'That\'s not your place to say!')
    end
    local output = string.format(
        '<b>%s:</b>\n%s',
        message.text:match('^(.-):'),
        message.text:match(':\n(.-)$')
    )
    if callback_query.data:match('^no$') then
        output = string.format(
            language['sed']['1'],
            output,
            mattata.escape_html(callback_query.from.first_name)
        )
    elseif callback_query.data:match('^yes$') then
        output = string.format(
            language['sed']['2'],
            output,
            mattata.escape_html(callback_query.from.first_name)
        )
    elseif callback_query.data:match('^maybe$') then
        output = string.format(
            language['sed']['3'],
            output,
            mattata.escape_html(callback_query.from.first_name)
        )
    end
    return mattata.edit_message_text(
        message.chat.id,
        message.message_id,
        output,
        'html'
    )
end

function sed:on_message(message, _, language)
    if not message.reply then
        return false
    --elseif message.reply.from.id == self.info.id then
    --    return mattata.send_reply(message, language['sed']['4'], 'html')
    --elseif message.reply.from.id == message.from.id then
    --    return mattata.send_reply(message, language['sed']['10'])
    end

    -- The text to perform substitutions on:
    local original_text = message.reply.text
    if not original_text or original_text == '' then
        return false
    end
    -- We'll look for ALL valid s/.../.../ patterns in the incoming message,
    -- separated by semicolons or just whitespace. This pattern is flexible,
    -- and we feed each one to our "compiled" grammar above.
    local all_cmds = {}
    for cmd in message.text:gmatch('[sS]/[^/]+/[^/]+/[^%s;]*') do
        table.insert(all_cmds, cmd)
    end
    -- If none matched with that more specific pattern, try a simpler one:
    if #all_cmds == 0 then
        -- This pattern looks for s/whatever/whatever[/optional_modifiers]
        -- and is a bit more inclusive. You could unify these into one, but
        -- sometimes it's easier just to do multiple attempts.
        for cmd in message.text:gmatch('[sS]/.-/.-/?.?') do
            table.insert(all_cmds, cmd)
        end
    end

    if #all_cmds == 0 then
        return false
    end
    local result = original_text
    local any_matches = 0

    for _, substitution_cmd in ipairs(all_cmds) do
        -- Make sure the command actually fits 's/' prefix
        if not substitution_cmd:match('^[sS]/') then
            goto continue
        end

        -- Try to parse the command
        local pattern, replace, flags, matches, probability = compiled:match(substitution_cmd)
        if not pattern then
            -- If the user typed invalid syntax, skip it
            goto continue
        end

        if matches then
            matches = tonumber(matches)
        end
        if probability then
            probability = tonumber(probability)
        end

        -- Probability-based or "N matches" logic
        if probability then
            if not matches then
                matches = function()
                    return math.random() * 100 < probability
                end
            else
                local remaining = matches
                matches = function()
                    local temp
                    if remaining > 0 then
                        temp = nil
                    else
                        temp = 0
                    end
                    remaining = remaining - 1
                    return math.random() * 100 < probability, temp
                end
            end
        end
        local success, new_text, matched = pcall(function()
            -- Apply the substitution to our running "result"
            return regex.gsub(result, pattern, replace, matches, flags)
        end)
        if success and matched and matched > 0 then
            result = mattata.trim(new_text)
            any_matches = any_matches + matched
        end
        ::continue::
    end

    if any_matches == 0 then
        -- No successful substitutions happened
        return false
    end

    -- Build the final message that will be sent
    if not result or result == '' then
        return false
    end
    local user = mattata.get_formatted_user(message.reply.from.id, message.reply.from.first_name, 'html')
    local from = mattata.get_formatted_user(message.from.id, message.from.first_name, 'html')
    return mattata.send_message(
        message.chat.id,
        string.format(
            language['sed']['6'],
            user,
            from,
            mattata.escape_html(result)
        ),
        'html',
        true,
        false,
        message.reply.message_id,
        mattata.inline_keyboard():row(
            mattata.row():callback_data_button(
                utf8.char(128077),
                'sed:yes'
            ):callback_data_button(
                utf8.char(128078),
                'sed:no'
            ):callback_data_button(
                '¯\\_(ツ)_/¯',
                'sed:maybe'
            )
        )
    )
end

return sed