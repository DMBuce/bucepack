# runs when player uses a breaking hoe

# revoke advancement
advancement revoke @s only buce:mythic/breaking/hoe/trigger

# tag player
tag @s[tag=breaking_enabled] add breaking_hoe

# break blocks in 1t when the item will exist
execute if entity @s[tag=breaking_enabled] run schedule function buce:mythic/breaking/hoe/mine 1t append

