# runs when a player activates silence

# revoke advancement
advancement revoke @s only buce:mythic/silence/trigger

# tag nearby named mobs
execute as @e[distance=..8] if data entity @s CustomName run tag @s[nbt=!{Silent:1b}] add named

# silence the mob we named
execute anchored eyes positioned ^ ^ ^1.5 run data modify entity @e[tag=named,sort=nearest,limit=1] Silent set value 1b

## debug
#say silence
#execute anchored eyes positioned ^ ^ ^1.5 run effect give @e[tag=named,sort=nearest,limit=1] glowing

# cleanup
tag @e[tag=named] remove named

