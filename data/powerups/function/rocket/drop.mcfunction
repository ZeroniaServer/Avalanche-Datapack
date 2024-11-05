playsound entity.item.pickup master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.6

execute store result score @s[team=Green] fireworkCount run clear @s snowball[custom_model_data=3] 0
execute store result score @s[team=Red] fireworkCount run clear @s snowball[custom_model_data=4] 0
scoreboard players add @s fireworkCount 1

function powerups:rocket/droprecursive