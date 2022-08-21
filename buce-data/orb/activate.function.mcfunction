# runs when a player uses an ender eye

# revoke advancement
advancement revoke @s only buce:orb/trigger

# create shulker box
execute as @e[type=eye_of_ender,sort=nearest,limit=1,nbt={Item:{tag:{BlockEntityTag:{id:"minecraft:shulker_box"}}}}] at @s run function buce:orb/crack

