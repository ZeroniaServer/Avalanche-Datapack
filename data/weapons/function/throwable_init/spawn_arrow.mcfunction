data merge entity @s {PierceLevel:10,Silent:1b,damage:0.0001d}
data modify entity @s Owner set from storage avalanche:snowball UUID
#TODO: don't just mount snowball, mount *owned* snowball
ride @s mount @e[type=snowball,tag=owned,tag=!HasPassenger,limit=1]
tag @s add ThrowableArrow
execute unless score @s entityidset matches 1 run function entityid:assign_tag