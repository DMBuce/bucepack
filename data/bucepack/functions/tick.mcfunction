# runs every tick

# process player death events
execute as @a[scores={died=1..}] at @a run function #bucepack:death
scoreboard players set @a[scores={died=1..}] died 0

