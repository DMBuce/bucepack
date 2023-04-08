# runs as a player tping from a deep gate to the surface

# darkness
effect give @s minecraft:darkness 4 0 true

# particles
schedule function buce:portal/deep/particles 1.5s append

# tp to surface
tag @s add tp_surface
schedule function buce:portal/deep/gate/tp 2s append

