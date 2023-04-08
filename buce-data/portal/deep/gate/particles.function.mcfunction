# runs as the server when a player tps from a deep gate to surface

# make particles at gate and surface
execute as @a[tag=tp_surface] at @s run particle minecraft:sonic_boom ~ ~ ~ 0.5 0.5 0.5 1 8 force @a
execute as @a[tag=tp_surface] at @s positioned over motion_blocking_no_leaves run particle minecraft:sonic_boom ~ ~ ~ 0.5 0.5 0.5 1 8 force @a

