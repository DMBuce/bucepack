# runs as a player using a breaking axe positioned where the block was broken

# break 8 blocks above
execute if block ~ ~1 ~ #mineable/axe run setblock ~ ~1 ~ air destroy
execute if block ~ ~2 ~ #mineable/axe run setblock ~ ~2 ~ air destroy
execute if block ~ ~3 ~ #mineable/axe run setblock ~ ~3 ~ air destroy
execute if block ~ ~4 ~ #mineable/axe run setblock ~ ~4 ~ air destroy
execute if block ~ ~5 ~ #mineable/axe run setblock ~ ~5 ~ air destroy
execute if block ~ ~6 ~ #mineable/axe run setblock ~ ~6 ~ air destroy
execute if block ~ ~7 ~ #mineable/axe run setblock ~ ~7 ~ air destroy
execute if block ~ ~8 ~ #mineable/axe run setblock ~ ~8 ~ air destroy

