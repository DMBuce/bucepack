# runs when player uses a breaking pick

# break blocks in 1t when the item will exist
schedule function bucepack:artifact/breaking/pick/mine 1t append

# revoke advancement
advancement revoke @s only bucepack:artifact/breaking/pick/trigger

