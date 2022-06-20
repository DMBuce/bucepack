# runs as a player at 0,64,0 with bedrock at 0,60,0

# build island
fill -1 61 -1 1 61 1 minecraft:dripstone_block
fill -2 61 0 2 61 0 minecraft:dripstone_block
fill 0 61 -2 0 61 2 minecraft:dripstone_block
fill -1 60 0 1 60 0 minecraft:dripstone_block
fill 0 60 -1 0 60 1 minecraft:dripstone_block
fill -1 61 0 1 61 0 minecraft:water
fill 0 61 -1 0 61 1 minecraft:water
setblock 0 61 0 minecraft:lava_cauldron

# add decoration
fill -1 59 -1 1 59 1 minecraft:pointed_dripstone[vertical_direction=down]
setblock 0 59 0 minecraft:cave_vines
setblock 2 62 0 minecraft:pointed_dripstone[vertical_direction=up]
setblock 0 62 2 minecraft:pointed_dripstone[vertical_direction=up]
setblock 1 62 -1 minecraft:pointed_dripstone[vertical_direction=up]
setblock -1 62 -1 minecraft:pointed_dripstone[vertical_direction=up]

