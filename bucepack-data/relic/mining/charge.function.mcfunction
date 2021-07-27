# runs when a player charges mining

# revoke advancement
advancement revoke @s only bucepack:relic/mining/trigger

# increment charge
scoreboard players add @s mining_charge 1

# activate mining
execute if entity @s[scores={mining_charge=250..}] run function bucepack:relic/mining/activate

