# runs as a player that just bred a horse, donkey, or mule

# revoke advancement
advancement revoke @s only bucepack:studly/trigger

# summon an undetectable "mutation" horse with random stats
#
# in order to get random stats, we can't apply nbt tags with /summon,
# so we need to do it with /data instead
execute unless entity @e[type=horse,tag=mutation] run summon horse ~ -128 ~
execute positioned ~ -128 ~ as @e[type=horse,distance=..1,limit=1] run data merge entity @s {Age:-60,Silent:1,NoAI:1,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}],Tags:["genes","mutation"]}
#execute as @e[type=horse,tag=mutation,limit=1] run function bucepack:studly/debug

# adjust baby stats in 1t when it's born
schedule function bucepack:studly/breed 1t append

