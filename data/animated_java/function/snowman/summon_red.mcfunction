# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
data modify storage aj:temp args set value {variant:'red', animation:'spawn', frame: 0}
$execute store success score #success aj.i run data modify storage aj:temp args set value $(args)
summon minecraft:item_display ~ ~ ~ { Tags:['aj.new','aj.rig_entity','aj.rig_root','aj.snowman.root', "Snowman", "Red"], teleport_duration: 0, interpolation_duration: 1, Passengers:[{id:"interaction",width:0,height:0.7,Passengers:[{id:"minecraft:husk",Tags:["Snowman","hitbox","Red"],NoAI:1b,active_effects:[{id:"instant_damage",amplifier:100,duration:-1,show_particles:false},{id:"invisibility",amplifier:1,duration:-1,show_particles:false}],DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Silent:1b}]},{id:"minecraft:marker",Tags:["aj.rig_entity","aj.data","aj.snowman.data"],data:{rigHash:"51919480e863a3381151c28f4ad14433cf68164c0419e590928611e411e0a86d",locators:{},cameras:{},bones:{data_data:"",bone_carrot:"",bone_face:"",bone_hat:"",bone_head:"",bone_buttons:"",bone_scarf:"",bone_body:"",bone_bottom:"",bone_snowball:"",bone_snowball2:"",bone_leftarm:"",bone_rightarm:""}}},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.carrot"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":4}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.face"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":3}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.hat"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":5}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.head"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":2}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.buttons"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":7}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.scarf"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":8}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.body"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":6}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.bottom"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":9}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.snowball"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":10}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.snowball2"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":11}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.leftarm"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":12}},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.snowman.bone","aj.snowman.bone.rightarm"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":13}},height:48f,width:48f},{Tags:["aj.rig_entity"]}], }
execute as @e[type=item_display,tag=aj.new,limit=1,distance=..0.01] run function animated_java:snowman/zzz/0
execute as @e[type=husk,tag=hitbox,tag=!entityid_assigned,limit=1] run function entityid:assign_tag