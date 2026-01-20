tp 00000000-0000-0001-0000-000100000000 @s
execute as 00000000-0000-0001-0000-000100000000 at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
execute as 00000000-0000-0001-0000-000100000000 run data modify storage avalanche:groundpos Pos set from entity @s Pos
item modify entity @s saddle player:record_ground