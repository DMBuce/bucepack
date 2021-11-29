# runs when a vex is struck by lightning

# revoke advancement
advancement revoke @s only bucepack:mythic/chromatic/channel_vex

## debug
#say yikes!
#execute as @e[type=vex,distance=..256,nbt={HurtTime:10s}] run say 10
#execute as @e[type=vex,distance=..256,nbt={HurtTime:9s}] run say 9
#execute as @e[type=vex,distance=..256,nbt={HurtTime:8s}] run say 8
#execute as @e[type=vex,distance=..256,nbt={HurtTime:7s}] run say 7
#execute as @e[type=vex,distance=..256,nbt={HurtTime:6s}] run say 6
#execute as @e[type=vex,distance=..256,nbt={HurtTime:5s}] run say 5
#execute as @e[type=vex,distance=..256,nbt={HurtTime:4s}] run say 4
#execute as @e[type=vex,distance=..256,nbt={HurtTime:3s}] run say 3
#execute as @e[type=vex,distance=..256,nbt={HurtTime:2s}] run say 2
#execute as @e[type=vex,distance=..256,nbt={HurtTime:1s}] run say 1
#execute as @e[type=vex,distance=..256,nbt={HurtTime:1s}] run say 0
#kill @e[type=vex]

# transform the vex
execute as @e[type=vex,distance=..256,nbt={HurtTime:9s}] at @s run function bucepack:mythic/chromatic/transform_vex

