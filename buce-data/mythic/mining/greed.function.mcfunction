# runs when a player activates mining in the nether or below y=0

# reset charge
scoreboard players set @s mining_charge 0

# give haste and darkness
effect give @s haste 60 4 true
effect give @s darkness 60 0 true

# sound effect
#playsound minecraft:block.enchantment_table.use player @a
playsound minecraft:entity.warden.emerge player @a

