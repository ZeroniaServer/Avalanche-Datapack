place template avalanche:ice_wall_bottom -75 16 -263 none
place template avalanche:ice_wall_top -75 64 -263 none

place template avalanche:ice_wall_bottom -51 16 -179 180
place template avalanche:ice_wall_top -51 64 -179 180

scoreboard players set $wallplaced CmdData 1

fill -63 21 -179 -63 60 -263 minecraft:barrier replace minecraft:air

function game:repairblockers