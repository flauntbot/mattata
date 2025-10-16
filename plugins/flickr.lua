--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local flickr = {}
local mattata = require('mattata')
local https = require('ssl.https')
local url = require('socket.url')
local json = require('dkjson')
local redis = require('libs.redis')

function flickr:init(configuration)
    assert(configuration.keys.flickr, 'flickr.lua requires an API key, and you haven\'t got one configured!')
    flickr.commands = mattata.commands(self.info.username):command('flickr').table
    flickr.help = '/flickr <query> - Searches Flickr for a photo matching the given search query and returns the most relevant result.'
    flickr.key = configuration.keys.flickr
    flickr.url = 'https://api.flickr.com/services/rest/?method=flickr.photos.search&format=json&nojsoncallback=1&privacy_filter=1&safe_search=3&media=photos&sort=relevance&is_common=true&per_page=20&extras=url_s,url_q,url_m,url_n,url_z,url_c,url_l,url_o&api_key=%s&text=%s'
end

function flickr.on_inline_query(_, inline_query, _, language)
    local input = mattata.input(inline_query.query)
    if not input then
        return
    end
    local jstr = https.request(string.format(flickr.url, flickr.key, url.escape(input)))
    local jdat = json.decode(jstr)
    local results_list = {}
    local id = 1
    for n in pairs(jdat.photos.photo) do
        if jdat.photos.photo[n].url_l and jdat.photos.photo[n].url_s and jdat.photos.photo[n].url_l:match('%.jpe?g$') then
            table.insert(results_list, {
                ['type'] = 'photo',
                ['id'] = tostring(id),
                ['photo_url'] = jdat.photos.photo[n].url_l,
                ['thumb_url'] = jdat.photos.photo[n].url_s,
                ['photo_width'] = tonumber(jdat.photos.photo[n].width_l),
                ['photo_height'] = tonumber(jdat.photos.photo[n].height_l),
                ['caption'] = language['flickr']['1'] .. ' ' .. input
            })
        end
        id = id + 1
    end
    return mattata.answer_inline_query(inline_query.id, results_list)
end

function flickr.on_message(_, message, _, language)
    local input = mattata.input(message.text)
    if not input then
        local success = mattata.send_force_reply(message, language['flickr']['2'])
        if success then
            local action = string.format('action:%s:%s', message.chat.id, success.result.message_id)
            redis:set(action, '/flickr')
        end
        return
    end
    local jstr, res = https.request(string.format(flickr.url, flickr.key, url.escape(input)))
    if res ~= 200 then
        return mattata.send_reply(message, language.errors.connection)
    end
    local jdat = json.decode(jstr)
    if jdat.photos.total == '0' then
        return mattata.send_reply(message, language.errors.results)
    end
    mattata.send_chat_action(message.chat.id, 'upload_photo')
    local keyboard = mattata.inline_keyboard():row(mattata.row():url_button(
        language['flickr']['3'],
        'https://www.flickr.com/search/?text=' .. url.escape(input)
    ))
    return mattata.send_photo(message.chat.id, jdat.photos.photo[1].url_z, nil, false, message.message_id, keyboard)
end

return flickr
