# runs as a player in the overworld who hasn't killed the dragon and/or hasn't obtained elytra

# revoke advancement
advancement revoke @s only buce:escape/end/respawn

# teleport to end platform
execute in minecraft:the_end run teleport @s 100 49 0 90 0

# we can't build the end platform now because it might not be loaded,
# so give the player levitation and spawn the end platform in one game tick
effect give @s levitation 1 255 true
schedule function buce:escape/end/platform 1t append

# give slimestone materials
give @s minecraft:slime_block 64
give @s minecraft:piston 64
give @s minecraft:observer 64
give @s minecraft:birch_boat

# run addon respawn functions
#execute as @s at @s run function #minecraft:respawn_end
function #minecraft:respawn_end

