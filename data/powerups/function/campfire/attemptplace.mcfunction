# First, match the raycast y position and center along x and z
# function iris:set_coordinates/main
tp @s ~ ~1 ~
execute at @s align xz rotated as @a[tag=placer,limit=1] rotated ~180 ~ run tp @s ~0.5 ~ ~0.5 ~ ~

# Next, align to the adjacent floor
function powerups:placeable_init/alignfloor

# Next, ensure that there is enough space above for this campfire to sit
data modify storage iris:settings Blacklist set value "#iris:shape_groups/air"
execute at @s[tag=!illegal] rotated 0 -90 anchored feet positioned ^ ^ ^ store result score $raydist CmdData run function iris:get_target
execute unless score $raydist CmdData matches 500000.. run tag @s add illegal
# Didn't hit anything so definitely safe placement
execute if data storage iris:output {TargetType:"NONE"} run tag @s remove illegal

# Prevent in bases
execute at @s[tag=!illegal] if predicate game:green_base run tag @s add illegal
execute at @s[tag=!illegal] if predicate game:red_base run tag @s add illegal

# Finally, protect against other illegal placement conditions
execute at @s[tag=!illegal] run function powerups:placeable_init/illegalplacement

# Summon the campfire if it is a valid position
execute at @s[tag=illegal] run function powerups:campfire/giveback
execute at @s[tag=!illegal] positioned ~ ~0.01 ~ run function powerups:campfire/summon