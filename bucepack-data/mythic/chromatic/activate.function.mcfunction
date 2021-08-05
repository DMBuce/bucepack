# runs when a player activates chromatic

# revoke advancement
advancement revoke @s only bucepack:relic/chromatic/trigger

# add two random explosions to three nearby firework rockets
execute as @e[type=firework_rocket,distance=..2,limit=3] at @s run function bucepack:relic/chromatic/party
execute as @e[type=firework_rocket,distance=..2,limit=3] at @s run function bucepack:relic/chromatic/party

