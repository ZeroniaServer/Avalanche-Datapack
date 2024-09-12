#> Bossbars
function bossbars:loop

#> Weapons
function weapons:loop

#> Player logic
function player:health
function player:knockout

#> EntityID
execute if score #loaded entityid matches 1 run function entityid:real_tick

#> Effects
effect give @a saturation infinite 100 true
effect give @a instant_health infinite 100 true
effect give @a fire_resistance infinite 100 true