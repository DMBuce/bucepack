# runs when a player uses a reflect totem in the mainhand

# revoke advancement
advancement revoke @s only buce:mythic/reflect/mainhand/trigger

# remove totem from mainhand
item replace entity @s weapon.mainhand with air

# activate totem effects
function buce:mythic/reflect/activate

