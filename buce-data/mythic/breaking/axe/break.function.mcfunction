# recursively runs as the server

# foreach aec chopper, chop next block
execute as @e[type=area_effect_cloud,tag=chopper] at @s run function buce:mythic/breaking/axe/chop

# recurse until all aec choppers are dead
execute if entity @e[type=area_effect_cloud,tag=chopper] run schedule function buce:mythic/breaking/axe/break 1t replace
