#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
latest="$(./bin/latest)"
dir="$gitroot/buce-data/recipes/crafting"

# increase output of some recipes
while read block count; do
	[[ -z "$block$count" ]] && continue
	cp "$latest.jar"/data/minecraft/recipes/*_$block.json data/minecraft/recipes/

	if egrep -q '"count":' data/minecraft/recipes/*_$block.json; then
		sed -Ei \
			"/\"count\":/ s/: [0-9]+,/: $count,/" \
			data/minecraft/recipes/*_$block.json
	else
		sed -Ei \
			"/^    \"item\":/ i\    \"count\": $count," \
			data/minecraft/recipes/*_$block.json
	fi
done <<< '
	stairs         6
	fence          5
	fence_gate     4
	pressure_plate 2
	sign           6
	trapdoor       6
	wood           4
	hyphae         4
'

