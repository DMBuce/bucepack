#!/bin/bash

template='{
	"display": {
		"icon": {
			"item": "minecraft:spyglass"
		},
		"title": {
			"text": "Finding"
		},
		"description": {
			"text": "Charge the Seeker'\''s Scope"
		},
		"show_toast": false,
		"announce_to_chat": false,
		"hidden": true,
		"frame": "task"
	},
	"parent": "bucepack:artifact/artifact_loot",
	"criteria": {
		"hold_item_offhand": {
			"trigger": "minecraft:using_item",
			"conditions": {
				"item": {
					"items": [ "minecraft:spyglass" ],
					"nbt": "{searching:1b}"
				},
				"player": {
					"location": {
						"dimension": "minecraft:%s"
					},
					"equipment": {
						"offhand": {
							"items": [ "minecraft:%s" ]
						}
					}
				}
			}
		},
		"stand_on_block": {
			"trigger": "minecraft:using_item",
			"conditions": {
				"item": {
					"items": [ "minecraft:spyglass" ],
					"nbt": "{searching:1b}"
				},
				"player": {
					"location": {
						"dimension": "minecraft:%s"
					},
					"equipment": {
						"offhand": {
							"items": [ "minecraft:spyglass" ]
						}
					},
					"stepping_on": {
						"block": {
							"blocks": [ "minecraft:%s" ]
						}
					}
				}
			}
		}
	},
	"requirements": [
		[
			"hold_item_offhand",
			"stand_on_block"
		]
	],
	"rewards": {
		"function": "bucepack:artifact/searching/%s/charge"
	}
}'

params=(
	'bastion_remnant the_nether blackstone'
	'buried_treasure overworld sand'
	'desert_pyramid overworld sandstone'
	'endcity the_end end_stone'
	'fortress the_nether nether_bricks'
	'nether_fossil the_nether soul_soil'
	'ruined_portal overworld obsidian'
	'igloo overworld snow_block'
	'jungle_pyramid overworld mossy_cobblestone'
	'mansion overworld dark_oak_log'
	'mineshaft overworld stone'
	'monument overworld prismarine'
	'ocean_ruin overworld gravel'
	'pillager_outpost overworld dark_oak_planks'
	'shipwreck overworld oak_planks'
	'stronghold overworld mossy_stone_bricks'
	'swamp_hut overworld spruce_planks'
	'village overworld emerald_block'
)

for param in "${params[@]}"; do
	read structure dim block <<< "$param"
	printf "$template" $dim $block $dim $block $structure > bucepack-data/artifact/searching/$structure/trigger.advancement.json || exit
done

# ad hoc stuff
cp bucepack-data/artifact/searching/ruined_portal/trigger.advancement.json bucepack-data/artifact/searching/ruined_portal/trigger_nether.advancement.json
sed -i 's/overworld/the_nether/' bucepack-data/artifact/searching/ruined_portal/trigger_nether.advancement.json

