# runs as a player using a breaking pick

# snap rotation to grid and break blocks
tag @s remove broke_3x3
execute if entity @s[tag=!broke_3x3,x_rotation=-90..-45] rotated 0 -90 positioned as @e[type=item,distance=..8,limit=1,nbt={Age:0s}] run function buce:mythic/breaking/pick/break_3x3
execute if entity @s[tag=!broke_3x3,x_rotation=45..90] rotated 0 90 positioned as @e[type=item,distance=..8,limit=1,nbt={Age:0s}] run function buce:mythic/breaking/pick/break_3x3
execute if entity @s[tag=!broke_3x3,y_rotation=45..135] rotated 90 0 positioned as @e[type=item,distance=..8,limit=1,nbt={Age:0s}] run function buce:mythic/breaking/pick/break_3x3
execute if entity @s[tag=!broke_3x3,y_rotation=-135..-45] rotated -90 0 positioned as @e[type=item,distance=..8,limit=1,nbt={Age:0s}] run function buce:mythic/breaking/pick/break_3x3
execute if entity @s[tag=!broke_3x3,y_rotation=-180..-135] rotated 180 0 positioned as @e[type=item,distance=..8,limit=1,nbt={Age:0s}] run function buce:mythic/breaking/pick/break_3x3
execute if entity @s[tag=!broke_3x3,y_rotation=135..180] rotated 180 0 positioned as @e[type=item,distance=..8,limit=1,nbt={Age:0s}] run function buce:mythic/breaking/pick/break_3x3
execute if entity @s[tag=!broke_3x3,y_rotation=-45..45] rotated 0 0 positioned as @e[type=item,distance=..8,limit=1,nbt={Age:0s}] run function buce:mythic/breaking/pick/break_3x3

