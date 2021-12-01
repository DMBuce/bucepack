# runs when a player activates levitation

# revoke advancement
advancement revoke @s only bucepack:mythic/levitation/trigger

## debug
#say arise, chicken

# give levitation
effect give @s levitation 90 255 true
effect give @s slowness 90 1 true
effect give @s slow_falling 150 0 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

