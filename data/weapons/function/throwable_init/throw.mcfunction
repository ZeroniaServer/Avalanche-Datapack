#> Save player UUID for arrow owner
# TODO there's more performance efficient ways to get cached UUID without serializing all player NBT but this is fine for now
data modify storage avalanche:snowball UUID set from entity @s UUID

#> Spawn arrows in snowballs
execute summon arrow run function weapons:throwable_init/spawn_arrow

#> Detect snowballs with arrows, add "type" to its passenger
execute as @e[type=snowball,tag=!HasPassenger] on passengers on vehicle run function weapons:throwable_init/set_type

#> Reset scores
scoreboard players reset @s throwsb