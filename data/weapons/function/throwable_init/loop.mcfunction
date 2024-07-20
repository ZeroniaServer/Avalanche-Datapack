#> Spawn arrows in snowballs
execute as @a[scores={throwsb=1..}] at @s run function weapons:throwable_init/throw

#> Set arrow motion to be the same as the Snowball
execute as @e[type=arrow,tag=ThrowableArrow] run function weapons:throwable_init/arrow_motion

#> Impact effects
function weapons:throwable_init/impact