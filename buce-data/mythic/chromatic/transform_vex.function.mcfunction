# runs as a vex that a player channeled lightning on

# summon illusioner
summon illusioner ~ ~ ~ {ActiveEffects:[{Id:28,Amplifier:0,Duration:999999},{Id:12,Amplifier:0,Duration:999999}],DeathLootTable:"buce:mythic/chromatic/illusioner"}

# teleport into the void and die
teleport @s ~ ~-768 ~
kill @s

