# initialize data
data modify storage avalanche:sleigh vehicle set from entity @s data.vehicle
# shouldn't need this, data defaults to 0
# data modify storage avalanche:sleigh vehicle.dx set compute default float {type:"add",inputs:[0,{type:"storage",storage:"avalanche:sleigh",path:"vehicle.dx"}]}
# data modify storage avalanche:sleigh vehicle.dz set compute default float {type:"add",inputs:[0,{type:"storage",storage:"avalanche:sleigh",path:"vehicle.dz"}]}

execute if score #input math matches 1.. unless score .s wasd matches 1 run function powerups:sleigh/accelerate
execute if score .s wasd matches 1 run function powerups:sleigh/brake

execute at @s if predicate powerups:sleigh_void run scoreboard players set @s sleighDamage 4
execute at @s if predicate powerups:sleigh_void run return run function powerups:sleigh/break

## friction ##
execute unless predicate game:in_air run data modify storage avalanche:sleigh friction.val set value .07
execute if predicate game:on_ground run data modify storage avalanche:sleigh friction.val set value .07
execute if predicate game:on_ice run data modify storage avalanche:sleigh friction.val set value .035
execute if predicate game:in_air unless predicate game:on_ground run data modify storage avalanche:sleigh friction.val set value 0
execute if predicate powerups:sleigh_has_friction run function powerups:sleigh/friction

### smooth rotation ###
data modify storage avalanche:vehicle pos set from entity @s Pos
execute if predicate powerups:sleigh_has_motion on passengers at @s[type=minecart] run function powerups:sleigh/rotate
execute if predicate powerups:sleigh_has_motion at @s[predicate=!game:in_air] run function powerups:sleigh/effects

scoreboard players add @s[tag=Surf] surfTimer 1
tag @s[scores={surfTimer=30..}] remove Surf
scoreboard players reset @s[scores={surfTimer=30..}] surfTimer
tag @s[tag=!Surf] add NoAI
execute if score #input math matches 1.. run tag @s remove NoAI
execute on passengers on passengers if predicate wasd:backward on vehicle on vehicle run tag @s add NoAI
execute unless score #bool math matches 0 run tag @s remove NoAI
execute on passengers on passengers if predicate wasd:jump on vehicle on vehicle run tag @s remove NoAI
execute unless predicate game:on_ground run tag @s remove NoAI

execute on passengers on passengers if entity @s[type=bamboo_raft] run tag @s add thisboat
execute at @s[tag=NoAI] summon marker run function powerups:sleigh/aboveground
execute on passengers on passengers if entity @s[type=bamboo_raft] run tag @s remove thisboat
execute if score $aboveground CmdData matches 1 run tag @s remove NoAI

execute if entity @s[tag=NoAI] on passengers on passengers if entity @s[type=bamboo_raft] run tag @s add solid
execute if entity @s[tag=!NoAI] on passengers on passengers if entity @s[type=bamboo_raft] run tag @s remove solid

data merge entity @s[tag=NoAI] {NoAI:1b}
data merge entity @s[tag=!NoAI] {NoAI:0b}

########################

### update motion ###
data modify entity @s Motion[0] set from storage avalanche:sleigh vehicle.dx
data modify entity @s Motion[2] set from storage avalanche:sleigh vehicle.dz
data modify entity @s data.vehicle set from storage avalanche:sleigh vehicle

function powerups:sleigh/pilot

#> Display states
execute on passengers if entity @s[type=item_display] run function powerups:sleigh/display