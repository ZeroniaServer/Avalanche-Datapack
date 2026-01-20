data modify entity @s Pos set from storage entityid:target Motion
execute positioned 0. 0 0. facing entity @s feet run rotate @s ~ ~
$execute rotated as @s positioned ^ ^ ^0.2 positioned ~ ~-1000 ~ run scoreboard players operation @e[type=item_display,tag=barricade,limit=$(limit),distance=..2,sort=nearest] UUIDscore = $tempuuid UUIDscore
$execute as @e[type=item_display,predicate=player:matches_uuid,limit=$(limit)] at @s positioned ~ ~1000 ~ run function powerups:barricade/$(type)
kill