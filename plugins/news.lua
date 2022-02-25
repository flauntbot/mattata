--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

-- news can accept (both endpoints) language, countries, categories...

local news = {}
local mattata = require('mattata')
local https = require 'http.request'
local json = require('dkjson')
local redis = require('libs.redis')

function news:init()
    news.commands = mattata.commands(self.info.username)
                           :command('news')
                           :command('nsources')
                           :command('setnews').table
    news.help = '/news <news source> - Sends the current top story from the given news source. Use /nsources to view a list of available sources. Use /setnews <news source> to set your preferred news source, and be able to use /news without giving any arguments.'
end

function news.send_sources(message, language, key)
    local input = mattata.input(message.text:lower())
    --if not input then
    --    input = false
    --else
    --    local success = pcall(function()
    --        return input:match(input)
    --    end)
    --    if not success then
    --        return mattata.send_reply(
    --            message,
    --            string.format(language['news']['1'], mattata.escape_html(input)),
    --            'html'
    --        )
    --    end
    --end
    local sources = news.get_sources(key, input)
    if not sources then
        return mattata.send_reply(message, language['news']['2'])
    end
    sources = table.concat(sources, '\n')
    if input then
        sources = string.format(
                language['news']['3'],
                mattata.escape_html(input),
                sources
        )
    else
        sources = string.format(language['news']['4'], sources)
    end
    return mattata.send_message(message.chat.id, sources, 'html')
end

function news.set_news(message, language, key)
    local input = mattata.input(
            message.text:lower()
    )

    local preferred_source = redis:get(
            string.format(
                    'user:%s:news',
                    message.from.id
            )
    )

    if not preferred_source and not input then
        return mattata.send_reply(
                message,
                language['news']['5']
        )
    elseif not input then
        return mattata.send_reply(
                message,
                string.format(
                        language['news']['6'],
                        preferred_source
                )
        )
    elseif preferred_source == input then
        return mattata.send_reply(
                message,
                string.format(
                        language['news']['7'],
                        input
                )
        )
    end

    if not news.is_valid(key, input) then
        return mattata.send_reply(
                message,
                language['news']['8']
        )
    end

    redis:set(
            string.format(
                    'user:%s:news',
                    message.from.id
            ),
            input
    )
    return mattata.send_reply(
            message,
            string.format(
                    language['news']['9'],
                    input
            )
    )
end

-- wtf fixme what is this
function news.is_valid(key, source)
    return true
    --local sources = news.get_sources(key)
    --for k, v in pairs(sources)
    --do
    --    if v == source
    --    then
    --        return true
    --    end
    --end
    --return false
end

function news.get_sources(key, input)
    if not input then
        return false
    end
    local res, jstr = https.new_from_uri('http://api.mediastack.com/v1/sources?access_key=' .. key .. '&keywords=' .. input):go()
    jstr = jstr:get_body_as_string()
    if res:get ':status' ~= '200' then
        return false
    end
    local jdat = json.decode(jstr)
    local sources = {}
    for k, v in pairs(jdat.data)
    do
        table.insert(
                sources,
                string.format('<code>%s</code> (%s: <a href="%s">%s</a>) - %s, %s', v.code, v.language, v.url, v.name, v.category, v.country)
        )
    end
    table.sort(sources)
    return sources
end

function news:on_message(message, configuration, language)
    if message.text:match('^[/!#]nsources')
    then
        return news.send_sources(
                message,
                language,
                configuration.keys.news
        )
    elseif message.text:match('^[/!#]setnews')
    then
        return news.set_news(
                message,
                language,
                configuration.keys.news
        )
    end
    local input = mattata.input(
            message.text:lower()
    )
    if not input
    then
        local user = string.format('user:%s:news', message.from.id)
        local preferred_source = redis:get(user)
        if preferred_source then
            input = preferred_source
        else
            return mattata.send_reply(message, news.help)
        end
    end
    local uri = 'http://api.mediastack.com/v1/news?access_key=' .. configuration.keys.news .. '&sources=' .. input .. '&sort=published_desc&limit=2&languages=' .. 'en'
    local res, jstr = https.new_from_uri(uri):go()
    jstr = jstr:get_body_as_string()
    if res:get ':status' ~= '200' then
        return mattata.send_reply(message, language['errors']['connection'])
    end
    local jdat = json.decode(jstr)
    if not jdat.data[1]
    then
        return mattata.send_reply(
                message,
                language['errors']['results']
        )
    end
    jdat.data[1].published_at = jdat.data[1].published_at:gsub('T.-$', '')
    local output = string.format(
            '<b>%s</b> <code>[%s]</code>\n%s\n<a href="%s">%s</a>\n<i>Powered by mediastack.</i>',
            jdat.data[1].title,
            mattata.escape_html(jdat.data[1].published_at),
            jdat.data[1].description,
            jdat.data[1].url,
            language['news']['11']
    )
    return mattata.send_message(message.chat.id, output, 'html')
end

return news
