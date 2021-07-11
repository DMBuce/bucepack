# runs when player uses a breaking hoe

# break blocks from broken block's position
execute at @e[type=item,nbt={Age:0}] rotated as @s run function bucepack:artifact/breaking/hoe/mine

