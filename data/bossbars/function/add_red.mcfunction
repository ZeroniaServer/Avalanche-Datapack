bossbar add bar_r_main {"text":"\uE005"}
bossbar add bar_r_green {"text":"\uE007"}
bossbar add bar_r_red {"text":"\uE008"}

bossbar set bar_r_main color white
bossbar set bar_r_green color blue
bossbar set bar_r_red color pink

bossbar set bar_r_main max 200
bossbar set bar_r_green max 200
bossbar set bar_r_red max 200

bossbar set bar_r_green value 200

scoreboard players set $bar_r_main CmdData 0