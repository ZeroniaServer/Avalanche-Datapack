#> Regular damage
execute if entity @s[tag=Iceball] run scoreboard players add @a[tag=victim,tag=!Knockout] playerDamage 20
execute if entity @s[tag=Snowball] run scoreboard players add @a[tag=victim,tag=!Knockout] playerDamage 5

#> Snow Mark bonus damage
execute if entity @s[tag=Snowball] run scoreboard players add @a[tag=victim,tag=!Knockout] playerDamage 2

kill