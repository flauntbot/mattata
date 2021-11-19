--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local responses = {}
local mattata = require('mattata')
local utf8 = utf8 or require('lua-utf8') -- Lua 5.2 compatibility.

function responses:init()
    responses.all = {
        ['night'] = {
            '^go?o?d? ?night$',
            '^g?night$',
            '^[g][n]$'
        },
        ['morning'] = {
            '^go?o?d ?morning?$',
            '^morning?$',
            '^just woken? up',
            '^[g][m]$'
        },
        ['yesno'] = {
            '^' .. self.info.name .. ',? do .-%??$',
            '^' .. self.info.name .. ',? [sc]h?ould .-%??$',
            '^' .. self.info.name .. ',? are .-%??$',
            '^' .. self.info.name .. ',? is .-%??$',
            '^' .. self.info.name .. ',? am .-%??$',
            '^[s]h?ould',
            '[y]/[n]%??$',
            '[y]es/[n]o%??$'
        },
        ['iam'] = {
            '^[i][\'' .. utf8.char(8217) .. '%s]?[am][m]?[\n ](%a+)$'
        }
    }
end

function responses:on_new_message(message)
    if not message.text or self.is_ai then return false end
    for category, response in pairs(responses.all) do
        for _, trigger in pairs(response) do
            if message.text:lower():match(trigger) then
                local yesno = {
                    'Yes',
                    'No',
                    'Maybe',
                    'Ask again later',
                    'Definitely',
                    'Definitely not',
                    'I don\'t know'
                }
                local output = yesno[math.random(#yesno)]
                if category == 'night' then
                    output = 'Good night, ' .. message.from.first_name .. '!'
                elseif category == 'morning' then
                    output = 'Good morning, ' .. message.from.first_name .. '!'
                elseif category == 'iam' and message.text:len() < 50 then
                    local name = message.text:match(trigger)
                    if name:lower() ~= 'back' and name:lower() ~= 'here' then
                        output = 'Hello ' .. name .. ', I\'m ' .. self.info.first_name
                    end
                end
                if output then
                    return mattata.send_reply(message, output)
                end
                return
            end
        end
    end
    return false
end

return responses
