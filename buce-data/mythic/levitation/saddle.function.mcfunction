# runs when a player wearing a hover shirt saddles a pig

# revoke advancement
advancement revoke @s only buce:mythic/levitation/saddle

## debug
#say pig

# find nearest saddled pig
tag @e[type=minecraft:pig,distance=..8,nbt={Saddle:1b},nbt=!{ActiveEffects:[{Id:1,Amplifier:6b}]},sort=nearest,limit=1] add saddled

# make pig hover
execute as @e[type=minecraft:pig,tag=saddled] run data merge entity @s {NoGravity:1b}
effect give @e[type=minecraft:pig,tag=saddled] minecraft:speed 1000000 6 true
effect give @e[type=minecraft:pig,tag=saddled] minecraft:slow_falling 1000000 0

# cleanup
tag @e[type=minecraft:pig,tag=saddled] remove saddled

# sound effect
playsound minecraft:block.enchantment_table.use player @a

