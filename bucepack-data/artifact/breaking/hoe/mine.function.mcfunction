# runs 1t after a block is broken with breaking hoe

# break blocks from broken block's position
execute as @a[predicate=bucepack:artifact/breaking/hoe] at @s positioned ~ ~1 ~ at @e[type=item,distance=..6,limit=1,nbt={Age:0s}] run function bucepack:artifact/breaking/hoe/break

