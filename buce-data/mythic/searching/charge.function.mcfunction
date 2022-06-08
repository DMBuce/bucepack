# runs while a player charges searching

# revoke advancement
advancement revoke @s only buce:mythic/searching/trigger

# compute @s var - value between -10.3 and 10.3,
#                  10.3 means player is directly facing structure,
#                  -10.3 means player is directly facing away from structure
execute anchored eyes store result score @s var run locate structure #seeking_located
execute anchored eyes positioned ^ ^ ^10 store result score #buce.searching_distance var run locate structure #seeking_located
scoreboard players operation @s var -= #buce.searching_distance var

# reset charge 2t i.e. 0.2s from the last time this function is called
schedule function buce:mythic/uncharge 2t replace

# increment charge
scoreboard players add @s search_charge 1

# ping at different frequencies
execute if entity @s[scores={search_charge=20..,var=1..8}] run function buce:mythic/searching/ding
execute if entity @s[scores={search_charge=10..,var=8..9}] run function buce:mythic/searching/ding
execute if entity @s[scores={search_charge=2..,var=10..}] run function buce:mythic/searching/ding

