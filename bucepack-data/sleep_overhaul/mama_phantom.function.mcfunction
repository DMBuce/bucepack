# runs when a player summons a dragon

# revoke advancement
advancement revoke @s only bucepack:sleep_overhaul/mama_phantom

## debug
#say big momma
#execute as @e[type=end_crystal] run say ouch

# increment scoreboard
scoreboard players add #buce.dragons_summoned var 1

# summon phantom at 0,0
#execute if score #buce.dragons_summoned var matches 1.. if entity @e[type=ender_dragon,limit=1] run summon phantom 0 128 0 {Size:12,Health:40,PersistenceRequired:1,Tags:["mother"],Attributes:[{Name:"generic.attack_damage",Base:20.0F},{Name:"generic.attack_knockback",Base:10.0F},{Name:"generic.follow_range",Base:2048.0F},{Name:"generic.max_health",Base:40F}]}
execute if score #buce.dragons_summoned var matches 1.. if entity @e[type=ender_dragon,limit=1] run summon phantom 16 128 0 {Size:12,Health:40,PersistenceRequired:1,Tags:["mother"],Rotation:[0.0f,-90.0f],AX:-10,AY:85,AZ:17,Attributes:[{Name:"generic.max_health",Base:40F},{Name:"generic.follow_range",Base:2048.0F},{Name:"generic.attack_knockback",Base:5.0F}]}
execute if score #buce.dragons_summoned var matches 2.. if entity @e[type=ender_dragon,limit=1] run summon phantom -8 128 14 {Size:12,Health:40,PersistenceRequired:1,Tags:["mother"],Rotation:[90.0f,-90.0f],AX:-10,AY:85,AZ:-17,Attributes:[{Name:"generic.max_health",Base:40F},{Name:"generic.follow_range",Base:2048.0F},{Name:"generic.attack_knockback",Base:5.0F}]}
execute if score #buce.dragons_summoned var matches 3.. if entity @e[type=ender_dragon,limit=1] run summon phantom -8 128 -14 {Size:12,Health:40,PersistenceRequired:1,Tags:["mother"],Rotation:[180.0f,-90.0f],AX:20,AY:85,AZ:0,Attributes:[{Name:"generic.max_health",Base:40F},{Name:"generic.follow_range",Base:2048.0F},{Name:"generic.attack_knockback",Base:5.0F}]}

