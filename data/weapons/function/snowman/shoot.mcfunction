#Red
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s if entity @a[team=Green,tag=!Knockout,distance=..11] run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s if entity @a[team=Green,tag=!Knockout,distance=..11] run tag @s add Shooting

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s unless score @s CmdData matches 70.. unless entity @a[team=Green,tag=!Knockout,distance=..11] run tag @s remove Shooting


execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run function weapons:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run function animated_java:snowman/animations/prepare_shot/play

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70..72 run particle snowflake ^-1 ^1.2 ^ 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70..72 run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 1.7

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 80..82 run particle snowflake ^1 ^1.2 ^ 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 80..82 run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 2

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run function weapons:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run function animated_java:snowman/animations/shoot/play
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 91 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 93 run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 93 summon arrow run function weapons:snowman/projectile

execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 100 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 103 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 106 run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 106 summon arrow run function weapons:snowman/projectile
execute as @e[type=item_display,tag=Snowman,tag=Red,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 115.. run scoreboard players set @s CmdData 68



#Green
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s if entity @a[team=Red,tag=!Knockout,distance=..11] run scoreboard players set @s CmdData 50
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=!Shooting,tag=!Dying] at @s if entity @a[team=Red,tag=!Knockout,distance=..11] run tag @s add Shooting

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s unless score @s CmdData matches 70.. unless entity @a[team=Red,tag=!Knockout,distance=..11] run tag @s remove Shooting


execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run function weapons:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70 run function animated_java:snowman/animations/prepare_shot/play

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70..72 run particle snowflake ^-1 ^1.2 ^ 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 70..72 run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 1.7

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 80..82 run particle snowflake ^1 ^1.2 ^ 0 0 0 0.02 2 force
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 80..82 run playsound block.powder_snow.place master @a ~ ~ ~ 0.3 2

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run function weapons:snowman/stop_all_anims
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run function animated_java:snowman/animations/shoot/play
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 85 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 91 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 93 run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 93 summon arrow run function weapons:snowman/projectile

execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 100 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.7
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 103 run playsound block.powder_snow.place master @a ~ ~ ~ 0.6 0.6
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 106 run playsound entity.snow_golem.shoot master @a ~ ~ ~ 0.4 1.2
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 106 summon arrow run function weapons:snowman/projectile
execute as @e[type=item_display,tag=Snowman,tag=Green,tag=Spawned,tag=Targeting,tag=Shooting,tag=!Dying] at @s if score @s CmdData matches 115.. run scoreboard players set @s CmdData 68