execute if entity @s[tag=CampfireSpawner,tag=Green] run summon item_display ~ ~ ~ {Tags:["CampfireEntity","CampfireMain","Green"],item:{id:"diamond_hoe",components:{custom_model_data:10}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},Passengers:[{id:"area_effect_cloud",Duration:20000000,Tags:["campfireid","init"]},{id:"interaction",Tags:["CampfireEntity","cfanchor"],width:0,height:-0.5,Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["CampfireEntity","cfcollision"],Team:"noCol"}]}]}
execute if entity @s[tag=CampfireSpawner,tag=Red] run summon item_display ~ ~ ~ {Tags:["CampfireEntity","CampfireMain","Red"],item:{id:"diamond_hoe",components:{custom_model_data:10}},transformation:{scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},Passengers:[{id:"area_effect_cloud",Duration:20000000,Tags:["campfireid","init"]},{id:"interaction",Tags:["CampfireEntity","cfanchor"],width:0,height:-0.5,Passengers:[{id:"shulker",NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["CampfireEntity","cfcollision"],Team:"noCol"}]}]}
data modify entity @e[type=area_effect_cloud,tag=campfireid,tag=init,limit=1] Owner set from entity @a[tag=placer,limit=1] UUID
tag @e[type=area_effect_cloud,tag=campfireid,tag=init,limit=1] remove init
kill