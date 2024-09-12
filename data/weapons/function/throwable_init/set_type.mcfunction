#> Add tags to the arrow depending on what snowball was used
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":1}}}] on passengers run tag @s add Snowball
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":2}}}] on passengers run tag @s add Iceball
tag @s add HasPassenger

scoreboard players reset @s CmdData
tag @s remove owned