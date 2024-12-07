# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
data modify storage aj:temp args set value {variant:'red', animation:'spawn', frame: 0}
$execute store success score #success aj.i run data modify storage aj:temp args set value $(args)
summon minecraft:item_display ~ ~ ~ { Tags:['aj.new','aj.rig_entity','aj.rig_root','aj.snowman.root', "Snowman", "Red"], teleport_duration: 0, interpolation_duration: 1, Passengers:[{id:"area_effect_cloud",Duration:20000000,Tags:["snowmanid","init"]},{id:"interaction",width:0,height:0.7,Passengers:[{id:"minecraft:husk",Team:"noCol",Tags:["Snowman","hitbox","Red"],NoAI:1b,active_effects:[{id:"instant_damage",amplifier:100,duration:-1,show_particles:false},{id:"invisibility",amplifier:1,duration:-1,show_particles:false}],DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Silent:1b}]},{id:"minecraft:marker",Tags:["aj.rig_entity","aj.data","aj.snowman.data"],data:{rigHash:"51919480e863a3381151c28f4ad14433cf68164c0419e590928611e411e0a86d",locators:{},cameras:{},bones:{data_data:"",bone_carrot:"",bone_face:"",bone_hat:"",bone_head:"",bone_buttons:"",bone_scarf:"",bone_body:"",bone_bottom:"",bone_snowball:"",bone_snowball2:"",bone_leftarm:"",bone_rightarm:""}}},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.carrot"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/carrot"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.face"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/face"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.hat"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/hat"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.head"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/head"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.buttons"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/buttons"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.scarf"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/scarf"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.body"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/body"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.bottom"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/bottom"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.snowball"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/snowball"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.snowball2"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/snowball2"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.leftarm"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/leftarm"}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.rightarm"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"animated_java:snowman/default/rightarm"}},height:48f,width:48f}], }

data modify entity @e[type=area_effect_cloud,tag=snowmanid,tag=init,limit=1] Owner set from entity @a[tag=placer,limit=1] UUID
tag @e[type=area_effect_cloud,tag=snowmanid,tag=init,limit=1] remove init
execute as @e[type=item_display,tag=aj.new,limit=1,distance=..0.01] run function animated_java:snowman/zzz/0
execute as @e[type=husk,tag=hitbox,tag=!entityid_assigned,limit=1] run function entityid:assign_tag