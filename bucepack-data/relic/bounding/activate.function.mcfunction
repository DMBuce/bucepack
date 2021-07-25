# runs when a player activates bounding

# revoke advancement
advancement revoke @s only bucepack:relic/bounding/trigger

# give jump boost
effect give @s jump_boost 90 1 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

