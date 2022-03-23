# runs when a player right clicks an armor stand

# revoke advancement
advancement revoke @s only buce:illusory/glow_squid/trigger

## debug
#say running trigger

# advance to next pose if armor stand is poseable
execute as @e[type=armor_stand,tag=pose,distance=..8,limit=1,sort=nearest] at @s run function buce:illusory/glow_squid/pose

