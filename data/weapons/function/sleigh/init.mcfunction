scoreboard players set #-100 constant -100
scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #3 constant 3
scoreboard players set #4 constant 4
scoreboard players set #5 constant 5
scoreboard players set #6 constant 6
scoreboard players set #10 constant 10
scoreboard players set #20 constant 20
scoreboard players set #60 constant 60
scoreboard players set #100 constant 100
scoreboard players set #1000 constant 1000

scoreboard objectives add vehicle dummy
scoreboard objectives add vehicle.id dummy
scoreboard objectives add vehicle.dx dummy
scoreboard objectives add vehicle.dz dummy
scoreboard players set .friction vehicle 15
scoreboard players set .damper vehicle 5

team add noCol
team modify noCol collisionRule never