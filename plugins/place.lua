--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local place = {}
local mattata = require('mattata')
local https = require('ssl.https')
local url = require('socket.url')
local json = require('dkjson')
local redis = require('libs.redis')
local configuration = require('configuration')

function place:init()
    place.commands = mattata.commands(self.info.username):command('place').table
    place.help = '/place <name/phone> - Finds a place on Google Maps.'
end

function place:on_inline_query(inline_query, configuration)
    local input = mattata.input(inline_query.query)
	local is_phone = false
    if not input then
        return false, 'Please specify a location!'
    elseif input:match('^%+') then
	    is_phone = true
    end
    local jdat, lat, lng = place.get(input, is_phone, configuration.keys.maps)
	if not jdat or type(jdat) == 'boolean' then
	    return false, lat
	end
    return mattata.answer_inline_query(
        inline_query.id,
        json.encode({{
            ['type'] = 'location',
            ['id'] = '1',
            ['latitude'] = tonumber(jdat.latitude),
            ['longitude'] = tonumber(jdat.longitude),
            ['title'] = input
        }
    }))
end

function place.get(location, is_phone, api_key)
    local input_type = is_phone and 'phonenumber' or 'textquery'
	if input_type == 'phonenumber' then
	    location = location:gsub(' ', '') -- get rid of any spaces in the phone number to prevent api issues
	end
    local jstr, res = https.request('https://maps.googleapis.com/maps/api/place/findplacefromtext/json?key=' .. api_key .. '&input=' .. url.escape(location) .. '&inputtype=' .. input_type)
    if res ~= 200 then
        return false, configuration.errors.connection
    end
    local jdat = json.decode(jstr)
    if jdat.status == 'ZERO_RESULTS' then
        return false, configuration.errors.results
    end
	local place_id = jdat.candidates[1].place_id
	jstr, res = https.request('https://maps.googleapis.com/maps/api/place/details/json?key=' .. api_key .. '&place_id=' .. place_id .. '&fields=address_component,name,geometry')
	jdat = json.decode(jstr)
    return true, jdat.result.geometry.location.lat, jdat.result.geometry.location.lng
end

function place:on_message(message, configuration)
    local input = mattata.input(message.text)
	local is_phone = false
    if not input then
	    return mattata.send_reply(
		    message,
			'Please specify a place by its name or phone number!'
		)
	elseif input:match('^%+') then
	    is_phone = true
	end
	local success, lat, lng = place.get(input, is_phone, configuration.keys.maps)
	if not success then
	    mattata.send_reply(message, lat)
		return false
	end
	mattata.send_location(message.chat.id, lat, lng)
end

return place
