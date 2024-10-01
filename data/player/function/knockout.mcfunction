tag @a[tag=!Knockout,scores={playerHP=..0}] add Knockout
tag @a[tag=Knockout,scores={playerHP=1..}] remove Knockout
item replace entity @a[tag=!Knockout,scores={knocktime=1..}] armor.head with air
scoreboard players reset @a[tag=!Knockout,scores={knocktime=1..}] knocktime

scoreboard players add @a[tag=Knockout] knocktime 1

effect give @a[tag=Knockout,scores={knocktime=1}] slowness 1 100 true
effect give @a[tag=Knockout,scores={knocktime=1}] darkness 1 100 true
effect give @a[tag=Knockout,scores={knocktime=1}] blindness 1 100 true

effect clear @a[tag=Knockout,scores={knocktime=10}] slowness

execute as @a[tag=Knockout,scores={knocktime=1}] at @s run playsound snowballhit master @a ~ ~ ~ 1.1 0
execute as @a[tag=Knockout,scores={knocktime=1}] at @s run particle block{block_state:"minecraft:snow"} ~ ~1.5 ~ 0.15 0.15 0.15 0.15 30
execute as @a[tag=Knockout,scores={knocktime=1}] at @s run particle minecraft:snowflake ~ ~1.5 ~ 0.1 0.1 0.1 0.1 7
execute as @a[tag=Knockout,scores={knocktime=1}] at @s run item replace entity @s armor.head with snow_block[enchantment_glint_override=false,enchantments={levels:{binding_curse:1}}]

execute as @a[tag=Knockout,scores={knocktime=40}] run damage @s 1 starve
execute as @a[tag=Knockout,scores={knocktime=40}] at @s run playsound entity.player.hurt_freeze master @a ~ ~ ~ 0.6 1
execute as @a[tag=Knockout,scores={knocktime=40}] at @s run scoreboard players remove @s playerHP 1
execute as @a[tag=Knockout,scores={knocktime=42}] at @s run scoreboard players remove @s playerHP 1
execute as @a[tag=Knockout,scores={knocktime=44}] at @s run scoreboard players remove @s playerHP 1
execute as @a[tag=Knockout,scores={knocktime=55}] at @s run scoreboard players set @s knocktime 39

execute as @a[tag=Knockout,scores={playerHP=..-20}] run function player:respawn