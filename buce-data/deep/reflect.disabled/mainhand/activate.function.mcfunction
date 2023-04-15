# runs when a player uses a reflect totem in the mainhand

# revoke advancement
advancement revoke @s only buce:deep/reflect/mainhand/trigger

# remove totem from mainhand
item replace entity @s weapon.mainhand with air

# activate totem effects
function buce:deep/reflect/activate

