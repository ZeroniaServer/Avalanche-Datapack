execute as @a[tag=!Knockout,tag=!InFriendlyCloud,team=!Lobby,team=!Spectator,scores={snowballcounter=6..}] run scoreboard players reset @s snowballcounter

#> Add a delay if player spams snowballs
execute as @a[scores={snowballcounter=1..}] run scoreboard players add @s snowballcharge 1
execute as @a[scores={snowballcharge=10..}] run scoreboard players remove @s snowballcounter 1
execute as @a[scores={snowballcharge=10..}] if score @s snowballcounter matches ..0 run scoreboard players reset @s snowballcounter
execute as @a[scores={snowballcharge=10..}] run scoreboard players reset @s snowballcharge
execute as @a[scores={snowballcharge=1..}] unless score @s snowballcounter matches 1.. run scoreboard players reset @s snowballcharge
execute as @a[scores={snowballcounter=6..}] run scoreboard players reset @s snowballcounter