#!/bin/bash

# settings
script=./bin/lava.lua
dir=assets/minecraft/textures/block/lava
pixels=16
flow_rate=3

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# create workdir and generate lava texture
mkdir -p "$dir" || exit
"$script" $pixels | magick txt:- "$dir/lava_still.png"
cd "$dir" || exit

# generate flowing lava texture: roll it down 1 pixel every 3 frames
magick lava_still.png +repage -crop ${pixels}x${pixels} lava_flow_%d.png
i=0
for file in lava_flow_{?,??,???,????}.png; do
	magick "$file" -roll +0+$((i/flow_rate%pixels)) "new-$file"
	montage -mode concatenate -tile 2x "new-$file" "new-$file" "new-$file" "new-$file" "$file"
	rm "new-$file"
	((i++))
done
montage -mode concatenate -tile 1x lava_flow_{?,??,???,????}.png lava_flow.png
rm lava_flow_{?,??,???,????}.png

# clean up
mv lava_still.png ../lava_still.png
mv lava_flow.png ../lava_flow.png
cd "$gitroot"
rmdir "$dir"

