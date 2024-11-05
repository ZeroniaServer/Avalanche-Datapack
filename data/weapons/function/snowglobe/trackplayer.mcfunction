tag @a remove CloudMover
scoreboard players reset $current UUIDscore
execute store result score $current UUIDscore run scoreboard players get @s UUIDscore
execute as @a[tag=SnowMark] if score @s UUIDscore = $current UUIDscore run tag @s add CloudMover
execute positioned as @a[tag=CloudMover,limit=1,sort=nearest] run tp @s ~ ~1.6 ~

execute unless entity @a[tag=CloudMover,tag=!Knockout] run tag @s add DespawnCloud