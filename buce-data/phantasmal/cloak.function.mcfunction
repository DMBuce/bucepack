# runs when a player is hit by a phantom

# revoke advancement
advancement revoke @s only buce:phantasmal/cloak

# turn phantom invisible
effect give @e[type=phantom,distance=..8,limit=1,sort=nearest] invisibility 60 0 true
