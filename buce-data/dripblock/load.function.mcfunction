# runs on server load

# chunkload 0,0
forceload add 1 1 -1 -1

# set randomTickSpeed
execute if block 0 60 0 minecraft:air run gamerule randomTickSpeed 500

# generate spawn island
execute if block 0 60 0 minecraft:air run setworldspawn 0 64 0
execute if block 0 60 0 minecraft:air run function buce:dripblock/island

# disable changing spawn/randomTickSpeed on future loads
setblock 0 60 0 minecraft:bedrock

