data modify storage cw_wasd Motion set value [0.0,0.0,0.0]
scoreboard players set #input math 0
execute as @a[x=0,predicate=wasd:on_sleigh] at @s run function powerups:sleigh/input
execute as @a[x=0,predicate=!wasd:on_sleigh] run attribute @s movement_speed modifier remove sleigh:sprint
execute as @e[x=0,type=item,tag=SleighItem] at @s run function powerups:sleigh/item
tag @a remove giveSleigh