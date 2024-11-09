advancement revoke @s only powerups:place_sleigh
execute rotated as @s as @e[type=marker,tag=SpawnSleigh,limit=1] positioned as @s run function powerups:sleigh/getrotation
kill @e[type=marker,tag=SpawnSleigh]