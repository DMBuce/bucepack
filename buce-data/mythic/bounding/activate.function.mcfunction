# runs when a player activates bounding

# revoke advancement
advancement revoke @s only buce:mythic/bounding/trigger

# give speed and jump boost
effect give @s speed 90 1 true
effect give @s jump_boost 90 1 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

