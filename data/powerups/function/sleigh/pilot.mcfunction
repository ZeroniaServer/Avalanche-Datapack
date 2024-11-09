execute at @s[tag=!SleighOffGround] unless predicate gameplay:on_ground if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tag @s add SleighJumpBig

# Removed small jumps because it caused incredibly glitchy behavior against walls
# execute at @s unless block ^-1 ^ ^ air unless block ^ ^-1 ^ air unless block ^ ^-2 ^ air run tag @s add SleighJumpSmall
# execute at @s unless block ^1 ^ ^ air unless block ^ ^-1 ^ air unless block ^ ^-2 ^ air run tag @s add SleighJumpSmall
# execute as @s[tag=SleighJumpSmall] at @s run data modify entity @s Motion[1] set value 0.2d
# tag @s[tag=SleighJumpSmall] remove SleighJumpSmall

execute at @s[tag=SleighJumpBig] run function powerups:sleigh/jumpbig

execute as @a[tag=!Knockout,predicate=wasd:on_sleigh] if score @s vehicle.id = .current vehicle.id run scoreboard players set .found vehicle.id 1
execute if score .found vehicle.id matches 1 run tag @s add Occupied
scoreboard players reset .found vehicle.id

scoreboard players add @s[tag=!Occupied] CmdData 1
execute at @s[scores={CmdData=950..}] run function powerups:sleigh/break

tag @s[tag=Occupied] remove Occupied