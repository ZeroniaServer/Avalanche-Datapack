data modify entity @s Pos set from storage entityid:target Motion
execute positioned 0. 0 0. facing entity @s feet run rotate @s ~ ~
execute rotated as @s positioned ^ ^ ^0.2 run scoreboard players operation @n[type=item_display,tag=barricade] UUIDscore = $tempuuid UUIDscore
tag @n[type=item_display,predicate=player:matches_uuid] add damaged
kill