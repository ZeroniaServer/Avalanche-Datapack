$summon snowball ~ ~ ~ {LeftOwner:1,Motion:[$(x)d,$(y)d,$(z)d],Tags:["SnowmanSnowball","HasType","init"],NoGravity:1b,Item:{id:"minecraft:snowball",count:1,components:{item_model:"minecraft:weapons/snowball"}},Owner:$(UUID),Passengers:[{id:"minecraft:arrow",pickup:0b,Tags:["SnowmanSnowball","ThrowableArrow","init","AirToggle"],PierceLevel:10,Silent:1b,damage:0.0001d,Motion:[$(x)d,$(y)d,$(z)d],Owner:$(UUID)}]}
execute as @e[type=snowball,tag=init,limit=1] run function entityid:assign_tag
execute as @e[type=snowball,tag=init,limit=1] run tag @s remove init
execute as @e[type=arrow,tag=init,limit=1] run function entityid:assign_tag
execute as @e[type=arrow,tag=init,limit=1] run tag @s remove init