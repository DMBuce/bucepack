# runs when a player holds a recovery compass

# revoke advancement
advancement revoke @s only buce:debugless/recovery

## debug
#say lodestone

# get square of difference between player's position and death location for each coord
execute store result score #buce.x var run data get entity @s Pos[0] 1
execute store result score #buce.y var run data get entity @s Pos[1] 1
execute store result score #buce.z var run data get entity @s Pos[2] 1
execute store result score #buce.dx var run data get entity @s Inventory[{Slot:-106b}].tag.LodestonePos.X
execute store result score #buce.dy var run data get entity @s Inventory[{Slot:-106b}].tag.LodestonePos.Y
execute store result score #buce.dz var run data get entity @s Inventory[{Slot:-106b}].tag.LodestonePos.Z
scoreboard players operation #buce.dx var -= #buce.x var
scoreboard players operation #buce.dy var -= #buce.y var
scoreboard players operation #buce.dz var -= #buce.z var
scoreboard players operation #buce.dx var *= #buce.dx var
scoreboard players operation #buce.dy var *= #buce.dy var
scoreboard players operation #buce.dz var *= #buce.dz var

# compute sum of squares of the coords
scoreboard players set #buce.in var 0
scoreboard players operation #buce.in var += #buce.dx var
scoreboard players operation #buce.in var += #buce.dy var
scoreboard players operation #buce.in var += #buce.dz var

# compute square root
#scoreboard players set #buce.count var 0
scoreboard players operation #buce.sqrt var = #buce.in var
#scoreboard players set #buce.out var 0
#scoreboard players set #buce.sqrt var 32768
#tellraw @s [{"score":{"name":"#buce.in","objective":"var"}}]
function buce:sqrt

# display distance to death location
title @s actionbar [{"score":{"name":"#buce.out","objective":"var"}},"m"]

## debug
#tellraw @s [{"score":{"name":"#buce.count","objective":"var"}}]

