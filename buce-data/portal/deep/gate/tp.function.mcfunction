# runs as the server when a player tps from a deep gate to surface

# tp to surface
execute as @a[tag=tp_surface] at @s positioned over motion_blocking_no_leaves run teleport @s ~ ~ ~

# cleanup
tag @a[tag=tp_surface] remove tp_surface
