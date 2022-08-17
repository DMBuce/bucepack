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
		sed -Ei "
			/\"count\":/ s/: [0-9]+,/: $count,/
		" data/minecraft/recipes/*_$block.json
	else
		sed -Ei "
			/^    \"item\":/ i\    \"count\": $count,
		" data/minecraft/recipes/*_$block.json
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

# add 2x2 stairs recipes
cp "$latest.jar"/data/minecraft/recipes/*_stairs.json $dir/plentiful/
rename .json .recipe.json $dir/plentiful/*_stairs.json
sed -Ei '
	s/"#  ",$/"# ",/
	s/"## ",$/"##"/
	/"###"/d
	/"count":/ s/: [0-9]+,/: 3,/
' $dir/plentiful/*_stairs.recipe.json

# generate 3x3 uncrafting recipes
while read input output; do
	[[ -z "$input$output" ]] && continue
	sempl - "$dir/split/3x3_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:crafting_shapeless",
		  "ingredients": [
		    {
		      "item": "minecraft:$input"
		    }
		  ],
		  "result": {
		    "count": 9,
		    "item": "minecraft:$output"
		  }
		}
	EOF
done <<< '
	blue_ice          packed_ice
	packed_ice        ice
	prismarine_bricks prismarine_shard
	melon             melon_slice
'

# generate 2x2 uncrafting recipes
while read input output; do
	[[ -z "$input$output" ]] && continue
	sempl - "$dir/split/2x2_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:crafting_shapeless",
		  "ingredients": [
		    {
		      "item": "minecraft:$input"
		    }
		  ],
		  "result": {
		    "count": 4,
		    "item": "minecraft:$output"
		  }
		}
	EOF
done <<< '
	clay clay_ball
	glowstone glowstone_dust
	magma_block magma_cream
	prismarine prismarine_shard
	purpur_block popped_chorus_fruit
	sandstone sand
	red_sandstone red_sand
	snow_block snowball
'

# generate 3x uncrafting recipes
while read input output; do
	[[ -z "$input$output" ]] && continue
	sempl - "$dir/split/3x_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:crafting_shapeless",
		  "ingredients": [
		    {
		      "item": "minecraft:$input"
		    }
		  ],
		  "result": {
		    "count": 3,
		    "item": "minecraft:$output"
		  }
		}
	EOF
done <<< '
	bookshelf book
	book paper
'

# create recipes for dying any wool
cp "$latest.jar"/data/minecraft/recipes/*_wool.json data/minecraft/recipes/
sed -i '
	/minecraft:white_wool/ s/".*/"tag": "minecraft:wool"/
' data/minecraft/recipes/*_wool.json

# create recipes for dying any bed
cp "$latest.jar"/data/minecraft/recipes/*_bed_from_white_bed.json data/minecraft/recipes/
sed -i '
	/minecraft:white_bed/ s/".*/"tag": "minecraft:beds"/
' data/minecraft/recipes/*_bed.json

# create recipes for dying any candle
cp "$latest.jar"/data/minecraft/recipes/*_candle.json data/minecraft/recipes/
sed -i '
	/minecraft:candle/ s/".*/"tag": "minecraft:candles"/
' data/minecraft/recipes/*_candle.json

# create recipes for dying any mixture of terracotta
cp "$latest.jar"/data/minecraft/recipes/*_terracotta.json data/minecraft/recipes/
rm data/minecraft/recipes/*_glazed_terracotta.json
sed -i '
	/minecraft:terracotta/ s/".*/"tag": "minecraft:terracotta"/
' data/minecraft/recipes/*_terracotta.json

# create recipes for dying any mixture of stained_glass
cp "$latest.jar"/data/minecraft/recipes/*_stained_glass.json data/minecraft/recipes/
sed -i '
	/minecraft:glass/ s/".*/"tag": "minecraft:glass"/
' data/minecraft/recipes/*_stained_glass.json

# create recipes for dying any mixture of stained_glass_pane
cp "$latest.jar"/data/minecraft/recipes/*_stained_glass_pane_from_glass_pane.json data/minecraft/recipes/
sed -i '
	/minecraft:glass_pane/ s/".*/"tag": "minecraft:glass_panes"/
' data/minecraft/recipes/*_glass_pane.json

