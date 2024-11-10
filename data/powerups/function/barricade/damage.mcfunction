tag @s remove damaged
scoreboard players reset @s UUIDscore

execute if items entity @s contents target[custom_model_data=2] run playsound block.grass.break master @a ~ ~ ~ 0.5 1
execute if items entity @s contents target[custom_model_data=2] run particle block{block_state:clay} ~ ~ ~ 0 0 0 0.1 30 force
execute if items entity @s contents target[custom_model_data=2] run setblock ~ ~ ~ air
execute if items entity @s contents target[custom_model_data=2] run return run kill

execute if items entity @s contents target[custom_model_data=1] run setblock ~ ~ ~ air
execute if items entity @s contents target[custom_model_data=1] run setblock ~ ~ ~ target[power=0] replace
execute if items entity @s contents target[custom_model_data=1] run return run item replace entity @s contents with target[custom_model_data=2]

execute unless items entity @s contents * run setblock ~ ~ ~ air
execute unless items entity @s contents * run setblock ~ ~ ~ target[power=0] replace
execute unless items entity @s contents * run return run item replace entity @s contents with target[custom_model_data=1]