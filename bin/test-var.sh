#!/bin/bash

packfiles="${DATAPACKFILES-$(make dlist)}"

# generate list of files in packs that reference var objective
grep -r '\bvar\b' buce-data/ -l | ./bin/ext2dir > cache/var-refs.files

r=0
retval=0
echo 'Checking for missing "var" scoreboard objectives...' >&2
for packfile in $packfiles; do
	# skip pack if it doesn't contain reference to var
	pack="${packfile%.zip}"
	grep -qxf cache/var-refs.files "cache/$pack.files" || continue

	# make sure 'buce:var' function exists
	if ! grep -qx data/buce/function/var.mcfunction "cache/$pack.files"; then
		echo "> $packfile: Missing file: data/minecraft/tags/function/load.json" >&2
		r=1
	fi

	# make sure load.json exists and has 'buce:var' function
	if ! grep -qx data/minecraft/tags/function/load.json "cache/$pack.files"; then
		echo "> $packfile: Missing file: data/minecraft/tags/function/load.json" >&2
		r=1
	elif ! grep -q '"buce:var"' "data/minecraft/tags/function/load_$pack.json" 2>/dev/null; then
		echo "> $packfile: Missing 'buce:var' in file: data/minecraft/tags/function/load_$pack.json" >&2
		r=1
	fi

	# print files that reference var
	if (( r != 0 )); then
		r=0
		retval=1
		echo "> $packfile: Files that reference 'var' objective:" >&2
		grep -xf cache/var-refs.files "cache/$pack.files" | sed 's/^/--> /' >&2
	fi
done

exit $retval

