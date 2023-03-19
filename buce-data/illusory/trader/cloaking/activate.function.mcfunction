# runs when a player activates cloaking

# revoke advancement
advancement revoke @s only buce:illusory/trader/cloaking/trigger

# give invis
effect give @s invisibility 480 0 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

