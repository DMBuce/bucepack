# runs when a player activates chromatic

# revoke advancement
advancement revoke @s only buce:mythic/chromatic/trigger

# add two random explosions to three nearby firework rockets
execute as @e[type=firework_rocket,distance=..2,limit=3] at @s run function buce:mythic/chromatic/party
execute as @e[type=firework_rocket,distance=..2,limit=3] at @s run function buce:mythic/chromatic/party

