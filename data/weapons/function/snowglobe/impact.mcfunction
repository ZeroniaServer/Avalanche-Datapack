playsound snowglobehit master @a ~ ~ ~ 1 1
particle item{item:{id:"minecraft:snowball",components:{custom_model_data:6}}} ~ ~ ~ 0.1 0.1 0.1 0.1 15 force
particle sweep_attack ~ ~ ~ 0 0 0 0 2 force

summon item_display ~ ~ ~ {Tags:["SnowglobeBase","Snowglobe"],item:{id:"minecraft:diamond_hoe",components:{custom_model_data:3}},item_display:"head"}
execute if entity @s[tag=Green] run summon item_display ~ ~ ~ {Tags:["SnowglobeBall","Snowglobe","Green"],item:{id:"minecraft:diamond_hoe",components:{custom_model_data:4}},item_display:"head"}
execute if entity @s[tag=Red] run summon item_display ~ ~ ~ {Tags:["SnowglobeBall","Snowglobe","Red"],item:{id:"minecraft:diamond_hoe",components:{custom_model_data:4}},item_display:"head"}