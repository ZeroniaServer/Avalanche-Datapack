particle block{block_state:"minecraft:snow"} ~ ~ ~ 0 0 0 0.1 15 force
particle minecraft:snowflake ~ ~ ~ 0 0 0 0.1 4

execute store result storage util:soundpitch pitch int 1 run random value 0..3
function powerups:snowball/playsound with storage util:soundpitch
kill @s