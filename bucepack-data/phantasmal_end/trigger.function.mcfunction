# runs when a player hits a dragon

# revoke advancement
advancement revoke @s only bucepack:phantasmal_end/phantom

# debug
say running trigger
execute as @e[type=end_crystal] run say ouch

# summon phantoms
execute as @e[type=end_crystal] at @s run summon phantom ~ ~1 ~

