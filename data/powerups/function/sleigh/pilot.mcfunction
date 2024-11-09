execute at @s[tag=!SleighOffGround] unless predicate gameplay:on_ground if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air if block ~ ~-5 ~ air run tag @s add SleighJumpBig

execute at @s[tag=SleighJumpBig] run function powerups:sleigh/jumpbig

# expire while unoccupied -- TODO remove??
scoreboard players set $occupied CmdData 0
tag @s[tag=Occupied] remove Occupied
execute on passengers on passengers if entity @s[type=player] run scoreboard players set $occupied CmdData 1
execute if score $occupied CmdData matches 1 run tag @s add Occupied

scoreboard players add @s[tag=!Occupied] CmdData 1
execute at @s[scores={CmdData=950..}] run function powerups:sleigh/break