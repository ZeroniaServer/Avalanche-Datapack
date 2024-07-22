execute unless entity @e[type=marker,tag=vehicle] run summon marker ~ ~ ~ {Tags:["vehicle"]}

#TODO add special placement for red/green?
execute as @e[type=marker,tag=SpawnSleigh] at @s run function weapons:sleigh/place

execute as @a if predicate wasd:on_sleigh at @s run function weapons:sleigh/input
execute as @e[type=turtle,tag=vehicle] run function weapons:sleigh/physics

execute as @a[tag=Knockout,predicate=wasd:on_sleigh,scores={freezetime=..1}] at @s run tp @s ~ ~1 ~
execute as @a[tag=Knockout,predicate=wasd:on_sleigh,scores={freezetime=2..}] at @s run tp @s @s

scoreboard players reset @a[predicate=!wasd:on_sleigh,scores={vehicle.id=0..}] vehicle.id