#!/bin/bash

template='      - { type: item, weight: 1,  count: 0, item: firework_rocket,
          nbt: "{Fireworks:{Flight:1,Explosions:[{Type:%s,Flicker:%s,Trail:%s,Colors:[I;%s],FadeColors:[I;%s]}]}}"
        }
'

echo 'pools:
  - rolls: 1
    entries:'

for type in 0 1 2 4; do
	for flicker in 0 1; do
		for trail in 0 1; do
			for color in \
				15435844 \
				14602026 \
				4312372 \
				6719955 \
				12801229 \
				14188952 \
				15790320
			do
				for fadecolor in \
					15435844 \
					14602026 \
					4312372 \
					6719955 \
					12801229 \
					14188952 \
					15790320
				do
					printf "$template" $type $flicker $trail $color $fadecolor
				done
			done
		done
	done
done

