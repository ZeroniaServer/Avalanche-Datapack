item modify entity @s weapon.mainhand powerups:damage_icicle
execute if items entity @s weapon.mainhand elytra[damage=3] run playsound iciclebreak player @a[distance=..30] ~ ~ ~ 1 1
execute if items entity @s weapon.mainhand elytra[damage=3] store success score @s breakicicle run item replace entity @s weapon.mainhand with air