# runs every second

# revoke advancement
advancement revoke @s only buce:mythic/balloons/cleanup

## debug
#say unleash

# remove levitation from balloons above y=350
execute as @e[type=#buce:mythic/balloons/balloons] at @s run effect clear @s[y=350,dy=1000] minecraft:levitation

