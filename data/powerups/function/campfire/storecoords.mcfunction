data modify storage campfire:coords Pos set from entity @s Pos
data modify storage campfire:coords x set string storage campfire:coords Pos[0] 0 -1
data modify storage campfire:coords y set string storage campfire:coords Pos[1] 0 -1
data modify storage campfire:coords z set string storage campfire:coords Pos[2] 0 -1

execute if entity @s[team=Green] as @e[type=item_display,tag=CampfireMain,tag=Green,distance=..3] run function powerups:campfire/playparticle with storage campfire:coords
execute if entity @s[team=Red] as @e[type=item_display,tag=CampfireMain,tag=Red,distance=..3] run function powerups:campfire/playparticle with storage campfire:coords