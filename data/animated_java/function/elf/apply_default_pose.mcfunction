# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.elf.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'elf', 'function_path': 'animated_java:elf/apply_default_pose'}
execute on passengers if entity @s[tag=aj.elf.bone.giftbox] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.49999999999999994f,0f,1f,0f,0.5f,-1.2246467991473532e-16f,0f,-1f,-0.5f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.elf.bone.head] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.43749999999999994f,0f,1f,0f,0f,-1.2246467991473532e-16f,0f,-1f,-0.5f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.elf.bone.body] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.49999999999999994f,0f,1f,0f,0.5f,-1.2246467991473532e-16f,0f,-1f,-0.5f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.elf.bone.right_arm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.49999999999999994f,0f,1f,0f,0.5f,-1.2246467991473532e-16f,0f,-1f,-0.5f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.elf.bone.left_arm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.5312499999999999f,0f,1f,0f,0.203125f,-1.2246467991473532e-16f,0f,-1f,-0.75f,0f,0f,0f,1f], start_interpolation: 0}