scoreboard players operation @s vehicle.dx *= #5 constant
scoreboard players operation @s vehicle.dz *= #5 constant
scoreboard players operation @s vehicle.dx /= #6 constant
scoreboard players operation @s vehicle.dz /= #6 constant

scoreboard players set #temp math 0
execute unless score @s vehicle.dx matches 0 run scoreboard players add #temp math 1
execute unless score @s vehicle.dz matches 0 run scoreboard players add #temp math 1
scoreboard players operation .current vehicle.id = @s vehicle.id
execute if score #temp math matches 1.. as @e[type=minecart,tag=vehicle] if score @s vehicle.id = .current vehicle.id at @s positioned ^ ^ ^1 run particle smoke ~ ~-0.3 ~ 0.1 0.1 0.1 0 8
execute if score #temp math matches 1.. run playsound minecraft:block.snow.hit master @a ~ ~ ~ 1 2