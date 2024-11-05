execute as @a[team=!Lobby,team=!Spectator,tag=!DrinkChoco] if items entity @s weapon.mainhand diamond_hoe[custom_data={"HotChoco":"1b"}] run item modify entity @s weapon.mainhand powerups:undrink_choco
execute as @a[team=!Lobby,team=!Spectator,tag=!DrinkChoco] if items entity @s weapon.offhand diamond_hoe[custom_data={"HotChoco":"1b"}] run item modify entity @s weapon.offhand powerups:undrink_choco

tag @a[tag=DrinkChoco] remove DrinkChoco