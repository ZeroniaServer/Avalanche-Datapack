execute on target if entity @s[tag=self] run scoreboard players set $foundinteraction CmdData 1
execute unless score $foundinteraction CmdData matches 1 run return 0

# Add stuff here