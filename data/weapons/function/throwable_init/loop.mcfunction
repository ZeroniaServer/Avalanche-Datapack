#> Spawn arrows in snowballs
execute as @a[scores={throwsb=1..}] at @s run function weapons:throwable_init/throw

#> Set arrow motion to be the same as the Snowball
execute as @e[type=arrow] at @s run data modify entity @s Motion set from entity @e[type=snowball,tag=HasPassenger,limit=1,sort=nearest] Motion

#> Impact effects
function weapons:throwable_init/impact