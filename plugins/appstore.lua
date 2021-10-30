--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local appstore = {}
local mattata = require('mattata')
local https = require('ssl.https')
local url = require('socket.url')
local json = require('dkjson')
local utf8 = utf8 or require('lua-utf8') -- Lua 5.2 compatibility.

function appstore:init()
    appstore.commands = mattata.commands(self.info.username):command('appstore'):command('app'):command('as').table
    appstore.help = '/appstore <query> - Displays information about the first app returned by iTunes for the given search query. Aliases: /app, /as.'
    appstore.url = 'https://itunes.apple.com/search?lang=en&entity=software&term='
end

function appstore.get_app_info(jdat, language)
    local categories = {}
    for n in pairs(jdat.results[1].genres) do
        table.insert(categories, jdat.results[1].genres[n])
    end
    local rating = tonumber(jdat.results[1].userRatingCount)
    if rating ~= nil then
        if rating == 1 then
            rating = string.format('%s 1 %s', utf8.char(11088), language['appstore']['2'])
        elseif rating > 0 then
            rating = string.format('%s %s %s (%s)', utf8.char(11088), mattata.comma_value(tostring(rating)), language['appstore']['3'], jdat.results[1].averageUserRating)
        else
            rating = string.format('%s %s %s', utf8.char(11088), mattata.comma_value(tostring(rating)), language['appstore']['3'])
        end
    else rating = 'N/A' end
    if jdat.results[1].description:len() > 250 then
        jdat.results[1].description = jdat.results[1].description:sub(1, 250) .. '...'
    end
    return string.format(
        '<b>%s</b> - v%s, %s/%s/%s\n\n<i>%s</i>\n\n%s\n%s <b>|</b> iOS %s+',
        mattata.escape_html(jdat.results[1].trackName),
        jdat.results[1].version,
        jdat.results[1].currentVersionReleaseDate:sub(9, 10),
        jdat.results[1].currentVersionReleaseDate:sub(6, 7),
        jdat.results[1].currentVersionReleaseDate:sub(1, 4),
        mattata.escape_html(jdat.results[1].description),
        table.concat(categories, ' <b>|</b> '), rating,
        jdat.results[1].minimumOsVersion
    )
end

function appstore.on_message(_, message, _, language)
    local input = mattata.input(message.text)
    if not input then
        return mattata.send_reply(message, appstore.help)
    end
    local jstr, res = https.request(appstore.url .. url.escape(input))
    if res ~= 200 then
        return mattata.send_reply(message, language.errors.connection)
    end
    local jdat = json.decode(jstr)
    if jdat.resultCount == 0 then
        return mattata.send_reply(message, language.errors.results)
    end
    local keyboard = mattata.inline_keyboard():row(mattata.row():url_button(language['appstore']['1'], jdat.results[1].trackViewUrl))
    local output = appstore.get_app_info(jdat, language)
    return mattata.send_message(message.chat.id, output, 'html', true, false, nil, keyboard)
end

return appstore