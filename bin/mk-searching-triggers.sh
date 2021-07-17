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
	'buried_treasure the_overworld sand'
	'desert_pyramid the_overworld sandstone'
	'endcity the_end end_stone'
	'fortress the_nether nether_brick'
	'nether_fossil the_nether soul_soil'
	'ruined_portal the_overworld obsidian'
	'igloo the_overworld snow'
	'jungle_pyramid the_overworld mossy_cobblestone'
	'mansion the_overworld dark_oak_log'
	'mineshaft the_overworld stone'
	'monument the_overworld prismarine'
	'ocean_ruin the_overworld gravel'
	'pillager_outpost the_overworld dark_oak_plank'
	'shipwreck the_overworld oak_plank'
	'stronghold the_overworld mossy_stone_brick'
	'swamp_hut the_overworld spruce_plank'
	'village the_overworld emerald_block'
)

for param in "${params[@]}"; do
	read structure dim block <<< "$param"
	printf "$template" $dim $block $dim $block $structure > bucepack-data/artifact/searching/$structure/trigger.advancement.json || exit
done

# ad hoc stuff
cp bucepack-data/artifact/searching/ruined_portal/trigger.advancement.json bucepack-data/artifact/searching/ruined_portal/trigger_nether.advancement.json
sed -i 's/overworld/nether/' bucepack-data/artifact/searching/ruined_portal/trigger_nether.advancement.json

