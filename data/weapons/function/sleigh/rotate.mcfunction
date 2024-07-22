execute store result entity @e[type=marker,tag=vehicle,limit=1] Pos[0] double 0.01 run scoreboard players operation p vehicle.dx += v vehicle.dx
execute store result entity @e[type=marker,tag=vehicle,limit=1] Pos[2] double 0.01 run scoreboard players operation p vehicle.dz += v vehicle.dz
#execute at @e[type=marker,tag=vehicle] run particle flame ~ ~1 ~ 0 0 0 0 1
execute anchored eyes facing entity @e[type=marker,tag=vehicle,limit=1] eyes positioned ^ ^ ^20 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~0.25 0