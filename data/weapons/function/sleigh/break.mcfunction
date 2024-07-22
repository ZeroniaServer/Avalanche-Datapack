particle block{block_state:"spruce_planks"} ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
playsound minecraft:block.wooden_trapdoor.close master @a ~ ~ ~ 1 0
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.8 1.5
scoreboard players operation .current vehicle.id = @s vehicle.id
execute as @e[type=minecart,tag=vehicle] if score @s vehicle.id = .current vehicle.id run kill @s
tp @s ~ ~-1000 ~
kill @s