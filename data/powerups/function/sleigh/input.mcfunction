#get player input
function wasd:mounted

scoreboard players operation #input math = .w wasd
scoreboard players operation #input math += .a wasd
scoreboard players operation #input math += .s wasd
scoreboard players operation #input math += .d wasd

execute if score #input math matches 1.. unless score .s wasd matches 1 on vehicle on vehicle run function powerups:sleigh/accelerate
execute if score #input math matches 1.. if score .s wasd matches 1 on vehicle on vehicle run function powerups:sleigh/brake

execute on vehicle rotated as @s on vehicle on passengers run rotate @s[type=item_display] ~ ~