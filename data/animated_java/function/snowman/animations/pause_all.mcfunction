# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.snowman.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'snowman', 'function_path': 'animated_java:snowman/animations/pause_all'}
tag @s remove aj.snowman.animation.idle_lookaround.playing
tag @s remove aj.snowman.animation.idle_wave.playing
tag @s remove aj.snowman.animation.idle_sway.playing
tag @s remove aj.snowman.animation.target_player.playing
tag @s remove aj.snowman.animation.untarget_player.playing
tag @s remove aj.snowman.animation.prepare_shot.playing
tag @s remove aj.snowman.animation.shoot.playing
tag @s remove aj.snowman.animation.spawn.playing
tag @s remove aj.snowman.animation.damage.playing
tag @s remove aj.snowman.animation.death.playing