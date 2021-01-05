#!/bin/bash

find data/minecraft/loot_tables/{chests,gameplay,orig/chests,orig/gameplay} -name \*.yaml \
| while read file; do
	echo "$(grep -o "weight: *[0-9]*" "$file" \
	| awk '{sum += $2} END {print sum}') $file"
done | sed 's/orig\///' | sort | uniq -u
