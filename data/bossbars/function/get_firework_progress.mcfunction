#> Get progress and add some offset to it
#green
scoreboard players set $firework CmdData 170
scoreboard players operation $firework CmdData -= $green_progress CmdData
execute store result storage bossbars:firework green int 1 run scoreboard players get $firework CmdData
#red
scoreboard players set $firework CmdData 170
scoreboard players operation $firework CmdData -= $red_progress CmdData
execute store result storage bossbars:firework red int 1 run scoreboard players get $firework CmdData

#modify bossbar name
function bossbars:set_firework_progress with storage bossbars:firework