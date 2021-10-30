--[[
                     _   _        _
     _ __ ___   __ _| |_| |_ __ _| |_ __ _
    | '_ ` _ \ / _` | __| __/ _` | __/ _` |
    | | | | | | (_| | |_| || (_| | || (_| |
    |_| |_| |_|\__,_|\__|\__\__,_|\__\__,_|

    Configuration file for mattata v1.5

    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.

    Each value in an array should be comma separated, with the exception of the last value!
    Make sure you always update your configuration file after pulling changes from GitHub!

]]

local configuration = { -- Rename this file to configuration.lua for the bot to work!
    ['bot_token'] = 'xxxxxxxxxx:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', -- In order for the bot to actually work, you MUST insert the Telegram
    -- bot API token you received from @BotFather.
    --['endpoint'] = 'https://xxxxxxxx-xxx-xxx.xxxxx-xx.xxx/bot', -- advanced: custom bot api server
    ['files_path'] = '/tmp/mattata', -- filesystem path where to save downloaded files
    --['local_mode'] = true, -- advanced: SOMETIMES a custom api endpoint requires this
    ['connected_message'] = 'Connected to the Telegram bot API!', -- The message to print when the bot is connected to the Telegram bot API
    ['version'] = '1.5.1', -- the version of mattata, don't change this!
    -- The following two tokens will require you to have setup payments with @BotFather, and
    -- a Stripe account with @stripe!
    ['stripe_live_token'] = 'xxxxxxxxx:xxxx:xxxxxxxxxxxxxxxx', -- Payment token you receive from @BotFather.
    ['stripe_test_token'] = 'xxxxxxxxx:xxxx:xxxxxxxxxxxxxxxx', -- Test payment token you receive from @BotFather.
    ['admins'] = {  -- Here you need to specify the numerical ID of the users who shall have
        -- FULL control over the bot, this includes access to server files via the lua and shell plugins.
        136958297
    },
    ['allowlist_plugin_exceptions'] = { -- An array of plugins that will still be used for allowlisted users.
        'antispam'
    },
    ['beta_plugins'] = { -- An array of plugins that only the configured bot admins are able to use.

    },
    ['permanent_plugins'] = { -- An array of plugins that can't be disabled with /plugins.
        'plugins',
        'help',
        'administration',
        'about'
    },
    ['updates'] = {
        ['timeout'] = 3, -- timeout in seconds for api.get_updates()
        ['limit'] = 100 -- message limit for api.get_updates() - must be between 1-100
    },
    ['language'] = 'en', -- The two character locale to set your default language to.
    ['log_chat'] = 136958297, -- This needs to be the numerical identifier of the chat you wish to log
    -- errors into. If it's not a private chat it should begin with a '-' symbol.
    ['log_admin_actions'] = true, -- Should administrative actions be logged? [true/false]
    ['log_channel'] = nil, -- This needs to be the numerical identifier of the channel you wish
    -- to log administrative actions in by default. It should begin with a '-' symbol.
    ['bug_reports_chat'] = 136958297, -- This needs to be the numerical identifier of the chat you wish to send
    -- bug reports into. If it's not a private chat it should begin with a '-' symbol.
    ['bot_directory'] = '/var/bots/mafflebot',
    ['download_location'] = '/var/bots/mafflebot/downloads', -- The location to save all downloaded media to.
    ['fonts_directory'] = '/usr/share/fonts/truetype/freefont', -- The location where fonts are stored for CAPTCHAs
    ['debug'] = true, -- Turn this on to print EVEN MORE information to the terminal.
    ['verbose'] = false, -- Debugging of underlying telegram library
    ['redis'] = { -- Configurable options for connecting the bot to redis. Do NOT modify
        -- these settings if you don't know what you're doing!
        ['host'] = '127.0.0.1',
        ['port'] = 6379,
        ['password'] = nil,
        ['db'] = 2
    },
    ['keys'] = { -- API keys needed for the full functionality of several plugins.
        ['cats'] = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', -- https://thecatapi.com/api-key-registration.html
        ['translate'] = '', -- https://tech.yandex.com/keys/get/?service=trnsl
        ['lastfm'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', -- https://www.last.fm/api/accounts
        ['weather'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', -- https://home.openweathermap.org/api_keys
        ['youtube'] = 'xxxxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxxxxxx', -- https://console.developers.google.com/apis
        ['maps'] = 'xxxxxxxxxxxxxx-xxxxxxxxxxxxx_xxxxxxxxxx', -- https://console.cloud.google.com/google/maps-apis
        ['location'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', -- https://opencagedata.com/api
        ['bing'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', -- https://datamarket.azure.com/account/keys
        ['flickr'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', -- https://www.flickr.com/services/apps/create/noncommercial/
        ['news'] = '', -- https://newsapi.org/
        ['dictionary'] = {  -- https://developer.oxforddictionaries.com/
            ['id'] = 'xxxxxxxx',
            ['key'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        },
        ['steam'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', -- https://steamcommunity.com/dev/apikey
        ['spotify'] = { -- https://developer.spotify.com/dashboard
            ['client_id'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
            ['client_secret'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
            ['redirect_uri'] = 'https://t.me/mafflebot?start='
        },
        ['imgur'] = { -- https://api.imgur.com/oauth2/addclient
            ['client_id'] = 'xxxxxxxxxxxxxxx',
            ['client_secret'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        },
        ['imgbun'] = { -- https://imgbun.com/sign-up
            -- if i was good at this i would just use imagemagick or similar
            ['key'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        },
        ['spamwatch'] = 'xxxxxxxxxx~x_xxxxxxxxxxxxxxxxxxxxxxxxxx~xxxxxxxxxxxxxxxxxxxxxxxx', -- https://t.me/SpamWatchSupport
        ['movies'] = {
            ['omdb'] = 'xxxxxxxx', -- http://www.omdbapi.com/apikey.aspx
            ['poster'] = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' -- https://www.myapifilms.com/token.do
        },
        ['transcribe'] = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' -- https://wit.ai/v2
    },
    ['errors'] = { -- Messages to provide a more user-friendly approach to errors.
        ['connection'] = 'Connection error.',
        ['results'] = 'I couldn\'t find any results for that.',
        ['supergroup'] = 'This command can only be used in supergroups.',
        ['admin'] = 'You need to be a moderator or an administrator in this chat in order to use this command.',
        ['unknown'] = 'I don\'t recognise that user. If you would like to teach me who they are, forward a message from them to any chat that I\'m in.',
        ['generic'] = 'An unexpected error occured. Please report this error using /bugreport.'
    },
    ['limits'] = {
        ['bing'] = {
            ['private'] = 15,
            ['public'] = 7
        },
        ['stackoverflow'] = {
            ['private'] = 12,
            ['public'] = 8
        },
        ['reddit'] = {
            ['private'] = 8,
            ['public'] = 4
        },
        ['chatroulette'] = 512,
        ['copypasta'] = 300,
        ['drawtext'] = 1000,
        ['help'] = {
            ['per_page'] = 4
        },
        ['nick'] = 128,
        ['plugins'] = {
            ['per_page'] = 18,
            ['columns'] = 2
        }
    },
    ['administration'] = { -- Values used in administrative plugins
        ['warnings'] = {
            ['maximum'] = 10,
            ['minimum'] = 2,
            ['default'] = 3
        },
        ['captcha'] = {
            -- NB IMAGES MUST NOT BE LARGER THAN 200x150
            -- safe and simple generator for systems with imagick
            ['generator_command'] = 'convert -fill "#000000" -stroke "#ffffff" -pointsize "{SIZE}" -font "{FONT}" "label:{TEXT}"  -distort Perspective "0,0,0,0 0,41,0,45 69,0,65,0" -wave 2x3 "{FILENAME}"',
            --  you might prefer the one that comes with ejabberd. GPL i think: https://github.com/processone/ejabberd/blob/master/tools/captcha.sh
            --['generator_command'] = '/usr/share/ejabberd/captcha.sh "{TEXT}" > "{FILENAME}"',
            -- alternatively, here's one I which produces output SIMILAR to the old lua generator: https://github.com/flauntbot/captcha-gd
            --['generator_command'] = 'captcha-gd "{TEXT}" "{FONT}" > "{FILENAME}"',
            ['length'] = {
                ['min'] = 4,
                ['max'] = 10,
                ['default'] = 7
            },
            ['size'] = {
                ['min'] = 20,
                ['max'] = 72,
                ['default'] = 40
            },
            ['timeout'] = {
                ['min'] = 1,
                ['max'] = 60,
                ['default'] = 5
            }
        },
        ['allowed_links'] = {
            'username',
            'telegram',
            'mafflebot',
            'flauntbot',
            'ditherbot',
            'mattatabot',
            'matticatebot',
            'mtfutilsbot',
            'calsibot',
            'admin',
            'admins',
            'flaunt_and_dither'
        },
        ['aliases'] = {
            ['length'] = {
                ['min'] = 1,
                ['max'] = 64
            },
            ['total'] = 150
        },
        ['store_chat_members'] = true,
        ['global_antispam'] = { -- normal antispam is processed in plugins/antispam.mattata
            ['ttl'] = 5, -- amount of seconds to process the messages in
            ['message_warning_amount'] = 10, -- amount of messages a user can send in the TTL until they're warned
            ['message_allowlist_amount'] = 25, -- amount of messages a user can send in the TTL until they're allowlisted
            ['allowlist_length'] = 86400, -- amount (in seconds) to allowlist the user for (set it to -1 if you want it forever)
            ['max_code_length'] = 64 -- maximum length of code or pre entities that are allowed with "remove pasted code" setting on
        },
        ['default'] = {
            ['antispam'] = {
                ['text'] = 8,
                ['forwarded'] = 16,
                ['sticker'] = 4,
                ['photo'] = 4,
                ['video'] = 4,
                ['location'] = 4,
                ['voice'] = 4,
                ['game'] = 2,
                ['venue'] = 4,
                ['video_note'] = 4,
                ['invoice'] = 2,
                ['contact'] = 2,
                ['dice'] = 1,
                ['poll'] = 1
            }
        },
        ['feds'] = {
            ['group_limit'] = 3,
            ['shortened_feds'] = {
                ['name'] = 'uuid'
            }
        }
    },
    ['join_messages'] = { -- Values used in plugins/administration.lua.
        'Welcome, NAME!',
        'Hello, NAME!',
        'Enjoy your stay, NAME!',
        'I\'m glad you joined, NAME!',
        'Howdy, NAME!',
        'Hi, NAME!'
    },
    ['groups'] = {
        ['name'] = 't.me/username'
    },
    ['sort_groups'] = true, -- Decides whether groups will be sorted by name in /groups.
    ['stickers'] = { -- Values used in mattata.lua, for administrative plugin functionality.
        -- These are the file_id values for stickers which are binded to the relevant command.
        ['ban'] = {
            'AgAD0AIAAlAYNw0',
            'AgADzwIAAlAYNw0'
        },
        ['warn'] = {
            'AgAD0QIAAlAYNw0',
            'AgAD0gIAAlAYNw0'
        },
        ['kick'] = {
            'AgAD0wIAAlAYNw0'
        }
    },
    ['slaps'] = {
        '{THEM} was shot by {ME}.',
        '{THEM} was pricked to death.',
        '{THEM} walked into a cactus while trying to escape {ME}.',
        '{THEM} drowned.',
        '{THEM} drowned whilst trying to escape {ME}.',
        '{THEM} blew up.',
        '{THEM} was blown up by {ME}.',
        '{THEM} hit the ground too hard.',
        '{THEM} fell from a high place.',
        '{THEM} fell off a ladder.',
        '{THEM} fell into a patch of cacti.',
        '{THEM} was doomed to fall by {ME}.',
        '{THEM} was blown from a high place by {ME}.',
        '{THEM} was squashed by a falling anvil.',
        '{THEM} went up in flames.',
        '{THEM} burned to death.',
        '{THEM} was burnt to a crisp whilst fighting {ME}.',
        '{THEM} walked into a fire whilst fighting {ME}.',
        '{THEM} tried to swim in lava.',
        '{THEM} tried to swim in lava whilst trying to escape {ME}.',
        '{THEM} was struck by lightning.',
        '{THEM} was slain by {ME}.',
        '{THEM} got finished off by {ME}.',
        '{THEM} was killed by magic.',
        '{THEM} was killed by {ME} using magic.',
        '{THEM} starved to death.',
        '{THEM} suffocated in a wall.',
        '{THEM} fell out of the world.',
        '{THEM} was knocked into the void by {ME}.',
        '{THEM} withered away.',
        '{THEM} was pummeled by {ME}.',
        '{THEM} was fragged by {ME}.',
        '{THEM} was desynchronized.',
        '{THEM} was wasted.',
        '{THEM} was busted.',
        '{THEM}\'s bones are scraped clean by the desolate wind.',
        '{THEM} has died of dysentery.',
        '{THEM} fainted.',
        '{THEM} is out of usable Pokemon! {THEM} whited out!',
        '{THEM} is out of usable Pokemon! {THEM} blacked out!',
        '{THEM} whited out!',
        '{THEM} blacked out!',
        '{THEM} says goodbye to this cruel world.',
        '{THEM} got rekt.',
        '{THEM} was sawn in half by {ME}.',
        '{THEM} died. I blame {ME}.',
        '{THEM} was axe-murdered by {ME}.',
        '{THEM}\'s melon was split by {ME}.',
        '{THEM} was sliced and diced by {ME}.',
        '{THEM} was split from crotch to sternum by {ME}.',
        '{THEM}\'s death put another notch in {ME}\'s axe.',
        '{THEM} died impossibly!',
        '{THEM} died from {ME}\'s mysterious tropical disease.',
        '{THEM} escaped infection by dying.',
        '{THEM} played hot-potato with a grenade.',
        '{THEM} was knifed by {ME}.',
        '{THEM} fell on his sword.',
        '{THEM} ate a grenade.',
        '{THEM}\'s parents got shot by {ME}.',
        '{THEM} practiced being {ME}\'s clay pigeon.',
        '{THEM} is what\'s for dinner!',
        '{THEM} was terminated by {ME}.',
        '{THEM} was shot before being thrown out of a plane.',
        '{THEM} was not invincible.',
        '{THEM} has encountered an error.',
        '{THEM} died and reincarnated as a goat.',
        '{ME} threw {THEM} off a building.',
        '{THEM} is sleeping with the fishes.',
        '{THEM} got a premature burial.',
        '{ME} replaced all of {THEM}\'s music with Nickelback.',
        '{ME} spammed {THEM}\'s email.',
        '{ME} cut {THEM}\'s genitals off with a rusty pair of scissors!',
        '{ME} made {THEM} a knuckle sandwich.',
        '{ME} slapped {THEM} with pure nothing.',
        '{ME} hit {THEM} with a small, interstellar spaceship.',
        '{THEM} was quickscoped by {ME}.',
        '{ME} put {THEM} in check-mate.',
        '{ME} RSA-encrypted {THEM} and deleted the private key.',
        '{ME} put {THEM} in the friendzone.',
        '{ME} molested {THEM} in a shed.',
        '{ME} slaps {THEM} with a DMCA takedown request!',
        '{THEM} became a corpse blanket for {ME}.',
        'Death is when the monsters get you. Death comes for {THEM}.',
        'Cowards die many times before their death. {THEM} never tasted death but once.',
        '{THEM} died of hospital gangrene.',
        '{THEM} got a house call from Doctor {ME}.',
        '{ME} beheaded {THEM}.',
        '{THEM} got stoned...by an angry mob.',
        '{ME} sued the pants off {THEM}.',
        '{THEM} was impeached.',
        '{THEM} was beaten to a pulp by {ME}.',
        '{THEM} was forced to have cheeky bum sex with {ME}!',
        '{THEM} was one-hit KO\'d by {ME}.',
        '{ME} sent {THEM} to /dev/null.',
        '{ME} sent {THEM} down the memory hole.',
        '{THEM} was a mistake.',
        '{THEM} is a failed abortion.',
        '{THEM}\'s birth certificate is just an apology letter from their local condom dispensary.',
        '\'{THEM} was a mistake.\' - {ME}',
        '{ME} checkmated {THEM} in two moves.',
        '{THEM} was brutally raped by {ME}.'
    }
}

local get_plugins = function(extension, directory)
    extension = extension and tostring(extension) or 'lua'
    if extension:match('^%.') then
        extension = extension:match('^%.(.-)$')
    end
    directory = directory and tostring(directory) or 'plugins'
    if directory:match('/$') then
        directory = directory:match('^(.-)/$')
    end
    local plugins = {}
    local list = io.popen('ls ' .. directory .. '/')
    local all = list:read('*all')
    list:close()
    for plugin in all:gmatch('[%w_-]+%.' .. extension .. ' ?') do
        plugin = plugin:match('^([%w_-]+)%.' .. extension .. ' ?$')
        table.insert(plugins, plugin)
    end
    return plugins
end

local get_fonts = function()
    local fonts = {}
    local list = io.popen('ls ' .. configuration.fonts_directory )
    local all = list:read('*all')
    list:close()
    for font in all:gmatch('(%a+.%a+)') do
        table.insert(fonts, font)
    end
    return fonts
end

configuration.plugins = get_plugins()
configuration.administrative_plugins = get_plugins(nil, 'plugins/administration')
configuration.administration.captcha.files = get_fonts()
for _, v in pairs(configuration.administrative_plugins) do
    table.insert(configuration.plugins, v)
end

return configuration

--[[

    End of configuration, you're good to go.
    Use `./launch.sh` to start the bot.
    If you can't execute the script, try running `chmod +x launch.sh`

]]
