execute unless predicate wasd:is_mounted run return run function powerups:throwable_init/impact
execute if data entity @s inBlockState.Name run return run function powerups:throwable_init/impact
execute on vehicle run scoreboard players add @s throwsb 1
scoreboard players add @s throwsb 1
execute on vehicle run data modify storage avalanche:snowball Motion set from entity @s Motion
data modify entity @s Motion set from storage avalanche:snowball Motion