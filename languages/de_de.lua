-- This is a language file for mattata
-- Language: de-de
-- Author: LKD70, CodeNameT1M

-- DO NOT CHANGE ANYTHING THAT BEGINS OR ENDS WITH A %
-- THESE ARE PLACEHOLDERS!

-- DO NOT CHANGE ANY MARKDOWN/HTML FORMATTING!
-- IF YOU ARE UNSURE, ASK ON TELEGRAM (t.me/flaunt_and_dither)

return {
    ['errors'] = {
        ['connection'] = 'Verbindungs-fehler.',
        ['results'] = 'Kein Ergebnis gefunden.',
        ['supergroup'] = 'Dieser Befehl kann nur in Supergruppen benutzt werden.',
        ['admin'] = 'Für diesen Befehl musst du ein Moderator oder Administrator in dieser Gruppe sein.',
        ['unknown'] = 'Ich kann den Benutzer nicht erkennen. Wenn du mich lehren möchtest wer dieser Benutzer ist, dann leite einfach eine Nachricht von diesem Benutzer in eine Gruppe in der ich auch bin .',
        ['generic'] = 'Ein Fehler ist passiert!',
        ['use'] = 'Du hast keine Benutzungserlaubnis!',
        ['private'] = 'Du kannst diesen Command nur im Privatchat nutzen!'
    },
    ['addcommand'] = {
        ['1'] = 'Bitte Spezifiziere den Command so: <code>/command - description</code>',
        ['2'] = 'Ich konnte meine Befehle nicht abrufen!',
        ['3'] = 'Die Beschreibung des Comands darf nicht länger als 256 Zeichen sein!',
        ['4'] = 'Ein unbekannter fehler ist passiert, ich war nicht in der Lage den Command hinzuzufügen!',
        ['5'] = 'Command wurde erfolgreich hinzugefügt.'
    },
    ['addrule'] = {
        ['1'] = 'Bitte spezifiziere die Regel die du hinzufügen willst!',
        ['2'] = 'Du hast keine Regeln zum hinzufügen! Bitte erstelle Regeln mit dem Befehl /setrules!',
        ['3'] = 'Ich konnte diese Regel nicht hinzufügen, da so die Länge der Regel zu lang wäre und Telegram\'s 4096 Zeichen limit überschreiten würde!',
        ['4'] = 'Ich konnte diese Regel nicht hinzufügen, es scheint so als würde es nicht zulässige Markdown-Formatierungen beinhalten!',
        ['5'] = 'Regeln wurden erfolgreich aktualisiert!'
    },
    ['addslap'] = {
        ['1'] = 'Du kannst diesen Befehl nur in Gruppen benutzen!',
        ['2'] = 'Der slap darf keine { oder } außerhalb der Platzhalter haben!',
        ['3'] = 'Der slap darf nicht länger als 256 Zeichen sein!',
        ['4'] = 'Ich habe erfolgreich diesen slap hinzugefügt als eine Möglichkeit für /slap in dieser Gruppe!',
        ['5'] = 'Du musst Platzhalter benutzen im slap. Benutze {ME} für die Person die den Befehl benutzt und {THEM} für das Opfer.'
    },
    ['administration'] = {
        ['1'] = 'Aktiviere Administration',
        ['2'] = 'Deaktiviere Administration',
        ['3'] = 'Anti-Spam Einstellungen',
        ['4'] = 'Warn-Einstellungen',
        ['5'] = 'Vote-Bann Eintellungen',
        ['6'] = 'Neue User begrüßen?',
        ['7'] = 'Regeln senden bei Beitritt?',
        ['8'] = 'Regeln in Gruppe senden?',
        ['9'] = 'Zurück',
        ['10'] = 'Weiter',
        ['11'] = 'Wort Filter',
        ['12'] = 'Anti-Bot',
        ['13'] = 'Anti-Link',
        ['14'] = 'Aktionen loggen?',
        ['15'] = 'Anti-RTL',
        ['16'] = 'Anti-Spam Aktion',
        ['17'] = 'Bann',
        ['18'] = 'Kick',
        ['19'] = 'Commands löschen?',
        ['20'] = 'Gruppen-Sprache erzwingen?',
        ['21'] = 'Einstellungen in Gruppe senden?',
        ['22'] = 'Antwort löschen bei Aktion?',
        ['23'] = 'Captcha benötigt?',
        ['24'] = 'Inline Captcha benutzen?',
        ['25'] = 'Banne SpamWatch-markierte Benutzer?',
        ['26'] = 'Anzahl der Warunungen bis %s:',
        ['27'] = 'Upvotes benötigt für Bann:',
        ['28'] = 'Downvotes benötigt für ignorieren:',
        ['29'] = 'Löschte %s, war ein passender Link von der Database!',
        ['30'] = 'Keine Einträge vorhanden in der database passend zu "%s"!',
        ['31'] = 'Du bist kein Administrator in dieser Gruppe!',
        ['32'] = 'Die minimale Anzahl von upvotes benötigt für einen vote-bann ist %s.',
        ['33'] = 'Die maximale Anzahl von upvotes benötigt für einen vote-bann ist %s.',
        ['34'] = 'Die minimale Anzahl von downvotes benötigt für einen vote-bann ist %s.',
        ['35'] = 'Die maximale Anzahl von downvotes benötigt für einen vote-bann ist %s.',
        ['36'] = 'Die maximale Anzahl von Warnungen ist %s.',
        ['37'] = 'Die minimale Anzahl von Warnungen ist %s.',
        ['38'] = 'Du kannst ein oder mehrere Wörter hinzufügen zum Wort Filter mit /filter <Wort>',
        ['39'] = 'Du wirst nicht länger dran erinnert, das das Administrations-Plugin abgeschaltet ist. Um es anzuschalten, benutze /administration.',
        ['40'] = 'Das ist kein zulässiger Chat!',
        ['41'] = 'Es sieht nicht so aus, als wärst du Administrator in diesem Chat!',
        ['42'] = 'Meine Administrativen funktionen können nur in Gruppen benutzt werden! Wenn du Hilfe brauchst meine administrativen Funktionen zu nutzen, schau mal in den "Administration" Bereich bei /help! Alternativ, wenn du die Winstellungen einer Gruppe ändern willst die du Administrierst, du kannst das Hier tun mit dem Befehl /administration <chat>.',
        ['43'] = 'Benutze die Knöpfe unten um die Administrativen Einstellungen zu ändern von <b>%s</b>:',
        ['44'] = 'Bitte sende mir eine [private message](https://t.me/%s), damit ich dir diese Information schicken kann.',
        ['45'] = 'Ich habe dir die angefragten Informationen privat zugeschickt.',
        ['46'] = 'Entferne Channel Pins?',
        ['47'] = 'Entferne Other Pins?',
        ['48'] = 'Entferne Code?',
        ['49'] = 'Blockiere Inline Bots?',
        ['50'] = 'Kick Medien bei Beitritt?',
        ['51'] = 'Aktiviere Plugins für Admins?',
        ['52'] = 'Kick URLs bei Beitritt?'
    },
    ['afk'] = {
        ['1'] = 'Tut mir leid. Dieses Feature ist nur dann verfügbar, wenn der Benutzer einen öffentlichen @Benutzername hat!',
        ['2'] = '%s ist wieder zurück nachdem er/sie nicht anwesend war für %s!',
        ['3'] = 'Notiz',
        ['4'] = '%s ist nicht anwesend.%s'
    },
    ['antispam'] = {
        ['1'] = 'Abschalten',
        ['2'] = 'Anschalten',
        ['3'] = 'Deaktiviere Limit',
        ['4'] = 'Aktiviere limits von %s',
        ['5'] = 'Alle Administrations-Einstellungen',
        ['6'] = '%s [%s] hat %s [%s] gekickt von %s [%s] für überschreiten des eingestellten anti-spam limits für [%s] Medien.',
        ['7'] = 'Kickte %s für Überschreitung des eingesellten antispam limits für [%s] Medien.',
        ['8'] = 'Das maximale Limit ist 100.',
        ['9'] = 'Das minimale Limit ist 1.',
        ['10'] = 'Ändere die Anti-Spam Einstellungen für %s unten:',
        ['11'] = 'Hey %s, wenn du Code sendest der länger ist als %s Zeichen, bitte nutze stattdessen /paste im <a href="https://t.me/%s">privatem Chat mit mir</a>!',
        ['12'] = '%s <code>[%s]</code> hat %s %s <code>[%s]</code> von %s <code>[%s]</code> für das verschicken von Telegram-Einladungslinks.\n#chat%s #user%s',
        ['13'] = '%s %s für das verschicken von Telegram-Einladungslinks.',
        ['14'] = 'Hey, Ich habe gemerkt das du anti-link aktiviert hast und du deinen Nutzern nicht erlaubst einen Chat zu erwähnen den du gerade erwähnt hast,wenn du das erlauben willst, nutze /allowlink <links>.',
        ['15'] = 'Kickte %s <code>[%s]</code> von %s <code>[%s]</code> für das Senden von Medien in den ersten paar Nachrichten.\n#chat%s #user%s',
        ['16'] = 'Kickte %s <code>[%s]</code> von %s <code>[%s]</code> für das Senden von URLs in den ersten paar Nachrichten.\n#chat%s #user%s',
        ['17'] = 'Action',
        ['18'] = 'Kick',
        ['19'] = 'Ban',
        ['20'] = 'Mute'
    },
    ['appstore'] = {
        ['1'] = 'Ansehen in iTunes',
        ['2'] = 'Bewertung',
        ['3'] = 'Bewertungen'
    },
    ['authspotify'] = {
        ['1'] = 'Du bist schon authorisiert mit diesem Account.',
        ['2'] = 'Authorisierung, bitte warten...',
        ['3'] = 'Ein verbindungs-Fehler ist passiert. Bist du dir sicher das der Link Korrekt war? Es sollte aussehen wie',
        ['4'] = 'Erfolgreich authorisiert mit deinem Spotify-Account!'
    },
    ['avatar'] = {
        ['1'] = 'Ich konnte kein Profilbild für den Benutzer abrufen. Bitte sorge dafür, dass du einen gültigen Benutzername oder eine gültige Identifikationsnummer angegeben hast.',
        ['2'] = 'Dieser Benutzer hat keine Profilbilder.',
        ['3'] = 'Dieser Benutzer hat nicht viele Profilbilder!',
        ['4'] = 'Dieser Benutzer ist opted out(ausgetreten) von der Datensammlung funktionalität, deswegen ist es mir nicht möglich die Profil Bilder anzuzeigen.',
        ['5'] = 'User: %s\nPhoto: %s/%s\nSend /avatar %s [offset] to @%s to view a specific photo of this user',
        ['6'] = 'User: %s\nPhoto: %s/%s\nUse /avatar %s [offset] to view a specific photo of this user'
    },
    ['ban'] = {
        ['1'] = 'Welchen Benutzer soll ich sperren? Du kannst den Benutzer mit dem Benutzernamen oder mit der Identifikationsnummer angeben.',
        ['2'] = 'Ich kann diesen Benutzer nicht sperren, weil er/sie ein Moderator oder Administrator in dieser Gruppe ist.',
        ['3'] = 'Ich kann diesen Benutzer nicht sperren, weil er/sie die Gruppe schon verlassen hat.',
        ['4'] = 'Ich kann diesen Benutzer nicht sperren, weil er/sie für die Gruppe schon gesperrt ist.',
        ['5'] = 'Ich muss Administrationsberechtigung haben damit ich den Benutzer sperren kann. Bitte kümmer dich um das Problem und versuche es noch einmal.',
        ['6'] = '%s <code>[%s]</code> hat %s <code>[%s]</code> gebannt von %s <code>[%s]</code>%s.\n%s %s',
        ['7'] = '%s hat %s%s gebannt.'
    },
    ['bash'] = {
        ['1'] = 'Zum durchführen gebe bitte einen Befehl an!',
        ['2'] = 'Erfolg!'
    },
    ['blocklist'] = {
        ['1'] = 'Welchen Benutzer soll ich auf die Block-Liste setzen? Du kannst den Benutzer mit dem Benutzernamen oder mit der Identifikationsnummer angeben.',
        ['2'] = 'Ich kann diesen Benutzer nicht auf die Block-Liste setzen, weil er/sie ein Moderator oder Administrator in dieser Gruppe ist.',
        ['3'] = 'Ich kann diesen Benutzer nicht auf die Block-Liste setzen, weil er/sie die Gruppe schon verlassen hat.',
        ['4'] = 'Ich kann diesen Benutzer nicht auf die Block-Liste setzen, weil er/sie für die gruppe schon gesperrt ist.',
        ['5'] = '%s <code>[%s]</code> has blocklisted %s <code>[%s]</code> from using %s <code>[%s]</code> in %s <code>[%s]</code>%s.\n%s %s',
        ['6'] = '%s has blocklisted %s from using %s%s.'
    },
    ['blocklistchat'] = {
        ['1'] = '%s ist nun auf der Block-Liste. Ich will euch auch verlassen wenn ich hinzugefügt werde!',
        ['2'] = '%s ist ein Benutzer. Dieser Befehl ist für die Block-Liste von Unterhaltungen wie Gruppen und Kanäle!',
        ['3'] = '%s ist keine gültige Gruppe!'
    },
    ['bugreport'] = {
        ['1'] = 'Erfolg! Dein Fehlerbericht wurde gesendet. Die Identifikationsnummer für diesen Bericht ist #%s.',
        ['2'] = 'Es ist ein Fehler aufgetreten mit dem Fehlerbericht!'
    },
    ['calc'] = {
        ['1'] = 'Zum senden des Ergebnis klicken.',
        ['2'] = '"%s" was an unexpected word!',
        ['3'] = 'You cannot have a unit before a number!'
    },
    ['cats'] = {
        ['1'] = 'Miau!'
    },
    ['channel'] = {
        ['1'] = 'Du bist nicht berechtigt zum benutzen!',
        ['2'] = 'Es sieht so aus als wärst du nicht mehr ein Administrator dieser Gruppe!',
        ['3'] = 'Ich konnte deine Nachricht nicht senden. Bist du sicher, dass ich immer noch befugt bin zum senden von Nachrichten in dieser Gruppe?',
        ['4'] = 'Deine Nachricht ist gesendet!',
        ['5'] = 'Es war mir nicht möglich eine List mit Administratoren von dieser Gruppe zu bekommen!',
        ['6'] = 'Es sieht so aus als wärst kein Administrator dieser Gruppe!',
        ['7'] = 'Bitte spezifiere die Nachricht und benutze den Syntax /channel <Kanal> <Nachricht>.',
        ['8'] = 'Bist du dir sicher, dass du die nachricht senden möchtest? Das ist wie es ausehen wird:',
        ['9'] = 'Ja, ich bin sicher!',
        ['10'] = 'Diese Nachricht hat ein falsches Format! Bitte korigiere den Syntax und versuche es noch einmal.'
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
        ['1'] = 'Es wurden keine Befehle in dieser Unterhaltung gesendet!',
        ['2'] = '<b>Befehl Statistiken für:</b> %s\n\n%s\n<b>Summe der gesendeten Befehle:</b> %s',
        ['3'] = 'Die Befehl Statistiken für diese Unterhaltung wurden gelöscht!',
        ['4'] = 'Ich konnte die Befehl Statistiken für diese Unterhaltung nicht löschen. Wurden sie vielleicht schon gelöscht?'
    },
    ['copypasta'] = {
        ['1'] = 'Der Antowrten-zu text kann nicht länger sein als %s Zeichen!'
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
        ['1'] = 'Erfolg! Die Nachricht wird nun jedesmal gesendet wen jemand %s benutzt!',
        ['2'] = 'Der Auslöser "%s" existiert nicht!',
        ['3'] = 'Der Auslöser "%s" ist gelöscht!',
        ['4'] = 'Du hast keine eigene Auslöser angegeben!',
        ['5'] = 'Eigene Befehle für %s:\n',
        ['6'] = 'Zum machen von eigenen Befehlen, benutze diesen Syntax:\n/custom new #Auslöser <Wert>. Zum listen aller bestehenden Auslöser, benutze /custom list. Zum löschen eines Auslösers, benutze /custom del #Auslöser.'
    },
    ['delete'] = {
        ['1'] = 'Ich konnte die Nachricht nicht löschen. Ist die Nachricht vielleicht zu alt oder existiert nicht?'
    },
    ['demote'] = {
        ['1'] = 'Welchen Benutzer soll ich degradieren? Du kannst den Benutzer mit dem Benutzernamen oder mit der Identifikationsnummer angeben.',
        ['2'] = 'Ich kann den Benutzer nicht degradieren, weil er/sie ein Moderator oder Administrator in dieser Gruppe ist.',
        ['3'] = 'Ich kann den Benutzer nicht degradieren, weil er/sie die Gruppe schon verlassen hat.',
        ['4'] = 'Ich kann den Benutzer nicht degradieren, weil er/sie von der Gruppe entfernt wurde.'
    },
    ['dice'] = {
        ['1'] = 'Die mindest Spannweite ist %s.',
        ['2'] = 'Die maximal Spannweite und Zählung ist beides %s.',
        ['3'] = 'Die maximal Spannweite ist %s, die maximal Zählung ist %s.',
        ['4'] = '%s rollt mit einer Spannweite von %s:\n'
    },
    ['doge'] = {
        ['1'] = 'Bitte gebe den text ein welchen du in Doge-ify sehen willst. Jeder Satz sollte getrennt sein mit Schrägstrich oder neue Zeile..'
    },
    ['donate'] = {
        ['1'] = '<b>Hello, %s!</b>\n\nIf you\'re feeling generous, you can contribute to the mafflebot project by making a monetary donation of any amount. This will go towards server costs and any time and resources used to develop mafflebot. This is an optional act, however it is greatly appreciated and your name will also be listed publically on the bot\'s GitHub page.\n\nIf you\'re still interested, you can donate <a href="%s">here</a>. Thank you for your continued support!'
    },
    ['duckduckgo'] = {
        ['1'] = 'Ich bin nicht sicher was das ist!'
    },
    ['eightball'] = {
        ['1'] = 'Ja.',
        ['2'] = 'Nein.',
        ['3'] = 'Es ist warscheinlich so.',
        ['4'] = 'Also... Wenn ich du wäre würde ich später noch mal fragen.'
    },
    ['fact'] = {
        ['1'] = 'Generiere nochmal'
    },
    ['fban'] = {
        ['1'] = 'Which user would you like me to Fed-ban? You can specify this user by their @username or numerical ID.',
        ['2'] = 'I cannot Fed-ban this user because they are a moderator or an administrator in this chat.'
    },
    ['flickr'] = {
        ['1'] = 'Du hast gesucht für:',
        ['2'] = 'Bitte gebe einen Suchbegriff ein (das ist, was ich in flickr für dich suchen soll, d.h. "Big Ben" will ein Bild vom Big Ben in London senden).',
        ['3'] = 'Mehr Ergebnisse.'
    },
    ['game'] = {
        ['1'] = 'Total gewonnen: %s\nTotal verloren: %s\nGuthaben: %s mattacoins',
        ['2'] = 'Dem Spiel beitreten',
        ['3'] = 'Dieses Spiel hat schon geendet!',
        ['4'] = 'Du bist nicht an der reihe!',
        ['5'] = 'Du bist kein Mitspieler von diesem Spiel!',
        ['6'] = 'Du kannst da nicht hingehen!',
        ['7'] = 'Du bist schon ein Mitspieler von diesem Spiel!',
        ['8'] = 'Dieses Spiel hat schon angefangen!',
        ['9'] = '%s [%s] spielt gegen %s [%s]\nEs ist %s an der reihe!',
        ['10'] = '%s hat das Spiel gewonnen gegen %s!',
        ['11'] = '%s hat das spiel gezogen gegen %s!',
        ['12'] = 'Warte für einen Gegenspieler...',
        ['13'] = 'Tic-Tac-Toe',
        ['14'] = 'Klick zum senden des Spiels in die Unterhaltung!',
        ['15'] = 'Statistik für %s:\n',
        ['16'] = 'Spiel Tic-Tac-Toe!'
    },
    ['gblocklist'] = {
        ['1'] = 'Bitte Antworte-zu dem Benutzer, welchen du global auf der schwarzen Liste haben möchtest, oder gebe ihn/sie mit Benutzername/Identifikationsnummer an.',
        ['2'] = 'Ich kann keine Information über "%s" finden, bitte prüfe nach ob der Benutzername/Identifikationsnummer gültig ist und versuche es noch einmal.',
        ['3'] = 'Das ist ein/e %s, aber kein Benutzer!'
    },
    ['gallowlist'] = {
        ['1'] = 'Bitte Antworte-zu dem Benutzer, welchen du global auf der weißen Liste haben möchtest, oder gebe ihn/sie mit Benutzername/Identifikationsnummer an.',
        ['2'] = 'Ich kann keine Information über "%s" finden, bitte prüfe nach ob der Benutzername/Identifikationsnummer gültig ist und versuche es noch einmal.',
        ['3'] = 'Das ist ein/e %s, aber kein Benutzer!'
    },
    ['hackernews'] = {
        ['1'] = 'Top Stories von Hacker News:'
    },
    ['help'] = {
        ['1'] = 'Kein Ergebnis gefunden!',
        ['2'] = 'Keine Eigenschaften gefunden, welche übereinstimmen mit "%s". Bitte versuche ein bischen spezifischer zu sein!',
        ['3'] = '\n\nArguments: <erforderlich> [optional]\n\nSuche für Eigenschaften oder bekomme Hilfe mit der Benutzung von einem Befehl meiner inline Search Funktionalität - erwähne mich in irgendeiner Unterhaltung mit dem Syntax @%s <Suchbegriff>.',
        ['4'] = 'Vorherige',
        ['5'] = 'Nächste',
        ['6'] = 'Zurück',
        ['7'] = 'Suche',
        ['8'] = 'Du bist auf Seite %s von %s!',
        ['9'] = [[
Ich kann viele administrative Handlungen in deinen Gruppen machen. Du brauchst mich nur als Administrator hinzufügen und sende /administration zum anpassen der Einstellungen für deine Gruppe.
Hier sind einige administrative Befehle und ein kurzer Kommentar bezüglich was sie tun:

• /pin <text> - Sende einen formatierten Text, welcher auch bearbeitet werden kann mit dem selben Befehl und anderem Text, zum ersparen vom anheften eines textes den du nicht bearbeiten kannst to save you from having to re-pin a message if you can't edit it (was passieren kann, wenn der Text älter als 48 Stunden ist).

• /ban - Sperre einen Benutzer mit einer Antwort zu deren Text, oder mit spezifizieren mit deren Benutzername/Identifikationsnummer.

• /kick - Kick (sperren und dann sperre aufheben) einen Benutzer mit einer Antwort zu deren Text, oder mit spezifizieren mit deren Benutzername/Identifikationsnummer.

• /unban - Die Sperre eines Benutzer aufheben mit einer Antwort zu deren Text, oder mit spezifizieren mit deren Benutzername/Identifikationsnummer.

• /setrules <text> - Mache einen formatierten Text als Gruppenregel, welcher gesendet wird, wenn jemand /rules benutzt.
        ]],
        ['10'] = [[
• /setwelcome - Mache einen formatierten Text als Wilkommens Text, welcher jedesmal gesendet wird, wenn ein neuer Benutzer der Gruppe beitritt (der Willkommens Text kann ausgeschalted werden im Administration Menü, erreichbar durch /administration). Du kannst Platzhalter benutzen für einen individuellen Willkommens Text für jeden Benutzer. Benutze $user_id zum einfügen des Benutzers Identifikationsnummer, $chat_id zum einfügen der Gruppen Identifikationsnummer, $name zum einfügen des Benutzers name, $title zum einfügen des Gruppennamen und $username zum einfügen des Benutzers Benutzername (wenn der Benutzer keinen @Benutzernamen hat, wird deren Name benutzt, also ist es das beste, dieses zu vermeiden mit der Benutzung von $name).

• /warn - Warne einen Benutzer und sperre ihn/sie, wenn mehr als das Maximum der Warnungen ausgesprochen wurden.

• /mod - Befördere den Antworten-zu Benutzer. Gib im zugriff zu administrative Befehle wie /ban, /kick, /warn usw. (das ist sinnvoll wenn du nicht möchtest, dass jemand Nachrichten löschen kann)

• /demod - Degradiere den Antworten-zu Benutzer. Nehme deren Moderationstatus weg und die Möglichkeit zum benutzen administrativen Befehlen.

• /staff - Sehe den Gruppenerschaffer, Administratoren und Moderatoren in einer schön formatierten Liste.
        ]],
        ['11'] = [[
• /report - Sendet den Antworten-zu Text zu allen Administratoren und warnt sie vor der aktuellen Situation.

• /setlink <URL> - Ändert den Gruppen Link zu der gegebenen URL, welcher gesendet wird wenn jemand /link benutzt.

• /links <text> - Weiße Liste von allen gefundenen Telegram Links im angegebenen Text (einschließlich @Benutzername links)
        ]],
        ['12'] = 'Nachfolgend sind einige Links die du vielleicht nützlich findest:',
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
<b>Hallo %s! Mein Name ist %s, schön dich zu treffen.</b> %s

Ich verstehe viele Befehle, welche du lernen kannst wenn du den "Commands" Knopf drückst in der angehängten Tastatur.

%s <b>Tip:</b> Benutze den "Settings" Knopf zum verändern wie ich arbeite%s!

%s <b>Wenn du mich für sinnvoll hälst, oder vielleicht nur helfen willst?</b> Spenden sind willkommen, benutze /donate für mehr Information!
        ]],
        ['24'] = 'in'
    },
    ['id'] = {
        ['1'] = 'Ich kann den Benutzer nicht erkennen. Wenn du mich lehren möchtest wer dieser Benutzer ist, dann leite einfach eine Nachricht von diesem Benutzer in eine Gruppe in der ich auch bin .',
        ['2'] = 'Abgefragte Unterhaltung:',
        ['3'] = 'Diese Unterhaltung:',
        ['4'] = 'Klick zum senden des Ergebnis!'
    },
    ['imdb'] = {
        ['1'] = 'Vorherige',
        ['2'] = 'Nächste',
        ['3'] = 'Du bist auf Seite %s von %s!'
    },
    ['import'] = {
        ['1'] = 'Ich kann die Unterhaltung nicht erkennen!',
        ['2'] = 'Dies ist keine Supergruppe, des wegen kann ich keine Einstellungen von da importieren!',
        ['3'] = 'Administrative Einstellungen erfolgreich importiert und ich habe die Plugins umgeschaltet von %s zu %s!'
    },
    ['info'] = {
        ['1'] = [[
```
Redis:
%s Konfigurationsdatei: %s
%s Modus: %s
%s TCP Port: %s
%s Version: %s
%s Betriebszeit: %s Tage
%s Verarbeitete Identifikationsnummern: %s
%s Abgelaufene Schlüssel: %s

%s Benutzeranzahl: %s
%s Gruppenanzahl: %s

System:
%s OS: %s
```
        ]]
    },
    ['instagram'] = {
        ['1'] = '@%s in Instagram'
    },
    ['ipsw'] = {
        ['1'] = '<b>%s</b> iOS %s\n\n<code>MD5 sum: %s\nSHA1 sum: %s\nFile size: %s GB</code>\n\n<i>%s %s</i>',
        ['2'] = 'Diese Firmware ist nicht mehr signiert!',
        ['3'] = 'Diese Firmware ist noch signiert!',
        ['4'] = 'Bitte wähle dein Model:',
        ['5'] = 'Bitte wähle deine Firmware Version:',
        ['6'] = 'Bitte wähle deinen Geräte Typ:',
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
        ['6'] = 'Die orginale Frage kann nicht gefunden werden. Du hast wahrscheinlich den orginalen Text gelöscht.',
        ['7'] = 'Das Kunstwerk kann weiter unten gefunden werden:',
        ['8'] = 'Bitte gebe einen Suchbegriff ein (das ist, was ich in iTunes für dich suchen soll, d.h. "Green Day American Idiot" gibt dir das erste Ergebnis von American Idiot von Green Day).',
        ['9'] = 'Bekomme Album Kunstwerke'
    },
    ['kick'] = {
        ['1'] = 'Welchen Benutzer soll ich raus werfen? Du kannst ihn/sie mit dem @Benutzernamen oder mit der Identifikationsnummer angeben.',
        ['2'] = 'Ich kann den Benutzer nicht raus werfen, weil er/sie Moderator oder Administrator in dieser Gruppe ist.',
        ['3'] = 'Ich kann den Benutzer nicht raus werfen, weil er/sie hat die Gruppe schon verlassen hat.',
        ['4'] = 'Ich kann den Benutzer nicht raus werfen, weil er/sie schon von der Gruppe entfernt wurde.',
        ['5'] = 'Ich brauche administrative Berechtigung zum raus werfen des Benutzers. Bitte behebe das Problem und versuche es noch einmal.'
    },
    ['lastfm'] = {
        ['1'] = '%s\'s last.fm Benutzername wurde zu "%s" gesendet.',
        ['2'] = 'Dein last.fm Benutzername wurde vergessen!',
        ['3'] = 'Im Moment hast du keinen last.fm Benutzernamen!',
        ['4'] = 'Bitte gebe deinen letzten last.fm Benutzernamen an oder richte ihn mit /fmset ein.',
        ['5'] = 'Keine Vergangenheit für diesen Benutzer gefunden.',
        ['6'] = '%s hört im Moment:\n',
        ['7'] = '%s hörte zuletzt:\n',
        ['8'] = 'Unbekannt',
        ['9'] = 'Klick zum senden des Ergebnis.'
    },
    ['location'] = {
        ['1'] = 'Du hast keinen Standort angegeben. Welchen Standort möchtest du haben?'
    },
    ['logchat'] = {
        ['1'] = 'Bitte gebe den Benutzernamen oder die Identifikationsnummer der Unterhaltung an, in welche du alle administrativen Handlungen senden möchtest.',
        ['2'] = 'Überprüfe ob die Unterhaltungen gültig ist...',
        ['3'] = 'Tut mir leid aber es sieht so aus, also ob du eine ungültige Unterhaltung, oder eine Unterhaltung in der ich nicht drin bin, angegeben hast. Bitte behebe das Problem und versuche es noch einmal.',
        ['4'] = 'Du kannst keinen Benutzer als logchat angeben!',
        ['5'] = 'Es sieht so aus, also ob du kein Administrator der Unterhaltung bistt!',
        ['6'] = 'Es sieht so aus, als ob ich schon administrative Handlungsrechte in dieser Gruppe besitze. Wenn du mir administrative Handlungsrechte in einer anderen Gruppe geben willst benutze /logchat.',
        ['7'] = 'Diese Unterhaltung ist gültig. Ich werde nun einen Testtext zu der Unterhaltung schicken, um zu sehen ob ich die Genehmigung zum schreiben habe!',
        ['8'] = 'Hallo, Welt - dies ist ein Testext zum herausfinden ob ich die Gehnemigung zum schreiben habe - wenn du das liest, dann ist alles OK!',
        ['9'] = 'Alles fertig! Von nun an alle administrativen Handlungen werden auch zu %s gesendet - zum ändern der Unterhaltung, in die du administrative Handlungen senden möchtest, sende /logchat.'
    },
    ['lua'] = {
        ['1'] = 'bitte gebe eine Reihe von Lua ein zum ausführen!'
    },
    ['minecraft'] = {
        ['1'] = '<b>%s hat den Benutzernamen %s mal gewechselt</b>',
        ['2'] = '<b>%s hat den Benutzernamen %s mal gewechselt</b>',
        ['3'] = 'Vorherige',
        ['4'] = 'Nächste',
        ['5'] = 'Zurück',
        ['6'] = 'UUID',
        ['7'] = 'BenutzerBild',
        ['8'] = 'Benutzername Vergangenheit',
        ['9'] = 'Bitte wähle eine Option:',
        ['10'] = 'Bitte gebe den Benutzernamen des Minecraft Spielers an, für welchen du Informationen sehen möchtest (d.h. wen du "Notch" sendest kannst du die Informationen von dem Spieler Notch einsehen).',
        ['11'] = 'Minecraft Benutzernamen sind zwischen 3 und 16 Zeichen lang.'
    },
    ['mute'] = {
        ['1'] = 'Welchen Benutzer soll ich stumm schalten? Du kannst den Benutzer mit dem @Benutzername oder mit der Indetifikationsnummer angeben.',
        ['2'] = 'Ich kann den Benutzer nich stumm schalten, weil der Benutzer in dieser Unterhaltung schon stumm geschaltet ist.',
        ['3'] = 'Ich kann den Benutzer nich stumm schalten, weil der Benutzer in dieser Unterhaltung Moderator oder Administrator ist.',
        ['4'] = 'Ich kann den Benutzer nich stumm schalten, weil der Benutzer diese Unterhaltung schon verlassen hat oder rausgeworfen wurde.',
        ['5'] = 'Zum stumm schalten des Benutzers muss ich Administrationsrechte haben. Bitte ändere meine Rechte und versuche es noch einmal.'
    },
    ['myspotify'] = {
        ['1'] = 'Profil',
        ['2'] = 'Folgende',
        ['3'] = 'Vor kurzem gespielt',
        ['4'] = 'Derzeit spielen',
        ['5'] = 'Top Lieder',
        ['6'] = 'Top Künstler',
        ['7'] = 'Es sieht nicht so aus, als würdest du einem Künstler folgen!',
        ['8'] = 'Dein Top Künstler',
        ['9'] = 'Es sieht so aus, als würdest du keine Lieder in deiner Sammlung haben!',
        ['10'] = 'Deine Top Lieder',
        ['11'] = 'Es sieht nicht so aus, als würdest du einem Künstler folgen!',
        ['12'] = 'Künstler denen du folgst',
        ['13'] = 'Es sieht nicht so aus als hättest du vor kurzem irgendwelche lieder gespielt!',
        ['14'] = '<b>Vor kurzem gespielt</b>\n%s %s\n%s %s\n%s Gehört um %s:%s am %s/%s/%s.',
        ['15'] = 'Deine Anfrage wurde akzeptiert aber die Bearbeitung wurde noch nicht beendet.',
        ['16'] = 'Es sieht nicht so aus als würdest du dir im moment etwas anhören!',
        ['17'] = 'Derzeit spielen',
        ['18'] = 'Beim erneuten Autorisieren deines Spotify Accounts ist ein Fehler aufgetreten!',
        ['19'] = 'Dein Spotify Account wurde erneut erfolgreich Autorisiert! Deine orginal Anfrage wird bearbeitet...',
        ['20'] = 'Erneutes Autorisieren deines Spotify Accounts, bitte warten...',
        ['21'] = 'Zum verbinden deines Spotify Accounts musst du mich autorisieren. Klick [hier](https://accounts.spotify.com/en/authorize?client_id=%s&response_type=code&redirect_uri=%s&scope=user-library-read,playlist-read-private,playlist-read-collaborative,user-read-private,user-read-email,user-follow-read,user-top-read,user-read-playback-state,user-read-recently-played,user-read-currently-playing,user-modify-playback-state) and press the green "OKAY" button to link mattata to your Spotify account. After you\'ve done that, send the link you were redirected to (it should begin with "%s", followed by a unique code) in reply to this message.',
        ['22'] = 'Wiedergabeliste',
        ['23'] = 'Benutze Inline Mode',
        ['25'] = 'Keine Geräte gefunden.',
        ['26'] = 'Es sieht so aus, als wenn du keine Wiedergabeliste hast.',
        ['27'] = 'Deine Wiedergabeliste',
        ['28'] = '%s %s [%s Lieder]',
        ['29'] = '%s %s [%s]\nSpotify %s Benutzer\n\n<b>Gerät:</b>\n%s',
        ['30'] = 'Spiele vorheriges Lied...',
        ['31'] = 'Du bist kein Premium Benutzer!',
        ['32'] = 'Ich kann keine Geräte finden.',
        ['33'] = 'Spiele nächstes Lied...',
        ['34'] = 'Lied wird fortgesetzt...',
        ['35'] = 'Dein Gerät ist im moment nicht erreichbar...',
        ['36'] = 'Keine Geräte gefunden!',
        ['37'] = 'Pause Lied...',
        ['38'] = 'Jetzt spielen',
        ['39'] = 'Mixe deine Musik...',
        ['40'] = 'Das ist keine gültig Lautstärke. Gebe bitte eine Nummer zwischen 0 und 100 an.',
        ['41'] = 'Die Lautstärke wurde auf %s%% eingestellt!',
        ['42'] = 'Dies Nachricht benutzt ein altes Plugin, zum anfragen eines neues bitte sende /myspotify!'
    },
    ['news'] = {
        ['1'] = '"<code>%s</code>" ist kein gültiges Lua Muster.',
        ['2'] = 'Ich konnte keine Quellenliste bekommen.',
        ['3'] = '<b>Nachrichtenquelle gefunden zu</b> "<code>%s</code>":\n\n%s',
        ['4'] = '<b>Hier sind die aktuellen verfügbaren Nachrichtenquellen, welche du mit</b> /news<b> benutzen kannst. Benutze</b> /nsources &lt;query&gt; <b>zum durchsuchen der Liste von Nachrichtenquellen für ein besseres Ergebnis. Die suche wird abgestimmt mit den Lua Mustern</b>\n\n%s',
        ['5'] = 'Du hast keine bevorzugte Nachrichtenquelle. Benutze /setnews <Quelle>. Zum ansehen einer Quellenliste benutze /nsources, oder beschränke das Ergebnis mit /nsources <Abfrage>.',
        ['6'] = 'Deine derzeit bevorzugte Nachrichtenquelle ist %s. Zum ändern benutze /setnews <Quelle>.Zum ansehen einer Quellenliste benutze /nsources, oder beschränke das Ergebnis mit /nsources <Abfrage>.',
        ['7'] = 'Deine derzeit bevorzugte Nachrichtenquelle ist %s! Zum ansehen der derzeiting Top Story benutze /news.',
        ['8'] = 'Dies ist keine gültige Nachrichtenquelle. Zum ansehen einer Quellenliste benutze /nsources, oder beschränke das Ergebnis mit /nsources <Abfrage>.',
        ['9'] = 'Deine bevorzugte Nachrichtenquelle wurde zu %s aktualisiert! Zum ansehen der derzeiting Top Story benutze /news.',
        ['10'] = 'Dies ist keine gültige Nachrichtenquelle. Zum ansehen einer Quellenliste benutze /nsources. Wenn du eine bevorzugte Nachrichtenquelle hast benutze /setnews <Quelle> und do bekommst automatisch von dieser Quelle Nachrichten geschickt wenn du /news sendest.',
        ['11'] = 'Mehr lesen.'
    },
    ['nick'] = {
        ['1'] = 'Dein Spitzname is vergessen!',
        ['2'] = 'Dein Spitzname wurde geändert zu "%s"!'
    },
    ['pin'] = {
        ['1'] = 'Du hast noch keinen pin gesetzt. Benutze /pin <dein Text> um deinen Text zu pinnen. Markdown formatierung ist verfügbar.',
        ['2'] = 'Hier ist die letzte nachricht die mit /pin generiert wurde',
        ['3'] = 'Ich habe einen bereits existierenden pin in meiner Datenbank gefunden, aber die nachricht, die ich bereits gesendet habe, aber sie wurde gelöscht, und ich finde sie nicht mehr. Benutze /pin <dein Text> um deinen Text zu pinnen. Markdown formatierung ist verfügbar.',
        ['4'] = 'Es ist ein fehler bei der aktualisierung deines pins aufgetreten. Vielleicht hat dein Text eine ungültige Markdown formatierung, oder sie wurde gelöscht. Ich versuche dir einen neuen pin zu senden, welchen du unten findest -  falls du es ändern möchtest, wenn die nachricht noch existiert, benutze /pin <dein text>.',
        ['5'] = 'Ich kann den text nicht senden weil er eine ungültige Markdown formatierung hat.',
        ['6'] = 'Klick hier um den pin zu sehen, aktualisiert mit dem Text den du mir gegeben hast.'
    },
    ['pokedex'] = {
        ['1'] = 'Name: %s\nID: %s\nArt: %s\nBeschreibung: %s'
    },
    ['promote'] = {
        ['1'] = 'Ich kann diesen Benutzer nicht beförderen, weil er/sie Moderator oder Administrator in dieser Gruppe ist.',
        ['2'] = 'Ich kann diesen Benutzer nicht beförderen, weil er/sie hat die Gruppe schon verlassen hat.',
        ['3'] = 'Ich kann diesen Benutzer nicht beförderen, weil er/sie schon von der Gruppe entfernt wurde.'
    },
    ['quote'] = {
        ['1'] = 'Dieser Benutzer ist opted out(ausgetreten) von der Datensammlung funktionalität.',
        ['2'] = 'Da sind keine Zitate von %s%s! Du kannst Zitate speichern wenn du /save als Antwort zu dem gesendeten text(welchen du als Zitat speichern willst).'
    },
    ['report'] = {
        ['1'] = 'Bitte Antworte zu der Nachricht die du einem GruppenAdminsitrator melden möchtest.',
        ['2'] = 'Du kannst deine eigenen Nachrichten nicht melden, machst du vielleicht Witze?',
        ['3'] = '<b>%s braucht Hilfe in %s!</b>',
        ['4'] = 'Klicke hier zum ansehen der gemeldeten Nachricht.',
        ['5'] = 'Ich habe die Nachricht erfolgreich gemeldet zu %s admin(s)!'
    },
    ['save'] = {
        ['1'] = 'Dieser Benutzer ist opted out(ausgetreten) von der Datensammlung funktionalität.',
        ['2'] = 'Dieser Text ist gespeichert in meiner Datei und wird zu der List möglicher Antworten hinzugefügt, wenn /quote benutzt wird als Antwort zu %s%s!'
    },
    ['sed'] = {
        ['1'] = '%s\n\n<i>%s wollte das nicht sagen!</i>',
        ['2'] = '%s\n\n<i>%s hat zugegeben verloren zu haben.</i>',
        ['3'] = '%s\n\n<i>%s ist sich nicht sicher obe er/sie missverstanden ist...</i>',
        ['4'] = 'Ach halt die Klappe, <i>wann habe ich jemals nicht recht?</i>',
        ['5'] = '"<code>%s</code>" ist kein gültiges Lua Muster.',
        ['6'] = 'Hey %s, %s seems to think you meant:\n<i>%s</i>',
        ['7'] = 'Ja',
        ['8'] = 'Nein',
        ['9'] = 'Bin nicht sicher',
        ['10'] = 'Just edit your message, idiot.'
    },
    ['setgrouplang'] = {
        ['1'] = 'Die Sprache in dieser Gruppe wurde eingstellet zu %s!',
        ['2'] = 'Die Sprache in dieser Gruppe ist im moment %s.\nBitte nehme zur Kenntnis, dass vielleicht noch nicht alles vollständig Übersetzt ist. Wenn du die Sprache ändern möchtest, wähle unten auf der Tastatur eine aus:',
        ['3'] = 'Die Möglichkeit, dass alle Benutzer in dieser Gruppe die selbe Sprache benutzent müssen, ist im moment ausgeschaltet. Diese Einstellung sollte von /administration eingestellet werden, damit es einfacher ist für dich, habe ich unten Knöpfe zum einstellen hinzugefügt.',
        ['4'] = 'Einschalten',
        ['5'] = 'Ausschalten'
    },
    ['setlang'] = {
        ['1'] = 'Deine Sprache wurde eingestellt zu %s!',
        ['2'] = 'Deine Sprache ist im Moment eingestellt zu %s.\nBitte beachte, dass manche Wörter oder Sätze noch nicht übersetzet sind. Wenn du deine Sprache ändern möchtest, suche dir eine aus in der Tastatur unten:'
    },
    ['setrules'] = {
        ['1'] = 'Ungültige Markdown-Formatierung.',
        ['2'] = 'Neue Regeln erfolgreich eingestellt!'
    },
    ['setwelcome'] = {
        ['1'] = 'Was möchtest als Willkommens Text haben? Den angegebenen Text wird formatiert und jedesmal gesendet, wenn ein Benutzer der Gruppe beitritt (Der Willkommens Text kann ausgeschaltet werden im Administrations Menue, erreichbar mit /administration).  Du kannst Platzhalter benutzen für einen individuellen Willkommens Text für jeden Benutzer. Benutze $user_id zum einfügen des Benutzers Identifikationsnummer, $chat_id zum einfügen der Gruppen Identifikationsnummer, $name zum einfügen des Benutzers name, $title zum einfügen des Gruppennamen und $username zum einfügen des Benutzers Benutzername (wenn der Benutzer keinen @Benutzernamen hat, wird deren Name benutzt, also ist es das beste, dieses zu vermeiden mit der Benutzung von $name).',
        ['2'] = 'Da ist ein Fehler mit dem Format deines Textes aufgetreten. Bitte Überprüfe die Syntax und versuche es noch einmal.',
        ['3'] = 'Der Willkommens Text für %s wurde erfolgreich aktualisiert!'
    },
    ['share'] = {
        ['1'] = 'Teilen'
    },
    ['statistics'] = {
        ['1'] = 'Es wurden keine Nachrichten in dieser Unterhaltung gesendet!',
        ['2'] = '<b>Statistiken für:</b> %s\n\n%s\n<b>Summe der gesendeten Nachrichten:</b> %s',
        ['3'] = 'Die Statistiken für diese Unterhaltung wurde gelöscht!',
        ['4'] = 'Ich konnte die Statistiken für dies Unterhaltung nicht löschen. Vielleicht wurde sie schon gelöscht?'
    },
    ['steam'] = {
        ['1'] = 'Dein Steam Benutzername wurde gespeichert mit "%s".',
        ['2'] = '"%s" ist kein gültiger Steam Benutzername.',
        ['3'] = '%s ist ein Steam Benutzer seit %s, in %s. Er/Sie hat sich das letzte mal ausgelogt am %s, in %s. Klick <a href="%s">here</a> zum ansehen von deren Steam Profil.',
        ['4'] = '%s, alias "%s",'
    },
    ['trust'] = {
        ['1'] = 'Ich kann den Benutzer nicht zu trust(vertrauen) einstellen, weil er Moderator oder Administrator in dieser Gruppe ist.',
        ['2'] = 'Ich kann den Benutzer nicht zu trust(vertrauen) einstellen, weil er die Gruppe schon verlassen hat.',
        ['3'] = 'Ich kann den Benutzer nicht zu trust(vertrauen) einstellen, weil er von dieser Gruppe entfernt wurde.'
    },
    ['unmute'] = {
        ['1'] = 'Welchen Benutzer soll ich zu Stören einstellen? Gebe den Benutzer mit dem @Benutzername oder der Identifikationsnummer an.',
        ['2'] = 'Ich kann den Benutzer nicht zu Stören einstellen, weil er im moment nicht stumm geschalted ist..',
        ['3'] = 'Ich kann den Benutzer nicht zu Stören einstellen, weil er Moderator oder Administrator dieser Gruppe ist.',
        ['4'] = 'Ich kann den Benutzer nicht zu Stören einstellen, weil er die Gruppe schon verlassen hat oder von der Gruppe entfernt wurde.'
    },
    ['untrust'] = {
        ['1'] = 'Welchen Benutzer soll ich zu untrust(nicht vertrauen) einstellen? Gebe den Benutzer mit dem @Benutzername oder der Identifikationsnummer an.',
        ['2'] = 'Ich kann den Benutzer nicht zu untrust(nicht vertrauen) einstellen, weil er Moderator oder Administrator in dieser Gruppe ist.',
        ['3'] = 'Ich kann den Benutzer nicht zu untrust(nicht vertrauen) einstellen, weil er die Gruppe schon verlassen hat.',
        ['4'] = 'Ich kann den Benutzer nicht zu untrust(nicht vertrauen) einstellen, weil er von dieser Gruppe entfernt wurde.'
    },
    ['version'] = {
        ['1'] = '%s alias @%s läuft mit `mafflebot (mattata) v%s`. Der Quellcode ist auf [GitHub](https://github.com/flauntbot/mattata) zu bekommen.'
    },
    ['weather'] = {
        ['1'] = 'Du hast keinen Standort ausgewählt. Zum auswählen benutze /setloc <Standort>.',
        ['2'] = 'Im Moment ist es %s (fühlt sich an wie %s) in %s. %s'
    },
    ['welcome'] = {
        ['1'] = 'Group Rules'
    },
    ['allowlist'] = {
        ['1'] = 'Welchen Benutzer soll ich auf die Weiße Liste setzen? Gebe den Benutzer mit dem @Benutzername oder der Identifikationsnummer an.',
        ['2'] = 'Ich kann den Benutzer nicht auf die Weiße Liste setzen, weil er Moderator oder Administrator in dieser Gruppe ist.',
        ['3'] = 'Ich kann den Benutzer nicht auf die Weiße Liste setzen, weil er die Gruppe schon verlassen hat.',
        ['4'] = 'Ich kann den Benutzer nicht auf die Weiße Liste setzen, weil er von der Gruppe entfernt wurde.'
    },
    ['wikipedia'] = {
        ['1'] = 'Mehr lesen.'
    },
    ['youtube'] = {
        ['1'] = 'Vorherige',
        ['2'] = 'Nächste',
        ['3'] = 'Du bist auf Seite %s von %s!'
    }
}
