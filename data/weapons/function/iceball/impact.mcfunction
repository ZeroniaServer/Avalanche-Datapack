execute at @s run particle block{block_state:"minecraft:ice"} ~ ~ ~ 0 0 0 0.1 10 force
execute at @s run particle block{block_state:"minecraft:packed_ice"} ~ ~ ~ 0 0 0 0.1 5 force
execute at @s run particle minecraft:splash ~ ~ ~ 0 0 0 0.1 4

execute store result storage util:soundpitch pitch int 1 run random value 0..3
function weapons:iceball/playsound with storage util:soundpitch