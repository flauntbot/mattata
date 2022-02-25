--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local about = {}
local mattata = require('mattata')

function about:init()
    about.commands = mattata.commands(self.info.username):command('about'):command('source').table
    about.help = '/about - View information about the bot.'
end

function about:on_message(message, _, language)
    return mattata.send_message(message.chat.id, string.format(language['version']['1'], self.info.name, self.info.username, self.version), 'markdown')
end

return about
