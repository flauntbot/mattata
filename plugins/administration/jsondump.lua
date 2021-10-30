--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local jsondump = {}
local mattata = require('mattata')
local json = require('dkjson')

function jsondump:init()
    jsondump.commands = mattata.commands(self.info.username)
    :command('jsondump')
    :command('json').table
    jsondump.help = '/jsondump - Returns the raw JSON of your message. Alias: /json.'
    jsondump.serialise = function(input)
        return json.encode(
            input,
            {
                indent = true
            }
        )
    end
end

function jsondump:on_message(message)
    local output = jsondump.serialise(message)
    if output:len() > 4096
    then
        return
    end
    return mattata.send_message(
        message.chat.id,
        '<pre>' .. mattata.escape_html(
            tostring(output)
        ) .. '</pre>',
        'html'
    )
end

return jsondump