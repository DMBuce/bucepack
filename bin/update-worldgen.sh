#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
latest="$(./bin/latest)" || exit
dir="$gitroot/buce-data/crafting"
featuredir="data/minecraft/worldgen/configured_feature"
logtypes=(
	$(join -t _ \
		<(./bin/allitems | grep _log) \
		<(./bin/allitems | grep _planks) \
		| sed 's/_log.*_planks//'
	)
)
stemtypes=(
	$(join -t _ \
		<(./bin/allitems | grep _stem) \
		<(./bin/allitems | grep _planks) \
		| sed 's/_stem.*_planks//'
	)
)

# generate wood features, recipes, loot tables
for t in "${logtypes[@]}"; do
	# features
	grep -rl "\"minecraft:${t}_log\"" "$latest.jar/$featuredir" | while read file; do
		cp "$file" "$featuredir"
		sed -i \
			"s/\"minecraft:${t}_log\"/\"minecraft:${t}_wood\"/g" \
			"${file#$latest.jar/}"
	done

	# recipes
	num=2
	output="${t}_log"
	input="${t}_wood"
	sempl - "$dir/trees/${num}x_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:crafting_shaped",
		  "category": "building",
		  "key": {
		    "#": "minecraft:$input"
		  },
		  "pattern": [
		    "#",
		    "#"
		  ],
		  "result": {
		    "count": $num,
		    "id": "minecraft:$output"
		  }
		}
	EOF

	# loot tables
	sempl - "data/minecraft/loot_table/blocks/${t}_wood.json" <<-EOF
		{
		  "type": "minecraft:block",
		  "pools": [
		    {
		      "bonus_rolls": 0.0,
		      "conditions": [
		        {
		          "condition": "minecraft:survives_explosion"
		        }
		      ],
		      "entries": [
		        {
		          "type": "minecraft:alternatives",
		          "children": [
		            {
		              "type": "minecraft:item",
		              "conditions": [
		                {
		                  "condition": "minecraft:match_tool",
		                  "predicate": {
		                    "predicates": {
		                      "minecraft:enchantments": [
		                        {
		                          "enchantments": "minecraft:silk_touch",
		                          "levels": {
		                            "min": 1
		                          }
		                        }
		                      ]
		                    }
		                  }
		                }
		              ],
		              "name": "minecraft:${t}_wood"
		            },
		            {
		              "type": "minecraft:item",
		              "name": "minecraft:${t}_log"
		            }
		          ]
		        }
		      ],
		      "rolls": 1.0
		    }
		  ],
		  "random_sequence": "minecraft:blocks/${t}_wood"
		}
		EOF
done

# generate mushroom recipes and loot tables
for t in "${stemtypes[@]}"; do
	# features
	grep -rl "\"minecraft:${t}_stem\"" "$latest.jar/$featuredir" | while read file; do
		cp "$file" "$featuredir"
		sed -i \
			"s/\"minecraft:${t}_stem\"/\"minecraft:${t}_hyphae\"/g" \
			"${file#$latest.jar/}"
	done

	num=2
	output="${t}_stem"
	input="${t}_hyphae"
	sempl - "$dir/trees/${num}x_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:crafting_shaped",
		  "category": "building",
		  "key": {
		    "#": "minecraft:$input"
		  },
		  "pattern": [
		    "#",
		    "#"
		  ],
		  "result": {
		    "count": $num,
		    "id": "minecraft:$output"
		  }
		}
	EOF

	# loot tables
	sempl - "data/minecraft/loot_table/blocks/${t}_hyphae.json" <<-EOF
		{
		  "type": "minecraft:block",
		  "pools": [
		    {
		      "bonus_rolls": 0.0,
		      "conditions": [
		        {
		          "condition": "minecraft:survives_explosion"
		        }
		      ],
		      "entries": [
		        {
		          "type": "minecraft:alternatives",
		          "children": [
		            {
		              "type": "minecraft:item",
		              "conditions": [
		                {
		                  "condition": "minecraft:match_tool",
		                  "predicate": {
		                    "predicates": {
		                      "minecraft:enchantments": [
		                        {
		                          "enchantments": "minecraft:silk_touch",
		                          "levels": {
		                            "min": 1
		                          }
		                        }
		                      ]
		                    }
		                  }
		                }
		              ],
		              "name": "minecraft:${t}_hyphae"
		            },
		            {
		              "type": "minecraft:item",
		              "name": "minecraft:${t}_stem"
		            }
		          ]
		        }
		      ],
		      "rolls": 1.0
		    }
		  ],
		  "random_sequence": "minecraft:blocks/${t}_hyphae"
		}
		EOF
done

# generate custom biomes
cp $latest.jar/data/minecraft/worldgen/biome/stony_peaks.json \
	data/minecraft/worldgen/biome/granite_peaks.json
cp $latest.jar/data/minecraft/worldgen/biome/stony_peaks.json \
	data/minecraft/worldgen/biome/molten_peaks.json
sed -i '
	/minecraft:lake_lava_surface/ s/lava_surface/lava_volcano/
	/minecraft:spring_lava/ s/lava/lava_volcano/
' data/minecraft/worldgen/biome/molten_peaks.json

