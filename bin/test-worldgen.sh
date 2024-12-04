#!/bin/bash

# redirect all output to stderr
exec 1>&2

latest="$(./bin/latest)" || exit
retval=0

echo "Checking overworld biomes..."
file=data/minecraft/dimension/overworld.json
if ! diff -u \
	<(sed '$s/$/\n/' "$latest.jar/$file") \
	<(sed 's/molten_peaks/stony_peaks/g; s/granite_peaks/stony_peaks/g' "$file")
then
	echo "> Differences other than stony peaks found: $file"
	retval=1
fi

exit $retval

