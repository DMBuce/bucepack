# runs when a player charges mining

# revoke advancement
advancement revoke @s only buce:mythic/mining/trigger

# increment charge
scoreboard players add @s mining_charge 1

# activate mining
#execute if entity @s[scores={mining_charge=250..}] if dimension minecraft:the_nether run function buce:mythic/mining/greed
execute if entity @s[scores={mining_charge=250..},y=0,dy=-1000] run function buce:mythic/mining/greed
execute if entity @s[scores={mining_charge=250..}] run function buce:mythic/mining/activate

