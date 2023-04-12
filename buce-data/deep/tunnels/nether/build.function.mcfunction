# runs as a minecart in the nether

# place sculk
execute positioned ^ ^ ^3 run function buce:deep/tunnels/sculk
execute positioned ^ ^ ^-3 run function buce:deep/tunnels/sculk

# place blocks against bottom sculk lines
execute if score @s var matches 1 positioned ^ ^ ^2 run function buce:deep/tunnels/nether/bottom
execute if score @s var matches 5 positioned ^ ^ ^-2 run function buce:deep/tunnels/nether/bottom

# place blocks against top sculk lines
execute if score @s var matches 2 positioned ^ ^ ^1 run function buce:deep/tunnels/nether/top
execute if score @s var matches 4 positioned ^ ^ ^-1 run function buce:deep/tunnels/nether/top

# fill in middle gaps
execute if score @s var matches 3 run function buce:deep/tunnels/nether/middle

