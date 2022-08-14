# runs when a player uses a reflect totem in the void

# give effects
effect give @s minecraft:levitation 3 64 false
effect give @s minecraft:absorption 5 1 false
effect give @s minecraft:regeneration 45 1 false
effect give @s minecraft:fire_resistance 40 0 false

# particles, sound
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.1 0.1 0.1 1 200
playsound minecraft:item.totem.use player @a

