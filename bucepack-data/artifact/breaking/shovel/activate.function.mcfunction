# runs when player uses a breaking shovel

# break blocks in 1t when the item will exist
schedule function bucepack:artifact/breaking/shovel/mine 1t append

# revoke advancement
advancement revoke @s only bucepack:artifact/activate_breaking_shovel

