#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
latest="$(./bin/latest)"
dir="$gitroot/buce-data/recipes/crafting"

# increase stairs output
cp "$latest.jar"/data/minecraft/recipes/*_stairs.json data/minecraft/recipes/
sed -i '/"count":/ s/: 4/: 6/' data/minecraft/recipes/*_stairs.json

# increase wood/hyphae output
cp "$latest.jar"/data/minecraft/recipes/*_wood.json data/minecraft/recipes/
sed -i '/"count":/ s/: 3/: 4/' data/minecraft/recipes/*_wood.json
cp "$latest.jar"/data/minecraft/recipes/*_hyphae.json data/minecraft/recipes/
sed -i '/"count":/ s/: 3/: 4/' data/minecraft/recipes/*_hyphae.json

