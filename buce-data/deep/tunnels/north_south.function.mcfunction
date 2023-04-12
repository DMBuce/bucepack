# runs as a minecart building a tunnel

# revoke advancement
advancement revoke @s only buce:deep/tunnels/north_south

## debug
#tellraw @a ["Pos: ", {"nbt": "Pos", "entity": "@s"}]

# let var = coord % 6
#
# side view w/ value of var as cart moves across rail:
#
#
#    |     |     |     <- pillars
# -------------------  <- rail
# 0123450123450123450  <- var
#
execute on vehicle store result score @s var run data get entity @s Pos[2]
execute on vehicle run scoreboard players operation @s var %= #buce.tunnel.length var
#tellraw @a ["var : ",{"score":{"name":"@s","objective":"var"}}]

# set facing along rail and figure out which tunnel to build
execute on vehicle at @s facing ~ ~ ~1 if dimension minecraft:the_nether run function buce:deep/tunnels/nether/build
execute on vehicle at @s facing ~ ~ ~1 if entity @s[predicate=buce:deep/tunnels/below] run function buce:deep/tunnels/below/build
execute on vehicle at @s facing ~ ~ ~1 if dimension minecraft:overworld if entity @s[predicate=!buce:deep/tunnels/above,predicate=!buce:deep/tunnels/below] run function buce:deep/tunnels/middle/build
#execute on vehicle at @s facing ~ ~ ~1 if @s[predicate=buce:deep/tunnels/above] run function buce:deep/tunnels/above
#execute on vehicle at @s facing ~ ~ ~1 if dimension minecraft:the_end run function buce:deep/tunnels/end

