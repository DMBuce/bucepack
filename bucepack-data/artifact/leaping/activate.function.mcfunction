# runs when a player activates leaping

# revoke advancement
advancement revoke @s only bucepack:artifact/leaping/trigger

# give jump boost
effect give @s jump_boost 90 1 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

