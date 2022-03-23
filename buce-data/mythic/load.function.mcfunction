# runs on server load

# chunkload 0,0
forceload add 1 1 -1 -1

# add objectives
scoreboard objectives add mythic_relics dummy
scoreboard objectives add search_charge dummy
scoreboard objectives add mining_charge dummy
scoreboard objectives add health health

# reset objectives
scoreboard players set * search_charge 0
scoreboard players set * mythic_relics 1

