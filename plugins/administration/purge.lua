--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local purge = {}
local mattata = require('mattata')
local redis = require('libs.redis')

function purge:init()
    purge.commands = mattata.commands(self.info.username):command('purge'):command('delmessages'):command('clear').table
    purge.help = '/purge [1-50] - Deletes the previous X messages (by message ID), where X is the number specified between 1 and 50 inclusive. Alternatively, a message can be replied to (within the past 50 messages), and those messages will be deleted. If messages have already been purged in between the replied-to message and the command, less will be deleted. Aliases: /delmessages, /clear.'
end

function purge:on_message(message, configuration, language)
    if message.chat.type ~= 'supergroup' and not mattata.is_group_admin(message.chat.id, message.from.id) then
        return mattata.send_reply(message, language['errors']['admin'])
    end
    if redis:get('purge:' .. message.chat.id) then
        return mattata.send_reply(message, 'You can only use this command once every 2 minutes. Please wait for it to cooldown!')
    end
    redis:set('purge:' .. message.chat.id, message.from.id)
    redis:expire('purge:' .. message.chat.id, 120)
    local input = mattata.input(message.text)
    if not input and not message.reply then
        redis:del('purge:' .. message.chat.id)
        return mattata.send_reply(message, purge.help)
    elseif message.reply then
        local amount = message.message_id - message.reply.message_id
        if amount > 50 then
            amount = 50
        end
        if tonumber(input) ~= nil and tonumber(input) <= 50 then
            amount = tonumber(input)
        elseif tonumber(input) ~= nil then
            redis:del('purge:' .. message.chat.id)
            return mattata.send_reply(message, 'You cannot purge more than 50 messages at a time!')
        end
        local progress = message.reply.message_id
        local deleted = 0
        for i = 1, amount do
            if deleted == amount then
                return mattata.send_message(message.chat.id, 'Successfully deleted ' .. deleted .. ' message(s)!')
            end
            local done = mattata.delete_message(message.chat.id, progress)
            if done then
                deleted = deleted + 1
            end
            progress = progress + 1
        end
        return mattata.send_message(message.chat.id, 'Successfully deleted ' .. deleted .. ' message(s)!')
    elseif tonumber(input) == nil then
        redis:del('purge:' .. message.chat.id)
        return mattata.send_reply(message, 'Please specify a numeric value, between 1 and 50 inclusive.')
    elseif tonumber(input) < 1 then
        redis:del('purge:' .. message.chat.id)
        return mattata.send_reply(message, 'That number is too small! You must specify a number between 1 and 50 inclusive.')
    elseif tonumber(input) > 50 then
        redis:del('purge:' .. message.chat.id)
        return mattata.send_reply(message, 'That number is too large! You must specify a number between 1 and 50 inclusive.')
    end
    local current = 0
    if not message.reply then
        current = mattata.send_message(message.chat.id, 'Attempting to purge the previous ' .. input .. ' message(s)...')
        if not current then
            redis:del('purge:' .. message.chat.id)
            return false
        end
    else
        current = message
        current.result = current.reply
    end
    current = current.result.message_id
    if tonumber(current) - tonumber(input) <= 1 then
        redis:del('purge:' .. message.chat.id)
        return mattata.edit_message_text(
            message.chat.id,
            current,
            'There are not ' .. input .. ' message(s) available to be deleted! Please specify a number between 1 and ' .. tonumber(current) - tonumber(input) - 1 .. ' inclusive.'
        )
    end
    local progress = tonumber(current) - 1
    local deleted = 0
    for i = 1, tonumber(input) do
        local done = mattata.delete_message(message.chat.id, progress)
        if done then
            deleted = deleted + 1
        end
        progress = progress - 1
    end
    local success = mattata.edit_message_text(message.chat.id, current, 'Successfully deleted ' .. deleted .. ' message(s)!')
    if not success then
        return mattata.send_message(message.chat.id, 'Successfully deleted ' .. deleted .. ' message(s)!')
    end
    return success
end

return purge
