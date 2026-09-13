# accelerate x and z by input motion
data modify storage avalanche:sleigh vehicle.dx set compute default float powerups:sleigh/accelerate_x
data modify storage avalanche:sleigh vehicle.dz set compute default float powerups:sleigh/accelerate_z

# calculate magnitude
data modify storage avalanche:sleigh magnitude set compute default float powerups:sleigh/magnitude

# calculate max speed while sprinting
execute if score #sprint vehicle matches 1 run data modify storage avalanche:sleigh max set value 0.5
execute unless score #sprint vehicle matches 1 run data modify storage avalanche:sleigh max set value 0.35

# slow down under blizzards
tag @s add sleighself
execute as @e[type=item_display,tag=StormCloudMain,scores={CmdData=1..260}] at @s positioned ~-4.5 ~-5.5 ~-4.5 if entity @e[type=turtle,tag=sleighself,dx=6,dy=6,dz=6,limit=1] run data modify storage avalanche:sleigh max set value 0.2
tag @s remove sleighself

# slow down while throwing
execute if entity @s[tag=slowThrow] run data modify storage avalanche:sleigh max set compute default float powerups:sleigh/half_max
tag @s remove slowThrow

# slow down while drinking
execute if entity @s[tag=DrinkChoco] run data modify storage avalanche:sleigh max set compute default float powerups:sleigh/half_max

# clamp current motion to max speed
data modify storage avalanche:sleigh vehicle.dx set compute default float powerups:sleigh/clamp_x
data modify storage avalanche:sleigh vehicle.dz set compute default float powerups:sleigh/clamp_z