# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

execute store result entity @s Rotation[0] float -0.01 run scoreboard players get $math.tan.x bs.in
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^10.0
execute store result score $math.tan bs.out run data get entity @s Pos[0] 100
execute store result score #math.tan bs.data run data get entity @s Pos[2] 100
tp @s 0 0 0
scoreboard players operation $math.tan bs.out *= 1000 bs.const
return run scoreboard players operation $math.tan bs.out /= #math.tan bs.data
