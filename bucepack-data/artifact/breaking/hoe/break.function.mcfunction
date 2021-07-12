# runs as a player using a breaking hoe positioned where the block was broken

# figure out which mining shape to use
execute if entity @s[x_rotation=45..90] run tag @s add facing_y
execute if entity @s[x_rotation=-90..-45] run tag @s add facing_y
execute if entity @s[tag=!facing_y,y_rotation=-45..45] run tag @s add facing_z
execute if entity @s[tag=!facing_y,y_rotation=135..180] run tag @s add facing_z
execute if entity @s[tag=!facing_y,y_rotation=-180..-135] run tag @s add facing_z
execute if entity @s[tag=!facing_y,tag=!facing_z,y_rotation=-135..-45] run tag @s add facing_x
execute if entity @s[tag=!facing_y,tag=!facing_z,y_rotation=45..135] run tag @s add facing_x

# mine blocks
execute if entity @s[tag=facing_x] run function bucepack:artifact/breaking/hoe/break_yz
execute if entity @s[tag=facing_y] run function bucepack:artifact/breaking/hoe/break_xz
execute if entity @s[tag=facing_z] run function bucepack:artifact/breaking/hoe/break_xy

# clean up
tag @s remove facing_x
tag @s remove facing_y
tag @s remove facing_z

