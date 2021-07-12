# runs as a player who charged their fireball bow

# summon fireball
#title @s actionbar "Fireball!"
execute anchored eyes positioned ^ ^-0.5 ^2 unless entity @e[type=fireball,distance=..1] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:3}
#execute anchored eyes positioned ^ ^-0.5 ^2 unless entity @e[type=fireball,distance=..1] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:3,Tags:["fireball"]}

## set its motion and owner
## https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing#wiki_method_2.3A_transferring_everything_directly.2C_using_the_worlds_zero_point_.28optimised.29
##
## summon temporary entity "in front of the player", if the player was standing at 0 0 0
#execute positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Tags:["direction"]}
## copy the aecs position tag to the fireball motion (power?) tag
##data modify entity @e[type=fireball,tag=fireball,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
#data modify entity @e[type=fireball,tag=fireball,limit=1] power set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
## set owner tag
#data modify entity @e[type=fireball,tag=fireball,limit=1] Owner set from entity @s UUID
## clean up
#tag @e[tag=fireball] remove fireball

# reset fireball charge
function bucepack:artifact/fireball/reset

