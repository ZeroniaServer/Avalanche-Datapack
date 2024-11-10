scoreboard players set $target entityid 0
execute if entity @s[advancements={entityid:target={bit0=true}}] run scoreboard players add $target entityid 1
execute if entity @s[advancements={entityid:target={bit1=true}}] run scoreboard players add $target entityid 2
execute if entity @s[advancements={entityid:target={bit2=true}}] run scoreboard players add $target entityid 4
execute if entity @s[advancements={entityid:target={bit3=true}}] run scoreboard players add $target entityid 8
execute if entity @s[advancements={entityid:target={bit4=true}}] run scoreboard players add $target entityid 16
execute if entity @s[advancements={entityid:target={bit5=true}}] run scoreboard players add $target entityid 32
execute if entity @s[advancements={entityid:target={bit6=true}}] run scoreboard players add $target entityid 64
execute if entity @s[advancements={entityid:target={bit7=true}}] run scoreboard players add $target entityid 128
execute if entity @s[advancements={entityid:target={bit8=true}}] run scoreboard players add $target entityid 256
execute if entity @s[advancements={entityid:target={bit9=true}}] run scoreboard players add $target entityid 512
execute if entity @s[advancements={entityid:target={bit10=true}}] run scoreboard players add $target entityid 1024
execute if entity @s[advancements={entityid:target={bit11=true}}] run scoreboard players add $target entityid 2048
execute if entity @s[advancements={entityid:target={bit12=true}}] run scoreboard players add $target entityid 4096
execute if entity @s[advancements={entityid:target={bit13=true}}] run scoreboard players add $target entityid 8192
execute if entity @s[advancements={entityid:target={bit14=true}}] run scoreboard players add $target entityid 16384
execute if entity @s[advancements={entityid:target={bit15=true}}] run scoreboard players add $target entityid 32768
execute if entity @s[advancements={entityid:target={bit16=true}}] run scoreboard players add $target entityid 65536
execute if entity @s[advancements={entityid:target={bit17=true}}] run scoreboard players add $target entityid 131072
execute if entity @s[advancements={entityid:target={bit18=true}}] run scoreboard players add $target entityid 262144
execute if entity @s[advancements={entityid:target={bit19=true}}] run scoreboard players add $target entityid 524288
execute if entity @s[advancements={entityid:target={bit20=true}}] run scoreboard players add $target entityid 1048576
execute if entity @s[advancements={entityid:target={bit21=true}}] run scoreboard players add $target entityid 2097152
execute if entity @s[advancements={entityid:target={bit22=true}}] run scoreboard players add $target entityid 4194304
execute if entity @s[advancements={entityid:target={bit23=true}}] run scoreboard players add $target entityid 8388608
execute if entity @s[advancements={entityid:target={bit24=true}}] run scoreboard players add $target entityid 16777216
execute if entity @s[advancements={entityid:target={bit25=true}}] run scoreboard players add $target entityid 33554432
execute if entity @s[advancements={entityid:target={bit26=true}}] run scoreboard players add $target entityid 67108864
execute if entity @s[advancements={entityid:target={bit27=true}}] run scoreboard players add $target entityid 134217728
execute if entity @s[advancements={entityid:target={bit28=true}}] run scoreboard players add $target entityid 268435456
execute if entity @s[advancements={entityid:target={bit29=true}}] run scoreboard players add $target entityid 536870912
execute if entity @s[advancements={entityid:target={bit30=true}}] run scoreboard players add $target entityid 1073741824
execute if entity @s[advancements={entityid:target={bit31=true}}] run scoreboard players operation $target entityid *= -1 const
execute as @e[type=arrow] if score @s entityid = $target entityid at @s run function entityid:target/on_target
execute as @e[type=snowball] if score @s entityid = $target entityid on passengers at @s run function entityid:target/on_target
scoreboard players reset $target entityid