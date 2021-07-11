# runs while a player charges fireball

# increment fireball_charge
scoreboard players add @s fireball_charge 1

# summon fireball if charge exceeds threshold
execute if entity @s[scores={fireball_charge=20..}] run function bucepack:artifact/fireball/activate

# debug
tellraw @s ["Fireball charge: ",{"score":{"name":"*","objective":"fireball_charge"}}]

# reset charge 4t i.e. 0.2s from the last time this function is called
schedule function bucepack:artifact/fireball/reset 4t replace

# revoke advancement
advancement revoke @s only bucepack:artifact/charge_fireball

