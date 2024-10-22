function weapons:snowman/spawn
function weapons:snowman/targeting
function weapons:snowman/death
function weapons:snowman/shoot

scoreboard players add @e[type=item_display,tag=aj.snowman.root] CmdData 1
execute as @e[type=item_display,tag=aj.snowman.root,tag=Spawned,tag=!Targeting,tag=!Dying,scores={CmdData=225..}] at @s run function weapons:snowman/play_random_idle
execute as @e[type=item_display,tag=aj.snowman.root,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!Shooting,scores={CmdData=225..}] at @s run scoreboard players set @s CmdData 50