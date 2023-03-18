# runs as a poseable armor stand

## debug
#say posing

# figure out the pose and set it
execute if entity @s[tag=no,tag=!posed] run function buce:poseable/poses/solemn
execute if entity @s[tag=solemn,tag=!posed] run function buce:poseable/poses/athena
execute if entity @s[tag=athena,tag=!posed] run function buce:poseable/poses/brandish
execute if entity @s[tag=brandish,tag=!posed] run function buce:poseable/poses/honor
execute if entity @s[tag=honor,tag=!posed] run function buce:poseable/poses/entertain
execute if entity @s[tag=entertain,tag=!posed] run function buce:poseable/poses/salute
execute if entity @s[tag=salute,tag=!posed] run function buce:poseable/poses/hero
execute if entity @s[tag=hero,tag=!posed] run function buce:poseable/poses/riposte
execute if entity @s[tag=riposte,tag=!posed] run function buce:poseable/poses/zombie
execute if entity @s[tag=zombie,tag=!posed] run function buce:poseable/poses/cancan_a
execute if entity @s[tag=cancan_a,tag=!posed] run function buce:poseable/poses/cancan_b
execute if entity @s[tag=cancan_b,tag=!posed] run function buce:poseable/poses/default
execute if entity @s[tag=!posed] run function buce:poseable/poses/no

# clean up
tag @s remove posed

