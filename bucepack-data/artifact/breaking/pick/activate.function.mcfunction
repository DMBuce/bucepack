# runs when player uses a breaking pick

# revoke advancement
advancement revoke @s only bucepack:artifact/breaking/pick/trigger

# tag player
tag @s[tag=breaking_enabled] add breaking_pick

# break blocks in 1t when the item will exist
execute if entity @s[tag=breaking_enabled] run schedule function bucepack:artifact/breaking/pick/mine 1t append

