# runs as a horse that was fed a gold apple

# toggle glowing
tag @s[nbt={ActiveEffects:[{Id:24b}]}] add glowing
effect give @s[tag=!glowing] glowing 1000000 0 true
effect clear @s[tag=glowing] glowing

# clean up
tag @s remove glowing
tag @s remove clicked

