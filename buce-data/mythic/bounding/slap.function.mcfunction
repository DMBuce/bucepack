# runs when a player hits a white rabbit with a fish

# revoke advancement
advancement revoke @s only buce:mythic/bounding/slap

# transform rabbit
execute as @e[type=rabbit,distance=..8,nbt={RabbitType:1,HurtTime:10s},sort=nearest,limit=1] at @s run function buce:mythic/bounding/transform_rabbit

