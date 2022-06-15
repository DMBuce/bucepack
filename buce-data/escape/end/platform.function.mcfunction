# runs 1t after a player is respawned in the end

# build end platform
execute in minecraft:the_end run fill 98 49 -2 102 51 2 minecraft:air replace
execute in minecraft:the_end run fill 98 48 -2 102 48 2 minecraft:obsidian replace
#execute in minecraft:the_end as @s at @s run fill ~-2 ~ ~-2 ~2 ~2 ~2 minecraft:air replace
#execute in minecraft:the_end as @s at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:obsidian replace

# run addon respawn functions
#execute as @s at @s run function #buce:escape/end/respawn

