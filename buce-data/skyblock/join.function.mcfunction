# runs as a player that joined the world

# reset spawn and teleport player to it
execute if block 0 60 0 minecraft:air run setworldspawn 0 64 0
execute if block 0 60 0 minecraft:air run teleport @s 0 64 0

# run functions to generate island
execute if block 0 60 0 minecraft:air run function #buce:skyblock/island

# create default spawn
execute if block 0 60 0 minecraft:air run setblock 0 60 0 minecraft:bedrock

