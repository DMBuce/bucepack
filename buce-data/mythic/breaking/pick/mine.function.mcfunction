# runs 1t after a block is broken with breaking pick

# for each player that broke a block with breaking
execute as @a[tag=breaking_pick] at @s run function buce:mythic/breaking/pick/break

# clean up
tag @a[tag=breaking_pick] remove breaking_pick

