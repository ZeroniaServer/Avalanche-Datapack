execute unless block ~ ~ ~ target run return run kill

execute if entity @s[tag=damaged,tag=!break] run function powerups:barricade/damage
execute if entity @s[tag=break] run function powerups:barricade/break
