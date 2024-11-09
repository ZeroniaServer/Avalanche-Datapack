execute at @s[tag=!SleighOffGround] run function powerups:sleigh/up
execute at @s[tag=SleighOffGround] run particle snowflake ^ ^-1 ^ 0 0.4 0 0 2 force
execute at @s[tag=SleighOffGround,predicate=gameplay:on_ground] run function powerups:sleigh/land