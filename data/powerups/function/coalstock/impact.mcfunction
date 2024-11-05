execute at @s run particle block{block_state:"minecraft:coal_block"} ~ ~ ~ 0 0 0 0.1 10 force
execute at @s run particle block{block_state:"minecraft:red_wool"} ~ ~ ~ 0 0 0 0.1 5 force
execute at @s run particle block{block_state:"minecraft:green_wool"} ~ ~ ~ 0 0 0 0.1 5 force

execute at @s run particle falling_dust{block_state:"minecraft:coal_block"} ~ ~ ~ 1 1 1 0.1 50 force
execute at @s run particle dust{color:[0.000,0.000,0.100],scale:3} ~ ~ ~ 1 1 1 0.1 30 force
execute at @s run particle block_crumble{block_state:"minecraft:coal_block"} ~ ~1 ~ 1.2 0.6 1.2 0.1 100 force

effect give @a[gamemode=!spectator,distance=..5] blindness 8 100 true
effect give @a[gamemode=!spectator,distance=..5] darkness 8 100 true

execute store result storage util:soundpitch pitch int 1 run random value 0..3
function powerups:coalstock/playsound with storage util:soundpitch