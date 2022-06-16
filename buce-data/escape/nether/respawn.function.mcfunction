# runs as a player in the overworld who hasn't summoned the wither

# revoke advancement
advancement revoke @s only buce:escape/nether/respawn

# teleport to nether platform
execute in minecraft:the_nether run teleport @s 0 49 0 90 0

# we can't build the nether platform now because it might not be loaded,
# so give the player levitation and spawn the nether platform in one game tick
effect give @s levitation 1 255 true
schedule function buce:escape/nether/platform 1t append

# run addon respawn functions
execute as @s at @s run function #minecraft:respawn_nether

