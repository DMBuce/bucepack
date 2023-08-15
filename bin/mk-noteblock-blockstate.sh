#!/bin/bash

template='		{
			"when": { "OR": [
				{ "note": "%s", "instrument": "%s" },
				{ "note": "%s", "instrument": "%s" },
				{ "note": "%s", "instrument": "%s" },
				{ "note": "%s", "instrument": "%s" }
			]},
			"apply": { "model": "block/note_block_%s", "y": %s }
		},
'

instrumentgroups=(
	'%s bell %s chime %s cow_bell %s flute %s 0 %s'
	'%s basedrum %s hat %s snare %s bass %s 90 %s'
	'%s harp %s iron_xylophone %s xylophone %s guitar %s 180 %s'
	'%s bit %s pling %s didgeridoo %s banjo %s 270 %s'
)

echo '{
	"multipart": [
		{
			"apply": { "model": "block/note_block" }
		},'

for note in {0..11}; do
    for instgrp in "${instrumentgroups[@]}"; do
        printf "$template" $(printf "$instgrp" $note $note $note $note $note)
        printf "$template" $(printf "$instgrp" $((note+12)) $((note+12)) $((note+12)) $((note+12)) $note)
	done
done

note=$((note+13))
for instgrp in "${instrumentgroups[@]}"; do
    printf "$template" $(printf "$instgrp" $note $note $note $note $((note-24)))
done | sed '$ s/,$//'

echo '	]
}'

