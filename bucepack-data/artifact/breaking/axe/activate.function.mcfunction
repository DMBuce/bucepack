# runs when player uses a breaking axe

# break blocks in 1t when the item will exist
schedule function bucepack:artifact/breaking/axe/mine 1t append

# revoke advancement
advancement revoke @s only bucepack:artifact/breaking/axe/trigger

