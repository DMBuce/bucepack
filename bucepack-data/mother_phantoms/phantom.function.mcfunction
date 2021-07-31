# runs when a player hits a mama phantom

# revoke advancement
advancement revoke @s only bucepack:mother_phantoms/phantom

## debug
#say little baby
#execute as @e[type=end_crystal] run say ouch

# summon phantom at each end crystal and each mama phantom with 25% chance
#execute in minecraft:the_end positioned 0 90 0 as @e[type=end_crystal,predicate=bucepack:mother_phantoms/baby_phantom_chance,distance=..50] at @s run summon phantom ~ ~2 ~ {Rotation:[0.0f,90.0f]}
execute as @e[type=phantom,predicate=bucepack:mother_phantoms/baby_phantom_chance,tag=mother] at @s run summon phantom ~ ~-1 ~ {Rotation:[0.0f,-90.0f]}
#execute as @e[type=phantom,predicate=bucepack:mother_phantoms/baby_phantom_chance,distance=..128,nbt={Size:12}] at @s facing ~ 0 ~ run summon phantom ~ ~-1 ~ {Rotation:[0.0f,-90.0f],Attributes:[{Name:"minecraft:generic.follow_range",Base:16.0d}]}

