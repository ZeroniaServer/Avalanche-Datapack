advancement revoke @s only weapons:place_sleigh
execute at @s positioned as @e[type=marker,tag=SpawnSleigh,limit=1] summon marker run function weapons:sleigh/getrotation
kill @e[type=marker,tag=SpawnSleigh,limit=1]