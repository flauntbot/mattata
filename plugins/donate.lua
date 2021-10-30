--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local donate = {}
local mattata = require('mattata')

function donate:init()
    donate.commands = mattata.commands(self.info.username):command('donate').table
    donate.help = '/donate - Make an optional, monetary contribution to the mafflebot project.'
end

function donate.on_message(_, message, _, language)
    local output = string.format(language['donate']['1'], mattata.escape_html(message.from.first_name), 'https://buy.stripe.com/cN29COdJW1wU2t27su')
    return mattata.send_message(message.chat.id, output, 'html')
end

return donate