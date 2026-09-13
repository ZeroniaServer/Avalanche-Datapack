# compute friction based on rotation
execute unless score #input math matches 1.. on passengers if entity @s[type=minecart] run data modify storage avalanche:sleigh rotX set from entity @s Rotation[0]
data modify storage avalanche:sleigh friction.x set compute entity @s float powerups:sleigh/friction_x
data modify storage avalanche:sleigh friction.z set compute entity @s float powerups:sleigh/friction_z

# apply friction according to the sign of movement per axis
execute if predicate powerups:sleigh_has_motion run data modify storage avalanche:sleigh vehicle.dx set compute default float powerups:sleigh/apply_friction_x
execute if predicate powerups:sleigh_has_motion run data modify storage avalanche:sleigh vehicle.dz set compute default float powerups:sleigh/apply_friction_z