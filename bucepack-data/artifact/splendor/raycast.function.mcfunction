# runs as a player with @s var = 6 who clicked on a horse
#
# horse width = 1.3965  ~ 1.4
# half hwidth = 0.69825 ~ 0.7

## debug
#tellraw @a ["var: ",{"score":{"name":"@s","objective":"var"}}]

# decrement counter
scoreboard players remove @s var 1

# try to tag horse
#execute as @e[type=horse,distance=..1.4,limit=1,nbt={ArmorItems:[{tag:{splendor:1b}}]}] run say tagging
tag @e[type=horse,distance=..1.4,limit=1,nbt={ArmorItems:[{tag:{splendor:1b}}]}] add clicked

# recurse if we didn't find horse
execute unless entity @e[type=horse,distance=..1.4,tag=clicked] if entity @s[scores={var=0..}] positioned ^ ^ ^1.3965 run function bucepack:artifact/splendor/raycast

