# runs while a player maybe charges stormcalling

# charge stormcalling if player is facing somewhat upwards
execute as @s facing ~ 10000 ~ positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.0] run function bucepack:artifact/stormcalling/charge

# revoke advancement
advancement revoke @s only bucepack:artifact/charge_stormcalling
