# runs when a player puts a saddle on a pig

# revoke advancement
advancement revoke @s only buce:pig_armor/trigger

# put armor on each nearby saddled pig
execute as @e[type=pig,distance=..10,nbt={Saddle:1b}] at @s run attribute @s armor modifier add minecraft:armor 4 add_value

