$scoreboard players display numberformat @s[team=Red] fireworkCount fixed [{"translate":"space.-3"},{"text":"\uE00D"},{"text":"$(player_fireworks)","color":"$(color)"},{"text":" $(healthicon)","color":"#4e5c24"},{"text":"$(health)$(healthdec)","color":"white"},{"translate":"space.1"}]
$scoreboard players display numberformat @s[team=Green] fireworkCount fixed [{"translate":"space.-3"},{"text":"\uE00E"},{"text":"$(player_fireworks)","color":"$(color)"},{"text":" $(healthicon)","color":"#4e5c24"},{"text":"$(health)$(healthdec)","color":"white"},{"translate":"space.1"}]

scoreboard objectives modify fireworkCount displayname {"translate":"space.-5"}