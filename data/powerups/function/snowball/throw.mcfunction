advancement revoke @s only powerups:throw_snowball

#> Keep track of thrown snowballs
execute if items entity @s[tag=!Knockout,team=!Lobby,team=!Spectator] weapon.mainhand snowball[minecraft:custom_data~{Remainder:1b}] run scoreboard players add @s snowballcounter 1
execute if items entity @s[tag=!Knockout,tag=!InFriendlyCloud,team=!Lobby,team=!Spectator,scores={snowballcounter=6..}] weapon.mainhand snowball[minecraft:custom_data~{Remainder:1b}] run item modify entity @s weapon.mainhand powerups:slow_reload
execute if items entity @s[tag=!Knockout,team=!Lobby,team=!Spectator] weapon.mainhand snowball[minecraft:custom_data~{Remainder:1b}] run item modify entity @s weapon.mainhand powerups:reload
execute unless score @s[tag=!Knockout,team=!Lobby,team=!Spectator] snowballcounter matches 1.. if items entity @s weapon.mainhand snowball[minecraft:custom_data~{Slow:1b}] run item modify entity @s weapon.mainhand powerups:reload

execute as @s if items entity @s[tag=!Knockout,team=!Lobby,team=!Spectator] weapon.offhand snowball[minecraft:custom_data~{Remainder:1b}] run scoreboard players add @s snowballcounter 1
execute as @s if items entity @s[tag=!Knockout,tag=!InFriendlyCloud,team=!Lobby,team=!Spectator,scores={snowballcounter=6..}] weapon.offhand snowball[minecraft:custom_data~{Remainder:1b}] run item modify entity @s weapon.offhand powerups:slow_reload
execute if items entity @s[tag=!Knockout,team=!Lobby,team=!Spectator] weapon.offhand snowball[minecraft:custom_data~{Remainder:1b}] run item modify entity @s weapon.offhand powerups:reload
execute unless score @s[tag=!Knockout,team=!Lobby,team=!Spectator] snowballcounter matches 1.. if items entity @s weapon.offhand snowball[minecraft:custom_data~{Slow:1b}] run item modify entity @s weapon.offhand powerups:reload