# runs while a player toots a horn on a mountain

# debug
say mountain

# tp to gate
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["exit"],Duration:1}
tag @s add leaving
execute as @e[type=area_effect_cloud,tag=exit,limit=1] run function buce:portal/deep/return
tag @s remove leaving

