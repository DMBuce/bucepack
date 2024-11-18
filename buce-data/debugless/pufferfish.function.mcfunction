# runs when a player holds a pufferfish

# revoke advancement
advancement revoke @s only buce:debugless/pufferfish

## debug
#say pufferfish

# get altitude wrt sea level
execute store result score #buce.altitude var run data get entity @s Pos[1] 1
scoreboard players set #buce.sealevel var 0
execute if dimension minecraft:overworld run scoreboard players set #buce.sealevel var 63
execute if dimension minecraft:the_nether run scoreboard players set #buce.sealevel var 32
scoreboard players operation #buce.altitude var -= #buce.sealevel var

# display altitude
title @s actionbar [{"score":{"name":"#buce.altitude","objective":"var"}},"m"]

