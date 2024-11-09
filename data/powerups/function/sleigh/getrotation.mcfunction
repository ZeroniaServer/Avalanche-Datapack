rotate @s ~ ~
data modify storage avalanche:sleigh rotX set from entity @s Rotation[0]
execute at @s run function powerups:sleigh/spawn with storage avalanche:sleigh