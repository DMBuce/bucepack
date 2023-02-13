#!/bin/bash

latest="$(./bin/latest)"
retval=0
RESOURCEPACKFILES="${RESOURCEPACKFILES-$(make rlist)}"
DATAPACKFILES="${DATAPACKFILES-$(make dlist)}"
DATARESOURCEPACKFILES="${DATARESOURCEPACKFILES-$(make drlist)}"

# resource pack vars
resource_packver="$(jq .pack_version.resource "$latest.jar/version.json")"
rfiles=( ${RESOURCEPACKFILES//.zip/} )
rskip=( )

# datapack vars
data_packver="$(jq .pack_version.data "$latest.jar/version.json")"
dfiles=( ${DATAPACKFILES//.zip/} )
dskip=( ${DATARESOURCEPACKFILES//.zip/} lichdom )

echo "Checking resource pack_format is $resource_packver..." >&2
for pack in "${rfiles[@]}"; do
	[[ "${rskip[@]}" =~ (^| )$pack( |$) ]] && continue
	ver="$(jq .pack.pack_format "meta/$pack.mcmeta")"
	if [[ "$ver" != "$resource_packver" ]]; then
		echo "> $pack: actual $ver, expected $resource_packver"
		retval=1
	fi
done

echo "Checking data pack_format is $data_packver..." >&2
for pack in "${dfiles[@]}"; do
	[[ "${dskip[@]}" =~ (^| )$pack( |$) ]] && continue
	ver="$(jq .pack.pack_format "meta/$pack.mcmeta")"
	if [[ "$ver" != "$data_packver" ]]; then
		echo "> $pack: actual $ver, expected $data_packver"
		retval=1
	fi
done

exit $retval

