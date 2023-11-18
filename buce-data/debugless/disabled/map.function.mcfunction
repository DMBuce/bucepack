# runs when a player holds a map or compass

# revoke advancement
advancement revoke @s only buce:debugless/map

## debug
#say map

# tell player coords
execute store result score #buce.x var run data get entity @s Pos[0] 1
execute store result score #buce.y var run data get entity @s Pos[1] 1
execute store result score #buce.z var run data get entity @s Pos[2] 1
#tellraw @s ["x=",{"score":{"name":"#buce.x","objective":"var"}},", y=",{"score":{"name":"#buce.y","objective":"var"}},", z=",{"score":{"name":"#buce.z","objective":"var"}}]
title @s actionbar ["x=",{"score":{"name":"#buce.x","objective":"var"}},", y=",{"score":{"name":"#buce.y","objective":"var"}},", z=",{"score":{"name":"#buce.z","objective":"var"}}]

