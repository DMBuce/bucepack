#!/bin/bash

# redirect all output to stderr
exec 1>&2

packfiles="${DATAPACKFILES-$(make dlist)}"
retval=0

echo "Checking datapack root advancements..."
for file in $packfiles; do
	# skip over simple packs
	pack="${file%.zip}"
	grep -qx "$pack" "cache/skip.packs" && continue
	grep -v /tags/ "cache/$pack.files" \
		| grep -q -e/{functions,predicates}/ \
		|| continue

	if ! grep -qx 'data/buce/advancements/root.json' "cache/$pack.files"; then
		echo "> $file: Missing file: data/buce/advancements/root.json"
		retval=1
	fi

	if ! grep -qx 'data/buce/advancements/.*/root.json' "cache/$pack.files"; then
		echo "> $file: Missing file: data/buce/advancements/\$pack/root.json"
		retval=1
	fi

	if [[ ! -f buce-data/$pack/root.advancement.json.sempl ]]; then
		echo "> $pack: Missing template: buce-data/$pack/root.advancement.json.sempl"
		retval=1
	fi
done

echo "Checking datapack advancement icons..."
if find buce-data/ \
	-name \*.advancement.json \
	\! -path \*deleteme\* \
	\! -path \*disabled\* \
	-exec jq -r .display.icon.item {} + \
	| sort | uniq -dc | sort -hr \
	| grep -v 'minecraft:barrier' \
	| grep .
then
	retval=1
	echo "> Duplicate advancement icons found, see above"
fi

exit $retval

