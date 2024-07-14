#> Scoreboards
scoreboard objectives add CmdData dummy

#> Static scores
scoreboard players set $100 CmdData 100
scoreboard players set $200 CmdData 200

#> Teams
team add Lobby
team add Spectator
team add Green
team add Red

team modify Lobby color blue
team modify Spectator color dark_blue

team modify Green color green
team modify Red color red