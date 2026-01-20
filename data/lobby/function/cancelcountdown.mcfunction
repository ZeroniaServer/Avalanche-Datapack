execute if score $RedReady CmdData matches 0 unless entity @a[team=Red] run tellraw @a {translate:"lobby.countdown.canceled_empty",color:"red"}
execute if score $RedReady CmdData matches 0 unless entity @a[team=Red] run scoreboard players set $canceledmessage CmdData 1
execute if score $RedReady CmdData matches 0 if entity @a[team=Red] unless score $canceledmessage CmdData matches 1 run tellraw @a {translate:"lobby.countdown.canceled",color:"red"}
execute if score $RedReady CmdData matches 0 if entity @a[team=Red] unless score $canceledmessage CmdData matches 1 run scoreboard players set $canceledmessage CmdData 1
execute if score $GreenReady CmdData matches 0 unless entity @a[team=Green] unless score $canceledmessage CmdData matches 1 run tellraw @a {translate:"lobby.countdown.canceled_empty",color:"red"}
execute if score $GreenReady CmdData matches 0 unless entity @a[team=Green] unless score $canceledmessage CmdData matches 1 run scoreboard players set $canceledmessage CmdData 1
execute if score $GreenReady CmdData matches 0 if entity @a[team=Green] unless score $canceledmessage CmdData matches 1 run tellraw @a {translate:"lobby.countdown.canceled",color:"red"}
scoreboard players reset $Countdown CmdData
scoreboard players reset $CountSec CmdData
scoreboard players reset $precountdown CmdData
scoreboard players set $forcecountdown CmdData 0
scoreboard players set $gamestate CmdData 0
scoreboard players reset $canceledemptymessage CmdData
scoreboard players reset $canceledmessage CmdData
bossbar set bar_lobby style progress
bossbar set bar_lobby_hearts players
bossbar set bar_ready_r players @a
bossbar set bar_ready_g players @a
bossbar set bar_lobby_hearts players @a[team=!Spectator,gamemode=!spectator,gamemode=!creative]
execute if score $gamestate CmdData matches 0 run bossbar set bar_lobby_hearts name [{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]},{text:"\uE019\uDAFF\uDFFE",color:"#a8a020",shadow_color:[0,0,0,0]}]
function lobby:readyteams/refreshsigns