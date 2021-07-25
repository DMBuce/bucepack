# runs as a player using a breaking pick

# summon some marker aecs, one in each direction
summon minecraft:area_effect_cloud ~1 ~ ~ {Duration:1,Tags:["axis"]}
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["axis"]}
summon minecraft:area_effect_cloud ~ ~ ~1 {Duration:1,Tags:["axis"]}
summon minecraft:area_effect_cloud ~-1 ~ ~ {Duration:1,Tags:["axis"]}
summon minecraft:area_effect_cloud ~ ~-1 ~ {Duration:1,Tags:["axis"]}
summon minecraft:area_effect_cloud ~ ~ ~-1 {Duration:1,Tags:["axis"]}

# snap rotation to axis and break blocks
execute positioned ^ ^ ^-1 at @e[type=area_effect_cloud,tag=axis,distance=..0.5,sort=nearest,limit=1] facing entity @s feet positioned as @s positioned as @e[type=item,distance=..8,limit=1,nbt={Age:0s}] run function bucepack:relic/breaking/pick/break_3x3

