# runs as the server when a player tps from a mountain to a deep gate

# tp to gate
execute as @a[tag=tp_gate] at @s run function buce:portal/deep/mountain/leave

# particles
function buce:portal/deep/particles

# cleanup
tag @a[tag=tp_gate] remove tp_gate

