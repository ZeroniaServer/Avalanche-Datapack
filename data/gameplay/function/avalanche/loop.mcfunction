scoreboard players add @e[type=marker,tag=AVSnowStarter] CmdData 1
scoreboard players add @e[type=marker,tag=AvalancheEntity,tag=SnowEmitter] CmdData 1
scoreboard players add @e[type=block_display,tag=AvalancheEntity,tag=SnowBlockDisplay] CmdData 1
scoreboard players add @e[type=block_display,tag=AvalancheEntity,tag=SecondarySnowBlockDisplay] CmdData 1

execute as @e[type=marker,tag=AVSnowStarter,tag=Green,scores={CmdData=5}] at @s run summon marker ~-5 ~4 ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[-60.0f,0.0f]}
execute as @e[type=marker,tag=AVSnowStarter,tag=Green,scores={CmdData=5}] at @s run summon marker ~ ~4 ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[-45.0f,0.0f]}
execute as @e[type=marker,tag=AVSnowStarter,tag=Green,scores={CmdData=5}] at @s run summon marker ~5 ~4 ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[-30.0f,0.0f]}

execute as @e[type=marker,tag=AVSnowStarter,tag=Red,scores={CmdData=5}] at @s run summon marker ~5 ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[90.0f,0.0f]}
execute as @e[type=marker,tag=AVSnowStarter,tag=Red,scores={CmdData=5}] at @s run summon marker ~ ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[105.0f,0.0f]}
execute as @e[type=marker,tag=AVSnowStarter,tag=Red,scores={CmdData=5}] at @s run summon marker ~-5 ~ ~ {Tags:["AvalancheEntity","SnowEmitter"],Rotation:[120.0f,0.0f]}


execute as @e[type=block_display,tag=SnowBlockDisplay,tag=New] at @s run function gameplay:avalanche/blockdisplay with storage avalanche:snow
execute as @e[type=block_display,tag=SecondarySnowBlockDisplay,tag=New] at @s run function gameplay:avalanche/secondaryblockdisplay with storage avalanche:snow
execute as @e[type=marker,tag=AVSnowStarter,scores={CmdData=1..40}] at @s run function gameplay:avalanche/summonsnowblock

function gameplay:avalanche/snowflakeparticle
function gameplay:avalanche/snowbreakparticle
function gameplay:avalanche/icebreakparticle

execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=..35}] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=..20}] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=..20}] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=21..30}] at @s run tp @s ~ ~0.5 ~
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=31..35}] at @s run tp @s ~ ~-1 ~

execute as @e[type=marker,tag=SnowEmitter,limit=2,sort=random] at @s run function gameplay:avalanche/summonsecondarysnowblock

execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=10..35},limit=1,sort=random] at @s run playsound block.snow.break master @a ~ ~ ~ 2 0
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=10..35},limit=1,sort=random] at @s run playsound minecraft:block.powder_snow.fall master @a ~ ~ ~ 2 0

execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=20..}] at @s run particle falling_dust{block_state:"minecraft:powder_snow"} ~ ~ ~ 4 1 4 0.1 20 force
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=20..}] at @s run particle snowflake ~ ~ ~ 4 1 4 0.1 50 force
execute as @e[type=marker,tag=SnowEmitter,scores={CmdData=20..}] at @s run particle dust{color:[1.000,1.000,1.000],scale:4} ~ ~ ~ 4 1 4 0.1 5 force

kill @e[type=marker,tag=AVSnowStarter,scores={CmdData=60..}]
kill @e[type=marker,tag=SnowEmitter,scores={CmdData=36..}]
kill @e[type=block_display,tag=SnowBlockDisplay,scores={CmdData=60..}]
kill @e[type=block_display,tag=SecondarySnowBlockDisplay,scores={CmdData=20..}]