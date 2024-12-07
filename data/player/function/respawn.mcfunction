function inventory:clear

execute as @s at @s run tp @s @s
tp @s[team=Green] -114 47 -210 -90 0
tp @s[team=Red] -12 47 -232 90 0
tag @s add NaturalRespawn
execute if score $gamestate CmdData matches 3 unless entity @s[tag=SilentRespawn] run function powerups:giftbox/spawn
scoreboard players set @s playerHP 20
scoreboard players reset @s playerDamage
effect clear @s blindness
effect clear @s darkness
clear @s diamond_hoe
execute if score $gamestate CmdData matches 3 run loot give @s loot powerups:snowball

scoreboard players set @s iframe -60
tag @s add IFrame

#> Set kb resistance
attribute @s minecraft:knockback_resistance base set 0.25

execute if entity @s[team=Green,tag=!SilentRespawn] run scoreboard players set $GreenRespawn CmdData 1
execute if entity @s[team=Red,tag=!SilentRespawn] run scoreboard players set $RedRespawn CmdData 1

execute at @s[tag=!SilentRespawn] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0

tag @s remove SilentRespawn
tag @s remove SleighDismounted
tag @s remove KOmessaged

scoreboard players add @s respawn 1