#> Nothing to see here
execute if entity @s[tag=NewSleigh] if predicate powerups:blockychance run tag @s add BlockySleigh
tag @s[tag=NewSleigh] remove NewSleigh
scoreboard players add @s[tag=BlockySleigh] CmdData 1
execute at @s[tag=BlockySleigh,scores={CmdData=10}] run particle dust{color:[1.000,0.000,0.000],scale:2} ~ ~ ~ 0.4 0.2 0.4 0.1 10 force
execute at @s[tag=BlockySleigh,scores={CmdData=10}] run particle dust{color:[0.000,1.000,0.000],scale:2} ~ ~ ~ 0.4 0.2 0.4 0.1 10 force
execute at @s[tag=BlockySleigh,scores={CmdData=10}] run particle dust{color:[0.000,0.000,1.000],scale:2} ~ ~ ~ 0.4 0.2 0.4 0.1 10 force
item replace entity @s[tag=BlockySleigh,scores={CmdData=10}] contents with diamond_hoe[custom_model_data=24]
execute at @s[tag=BlockySleigh,scores={CmdData=10}] run playsound entity.shulker_bullet.hit master @a ~ ~ ~ 1 2
execute at @s[tag=BlockySleigh,scores={CmdData=10}] run playsound entity.shulker_bullet.hit master @a ~ ~ ~ 1 0
tag @s[tag=BlockySleigh,scores={CmdData=10}] remove BlockySleigh