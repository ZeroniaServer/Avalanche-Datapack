tag @s add self
execute if score $gamestate CmdData matches 3 if entity @s[team=!Lobby,team=!Spectator,tag=!Knockout,predicate=game:void] at @s run function powerups:rocket/drop
execute as @a[team=!Lobby,team=!Spectator,tag=!Knockout] run scoreboard players add @s MVPdeath 1
execute if entity @s[team=Lobby] run tp @s @s
execute if entity @s[team=Lobby] run return run tp @s -65 52 -108 -180 0
execute if entity @s[team=Spectator] run tellraw @s [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{translate:"error.spectate_bounds",color:"red"}]
execute if entity @s[team=Spectator] run return run tp @s -63 85 -221

execute unless score $gamestate CmdData matches 4 run clear @s snowball
execute unless score $gamestate CmdData matches 4 run clear @s ghast_spawn_egg
execute if score $gamestate CmdData matches 3 run clear @s clay
execute unless score $gamestate CmdData matches 4 run clear @s elytra

# TODO: make sure hats are not diamond hoes so they don't get cleared
execute unless score $gamestate CmdData matches 4 run clear @s diamond_hoe

#> Knockout messages
tag @s add self
scoreboard players set #attacker CmdData 0
execute if entity @s[tag=!SleighDismounted] on attacker run scoreboard players set #attacker CmdData 1
execute unless score $gamestate CmdData matches 4 if entity @s[tag=SleighDismounted] run tellraw @a [{translate:"knockout.void.sleigh",color:"dark_aqua",with:[{selector:"@s"}]}]
execute unless score $gamestate CmdData matches 4 if score #attacker CmdData matches 0 if entity @s[tag=!SleighDismounted] run tellraw @a [{translate:"knockout.void.accident",color:"dark_aqua",with:[{selector:"@s"}]}]
execute unless score $gamestate CmdData matches 4 if entity @s[tag=!SleighDismounted] unless score @s snowmanhit matches 1.. on attacker run tellraw @a [{translate:"knockout.void.direct",color:"dark_aqua",with:[{selector:"@a[tag=self,limit=1]"},{selector:"@s"}]}]
execute unless score $gamestate CmdData matches 4 if entity @s[tag=!SleighDismounted] if score @s snowmanhit matches 1.. on attacker run tellraw @a [{translate:"knockout.void.snowman",color:"dark_aqua",with:[{selector:"@a[tag=self,limit=1]"},{selector:"@s"}]}]
execute if entity @s[tag=!SleighDismounted] on attacker run scoreboard players add @s MVPkill 1

#> Kill any no-drop items owned by this player
execute unless score $gamestate CmdData matches 4 as @e[type=item] if items entity @s contents *[custom_data~{NoDrop:1b}] store success score @s blasttime on origin if entity @s[tag=self]
execute unless score $gamestate CmdData matches 4 as @e[type=item,scores={blasttime=1..}] run kill @s

tag @s remove self

function player:respawn