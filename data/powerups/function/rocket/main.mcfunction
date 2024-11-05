scoreboard players add @e[type=arrow,tag=AvalancheRocket] lifetime 1
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=1}] on vehicle run data merge entity @s {NoGravity:1b}
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=12}] on vehicle run data merge entity @s {NoGravity:0b}
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=1}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 1 0.8
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=1}] at @s run particle cloud ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.02 1 force
execute as @e[type=arrow,tag=AvalancheRocket,tag=RocketGreen,scores={lifetime=1..}] at @s run particle dust{color:[0.000,1.000,0.000],scale:0.6} ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=AvalancheRocket,tag=RocketRed,scores={lifetime=1..}] at @s run particle dust{color:[1.000,0.000,0.000],scale:0.6} ~ ~ ~ 0 0 0 0 1 force

execute as @e[type=arrow,tag=AvalancheRocket,scores={lifetime=40..}] at @s run function powerups:rocket/explosion