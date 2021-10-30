--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local commandstats = {}
local mattata = require('mattata')
local redis = require('libs.redis')

function commandstats:init()
    commandstats.commands = mattata.commands(self.info.username):command('commandstats'):command('cmdstats').table
    commandstats.help = '/commandstats - Shows statistical information about the current chat\'s top ten commands (ordered by message count). Alias: /cmdstats.'
end

function commandstats:on_new_message(message)
    if self.is_command then
        local command = message.text:match('^([!/#][%w_]+)')
        if command then
            redis:incr('commandstats:' .. message.chat.id .. ':' .. command)
            if not redis:sismember('chat:' .. message.chat.id .. ':commands', command) then
                redis:sadd('chat:' .. message.chat.id .. ':commands', command)
            end
        end
    end
end

function commandstats.reset_command_stats(chat_id)
    if not chat_id or tonumber(chat_id) == nil then
        return false
    end
    local messages = redis:keys('commandstats:' .. chat_id .. ':*')
    for _, v in pairs(messages) do
        redis:del(v)
    end
    return true
end

function commandstats.get_all_commands()
    local keys = redis:keys('commandstats:*')
    local statistics = {}
    local commands = {}
    for i = 1, #keys do
        local name = string.match(keys[i], '[/!#]%a+')
        if commands[name] then
            commands[name] = commands[name] + redis:get(keys[i])
        else
            commands[name] = redis:get(keys[i])
        end
    end
    for k, v in pairs(commands) do
        table.insert(statistics, {
            ['command'] = k,
            ['count'] = v
        })
    end
    return statistics
end

function commandstats.get_command_stats(chat_id, title, language)
    local statistics
    if chat_id == 0 then
        statistics = commandstats.get_all_commands()
    else
        statistics = {}
        local commands = redis:smembers('chat:' .. chat_id .. ':commands')
        for i = 1, #commands do
            local command = commands[i]
            local command_info = {
                ['command'] = command
            }
            command_info.count = redis:get('commandstats:' .. chat_id .. ':' .. command)
            if command_info.count and tonumber(command_info.count) ~= nil then
                table.insert(statistics, command_info)
            end
        end

    end
    table.sort(statistics, function(a, b)
    if a.count and b.count then
    return tonumber(a.count) > tonumber(b.count)
    end
    end)
    local total = 0
    for _, v in pairs(statistics) do
    total = total + v.count
    end
    local text = ''
    local output = {}
    local lim = 10
    if chat_id == 0 then
        lim = #statistics
    end
    for i = 1, lim do
    table.insert(output, statistics[i])
    end
    for _, v in pairs(output) do
    local percent = tostring(mattata.round((v.count / total) * 100, 1))
    percent = string.format('%.1f', percent)
    text = text .. mattata.escape_html(v.command) .. ': <b>' .. mattata.comma_value(v.count) .. '</b> [' .. percent .. '%]\n'
    end
    if not text or text == '' then
    return language['commandstats']['1']
    end
    return string.format(
    language['commandstats']['2'],
    mattata.escape_html(title), text,
    mattata.comma_value(total):gsub('%..-$', '')
    )
    end

function commandstats.on_message(_, message, _, language)
    local input = mattata.input(message.text)
    local output
    -- added this because.... dying to know. but it uses redis KEYS method, which is SLOW and LOCKS DB
    -- how can i change to SCAN or otherwise go faster?
    if input and input:lower() == 'all' and mattata.is_global_admin(message.from.id) then
        output = commandstats.get_command_stats(0, 'all chats', language)
        return mattata.send_message(message.chat.id, output, 'html')
    end

    if message.chat.type == 'private' then
        return mattata.send_message(message.chat.id, language.errors.supergroup)
    end

    if input and input:lower() == 'reset' and mattata.is_group_admin(message.chat.id, message.from.id) then
        output = commandstats.reset_command_stats(message.chat.id) and language['commandstats']['3'] or language['commandstats']['4']
        return mattata.send_message(message.chat.id, output)
    end
    output = commandstats.get_command_stats(message.chat.id, message.chat.title, language)
    return mattata.send_message(message.chat.id, output, 'html')
end

return commandstats