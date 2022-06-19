#!/bin/bash -e

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

latest="$(./bin/latest)"

# generate tables
./bin/allloottables | while IFS=: read namespace table; do
	mkdir -p "buce-data/skybarrel/$(dirname "$table")"

	# figure out number of rolls
	rolls=1
	case "$table" in
		blocks/*)   rolls='{ "min": 4.0, "max": 12.0 }' ;;
		chests/*)   rolls=1 ;;
		entities/*) rolls='{ "min": 1.0, "max": 4.0 }' ;;
		gameplay/*) rolls='{ "min": 1.0, "max": 2.0 }' ;;
	esac

	cat - > "buce-data/skybarrel/$table.loot_table.json" <<-EOF
		{
		  "type": "minecraft:chest",
		  "pools": [
		    {
		      "bonus_rolls": 0.0,
		      "entries": [
		        {
		          "type": "minecraft:loot_table",
		          "name": "minecraft:$table"
		        }
		      ],
		      "rolls": $rolls
		    }
		  ]
		}
	EOF
done

