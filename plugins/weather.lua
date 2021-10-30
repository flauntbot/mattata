--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local weather = {}
local mattata = require('mattata')
local https = require('ssl.https')
local url = require('socket.url')
local json = require('dkjson')
local setloc = require('plugins.setloc')

function weather:init()
    weather.commands = mattata.commands(self.info.username):command('weather').table
    weather.help = '/weather [location] - If no arguments are given, the weather forecast for your known location is given. If a location is given, then the weather forecast for that location is given instead.'
end

function weather.format_temperature(temperature)
    temperature = tonumber(temperature)
    return temperature .. '°C/' .. string.format(
        '%.2f',
        temperature * 9 / 5 + 32
    ) .. '°F'
end

function weather.get_weather(input, configuration)
    local url = 'https://api.opencagedata.com/geocode/v1/json?key=' .. configuration['keys']['location'] .. '&pretty=0&q=' .. url.escape(input)
    local jstr, res = https.request(url)
    if res ~= 200
    then
        return false, false, false
    end
    local jdat = json.decode(jstr)
    if jdat.total_results == 0 then
        return true, false, false
    end
    return jdat.results[1].geometry.lat, jdat.results[1].geometry.lng, jdat.results[1].formatted
end

function weather:on_message(message, configuration, language)
    local input = mattata.input(message.text)
    local latitude, longitude, address
    if not input
    then
        local location = setloc.get_loc(message.from.id)
        if not location
        then
            return mattata.send_reply(
                message,
                language['weather']['1']
            )
        end
        latitude, longitude, address = json.decode(location).latitude, json.decode(location).longitude, json.decode(location).address
    else
        latitude, longitude, address = weather.get_weather(input, configuration)
        if not latitude
        or not longitude
        then
            return mattata.send_reply(
                message,
                language['errors']['results']
            )
        end
    end
    local jstr, res = https.request('https://api.openweathermap.org/data/2.5/weather?units=metric&lat=' .. latitude .. '&lon=' .. longitude .. '&appid=' .. configuration.keys.weather)
    if res ~= 200
    then
        return mattata.send_reply(
            message,
            language['errors']['connection']
        )
    end
    local jdat = json.decode(jstr)
    return mattata.send_message(
        message.chat.id,
        string.format(
            language['weather']['2'],
            weather.format_temperature(
                jdat.main.temp
            ),
            weather.format_temperature(
                jdat.main.feels_like
            ),
            address,
            jdat.weather[1].description
        )
    )
end

return weather