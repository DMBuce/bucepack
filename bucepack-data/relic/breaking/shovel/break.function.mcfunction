# runs as a player using a breaking shovel positioned where the block was broken

# break 4 blocks above and below
execute if block ~ ~1 ~ #mineable/shovel run setblock ~ ~1 ~ air destroy
execute if block ~ ~-1 ~ #mineable/shovel run setblock ~ ~-1 ~ air destroy
execute if block ~ ~2 ~ #mineable/shovel run setblock ~ ~2 ~ air destroy
execute if block ~ ~-2 ~ #mineable/shovel run setblock ~ ~-2 ~ air destroy
execute if block ~ ~3 ~ #mineable/shovel run setblock ~ ~3 ~ air destroy
execute if block ~ ~-3 ~ #mineable/shovel run setblock ~ ~-3 ~ air destroy
execute if block ~ ~4 ~ #mineable/shovel run setblock ~ ~4 ~ air destroy
execute if block ~ ~-4 ~ #mineable/shovel run setblock ~ ~-4 ~ air destroy

