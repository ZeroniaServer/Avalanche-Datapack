#> Spawn arrows in snowballs
execute as @a[scores={throwsb=1..}] at @s summon arrow run function weapons:throwable_init/spawn_arrow

#> Detect snowballs with arrows, add "type" to its passenger
execute if entity @a[scores={throwsb=1..}] as @e[type=snowball,tag=!HasPassenger] if data entity @s Passengers run function weapons:throwable_init/set_type
execute if entity @a[scores={throwsb=1..}] as @e[type=snowball,tag=!HasPassenger] if data entity @s Passengers run tag @s add HasPassenger

#> Set arrow motion to be the same as the Snowball
execute as @e[type=arrow] at @s run data modify entity @s Motion set from entity @e[type=snowball,tag=HasPassenger,limit=1,sort=nearest] Motion

#> Reset scores
scoreboard players reset @a[scores={throwsb=1..}] throwsb