# runs when a player places a hopper against a note block

# revoke advancement
advancement revoke @s only buce:smart_allays/trigger

# bind allays to note block
execute as @e[type=allay,distance=..8] run data modify entity @s Brain.memories.minecraft:liked_noteblock_cooldown_ticks.value set value 2147483647

