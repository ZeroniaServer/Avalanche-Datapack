scoreboard players set $20 CmdData 20
scoreboard players set $60 CmdData 60
scoreboard players set $10 CmdData 10

#> Remove 1 tick from the timer
scoreboard players remove $ticks CmdData 1

#> False offset
scoreboard players add $ticks CmdData 20

#> calculate remaining minutes and seconds
#Minutes
scoreboard players operation $minutes CmdData = $ticks CmdData
scoreboard players operation $minutes CmdData /= $20 CmdData
scoreboard players operation $minutes CmdData /= $60 CmdData

scoreboard players operation $minutes_digit1 CmdData = $minutes CmdData
scoreboard players operation $minutes_digit2 CmdData = $minutes CmdData
scoreboard players operation $minutes_digit1 CmdData /= $10 CmdData
scoreboard players operation $minutes_digit2 CmdData %= $10 CmdData

#Seconds
scoreboard players operation $seconds CmdData = $ticks CmdData
scoreboard players operation $seconds CmdData /= $20 CmdData
scoreboard players operation $seconds CmdData %= $60 CmdData

scoreboard players operation $seconds_digit1 CmdData = $seconds CmdData
scoreboard players operation $seconds_digit2 CmdData = $seconds CmdData
scoreboard players operation $seconds_digit1 CmdData /= $10 CmdData
scoreboard players operation $seconds_digit2 CmdData %= $10 CmdData

#> Undo false offset
scoreboard players remove $ticks CmdData 20

execute if score $minutes CmdData matches 10.. run data modify storage game:data minutes set value [{score:{name:"$minutes_digit1",objective:"CmdData"},font:"minecraft:timer",color:"#a8a004"},{text:" ",font:"minecraft:timer",color:"#a8a004"},{score:{name:"$minutes_digit2",objective:"CmdData"},font:"minecraft:timer",color:"#a8a004"}]
execute if score $seconds CmdData matches 10.. run data modify storage game:data seconds set value [{score:{name:"$seconds_digit1",objective:"CmdData"},font:"minecraft:timer",color:"#a8a004"},{text:" ",font:"minecraft:timer",color:"#a8a004"},{score:{name:"$seconds_digit2",objective:"CmdData"},font:"minecraft:timer",color:"#a8a004"}]
execute if score $minutes CmdData matches ..9 run data modify storage game:data minutes set value [{text:"0 ",font:"minecraft:timer",color:"#a8a004"},{score:{name:"$minutes_digit2",objective:"CmdData"},font:"minecraft:timer",color:"#a8a004"}]
execute if score $seconds CmdData matches ..9 run data modify storage game:data seconds set value [{text:"0 ",font:"minecraft:timer",color:"#a8a004"},{score:{name:"$seconds_digit2",objective:"CmdData"},font:"minecraft:timer",color:"#a8a004"}]

function bossbars:set_timer with storage game:data