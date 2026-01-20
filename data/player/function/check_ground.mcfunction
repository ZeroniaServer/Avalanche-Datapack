# record last on ground position to invisible item in saddle slot
execute unless items entity @s saddle * run item replace entity @s saddle with slime_ball[equippable={slot:"saddle"}]

execute if predicate game:on_ground run return run function player:record_ground
execute if predicate wasd:on_sleigh on vehicle on vehicle if predicate game:on_ground on passengers on passengers if entity @s[type=player] run function player:record_ground