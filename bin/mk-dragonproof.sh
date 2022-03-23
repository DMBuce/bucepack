#!/bin/bash

cd "$(git rev-parse --show-toplevel)"

latest="$(./bin/latest)"

exec >data/minecraft/tags/blocks/dragon_immune.json

echo '{
  "replace": false,
  "values": [
	"minecraft:end_stone_bricks",
	"minecraft:end_stone_brick_slab",
	"minecraft:end_stone_brick_stairs",
	"minecraft:end_stone_brick_wall",
	"minecraft:purpur_block",
	"minecraft:purpur_pillar",
	"minecraft:purpur_slab",
	"minecraft:purpur_stairs",
	"minecraft:chorus_plant",
	"minecraft:chorus_flower",
	"minecraft:end_rod",
	"minecraft:ender_chest",
	"#minecraft:shulker_boxes",
	"minecraft:dragon_egg",
	"minecraft:dragon_head",'

printf "%s\n" "$latest.jar/assets/minecraft/blockstates/"* \
	| sed -n '/magenta/ { s/.*\///; s/\..*$//; p; }' \
	| sed 's/.*/\t"minecraft:&",/; $s/,$//'

echo '  ]
}'

