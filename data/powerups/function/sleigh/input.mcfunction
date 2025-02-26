#get player input
function wasd:mounted

scoreboard players operation #input math = .w wasd
scoreboard players operation #input math += .a wasd
scoreboard players operation #input math += .d wasd
scoreboard players set #sprint vehicle 0
execute if score #input math matches 1.. unless score .s wasd matches 1.. if predicate wasd:sprint unless entity @s[tag=CoalBlind] unless entity @s[tag=DrinkChoco] run scoreboard players set #sprint vehicle 1
attribute @s movement_speed modifier remove minecraft:sprinting
execute if score #sprint vehicle matches 1 run attribute @s movement_speed modifier add sleigh:sprint 0.025 add_value
execute unless score #sprint vehicle matches 1 run attribute @s movement_speed modifier remove sleigh:sprint
execute if predicate wasd:jump run scoreboard players add #input math 1
execute if score #input math matches 1.. unless score .s wasd matches 1 on vehicle on vehicle run function powerups:sleigh/accelerate
execute if score .s wasd matches 1 on vehicle on vehicle run function powerups:sleigh/brake

execute on vehicle rotated as @s on vehicle on passengers run rotate @s[type=item_display] ~ ~
execute on vehicle rotated as @s on vehicle on passengers on passengers run rotate @s[type=bamboo_raft] ~ ~

execute if predicate wasd:sneak run tag @s add SleighDismounted
execute if predicate wasd:sneak at @s run tp @s ~ ~1 ~