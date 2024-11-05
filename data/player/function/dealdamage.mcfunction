execute if entity @s[tag=Knockout] run scoreboard players reset @s playerDamage
execute if score @s playerHP matches ..0 run scoreboard players reset @s playerDamage

execute if score @s playerDamage > @s playerHP run scoreboard players set @s playerHP 0
execute if score @s playerHP >= @s playerDamage run scoreboard players operation @s playerHP -= @s playerDamage

scoreboard players reset @s playerDamage