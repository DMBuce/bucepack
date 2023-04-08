# runs while a player toots a horn on a mountain

## debug
#say mountain

# darkness
effect give @s minecraft:darkness 4 0 true

# particles
schedule function buce:portal/deep/particles 1.5s append

# tp to gate
tag @s add tp_gate
schedule function buce:portal/deep/mountain/tp 2s append

