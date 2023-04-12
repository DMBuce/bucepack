# runs as a minecart in between y=0 and sea level

## debug
#fill ^-1 ^-1 ^4  ^1 ^2  ^4  minecraft:air replace #minecraft:sculk_replaceable
#fill ^-1 ^-1 ^-4 ^1 ^2  ^-4 minecraft:air replace #minecraft:sculk_replaceable
#fill ^-1 ^-1 ^4  ^1 ^2  ^4  minecraft:air replace #minecraft:snaps_goat_horn
#fill ^-1 ^-1 ^-4 ^1 ^2  ^-4 minecraft:air replace #minecraft:snaps_goat_horn
##fill ^   ^-1 ^-4 ^  ^-1 ^4  minecraft:blue_ice
#fill ^   ^-1 ^-4 ^  ^-1 ^4  minecraft:redstone_block
#fill ^   ^   ^-4 ^  ^   ^4  minecraft:powered_rail

# place floor
execute positioned ^ ^ ^3 run function buce:deep/tunnels/middle/floor
execute positioned ^ ^ ^-3 run function buce:deep/tunnels/middle/floor

# place fences
execute if score @s var matches 1 positioned ^ ^ ^2 run function buce:deep/tunnels/middle/fences
execute if score @s var matches 5 positioned ^ ^ ^-2 run function buce:deep/tunnels/middle/fences
execute if score @s var matches 2 positioned ^ ^1 ^1 run function buce:deep/tunnels/middle/fences
execute if score @s var matches 4 positioned ^ ^1 ^-1 run function buce:deep/tunnels/middle/fences

# place beam
execute if score @s var matches 3 run function buce:deep/tunnels/middle/beam

