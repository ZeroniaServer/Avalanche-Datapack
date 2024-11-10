data modify entity @s Owner set from storage avalanche:snowball UUID
ride @s mount @e[type=snowball,tag=owned,tag=!HasPassenger,limit=1]
execute on vehicle run tag @s add HasPassenger
tag @s remove init
execute unless score @s entityidset matches 1 run function entityid:assign_tag