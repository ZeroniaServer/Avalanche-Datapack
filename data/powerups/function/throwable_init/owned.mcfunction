execute on origin at @s anchored eyes positioned 0. 0. 0. positioned ^ ^ ^1.8 summon marker run function powerups:throwable_init/calc_mot
data modify storage avalanche:motion Rot set from entity @s Rotation
data modify storage avalanche:motion UUID set from entity @s Owner
execute on origin if entity @s[team=Red] run data modify storage avalanche:motion Team set value "Red"
execute on origin if entity @s[team=Green] run data modify storage avalanche:motion Team set value "Green"
function powerups:throwable_init/spawn_arrow with storage avalanche:motion
kill