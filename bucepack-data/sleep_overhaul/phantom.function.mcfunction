# runs when a player hits an end crystal

# revoke advancement
advancement revoke @s only bucepack:sleep_overhaul/phantom

# debug
execute as @e[type=end_crystal] run say ouch

# summon phantom above ender dragon
execute as @e[type=ender_dragon,limit=1] at @s run execute summon phantom ~ ~3 ~

