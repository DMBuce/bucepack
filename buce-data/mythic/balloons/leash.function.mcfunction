# runs when a player wearing clown pants leashes an animal

# revoke advancement
advancement revoke @s only buce:mythic/balloons/leash

## debug
#say leash

# give leashed mob permanent levitation
effect give @e[type=#buce:mythic/balloons/balloons,nbt={Leash:{}},nbt=!{ActiveEffects:[{Id:25}]},sort=nearest,limit=1] minecraft:levitation 1000000 0

# sound effect
playsound minecraft:block.enchantment_table.use player @a

