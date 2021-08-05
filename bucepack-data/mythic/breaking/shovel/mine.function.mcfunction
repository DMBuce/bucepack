# runs 1t after a block is broken with breaking shovel

# break blocks from broken block's position
execute as @a[tag=breaking_shovel] at @s positioned ~ ~1 ~ at @e[type=item,distance=..6,limit=1,nbt={Age:0s}] run function bucepack:relic/breaking/shovel/break

# clean up
tag @a[tag=breaking_shovel] remove breaking_shovel

