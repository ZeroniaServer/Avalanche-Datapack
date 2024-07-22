execute at @s[tag=!SleighOffGround] run function weapons:sleigh/up
execute at @s[tag=SleighOffGround] run particle snowflake ^ ^-1 ^ 0 0.4 0 0 2 force
execute at @s[tag=SleighOffGround,nbt={OnGround:1b}] run function weapons:sleigh/land