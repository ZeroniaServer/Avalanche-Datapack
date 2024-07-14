#> Show red bars for Red team
bossbar set bar_r_main players @a[team=Red]
bossbar set bar_r_red players @a[team=Red]
bossbar set bar_r_green players @a[team=Red]

#> Show green bars for Green and Spectator teams
bossbar set bar_g_main players @a[team=!Red,team=!Lobby]
bossbar set bar_g_green players @a[team=!Red,team=!Lobby]
bossbar set bar_g_red players @a[team=!Red,team=!Lobby]


#> Calculate bossbar progress
execute store result score $bar_g_green CmdData run scoreboard players get $green_progress CmdData
scoreboard players operation $bar_g_red CmdData = $200 CmdData
scoreboard players operation $bar_g_red CmdData -= $red_progress CmdData

execute store result score $bar_r_red CmdData run scoreboard players get $red_progress CmdData
scoreboard players operation $bar_r_green CmdData = $200 CmdData
scoreboard players operation $bar_r_green CmdData -= $green_progress CmdData


#> Modify bossbar values
execute store result bossbar bar_g_green value run scoreboard players get $bar_g_green CmdData
execute store result bossbar bar_g_red value run scoreboard players get $bar_g_red CmdData

execute store result bossbar bar_r_green value run scoreboard players get $bar_r_green CmdData
execute store result bossbar bar_r_red value run scoreboard players get $bar_r_red CmdData