function inventory:clear
effect clear @s blindness
effect clear @s darkness
tag @s remove Blasted
tag @s remove SnowMark
tag @s remove Knockout
tag @s remove CoalBlind
tag @s remove snowmanTarget
tag @s remove SleighDismounted
tag @s remove KOmessaged
tag @s remove avdamaged
tag @s remove IFrame
tag @s remove KillMVP
tag @s remove DeathMVP
tag @s remove RocketMVP
tag @s remove DamageMVP
tag @s add SilentRespawn
tag @s remove NaturalRespawn
scoreboard players set @s playerHP 20
scoreboard players reset @s respawn
scoreboard players reset @s HitmarkerTimer
scoreboard players reset @s HitmarkerType
scoreboard players reset @s MVPkill
scoreboard players reset @s MVPdeath
scoreboard players reset @s MVProcket
scoreboard players reset @s MVPdamage
scoreboard players reset @s iframe
scoreboard players reset @s blizzardtime
attribute @s minecraft:block_interaction_range base set 4.5