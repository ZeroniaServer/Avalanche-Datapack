#> Bossbars
function bossbars:loop

#> Weapons
function powerups:loop

#> Player logic
function player:health
function player:knockout

#> Game logic
function gameplay:avalanche/loop

#> EntityID
execute if score #loaded entityid matches 1 run function entityid:real_tick

#> Store player UUIDs
execute as @a unless score @s UUIDscore matches -2147483648..2147483647 store result score @s UUIDscore run data get entity @s UUID[0]

#> Effects
effect give @a saturation infinite 100 true
effect give @a night_vision infinite 100 true
effect give @a instant_health infinite 100 true
effect give @a fire_resistance infinite 100 true

#> AJ tick
function animated_java:global/on_tick