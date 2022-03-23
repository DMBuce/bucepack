#!/bin/bash

cd "$(git rev-parse --show-toplevel)"

latest="$(./bin/latest)"

exec >data/minecraft/tags/blocks/soul_speed_blocks.json

echo '{
  "replace": false,
  "values": [
    "minecraft:soul_sand",
    "minecraft:soul_soil",
    "minecraft:dirt_path",'

printf "%s\n" "$latest.jar/assets/minecraft/blockstates/"* \
	| sed -nE '/(stairs|slab)/ { s/.*\///; s/_(stairs|slab)\..*$//; p; }' \
	| uniq -d \
	| sed 's/.*/    "minecraft:&",/; $s/,$//'

echo '  ]
}'


