# runs when a player puts a saddle on a pig

# revoke advancement
advancement revoke @s only buce:pig_armor/trigger

# put armor on each nearby saddled pig
execute as @e[type=pig,distance=..10,nbt={Saddle:1b}] at @s run attribute @s generic.armor modifier add 2AD3F246-FEE1-4E67-B886-69FD380BB150 generic.armor 4 add_value

