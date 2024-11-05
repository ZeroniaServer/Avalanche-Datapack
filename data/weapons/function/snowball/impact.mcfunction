execute at @s run particle block{block_state:"minecraft:snow"} ~ ~ ~ 0 0 0 0.1 15 force
execute at @s run particle minecraft:snowflake ~ ~ ~ 0 0 0 0.1 4

execute store result storage util:soundpitch pitch int 1 run random value 0..3
function weapons:snowball/playsound with storage util:soundpitch
kill @s