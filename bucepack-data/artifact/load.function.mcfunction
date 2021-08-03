# runs on server load

# chunkload 0,0
forceload add 1 1 -1 -1

# add objectives
scoreboard objectives add search_charge dummy
scoreboard objectives add storm_charge dummy
scoreboard objectives add fireball_charge dummy
#scoreboard objectives add flame_charge dummy

# reset objectives
scoreboard players set * search_charge 0
scoreboard players set * storm_charge 0
scoreboard players set * fireball_charge 0

