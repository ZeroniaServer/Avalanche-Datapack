#> Scoreboards
scoreboard objectives add CmdData dummy
scoreboard objectives add throwsb minecraft.used:minecraft.snowball
scoreboard objectives add playerHP dummy
scoreboard objectives add knocktime dummy
scoreboard objectives add lifetime dummy

#> Static scores
scoreboard players set $100 CmdData 100
scoreboard players set $200 CmdData 200
scoreboard players set $350 CmdData 350

#> Entity ID
scoreboard objectives add entityid dummy
scoreboard objectives add entityid.0 dummy
scoreboard objectives add entityid.1 dummy
scoreboard objectives add entityid.2 dummy
scoreboard objectives add entityid.3 dummy
scoreboard objectives add entityid.4 dummy
scoreboard objectives add entityid.5 dummy
scoreboard objectives add entityid.6 dummy
scoreboard objectives add entityid.7 dummy
scoreboard objectives add entityid.8 dummy
scoreboard objectives add entityid.9 dummy
scoreboard objectives add entityid.10 dummy
scoreboard objectives add entityid.11 dummy
scoreboard objectives add entityid.12 dummy
scoreboard objectives add entityid.13 dummy
scoreboard objectives add entityid.14 dummy
scoreboard objectives add entityid.15 dummy
scoreboard objectives add entityid.16 dummy
scoreboard objectives add entityid.17 dummy
scoreboard objectives add entityid.18 dummy
scoreboard objectives add entityid.19 dummy
scoreboard objectives add entityid.20 dummy
scoreboard objectives add entityid.21 dummy
scoreboard objectives add entityid.22 dummy
scoreboard objectives add entityid.23 dummy
scoreboard objectives add entityid.24 dummy
scoreboard objectives add entityid.25 dummy
scoreboard objectives add entityid.26 dummy
scoreboard objectives add entityid.27 dummy
scoreboard objectives add entityid.28 dummy
scoreboard objectives add entityid.29 dummy
scoreboard objectives add entityid.30 dummy
scoreboard objectives add entityid.31 dummy
scoreboard objectives add entityidset dummy
scoreboard players set #loaded entityid 1
scoreboard objectives add const dummy
scoreboard players set 2 const 2
scoreboard players set -1 const -1

#> Teams
team add Lobby
team add Spectator
team add Green
team add Red
team add noCol

team modify Lobby color blue
team modify Spectator color dark_blue

team modify Green color green
team modify Red color red

team modify noCol collisionRule never

#> Sleigh + WASD (thanks Cloud Wolf!)
function weapons:sleigh/init
function wasd:init

#> AJ Init
function animated_java:global/on_load
function animated_java:global/internal/gu/load