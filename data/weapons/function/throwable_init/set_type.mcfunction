#> Add tags to the arrow depending on what snowball was used
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":1}}}] on passengers run tag @s add Snowball
execute if entity @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_model_data":2}}}] on passengers run tag @s add Iceball
tag @s add HasPassenger

#quick debug - remove
execute on passengers if entity @s[tag=Snowball] run say I'm a snowball!
execute on passengers if entity @s[tag=Iceball] run say I'm an iceball!

scoreboard players reset @s CmdData
tag @s remove owned