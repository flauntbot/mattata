--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local drawtext = {}
local mattata = require('mattata')
local https = require 'http.request'
local url = require('socket.url')
local json = require('dkjson')

function drawtext:init(configuration)
    drawtext.commands = mattata.commands(self.info.username):command('drawtext').table
    drawtext.help = '/drawtext [text] - Converts the given/replied-to text to an image.'
    drawtext.limit = configuration.limits.drawtext
    drawtext.url = 'https://api.imgbun.com/png?key=%s&size=24&text=%s'
    drawtext.key = configuration.keys.imgbun.key
end

function drawtext.on_message(_, message, _, language)
    local input = message.reply and message.reply.text or mattata.input(message.text)
    if not input then
        return mattata.send_reply(message, drawtext.help)
    elseif input:len() > drawtext.limit then
        input = input:sub(1, (drawtext.limit - 3)) .. '...'
    end
    local headers, stream = https.new_from_uri(string.format(drawtext.url, drawtext.key, url.escape(input))):go()
    local str = stream:get_body_as_string()
    if not str or headers:get ':status' ~= '200' then
        return mattata.send_reply(message, language.errors.connection)
    end
    local dat = json.decode(str)
    if not dat.status or dat.status ~= 'OK' then
        return mattata.send_reply(message, language.errors.connection)
    end
    mattata.send_chat_action(message.chat.id, 'upload_photo')
    return mattata.send_photo(message.chat.id, dat.direct_link)
end

return drawtext