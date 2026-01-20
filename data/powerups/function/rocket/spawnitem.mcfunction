execute if entity @s[predicate=game:void] run tag @s add void

# copy location from player's last landed location (encoded in saddle slot)
item replace entity @s contents from entity @a[tag=self,limit=1] saddle
data modify entity @s Pos set from entity @s item.components."minecraft:custom_data".Pos

execute at @s run playsound rocketspawn master @a ~ ~ ~ 1 1.6
execute at @s run playsound rocketspawn2 master @a[tag=!self] ~ ~ ~ 1 0.6
execute at @s as @a[tag=self,limit=1] run loot spawn ~ ~1 ~ loot powerups:rocket_drop

execute if entity @s[tag=void] as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run tag @s add Voided
execute if entity @s[tag=movedfloor] as @e[type=item] if items entity @s contents snowball[custom_data~{Dropped:1b}] run tag @s add movedfloor

kill