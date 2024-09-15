#> Save player UUID for arrow owner
#TODO there's more performance efficient ways to get cached UUID without serializing all player NBT but this is fine for now
data modify storage avalanche:snowball UUID set from entity @s UUID
tag @s add self
execute as @e[type=snowball] store success score @s CmdData on origin if entity @s[tag=self]
tag @e[type=snowball,scores={CmdData=1}] add owned

#> Spawn arrows in snowballs
execute as @e[type=snowball,tag=owned] summon arrow run function weapons:throwable_init/spawn_arrow

#> Detect snowballs with arrows, add "type" to its passenger
execute as @e[type=snowball,tag=owned,tag=HasPassenger,tag=!HasType] on passengers on vehicle run function weapons:throwable_init/set_type

#> Reset scores
scoreboard players reset @s throwsb
tag @s remove self