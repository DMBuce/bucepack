# runs when a player hits a phantom

# revoke advancement
advancement revoke @s only bucepack:phantasmal_end/cloak

# make phantom invisible
effect give @e[type=phantom,distance=..256,nbt={HurtTime:10s}] invisibility 60 0 true

