#!/bin/bash

cd "$(git rev-parse --show-toplevel)"

latest="$(./bin/latest)"

exec >data/minecraft/tags/blocks/soul_speed_blocks.json

echo '{
  "AUTO-GENERATED-BY": "'"${0##*/}"'",
  "replace": false,
  "values": [
    "minecraft:soul_sand",
    "minecraft:soul_soil",
    "minecraft:dirt_path",
    "#minecraft:walls",
    "#minecraft:fences",
    "#minecraft:planks",'

printf "%s\n" "$latest.jar/assets/minecraft/blockstates/"* \
	| sed -nE '/(fence|stairs|slab|wall)/ {
		s/.*\///
		s/_(fence|stairs|slab|wall)\..*$//
		p
	}' \
	| uniq \
	| while read material; do
		for mat in \
			{,infested_}{,chiseled_,cracked_}"${material}"{,s,_bricks,_block,_pillar}{,_stairs,_slab}
		do
			[[ -f "$latest.jar/assets/minecraft/blockstates/$mat.json" ]] \
			&& echo "$mat"
		done
	done \
	| sort -u \
	| grep -vx -estone{,_stairs,_slab} \
	| sed 's/.*/    "minecraft:&",/; $s/,$//'
	#| sed "s,.*,$latest.jar/assets/minecraft/blockstates/&.json,"

echo '  ]
}'

