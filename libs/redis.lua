--[[

                     _   _        _                           _ _
     _ __ ___   __ _| |_| |_ __ _| |_ __ _       _ __ ___  __| (_)___
    | '_ ` _ \ / _` | __| __/ _` | __/ _` |_____| '__/ _ \/ _` | / __|
    | | | | | | (_| | |_| || (_| | || (_| |_____| | |  __/ (_| | \__ \
    |_| |_| |_|\__,_|\__|\__\__,_|\__\__,_|     |_|  \___|\__,_|_|___/

    Copyright (c) 2017 Matthew Hesketh
    See LICENSE for details

    mattata-redis is a small Lua library to connect mattata to redis.
    Intended for use with the mattata library, a feature-packed Telegram bot.

]]--

local redis = require('redis')
local configuration = require('configuration')

redis.commands.hgetall = redis.command('hgetall', {
    ['response'] = function(response, command, ...)
        local request = {}
        for i = 1, #response, 2 do
            local n = response[i]
            request[n] = response[i + 1]
        end
        return request
    end
})

if not configuration.redis then
    io.stderr:write('The redis table could not be found in configuration.lua!')
    return false
end

local ok, conn = pcall(function()
    if configuration.redis.socket and configuration.redis.socket ~= '' then
        -- nrk/redis-lua supports { path = '/path/to/redis.sock' }
        return redis.connect({ path = configuration.redis.socket })
    else
        if not configuration.redis.host then
            io.stderr:write('Please specify redis.host (e.g. 127.0.0.1)')
            return false
        end
        if not configuration.redis.port or tonumber(configuration.redis.port) == nil then
            io.stderr:write('Please specify numeric redis.port (e.g. 6379)')
            return false
        end
        return redis.connect({ host = configuration.redis.host, port = configuration.redis.port })
    end
end)

if not ok or not conn then
    io.stderr:write('An error has occurred whilst connecting to redis!')
    return false
end
redis = conn

if configuration.redis.db and configuration.redis.db ~= '' then
    if tonumber(configuration.redis.db) == nil then
        io.stderr:write('The value of db in the redis table of configuration.lua must be numerical!')
        return false
    end
    redis:select(
        tonumber(configuration.redis.db)
    )
end

if configuration.redis.password and configuration.redis.password ~= '' and type(configuration.redis.password) == 'string' then
    redis:auth(configuration.redis.password)
end

return redis
