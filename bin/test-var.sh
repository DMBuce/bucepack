#!/bin/bash

packfiles="${DATAPACKFILES-$(make dlist)}"

# generate list of files in packs that reference var objective
grep -r '\bvar\b' buce-data/ -l | ./bin/ext2dir > cache/var-refs.files

retval=0
echo 'Checking for missing "var" scoreboard objectives...' >&2
for packfile in $packfiles; do
	# skip pack if it doesn't contain reference to var
	pack="${packfile%.zip}"
	grep -qxf cache/var-refs.files "cache/$pack.files" || continue

	# make sure 'buce:var' function exists
	if ! grep -qx data/buce/functions/var.mcfunction "cache/$pack.files"; then
		echo "> $packfile: Missing file: data/minecraft/tags/functions/load.json" >&2
		retval=1
	fi

	# make sure load.json exists and has 'buce:var' function
	if ! grep -qx data/minecraft/tags/functions/load.json "cache/$pack.files"; then
		echo "> $packfile: Missing file: data/minecraft/tags/functions/load.json" >&2
		retval=1
	elif ! grep -q '"buce:var"' "data/minecraft/tags/functions/load_$pack.json" 2>/dev/null; then
		echo "> $packfile: Missing 'buce:var' in file: data/minecraft/tags/functions/load_$pack.json" >&2
		retval=1
	fi

	# print files that reference var
	echo "> $packfile: Files that reference 'var' objective:" >&2
	grep -xf cache/var-refs.files "cache/$pack.files" | sed 's/^/--> /' >&2
done

