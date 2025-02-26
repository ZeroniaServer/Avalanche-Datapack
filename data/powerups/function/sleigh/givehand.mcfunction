$loot $(func) loot {\
    "pools": [\
        {\
            "rolls": 1,\
            "entries": [\
                {\
                    "type": "minecraft:item",\
                    "name": "minecraft:ghast_spawn_egg",\
                    "functions": [\
                        {\
                            "function": "minecraft:set_components",\
                            "components": {\
                                "minecraft:entity_data": {\
                                    "id": "minecraft:marker",\
                                    "Tags": [\
                                        "SpawnSleigh",\
                                        "dura$(val)"\
                                    ]\
                                }\
                            }\
                        }\
                    ]\
                }\
            ]\
        }\
    ],\
    "functions": [\
        {\
            "function": "minecraft:set_count",\
            "count": 1\
        },\
        {\
            "function": "minecraft:set_components",\
            "components": {\
                "minecraft:can_place_on": {\
                    "predicates": [\
                        {\
                            "blocks": "#powerups:placeable"\
                        }\
                    ],\
                    "show_in_tooltip": false\
                },\
                "minecraft:item_model": "minecraft:weapons/sleigh",\
                "minecraft:hide_additional_tooltip": {},\
                "minecraft:custom_data": "{Sleigh:1b}",\
                "minecraft:custom_name": "[{\"translate\":\"powerup.sleigh.name\",\"italic\":false,\"color\":\"dark_aqua\"}]",\
                "minecraft:lore": [\
                    "[{\"translate\":\":beginner:\",\"color\":\"white\",\"italic\":false},{\"text\":\" \"},{\"translate\":\"powerup.sleigh.effect.support.1\",\"italic\":false,\"color\":\"blue\"}]",\
                    "[{\"translate\":\":crossed_swords:\",\"color\":\"white\",\"italic\":false},{\"text\":\" \"},{\"translate\":\"powerup.sleigh.effect.damage.1\",\"italic\":false,\"color\":\"red\"}]",\
                    "[{\"translate\":\":star:\",\"color\":\"white\",\"italic\":false},{\"text\":\" \"},{\"translate\":\"powerup.sleigh.effect.special.1\",\"italic\":false,\"color\":\"yellow\"}]"\
                ],\
                "can_break": {\
                    "predicates": [\
                        {\
                            "blocks": "minecraft:target"\
                        }\
                    ],\
                    "show_in_tooltip": false\
                },\
                "minecraft:max_damage": 4,\
                "minecraft:damage": $(val),\
                "!minecraft:max_stack_size": {}\
            }\
        }\
    ]\
}
