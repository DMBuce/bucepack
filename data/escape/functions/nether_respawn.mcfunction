# runs as a player in the overworld who hasn't killed the wither

# teleport to nether platform
execute in minecraft:the_nether run teleport @s 0 49 0 90 0

# build spawn platform
execute as @s at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:nether_brick_fence hollow
execute as @s at @s run fill ~-1 ~2 ~-1 ~1 ~2 ~1 minecraft:air replace
execute as @s at @s run fill ~-2 ~3 ~-2 ~2 ~3 ~2 minecraft:netherrack replace minecraft:lava
execute as @s at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:crimson_stem replace
#execute as @s at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:shroomlight replace
#summon ~ ~-2 ~ minecraft:armor_stand {Invulnerable:1,NoGravity:1,Invisible:1,Tags:["spawn_column"]}
execute as @s at @s run fill ~-1 ~-2 ~-1 ~1 0 ~1 minecraft:netherrack replace #escape:airlava

# run addon respawn functions
execute as @s at @s run function #escape:respawn

