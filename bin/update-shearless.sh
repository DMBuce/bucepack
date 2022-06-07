#!/bin/bash

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
	| grep -v leaves \
	| sort
)

sempl - data/minecraft/tags/blocks/mineable/hoe.json <<-EOF
	{
	  "replace": false,
	  "values": [
	    "#minecraft:wool_carpets",
	    "#minecraft:wool",
	    "minecraft:{!./bin/shearless-blocks}",
	    "minecraft:player_head",
	    "minecraft:player_wall_head"
	  ]
	}
EOF
