# runs when a player hits a wandering trader

# revoke advancement
advancement revoke @s only buce:illusory/trader/trader

# find wandering trader and maybe turn it into an illusioner
execute as @e[type=wandering_trader,tag=!real,nbt={HurtTime:10s},limit=1] at @s run function buce:illusory/trader/check

