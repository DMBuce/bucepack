# executes as an animal when insomnia is on

# turn insomnia off
execute if entity @s[type=cat] run gamerule doInsomnia false

# tell player what happened
execute if entity @s[type=cat] run me looks skyward, as if to say the phantoms are banished

# give health
attribute @s generic.max_health modifier add cacbb3ca-911a-46ad-bd40-6fb5cca59509 generic.max_health 10 add

