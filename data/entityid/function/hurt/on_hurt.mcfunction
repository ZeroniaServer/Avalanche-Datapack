#> Regular damage
execute if entity @s[tag=Iceball] run scoreboard players remove @a[tag=victim,tag=!Knockout] playerHP 20
execute if entity @s[tag=Snowball] run scoreboard players remove @a[tag=victim,tag=!Knockout] playerHP 5

#> Snow Mark bonus damage
execute if entity @s[tag=Snowball] run scoreboard players remove @a[tag=victim,tag=!Knockout] playerHP 2

kill