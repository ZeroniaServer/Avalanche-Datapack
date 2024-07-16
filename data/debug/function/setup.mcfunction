#> Scoreboards
scoreboard objectives add CmdData dummy
scoreboard objectives add throwsb minecraft.used:minecraft.snowball
#> Static scores
scoreboard players set $100 CmdData 100
scoreboard players set $200 CmdData 200
scoreboard players set $350 CmdData 350

#> Teams
team add Lobby
team add Spectator
team add Green
team add Red

team modify Lobby color blue
team modify Spectator color dark_blue

team modify Green color green
team modify Red color red