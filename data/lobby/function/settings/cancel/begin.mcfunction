scoreboard players set $mcancelcount CmdData 10
setblock -56 53 -90 warped_wall_sign[facing=west]{front_text:{messages:['{"text":""}','{"translate":"customizer.edit","color":"red","bold":true}','{"translate":"customizer.edit.available_in","color":"white","with":[{"text":"10","color":"#ff8585"}]}','{"text":"","clickEvent":{"action":"run_command","value":"/trigger cancelMatch set 1"}}']}}
schedule function lobby:settings/cancel/counter 1s