# runs as an armor stand with the spawn_column tag

# kill at y=0
kill @s

# replace 3x3 of air and lava with netherrack
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:netherrack replace #escape:airlava

# move down one block
teleport @s ~ ~-1 ~

