# runs when a player summons a dragon

# revoke advancement
advancement revoke @s only bucepack:mother_phantoms/mama_phantom

## debug
#say big momma
#execute as @e[type=end_crystal] run say ouch

# increment scoreboard
scoreboard players add #buce.dragons_summoned var 1

# summon phantom at 0,0
#execute if score #buce.dragons_summoned var matches 1.. if entity @e[type=ender_dragon,limit=1] run summon phantom 0 120 0 {Size:12,Health:40,PersistenceRequired:1,Tags:["mother"],Attributes:[{Name:"minecraft:generic.attack_damage",Base:20.0d},{Name:"minecraft:generic.attack_knockback",Base:10.0d},{Name:"minecraft:generic.follow_range",Base:16.0d},{Name:"minecraft:generic.max_health",Base:40d}]}
execute if score #buce.dragons_summoned var matches 1.. if entity @e[type=ender_dragon,limit=1] run summon phantom 16 120 0 {Size:12,Health:40,PersistenceRequired:1,Tags:["mother"],Rotation:[0.0f,-90.0f],AX:-10,AY:75,AZ:17,Attributes:[{Name:"minecraft:minecraft:generic.max_health",Base:40d},{Name:"minecraft:generic.follow_range",Base:16.0d},{Name:"minecraft:generic.attack_knockback",Base:5.0d}],DeathLootTable:"minecraft:entities/mother_phantom"}
execute if score #buce.dragons_summoned var matches 2.. if entity @e[type=ender_dragon,limit=1] run summon phantom -8 120 14 {Size:12,Health:40,PersistenceRequired:1,Tags:["mother"],Rotation:[90.0f,-90.0f],AX:-10,AY:75,AZ:-17,Attributes:[{Name:"minecraft:generic.max_health",Base:40d},{Name:"minecraft:generic.follow_range",Base:16.0d},{Name:"minecraft:generic.attack_knockback",Base:5.0d}],DeathLootTable:"minecraft:entities/mother_phantom"}
execute if score #buce.dragons_summoned var matches 3.. if entity @e[type=ender_dragon,limit=1] run summon phantom -8 120 -14 {Size:12,Health:40,PersistenceRequired:1,Tags:["mother"],Rotation:[180.0f,-90.0f],AX:20,AY:75,AZ:0,Attributes:[{Name:"minecraft:generic.max_health",Base:40d},{Name:"minecraft:generic.follow_range",Base:16.0d},{Name:"minecraft:generic.attack_knockback",Base:5.0d}],DeathLootTable:"minecraft:entities/mother_phantom"}

