execute store result score c vehicle.dx run data get storage cw_wasd Motion[0] 10000.0
execute store result score c vehicle.dz run data get storage cw_wasd Motion[2] 10000.0

scoreboard players operation c vehicle.dx /= .damper vehicle
scoreboard players operation c vehicle.dz /= .damper vehicle
scoreboard players operation @s vehicle.dx += c vehicle.dx
scoreboard players operation @s vehicle.dz += c vehicle.dz
execute if score @s vehicle.dx matches ..-500 run scoreboard players set @s vehicle.dx -500
execute if score @s vehicle.dx matches 500.. run scoreboard players set @s vehicle.dx 500
execute if score @s vehicle.dz matches ..-500 run scoreboard players set @s vehicle.dz -500
execute if score @s vehicle.dz matches 500.. run scoreboard players set @s vehicle.dz 500
