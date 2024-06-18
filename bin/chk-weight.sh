#!/bin/bash

find data/minecraft/loot_table/{chests,gameplay,orig/chests,orig/gameplay} -name \*.yaml \
| while read file; do
	echo "$(grep -v -e relic/random -e 'type: empty.*weight: [0-9]*9' "$file" \
	| grep -o "weight: *[0-9]*" \
	| awk '{sum += $2} END {print sum}') $file"
done | sed 's/orig\///' | sort | uniq -u | sort -k2
