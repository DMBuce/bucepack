# runs when player uses a breaking hoe

# break blocks in 1t when the item will exist
schedule function bucepack:artifact/breaking/hoe/mine 1t append

# revoke advancement
advancement revoke @s only bucepack:artifact/breaking/hoe/trigger

