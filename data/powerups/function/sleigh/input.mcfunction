#get player input
function wasd:mounted

scoreboard players operation #input math = .w wasd
scoreboard players operation #input math += .a wasd
scoreboard players operation #input math += .s wasd
scoreboard players operation #input math += .d wasd

scoreboard players operation .riding vehicle.id = @s vehicle.id
execute if score #input math matches 1.. unless score .s wasd matches 1 as @e[type=turtle,tag=vehicle] if score @s vehicle.id = .riding vehicle.id run function powerups:sleigh/accelerate
execute if score #input math matches 1.. if score .s wasd matches 1 as @e[type=turtle,tag=vehicle] if score @s vehicle.id = .riding vehicle.id run function powerups:sleigh/brake
scoreboard players reset .riding vehicle.id