# runs as a player tping from a deep gate to the surface

# darkness
effect give @s minecraft:darkness 4 0 true

# particles
#particle minecraft:sonic_boom ~ ~ ~ 0.5 0.5 0.5 1 8 force @a
schedule function buce:portal/deep/gate/particles 1.5s append

# tp to surface
tag @s add tp_surface
schedule function buce:portal/deep/gate/tp 2s append

