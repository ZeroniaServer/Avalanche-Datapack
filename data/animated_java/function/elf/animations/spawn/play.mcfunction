# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.elf.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'elf', 'function_path': 'animated_java:elf/animations/spawn/play'}
tag @s add aj.elf.animation.spawn.playing
scoreboard players set @s aj.spawn.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:elf/animations/spawn/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only