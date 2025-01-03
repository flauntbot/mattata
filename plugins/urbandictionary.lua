--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local urbandictionary = {}

local mattata = require('mattata')
local url = require('socket.url')
local https = require 'http.request'
local json = require('dkjson')
local redis = require('libs.redis')

function urbandictionary:init()
    urbandictionary.commands = mattata.commands(
        self.info.username
    ):command('urbandictionary')
     :command('urban')
     :command('ud').table
    urbandictionary.help = [[/urbandictionary <query> - Searches the Urban Dictionary for the given search query and returns the most relevant result(s). Aliases: /urban, /ud.]]
end

function urbandictionary:on_inline_query(inline_query, configuration)
    local input = mattata.input(inline_query.query)
    if not input then
        return
    end
    local headers, stream = https.new_from_uri('http://api.urbandictionary.com/v0/define?term=' .. url.escape(input)):go()
    local jstr = stream:get_body_as_string()
    if headers:get ':status' ~= '200' then
        return
    end
    local jdat = json.decode(jstr)
    if #jdat.list == 0 then
        return
    end
    local results = {}
    local id = 1
    for n in pairs(jdat.list) do
        table.insert(
            results,
            {
                ['type'] = 'article',
                ['id'] = tostring(id),
                ['title'] = jdat.list[n].word,
                ['description'] = jdat.list[n].definition,
                ['input_message_content'] = {
                    ['message_text'] = '<b>' .. mattata.escape_html(jdat.list[n].word) .. '</b>\n\n' .. mattata.escape_html(jdat.list[n].definition),
                    ['parse_mode'] = 'html'
                }
            }
        )
        id = id + 1
    end
    return mattata.answer_inline_query(
        inline_query.id,
        json.encode(results)
    )
end

function urbandictionary.get_result_count(input)
    local headers, stream = https.new_from_uri('http://api.urbandictionary.com/v0/define?term=' .. url.escape(input)):go()
    local jstr = stream:get_body_as_string()
    if headers:get ':status' ~= '200' then
        return 0
    end
    local jdat = json.decode(jstr)
    if jdat.result_type == 'no_results' then
        return 0
    end
    return #jdat.list
end

function urbandictionary.get_result(input, n)
    n = n or 1
    local headers, stream = https.new_from_uri('http://api.urbandictionary.com/v0/define?term=' .. url.escape(input)):go()
    local jstr = stream:get_body_as_string()
    if headers:get ':status' ~= '200' then
        return false, false
    end
    local jdat = json.decode(jstr)
    if jdat.result_type == 'no_results' then
        return false, false
    elseif not jdat.list or #jdat.list == 0 then
        return false, false
    elseif not jdat.list[n].example then
        return false, false
    end
    local definition = mattata.escape_html(jdat.list[n].definition)
    definition = definition:gsub('%[word%](.-)%[%/word%]', '<a href="https://www.urbandictionary.com/define.php?term=%1">%1</a>'):gsub('%[(.-)%]', '<a href="https://www.urbandictionary.com/define.php?term=%1">%1</a>')
    local output = '<b>' .. jdat.list[n].word .. '</b>\n\n' .. mattata.trim(definition)
    local example = mattata.escape_html(jdat.list[n].example):gsub('%[word%]', ''):gsub('%[%/word%]', '')
    local thumbs_up = '👍 ' .. jdat.list[n].thumbs_up
    local thumbs_down = '👎 ' .. jdat.list[n].thumbs_down
    local author = '💁 ' .. '<a href="https://www.urbandictionary.com/author.php?author=' .. url.escape(jdat.list[n].author) .. '">' .. mattata.escape_html(jdat.list[n].author) .. '</a>'
    return output .. '\n\n<i>' .. mattata.trim(example) .. '</i>\n\n' .. thumbs_up .. ' | ' .. thumbs_down .. ' | ' .. author, jdat.list[n].defid
end

function urbandictionary:on_callback_query(callback_query, message, configuration)
    if not message.reply then
        return
    end
    if callback_query.data:match('^results:(%d*)$') then
        local result = callback_query.data:match('^results:(%d*)$')
        local input = mattata.input(message.reply.text)
        local total_results = urbandictionary.get_result_count(input)
        if tonumber(result) > tonumber(total_results) then
            result = 1
        elseif tonumber(result) < 1 then
            result = tonumber(total_results)
        end
        local output, def_id = urbandictionary.get_result(
            input,
            tonumber(result)
        )
        if not output then
            return mattata.answer_callback_query(
                callback_query.id,
                'An error occured!'
            )
        end
        local previous_result = 'urbandictionary:results:' .. math.floor(tonumber(result) - 1)
        local next_result = 'urbandictionary:results:' .. math.floor(tonumber(result) + 1)
        local keyboard = {}
        keyboard.inline_keyboard = {
            {
                {
                    ['text'] = '← Previous',
                    ['callback_data'] = previous_result
                },
                {
                    ['text'] = result .. '/' .. total_results,
                    ['callback_data'] = 'urbandictionary:pages:' .. result .. ':' .. total_results
                },
                {
                    ['text'] = 'Next →',
                    ['callback_data'] = next_result
                }
            },
            {
                {
                    ['text'] = 'Get this definition on a mug!',
                    ['url'] = 'https://urbandictionary.store/products/mug?defid=' .. def_id
                }
            }
        }
        return mattata.edit_message_text(
            message.chat.id,
            message.message_id,
            output,
            'html',
            true,
            json.encode(keyboard)
        )
    elseif callback_query.data:match('^pages:(.-):(.-)$') then
        local current, total = callback_query.data:match('^pages:(.-):(.-)$')
        return mattata.answer_callback_query(
            callback_query.id,
            string.format(
                'You are on page %s of %s!',
                tostring(current),
                tostring(total)
            )
        )
    end
end

function urbandictionary:on_message(message, configuration)
    local input = mattata.input(message.text)
    if not input then
        local success = mattata.send_force_reply(
            message,
            'Please enter a search query (that is, what you want me to search the Urban Dictionary for, i.e. "1337" will return Urban Dictionary\'s definition(s) of 1337).'
        )
        if success then
            redis:set(
                string.format(
                    'action:%s:%s',
                    message.chat.id,
                    success.result.message_id
                ),
                '/urbandictionary'
            )
        end
        return
    end
    local output, def_id = urbandictionary.get_result(input)
    if not output then
        return mattata.send_reply(
            message,
            configuration.errors.results
        )
    end
    local keyboard = {}
    keyboard.inline_keyboard = {
        {
            {
                ['text'] = '← Previous',
                ['callback_data'] = 'urbandictionary:results:0'
            },
            {
                ['text'] = '1/' .. urbandictionary.get_result_count(input),
                ['callback_data'] = 'urbandictionary:pages:1:' .. urbandictionary.get_result_count(input)
            },
            {
                ['text'] = 'Next →',
                ['callback_data'] = 'urbandictionary:results:2'
            },
        },
        {
            {
                ['text'] = 'Get this definition on a mug!',
                ['url'] = 'https://urbandictionary.store/products/mug?defid=' .. def_id
            }
        }
    }
    return mattata.send_message(
        message.chat.id,
        output,
        'html',
        true,
        false,
        message.message_id,
        json.encode(keyboard)
    )
end

return urbandictionary