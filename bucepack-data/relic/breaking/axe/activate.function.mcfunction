# runs when player uses a breaking axe

# revoke advancement
advancement revoke @s only bucepack:relic/breaking/axe/trigger

# tag player
tag @s[tag=breaking_enabled] add breaking_axe

# break blocks in 1t when the item will exist
execute if entity @s[tag=breaking_enabled] run schedule function bucepack:relic/breaking/axe/mine 1t append
