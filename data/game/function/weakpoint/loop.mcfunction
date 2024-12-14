execute if score $WeakpointSpawnGreen CmdData matches ..10 run scoreboard players add $WeakpointSpawnGreen CmdData 1
execute if score $WeakpointSpawnRed CmdData matches ..10 run scoreboard players add $WeakpointSpawnRed CmdData 1

#> Particles
# scoreboard players add $dust4 CmdData 1
# execute if score $dust4 CmdData matches 3.. run scoreboard players set $dust4 CmdData 0

# tag @a remove holdRocket

# scoreboard players set $gxparticle CmdData 0
# execute as @a[team=Red] if items entity @s weapon.* snowball[custom_data~{Rocket:1b}] run tag @s add holdRocket
# execute if entity @a[team=Red,tag=holdRocket] run scoreboard players set $gxparticle CmdData 1
# execute if score $gxparticle CmdData matches 1 if score $dust4 CmdData matches 0 as @e[type=marker,limit=2,tag=XParticle,tag=Green] at @s run function game:weakpoint/xparticle/green

# scoreboard players set $rxparticle CmdData 0
# execute as @a[team=Green] if items entity @s weapon.* snowball[custom_data~{Rocket:1b}] run tag @s add holdRocket
# execute if entity @a[team=Green,tag=holdRocket] run scoreboard players set $rxparticle CmdData 1
# execute if score $rxparticle CmdData matches 1 if score $dust4 CmdData matches 0 as @e[type=marker,limit=2,tag=XParticle,tag=Red] at @s run function game:weakpoint/xparticle/red

#> Red
# Left
execute if score $RedWeakpoint CmdData matches 0 run tp @e[type=marker,tag=XParticle,tag=Red,tag=1,limit=1] -5 66 -224
execute if score $RedWeakpoint CmdData matches 0 run tp @e[type=marker,tag=XParticle,tag=Red,tag=2,limit=1] -5 66 -228
execute if score $RedWeakpoint CmdData matches 0 run particle block{block_state:snow_block} -5 66 -226 1 1 1 0.1 5 force
execute if score $RedWeakpoint CmdData matches 0 run particle snowflake -5 66 -226 1 1 1 0.1 2 force
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 1 run setblock -5 66 -226 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 2 run setblock -4 67 -227 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 2 run setblock -4 67 -225 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 2 run setblock -5 65 -227 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 2 run setblock -5 65 -225 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 3 run setblock -5 64 -228 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 3 run setblock -4 68 -228 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 3 run setblock -3 68 -224 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 if score $WeakpointSpawnRed CmdData matches 3 run setblock -5 64 -224 exposed_copper
execute if score $RedWeakpoint CmdData matches 0 as @a[team=Green] if items entity @s weapon.* snowball[custom_data~{Rocket:1b}] run particle trail{target:[-5.0,66.0,-226.0],color:[0.0,1.0,0.0],duration:3} -5 66 -226

# Middle
execute if score $RedWeakpoint CmdData matches 1 run tp @e[type=marker,tag=XParticle,tag=Red,tag=1,limit=1] -16 55 -215
execute if score $RedWeakpoint CmdData matches 1 run tp @e[type=marker,tag=XParticle,tag=Red,tag=2,limit=1] -16 55 -219
execute if score $RedWeakpoint CmdData matches 1 run particle block{block_state:snow_block} -16 55 -217 1 1 1 0.1 5 force
execute if score $RedWeakpoint CmdData matches 1 run particle snowflake -16 55 -217 1 1 1 0.1 2 force
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 1 run setblock -16 55 -217 exposed_copper
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 2 run setblock -16 54 -216 exposed_copper
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 2 run setblock -16 54 -218 exposed_copper
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 2 run setblock -15 56 -216 exposed_copper
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 2 run setblock -14 56 -218 exposed_copper
execute if score $RedWeakpoint CmdData matches 1 if score $WeakpointSpawnRed CmdData matches 3 run setblock -16 53 -219 exposed_copper

# Right
execute if score $RedWeakpoint CmdData matches 2 run tp @e[type=marker,tag=XParticle,tag=Red,tag=1,limit=1] -10 69 -204
execute if score $RedWeakpoint CmdData matches 2 run tp @e[type=marker,tag=XParticle,tag=Red,tag=2,limit=1] -10 69 -208
execute if score $RedWeakpoint CmdData matches 2 run particle block{block_state:snow_block} -10 69 -206 1 1 1 0.1 5 force
execute if score $RedWeakpoint CmdData matches 2 run particle snowflake -10 69 -206 1 1 1 0.1 2 force
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 1 run setblock -10 69 -206 exposed_copper
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 2 run setblock -9 70 -205 exposed_copper
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 2 run setblock -10 70 -207 exposed_copper
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 2 run setblock -11 68 -207 exposed_copper
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 2 run setblock -10 68 -205 exposed_copper
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 3 run setblock -11 67 -208 exposed_copper
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 3 run setblock -8 71 -204 exposed_copper
execute if score $RedWeakpoint CmdData matches 2 if score $WeakpointSpawnRed CmdData matches 3 run setblock -9 71 -208 exposed_copper

#> Green
# Left
execute if score $GreenWeakpoint CmdData matches 0 run tp @e[type=marker,tag=XParticle,tag=Green,tag=1,limit=1] -121 66 -214
execute if score $GreenWeakpoint CmdData matches 0 run tp @e[type=marker,tag=XParticle,tag=Green,tag=2,limit=1] -121 66 -218
execute if score $GreenWeakpoint CmdData matches 0 run particle block{block_state:snow_block} -121 66 -216 1 1 1 0.1 5 force
execute if score $GreenWeakpoint CmdData matches 0 run particle snowflake -121 66 -216 1 1 1 0.1 2 force
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 1 run setblock -121 66 -216 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -122 67 -215 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -122 67 -217 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -121 65 -215 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -121 65 -217 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -122 68 -214 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -123 68 -218 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -121 64 -214 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 0 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -121 64 -218 waxed_weathered_copper
# Middle
execute if score $GreenWeakpoint CmdData matches 1 run tp @e[type=marker,tag=XParticle,tag=Green,tag=1,limit=1] -110 55 -223
execute if score $GreenWeakpoint CmdData matches 1 run tp @e[type=marker,tag=XParticle,tag=Green,tag=2,limit=1] -110 55 -227
execute if score $GreenWeakpoint CmdData matches 1 run particle block{block_state:snow_block} -110 55 -225 1 1 1 0.1 5 force
execute if score $GreenWeakpoint CmdData matches 1 run particle snowflake -110 55 -225 1 1 1 0.1 2 force
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 1 run setblock -110 55 -225 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -110 54 -224 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -110 54 -226 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -111 56 -226 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -112 56 -224 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 1 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -110 53 -223 waxed_weathered_copper
# Right
execute if score $GreenWeakpoint CmdData matches 2 run tp @e[type=marker,tag=XParticle,tag=Green,tag=1,limit=1] -116 69 -234
execute if score $GreenWeakpoint CmdData matches 2 run tp @e[type=marker,tag=XParticle,tag=Green,tag=2,limit=1] -116 69 -238
execute if score $GreenWeakpoint CmdData matches 2 run particle block{block_state:snow_block} -116 69 -236 1 1 1 0.1 5 force
execute if score $GreenWeakpoint CmdData matches 2 run particle snowflake -116 69 -236 1 1 1 0.1 2 force
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 1 run setblock -116 69 -236 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -116 70 -235 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -117 70 -237 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -116 68 -237 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 2 run setblock -115 68 -235 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -118 71 -238 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -117 71 -234 waxed_weathered_copper
execute if score $GreenWeakpoint CmdData matches 2 if score $WeakpointSpawnGreen CmdData matches 3 run setblock -115 67 -234 waxed_weathered_copper