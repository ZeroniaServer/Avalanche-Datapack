execute on target if entity @s[tag=self] run scoreboard players set $foundinteraction CmdData 1
execute unless score $foundinteraction CmdData matches 1 run return 0

#> Mount sleighs
execute if entity @s[tag=SleighHitbox] on vehicle on passengers if entity @s[type=minecart] unless predicate powerups:sleigh_has_passenger run ride @a[tag=self,limit=1] mount @s