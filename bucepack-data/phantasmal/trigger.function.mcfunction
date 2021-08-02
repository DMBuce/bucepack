# runs when a player is hit by a phantom

# revoke advancement
advancement revoke @s only bucepack:phantasmal/cloak

# turn phantom invisible
execute as @e[type=phantom,distance=8,limit=1,sort=nearest] run function bucepack:phantasmal/cloak

