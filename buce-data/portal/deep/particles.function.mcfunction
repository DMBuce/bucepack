# runs as the server when a player tps to or from a deep gate

# make particles at teleporting players
execute as @a[tag=tp_surface] at @s run particle minecraft:sonic_boom ~ ~ ~ 0.5 0.5 0.5 1 8
execute as @a[tag=tp_gate] at @s run particle minecraft:sonic_boom ~ ~ ~ 0.5 0.5 0.5 1 8

