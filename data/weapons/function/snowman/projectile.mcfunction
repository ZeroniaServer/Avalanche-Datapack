data merge entity @s {PierceLevel:10,Silent:1b,damage:0.0001d,NoGravity:1b}
tag @s add AirToggle
tag @s add Snowball
function entityid:assign_tag
execute at @s if entity @e[type=item_display,tag=Snowman,tag=Red,limit=1,sort=nearest,distance=..2] run tp @s ~ ~ ~ facing entity @p[team=Green,tag=!Knockout] eyes
execute at @s if entity @e[type=item_display,tag=Snowman,tag=Green,limit=1,sort=nearest,distance=..2] run tp @s ~ ~ ~ facing entity @p[team=Red,tag=!Knockout] eyes
execute at @s run tp @s ^ ^0.6 ^1

data modify storage snowman:projectile Pos set from entity @s Pos
execute store result score @s x run data get storage snowman:projectile Pos[0] 1000000
execute store result score @s y run data get storage snowman:projectile Pos[1] 1000000
execute store result score @s z run data get storage snowman:projectile Pos[2] 1000000

execute at @s run tp @s ^ ^ ^0.001

data modify storage snowman:projectile Pos set from entity @s Pos
execute store result score @s dx run data get storage snowman:projectile Pos[0] 1000000
execute store result score @s dy run data get storage snowman:projectile Pos[1] 1000000
execute store result score @s dz run data get storage snowman:projectile Pos[2] 1000000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

data modify storage snowman:projectile Motion set value [0d, 0d, 0d]
execute store result storage snowman:projectile Motion[0] double 0.0019 run scoreboard players get @s dx
execute store result storage snowman:projectile Motion[1] double 0.001 run scoreboard players get @s dy
execute store result storage snowman:projectile Motion[2] double 0.0019 run scoreboard players get @s dz
data modify entity @s Motion set from storage snowman:projectile Motion

summon snowball ~ ~1 ~ {Tags:["SnowmanSnowball"],Item:{id:"minecraft:snowball",components:{custom_model_data:1}},Motion:[0.0d,-2.0d,0.0d]}
data modify entity @e[type=snowball,tag=SnowmanSnowball,limit=1,sort=nearest,nbt=!{Passengers:[]}] Motion set from entity @s Motion
ride @e[type=snowball,tag=SnowmanSnowball,limit=1,sort=nearest,nbt=!{Passengers:[]}] mount @s