# runs as a player who charged their searching spyglass

# play sound
playsound minecraft:entity.player.levelup player @a

# summon ender eye
#execute anchored eyes positioned ^ ^-0.125 ^2 unless entity @e[type=snowball,tag=searching_eye,distance=50] run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:eye_of_ender",Count:1b,Enchantments:[{id:infinity,lvl:1}]},Tags:["searching_eye"]}
execute anchored eyes positioned ^ ^-0.125 ^2 run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:ender_eye",Count:1b,Enchantments:[{id:infinity,lvl:1}]},Tags:["searching_eye"]}

# set its motion and owner
# https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing#wiki_method_2.3A_transferring_everything_directly.2C_using_the_worlds_zero_point_.28optimised.29
#
# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Tags:["direction"]}
# copy the aecs position tag to the snowball motion (power?) tag
data modify entity @e[type=snowball,tag=searching_eye,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
## set owner tag
#data modify entity @e[type=snowball,tag=searching_eye,limit=1] Owner set from entity @s UUID
# clean up
tag @e[tag=searching_eye] remove searching_eye

# reset charge
scoreboard players set @s search_charge 0

