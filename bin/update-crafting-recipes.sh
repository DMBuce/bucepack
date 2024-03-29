#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
latest="$(./bin/latest)" || exit
dir="$gitroot/buce-data/recipes/crafting"

# increase output of some recipes
while read block count; do
	[[ -z "$block$count" ]] && continue
	cp "$latest.jar"/data/minecraft/recipes/*_$block.json data/minecraft/recipes/
	[[ "$block" == sign ]] && rm data/minecraft/recipes/*_hanging_sign.json

	if grep -E -q '"count":' data/minecraft/recipes/*_$block.json; then
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
	fence          4
	fence_gate     4
	pressure_plate 2
	sign           6
	trapdoor       6
	wood           4
	hyphae         4
'

# remove some files
rm data/minecraft/recipes/iron_trapdoor.json
rm data/minecraft/recipes/light_weighted_pressure_plate.json
rm data/minecraft/recipes/heavy_weighted_pressure_plate.json

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
while read category input output; do
	[[ -z "$input$output" ]] && continue
	sempl - "$dir/unpacked/3x3_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:crafting_shapeless",
		  "category": "$category",
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
	building blue_ice          packed_ice
	building packed_ice        ice
	building prismarine_bricks prismarine_shard
	food     melon             melon_slice
	misc     cobweb            string
	misc     bamboo_block      bamboo
'
sed -i '/"count":/ s/9/18/' buce-data/recipes/crafting/unpacked/3x3_bamboo.recipe.json
sed -i '/bamboo_block/ {
	s/$/\n    },\n    {\n      "item": "minecraft:bamboo_block"/
}' buce-data/recipes/crafting/unpacked/3x3_bamboo.recipe.json

# generate 2x2 uncrafting recipes
while read category input output; do
	[[ -z "$input$output" ]] && continue
	sempl - "$dir/unpacked/2x2_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:crafting_shapeless",
		  "category": "$category",
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
	misc     clay clay_ball
	misc     glowstone glowstone_dust
	misc     magma_block magma_cream
	misc     prismarine prismarine_shard
	misc     purpur_block popped_chorus_fruit
	building sandstone sand
	building red_sandstone red_sand
	misc     snow_block snowball
	misc     bricks brick
	misc     nether_bricks nether_brick
	misc     amethyst_block amethyst_shard
	misc     dripstone_block pointed_dripstone
	misc     honeycomb_block honeycomb
'

# generate 3x uncrafting recipes
while read category input output; do
	[[ -z "$input$output" ]] && continue
	sempl - "$dir/unpacked/3x_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:crafting_shapeless",
		  "category": "$category",
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
	misc bookshelf book
	misc book paper
'

# generate colorful crafting recipes
for color in \
	red \
	orange \
	yellow \
	lime \
	green \
	cyan \
	light_blue \
	blue \
	purple \
	magenta \
	pink \
	brown \
	black \
	gray \
	light_gray \
	white
do
	# create tags for colorful blocks w/o that color
	for tag in candles terracotta; do
		cp "$latest.jar/data/minecraft/tags/items/$tag.json" "data/minecraft/tags/items/${tag}_without_$color.json"
		sed -i "/minecraft:${color}_/d" "data/minecraft/tags/items/${tag}_without_$color.json"
		sed -i -E -n 'H; x; s:,(\s*\n\s*[]}]):\1:; P; ${x; p}' "data/minecraft/tags/items/${tag}_without_$color.json"
		sed -i 1d "data/minecraft/tags/items/${tag}_without_$color.json"
	done
	for tag in glass glass_panes; do
		cp "data/minecraft/tags/items/$tag.json" "data/minecraft/tags/items/${tag}_without_$color.json"
		sed -i "/minecraft:${color}_/d" "data/minecraft/tags/items/${tag}_without_$color.json"
		sed -i -E -n 'H; x; s:,(\s*\n\s*[]}]):\1:; P; ${x; p}' "data/minecraft/tags/items/${tag}_without_$color.json"
		sed -i 1d "data/minecraft/tags/items/${tag}_without_$color.json"
	done

	# create recipes for dying any candle
	cp "$latest.jar/data/minecraft/recipes/${color}_candle.json" data/minecraft/recipes/
	sed -i "
		/minecraft:candle/ s/\".*/\"tag\": \"minecraft:candles_without_$color\"/
	" "data/minecraft/recipes/${color}_candle.json"

	# create recipes for dying any mixture of terracotta
	cp "$latest.jar/data/minecraft/recipes/${color}_terracotta.json" data/minecraft/recipes/
	sed -i "
		/minecraft:terracotta/ s/\".*/\"tag\": \"minecraft:terracotta_without_$color\"/
	" "data/minecraft/recipes/${color}_terracotta.json"

	# create recipes for dying any mixture of stained_glass
	cp "$latest.jar/data/minecraft/recipes/${color}_stained_glass.json" data/minecraft/recipes/
	sed -i "
		/minecraft:glass/ s/\".*/\"tag\": \"minecraft:glass_without_$color\"/
	" "data/minecraft/recipes/${color}_stained_glass.json"

	# create recipes for dying any mixture of stained_glass_pane
	cp "$latest.jar/data/minecraft/recipes/${color}_stained_glass_pane_from_glass_pane.json" data/minecraft/recipes/
	sed -i "
		/minecraft:glass_pane/ s/\".*/\"tag\": \"minecraft:glass_panes_without_$color\"/
	" "data/minecraft/recipes/${color}_stained_glass_pane_from_glass_pane.json"

	# create recipes for dying any banner
	cp "$latest.jar/data/minecraft/recipes/dye_${color}_bed.json" "data/minecraft/recipes/dye_${color}_banner.json"
	sed -i 's/_bed/_banner/g' "data/minecraft/recipes/dye_${color}_banner.json"
done

