execute if entity @s[predicate=game:void] run tag @s add void


data remove storage iris:output TargetedFace
function powerups:placeable_init/alignfloor

execute at @s[tag=illegal,predicate=game:low_arena] run tag @s add tooLow
execute at @s[tag=tooLow] run tp @s ~ ~50 ~
execute at @s[tag=tooLow] run function powerups:rocket/alignfloor
execute at @s[tag=tooLow] run tp @s ~ ~1.5 ~

execute at @s[tag=illegal,predicate=!game:rocket_arena] facing -63 42 -221 run function powerups:rocket/movefloor

execute at @s run playsound rocketspawn master @a ~ ~ ~ 1 1.6
execute at @s run playsound rocketspawn2 master @a[tag=!self] ~ ~ ~ 1 0.6
execute at @s[tag=!void,tag=!movedfloor] as @a[tag=self,limit=1] run loot spawn ~ ~1 ~ loot powerups:rocket_drop
execute at @s[tag=void,tag=!movedfloor] as @a[tag=self,limit=1] run loot spawn ~ ~-1 ~ loot powerups:rocket_drop
execute at @s[tag=movedfloor] as @a[tag=self,limit=1] run loot spawn ~ ~1 ~ loot powerups:rocket_drop

execute if entity @s[tag=void] as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run tag @s add Voided
execute if entity @s[tag=movedfloor] as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run tag @s add movedfloor

kill