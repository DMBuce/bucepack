# runs when a player activates levitation

# revoke advancement
advancement revoke @s only buce:mythic/levitation/trigger

## debug
#say arise, chicken

# give levitation
effect give @s levitation 10 1 true
effect give @s slowness 10 1 true
effect give @s slow_falling 20 0 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

