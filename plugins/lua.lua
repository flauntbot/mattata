--[[
    Based on a plugin by topkecleon. Licensed under GNU AGPLv3
    https://github.com/topkecleon/otouto/blob/master/LICENSE.
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local lua = {}
local mattata = require('mattata')
local json = require('dkjson')

function lua:init()
    lua.commands = mattata.commands(self.info.username):command('lua').table
    lua.error_message = function(error_message)
        return 'Error:\n' .. tostring(error_message)
    end
end

function lua:on_message(message, configuration, language)
    if not mattata.is_global_admin(message.from.id) then
        return
    end
    local input = mattata.input(message.text)
    if not input then
        local text = language['lua']['1']
        return mattata.send_reply(message, text)
    end
    local output, success = load(
    "local mattata = require('mattata')\n\z
    local configuration = require('configuration')\n\z
    local api = require('telegram-bot-luajit.core').configure(configuration.bot_token)\n\z
    local tools = require('telegram-bot-luajit.tools')\n\z
    local https = require('ssl.https')\n\z
    local http = require('socket.http')\n\z
    local url = require('socket.url')\n\z
    local ltn12 = require('ltn12')\n\z
    local json = require('dkjson')\n\z
    local utf8 = utf8 or require('lua-utf8') -- Lua 5.2 compatibility.\n\z
    local socket = require('socket')\n\z
    local redis = require('libs.redis')\n\z
    return function (self, message, configuration)\n" .. input .. '\nend')
    if output == nil then
        output = success
    else
        success, output = xpcall(
            output(),
            lua.error_message,
            self,
            message,
            configuration
        )
    end
    if output ~= nil and type(output) == 'table' then
        output = json.encode(output, { ['indent'] = true })
    elseif output == nil then
        return false
    end
    return mattata.send_message(
        message.chat.id,
        '<pre>' .. mattata.escape_html(
            tostring(output)
        ) .. '</pre>',
        'html'
    )
end

return lua