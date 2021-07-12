# runs while a player charges flamethrower

# increment flamethrower_charge
scoreboard players add @s flamethrower_charge 1

# summon flames if charge exceeds threshold
execute if entity @s[scores={flamethrower_charge=25..}] run function bucepack:artifact/flamethrower/activate

# debug
tellraw @s ["Flamethrower charge: ",{"score":{"name":"*","objective":"flamethrower_charge"}}]

# reset charge 4t i.e. 0.2s from the last time this function is called
schedule function bucepack:artifact/flamethrower/reset 4t replace

# revoke advancement
advancement revoke @s only bucepack:artifact/charge_flamethrower

