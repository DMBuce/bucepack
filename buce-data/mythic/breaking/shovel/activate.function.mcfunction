# runs when player uses a breaking shovel

# revoke advancement
advancement revoke @s only buce:mythic/breaking/shovel/trigger

# tag player
tag @s[tag=breaking_enabled] add breaking_shovel

# break blocks in 1t when the item will exist
execute if entity @s[tag=breaking_enabled] run schedule function buce:mythic/breaking/shovel/mine 1t append

