tag @e[type=arrow,tag=!Impact,nbt={inGround:1b}] add Impact
execute as @e[type=arrow,tag=Snowball,tag=Impact] at @s run function weapons:snowball/impact
execute as @e[type=arrow,tag=Iceball,tag=Impact] at @s run function weapons:iceball/impact
execute as @e[type=arrow,tag=Coalstock,tag=Impact] at @s run function weapons:coalstock/impact
execute as @e[type=arrow,tag=AvalancheRocket,tag=Impact] at @s run function weapons:rocket/explosion



kill @e[type=arrow,tag=Impact]