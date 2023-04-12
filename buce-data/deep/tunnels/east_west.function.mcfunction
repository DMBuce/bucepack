# runs as a minecart building a tunnel

# debug
tellraw @a ["Pos: ", {"nbt": "Pos", "entity": "@s"}]

# let var = coord % 6
#
# side view w/ value of var as cart moves across rail:
#
#
#    |     |     |     <- pillars
# -------------------  <- rail
# 0123450123450123450  <- var
#
execute store result score @s var run data get entity @s Pos[0]
scoreboard players operation @s var %= #buce.tunnel.length var

## set facing along rail and figure out which tunnel to build
#execute on vehicle at @s facing ~1 ~ ~ if @s[predicate=buce:deep/tunnels/above] run function buce:deep/tunnels/above
#execute on vehicle at @s facing ~1 ~ ~ if @s[predicate=buce:deep/tunnels/below] run function buce:deep/tunnels/below
#execute on vehicle at @s facing ~1 ~ ~ if dimension minecraft:overworld @s[predicate=!buce:deep/tunnels/above,predicate=!buce:deep/tunnels/below] run function buce:deep/tunnels/middle
#execute on vehicle at @s facing ~1 ~ ~ if dimension minecraft:the_end run function buce:deep/tunnels/end
execute if dimension minecraft:the_nether run function buce:deep/tunnels/nether/build

