scoreboard players set @s playerHP 20
function inventory:clear
effect clear @s blindness
effect clear @s darkness
scoreboard players reset @s gameID
tag @s remove Blasted
tag @s remove SnowMark
tag @s remove Knockout
team leave @s
clear @s
scoreboard players reset @s leftgame
title @s actionbar ""