--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local addslap = {}
local mattata = require('mattata')
local redis = require('libs.redis')

function addslap:init()
    addslap.commands = mattata.commands(self.info.username):command('addslap').table
    addslap.help = '/addslap <slap> - Adds a new slap to /slap. Slaps must only contain letters, numbers, hyphens, underscores, commands, forward slashes or full stops. Use the placeholders {ME} for the person slapping, and {THEM} for the person being slapped. An example would be: {ME} threw {THEM} into a house fire. Slaps can be no longer than 256 characters long, but there is currently no limit to how many you can add. This feature is in beta, and there is currently no way to delete a slap you add - this will be added later. If you want to delete yours, visit @flaunt_and_dither.'
end

function addslap.on_message(_, message, _, language)
    if message.chat.type == 'private' then
        return mattata.send_reply(message, language['addslap']['1'])
    elseif not mattata.is_group_admin(message.chat.id, message.from.id) then
        return mattata.send_reply(message, language.errors.admin)
    end
    local input = mattata.input(message.text)
    if not input then
        return mattata.send_reply(message, addslap.help)
    elseif not input:match('{ME}') or not input:match('{THEM}') then
        return mattata.send_reply(message, language['addslap']['5'])
    end
    local valid = input:gsub('{ME}', ''):gsub('{THEM}', '')
    if valid:match('[{}]') then
        return mattata.send_reply(message, language['addslap']['2'])
    elseif input:len() > 256 then
        return mattata.send_reply(message, language['addslap']['3'])
    end
    redis:sadd('slaps:' .. message.chat.id, input)
    return mattata.send_reply(message, language['addslap']['4'])
end

return addslap