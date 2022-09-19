# runs when a player activates bounding

# revoke advancement
advancement revoke @s only buce:mythic/bounding/trigger

# give potion effects if player isn't flying
execute if entity @s[nbt=!{FallFlying:1b}] run function buce:mythic/bounding/activate

