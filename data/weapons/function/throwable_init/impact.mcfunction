tag @e[type=arrow,tag=!Impact,nbt={inGround:1b}] add Impact
execute as @e[type=arrow,tag=Snowball,tag=Impact] at @s run function weapons:snowball/impact
execute as @e[type=arrow,tag=Iceball,tag=Impact] at @s run function weapons:iceball/impact



kill @e[type=arrow,tag=Impact]