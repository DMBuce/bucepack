# runs when player uses a breaking axe

# revoke advancement
advancement revoke @s only buce:mythic/breaking/axe/trigger

# tag player
tag @s[tag=breaking_enabled] add breaking_axe

# break blocks in 1t when the item will exist
execute if entity @s[tag=breaking_enabled] run schedule function buce:mythic/breaking/axe/mine 1t append
