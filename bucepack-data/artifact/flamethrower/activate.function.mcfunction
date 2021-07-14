# runs as a player who charged their flamethrower bow

# summon three flames
#title @s actionbar "Flame on!"
#execute anchored eyes positioned ^ ^-0.5 ^2 unless entity @e[type=small_fireball,distance=..1] run summon minecraft:flamethrower ~ ~ ~ {ExplosionPower:3,Tags:["flamethrower"]}
execute anchored eyes positioned ^ ^-0.15625 ^1 run summon minecraft:small_fireball ~ ~ ~ {ExplosionPower:3,Tags:["flame_thrown"]}

# set its motion and owner
# https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing#wiki_method_2.3A_transferring_everything_directly.2C_using_the_worlds_zero_point_.28optimised.29
#
# summon temporary entity "in front of the player", if the player was standing at 0 0 0
execute positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^0.5 {Duration:1,Tags:["direction"]}
# copy the aecs position tag to the flamethrower motion (power?) tag
#data modify entity @e[type=small_fireball,tag=flame_thrown,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
data modify entity @e[type=small_fireball,tag=flame_thrown,limit=1] power set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
# set owner tag
data modify entity @e[type=small_fireball,tag=flame_thrown,limit=1] Owner set from entity @s UUID
# clean up
tag @e[tag=flame_thrown] remove flame_thrown

# play sound
playsound minecraft:entity.blaze.shoot player @s

# reset flamethrower charge
scoreboard players set @s flame_charge 13

