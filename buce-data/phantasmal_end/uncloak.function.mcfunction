# runs when a player is hit by a phantom

# revoke advancement
advancement revoke @s only buce:phantasmal_end/uncloak

# make phantom visible
effect clear @e[type=phantom,distance=..8,limit=1,sort=nearest] invisibility

