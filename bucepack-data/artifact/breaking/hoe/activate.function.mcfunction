# runs when player uses a breaking hoe

# revoke advancement
advancement revoke @s only bucepack:artifact/breaking/hoe/trigger

# tag player
tag @s add breaking_hoe

# break blocks in 1t when the item will exist
schedule function bucepack:artifact/breaking/hoe/mine 1t append

