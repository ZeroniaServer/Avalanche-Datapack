tag @s add clicker
execute if entity @s[advancements={entityid:click={clickable=true}}] run function entityid:click/find_entity
advancement revoke @s only entityid:click
tag @s remove clicker