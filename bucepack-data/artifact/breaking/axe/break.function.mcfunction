# recursively runs as the server

#say asdfjkl

# foreach aec chopper, chop next block
execute as @e[type=area_effect_cloud,tag=chopper] at @s run function bucepack:artifact/breaking/axe/chop

# recurse until all aec choppers are dead
execute if entity @e[type=area_effect_cloud,tag=chopper] run schedule function bucepack:artifact/breaking/axe/break 1t replace

