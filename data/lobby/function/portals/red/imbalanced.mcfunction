execute unless score @s joinred matches 1.. run title @s actionbar ["",{"translate":"lobby.try_join","color":"aqua","bold":false,"with":[{"translate":"lobby.try_join.green","color":"green","bold":true},{"translate":"lobby.try_join.team","color":"aqua","bold":false}]}]
execute unless score @s joinred matches 1.. run title @s times 0 30 5
execute unless score @s joinred matches 1.. run return run tag @s add tryJoinRed

execute if score @s joinred matches 1.. run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"lobby.try_join.imbalanced","color":"red","bold":true}]
execute if score @s joinred matches 1.. run tellraw @s ["",{"translate":"lobby.try_join","color":"dark_aqua","italic":true,"with":[{"translate":"lobby.try_join.green","color":"green","bold":true,"italic":true},{"translate":"lobby.try_join.team","color":"dark_aqua","italic":true}]}]