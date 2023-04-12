# runs as a minecart in below y=0

## debug
#fill ^-2 ^-1 ^4  ^2 ^3  ^4  minecraft:air replace #minecraft:sculk_replaceable
#fill ^-2 ^-1 ^-4 ^2 ^3  ^-4 minecraft:air replace #minecraft:sculk_replaceable
#fill ^-2 ^-1 ^4  ^2 ^3  ^4  minecraft:air replace #minecraft:snaps_goat_horn
#fill ^-2 ^-1 ^-4 ^2 ^3  ^-4 minecraft:air replace #minecraft:snaps_goat_horn
##fill ^   ^-1 ^-4 ^  ^-1 ^4  minecraft:blue_ice
#fill ^   ^-1 ^-4 ^  ^-1 ^4  minecraft:redstone_block
#fill ^   ^   ^-4 ^  ^   ^4  minecraft:powered_rail

# place sculk
execute positioned ^ ^ ^3 run function buce:deep/tunnels/sculk
execute positioned ^ ^ ^-3 run function buce:deep/tunnels/sculk

# place blocks against sculk lines
execute if score @s var matches 1 positioned ^ ^ ^2 run function buce:deep/tunnels/below/sides
execute if score @s var matches 5 positioned ^ ^ ^-2 run function buce:deep/tunnels/below/sides
execute if score @s var matches 2 positioned ^ ^ ^1 run function buce:deep/tunnels/below/floorroof
execute if score @s var matches 4 positioned ^ ^ ^-1 run function buce:deep/tunnels/below/floorroof

# fill in middle gaps
execute if score @s var matches 3 run function buce:deep/tunnels/below/middle

