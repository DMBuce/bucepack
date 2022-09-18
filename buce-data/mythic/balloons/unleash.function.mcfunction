# runs when a player unleashes a balloon

# revoke advancement
advancement revoke @s only buce:mythic/balloons/unleash

## debug
#say unleash

# find nearest unleashed levitating mob
tag @e[type=#buce:mythic/balloons/balloons,distance=..8,nbt=!{Leash:{}},nbt={ActiveEffects:[{Id:25}]},sort=nearest,limit=1] add unleashed

# remove levitation and give slow falling to unleashed mob
effect give @e[type=#buce:mythic/balloons/balloons,tag=unleashed,limit=1] minecraft:slow_falling 300 0
effect clear @e[type=#buce:mythic/balloons/balloons,tag=unleashed,limit=1] minecraft:levitation

# cleanup
tag @e[type=#buce:mythic/balloons/balloons,tag=unleashed] remove unleashed

