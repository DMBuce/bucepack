# runs when a player activates darkvision

# revoke advancement
advancement revoke @s only bucepack:mythic/darkvision/trigger

# give night vision
effect give @s night_vision 480 0 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

