# runs when a player hits a trader llama

# revoke advancement
advancement revoke @s only buce:illusory/trader/llama

# find wandering trader and maybe turn it into an illusioner
execute as @e[type=trader_llama,nbt={HurtTime:10s}] on leasher if entity @s[type=wandering_trader] at @s run function buce:illusory/trader/check

