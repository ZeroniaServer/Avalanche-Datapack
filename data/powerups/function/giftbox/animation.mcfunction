scoreboard players add @e[type=item_display,tag=aj.elf.root] CmdData 1
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=6}] at @s run particle block{block_state:packed_ice} ~ ~ ~ 0.2 0.1 0.2 0.1 20 force
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=6}] at @s run playsound block.glass.hit master @a ~ ~ ~ 1 0

execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=9}] at @s run playsound entity.allay.ambient_with_item master @a ~ ~ ~ 1 1.1

execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=20}] at @s run playsound block.wool.place master @a ~ ~ ~ 1 1.2
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=50}] at @s run playsound minecraft:entity.allay.item_given master @a ~ ~ ~ 0.6 1.2

#> Place the actual giftbox
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=23}] store result storage elf:data rotation double 1 run data get entity @s Rotation[0]
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=23}] at @s run function powerups:giftbox/placegift with storage elf:data

execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=150..}] at @s on passengers run kill @s
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=150..}] at @s on vehicle run kill @s
execute as @e[type=item_display,tag=aj.elf.root,scores={CmdData=150..}] run kill @s

#> Set size of new giftboxes
scoreboard players add @e[type=item_display,tag=Giftbox,tag=New] CmdData 1
execute as @e[type=item_display,tag=Giftbox,tag=New,scores={CmdData=3..}] run data merge entity @s {transformation:{scale:[1.0f,1.0f,1.0f]},interpolation_duration:0,start_interpolation:0}
tag @e[type=item_display,tag=Giftbox,tag=New,scores={CmdData=3..}] remove New