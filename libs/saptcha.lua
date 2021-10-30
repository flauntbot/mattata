--[[
    Copyright 2021 Chris <chris@chris-nz.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local saptcha = {}
local os = require 'os'

function saptcha.new(inp)
    --new_captcha:setlength(length)
    --new_captcha:setfontsize(size)
    --new_captcha:setpath(download_location)
    --new_captcha:setformat('jpg')
    --new_captcha:setfontsfolder(configuration.fonts_directory .. '/' .. font)
    --local generated_captcha, correct = new_captcha:generate()
    local cap = {
        size=48,
        fontpath="/usr/share/fonts/truetype/freefont/FreeSerifItalic.ttf",
        text=inp
    }
    function cap:setfontsize(s)
        cap.size = s
    end
    function cap:setfontsfolder(fp)
        cap.fontpath = fp
    end
    function cap:generate(cmd)

        local filename = cap.text .. '.png'
        os.execute(cmd:gsub('{SIZE}', cap.size):gsub('{FONT}', cap.fontpath):gsub('{TEXT}', cap.text):gsub('{FILENAME}', filename))
        os.execute("convert " .. filename .. " -gravity center -background transparent -extent 200x150 " .. filename)
        --os.execute('ls --color')

        -- return path, text ..... can i return the bytes instead of the path?
        return filename, cap.text
    end
    return cap
end

return saptcha
