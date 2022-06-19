# runs as a player that joined the world

# teleport player and create bedrock if spawn point is air
execute if block ~ 61 ~ minecraft:air run teleport @s ~ 64 ~
execute if block ~ 60 ~ minecraft:air run setblock ~ 60 ~ minecraft:bedrock
execute if block ~ 59 ~ minecraft:air run setblock ~ 59 ~ minecraft:pointed_dripstone[vertical_direction=down]

# give barrel
give @s minecraft:barrel{BlockEntityTag:{LootTable:"buce:skybarrel/spawn_barrel"}}

# create island and set spawn point
execute if block ~ 62 ~ minecraft:air run fill ~-1 60 ~-1 ~1 61 ~1 minecraft:dirt keep
execute if block ~ 62 ~ minecraft:air run fill ~-1 62 ~-1 ~1 62 ~1 minecraft:grass_block keep
setworldspawn ~ 64 ~

