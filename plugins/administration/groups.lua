--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local groups = {}
local mattata = require('mattata')
local json = require('dkjson')
local redis = require('libs.redis')

function groups:init()
    groups.commands = mattata.commands(self.info.username):command('groups').table
    groups.help = '/groups [query] - View a list of mattata\'s groups (that is, all of the ones added by the bot owner), or search for groups by passing a Lua pattern as a command argument.'
end

function groups:on_message(message, configuration, language)
    local input = mattata.input(message.text)
    local output = {}
    for title, link in pairs(configuration.groups) do
        if input then
            local validate = pcall(
                function()
                    return title:lower():match(input:lower())
                end
            )
            if not validate then
                local output = 'Your search query contains a malformed Lua pattern! If you\'re not sure what this means, try searching without any symbols.'
                return mattata.send_reply(message, output)
            end
        end
        if (input and title:lower():match(input:lower())) or not input then
            local result = string.format('• <a href="%s">%s</a>', mattata.escape_html(link), mattata.escape_html(title))
            table.insert(output, result)
        end
    end
    if not next(output) then
        local output = 'No groups were found. If you\'d like your group to appear here, contact @flaunt_and_dither.'
        if input then
            output = string.format('No groups were found matching "%s"! Use /groups to view a complete list of available groups.', input)
        end
        return mattata.send_reply(message, output)
    end
    if configuration.sort_groups then
        table.sort(output)
    end
    output = table.concat(output, '\n')
    if input then
        local heading = string.format('Groups found matching "%s":\n', mattata.escape_html(input))
        output = heading .. output
    end
    return mattata.send_message(message.chat.id, output, 'html')
end

return groups