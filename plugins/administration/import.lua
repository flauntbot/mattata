--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local import = {}
local mattata = require('mattata')
local redis = require('libs.redis')

function import:init()
    import.commands = mattata.commands(self.info.username):command('import').table
    import.help = string.format('/import - Import administrative settings & toggled plugins from another %s-administrated group.', self.info.username)
end

function import.on_message(_, message, _, language)
    if message.chat.type ~= 'supergroup' then
        return mattata.send_reply(message, language.errors.supergroup)
    elseif not mattata.is_group_admin(message.chat.id, message.from.id) then
        return mattata.send_reply(message, language.errors.admin)
    end
    local input = mattata.input(message.text)
    if not input then
        return mattata.send_reply(message, import.help)
    end
    input = mattata.get_chat(input)
    if not input then
        return mattata.send_reply(message, language['import']['1'])
    elseif input.result.type ~= 'supergroup' then
        return mattata.send_reply(message, language['import']['2'])
    end
    local current = redis:hgetall('chat:' .. message.chat.id .. ':settings')
    local settings = redis:hgetall('chat:' .. input.result.id .. ':settings')
    for k, _ in pairs(current) do
        if k ~= 'use administration' then
            redis:hdel('chat:' .. message.chat.id .. ':settings', k)
        end
    end
    for k, v in pairs(settings) do
        redis:hset('chat:' .. message.chat.id .. ':settings', k, v)
    end
    current = redis:smembers('disabled_plugins:' .. message.chat.id)
    local plugins = redis:smembers('disabled_plugins:' .. input.result.id)
    for _, v in pairs(current) do
        redis:srem('disabled_plugins:' .. message.chat.id, v)
    end
    for _, v in pairs(plugins) do
        redis:sadd('disabled_plugins:' .. message.chat.id, v)
    end
    local output = string.format(language['import']['3'], input.result.title, message.chat.title)
    return mattata.send_message(message.chat.id, output)
end

return import