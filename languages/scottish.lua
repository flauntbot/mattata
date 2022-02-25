-- This is a language file for mattata
-- Language: scottish
-- Author: LKD70

-- DO NOT CHANGE ANYTHING THAT BEGINS OR ENDS WITH A %
-- THESE ARE PLACEHOLDERS!

-- DO NOT CHANGE ANY MARKDOWN/HTML FORMATTING!
-- IF YOU ARE UNSURE, ASK ON TELEGRAM (t.me/flaunt_and_dither)

return {
    ['errors'] = {
        ['connection'] = 'Connection mistak.',
        ['results'] = 'A coudna airt oot ony results for that.',
        ['supergroup'] = 'This commaund can anely be used in supergruips.',
        ['admin'] = 'Ye need tae be a moderator ore an administrator in thes tauk in maun tae use thes commaund.',
        ['unknown'] = 'A daena recognise that usar. If ye wud like tae lear me who thei be, forrit a message from them tae any tauk that Am in.',
        ['generic'] = 'A mistak occured!',
        ['use'] = 'You are not allowed to use this!',
        ['private'] = 'You can only use this command in private chat!'
    },
    ['addcommand'] = {
        ['1'] = 'Please specify the command in the format <code>/command - description</code>',
        ['2'] = 'I couldn\'t retrieve my commands!',
        ['3'] = 'The command description can\'t be longer than 256 characters!',
        ['4'] = 'An unknown error occurred! I couldn\'t add your command!',
        ['5'] = 'Success! Command added.'
    },
    ['addrule'] = {
        ['1'] = 'Please specify the rule you would like to add!',
        ['2'] = 'You don\'t have any rules to add to! Please set group rules using /setrules!',
        ['3'] = 'I couldn\'t add that rule, as it would make the length of the rules longer than Telegram\'s 4096 character limit!',
        ['4'] = 'I couldn\'t add that rule, it appears it contains invalid Markdown formatting!',
        ['5'] = 'Successfully updated the rules!'
    },
    ['addslap'] = {
        ['1'] = 'You can only use this command in groups!',
        ['2'] = 'The slap cannot contain curly braces apart from placeholders!',
        ['3'] = 'The slap cannot be any longer than 256 characters in length!',
        ['4'] = 'I\'ve successfully added that slap as a possibility for /slap in this group!',
        ['5'] = 'You must include placeholders in your slap. Use {ME} for the person executing and {THEM} for the victim.'
    },
    ['administration'] = {
        ['1'] = 'Enable Administration',
        ['2'] = 'Disable Administration',
        ['3'] = 'Anti-Spam Settings',
        ['4'] = 'Warning Settings',
        ['5'] = 'Vote-Ban Settings',
        ['6'] = 'Welcome New Users?',
        ['7'] = 'Send Rules On Join?',
        ['8'] = 'Send Rules In Group?',
        ['9'] = 'Back',
        ['10'] = 'Next',
        ['11'] = 'Word Filter',
        ['12'] = 'Anti-Bot',
        ['13'] = 'Anti-Link',
        ['14'] = 'Log Actions?',
        ['15'] = 'Anti-RTL',
        ['16'] = 'Anti-Spam Action',
        ['17'] = 'Ban',
        ['18'] = 'Kick',
        ['19'] = 'Delete Commands?',
        ['20'] = 'Force Group Language?',
        ['21'] = 'Send Settings In Group?',
        ['22'] = 'Delete Reply On Action?',
        ['23'] = 'Require Captcha?',
        ['24'] = 'Use Inline Captcha?',
        ['25'] = 'Ban SpamWatch-flagged users?',
        ['26'] = 'Number of warnings until %s:',
        ['27'] = 'Upvotes needed to ban:',
        ['28'] = 'Downvotes needed to dismiss:',
        ['29'] = 'Deleted %s, and its matching link from the database!',
        ['30'] = 'There were no entries found in the database matching "%s"!',
        ['31'] = 'You\'re not an administrator in that chat!',
        ['32'] = 'The minimum number of upvotes required for a vote-ban is %s.',
        ['33'] = 'The maximum number of upvotes required for a vote-ban is %s.',
        ['34'] = 'The minimum number of downvotes required for a vote-ban is %s.',
        ['35'] = 'The maximum number of downvotes required for a vote-ban is %s.',
        ['36'] = 'The maximum number of warnings is %s.',
        ['37'] = 'The minimum number of warnings is %s.',
        ['38'] = 'You can add one or more words to the word filter by using /filter <word(s)>',
        ['39'] = 'You will no longer be reminded that the administration plugin is disabled. To enable it, use /administration.',
        ['40'] = 'That\'s not a valid chat!',
        ['41'] = 'You don\'t appear to be an administrator in that chat!',
        ['42'] = 'My administrative functionality can only be used in groups/channels! If you\'re looking for help with using my administrative functionality, check out the "Administration" section of /help! Alternatively, if you wish to manage the settings for a group you administrate, you can do so here by using the syntax /administration <chat>.',
        ['43'] = 'Use the keyboard below to adjust the administration settings for <b>%s</b>:',
        ['44'] = 'Please send me a [private message](https://t.me/%s), so that I can send you this information.',
        ['45'] = 'I have sent you the information you requested via private chat.',
        ['46'] = 'Remove Channel Pins?',
        ['47'] = 'Remove Other Pins?',
        ['48'] = 'Remove Pasted Code?',
        ['49'] = 'Prevent Inline Bots?',
        ['50'] = 'Kick Media On Join?',
        ['51'] = 'Enable Plugins For Admins?',
        ['52'] = 'Kick URLs On Join?'
    },
    ['afk'] = {
        ['1'] = 'Sorry, Am afraid thes feature is anely available tae usars with a public @usarname!',
        ['2'] = '%s has returned after being awa for %s!',
        ['3'] = 'Jot',
        ['4'] = '%s is now awa.%s'
    },
    ['antispam'] = {
        ['1'] = 'Disable',
        ['2'] = 'Enable',
        ['3'] = 'Disable limit',
        ['4'] = 'Enable limits on %s',
        ['5'] = 'All Administration Settings',
        ['6'] = '%s [%s] has kicked %s [%s] from %s [%s] for hitting the configured anti-spam limit for [%s] media.',
        ['7'] = 'Kicked %s for hitting the configured antispam limit for [%s] media.',
        ['8'] = 'The maximum limit is 100.',
        ['9'] = 'The minimum limit is 1.',
        ['10'] = 'Modify the anti-spam settings for %s below:',
        ['11'] = 'Hey %s, if you\'re going to send code that is longer than %s characters in length, please do so using /paste in <a href="https://t.me/%s">private chat with me</a>!',
        ['12'] = '%s <code>[%s]</code> has %s %s <code>[%s]</code> from %s <code>[%s]</code> for sending Telegram invite link(s).\n#chat%s #user%s',
        ['13'] = '%s %s for sending Telegram invite link(s).',
        ['14'] = 'Hey, I noticed you\'ve got anti-link enabled and you\'re currently not allowing your users to mention a chat you\'ve just mentioned, if you\'d like to allowlist it, use /allowlink <links>.',
        ['15'] = 'Kicked %s <code>[%s]</code> from %s <code>[%s]</code> for sending media within their first few messages.\n#chat%s #user%s',
        ['16'] = 'Kicked %s <code>[%s]</code> from %s <code>[%s]</code> for sending a URL within their first few messages.\n#chat%s #user%s',
        ['17'] = 'Action',
        ['18'] = 'Kick',
        ['19'] = 'Ban',
        ['20'] = 'Mute'
    },
    ['appstore'] = {
        ['1'] = 'veu on iTunes',
        ['2'] = 'rating',
        ['3'] = 'ratings'
    },
    ['authspotify'] = {
        ['1'] = 'You are already authorised using that account.',
        ['2'] = 'Authorising, please wait...',
        ['3'] = 'A connection error occured. Are you sure you replied with the correct link? It should look like',
        ['4'] = 'Successfully authorised your Spotify account!'
    },
    ['avatar'] = {
        ['1'] = 'A coudna get the profile photaes for that usar, pleese mak siccar ye specified a valid usarname ore numerical ID.',
        ['2'] = 'That usar daesna have any profile photos.',
        ['3'] = 'That usar daesna have that many profile photaes!',
        ['4'] = 'That user has opted-out of data-collecting functionality, therefore I am not able to show you any of their profile photos.',
        ['5'] = 'User: %s\nPhoto: %s/%s\nSend /avatar %s [offset] to @%s to view a specific photo of this user',
        ['6'] = 'User: %s\nPhoto: %s/%s\nUse /avatar %s [offset] to view a specific photo of this user'
    },
    ['ban'] = {
        ['1'] = 'Which usar wud ye like me tae ban? Ye can specify thes usar by thair @usarname ore numerical ID.',
        ['2'] = 'A cannae ban thes usar becawis thei be a moderator ore an administrator in thes tauk.',
        ['3'] = 'A cannae ban thes usar becawis thei have alrady left thes tauk.',
        ['4'] = 'A cannae ban thes usar becawis thei have alrady been banned from thes tauk.',
        ['5'] = 'A need tae have administrative permissions in maun tae ban thes usar. Pleese mend thes issue, and pree again.',
        ['6'] = '%s <code>[%s]</code> has banned %s <code>[%s]</code> from %s <code>[%s]</code>%s.\n%s %s',
        ['7'] = '%s has banned %s%s.'
    },
    ['bash'] = {
        ['1'] = 'Pleese specify a commaund tae run!',
        ['2'] = 'Success!'
    },
    ['blocklist'] = {
        ['1'] = 'Which usar wud ye like me tae blocklist? Ye can specify thes usar by thair @usarname ore numerical ID.',
        ['2'] = 'A cannae blocklist thes usar becawis thei be a moderator ore an administrator in thes tauk.',
        ['3'] = 'A cannae blocklist thes usar becawis thei have alrady left thes tauk.',
        ['4'] = 'A cannae blocklist thes usar becawis thei have alrady been banned from thes tauk.',
        ['5'] = '%s <code>[%s]</code> has blocklisted %s <code>[%s]</code> from using %s <code>[%s]</code> in %s <code>[%s]</code>%s.\n%s %s',
        ['6'] = '%s has blocklisted %s from using %s%s.'
    },
    ['blocklistchat'] = {
        ['1'] = '%s has now been blocklisted, and A will leave whenever A am added there!',
        ['2'] = '%s is a usar, thes commaund is anely for blocklisting tauks such as gruips and channels!',
        ['3'] = '%s daesna appeir tae be a valid tauk!'
    },
    ['bugreport'] = {
        ['1'] = 'Success! Your bug report has been sent. The ID of thes report is #%s.',
        ['2'] = 'There was a problem whilst reporting that bug! Ha, the irony!'
    },
    ['calc'] = {
        ['1'] = 'Click tae send the result.',
        ['2'] = '"%s" was an unexpected word!',
        ['3'] = 'You cannot have a unit before a number!'
    },
    ['cats'] = {
        ['1'] = 'Meow!'
    },
    ['channel'] = {
        ['1'] = 'Ye be not allowed tae use thes!',
        ['2'] = 'Ye daena appeir tae be an administrator in that tauk anymore!',
        ['3'] = 'A coudna send yer message, be ye sure A still have permission tae send messages in that tauk?',
        ['4'] = 'Your message has been sent!',
        ['5'] = 'A was unable tae retrieve a list of administrators for that tauk!',
        ['6'] = 'Ye daena appeir tae be an administrator in that tauk!',
        ['7'] = 'Pleese specify the message tae send, using the syntax /channel <channel> <message>.',
        ['8'] = 'Are ye sure ye want tae send thes message? This is how it will look:',
        ['9'] = 'Yes, Am sure!',
        ['10'] = 'That message contains invalid Markdoun formatting! Pleese correct yer syntax and pree again.'
    },
    ['chatroulette'] = {
        ['1'] = 'Hey! Please don\'t send messages longer than %s characters. We don\'t want to annoy the other user!',
        ['2'] = '*Anonymous said:*\n```\n%s\n```\nTo end your session, send /endchat.',
        ['3'] = 'I\'m afraid I lost connection from the other user! To begin a new chat, please send /chatroulette!',
        ['4'] = 'The other person you were chatting with has ended the session. To start a new one, send /chatroulette.',
        ['5'] = 'Successfully ended your session. To start a new one, send /chatroulette.',
        ['6'] = 'I have successfully removed you from the list of available users.',
        ['7'] = 'You don\'t have a session set up at the moment. To start one, send /chatroulette.',
        ['8'] = 'Finding you a session, please wait...',
        ['9'] = 'I\'m afraid there aren\'t any available users right now, but I have added you to the list of available users! To stop this completely, please send /endchat.',
        ['10'] = 'I have successfully paired you with another user to chat to! Please remember to be kind to them! To end the chat, send /endchat.',
        ['11'] = 'I\'m afraid the user who I tried to pair you with has since blocked me. Please try and send /chatroulette again to try and connect to me!',
        ['12'] = 'I have successfully paired you with another user to chat to! Please remember to be kind to them! To end the chat, send /endchat.'
    },
    ['commandstats'] = {
        ['1'] = 'No commands have been sent in this chat!',
        ['2'] = '<b>Command statistics for:</b> %s\n\n%s\n<b>Total commands sent:</b> %s',
        ['3'] = 'The command statistics for this chat have been reset!',
        ['4'] = 'I could not reset the command statistics for this chat. Perhaps they have already been reset?'
    },
    ['copypasta'] = {
        ['1'] = 'The replied-to text musn\'t be any longer than %s characters!'
    },
    ['coronavirus'] = {
        ['1'] = [[*COVID-19 Statistics for:* %s

*New confirmed cases:* %s
*Total confirmed cases:* %s
*New deaths:* %s
*Total deaths:* %s
*New recovered cases:* %s
*Total recovered cases:* %s]]
    },
    ['custom'] = {
        ['1'] = 'Success! That message will now be sent every time somebody uses %s!',
        ['2'] = 'The trigger "%s" does not exist!',
        ['3'] = 'The trigger "%s" has been deleted!',
        ['4'] = 'Ye daena have any custom triggers set!',
        ['5'] = 'Custom commands for %s:\n',
        ['6'] = 'To create a new, custom commaund, use the following syntax:\n/custom new #trigger <value>. tae list all current triggers, use /custom list. tae delete a trigger, use /custom del #trigger.'
    },
    ['delete'] = {
        ['1'] = 'I could not delete that message. Perhaps the message is too old or non-existent?'
    },
    ['demote'] = {
        ['1'] = 'Which usar wud ye like me tae demote? Ye can specify thes usar by thair @usarname ore numerical ID.',
        ['2'] = 'A cannae demote thes usar becawis thei be not a moderator ore an administrator in thes tauk.',
        ['3'] = 'A cannae demote thes usar becawis thei have alrady left thes tauk.',
        ['4'] = 'A cannae demote thes usar becawis thei have alrady been kicked from thes tauk.'
    },
    ['doge'] = {
        ['1'] = 'Pleese enter the text ye want tae Doge-ify. Each sentence should be separated using slashes ore new lines.'
    },
    ['donate'] = {
        ['1'] = '<b>Hello, %s!</b>\n\nIf you\'re feeling generous, you can contribute to the mafflebot project by making a monetary donation of any amount. This will go towards server costs and any time and resources used to develop mafflebot. This is an optional act, however it is greatly appreciated and your name will also be listed publically on the bot\'s GitHub page.\n\nIf you\'re still interested, you can donate <a href="%s">here</a>. Thank you for your continued support!'
    },
    ['fact'] = {
        ['1'] = 'Generate Another'
    },
    ['fban'] = {
        ['1'] = 'Which user would you like me to Fed-ban? You can specify this user by their @username or numerical ID.',
        ['2'] = 'I cannot Fed-ban this user because they are a moderator or an administrator in this chat.'
    },
    ['flickr'] = {
        ['1'] = 'Ye serched for:',
        ['2'] = 'Pleese enter a serch query (that is, what ye want me tae serch Flickr for, i.e. "Big Ben" will return a photograph of Big Ben in London).',
        ['3'] = 'More Results'
    },
    ['game'] = {
        ['1'] = 'Total wyns: %s\nTotal losses: %s\nBalance: %s mattacoins',
        ['2'] = 'Join Gemm',
        ['3'] = 'This gemm has alrady ended!',
        ['4'] = 'It\'s not yer turn!',
        ['5'] = 'Ye be not part of thes gemm!',
        ['6'] = 'Ye cannae go here!',
        ['7'] = 'Ye be alrady part of thes gemm!',
        ['8'] = 'This gemm has alrady started!',
        ['9'] = '%s [%s] is playing against %s [%s]\nIt is currently %s\'s turn!',
        ['10'] = '%s won the gemm against %s!',
        ['11'] = '%s drew the gemm against %s!',
        ['12'] = 'Waiting for opponent...',
        ['13'] = 'Tic-Tac-Toe',
        ['14'] = 'Click tae send the gemm tae yer tauk!',
        ['15'] = 'Statistics for %s:\n',
        ['16'] = 'Play Tic-Tac-Toe!'
    },
    ['gblocklist'] = {
        ['1'] = 'Pleese reply-to the usar ye\'d like tae globally blocklist, ore specify them by usarname/ID.',
        ['2'] = 'A coudna get information about "%s", pleese check it\'s a valid usarname/ID and pree again.',
        ['3'] = 'That\'s a %s, not a usar!'
    },
    ['gallowlist'] = {
        ['1'] = 'Pleese reply-to the usar ye\'d like tae globally allowlist, ore specify them by usarname/ID.',
        ['2'] = 'A coudna get information about "%s", pleese check it\'s a valid usarname/ID and pree again.',
        ['3'] = 'That\'s a %s, not a usar!'
    },
    ['hackernews'] = {
        ['1'] = 'Top Stories from Hacker News:'
    },
    ['help'] = {
        ['1'] = 'No results found!',
        ['2'] = 'There were no features found matching "%s", pleese pree and be more specific!',
        ['3'] = '\n\nArguments: <required> [optional]\n\nSerch for a feature ore get help with a commaund by using my inline serch functionality - just mention me in any tauk using the syntax @%s <serch query>.',
        ['4'] = 'Previous',
        ['5'] = 'Next',
        ['6'] = 'Back',
        ['7'] = 'Serch',
        ['8'] = 'Ye be on page %s of %s!',
        ['9'] = [[
A can perform many administrative actions in yer gruips, just add me as an administrator and send /administration tae adjust the settings for yer gruip.
Here be some administrative commands and a brief comment regarding what thei do:

• /pin <text> - Send a Markdoun-formatted message which can be edited by using the same commaund with different text, tae save ye from having tae re-pin a message if ye can't edit it (which happens if the message is older than 48 hours)

• /ban - Ban a usar by replying tae one of thair messages, ore by specifying them by usarname/ID

• /kick - Kick (ban and then unban) a usar by replying tae one of thair messages, ore by specifying them by usarname/ID

• /unban - Unban a usar by replying tae one of thair messages, ore by specifying them by usarname/ID

• /setrules <text> - Set the given Markdoun-formatted text as the gruip rules, which will be sent whenever somebody uses /rules
        ]],
        ['10'] = [[
• /setwelcome - Set the given Markdoun-formatted text as a welcome message that will be sent every time a usar joins yer gruip (the welcome message can be disabled in the administration menu, accessible via /administration). Ye can use placeholders tae automatically customise the welcome message for each usar. Use $usar\_id tae insert the usar's numerical ID, $chat\_id tae insert the tauk's numerical ID, $name tae insert the usar's name, $title tae insert the tauk title and $usarname tae insert the usar's usarname (if the usar doesn't have an @usarname, thair name will be used instead, so it is best tae avoid using thes with $name)

• /warn - Warn a usar, and ban them when thei hit the maximum number of warnings

• /mod - Promote the replied-to usar, giving them access tae administrative commands such as /ban, /kick, /warn etc. (this is useful when ye don't want somebody tae have the ability tae delete messages!)

• /demod - Demote the replied-to usar, stripping them from thair moderation status and revoking thair ability tae use administrative commands

• /staff - veu the gruip's creator, administrators, and moderators in a neatly-formatted list
        ]],
        ['11'] = [[
• /report - Forwards the replied-to message tae all administrators and alerts them of the current situation

• /setlink <URL> - Set the gruip's link tae the given URL, which will be sent whenever somebody uses /link

• /links <text> - Allowlists all of the Telegram links found in the given text (includes @usarname links)
        ]],
        ['12'] = 'Below be some links ye might find useful:',
        ['13'] = 'Development',
        ['14'] = 'Channel',
        ['15'] = 'Support',
        ['16'] = 'FAQ',
        ['17'] = 'Source',
        ['18'] = 'Donate',
        ['19'] = 'Rate',
        ['20'] = 'Administration Log',
        ['21'] = 'Admin Settings',
        ['22'] = 'Plugins',
        ['23'] = [[
<b>Hi %s! My name's %s, it's a pleasure tae meet ye</b> %s

A understand many commands, which ye can learn more about by pressing the "Commands" button using the attached keyboard.

%s <b>Tip:</b> Use the "Settings" button tae change how A work%s!

%s <b>Find me useful, or just want to help?</b> Donations are very much appreciated, use /donate for more information!
        ]],
        ['24'] = 'in'
    },
    ['id'] = {
        ['1'] = 'Am sorry, but A daena recognise that usar. tae lear me who thei be, forrit a message from them tae me ore get them tae send me a message.',
        ['2'] = 'Queried Chat:',
        ['3'] = 'This Chat:',
        ['4'] = 'Click tae send the result!'
    },
    ['imdb'] = {
        ['1'] = 'Previous',
        ['2'] = 'Next',
        ['3'] = 'Ye be on page %s of %s!'
    },
    ['import'] = {
        ['1'] = 'A daena recognise that tauk!',
        ['2'] = 'That\'s not a supergruip, therefore A cannae import any settings from it!',
        ['3'] = 'Successfully imported administrative settings & toggled plugins from %s tae %s!'
    },
    ['info'] = {
        ['1'] = [[
```
Redis:
%s Config File: %s
%s Mode: %s
%s TCP Port: %s
%s Version: %s
%s Uptime: %s days
%s Process ID: %s
%s Expired Keys: %s

%s Usar Cownt: %s
%s Gruip Cownt: %s

System:
%s OS: %s
```
        ]]
    },
    ['instagram'] = {
        ['1'] = '@%s on Instagram'
    },
    ['ipsw'] = {
        ['1'] = '<b>%s</b> iOS %s\n\n<code>MD5 sum: %s\nSHA1 sum: %s\nFile size: %s GB</code>\n\n<i>%s %s</i>',
        ['2'] = 'This firmwhere is no longer being signed!',
        ['3'] = 'This firmwhere is still being signed!',
        ['4'] = 'Pleese select yer model:',
        ['5'] = 'Pleese select yer firmwhere version:',
        ['6'] = 'Pleese select yer device type:',
        ['7'] = 'iPod Touch',
        ['8'] = 'iPhone',
        ['9'] = 'iPad',
        ['10'] = 'Apple TV'
    },
    ['itunes'] = {
        ['1'] = 'Name:',
        ['2'] = 'Artist:',
        ['3'] = 'Album:',
        ['4'] = 'Track:',
        ['5'] = 'Disc:',
        ['6'] = 'The original query could not be found, ye\'ve probably deleted the original message.',
        ['7'] = 'The artwork can be found below:',
        ['8'] = 'Pleese enter a serch query (that is, what ye want me tae serch iTunes for, i.e. "Green Day American Idiot" will return information about the first result for American Idiot by Green Day).',
        ['9'] = 'Get Album Artwork'
    },
    ['kick'] = {
        ['1'] = 'Which usar wud ye like me tae keek? Ye can specify thes usar by thair @usarname ore numerical ID.',
        ['2'] = 'A cannae keek thes usar becawis thei be a moderator ore an administrator in thes tauk.',
        ['3'] = 'A cannae keek thes usar becawis thei have alrady left thes tauk.',
        ['4'] = 'A cannae keek thes usar becawis thei have alrady been keeked from thes tauk.',
        ['5'] = 'A need tae have administrative permissions in maun tae keek thes usar. Pleese amend thes issue, and pree again.'
    },
    ['lastfm'] = {
        ['1'] = '%s\'s last.fm usarname has been set tae "%s".',
        ['2'] = 'Your last.fm usarname has been forgotten!',
        ['3'] = 'Ye daena currently have a last.fm usarname set!',
        ['4'] = 'Pleese specify yer last.fm usarname ore set it with /fmset.',
        ['5'] = 'No history was found for thes usar.',
        ['6'] = '%s is currently listening to:\n',
        ['7'] = '%s last listened to:\n',
        ['8'] = 'Unknown',
        ['9'] = 'Click tae send the result.'
    },
    ['location'] = {
        ['1'] = 'Ye daena have a location set. What wud ye like yer new location tae be?'
    },
    ['logchat'] = {
        ['1'] = 'Pleese enter the usarname ore numerical ID of the tauk ye wish tae log all administrative actions into.',
        ['2'] = 'Checking tae see whether that tauk is valid...',
        ['3'] = 'Am sorry, it appeirs ye\'ve either specified an invalid tauk, ore ye\'ve specified a tauk A haven\'t been added tae yet. Pleese rectify thes and pree again.',
        ['4'] = 'Ye can\'t set a usar as yer log tauk!',
        ['5'] = 'Ye daena appeir tae be an administrator in that tauk!',
        ['6'] = 'It seems Am alrady logging administrative actions into that tauk! Use /logchat tae specify a new one.',
        ['7'] = 'That tauk is valid, Am now going tae pree and send a test message tae it, just tae ensure A have permission tae post!',
        ['8'] = 'Hello, World - thes is a test message tae check my posting permissions - if ye\'re reading thes, then everything went OK!',
        ['9'] = 'All done! From now on, any administrative actions in thes tauk will be logged into %s - tae change the tauk ye want me tae log administrative actions into, just send /logchat.'
    },
    ['lua'] = {
        ['1'] = 'Pleese enter a string of Lua tae execute!'
    },
    ['minecraft'] = {
        ['1'] = '<b>%s has changed his/her usarname %s time</b>',
        ['2'] = '<b>%s has changed his/her usarname %s times</b>',
        ['3'] = 'Previous',
        ['4'] = 'Next',
        ['5'] = 'Back',
        ['6'] = 'UUID',
        ['7'] = 'Avatar',
        ['8'] = 'Usarname History',
        ['9'] = 'Pleese select an option:',
        ['10'] = 'Pleese enter the usarname of the Minecraft player ye wud like tae view information about (i.e. sending "Notch" will view information about the player Notch).',
        ['11'] = 'Minecraft usarnames be between 3 and 16 characters long.'
    },
    ['mute'] = {
        ['1'] = 'Which user would you like me to mute? You can specify this user by their @username or numerical ID.',
        ['2'] = 'I cannot mute this user because they are already muted in this chat.',
        ['3'] = 'I cannot mute this user because they are a moderator or an administrator in this chat.',
        ['4'] = 'I cannot mute this user because they have already left (or been kicked from) this chat.',
        ['5'] = 'I need to have administrative permissions in order to mute this user. Please amend this issue, and try again.'
    },
    ['myspotify'] = {
        ['1'] = 'Profile',
        ['2'] = 'Following',
        ['3'] = 'Recently Played',
        ['4'] = 'Currently Playing',
        ['5'] = 'Top Tracks',
        ['6'] = 'Top Artists',
        ['7'] = 'You don\'t appear to be following any artists!',
        ['8'] = 'Your Top Artists',
        ['9'] = 'You don\'t appear to have any tracks in your library!',
        ['10'] = 'Your Top Tracks',
        ['11'] = 'You don\'t appear to be following any artists!',
        ['12'] = 'Artists You Follow',
        ['13'] = 'You don\'t appear to have recently played any tracks!',
        ['14'] = '<b>Recently Played</b>\n%s %s\n%s %s\n%s Listened to at %s:%s on %s/%s/%s.',
        ['15'] = 'The request has been accepted for processing, but the processing has not been completed.',
        ['16'] = 'You don\'t appear to be listening to anything right now!',
        ['17'] = 'Currently Playing',
        ['18'] = 'An error occured whilst re-authorising your Spotify account!',
        ['19'] = 'Successfully re-authorised your Spotify account! Processing your original request...',
        ['20'] = 'Re-authorising your Spotify account, please wait...',
        ['21'] = 'You need to authorise me in order to connect your Spotify account. Click [here](https://accounts.spotify.com/en/authorize?client_id=%s&response_type=code&redirect_uri=%s&scope=user-library-read,playlist-read-private,playlist-read-collaborative,user-read-private,user-read-email,user-follow-read,user-top-read,user-read-playback-state,user-read-recently-played,user-read-currently-playing,user-modify-playback-state) and press the green "OKAY" button to link mattata to your Spotify account. After you\'ve done that, send the link you were redirected to (it should begin with "%s", followed by a unique code) in reply to this message.',
        ['22'] = 'Playlists',
        ['23'] = 'Use Inline Mode',
        ['25'] = 'No devices were found.',
        ['26'] = 'You don\'t appear to have any playlists.',
        ['27'] = 'Your Playlists',
        ['28'] = '%s %s [%s tracks]',
        ['29'] = '%s %s [%s]\nSpotify %s user\n\n<b>Devices:</b>\n%s',
        ['30'] = 'Playing previous track...',
        ['31'] = 'You are not a premium user!',
        ['32'] = 'I could not find any devices.',
        ['33'] = 'Playing next track...',
        ['34'] = 'Resuming track...',
        ['35'] = 'Your device is temporarily unavailable...',
        ['36'] = 'No devices were found!',
        ['37'] = 'Pausing track...',
        ['38'] = 'Now playing',
        ['39'] = 'Shuffling your music...',
        ['40'] = 'That\'s not a valid volume. Please specify a number between 0 and 100.',
        ['41'] = 'The volume has been set to %s%%!',
        ['42'] = 'This message is using an old version of this plugin, please request a new one by sending /myspotify!'
    },
    ['news'] = {
        ['1'] = '"<code>%s</code>" isn\'t a valid Lua pattern.',
        ['2'] = 'A coudna retrieve a list of sources.',
        ['3'] = '<b>News sources found matching</b> "<code>%s</code>":\n\n%s',
        ['4'] = '<b>Here be the current available news sources ye can use with</b> /news<b>. Use</b> /nsources &lt;query&gt; <b>to serch the list of news sources for a more specific set of results. Serches be matched using Lua patterns</b>\n\n%s',
        ['5'] = 'Ye daena have a preferred news source. Use /setnews <source> tae set one. veu a list of sources using /nsources, ore narrow doun the results by using /nsources <query>.',
        ['6'] = 'Your current preferred news source is %s. Use /setnews <source> tae change it. veu a list of sources using /nsources, ore narrow doun the results by using /nsources <query>.',
        ['7'] = 'Your preferred source is alrady set tae %s! Use /news tae view the current top story.',
        ['8'] = 'That\'s not a valid news source. veu a list of sources using /nsources, ore narrow doun the results by using /nsources <query>.',
        ['9'] = 'Your preferred news source has been updated tae %s! Use /news tae view the current top story.',
        ['10'] = 'That\'s not a valid source, use /nsources tae view a list of available sources. If ye have a preferred source, use /setnews <source> tae automatically have news from that source sent when ye send /news, without any arguments needed.',
        ['11'] = 'Read more.'
    },
    ['nick'] = {
        ['1'] = 'Your nickname has now been forgotten!',
        ['2'] = 'Your nickname has been set tae "%s"!'
    },
    ['pin'] = {
        ['1'] = 'You haven\'t set a pin before. Use /pin <text> to set one. Markdown formatting is supported.',
        ['2'] = 'Here is the last message generated using /pin.',
        ['3'] = 'I found an existing pin in the database, but the message I sent it in seems to have been deleted, and I can\'t find it anymore. You can set a new one with /pin <text>. Markdown formatting is supported.',
        ['4'] = 'There was an error whilst updating your pin. Either the text you entered contained invalid Markdown syntax, or the pin has been deleted. I\'m now going to try and send you a new pin, which you\'ll be able to find below - if you need to modify it then, after ensuring the message still exists, use /pin <text>.',
        ['5'] = 'I couldn\'t send that text because it contains invalid Markdown syntax.',
        ['6'] = 'Click here to see the pin, updated to contain the text you gave me.'
    },
    ['pokedex'] = {
        ['1'] = 'Name: %s\nID: %s\nType: %s\nDescription: %s'
    },
    ['promote'] = {
        ['1'] = 'A cannae promote thes usar becawis thei be a moderator ore an administrator of thes tauk.',
        ['2'] = 'A cannae promote thes usar becawis thei have alrady left thes tauk.',
        ['3'] = 'A cannae promote thes usar becawis thei have alrady been kicked from thes tauk.'
    },
    ['quote'] = {
        ['1'] = 'This usar has opted out of data-storing functionality.',
        ['2'] = 'There be no saved quotes for %s! Ye can save one by using /save in reply tae a message thei send.'
    },
    ['report'] = {
        ['1'] = 'Please reply to the message you would like to report to the group\'s administrators.',
        ['2'] = 'You can\'t report your own messages, are you just trying to be funny?',
        ['3'] = '<b>%s needs help in %s!</b>',
        ['4'] = 'Click here to view the reported message.',
        ['5'] = 'I\'ve successfully reported that message to %s admin(s)!'
    },
    ['save'] = {
        ['1'] = 'This usar has opted out of data-storing functionality.',
        ['2'] = 'That message has been saved in my database, and added tae the list of possible responses for when /quote is used in reply tae %s!'
    },
    ['sed'] = {
        ['1'] = '%s\n\n<i>%s didn\'t mean tae say thes!</i>',
        ['2'] = '%s\n\n<i>%s has admitted defeat.</i>',
        ['3'] = '%s\n\n<i>%s isn\'t sure if the were mistaken...</i>',
        ['4'] = 'Screw ye, <i>when am A ever wrong?</i>',
        ['5'] = '"<code>%s</code>" isn\'t a valid PCRE pattern.',
        ['6'] = 'Hey %s, %s seems to think you meant:\n<i>%s</i>',
        ['7'] = 'Yes',
        ['8'] = 'No',
        ['9'] = 'Not sure',
        ['10'] = 'Just edit your message, idiot.'
    },
    ['setgrouplang'] = {
        ['1'] = 'This group\'s language has been set to %s!',
        ['2'] = 'This group\'s language is currently %s.\nPlease note that some strings may not be translated as of yet. If you\'d like to change your language, select one using the keyboard below:',
        ['3'] = 'The option to force users to use the same language in this group is currently disabled. This setting should be toggled from /administration but, to make things easier for you, I\'ve included a button below.',
        ['4'] = 'Enable',
        ['5'] = 'Disable'
    },
    ['setlang'] = {
        ['1'] = 'Your language has been set tae %s!',
        ['2'] = 'Your language is currently %s.\nPleese note that some strings may not be translated as of yet. If ye\'d like tae change yer language, select one using the keyboard below:'
    },
    ['setrules'] = {
        ['1'] = 'Invalid Markdown formatting.',
        ['2'] = 'Successfully set the new rules!'
    },
    ['setwelcome'] = {
        ['1'] = 'What wud ye like the welcome message tae be? The text ye specify will be Markdoun-formatted and sent every time a usar joins the tauk (the welcome message can be disabled in the administration menu, accessible via /administration). Ye can use placeholders tae automatically customise the welcome message for each usar. Use $usar_id tae insert the usar\'s numerical ID, $chat_id tae insert the tauk\'s numerical ID, $name tae insert the usar\'s name, $title tae insert the tauk\'s title and $usarname tae insert the usar\'s usarname (if the usar daesna have an @usarname, thair name will be used instead, so it is best tae avoid using thes in conjunction with $name).',
        ['2'] = 'There was a mistak formatting yer message, pleese check yer Markdoun syntax and pree again.',
        ['3'] = 'The welcome message for %s has successfully been updated!'
    },
    ['share'] = {
        ['1'] = 'Shbe'
    },
    ['statistics'] = {
        ['1'] = 'No messages have been sent in this chat!',
        ['2'] = '<b>Statistics for:</b> %s\n\n%s\n<b>Total messages sent:</b> %s',
        ['3'] = 'The statistics for this chat have been reset!',
        ['4'] = 'I could not reset the statistics for this chat. Perhaps they have already been reset?'
    },
    ['steam'] = {
        ['1'] = 'Your Steam usarname has been set tae "%s".',
        ['2'] = '"%s" isn\'t a valid Steam usarname.',
        ['3'] = '%s has been a usar on Steam since %s, on %s. They last logged off at %s, on %s. Click <a href="%s">here</a> tae view thair Steam profile.',
        ['4'] = '%s, AKA "%s",'
    },
    ['trust'] = {
        ['1'] = 'I cannot trust this user because they are a moderator or an administrator of this chat.',
        ['2'] = 'I cannot trust this user because they have already left this chat.',
        ['3'] = 'I cannot trust this user because they have already been kicked from this chat.'
    },
    ['unmute'] = {
        ['1'] = 'Which user would you like me to unmute? You can specify this user by their @username or numerical ID.',
        ['2'] = 'I cannot unmute this user because they are not currently muted in this chat.',
        ['3'] = 'I cannot unmute this user because they are a moderator or an administrator in this chat.',
        ['4'] = 'I cannot unmute this user because they have already left (or been kicked from) this chat.'
    },
    ['untrust'] = {
        ['1'] = 'Which user would you like me to untrust? You can specify this user by their @username or numerical ID.',
        ['2'] = 'I cannot untrust this user because they are a moderator or an administrator in this chat.',
        ['3'] = 'I cannot untrust this user because they have already left this chat.',
        ['4'] = 'I cannot untrust this user because they have already been kicked from this chat.'
    },
    ['weather'] = {
        ['1'] = 'Ye daena have a location set. Use /setloc <location> tae set one.',
        ['2'] = 'It\'s currently %s (feels like %s) in %s. %s'
    },
    ['welcome'] = {
        ['1'] = 'Group Rules'
    },
    ['allowlist'] = {
        ['1'] = 'Which user would you like me to allowlist? You can specify this user by their @username or numerical ID.',
        ['2'] = 'I cannot allowlist this user because they are a moderator or an administrator in this chat.',
        ['3'] = 'I cannot allowlist this user because they have already left this chat.',
        ['4'] = 'I cannot allowlist this user because they have already been banned from this chat.'
    },
    ['wikipedia'] = {
        ['1'] = 'Read more.'
    },
    ['youtube'] = {
        ['1'] = 'Previous',
        ['2'] = 'Next',
        ['3'] = 'Ye be on page %s of %s!'
    }
}
