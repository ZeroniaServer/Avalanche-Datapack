$summon turtle ~ ~ ~ {Rotation:[$(rotX)f,0.0f],Silent:1b,Invulnerable:1b,NoAI:1b,Team:"noCol",PersistenceRequired:1b,Tags:["vehicle.base","vehicle","init"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:movement_speed",base:0},{id:"minecraft:scale",base:0.75}]}

$execute positioned ^ ^ ^-.1875 run summon minecart ~ ~0.4171875 ~ {Rotation:[$(rotX)f,0.0f],Tags:["vehicle","init"]}

$execute positioned ^ ^ ^-.1875 run summon item_display ~ ~0.4171875 ~ {teleport_duration:3,item:{id:"minecraft:ghast_spawn_egg",count:1,components:{custom_model_data:1}},Rotation:[$(rotX)f,0.0f],start_interpolation:0,transformation:{scale:[1.8,1.8,1.8],translation:[0.0,0.35,0.0],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0]},Tags:["vehicle","init"]}

ride @e[type=minecart,tag=init,limit=1] mount @e[type=turtle,tag=init,limit=1]
ride @e[type=item_display,tag=init,limit=1] mount @e[type=turtle,tag=init,limit=1]

scoreboard players add .counter vehicle.id 1
scoreboard players operation @e[type=#powerups:sleigh,tag=vehicle,tag=init] vehicle.id = .counter vehicle.id

tag @e[type=#powerups:sleigh,tag=init] remove init