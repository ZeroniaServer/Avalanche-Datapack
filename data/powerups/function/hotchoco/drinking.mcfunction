tag @s add DrinkChoco
execute if items entity @s weapon.mainhand diamond_hoe[custom_data={"HotChoco":"1b"},custom_model_data=8] unless items entity @s weapon.offhand diamond_hoe[custom_data={"HotChoco":"1b"},custom_model_data=9] run item modify entity @s weapon.mainhand powerups:drink_choco
execute if items entity @s weapon.offhand diamond_hoe[custom_data={"HotChoco":"1b"},custom_model_data=8] unless items entity @s weapon.mainhand diamond_hoe[custom_data={"HotChoco":"1b"},custom_model_data=8] unless items entity @s weapon.mainhand diamond_hoe[custom_data={"HotChoco":"1b"},custom_model_data=9] run item modify entity @s weapon.offhand powerups:drink_choco
advancement revoke @s only powerups:drink_choco

execute at @s anchored eyes run particle block{block_state:brown_concrete} ^ ^-0.2 ^0.4 0 0 0 0.1 1 force