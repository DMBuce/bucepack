# runs when a player activates mining

# reset charge
scoreboard players set @s mining_charge 0

# give haste
effect give @s haste 60 1 true

# sound effect
playsound minecraft:block.enchantment_table.use player @a

