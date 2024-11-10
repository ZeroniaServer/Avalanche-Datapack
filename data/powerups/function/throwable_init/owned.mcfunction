data modify storage avalanche:snowball Motion set from entity @s Motion
data modify storage avalanche:motion x set string storage avalanche:snowball Motion[0] 0 -1
data modify storage avalanche:motion y set string storage avalanche:snowball Motion[1] 0 -1
data modify storage avalanche:motion z set string storage avalanche:snowball Motion[2] 0 -1
function powerups:throwable_init/spawn_arrow with storage avalanche:motion
execute unless score @s entityidset matches 1 run function entityid:assign_tag