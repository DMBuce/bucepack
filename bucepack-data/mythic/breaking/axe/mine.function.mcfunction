# runs 1t after a block is broken with breaking axe

# summon aec at broken block's position
execute as @a[tag=breaking_axe] at @s positioned ~ ~1 ~ at @e[type=item,distance=..6,limit=1,nbt={Age:0s}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:32s,Tags:["chopper"]}

# recursively break blocks upward
function bucepack:relic/breaking/axe/break

# clean up
tag @a[tag=breaking_axe] remove breaking_axe
