execute as @s at @s positioned ~ ~1 ~ summon marker run function powerups:campfire/storecoords
execute if entity @s[team=Green] as @e[type=item_display,tag=CampfireMain,tag=Green,distance=..3] run function powerups:campfire/playparticle with storage campfire:coords
execute if entity @s[team=Red] as @e[type=item_display,tag=CampfireMain,tag=Red,distance=..3] run function powerups:campfire/playparticle with storage campfire:coords