#> Scoreboards
scoreboard objectives add CmdData dummy
scoreboard objectives add throwsb minecraft.used:minecraft.snowball
scoreboard objectives add playerHP dummy
scoreboard objectives add playerDamage dummy
scoreboard objectives add knocktime dummy
scoreboard objectives add lifetime dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
scoreboard objectives add team dummy
scoreboard objectives add blizzardtime dummy
scoreboard objectives add snowmark dummy
scoreboard objectives add UUIDscore dummy
scoreboard objectives add snowballcharge dummy
scoreboard objectives add snowballcounter dummy
scoreboard objectives add healticks dummy
scoreboard objectives add ambientfxplayer dummy
scoreboard objectives remove breakicicle
scoreboard objectives add breakicicle minecraft.broken:minecraft.elytra
scoreboard objectives add blasttime dummy
scoreboard objectives add giftweight dummy
scoreboard objectives add leftgame minecraft.custom:minecraft.leave_game
scoreboard objectives add leavegame trigger
scoreboard objectives add BarricadeTracker dummy
scoreboard objectives add readyup trigger
scoreboard objectives add modify trigger
scoreboard objectives add fireworkCount dummy
scoreboard objectives modify fireworkCount displayname {translate:"space.-5"}
scoreboard objectives add modiowner dummy
scoreboard objectives add spawnPlaceable minecraft.used:minecraft.ghast_spawn_egg
scoreboard objectives add placeBarricade minecraft.used:minecraft.clay
scoreboard objectives add hasBarricades dummy
scoreboard objectives add hasCampfires dummy
scoreboard objectives add hasSnowmen dummy
scoreboard objectives add hasSleighs dummy
scoreboard objectives add hasHotChocos dummy
scoreboard objectives add hasIcicles dummy
scoreboard objectives add respawn dummy
scoreboard objectives add coalblind dummy
scoreboard objectives add sleighDamage dummy
scoreboard objectives add surfTimer dummy
scoreboard objectives add leavecheck dummy
scoreboard players add $curr leavecheck 0
scoreboard objectives add spectate trigger
scoreboard objectives add joinred trigger
scoreboard objectives add joingreen trigger
scoreboard objectives add snowmanhit dummy
scoreboard objectives add iframe dummy
scoreboard objectives add mountaintime dummy
scoreboard objectives add sleighjumpcd dummy
scoreboard objectives add settings trigger
scoreboard objectives add HitmarkerType dummy
scoreboard objectives add HitmarkerTimer dummy
scoreboard objectives remove GamesPlayed
scoreboard objectives add toggleTips trigger
scoreboard objectives add MVPkill dummy
scoreboard objectives add MVPdeath dummy
scoreboard objectives add MVPdamage dummy
scoreboard objectives add MVProcket dummy
scoreboard objectives add impulse_cooldown dummy
function iris:setup/scoreboard
execute unless score $gamestate CmdData matches -1.. run scoreboard players set $gamestate CmdData -1
execute unless score $Minutes CmdData matches 1.. run scoreboard players set $Minutes CmdData 10
execute unless score $PrepSeconds CmdData matches 1.. run scoreboard players set $PrepSeconds CmdData 30
execute unless score $Barricades CmdData matches 1.. run scoreboard players set $Barricades CmdData 120
scoreboard objectives add cancelMatch trigger

#> Static scores
scoreboard players set $100 CmdData 100
scoreboard players set $200 CmdData 200
scoreboard players set $350 CmdData 350
scoreboard players set $1000 CmdData 1000
execute unless score $MaxTeamSize CmdData matches 0.. run scoreboard players set $MaxTeamSize CmdData 5
execute unless score $forcedmodes CmdData matches 0.. run scoreboard players set $forcedmodes CmdData 1

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

#> Parkour
scoreboard objectives add parkourMins dummy
scoreboard objectives add parkourSecs dummy
scoreboard objectives add parkourDeci dummy
scoreboard objectives add parkourDeci2 dummy
scoreboard objectives add parkourTimer dummy
scoreboard objectives add finalParkourTime dummy
scoreboard objectives add bestParkourMins dummy
scoreboard objectives add bestParkourSecs dummy
scoreboard objectives add bestParkourDeci dummy
scoreboard objectives add bestParkourDeci2 dummy
scoreboard objectives add bestParkourTime dummy
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add clickcooldown dummy

#> Teams
team add Lobby
team add Spectator
team add Green
team add Red
team add noCol
team add Collide
team add Developer

team modify Lobby color blue
team modify Spectator color dark_blue
team modify Developer color dark_green

team modify Lobby collisionRule never

team modify Green color green
team modify Red color red

team modify noCol collisionRule never
team modify Collide collisionRule pushOwnTeam

team modify Red friendlyFire false
team modify Green friendlyFire false

#> Sleigh + WASD (thanks Cloud Wolf!)
function powerups:sleigh/init
function wasd:init

#> AJ Init
function animated_java:global/on_load
function animated_java:global/internal/gu/load

#> Lobby worldspawn
setworldspawn -63 52 -95
spawnpoint @a -63 52 -95

#> Gamerules
gamerule mobGriefing false
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule naturalRegeneration false
# gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule disableRaids true
gamerule doWardenSpawning false
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule announceAdvancements false
gamerule doTraderSpawning false
gamerule spectatorsGenerateChunks false
gamerule maxEntityCramming 10000
gamerule freezeDamage true
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule doTileDrops true
gamerule locatorBar false

#> Join area modifications
fill -96 58 -145 -94 57 -145 air replace minecraft:barrier
setblock -95 54 -147 air
setblock -34 50 -148 air
setblock -95 54 -147 air
setblock -95 54 -147 oak_wall_sign{front_text:{messages:[{translate:"lobby.leave_sign.format.1",color:"#00CEFF",click_event:{action:"run_command",command:"/trigger leavegame"},with:[{translate:"lobby.leave_sign.1"},{translate:"lobby.leave_sign.2"},{translate:"lobby.leave_sign.3"},{translate:"lobby.leave_sign.4"}]},{translate:"lobby.leave_sign.format.2",color:"#00CEFF",with:[{translate:"lobby.leave_sign.1"},{translate:"lobby.leave_sign.2"},{translate:"lobby.leave_sign.3"},{translate:"lobby.leave_sign.4"}]},{translate:"lobby.leave_sign.format.3",color:"aqua",bold:true,with:[{translate:"lobby.leave_sign.1"},{translate:"lobby.leave_sign.2"},{translate:"lobby.leave_sign.3"},{translate:"lobby.leave_sign.4"}]},{translate:"lobby.leave_sign.format.4",color:"aqua",bold:true,with:[{translate:"lobby.leave_sign.1"},{translate:"lobby.leave_sign.2"},{translate:"lobby.leave_sign.3"},{translate:"lobby.leave_sign.4"}]}]}}
setblock -34 50 -149 air
setblock -34 50 -149 oak_wall_sign[facing=east]{front_text:{messages:[{translate:"lobby.leave_sign.format.1",color:"#00CEFF",click_event:{action:"run_command",command:"/trigger leavegame"},with:[{translate:"lobby.leave_sign.1"},{translate:"lobby.leave_sign.2"},{translate:"lobby.leave_sign.3"},{translate:"lobby.leave_sign.4"}]},{translate:"lobby.leave_sign.format.2",color:"#00CEFF",with:[{translate:"lobby.leave_sign.1"},{translate:"lobby.leave_sign.2"},{translate:"lobby.leave_sign.3"},{translate:"lobby.leave_sign.4"}]},{translate:"lobby.leave_sign.format.3",color:"aqua",bold:true,with:[{translate:"lobby.leave_sign.1"},{translate:"lobby.leave_sign.2"},{translate:"lobby.leave_sign.3"},{translate:"lobby.leave_sign.4"}]},{translate:"lobby.leave_sign.format.4",color:"aqua",bold:true,with:[{translate:"lobby.leave_sign.1"},{translate:"lobby.leave_sign.2"},{translate:"lobby.leave_sign.3"},{translate:"lobby.leave_sign.4"}]}]}}
fill -85 50 -113 -35 40 -162 minecraft:stripped_cherry_wood[axis=z] replace minecraft:barrel
setblock -66 50 -110 stripped_cherry_wood[axis=z]
setblock -64 50 -111 stripped_cherry_wood[axis=z]
setblock -63 50 -113 stripped_cherry_wood[axis=z]
fill -16 45 -235 -13 47 -237 minecraft:stripped_cherry_wood[axis=y] replace barrel[facing=up]
fill -16 45 -235 -13 47 -237 minecraft:stripped_cherry_wood[axis=z] replace barrel[facing=south]
fill -111 46 -207 -113 47 -205 minecraft:stripped_cherry_wood[axis=y] replace barrel[facing=up]
fill -111 46 -207 -113 47 -205 minecraft:stripped_cherry_wood[axis=z] replace barrel[facing=north]
fill -87 51 -142 -101 57 -156 stripped_cherry_wood[axis=y] replace barrel
function debug:protect
data modify block -48 65 -65 profile set from block -82 65 -58 profile
data modify block -48 65 -58 profile set from block -82 65 -58 profile
data modify block -82 65 -86 profile set from block -82 65 -58 profile
data modify block -82 65 -90 profile set from block -82 65 -58 profile
setblock -89 54 -149 air
setblock -113 47 -213 spruce_fence
setblock -13 47 -229 spruce_fence

#> Bossbars
function bossbars:create

#> Teleport poles

#Lobby -> teams
setblock -64 47 -128 minecraft:spruce_planks
fill -62 47 -128 -61 47 -128 minecraft:spruce_planks
kill @e[type=item_display,tag=TeleportPole]
kill @e[type=interaction,tag=LobbyTPInteraction]


summon minecraft:item_display -63 48 -127 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_blue"}},item_display:"head",Tags:["TeleportPole","SpectatePole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -63 48 -127 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpSpectate"],response:1b}
fill -63 48 -127 -63 50 -127 cobblestone_wall

summon minecraft:item_display -65 48 -128 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_green"}},item_display:"head",Tags:["TeleportPole","GreenPole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -65 48 -128 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpGreen"],response:1b}
fill -65 48 -128 -65 50 -128 cobblestone_wall

summon minecraft:item_display -61 48 -128 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_red"}},item_display:"head",Tags:["TeleportPole","RedPole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -61 48 -128 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpRed"],response:1b}
fill -61 48 -128 -61 50 -128 cobblestone_wall

#Teams -> Lobby
summon minecraft:item_display -80 52 -148 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_green"}},item_display:"head",Tags:["TeleportPole","GreenLobbyPole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -80 52 -148 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpLobby"],response:1b}
fill -80 52 -148 -80 54 -148 cobblestone_wall

summon minecraft:item_display -42 48 -148 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_red"}},item_display:"head",Tags:["TeleportPole","RedLobbyPole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -42 48 -148 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpLobby"],response:1b}
fill -42 48 -148 -42 50 -148 cobblestone_wall

#Teams -> Teams
summon minecraft:item_display -80 52 -152 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_red"}},item_display:"head",Tags:["TeleportPole","GreenRedPole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -80 52 -152 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpRed"],response:1b}
fill -80 52 -152 -80 54 -152 cobblestone_wall

summon minecraft:item_display -42 48 -152 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_green"}},item_display:"head",Tags:["TeleportPole","RedGreenPole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -42 48 -152 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpGreen"],response:1b}
fill -42 50 -152 -42 50 -152 cobblestone_wall

summon minecraft:item_display -4 45 -233 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_blue"}},item_display:"head",Tags:["TeleportPole","LeavePole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -4 45 -233 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpLobby"],response:1b}
fill -4 45 -233 -4 47 -233 heavy_core

summon minecraft:item_display -122 45 -209 {item:{id:"diamond_hoe",components:{item_model:"minecraft:custom/pole_blue"}},item_display:"head",Tags:["TeleportPole","LeavePole"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0.0,2.8,0.0],scale:[1,1,1]}}
summon interaction -122 45 -209 {width:1,height:4.6,Tags:["LobbyTPInteraction","WarpLobby"],response:1b}
fill -122 45 -209 -122 47 -209 heavy_core

execute as @e[tag=LobbyTPInteraction,tag=!entityid_assigned] run function entityid:assign_tag

#> Text displays
kill @e[type=text_display,tag=LobbyText]
summon text_display -63 50 -126.15 {Tags:["LobbyText"],text:["",{translate:"lobby.spectate",color:"dark_blue"}],transformation:{scale:[1.0f,1.0f,1.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}
summon text_display -65 49 -127.15 {Tags:["LobbyText"],text:["",{text:" "},{translate:":arrow_left:",color:"#2ba818"},{text:" "}],transformation:{scale:[2.0f,2.0f,2.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}
summon text_display -61 49 -127.15 {Tags:["LobbyText"],text:["",{text:" "},{translate:":arrow_right:",color:"#c40000"},{text:" "}],transformation:{scale:[2.0f,2.0f,2.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}


summon text_display -41.15 49 -148 {Tags:["LobbyText"],text:["",{text:" "},{translate:":arrow_left:",color:"#c40000"},{text:" "}],transformation:{scale:[2.0f,2.0f,2.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}
summon text_display -41.15 49 -152 {Tags:["LobbyText"],text:["",{text:" "},{translate:":arrow_up:",color:"#2ba818"},{text:" "}],transformation:{scale:[2.0f,2.0f,2.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}

summon text_display -79.85 53 -152 {Tags:["LobbyText"],text:["",{text:" "},{translate:":arrow_up:",color:"#c40000"},{text:" "}],transformation:{scale:[2.0f,2.0f,2.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,-1f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}
summon text_display -79.85 53 -148 {Tags:["LobbyText"],text:["",{text:" "},{translate:":arrow_right:",color:"#2ba818"},{text:" "}],transformation:{scale:[2.0f,2.0f,2.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,-1f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}

summon text_display -89 54.35 -149 {Tags:["LobbyText"],text:["",{text:" "},{translate:"lobby.join.green",color:"green"},{text:" "}],transformation:{scale:[1.0f,1.0f,1.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f]},background:-12763843,shadow:0b,see_through:0b,alignment:"center"}
summon text_display -36 50.35 -151 {Tags:["LobbyText"],text:["",{text:" "},{translate:"lobby.join.red",color:"red"},{text:" "}],transformation:{scale:[1.0f,1.0f,1.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,-1f,0f,1f],translation:[0f,0f,0f]},background:-12763843,shadow:0b,see_through:0b,alignment:"center"}

summon text_display -121.15 46 -209 {Tags:["LobbyText"],text:["",{text:" "},{translate:"lobby.leave_game",color:"dark_blue"},{text:" "}],transformation:{scale:[1.0f,1.0f,1.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}
summon text_display -3.85 46 -233 {Tags:["LobbyText"],text:["",{text:" "},{translate:"lobby.leave_game",color:"dark_blue"},{text:" "}],transformation:{scale:[1.0f,1.0f,1.0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,-1f,0f,1f],translation:[0f,0f,0f]},background:-3158065,shadow:0b,see_through:0b,alignment:"center"}

#> Base campfires
kill @e[type=marker,tag=BaseCampfire]
summon marker -114 46 -210 {Tags:["BaseCampfire","Green"]}
summon marker -12 45 -232 {Tags:["BaseCampfire","Red"]}

#> X Particles
kill @e[type=marker,tag=XParticle]

#> Forceload
forceload add -144 -33 47 -336
forceload add 0 0

setworldspawn -65 52 -65

#> Messages
# TODO: UPDATE PACK LINKS!
data modify storage avalanche:messages ResourcePack set value [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{text:"We strongly recommend you to ",color:"gray"},{text:"use the resource pack",bold:true,color:"red"},{text:". ",color:"gray"},{text:"[CLICK HERE TO DOWNLOAD]",color:"green",bold:true,underlined:true,click_event:{action:"open_url",url:"https://drive.google.com/uc?export=download&id=1RlfSKdwBDN7jrN_7GnAtJ5a99LRYf4in"}}]
data modify storage avalanche:messages OutdatedPack set value [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{text:"You are using an outdated version of the resource pack! ",color:"gray"},{text:"[CLICK HERE TO DOWNLOAD THE LATEST VERSION]",color:"green",bold:true,underlined:true,click_event:{action:"open_url",url:"https://drive.google.com/uc?export=download&id=1RlfSKdwBDN7jrN_7GnAtJ5a99LRYf4in"}}]
data modify storage avalanche:messages SettingsBox set value [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{translate:"chat.settings_tp",color:"#f089a8",underlined:true,with:[{translate:"chat.settings_box",color:"#1dc6c7",bold:true}]}]
data modify storage avalanche:messages ReadyToPlay set value [{text:"[",color:"dark_gray"},{text:"!",color:"green",bold:true},{text:"] ",color:"dark_gray"},{translate:"chat.the_game",color:"gray",with:[{translate:"chat.ready_to_play",color:"green",bold:true}]}]

#> Remove void platform
fill -8 -61 -8 24 -61 -1 air