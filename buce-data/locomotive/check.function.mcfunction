# runs when a player in a minecart fuels a furnace cart

# revoke advancement
advancement revoke @s only buce:locomotive/trigger

## debug
#say check

# reverse direction of the nearest furnace cart
execute as @e[type=minecraft:furnace_minecart,distance=..8,sort=nearest,limit=1] at @s run function buce:locomotive/activate

