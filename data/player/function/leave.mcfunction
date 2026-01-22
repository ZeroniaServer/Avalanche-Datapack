# player will already leave from forcestop
execute if entity @s[tag=LeaveTeam] unless entity @a[team=Red] unless entity @a[team=Green] if score $gamestate CmdData matches 2.. run return fail

ride @s dismount
scoreboard players reset @s gameID
function player:reset
tag @s[team=Red] add WasRed
tag @s[team=!Red] remove WasRed
tag @s[team=Green] add WasGreen
tag @s[team=!Green] remove WasGreen
tag @s[team=Spectator] add WasSpectator
tag @s[team=!Spectator] remove WasSpectator
team leave @s
clear @s
function lobby:items
scoreboard players reset @s leftgame
title @s actionbar ""