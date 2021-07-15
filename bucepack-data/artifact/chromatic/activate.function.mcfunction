# runs when a player activates chromatic

# revoke advancement
advancement revoke @s only bucepack:artifact/chromatic/trigger

# add a random explosion to three nearby firework rockets
execute as @e[type=firework_rocket,distance=..2,limit=3] at @s run function bucepack:artifact/chromatic/party

