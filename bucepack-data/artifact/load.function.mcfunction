# runs on server load

# chunkload 0,0
forceload add 1 1 -1 -1

# add objectives
scoreboard objective add charge dummy
scoreboard objectives add var dummy
#scoreboard objectives add const dummy

# reset objectives
scoreboard players set * charge 0

# add stormcalling objective
scoreboard objectives add storm_charge dummy

# add fireball objective
#scoreboard objectives add shot_fireball minecraft.used:minecraft.bow
scoreboard objectives add fireball_charge dummy

## add flamethrower objective
#scoreboard objectives add flame_charge dummy

