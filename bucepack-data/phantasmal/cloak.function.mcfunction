# runs as a phantom that hit a player

# give invis
effect give @s invisibility 60 0 true

# remove knockback
attribute @s minecraft:generic.attack_knockback base set 0

# remove collision
team join phantasmal @s

## sound effect
#playsound minecraft:block.enchantment_table.use player @a
