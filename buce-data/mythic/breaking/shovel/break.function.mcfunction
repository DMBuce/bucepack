# runs as a player using a breaking shovel positioned where the block was broken

# break blocks above
execute if block ~ ~1 ~ #mineable/shovel run setblock ~ ~1 ~ air destroy
execute if block ~ ~2 ~ #mineable/shovel run setblock ~ ~2 ~ air destroy
execute if block ~ ~3 ~ #mineable/shovel run setblock ~ ~3 ~ air destroy
execute if block ~ ~4 ~ #mineable/shovel run setblock ~ ~4 ~ air destroy

# break blocks below
execute if block ~ ~-1 ~ #mineable/shovel run setblock ~ ~-1 ~ air destroy
execute if block ~ ~-2 ~ #mineable/shovel run setblock ~ ~-2 ~ air destroy
execute if block ~ ~-3 ~ #mineable/shovel run setblock ~ ~-3 ~ air destroy
execute if block ~ ~-4 ~ #mineable/shovel run setblock ~ ~-4 ~ air destroy

# visual and sound effects
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.03 8
#playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~

