particle block{block_state:"minecraft:ice"} ~ ~ ~ 0 0 0 0.1 10 force
particle block{block_state:"minecraft:packed_ice"} ~ ~ ~ 0 0 0 0.1 5 force
particle minecraft:splash ~ ~ ~ 0 0 0 0.1 4

execute store result storage util:soundpitch pitch int 1 run random value 0..3
function powerups:iceball/playsound with storage util:soundpitch
kill