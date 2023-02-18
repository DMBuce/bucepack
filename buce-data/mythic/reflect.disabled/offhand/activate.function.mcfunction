# runs when a player uses a reflect totem in the offhand

# revoke advancement
advancement revoke @s only buce:mythic/reflect/offhand/trigger

# remove totem from offhand
item replace entity @s weapon.offhand with air

# activate totem effects
function buce:mythic/reflect/activate

