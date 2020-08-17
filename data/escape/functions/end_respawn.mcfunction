# runs as a player in the overworld who hasn't killed the dragon and/or hasn't obtained elytra

# teleport to end platform
execute in minecraft:the_end run teleport @s 100 49 0 90 0

# build end platform
execute as @s at @s run fill ~-2 ~ ~-2 ~2 ~2 ~2 minecraft:air replace
execute as @s at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:obsidian replace

# give slimestone materials
give @p minecraft:slime_block 64
give @p minecraft:piston 64
give @p minecraft:observer 64

