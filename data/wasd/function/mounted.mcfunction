execute if predicate wasd:forward unless predicate wasd:backward unless predicate wasd:left unless predicate wasd:right rotated ~ 0 run function wasd:move {direction:"^ ^ ^0.017479280930566186"}
execute if predicate wasd:forward unless predicate wasd:backward if predicate wasd:left unless predicate wasd:right rotated ~ 0 run function wasd:move {direction:"^0.017479280930566186 ^ ^0.017479280930566186"}
execute if predicate wasd:forward unless predicate wasd:backward unless predicate wasd:left if predicate wasd:right rotated ~ 0 run function wasd:move {direction:"^-0.017479280930566186 ^ ^0.017479280930566186"}
execute unless predicate wasd:forward if predicate wasd:backward unless predicate wasd:left unless predicate wasd:right rotated ~ 0 run function wasd:move {direction:"^ ^ ^-0.017479280930566186"}
execute unless predicate wasd:forward if predicate wasd:backward if predicate wasd:left unless predicate wasd:right rotated ~ 0 run function wasd:move {direction:"^0.017479280930566186 ^ ^-0.017479280930566186"}
execute unless predicate wasd:forward if predicate wasd:backward unless predicate wasd:left if predicate wasd:right rotated ~ 0 run function wasd:move {direction:"^-0.017479280930566186 ^ ^-0.017479280930566186"}
execute unless predicate wasd:forward unless predicate wasd:backward if predicate wasd:left unless predicate wasd:right rotated ~ 0 run function wasd:move {direction:"^0.017479280930566186 ^ ^"}
execute unless predicate wasd:forward unless predicate wasd:backward unless predicate wasd:left if predicate wasd:right rotated ~ 0 run function wasd:move {direction:"^-0.017479280930566186 ^ ^"}
execute unless predicate wasd:forward unless predicate wasd:backward unless predicate wasd:left unless predicate wasd:right run data modify storage cw_wasd Motion set value [0.0,0.0,0.0]

execute store success score .w wasd if predicate wasd:forward
execute store success score .a wasd if predicate wasd:left
execute store success score .s wasd if predicate wasd:backward
execute store success score .d wasd if predicate wasd:right