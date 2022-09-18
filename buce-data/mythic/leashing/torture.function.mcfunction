# runs as a player that leashed a creeper

# tag each cat leashed by player
execute as @e[type=minecraft:cat,distance=..12] run function buce:leashed/check

# attach each leashed cat to the creeper
execute as @e[type=minecraft:cat,tag=leashed] run data modify entity @s Leash.UUID set from entity @e[type=minecraft:creeper,tag=roped,limit=1] UUID

# cleanup
tag @e[type=minecraft:cat,tag=leashed] remove leashed

