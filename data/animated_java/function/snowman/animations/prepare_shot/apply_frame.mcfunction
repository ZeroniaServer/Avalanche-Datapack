# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.snowman.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'snowman', 'function_path': 'animated_java:snowman/animations/prepare_shot/apply_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.prepare_shot.frame $(frame)
execute at @s run function animated_java:snowman/animations/prepare_shot/zzz/apply_frame with storage aj:temp