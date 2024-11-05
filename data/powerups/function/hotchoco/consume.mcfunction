playsound item.honey_bottle.drink master @a ~ ~ ~ 1 2
playsound entity.generic.drink master @a ~ ~ ~ 1 1
particle heart ~ ~1 ~ 0.3 0.3 0.3 0.1 6 force
particle cloud ~ ~1.4 ~ 0.3 0.3 0.3 0 4 force

execute if entity @s[tag=Knockout] run particle block{block_state:snow_block} ~ ~1.6 ~ 0.1 0.1 0.1 0.1 20 force
execute if entity @s[tag=Knockout] run particle splash ~ ~1.6 ~ 0.1 0.1 0.1 0.1 20 force
execute if entity @s[tag=Knockout] run playsound block.fire.extinguish master @a ~ ~ ~ 0.6 1.2

tag @s remove SnowMark

scoreboard players add @s[tag=!Knockout,scores={playerHP=1..}] playerHP 9
scoreboard players set @s[tag=Knockout] playerHP 4

execute if items entity @s weapon.mainhand diamond_hoe[custom_model_data=9] run item modify entity @s weapon.mainhand powerups:undrink_choco
execute if items entity @s weapon.offhand diamond_hoe[custom_model_data=9] run item modify entity @s weapon.offhand powerups:undrink_choco

advancement revoke @s only powerups:consume_choco