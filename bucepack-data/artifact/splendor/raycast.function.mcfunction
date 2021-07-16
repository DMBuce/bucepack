# runs as a player with @s = 6 who clicked on a horse
#
# horse width = 1.3965  ~ 1.4
# half hwidth = 0.69825 ~ 0.7

# decrement counter
scoreboard players add @s var -1

# try to tag horse
tag @e[type=horse,distance=..0.7,limit=1,nbt={ArmorItem:{tag:{banding:1b}}}] add clicked

# recurse if we didn't find horse
execute unless entity @e[type=horse,distance=..0.7,tag=clicked] if @s[scores={var=0..}] positioned ^ ^ ^1.3965 run function bucepack:artifact/splendor/raycast

