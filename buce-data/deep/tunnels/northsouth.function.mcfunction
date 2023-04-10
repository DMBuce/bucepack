# runs every tick while a player wears a tunnel helmet
# in a minecart on a north/south track

# revoke advancement
advancement revoke @s only buce:deep/tunnels/trigger

# debug
say check

## figure out which tunnel to build
#execute on vehicle at @s if @s[predicate=buce:deep/tunnels/above] run function buce:deep/tunnels/ns/above
#execute on vehicle at @s if @s[predicate=buce:deep/tunnels/below] run function buce:deep/tunnels/ns/below
#execute on vehicle at @s if dimension minecraft:overworld @s[predicate=!buce:deep/tunnels/above,predicate=!buce:deep/tunnels/below] run function buce:deep/tunnels/ns/middle
#execute on vehicle at @s if dimension minecraft:the_end run function buce:deep/tunnels/ns/end
execute on vehicle at @s if dimension minecraft:the_nether run function buce:deep/tunnels/ns/nether/build:
	# runs as a minecart in the nether

	# place sculk
	execute positioned ~ ~ ~3 run function buce:deep/tunnels/ns/sculk
	execute positioned ~ ~ ~-3 run function buce:deep/tunnels/ns/sculk:
		# runs as a minecart building a tunnel
		setblock ~2 ~1 ~ minecraft:sculk keep
		setblock ~-2 ~1 ~ minecraft:sculk keep
		setblock ~2 ~-1 ~ minecraft:sculk keep
		setblock ~-2 ~-1 ~ minecraft:sculk keep

	# let var = z % 6
	execute result score @s var run data get entity @s Pos[2]
	scoreboard players operation @s var %= #buce.tunnel.length var

	#     #     #
	#450123450123

	# build tunnel
	execute if score @s var matches 1 positioned ~ ~ ~2 run function buce:deep/tunnels/ns/nether/bottom:
		# runs as a minecart building a tunnel
		setblock ~2 ~ ~ minecraft:polished_blackstone keep
		setblock ~-2 ~ ~ minecraft:polished_blackstone keep
		setblock ~1 ~-1 ~ minecraft:polished_blackstone_brick_slab keep
		setblock ~-1 ~-1 ~ minecraft:polished_blackstone_brick_slab keep

	execute if score @s var matches 2 positioned ~ ~ ~1 run function buce:deep/tunnels/ns/nether/top:
		# runs as a minecart building a tunnel
		setblock ~2 ~2 ~1 minecraft:polished_blackstone keep
		setblock ~-2 ~2 ~1 minecraft:polished_blackstone keep
		setblock ~1 ~4 ~1 minecraft:polished_blackstone keep
		setblock ~-1 ~4 ~1 minecraft:polished_blackstone keep

	execute if score @s var matches 3 run function buce:deep/tunnels/ns/nether/middle:
		# runs as a minecart building a tunnel
		setblock ~2 ~2 ~ minecraft:chiseled_polished_blackstone keep
		setblock ~-2 ~2 ~ minecraft:chiseled_polished_blackstone keep
		setblock ~ ~4 ~ minecraft:polished_blackstone keep

	execute if score @s var matches 4 run positioned ~ ~ ~-1 function buce:deep/tunnels/ns/nether/top

	execute if score @s var matches 5 run positioned ~ ~ ~-2 function buce:deep/tunnels/ns/nether/bottom

