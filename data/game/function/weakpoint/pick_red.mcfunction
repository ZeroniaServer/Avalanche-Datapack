scoreboard players operation $CurrentWeakRed CmdData = $RedWeakpoint CmdData
execute store result score $RedWeakpoint CmdData run random value 0..2
execute if score $CurrentWeakRed CmdData = $RedWeakpoint CmdData run return run function game:weakpoint/pick_red
function game:weakpoint/remove_red
scoreboard players set $WeakpointSpawnRed CmdData 0