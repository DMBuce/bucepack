# runs every tick while a player wears a tunnel helmet in a minecart

# revoke advancement
advancement revoke @s only buce:deep/tunnels/trigger

# debug
say check

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
execute on vehicle scoreboard players operation @s var %= #buce.tunnel.length var

## set facing along rail and figure out which tunnel to build
#execute on vehicle at @s facing ~ ~ ~1 if @s[predicate=buce:deep/tunnels/above] run function buce:deep/tunnels/above
#execute on vehicle at @s facing ~ ~ ~1 if @s[predicate=buce:deep/tunnels/below] run function buce:deep/tunnels/below
#execute on vehicle at @s facing ~ ~ ~1 if dimension minecraft:overworld @s[predicate=!buce:deep/tunnels/above,predicate=!buce:deep/tunnels/below] run function buce:deep/tunnels/middle
#execute on vehicle at @s facing ~ ~ ~1 if dimension minecraft:the_end run function buce:deep/tunnels/end
execute on vehicle at @s facing ~ ~ ~1 if dimension minecraft:the_nether run function buce:deep/tunnels/nether/build

