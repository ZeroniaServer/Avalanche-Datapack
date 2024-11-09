$summon turtle ~ ~ ~ {Rotation:[$(rotX)f,0.0f],Silent:1b,Invulnerable:1b,Team:"noCol",PersistenceRequired:1b,Tags:["vehicle.base","vehicle","init"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:movement_speed",base:0},{id:"minecraft:jump_strength",base:0},{id:"minecraft:scale",base:0.75}]}

$execute positioned ^ ^ ^-.1875 run summon minecart ~ ~0.4171875 ~ {Rotation:[$(rotX)f,0.0f],Tags:["vehicle","init"]}

$execute positioned ^ ^ ^-.1875 run summon item_display ~ ~0.4171875 ~ {teleport_duration:3,item:{id:"minecraft:ghast_spawn_egg",count:1,components:{custom_model_data:1}},Rotation:[$(rotX)f,0.0f],start_interpolation:0,transformation:{scale:[1.8,1.8,1.8],translation:[0.0,0.35,0.0],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0]},Tags:["vehicle","init"]}

execute positioned ^ ^ ^-.1875 run summon interaction ~ ~0.4171875 ~ {width:1.2,height:0.8,Tags:["SleighHitbox","init"],response:1b}
execute positioned ^ ^ ^-.1875 run summon interaction ~ ~0.4171875 ~ {width:1.7,height:-0.5,Tags:["SleighHitbox","init"],response:1b}

ride @e[type=minecart,tag=init,limit=1] mount @e[type=turtle,tag=init,limit=1]
ride @e[type=item_display,tag=init,limit=1] mount @e[type=turtle,tag=init,limit=1]
execute as @e[type=interaction,tag=init,limit=2] run ride @s mount @e[type=turtle,tag=init,limit=1]

tag @e[type=#powerups:sleigh,tag=init] remove init