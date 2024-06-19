#!/bin/bash

# redirect all output to stderr
exec 1>&2

retval=0

echo "Checking recipes..."
{
find data/minecraft/recipe/ -name \*.json
find buce-data/ -name \*.recipe.json\*
} | while read file; do
	if ! grep -q -etype.\*{stonecutting,smithing} "$file" && ! grep -q category "$file"; then
		echo "> Missing category: $file"
		retval=1
	fi
done

exit $retval

