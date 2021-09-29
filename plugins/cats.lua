--[[
    Based on a plugin by topkecleon. Licensed under GNU AGPLv3
    https://github.com/topkecleon/otouto/blob/master/LICENSE.
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local cats = {}
local mattata = require('mattata')
local http = require('ssl.https')
local json = require('dkjson')

function cats:init(configuration)
    assert(configuration.keys.cats, 'cats.lua requires an API key, and you haven\'t got one configured!')
    cats.commands = mattata.commands(self.info.username):command('cat').table
    cats.help = '/cat - Sends a random photo of a cat.'
end

function cats.on_inline_query(_, inline_query, configuration, language)
    local str, res = http.request('https://api.thecatapi.com/v1/images/search')
    str = str:match('%"url%":%"(.-)%"')
    if res ~= 200 then
        return
    end
    return mattata.answer_inline_query(inline_query.id, json.encode({{
        ['type'] = 'photo',
        ['id'] = '1',
        ['photo_url'] = tostring(str),
        ['thumb_url'] = tostring(str),
        ['caption'] = language['cats']['1']
    }}))
end

function cats.on_message(_, message, configuration, language)
    local str, res = http.request('https://api.thecatapi.com/v1/images/search')
    if res ~= 200 then
	 return mattata.send_reply(message, language.errors.connection)
    end
    local photo =  str:match('%"url%":%"(.-)%"')
    if not photo then
        return mattata.send_reply(message, language.errors.unknown)
    end
    mattata.send_chat_action(message.chat.id, 'upload_photo')
    return mattata.send_photo(message.chat.id, photo, language['cats']['1'])
end

return cats
