data modify storage blockcheck:result Pos set from entity @s Pos
setblock ~ ~ ~ target
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {Tags:["barricade"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[1.01,1.01,1.01]}}