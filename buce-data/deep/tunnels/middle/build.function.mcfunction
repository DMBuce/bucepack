# runs as a minecart between y=0 and sea level

## debug
#fill ^-1 ^-1 ^4  ^1 ^2  ^4  minecraft:air replace #minecraft:sculk_replaceable
#fill ^-1 ^-1 ^-4 ^1 ^2  ^-4 minecraft:air replace #minecraft:sculk_replaceable
#fill ^-1 ^-1 ^4  ^1 ^2  ^4  minecraft:air replace #minecraft:snaps_goat_horn
#fill ^-1 ^-1 ^-4 ^1 ^2  ^-4 minecraft:air replace #minecraft:snaps_goat_horn
##fill ^   ^-1 ^-4 ^  ^-1 ^4  minecraft:blue_ice
#fill ^   ^-1 ^-4 ^  ^-1 ^4  minecraft:redstone_block
#fill ^   ^   ^-4 ^  ^   ^4  minecraft:powered_rail

# consume sculk
execute on passengers store result score #buce.tunnel.fuel var run clear @s minecraft:sculk 1

# place floor
execute if score #buce.tunnel.fuel var matches 1.. positioned ^ ^ ^3 run function buce:deep/tunnels/middle/floor
execute if score #buce.tunnel.fuel var matches 1.. positioned ^ ^ ^-3 run function buce:deep/tunnels/middle/floor

# place fences
execute if score @s var matches 1 if score #buce.tunnel.fuel var matches 1.. positioned ^ ^ ^2 run function buce:deep/tunnels/middle/fences
execute if score @s var matches 5 if score #buce.tunnel.fuel var matches 1.. positioned ^ ^ ^-2 run function buce:deep/tunnels/middle/fences
execute if score @s var matches 2 if score #buce.tunnel.fuel var matches 1.. positioned ^ ^1 ^1 run function buce:deep/tunnels/middle/fences
execute if score @s var matches 4 if score #buce.tunnel.fuel var matches 1.. positioned ^ ^1 ^-1 run function buce:deep/tunnels/middle/fences

# place beam
execute if score @s var matches 3 if score #buce.tunnel.fuel var matches 1.. run function buce:deep/tunnels/middle/beam

