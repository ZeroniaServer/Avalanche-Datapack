function weapons:snowman/spawn
function weapons:snowman/targeting
function weapons:snowman/death
function weapons:snowman/shoot

scoreboard players add @e[type=item_display,tag=aj.snowman.root] CmdData 1
execute as @e[type=item_display,tag=aj.snowman.root,tag=Spawned,tag=!Targeting,tag=!Dying,scores={CmdData=225..}] at @s run function weapons:snowman/play_random_idle
execute as @e[type=item_display,tag=aj.snowman.root,tag=Spawned,tag=!Targeting,tag=!Dying,tag=!Shooting,scores={CmdData=225..}] at @s run scoreboard players set @s CmdData 50

execute as @e[type=snowball,tag=SnowmanSnowball] on vehicle on passengers run tag @s add HasVehicle
execute as @e[type=snowball,tag=SnowmanSnowball,tag=!HasVehicle] run function weapons:snowball/impact
execute as @e[type=snowball,tag=SnowmanSnowball,tag=HasVehicle] run tag @s remove HasVehicle