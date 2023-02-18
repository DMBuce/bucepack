# runs as a player using a breaking hoe positioned where the block was broken

# break blocks that share a side or edge, but not corner, with this block
#
# top - plus sign
execute if block ~ ~1 ~ #mineable/hoe run setblock ~ ~1 ~ air destroy
execute if block ~1 ~1 ~ #mineable/hoe run setblock ~1 ~1 ~ air destroy
execute if block ~-1 ~1 ~ #mineable/hoe run setblock ~-1 ~1 ~ air destroy
execute if block ~ ~1 ~1 #mineable/hoe run setblock ~ ~1 ~1 air destroy
execute if block ~ ~1 ~-1 #mineable/hoe run setblock ~ ~1 ~-1 air destroy
# middle - ring
execute if block ~1 ~ ~ #mineable/hoe run setblock ~1 ~ ~ air destroy
execute if block ~1 ~ ~1 #mineable/hoe run setblock ~1 ~ ~1 air destroy
execute if block ~ ~ ~1 #mineable/hoe run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~1 #mineable/hoe run setblock ~-1 ~ ~1 air destroy
execute if block ~-1 ~ ~ #mineable/hoe run setblock ~-1 ~ ~ air destroy
execute if block ~-1 ~ ~-1 #mineable/hoe run setblock ~-1 ~ ~-1 air destroy
execute if block ~ ~ ~-1 #mineable/hoe run setblock ~ ~ ~-1 air destroy
execute if block ~1 ~ ~-1 #mineable/hoe run setblock ~1 ~ ~-1 air destroy
# bottom - plus sign
execute if block ~ ~-1 ~ #mineable/hoe run setblock ~ ~-1 ~ air destroy
execute if block ~1 ~-1 ~ #mineable/hoe run setblock ~1 ~-1 ~ air destroy
execute if block ~-1 ~-1 ~ #mineable/hoe run setblock ~-1 ~-1 ~ air destroy
execute if block ~ ~-1 ~1 #mineable/hoe run setblock ~ ~-1 ~1 air destroy
execute if block ~ ~-1 ~-1 #mineable/hoe run setblock ~ ~-1 ~-1 air destroy

# visual and sound effects
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.03 8
#playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~

