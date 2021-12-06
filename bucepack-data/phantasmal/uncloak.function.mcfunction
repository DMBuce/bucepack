# runs when a player hits a phantom

# revoke advancement
advancement revoke @s only bucepack:phantasmal/uncloak

# make phantom visible
effect clear @e[type=phantom,distance=..256,nbt={HurtTime:10s}] invisibility

