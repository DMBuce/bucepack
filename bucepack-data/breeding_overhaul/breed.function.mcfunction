# runs as the server 1t after a player bred a horse, donkey, or mule

# store age of all equines
# parent Age:5999
# child Age:-24000
execute as @e[predicate=bucepack:breeding_overhaul/equine] store result score @s var run data get entity @s Age

# mutate baby's traits
execute as @e[predicate=bucepack:breeding_overhaul/equine,scores={var=-24000}] at @s run function bucepack:breeding_overhaul/baby

