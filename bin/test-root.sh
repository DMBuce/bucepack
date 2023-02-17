#!/bin/bash

packfiles="${DATAPACKFILES-$(make dlist)}"
retval=0


echo "Checking for missing buce:root advancements..."
for file in $packfiles; do
	# skip over simple packs
	pack="${file%.zip}"
	grep -q -e/{functions,predicates,worldgen}/ "cache/$pack.files" || continue
	grep -qx "$pack" "cache/skip.packs" && continue

	if ! grep -qx 'data/buce/advancements/root.json' "cache/$pack.files"; then
		echo "> $file: Missing file: data/buce/advancements/root.json" >&2
		retval=1
	fi
done

echo "Checking for missing buce:pack/root advancements..."
for file in $packfiles; do
	# skip over simple packs
	pack="${file%.zip}"
	grep -q -e/{functions,predicates,worldgen}/ "cache/$pack.files" || continue
	grep -qx "$pack" "cache/skip.packs" && continue

	if ! grep -qx 'data/buce/advancements/.*/root.json' "cache/$pack.files"; then
		echo "> $file: Missing file: data/buce/advancements/\$pack/root.json" >&2
		retval=1
	fi
done

exit $retval

