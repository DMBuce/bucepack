# runs every tick while a player wears a tunnel helmet in a minecart

# generate the tunnel
execute on vehicle at @s if block ~ ~ ~ #minecraft:rails[shape=north_south] facing ~ ~ ~1 run function buce:deep/tunnels/north_south

# generate the tunnel
execute on vehicle at @s if block ~ ~ ~ #minecraft:rails[shape=east_west] facing ~1 ~ ~ run function buce:deep/tunnels/east_west

