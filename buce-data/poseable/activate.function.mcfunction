# runs when a player right clicks an armor stand while sneaking

# revoke advancement
advancement revoke @s only buce:poseable/trigger

## debug
#say running trigger

# advance to next pose if armor stand is poseable
execute as @e[type=armor_stand,distance=..8,limit=1,sort=nearest] at @s run function buce:poseable/pose

