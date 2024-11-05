advancement revoke @s only powerups:place_sleigh
execute at @s positioned as @e[type=marker,tag=SpawnSleigh,limit=1] summon marker run function powerups:sleigh/getrotation
kill @e[type=marker,tag=SpawnSleigh,limit=1]