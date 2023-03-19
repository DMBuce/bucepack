# runs as a player in a nether portal

## revoke advancement
#advancement revoke @s only buce:portal/nether/enter

# find distances to nearest ruined portals in overworld and nether
#
# owp = overworld portal
# ntp = nether portal
execute in minecraft:overworld store result score #buce.owp var run locate structure #minecraft:ruined_portal
execute in minecraft:the_nether store result score #buce.ntp var run locate structure #minecraft:ruined_portal

## debug
#say enter portal
#tellraw @a ["overworld : ",{"score":{"name":"#buce.owp","objective":"var"}}]
#tellraw @a ["nether : ",{"score":{"name":"#buce.ntp","objective":"var"}}]

# break portal if nearest ruined portal is too far away
#
# thresholds are the radius of a circle encompassing
# the search area used to find portals when teleporting:
# up to 2 chunks diagonally away in nether,
# or 9 chunks diagonally away in overworld
#
# https://minecraft.fandom.com/wiki/Tutorials/Nether_portals#How_portals_work
execute if score #buce.owp var matches 204.. if score #buce.ntp var matches 46.. run fill ~23 ~23 ~1 ~-23 ~-23 ~-1 minecraft:air replace minecraft:nether_portal
execute if score #buce.owp var matches 204.. if score #buce.ntp var matches 46.. run fill ~1 ~23 ~23 ~-1 ~-23 ~-23 minecraft:air replace minecraft:nether_portal

## break portal if nearest ruined portal is too far away
#execute unless score @s var matches ..128 run fill ~23 ~23 ~1 ~-23 ~-23 ~-1 minecraft:air replace minecraft:nether_portal
#execute unless score @s var matches ..128 run fill ~1 ~23 ~23 ~-1 ~-23 ~-23 minecraft:air replace minecraft:nether_portal

