data remove entity @s Item

# calculate rotation based on snowball motion
# data modify storage avalanche:rocket mot set from entity @s Motion
# data modify storage avalanche:rocket motX set from storage avalanche:rocket mot[0]
# data modify storage avalanche:rocket motY set from storage avalanche:rocket mot[1]
# data modify storage avalanche:rocket motZ set from storage avalanche:rocket mot[2]
execute on origin at @s anchored eyes positioned 0. 0. 0. positioned ^ ^ ^2.5 summon marker run function powerups:throwable_init/calc_mot_rot
data modify entity @s Motion set from storage avalanche:rocket mot
tag @s add AirToggle
data modify storage avalanche:rocket rotX set from storage avalanche:rocket rot[0]
data modify storage avalanche:rocket rotY set from storage avalanche:rocket rot[1]
execute on passengers if entity @s[tag=RocketGreen] run data modify storage avalanche:rocket team set value "green"
execute on passengers if entity @s[tag=RocketRed] run data modify storage avalanche:rocket team set value "red"
execute on passengers at @s run function powerups:throwable_init/spawn_rocket_display with storage avalanche:rocket