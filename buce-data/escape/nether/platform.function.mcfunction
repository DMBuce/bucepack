# runs 1t after a player is respawned in the nether

# build nether platform
execute in minecraft:the_nether run fill -2 47 -2 2 50 2 minecraft:nether_brick_fence hollow
execute in minecraft:the_nether run fill -1 50 -1 1 50 1 minecraft:air replace
execute in minecraft:the_nether run fill -2 51 -2 2 51 2 minecraft:netherrack replace minecraft:lava
execute in minecraft:the_nether run fill -2 47 -2 2 47 2 minecraft:crimson_stem replace
execute in minecraft:the_nether run fill -1 46 -1 1 0 1 minecraft:netherrack replace #minecraft:nether_platform_column_replaceables

