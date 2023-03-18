# runs when a player places an armor stand while sneaking

# revoke advancement
advancement revoke @s only buce:poseable/place

## debug
#say running place

# make armor stand poseable
execute as @e[type=armor_stand,distance=..8,limit=1,sort=nearest] at @s run data merge entity @s {ShowArms:1b,NoBasePlate:1b,Pose:{}}

