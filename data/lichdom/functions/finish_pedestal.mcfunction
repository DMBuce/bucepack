# runs as server a few seconds after a phylactery pedestal is formed

# fill in portal frame and play chime sound
#execute as @e[type=item,nbt={NoGravity:true,Item:{id:"minecraft:totem_of_undying",tag:{phylactery:true}}}] at @s if block ~ ~-2 ~ minecraft:end_portal_frame run playsound minecraft:block.end_portal.spawn ambient @a[distance=0..32]
execute as @e[type=item,nbt={NoGravity:true,Item:{id:"minecraft:totem_of_undying",tag:{phylactery:true}}}] at @s if block ~ ~-2 ~ minecraft:end_portal_frame run playsound minecraft:block.end_portal_frame.fill block @a[distance=0..16]
execute as @e[type=item,nbt={NoGravity:true,Item:{id:"minecraft:totem_of_undying",tag:{phylactery:true}}}] at @s if block ~ ~-2 ~ minecraft:end_portal_frame run setblock ~ ~-2 ~ minecraft:end_portal_frame[eye=true] replace

# make phylacteries fall
execute as @e[type=item,nbt={NoGravity:true,Item:{id:"minecraft:totem_of_undying",tag:{phylactery:true}}}] at @s run data merge entity @s {NoGravity:false}

