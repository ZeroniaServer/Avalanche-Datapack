tag @e[type=arrow,tag=!Impact,nbt={inGround:1b}] add Impact
execute as @e[type=arrow,tag=Snowball,tag=Impact] at @s run function powerups:snowball/impact
execute as @e[type=arrow,tag=Iceball,tag=Impact] at @s run function powerups:iceball/impact
execute as @e[type=arrow,tag=Coalstock,tag=Impact] at @s run function powerups:coalstock/impact
execute as @e[type=arrow,tag=Snowglobe,tag=Impact] at @s run function powerups:snowglobe/impact

execute as @e[type=arrow,tag=AvalancheRocket,tag=Impact] at @s run function powerups:rocket/explosion



kill @e[type=arrow,tag=Impact]