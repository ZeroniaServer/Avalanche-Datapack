execute as @s at @s run data modify entity @s UUID set from entity @p[scores={throwsb=1..}]
execute as @s at @s run tp @s ~ ~1 ~
execute as @s at @s run ride @s mount @e[type=snowball,tag=!HasPassenger,limit=1,sort=nearest]

tag @s add ThrowableArrow