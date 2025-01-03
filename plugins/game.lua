--[[
    Copyright 2020 Matthew Hesketh <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local game = {}
local mattata = require('mattata')
local socket = require('socket')
local json = require('dkjson')
local redis = require('libs.redis')
local utf8 = utf8 or require('lua-utf8') -- Lua 5.2 compatibility.

function game:init()
    game.commands = mattata.commands(self.info.username):command('game'):command('tictactoe').table
    game.help = '/game - View your current game statistics. Alias: /tictactoe.'
end

function game.get_stats(user_id, language)
    local user_won = redis:get('games_won:' .. user_id)
    if not user_won then
        user_won = 0
    end
    local user_lost = redis:get('games_lost:' .. user_id)
    if not user_lost then
        user_lost = 0
    end
    local balance = redis:get('balance:' .. user_id)
    if not balance then
        balance = 0
    end
    return string.format(language['game']['1'], user_won, user_lost, balance)
end

function game.set_stats(user_id, set_type)
    local user_won = redis:get('games_won:' .. user_id)
    if not user_won then
        user_won = 0
    end
    local user_lost = redis:get('games_lost:' .. user_id)
    if not user_lost then
        user_lost = 0
    end
    local balance = redis:get('balance:' .. user_id)
    if not balance then
        balance = 0
    end
    if set_type == 'won' then
        user_won = tonumber(user_won) + 1
        redis:set('games_won:' .. user_id, user_won)
        balance = tonumber(balance) + 100
        redis:set('balance:' .. user_id, balance)
    elseif set_type == 'lost' then
        user_lost = tonumber(user_lost) + 1
        redis:set('games_lost:' .. user_id, user_lost)
        balance = tonumber(balance) - 50
        redis:set('balance:' .. user_id, balance)
    end
end

function game.get_keyboard(session_id, join_game, language)
    join_game = join_game or false
    local g = redis:get('games:noughts_and_crosses:' .. session_id)
    if not g then
        return false
    end
    g = json.decode(g)
    local keyboard = {
        ['inline_keyboard'] = {{{
            ['text'] = g.moves.a1,
            ['callback_data'] = 'game:' .. session_id .. ':a1'
        }, {
            ['text'] = g.moves.a2,
            ['callback_data'] = 'game:' .. session_id .. ':a2'
        }, {
            ['text'] = g.moves.a3,
            ['callback_data'] = 'game:' .. session_id .. ':a3'
        }}, {{
            ['text'] = g.moves.b1,
            ['callback_data'] = 'game:' .. session_id .. ':b1'
        }, {
            ['text'] = g.moves.b2,
            ['callback_data'] = 'game:' .. session_id .. ':b2'
        }, {
            ['text'] = g.moves.b3,
            ['callback_data'] = 'game:' .. session_id .. ':b3'
        }}, {{
            ['text'] = g.moves.c1,
            ['callback_data'] = 'game:' .. session_id .. ':c1'
        }, {
            ['text'] = g.moves.c2,
            ['callback_data'] = 'game:' .. session_id .. ':c2'
        }, {
            ['text'] = g.moves.c3,
            ['callback_data'] = 'game:' .. session_id .. ':c3'
        }}}}
    if join_game then
        table.insert(keyboard.inline_keyboard, {{
            ['text'] = language['game']['2'],
            ['callback_data'] = 'game:' .. session_id .. ':join_game'
        }})
    end
    return keyboard
end


function game.on_callback_query(_, callback_query, _, _, language)
    local session_id = callback_query.data:match('^(%d+)%:')
    local g = redis:get('games:noughts_and_crosses:' .. session_id)
    if not g or not callback_query.inline_message_id then
        return
    end
    g = json.decode(g)
    if g.is_over == true then
        return mattata.answer_callback_query(callback_query.id, language['game']['3'])
    elseif g.has_opponent == true and g.is_over == false then
        if callback_query.from.id == g.opponent.id then
            if g.opponent.is_go == false then
                return mattata.answer_callback_query(callback_query.id, language['game']['4'])
            end
        elseif callback_query.from.id == g.player.id then
            if g.player.is_go == false then
                return mattata.answer_callback_query(callback_query.id, language['game']['4'])
            end
        end
        if not callback_query.data:match('^%d+%:%a%d$') then
            return
        end
        local pos = callback_query.data:match('^%d+%:(%a%d)$')
        local move = false
        if callback_query.from.id ~= g.opponent.id and callback_query.from.id ~= g.player.id then
            return mattata.answer_callback_query(callback_query.id, language['game']['5'])
        elseif callback_query.from.id == g.player.id then
            g.player.is_go = false
            g.opponent.is_go = true
            move = g.player.move
        elseif callback_query.from.id == g.opponent.id then
            g.player.is_go = true
            g.opponent.is_go = false
            move = g.opponent.move
        end
        if not move then
            return
        elseif g.moves[pos] ~= utf8.char(65039) then
            return mattata.answer_callback_query(callback_query.id, language['game']['6'])
        end
        g.moves[pos] = move
        if g.moves.a1 == g.moves.a2 and g.moves.a2 == g.moves.a3 and g.moves.a2 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.a1 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.b1 == g.moves.b2 and g.moves.b2 == g.moves.b3 and g.moves.b2 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.b1 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.c1 == g.moves.c2 and g.moves.c2 == g.moves.c3 and g.moves.c2 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.c1 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.a1 == g.moves.b2 and g.moves.b2 == g.moves.c3 and g.moves.b2 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.a1 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.a3 == g.moves.b2 and g.moves.b2 == g.moves.c1 and g.moves.b2 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.a3 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.a2 == g.moves.b2 and g.moves.b2 == g.moves.c2 and g.moves.b2 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.a2 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.b1 == g.moves.b2 and g.moves.b2 == g.moves.b3 and g.moves.b2 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.b1 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.a1 == g.moves.b1 and g.moves.b1 == g.moves.c1 and g.moves.b1 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.a1
            then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.a2 == g.moves.b2 and g.moves.b2 == g.moves.c2 and g.moves.b2 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.a2 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.a3 == g.moves.b3 and g.moves.b3 == g.moves.c3 and g.moves.b3 ~= utf8.char(65039) then
            g.winner = g.opponent.id
            g.loser = g.player.id
            if g.player.move == g.moves.a3 then
                g.winner = g.player.id
                g.loser = g.opponent.id
            end
            g.is_over = true
            g.was_won = true
        elseif g.moves.a1 ~= utf8.char(65039) and g.moves.a2 ~= utf8.char(65039) and g.moves.a3 ~= utf8.char(65039) and g.moves.b1 ~= utf8.char(65039) and g.moves.b2 ~= utf8.char(65039) and g.moves.b3 ~= utf8.char(65039) and g.moves.c1 ~= utf8.char(65039) and g.moves.c2 ~= utf8.char(65039) and g.moves.c3 ~= utf8.char(65039) then
            g.is_over = true
        end
        redis:set('games:noughts_and_crosses:' .. session_id, json.encode(g))
    elseif callback_query.data:match('^%d+%:join%_game$') then
        if callback_query.from.id == g.player.id then
            return mattata.answer_callback_query(callback_query.id, language['game']['7'])
        end
        g.has_opponent = true
        g.opponent.id = callback_query.from.id
        redis:set('games:noughts_and_crosses:' .. session_id, json.encode(g))
    else
        return mattata.answer_callback_query(callback_query.id, language['game']['8'])
    end
    local keyboard = game.get_keyboard(session_id)
    if not keyboard then
        return
    end
    local currently = g.player.id
    if g.player.is_go == false then
        currently = g.opponent.id
    end
    local output = string.format(
        language['game']['9'], mattata.get_linked_name(g.player.id),
        g.player.move, mattata.get_linked_name(g.opponent.id),
        g.opponent.move, mattata.get_linked_name(currently)
    )
    if g.is_over == true then
        if g.was_won == true then
            game.set_stats(g.winner, 'won')
            game.set_stats(g.loser, 'lost')
            output = string.format(
                language['game']['10'],
                mattata.get_linked_name(g.winner),
                mattata.get_linked_name(g.loser)
            )
        else
            output = string.format(
                language['game']['11'],
                mattata.get_linked_name(g.player.id),
                mattata.get_linked_name(g.opponent.id)
            )
        end
    end
    return mattata.edit_message_text(nil, nil, output, 'html', true, keyboard, callback_query.inline_message_id)
end

function game.on_inline_query(_, inline_query, _, language)
    local session_id = tostring(socket.gettime()):gsub('%D', '')
    local rnd = math.random(10)
    local g = {
        ['is_over'] = false,
        ['was_won'] = false,
        ['has_opponent'] = false,
        ['player'] = {
            ['id'] = inline_query.from.id,
            ['move'] = utf8.char(10060),
            ['is_go'] = true
        },
        ['opponent'] = {
            ['id'] = utf8.char(65039),
            ['move'] = utf8.char(11093),
            ['is_go'] = false
        },
        ['moves'] = {
            ['a1'] = utf8.char(65039),
            ['a2'] = utf8.char(65039),
            ['a3'] = utf8.char(65039),
            ['b1'] = utf8.char(65039),
            ['b2'] = utf8.char(65039),
            ['b3'] = utf8.char(65039),
            ['c1'] = utf8.char(65039),
            ['c2'] = utf8.char(65039),
            ['c3'] = utf8.char(65039)
        }
    }
    if math.random(2) == 1 then
        g.player.is_go = false
        g.opponent.is_go = true
    end
    if rnd == 2 then
        g.player.move = utf8.char(128514)
        g.opponent.move = utf8.char(128561)
    elseif rnd == 3 then
        g.player.move = utf8.char(127814)
        g.opponent.move = utf8.char(127825)
    elseif rnd == 4 then
        g.player.move = utf8.char(10084)
        g.opponent.move = utf8.char(128420)
    elseif rnd == 5 then
        g.player.move = utf8.char(128584)
        g.opponent.move = utf8.char(128585)
    elseif rnd == 6 then
        g.player.move = utf8.char(127770)
        g.opponent.move = utf8.char(127773)
    elseif rnd == 7 then
        g.player.move = utf8.char(128293)
        g.opponent.move = utf8.char(10052)
    elseif rnd == 8 then
        g.player.move = utf8.char(127823)
        g.opponent.move = utf8.char(127821)
    elseif rnd == 9 then
        g.player.move = 'Ayy'
        g.opponent.move = 'Lmao'
    elseif rnd == 10 then
        g.player.move = utf8.char(128166)
        g.opponent.move = utf8.char(128520)
    end
    redis:set('games:noughts_and_crosses:' .. session_id, json.encode(g))
    local status = language['game']['12']
    local keyboard = game.get_keyboard(session_id, true, language)
    return mattata.send_inline_article(
        inline_query.id,
        language['game']['13'],
        language['game']['14'],
        status, nil, keyboard
    )
end

function game.on_message(_, message, _, language)
    local keyboard = mattata.inline_keyboard():row(mattata.row():switch_inline_query_current_chat_button(
        language['game']['16'], '/game'
    ))
    local stats = game.get_stats(message.from.id, language)
    local output = string.format(language['game']['15'], message.from.name) .. stats
    return mattata.send_message(message.chat.id, output, nil, true, false, nil, keyboard)
end

return game