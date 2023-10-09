# runs when a player places a hopper against a note block

# revoke advancement
advancement revoke @s only buce:smart_allays/trigger

# tag allays
tag @e[type=allay,distance=..16,nbt={Brain:{memories:{'minecraft:liked_noteblock_cooldown_ticks':{}}}}] add bound

# bind allays to note block
execute as @e[type=allay,tag=bound] at @s run data modify entity @s Brain.memories.minecraft:liked_noteblock_cooldown_ticks.value set value 2147483647

# particles
execute as @e[type=allay,tag=bound] at @s anchored eyes run particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.1 4

# clean up
tag @e[type=allay,tag=bound] remove bound

