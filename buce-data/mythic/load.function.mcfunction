# runs on server load

# chunkload 0,0
forceload add 1 1 -1 -1

# add objectives
scoreboard objectives add search_charge dummy
scoreboard objectives add storm_charge dummy
#scoreboard objectives add mining_charge dummy
scoreboard objectives add health health

# reset objectives
scoreboard players set * search_charge 0

