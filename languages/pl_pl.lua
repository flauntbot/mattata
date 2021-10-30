-- This is a language file for mattata
-- Language: pl-pl
-- Author: GingerPlusPlus

-- DO NOT CHANGE ANYTHING THAT BEGINS OR ENDS WITH A %
-- THESE ARE PLACEHOLDERS!

-- DO NOT CHANGE ANY MARKDOWN/HTML FORMATTING!
-- IF YOU ARE UNSURE, ASK ON TELEGRAM (flaunt_and_dither)

return {
    ['errors'] = {
        ['connection'] = 'Błąd połączenia.',
        ['results'] = 'Brak pasujących wyników.',
        ['supergroup'] = 'Ta komenda może być używana tylko w supergrupach.',
        ['admin'] = 'Aby użyć tej komendy, musisz być moderatorem lub administratorem w tej grupie.',
        ['unknown'] = 'Nieznany użytkownik. Aby pokazać mi kto to, przekaż wiadomość od niego do dowolnego czatu w którym jestem.',
        ['generic'] = 'Wystąpił błąd!',
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
        ['1'] = 'Ta funkcja jest dostępna tylko dla użytkowników posiadających @username.',
        ['2'] = '%s powrócił(a) po nieobecności trwającej %s!',
        ['3'] = 'Komentarz',
        ['4'] = '%s jest teraz AFK.%s'
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
        ['1'] = 'Zobacz na iTunes',
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
        ['1'] = 'Nie mogę dostać zdjęć profilowych tego użytkownika, upewnij się że podano poprawne @username lub ID.',
        ['2'] = 'Ten użytkownik nie ma żadnych zdjęć profilowych.',
        ['3'] = 'Ten użytkownik nie ma aż tylu zdjęć profilowych!',
        ['4'] = 'Ten użytkownik zrezygnował ze zbierania danych na jego temat, toteż nie mogę pokazać Ci jego zdjęć profilowych.',
        ['5'] = 'User: %s\nPhoto: %s/%s\nSend /avatar %s [offset] to @%s to view a specific photo of this user',
        ['6'] = 'User: %s\nPhoto: %s/%s\nUse /avatar %s [offset] to view a specific photo of this user'
    },
    ['ban'] = {
        ['1'] = 'Kogo mam zbanować? Podaj @username lub ID.',
        ['2'] = 'Nie mogę zbanować tego użytkownika, ponieważ jest to moderator lub administrator tej grupy.',
        ['3'] = 'Nie mogę zbanować tego użytkownika, ponieważ opuścił on tę grupę.',
        ['4'] = 'Nie mogę zbanować tego użytkownika, ponieważ został on zbanowany już wcześniej.',
        ['5'] = 'Potrzebuję uprawnień administratora aby móc banować.',
        ['6'] = '%s <code>[%s]</code> has banned %s <code>[%s]</code> from %s <code>[%s]</code>%s.\n%s %s',
        ['7'] = '%s has banned %s%s.'
    },
    ['bash'] = {
        ['1'] = 'Podaj komendę to uruchomienia.',
        ['2'] = 'Sukces!'
    },
    ['blocklist'] = {
        ['1'] = 'Kogo mam ignorować? Podaj @username lub ID.',
        ['2'] = 'Nie mogę ignorować tego użytkownika, ponieważ jest to moderator lub administrator tej grupy.',
        ['3'] = 'Nie mogę ignorować tego użytkownika, ponieważ opuścił on tę grupę.',
        ['4'] = 'Nie mogę ignorować tego użytkownika, ponieważ został on zbanowany.',
        ['5'] = '%s <code>[%s]</code> has blocklisted %s <code>[%s]</code> from using %s <code>[%s]</code> in %s <code>[%s]</code>%s.\n%s %s',
        ['6'] = '%s has blocklisted %s from using %s%s.'
    },
    ['blocklistchat'] = {
        ['1'] = '%s został dodany do czarnej listy, nie pozwolę się tam dodać!',
        ['2'] = '%s jest użytkownikiem, ta komenda służy do blokowanie grup i kanałów!',
        ['3'] = '%s wydaje się nie istnieć!'
    },
    ['bugreport'] = {
        ['1'] = 'Twój raport o błędzie został wysłany; ID Twojego raportu to #%s.',
        ['2'] = 'Wystąpił problem podczas raportowania błędu...'
    },
    ['calc'] = {
        ['1'] = 'Klinknij aby wysłać.',
        ['2'] = '"%s" was an unexpected word!',
        ['3'] = 'You cannot have a unit before a number!'
    },
    ['cats'] = {
        ['1'] = 'Miau!'
    },
    ['channel'] = {
        ['1'] = 'Nie masz wymaganych uprawnień.',
        ['2'] = 'Wygląda na to że już nie administrujesz tamtą grupą.',
        ['3'] = 'Twoja wiadomość nie mogła zostać wysłana, upewnij się że mam uprawnienia administratora w tamtym kanale.',
        ['4'] = 'Twoja wiadomość została wysłana.',
        ['5'] = 'Nie mogę pobrać listy admistratorów tamtej grupy.',
        ['6'] = 'Wygląda na to że nie jesteś administratorem w tamtej grupie.',
        ['7'] = 'Podaj wiadomość do wysłania, używając /channel <kanał> <wiadomość>.',
        ['8'] = 'Czy jesteś pewien że chcesz wysłać tą wiadomość? Będzie ona wyglądać tak:',
        ['9'] = 'Potwierdź',
        ['10'] = 'Wiadmość zawiera niepoprawny Markdown! Popraw składnię i spróbuj ponownie.'
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
        ['1'] = 'Nie wysłano jeszcze żadnych komend w tej grupie!',
        ['2'] = '<b>Statystyki komend w:</b> %s\n\n%s\n<b>Liczba wszystkich komend:</b> %s',
        ['3'] = 'Zresetowano statystyki komend w tej grupie!',
        ['4'] = 'Błąd podczas resetowania statystyk, może zostały one zresetowane już wcześniej?'
    },
    ['copypasta'] = {
        ['1'] = 'Wiadomość na którą odpowiadasz tą komendą nie może być dłuższa niż %s znaków!'
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
        ['1'] = 'Sukces! Ta wiadomość zostanie wysłana za każdym razem gdy ktoś napisze %s!',
        ['2'] = 'Wyzwalacz "%s" nie istnieje!',
        ['3'] = 'Wyzwalacz "%s" został usunięty!',
        ['4'] = 'Nie utworzono żadnych wyzwalaczy',
        ['5'] = 'Wyzwalacze w %s:\n',
        ['6'] = 'Aby utworzyć nowy wyzwalacz, napisz:\n/custom new #wyzwalacz <wartość>.\nAby zobaczyć listę wyzwalaczy, napisz /custom list. Aby usunąć wyzwalacz, napisz, use /custom del #wyzwalacz.'
    },
    ['delete'] = {
        ['1'] = 'Nie mogę usunąć tej wiadomości. Może jest za stara, albo nie istnieje?'
    },
    ['demote'] = {
        ['1'] = 'Kogo mam zdegradować? Podaj @username lub ID.',
        ['2'] = 'Nie mogę zdegradować tego użytkownika, ponieważ nie jest to moderator tej grupy.',
        ['3'] = 'Nie mogę zdegradować tego użytkownika, ponieważ opuścił on tę grupę.',
        ['4'] = 'Nie mogę zdegradować tego użytkownika, ponieważ został on wyrzucony z tej grupy.',
    },
    ['dice'] = {
        ['1'] = 'Najmniejsza dopuszczalna liczba ścian to %s.',
        ['2'] = '%s to limit liczby ścian, i liczby rzutów.',
        ['3'] = 'Limit liczby ścian to %s, a limit liczby rzutów to %s.',
        ['4'] = '%s rzutów %s-ścienną kostką:\n'
    },
    ['doge'] = {
        ['1'] = 'Podaj tekst do umieszczenia na obrazku z Piesełem. Rozdziel wypowiedzi ukośnikiem lub nową linią.'
    },
    ['duckduckgo'] = {
        ['1'] = 'Nie wiem co to jest!'
    },
    ['donate'] = {
        ['1'] = '<b>Hello, %s!</b>\n\nIf you\'re feeling generous, you can contribute to the mafflebot project by making a monetary donation of any amount. This will go towards server costs and any time and resources used to develop mafflebot. This is an optional act, however it is greatly appreciated and your name will also be listed publically on mattata\'s GitHub page.\n\nIf you\'re still interested, you can donate <a href="%s">here</a>. Thank you for your continued support!'
    },
    ['eightball'] = {
        ['1'] = 'Tak.',
        ['2'] = 'Nie.',
        ['3'] = 'Prawdopodobnie.',
        ['4'] = 'Uh... spytaj ponownie później.'
    },
    ['fact'] = {
        ['1'] = 'Wygeneruj inny'
    },
    ['fban'] = {
        ['1'] = 'Which user would you like me to Fed-ban? You can specify this user by their @username or numerical ID.',
        ['2'] = 'I cannot Fed-ban this user because they are a moderator or an administrator in this chat.'
    },
    ['flickr'] = {
        ['1'] = 'Szukano:',
        ['2'] = 'Czego chcesz szukać na Flickr?',
        ['3'] = 'Więcej wyników'
    },
    ['game'] = {
        ['1'] = 'Zwycięstwa: %s\nPorażki: %s\nSaldo: %s mattamonet',
        ['2'] = 'Dołącz',
        ['3'] = 'Gra się już skończyła!',
        ['4'] = 'Nie Twój ruch!',
        ['5'] = 'Nie jesteś w tej grze!',
        ['6'] = 'To pole jest już zajęte, wybierz inne!',
        ['7'] = 'Już jesteś w grze!',
        ['8'] = 'Gra została rozpoczęta już wcześniej!',
        ['9'] = '%s [%s] gra przeciwko %s [%s]\nKolej na ruch gracza %s!',
        ['10'] = '%s wygrał(a) z %s!',
        ['11'] = '%s zremisował(a) z %s!',
        ['12'] = 'Czekanie na przeciwnika...',
        ['13'] = 'Kółko i krzyżyk',
        ['14'] = 'Klinkij aby rozpocząć grę w tej grupie!',
        ['15'] = 'Statystyki dla %s:\n',
        ['16'] = 'Zagraj w kółko i krzyżyk!'
    },
    ['gblocklist'] = {
        ['1'] = 'Odpowiedz do użytkownika którego mam wszędzie ignorować, bądź podaj jego @username lub ID.',
        ['2'] = 'Nie mogę dostać informacji o "%s", upewnij się że jest to poprawny @username lub ID.',
        ['3'] = 'To %s, a nie użytkownik!'
    },
    ['gallowlist'] = {
        ['1'] = 'Odpowiedz do użytkownika któremu mam znowu odpowiedać, bądź podaj jego @username lub ID.',
        ['2'] = 'Nie mogę dostać informacji o "%s", upewnij się że jest to poprawny @username lub ID.',
        ['3'] = 'To %s, a nie użytkownik!'
    },
    ['hackernews'] = {
        ['1'] = 'Najlepsze historie z Hacker News:'
    },
    ['help'] = {
        ['1'] = 'Brak pasujących wyników!',
        ['2'] = 'Brak funkcji których nazwa pasuje do "%s"!',
        ['3'] = '\n\nArgumenty: <wymagane> [opcjonalne]\n\nSzukaj funkcji lub przeczytaj pomoc do komendy używając wyszukiwania inline - w dowolnym czacie, napisz @%s <czego szukasz>.',
        ['4'] = 'Poprzednia',
        ['5'] = 'Następna',
        ['6'] = 'Powrót',
        ['7'] = 'Szukaj',
        ['8'] = 'Strona %s z %s',
        ['9'] = [[
Mogę wykonywać wiele akcji administracyjnych w Twoich grupach, dodaj mnie do grupy jako administrator i wyślij /administration żeby dostosować ustawienia dla swojej grupy.
Niektóre polecenia administracyjne i ich krótki opis:

• /pin <tekst> - Tworzy wiadomość do przypięcia (używane jest formatowanie Markdown). Użyj ponownie aby zedytować przypiętą wiadomość bez konieczności przypinania nowej wiadomości.

• /ban - Zbanuj użytkownika, odpowiadając tą komendą na jego wiadomość, bądź podając jego ID lub @username jako argument

• /kick - Wyrzuć (ban, następnie unban) użytkownika, odpowiadając tą komendą na jego wiadomość, bądź podając jego ID lub @username jako argument

• /unban - Anuluj bana użytkownika, odpowiadając tą komendą na jego wiadomość, bądź podając jego ID lub @username jako argument

• /setrules <tekst> - Ustaw tekst (sformatowany Markdownem) jako zasady grupy, które można przeczytać pisząc /rules
        ]],
        ['10'] = [[
• /setwelcome <tekst> - Co chcesz powiedzieć każdemu nowemu członkowi? Możesz używać Markdown do formatowania. (Wiadomość powitalną można wyłączyć w menu administracyjnym, pisząc /administration). Użyj $user\_id aby wstawić ID dołączającego użytkownika, $chat\_id aby wstawić ID grupy, $name aby wstawić the imię użytkownika, $title aby wstawić nazwę grupy i $username aby wstawić @username użytkownika (jeśli użytkownik nie ma @username, zostanie wstawione jego imię, więc najlepiej nie używać $name i $username koło siebie)

• /warn - Ostrzeż użytkownika. Użytkownik zostanie zbanowany jeśli osiągnie limit ostrzeżeń

• /mod - Awansuj użytkownika na moderatora, pozwalając im używać poleceń administracyjnych, takich jak /ban, /kick, /warn itp.

• /demod - Zdegraduj moderatora do zwykłego użytkownika, odbierając im możliwość używania poleceń administracyjnych

• /staff - Wyświetl twórcę grupy, administratorów i moderatorów
        ]],
        ['11'] = [[
• /report - Przekazuje wiadomość na którą odpowiadasz administratorom, ostrzegając ich o zaistniałej sytuacji

• /setlink <URL> - Ustaw link do grupy, który można zobaczyć poleceniem /link

• /links <tekst> - Pozwól na wysyłanie linków znalezionych w tekście (także linki zapisane jako @username)
        ]],
        ['12'] = 'Poniżej jest parę linków które mogą Ci się przydać:',
        ['13'] = 'Development',
        ['14'] = 'Kanał',
        ['15'] = 'Wsparcie',
        ['16'] = 'Częste pytania',
        ['17'] = 'Kod źródłowy',
        ['18'] = 'Wspomóż finansowo',
        ['19'] = 'Oceń',
        ['20'] = 'Log administracyjny',
        ['21'] = 'Ustawienia administracyjne',
        ['22'] = 'Plugins', --!
        ['23'] = [[
<b>Cześć %s! Mam na imię %s, miło Cię poznać</b> %s

Rozumiem wiele poleceń, które możesz poznać klikając przycisk "Commands".

%s <b>Wskazówka:</b> Użyj przycisku "Settings" poniżej aby dostosować moje zachowanie%s!

%s <b>Find me useful, or just want to help?</b> Donations are very much appreciated, use /donate for more information!
        ]],
        ['24'] = 'w'
    },
    ['id'] = {
        ['1'] = 'Nieznany użytkownik. Aby pokazać mi kto to, przekaż wiadomość od niego do dowolnego czatu w którym jestem.',
        ['2'] = 'Czat o który pytano:',
        ['3'] = 'Ten czat:',
        ['4'] = 'Kliknij aby wysłać.'
    },
    ['imdb'] = {
        ['1'] = 'Poprzednia',
        ['2'] = 'Następna',
        ['3'] = 'Strona %s z %s'
    },
    ['import'] = {
        ['1'] = 'Nie rozpoznaję tamtego czatu!',
        ['2'] = 'To nie jest supergrupa, więc nie mogę zaimportować z niej żadnych ustawień!',
        ['3'] = 'Pomyślnie zaimportowano ustawienia administracyjne i stan pluginów z %s do %s!'
    },
    ['info'] = {
        ['1'] = [[
```
Redis:
%s plik konfiguracyjny: %s
%s tryb: %s
%s port TCP: %s
%s wersja: %s
%s czas pracy: %s days
%s ID procesu: %s
%s Przeterminowane wpisy: %s

%s liczba użytkowników: %s
%s liczba grup: %s

System:
%s OS: %s
```
        ]]
    },
    ['instagram'] = {
        ['1'] = '@%s na Instagramie'
    },
    ['ipsw'] = {
        ['1'] = '<b>%s</b> iOS %s\n\n<code>Suma kontrolna MD5: %s\nSuma kontrolna SHA1: %s\nRozmiar pliku: %s GB</code>\n\n<i>%s %s</i>',
        ['2'] = 'To firmware nie jest już podpisywane!',
        ['3'] = 'To firmware jest wciąż podpisywane!',
        ['4'] = 'Wybierz swój model:',
        ['5'] = 'Wybierz swoją wersję firmware:',
        ['6'] = 'Wybierz swój typ urządzenia:',
        ['7'] = 'iPod Touch',
        ['8'] = 'iPhone',
        ['9'] = 'iPad',
        ['10'] = 'Apple TV'
    },
    ['isup'] = {
        ['1'] = 'Ta strona internetowa wydaje się działać, może tylko u Ciebie nie działa?',
        ['2'] = 'Nie wygląda mi to na poprawny adres strony internetowej...',
        ['3'] = 'Nie tylko u Ciebie, tutaj też ta strona internetowa wydaje się nie działać.'
    },
    ['itunes'] = {
        ['1'] = 'Nazwa:',
        ['2'] = 'Artysta:',
        ['3'] = 'Album:',
        ['4'] = 'Utwór:',
        ['5'] = 'Płyta:',
        ['6'] = 'Wiadomość zawierająca polecenie została usunięta.',
        ['7'] = 'Okładka poniżej:',
        ['8'] = 'Co mam wyszukać na iTunes?',
        ['9'] = 'Okładka albumu'
    },
    ['kick'] = {
        ['1'] = 'Kogo mam wyrzucić? Podaj @username lub ID.',
        ['2'] = 'Nie mogę wyrzucić tego użytkownika, ponieważ jest to moderator lub administrator tej grupy.',
        ['3'] = 'Nie mogę wyrzucić tego użytkownika, ponieważ opuścił on tę grupę.',
        ['4'] = 'Nie mogę wyrzucić tego użytkownika, ponieważ został on wyrzucony już wcześniej.',
        ['5'] = 'Potrzebuję uprawnień administratora aby móc wyrzucać.'
    },
    ['lastfm'] = {
        ['1'] = 'Nazwa użytkownika last.fm użytkownika %s została ustawiona na "%s".',
        ['2'] = 'Twoja nazwa użytkownika last.fm została zapomniana!',
        ['3'] = 'Nie masz ustawionej nazwy użytkownika last.fm!',
        ['4'] = 'Proszę podaj swoją nazwę użytkownika last.fm bądź ustaw ją używając /fmset.',
        ['5'] = 'Nie znaleziono historii tego użytkownika.',
        ['6'] = '%s słucha w tej chwili:\n',
        ['7'] = '%s ostatnio słuchał(a):\n',
        ['8'] = 'Nieznany',
        ['9'] = 'Kliknij aby wysłać.'
    },
    ['lmgtfy'] = {
        ['1'] = 'Wygoogluję to za Ciebie!'
    },
    ['location'] = {
        ['1'] = 'Nie masz ustawionej lokalizacji. Co mam ustawić jako Twoją nową lokalizację?'
    },
    ['logchat'] = {
        ['1'] = 'Podaj @username bądź ID grupy w której mam rejestrować akcje administracyjnych.',
        ['2'] = 'Sprawdzam czy tamta grupa jest ok...',
        ['3'] = 'Przepraszam, wygląda na to, że grupa nie istnieje, bądź nie jestem jej członkiem. Napraw to i spróbuj ponownie.',
        ['4'] = 'Nie możesz ustawić użytkownika jako dziennik akcji administracyjnych!',
        ['5'] = 'Nie jesteś administratorem w tamtej grupie!',
        ['6'] = 'Wygląda na to że już rejestruję akcje administracyjne w tamtej grupie! Użyj /logchat by wybrać inną.',
        ['7'] = 'Jak na razie wszystko w porządku, spróbuję wysłać tam testową wiadomość żeby upawnić się że mogę wywyłać tam wiadomości...',
        ['8'] = 'Witaj świecie - to wiadomość testowa, żeby sprawdzić czy mogę tu pisać - jeśli to czytasz, wszystko poszło zgodnie z planem!',
        ['9'] = 'Wszystko ok! Od teraz, każda akcja administracyjna w tej grupie będzie rejestrowana w %s - aby wybrać inne miejsce, napisz /logchat.'
    },
    ['lua'] = {
        ['1'] = 'Podaj proszę fragment kodu Lua do uruchomienia:'
    },
    ['minecraft'] = {
        ['1'] = '<b>%s zmienił(a) nazwę użytkownika %s raz</b>',
        ['2'] = '<b>%s zmienił(a) nazwę użytkownika %s razy</b>',
        ['3'] = 'Poprzednia',
        ['4'] = 'Następna',
        ['5'] = 'Powrót',
        ['6'] = 'UUID',
        ['7'] = 'Avatar',
        ['8'] = 'Historia nazwy użytkownika',
        ['9'] = 'Wybierz:',
        ['10'] = 'Podaj nazwę użytkownika gracza Minecraft.',
        ['11'] = 'Nazwy użytkownika w Minecraft mają długość od 3 do 16 znaków.'
    },
    ['mute'] = {
        ['1'] = 'Kogo mam wyciszyć? Podaj @username lub ID.',
        ['2'] = 'Nie mogę wyciszyć tego użytkownika, ponieważ został on wyciszony już wcześniej.',
        ['3'] = 'Nie mogę wyciszyć tego użytkownika, ponieważ jest to moderator lub administrator tej grupy.',
        ['4'] = 'Nie mogę wyciszyć tego użytkownika, ponieważ opuścił on tę grupę lub został z niej wyrzucony.',
        ['5'] = 'Potrzebuję uprawnień administratora aby móc wyciszać.'
    },
    ['myspotify'] = {
        ['1'] = 'Profil',
        ['2'] = 'Śledzący',
        ['3'] = 'Niedawno odtwarzane',
        ['4'] = 'Aktualnie odtwarzane',
        ['5'] = 'Najczęściej odtwarzane utwory',
        ['6'] = 'Top Artists', --!
        ['7'] = 'Wygląda na to, że nie śledzisz żadnych artystów!',
        ['8'] = 'Your Top Artists',
        ['9'] = 'Wygląda na to, że nie masz żadnych utworów w bibliotece!',
        ['10'] = 'Utwory najczęściej odtwarzane przez Ciebie',
        ['11'] = 'Wygląda na to, że nie śledzisz żadnych artystów!',
        ['12'] = 'Artyści których śledzisz',
        ['13'] = 'Nie odtwarzano ostatnie żadnych utworów!',
        ['14'] = '<b>Niedawno odtwarzane</b>\n%s %s\n%s %s\n%s Słuchano o %d:%d dnia %d/%d/%d.',
        ['15'] = 'Zaakceptowano żądanie, trwa przetwarzanie.',
        ['16'] = 'Wygląda na to, że niczego teraz nie słuchasz!',
        ['17'] = 'Aktualnie odtwarzane',
        ['18'] = 'Wystąpił błąd podczas ponownej autoryzacji Twojego konta Spotify!',
        ['19'] = 'Ponowna autoryzacja Twojego konta Spotify powiodła się! Przetwarzanie Twojego oryginalnego żądania...',
        ['20'] = 'Trwa ponowna autoryzacja Twojego konta Spotify, proszę czekać...',
        ['21'] = 'Potrzebujesz autoryzować Mattatę aby połączyć się ze swoim kontem Spotify. Kliknij [tutaj](https://accounts.spotify.com/en/authorize?client_id=%s&response_type=code&redirect_uri=%s&scope=user-library-read%%20playlist-read-private%%20playlist-read-collaborative%%20user-read-private%%20user-read-email%%20user-follow-read%%20user-top-read%%20user-read-playback-state%%20user-read-recently-played%%20user-read-currently-playing) i kliknij zielony przycisk "OKAY" aby połączyć Mattatę do Twojego konta Spotify. Następnie wyślij link do którego Cię przekierowano (powinien się zaczynać od "%s", a następnie zawierać unikatowy kod) w odpowiedzi na tę wiadomość.',
        ['22'] = 'Listy odtwarzania',
        ['23'] = 'Użyj trybu inline',
        ['24'] = 'Tekst piosenki',
        ['25'] = 'Nie znaleziono żadnych urządzeń.',
        ['26'] = 'Wygląda na to, że nie masz żadnych list odtwarzania.',
        ['27'] = 'Twoje listy odtwarzania',
        ['28'] = '%s %s [%s utworów]',
        ['29'] = '%s %s [%s]\nSpotify %s user\n\n<b>Urządzenia:</b>\n%s', --!
        ['30'] = 'Włączam poprzedni utwor...',
        ['31'] = 'Nie masz konta premium!',
        ['32'] = 'Nie znaleziono żadnych urządzeń.',
        ['33'] = 'Włączam następny utwór...',
        ['34'] = 'Wznawiam odtwarzanie...',
        ['35'] = 'Twoje urządzenie jest tymczasowo niedostępne...',
        ['36'] = 'Nie znaleziono żadnych urządzeń!',
        ['37'] = 'Wstrzymuję odtwarzanie...',
        ['38'] = 'Trwa odtwarzanie',
        ['39'] = 'Losuję kolejność odtwarzania...',
        ['40'] = 'To nie jest poprawny poziom głośności. Podaj liczbę między 0 a 100.',
        ['41'] = 'Głośność została ustawiona na %s%%!',
        ['42'] = 'Ta wiadomość została wysłana przez wcześniejszą wersję pluginu, poproś o nową wysyłając /myspotify!'
    },
    ['news'] = {
        ['1'] = '"<code>%s</code>" isn\'t a valid Lua pattern.', --!
        ['2'] = 'Nie mogę pobrać listy źródeł.',
        ['3'] = '<b>Źródła newsów pasujących do wzorca</b> "<code>%s</code>":\n\n%s',
        ['4'] = '<b>Aktualnie dostępne źródła newsów których możesz używać w </b> /news<b>. Użyj</b> /nsources &lt;Lua_pattern&gt; <b>aby przeszukać tę listę pod kątem bardziej specyficznych rezultatów.</b>\n\n%s',
        ['5'] = 'Nie masz preferowanego źródła newsów. Użyj /setnews <źródło> aby ustawić. Przejrzyj listę źródeł używając /nsources, lub zawęź wyniki używając /nsources <Lua_pattern>.',
        ['6'] = 'Twoje aktualne preferowane źródło newsów to %s. Użyj /setnews <źródło> aby to zmienić. Przejrzyj listę źródeł używając /nsources, lub zawęź wyniki używając /nsources <Lua_pattern>.',
        ['7'] = 'Twoje preferowane źródło informacji jest już ustawione na %s! Użyj /news aby zobaczyć aktualną najlepszą historię.',
        ['8'] = 'Nieznane źródło newsów. Przejrzyj listę źródeł używając /nsources, lub zawęź wyniki używając /nsources <Lua_pattern>.',
        ['9'] = 'Twoje preferowane źródło newsów zostało zmienione na %s! Użyj /news aby zobaczyć aktualną najlepszą historię.',
        ['10'] = 'Nieznane źródło newsów. Przejrzyj listę źródeł używając /nsources. Jeśli masz ulubione źródło, użyj /setnews <źródło> żeby pobierać zeń newsy kiedy użyjesz /news bez argumentów.',
        ['11'] = 'Czytaj więcej'
    },
    ['nick'] = {
        ['1'] = 'Twoja ksywka została zapomniana!',
        ['2'] = 'Twoja ksywka została ustawiona na "%s"!'
    },
    ['pokedex'] = {
        ['1'] = 'Nazwa: %s\nID: %s\nTyp: %s\nOpis: %s'
    },
    ['pin'] = {
        ['1'] = 'Nie utworzono wcześniej żadnej wiadomości do przypięcia. Użyj /pin <tekst> aby utworzyć. Użyj Markdown do formatowania.',
        ['2'] = 'Oto ostatnia wiadomość utworzona przez /pin.',
        ['3'] = 'Znaleziono wiadomość do przypięcia w bazie danych, ale wygląda na to że została ona usunięta z grupy. Utwórz nową używając /pin <tekst>. Użyj Markdown do formatowania.',
        ['4'] = 'Wystąpił błąd podczas aktualizowania wiadomości do przypięcia. Wprowadzony tekst mógł zawierać nieprawidłowy Markdown, bądź wiadomość do przypięcia została usunięta. Spróbuję wysłać nową wiadomość do przypięcia, znajdziesz ją poniżej - jeśli potrzebujesz ją zmodyfikować, po upewnieniu się że istnieje, użyj /pin <tekst>.',
        ['5'] = 'Tekst zawiera nieprawidłowy Markdown.',
        ['6'] = 'Kliknij tutaj aby zobaczyć zaktualizowaną przypiętą wiadomość.'
    },
    ['promote'] = {
        ['1'] = 'Nie mogę awansować tego użytkownika na moderatora, ponieważ jest to moderator lub administrator tej grupy.',
        ['2'] = 'Nie mogę awansować tego użytkownika na moderatora, ponieważ opuścił on tę grupę.',
        ['3'] = 'Nie mogę awansować tego użytkownika na moderatora, ponieważ został on wyrzucony z tej grupy.'
    },
    ['quote'] = {
        ['1'] = 'Ten użytkownik zrezygnował ze zbierania danych na jego temat',
        ['2'] = 'Brak zapisanych cytatów użytkownika %s! Odpisz na wiadomość poleceniem /save aby zapisać.'
    },
    ['report'] = {
        ['1'] = 'Please reply to the message you would like to report to the group\'s administrators.',
        ['2'] = 'You can\'t report your own messages, are you just trying to be funny?',
        ['3'] = '<b>%s needs help in %s!</b>',
        ['4'] = 'Click here to view the reported message.',
        ['5'] = 'I\'ve successfully reported that message to %s admin(s)!'
    },
    ['save'] = {
        ['1'] = 'Ten użytkownik zrezygnował ze zbierania danych na jego temat',
        ['2'] = 'Wiadomość zapisana w bazie danych i dodana do listy możliwych odpowiedzi gdy /quote jest użyte w odpowiedzi do %s!'
    },
    ['sed'] = {
        ['1'] = '%s\n\n<i>%s nie miał(a) tego na myśli!</i>',
        ['2'] = '%s\n\n<i>%s przyznał(a) się do porażki.</i>',
        ['3'] = '%s\n\n<i>%s nie ma pewności czy się nie pomylił(a)...</i>',
        ['4'] = 'Odczep się, ja <i>nigdy</i> się nie mylę!',
        ['5'] = '"<code>%s</code>" isn\'t a valid PCRE pattern.', --!
        ['6'] = 'Hey %s, %s seems to think you meant:\n<i>%s</i>',
        ['7'] = 'Tak',
        ['8'] = 'Nie',
        ['9'] = 'Nie wiem',
        ['10'] = 'Just edit your message, idiot.'
    },
    ['setgrouplang'] = {
        ['1'] = 'Język tej grupy został ustawiony na %s!',
        ['2'] = 'Aktualnu język tej grupy to %s.\nPamiętaj że tłumaczenie może nie być kompletne. Aby zmienić język, użyj klawiatury poniżej:',
        ['3'] = 'Wspólny język dla tej grupy jest wyłączony. Aby to zmienić, użyj przycisku poniżej lub menu /administration.',
        ['4'] = 'Włącz',
        ['5'] = 'Wyłącz'
    },
    ['setlang'] = {
        ['1'] = 'Twój język został ustawiony na %s!',
        ['2'] = 'Aktualnie wybrany język %s.\nPamiętaj że tłumaczenie może nie być kompletne. Jeśli chcesz zmienić język, użyj klawiatury poniżej:'
    },
    ['setrules'] = {
        ['1'] = 'Niepoprawny Markdown.',
        ['2'] = 'Ustawienie zasad powiodło się!'
    },
    ['setwelcome'] = {
        ['1'] = 'Co chcesz powiedzieć każdemu nowemu członkowi? Możesz używać Markdown do formatowania. (Wiadomość powitalną można wyłączyć w menu administracyjnym, pisząc /administration). Użyj $user_id aby wstawić ID dołączającego użytkownika, $chat_id aby wstawić ID grupy, $name aby wstawić the imię użytkownika, $title aby wstawić nazwę grupy i $username aby wstawić @username użytkownika (jeśli użytkownik nie ma @username, zostanie wstawione jego imię, więc najlepiej nie używać $name i $username koło siebie).',
        ['2'] = 'Twoja wiadomość jest niepoprawnie sformatowana, sprawdź swój Markdown i spróbuj ponownie.',
        ['3'] = 'Zapisano wiadomość powitalną dla %s!'
    },
    ['share'] = {
        ['1'] = 'Udostępnij'
    },
    ['statistics'] = {
        ['1'] = 'W tej grupie nie wysłano jeszcze żadnej wiadomości!',
        ['2'] = '<b>Statystyki w:</b> %s\n\n%s\n<b>Liczba wszystkich wiadomości:</b> %s',
        ['3'] = 'Zresetowano statystyki w tej grupie!',
        ['4'] = 'Błąd podczas resetowania statystyk, może zostały one zresetowane już wcześniej?'
    },
    ['steam'] = {
        ['1'] = 'Twoja nazwa użytkownika na Steamie została ustawiona na "%s".',
        ['2'] = '"%s" nie jest poprawną nazwą użytkownika na Steamie.',
        ['3'] = '%s jest użytkownikiem Steama od %s, %s.\nData ostatniego wylogowania: %s, %s.\n<a href="%s">Profil na Steamie</a>',
        ['4'] = '%s, AKA "%s",'
    },
    ['trust'] = {
        ['1'] = 'Nie mogę zaufać temu użytkownikowi, ponieważ jest to moderator lub administrator tej grupy.',
        ['2'] = 'Nie mogę zaufać temu użytkownikowi, ponieważ opuścił on tę grupę.',
        ['3'] = 'Nie mogę zaufać temu użytkownikowi, ponieważ został on wyrzucony już wcześniej.',
    },
    ['unmute'] = {
        ['1'] = 'Komu mam pozwolić mówić? Podaj @username lub ID.',
        ['2'] = 'Nie mogę pozwolić mówić temu użytkownikowi, ponieważ nie został on wyciszony.',
        ['3'] = 'Nie mogę pozwolić mówić temu użytkownikowi, ponieważ jest to moderator lub administrator tej grupy.',
        ['4'] = 'Nie mogę pozwolić mówić temu użytkownikowi, ponieważ opuścił on tę grupę lub został z niej wyrzucony.',
    },
    ['untrust'] = {
        ['1'] = 'Komu mam przestać ufać? Podaj @username lub ID.',
        ['2'] = 'Nie mogę przestać ufać temu użytkownikowi, ponieważ jest to moderator lub administrator tej grupy.',
        ['3'] = 'Nie mogę przestać ufać temu użytkownikowi, ponieważ opuścił on tę grupę.',
        ['4'] = 'Nie mogę przestać ufać temu użytkownikowi, ponieważ został on wyrzucony z tej grupy.',
    },
    ['version'] = {
        ['1'] = '@%s AKA %s `[%s]` działa pod kontrolą mafflebot %s, stworzona przez Chris. Kod źródłowy jest dostępny na [GitHubie](https://github.com/wrxck/mattata).'
    },
    ['weather'] = {
        ['1'] = 'Nie masz ustawionej lokalizacji. Użyj /setloc <lokalizacja> aby ustawić.',
        ['2'] = 'Aktualna temperatura: %s (odczuwalna: %s) w %s. %s'
    },
    ['welcome'] = {
        ['1'] = 'Przeczytaj zasady'
    },
    ['allowlist'] = {
        ['1'] = 'Kogo mam przestać ignorować? Podaj @username lub ID.',
        ['2'] = 'Nie mogę przestać ignorować tego użytkownika, ponieważ jest to moderator lub administrator tej grupy.',
        ['3'] = 'Nie mogę przestać ignorować tego użytkownika, ponieważ opuścił on tę grupę.',
        ['4'] = 'Nie mogę przestać ignorować tego użytkownika, ponieważ został on zbanowany.',
    },
    ['wikipedia'] = {
        ['1'] = 'Czytaj więcej'
    },
    ['youtube'] = {
        ['1'] = 'Poprzedni',
        ['2'] = 'Następny',
        ['3'] = 'Strona %s z %s'
    }
}