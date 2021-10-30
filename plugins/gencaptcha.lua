--[[
    Copyright 2021 Chris <dpkg@chris-nz.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local gencaptcha = {}
local mattata = require('mattata')
local captcha_lib = require('libs.saptcha')

function gencaptcha:init()
    gencaptcha.commands = mattata.commands(self.info.username):command('gencaptcha').table
    gencaptcha.help = '/gencaptcha - Generate a captcha image (and solution text) for no reason'
end

function gencaptcha:on_message(message, configuration, _)

    local download_location = configuration.download_location
    if download_location:match('/$') then
        download_location = download_location:match('^(.-)/$')
    end

    local size = mattata.get_setting(message.chat.id, 'captcha size') or configuration.administration.captcha.size.default
    size = math.floor(size)
    local length = mattata.get_setting(message.chat.id, 'captcha length') or configuration.administration.captcha.length.default
    length = math.floor(length)
    local fonts = configuration.administration.captcha.files
    local current = mattata.get_setting(message.chat.id, 'captcha font') or 1
    current = math.floor(current)
    local font = fonts[current] or fonts[1]
    local new_captcha = captcha_lib.new(mattata.random_string(length, 1)[1])
    new_captcha:setfontsize(size)
    new_captcha:setfontsfolder(configuration.fonts_directory .. '/' .. font)
    local generated_captcha, correct = new_captcha:generate(configuration.administration.captcha.generator_command)

    local res = mattata.send_photo(message.chat.id, generated_captcha, correct, 'markdown', false, nil)
    os.execute('rm ' .. generated_captcha)
    return res
end

return gencaptcha