#!/bin/bash

packfiles="${DATAPACKFILES-$(make dlist)}"
retval=0

echo "Checking datapack root advancements..."
for file in $packfiles; do
	# skip over simple packs
	pack="${file%.zip}"
	grep -qx "$pack" "cache/skip.packs" && continue
	grep -v /tags/ "cache/$pack.files" \
		| grep -q -e/{functions,predicates,worldgen}/ \
		|| continue

	if ! grep -qx 'data/buce/advancements/root.json' "cache/$pack.files"; then
		echo "> $file: Missing file: data/buce/advancements/root.json" >&2
		retval=1
	fi

	if ! grep -qx 'data/buce/advancements/.*/root.json' "cache/$pack.files"; then
		echo "> $file: Missing file: data/buce/advancements/\$pack/root.json" >&2
		retval=1
	fi
done

exit $retval

