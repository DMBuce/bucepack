# run as a loyalty iii totem that's on a dragon head on a beacon

# debug
#say forming pedestal

# replace structure with end portal frame
setblock ~ ~-1 ~ minecraft:air replace
setblock ~ ~-2 ~ minecraft:end_portal_frame replace

# center the totem in the block
execute as @s at @s align xyz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~

# set some totem data: no gravity, reset velocity, can't be picked up, won't despawn, give it phylactery tag
execute as @s run data merge entity @s {NoGravity:true,Age:-32768s,PickupDelay:32767s,Motion:[0,0,0],Item:{tag:{phylactery:true}}}

# give nearby players advancement
advancement grant @a[distance=0..16,advancements={lichdom:craft_pedestal=false}] only lichdom:craft_pedestal

# make totem drop, play chime sound, and fill in portal frame in a bit
schedule function lichdom:finish_pedestal 80t replace

