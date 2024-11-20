execute as @s at @s run tp @s @s
tp @s[team=Green] -114 47 -210 -90 0
tp @s[team=Red] -12 47 -232 90 0
execute unless entity @s[tag=SilentRespawn] run function powerups:giftbox/spawn
scoreboard players set @s playerHP 20
scoreboard players reset @s playerDamage
execute if score $gamestate CmdData matches 3 run loot give @s loot powerups:snowball

execute if entity @s[team=Green,tag=!SilentRespawn] run scoreboard players set $GreenRespawn CmdData 1
execute if entity @s[team=Red,tag=!SilentRespawn] run scoreboard players set $RedRespawn CmdData 1

execute at @s[tag=!SilentRespawn] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0

tag @s remove SilentRespawn