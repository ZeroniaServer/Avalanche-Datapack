$data merge entity @s {interpolation_duration:35,start_interpolation:0,transformation:{scale:[1.$(x)f,1.$(y)f,1.$(z)f]}}
execute as @s at @s run particle minecraft:snowflake ~ ~ ~ 0.8 0 0.8 0.05 50 force
execute as @s at @s run particle minecraft:snowflake ~ ~ ~ 0.6 0.5 0.6 0 50 force