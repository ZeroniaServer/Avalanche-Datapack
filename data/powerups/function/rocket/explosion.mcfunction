summon lightning_bolt ~ 1000000 ~
particle explosion ~ ~ ~ 2 2 2 0.1 25 force
execute if entity @s[tag=RocketRed] run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2,to_color:[0.639,0.639,0.639]} ~ ~ ~ 2 2 2 0.1 60 force
execute if entity @s[tag=RocketGreen] run particle dust_color_transition{from_color:[0.000,1.000,0.000],scale:2,to_color:[0.639,0.639,0.639]} ~ ~ ~ 2 2 2 0.1 60 force
particle lava ~ ~ ~ 0 0 0 0.5 10 force

playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 6 0.8
playsound entity.firework_rocket.blast master @a ~ ~ ~ 6 0.8
playsound entity.firework_rocket.large_blast_far master @a[distance=20..] ~ ~ ~ 9 0
playsound entity.generic.explode master @a ~ ~ ~ 3 0

execute if entity @s[tag=RocketRed] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;9043968,10027008],has_trail:true,fade_colors:[I;16711680]}]}}}}
execute if entity @s[tag=RocketGreen] run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;24835,39173],has_trail:true,fade_colors:[I;2293504]}]}}}}

execute if entity @s[tag=RocketRed] if predicate gameplay:green_mountain run scoreboard players add $DamageCalcG CmdData 2
execute if entity @s[tag=RocketGreen] if predicate gameplay:red_mountain run scoreboard players add $DamageCalcR CmdData 2

function gameplay:balancing/set_multiplier

execute if entity @s[tag=RocketRed] run scoreboard players operation $DamageCalcG CmdData *= $GreenMult CmdData
execute if entity @s[tag=RocketGreen] run scoreboard players operation $DamageCalcR CmdData *= $RedMult CmdData

execute if entity @s[tag=RocketRed] run scoreboard players operation $DamageGreen CmdData += $DamageCalcG CmdData
execute if entity @s[tag=RocketGreen] run scoreboard players operation $DamageRed CmdData += $DamageCalcR CmdData

scoreboard players reset $DamageCalcG CmdData
scoreboard players reset $DamageCalcR CmdData

#> Destroy nearby Snowman
scoreboard players set @e[type=item_display,tag=Snowman,distance=..4] playerHP 0

execute as @s on vehicle run kill @s
execute as @s on passengers run kill @s
kill @s