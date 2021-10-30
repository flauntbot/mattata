--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local needsmorejpeg = {}
local mattata = require('mattata')

function needsmorejpeg:init()
    needsmorejpeg.commands = mattata.commands(self.info.username, { '^[Nn][Ee][Ee][Dd][Ss] [Mm][Oo][Rr][Ee] [Jj][Pp][Ee]?[Gg]$', '^[Mm][Oo][AaRr][RrEe]$'}):command('needsmorejpeg').table
    needsmorejpeg.help = '/needsmorejpeg - Dreadfully reduces the quality of the replied-to photo.'
end

function needsmorejpeg.on_message(_, message, configuration)
    if not message.reply then
        return false
    elseif not message.reply.photo then
        return false
    end
    mattata.send_chat_action(message.chat.id, 'upload_photo')
    local file_id = message.reply.photo[#message.reply.photo].file_id
    local file = mattata.get_file(file_id)
    if not file then
        return false
    end
    local file_name = file.result.file_path
    local file2
    if not configuration.local_mode then
        local file_path = string.format('%s%s/%s', configuration.endpoint, configuration.bot_token, file_name)
        file = mattata.download_file(file_path, file_name:match('/(.-)$'), configuration.files_path)
        if not file then
            return false
        end
        file2 = file
    else
        file = file_name
        file2 = configuration.files_path .. '/' .. string.gsub(file, '(.*/)(.*)', '%2')
    end
    local command = string.format('convert %s -quality 4 %s', file, file2)
    os.execute(command)
    local success = mattata.send_photo(message.chat.id, file2)
    if not success then
        return false
    end
    os.execute('rm ' .. file2)
    return success
end

return needsmorejpeg