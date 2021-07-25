# runs as an item looking at a gravitation shield

# set the item's motion
# https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing#wiki_method_2.3A_transferring_everything_directly.2C_using_the_worlds_zero_point_.28optimised.29
#
# summon temporary entity "in front of the item", if the item was at 0 0 0
execute positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^0.5 {Duration:1,Tags:["direction"]}
# copy the aecs position tag to the item motion tag
data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
# clean up
tag @e[tag=direction] remove direction

