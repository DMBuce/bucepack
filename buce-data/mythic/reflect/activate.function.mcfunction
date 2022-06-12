# runs when a player uses a reflect totem in the void

# revoke advancement
advancement revoke @s only buce:mythic/reflect/trigger

# give levitation
effect give @s levitation 2 64 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

