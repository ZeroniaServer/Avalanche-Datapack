execute as @a[tag=!Knockout,scores={playerHP=..0}] run ride @s dismount
scoreboard players set @a[tag=!Knockout,scores={playerHP=..-1}] playerHP 0

execute as @a[tag=!Knockout,scores={playerHP=..0}] run scoreboard players add @s MVPdeath 1
execute if score $gamestate CmdData matches 3.. as @a[tag=!Knockout,scores={playerHP=..0}] at @s run function powerups:rocket/drop
execute as @a[tag=!Knockout,scores={playerHP=..0}] run function inventory:save
clear @a[tag=!Knockout,scores={playerHP=..0}] snowball
clear @a[tag=!Knockout,scores={playerHP=..0}] diamond_hoe[!custom_data~{HotChoco:1b}]
execute if score $gamestate CmdData matches 3.. run clear @a[tag=!Knockout,scores={playerHP=..0}] clay
execute as @a[tag=!Knockout,scores={playerHP=..0}] run attribute @s minecraft:block_interaction_range base set 0 
clear @a[tag=!Knockout,scores={playerHP=..0}] ghast_spawn_egg
clear @a[tag=!Knockout,scores={playerHP=..0}] elytra

tag @a[tag=!Knockout,scores={playerHP=..0}] remove KOmessaged
execute as @a[tag=!Knockout,scores={playerHP=..0}] run function player:findrocket
tag @a[tag=!Knockout,scores={playerHP=..0}] add Knockout
execute as @a[tag=Knockout,scores={playerHP=1..}] run function inventory:load
execute as @a[tag=Knockout,scores={playerHP=1..}] run attribute @s minecraft:block_interaction_range base set 4.5
tag @a[tag=Knockout,scores={playerHP=1..}] remove Knockout
item replace entity @a[tag=!Knockout,scores={knocktime=1..}] armor.head with air

scoreboard players reset @a[tag=!Knockout,scores={knocktime=1..}] knocktime

scoreboard players add @a[tag=Knockout] knocktime 1

execute unless score $gamestate CmdData matches 4 run effect give @a[tag=Knockout,scores={knocktime=1}] slowness 1 100 true
execute unless score $gamestate CmdData matches 4 run effect give @a[tag=Knockout,scores={knocktime=1}] darkness 1 100 true
execute unless score $gamestate CmdData matches 4 run effect give @a[tag=Knockout,scores={knocktime=1}] blindness 1 100 true

effect clear @a[tag=Knockout,scores={knocktime=10}] slowness

#TODO: sound event for knockout with custom subtitle
execute as @a[tag=Knockout,scores={knocktime=1}] at @s run playsound knockout master @a ~ ~ ~ 1.1 0
execute as @a[tag=Knockout,scores={knocktime=1}] at @s run attribute @s minecraft:knockback_resistance base set 1.0
execute as @a[tag=Knockout,scores={knocktime=1}] at @s unless blocks ~ -64 ~ ~ ~-1 ~ ~ -63 ~ masked run tp @s @s
execute as @a[tag=Knockout,scores={knocktime=1}] at @s if predicate game:5050 run function powerups:giftbox/spawn
execute as @a[tag=Knockout,scores={knocktime=1}] at @s run particle block{block_state:"minecraft:snow"} ~ ~1.5 ~ 0.15 0.15 0.15 0.15 30
execute as @a[tag=Knockout,scores={knocktime=1}] at @s run particle minecraft:snowflake ~ ~1.5 ~ 0.1 0.1 0.1 0.1 7
execute as @a[tag=Knockout,scores={knocktime=1}] at @s run item replace entity @s armor.head with snow_block[minecraft:equippable={slot:head,camera_overlay:"misc/powder_snow_outline"},enchantment_glint_override=false,enchantments={binding_curse:1},tooltip_display={hidden_components:[enchantments]}]

execute as @a[tag=Knockout,scores={knocktime=40}] run damage @s 1 freeze
execute as @a[tag=Knockout,scores={knocktime=40}] at @s run scoreboard players remove @s playerHP 1
execute as @a[tag=Knockout,scores={knocktime=42}] at @s run scoreboard players remove @s playerHP 1
execute as @a[tag=Knockout,scores={knocktime=44}] at @s run scoreboard players remove @s playerHP 1
execute as @a[tag=Knockout,scores={knocktime=47,playerHP=-9}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 2
execute as @a[tag=Knockout,scores={knocktime=50,playerHP=-12}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 2
execute as @a[tag=Knockout,scores={knocktime=53,playerHP=-15}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
execute as @a[tag=Knockout,scores={knocktime=55..}] at @s run scoreboard players set @s knocktime 39

execute as @a[tag=Knockout,scores={playerHP=..-20,knocktime=45}] run function player:respawn
execute as @a[tag=Knockout,scores={playerHP=..-20},tag=!Knockout] run function player:respawn