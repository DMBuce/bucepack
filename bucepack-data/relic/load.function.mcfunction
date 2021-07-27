# runs on server load

# chunkload 0,0
forceload add 1 1 -1 -1

# add objectives
scoreboard objectives add var dummy
scoreboard objectives add const dummy
scoreboard objectives add search_charge dummy
scoreboard objectives add mining_charge dummy

# reset objectives
scoreboard players set * search_charge 0

