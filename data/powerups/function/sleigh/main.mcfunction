#TODO add special placement for red/green?

execute as @a if predicate wasd:on_sleigh at @s run function powerups:sleigh/input
execute as @e[type=turtle,tag=vehicle] run function powerups:sleigh/physics

execute as @a[tag=Knockout,predicate=wasd:on_sleigh,scores={freezetime=..1}] at @s run tp @s ~ ~1 ~
execute as @a[tag=Knockout,predicate=wasd:on_sleigh,scores={freezetime=2..}] at @s run tp @s @s

scoreboard players reset @a[predicate=!wasd:on_sleigh,scores={vehicle.id=0..}] vehicle.id