#> If sleigh is not occupied, exit early
execute on vehicle at @s[tag=!Occupied] run return run function powerups:sleigh/weaken

#> If green punches sleigh while red is in it
execute on attacker if entity @s[team=Green] run scoreboard players set $greenpunchsleigh CmdData 1
execute if score $greenpunchsleigh CmdData matches 1 on vehicle on passengers on passengers if entity @s[type=player,team=Red] on vehicle on vehicle at @s run function powerups:sleigh/weaken
execute if score $greenpunchsleigh CmdData matches 1 run return run scoreboard players reset $greenpunchsleigh CmdData

#> If red punches sleigh while green is in it
execute on attacker if entity @s[team=Red] run scoreboard players set $redpunchsleigh CmdData 1
execute if score $redpunchsleigh CmdData matches 1 on vehicle on passengers on passengers if entity @s[type=player,team=Green] on vehicle on vehicle at @s run function powerups:sleigh/weaken
scoreboard players reset $greenpunchsleigh CmdData