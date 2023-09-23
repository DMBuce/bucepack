#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

latest="$(./bin/latest)"
hoes=( $(./bin/allitems | grep '_hoe$') )

# build list of shear/hoe items
shears='"minecraft:shears"'
for hoe in "${hoes[@]}"; do
	shears="\"minecraft:$hoe\", $shears"
done

# make shearable blocks drop themselves with hoes
while read old; do
	new="${old#$latest.jar/}"
	cp "$old" "$new"
	sed -i 's/"minecraft:shears"/'"$shears"'/g; $a\' "$new"
done < <(
	grep -rl shears "$latest.jar"/data/minecraft/loot_tables/blocks \
	| grep -v -e{_leaves,/grass,/tall_grass} \
	| sort
)

sempl - data/minecraft/tags/blocks/mineable/hoe.json <<-EOF
	{
	  "replace": false,
	  "values": [
	    "#minecraft:wool_carpets",
	    "#minecraft:wool",
	    "minecraft:{!./bin/shearless-blocks}",
	    "minecraft:bamboo_sapling",
	    "minecraft:brown_mushroom_block",
	    "minecraft:mushroom_stem",
	    "minecraft:player_head",
	    "minecraft:player_wall_head",
	    "minecraft:red_mushroom_block"
	  ]
	}
EOF

