data modify entity @s Owner set from storage avalanche:snowball UUID
ride @s mount @e[type=snowball,tag=!HasPassenger,limit=1,sort=nearest]
execute on vehicle run data modify storage avalanche:snowball Motion set from entity @s Motion
data modify entity @s Motion set from storage avalanche:snowball Motion
tag @s add ThrowableArrow