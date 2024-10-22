execute store result score $current CmdData run random value 1..3
execute as @s if score $current CmdData matches 1 run function animated_java:snowman/animations/idle_lookaround/play
execute as @s if score $current CmdData matches 2 run function animated_java:snowman/animations/idle_sway/play
execute as @s if score $current CmdData matches 3 run function animated_java:snowman/animations/idle_wave/play
scoreboard players reset $current CmdData