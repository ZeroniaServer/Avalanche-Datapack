#> Start parkour
execute at @s[tag=!inParkour] if entity @s[x=-56,y=52,z=-70,dx=0,dy=0,dz=0] run tag @s add startParkour
execute at @s[tag=startParkour] run function lobby:parkour/start

#> In parkour
execute at @s[tag=inParkour] run function lobby:parkour/inparkour

#> Reset objectives/tags/effects for non-parkour players
execute if entity @s[tag=!inParkour] run function lobby:parkour/nonparkour