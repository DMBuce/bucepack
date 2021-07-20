# runs when a player activates absorbing

# revoke advancement
advancement revoke @s only bucepack:artifact/absorbing/trigger

# give absorption
effect give @s absorption 120 2 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

