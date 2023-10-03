# runs when a player activates mining

# revoke advancement
advancement revoke @s only buce:mythic/mining/haste4

# give haste and darkness
effect give @s haste 60 4 true
effect give @s darkness 60 0 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

