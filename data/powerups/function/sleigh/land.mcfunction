playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0
playsound minecraft:block.snow.place master @a ~ ~ ~ 1 0
playsound minecraft:block.snow.place master @a ~ ~ ~ 1 1
playsound minecraft:entity.snow_golem.death master @a ~ ~ ~ 1 0.8
particle block{block_state:"snow_block"} ~ ~1 ~ 1 1 1 0.1 100 force
scoreboard players add @s CmdData 150
tag @s remove SleighOffGround
tag @s remove SleighJumpBig