# runs as an equine baby that was just born
#
# mutation horse tags = genes, mutation
#
# horse width = 1.3965  ~ 1.4
# half hwidth = 0.69825 ~ 0.7

# tag parents and self
tag @s add genes
tag @e[predicate=bucepack:breeding_overhaul/equine,scores={var=5999},distance=..2.1,limit=2] add genes

# debug
say I'm being born!
#execute as @e[tag=genes] run say I'm a parent
#execute as @e[predicate=bucepack:breeding_overhaul/equine,scores={var=5999},distance=..2.1] run tellraw @a ["Age : ",{"score":{"name":"@s","objective":"var"}}]

# grab the mutation horse
teleport @e[type=horse,tag=mutation,limit=1] ~ ~ ~

# debug
tellraw @a [":"]
tellraw @a [":"]
tellraw @a ["== Old Baby Stats =="]
function bucepack:breeding_overhaul/debug

# set stats
data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @e[predicate=bucepack:breeding_overhaul/equine,tag=genes,distance=..2.1,limit=1,sort=random] Attributes[{Name:"minecraft:generic.max_health"}].Base
execute unless entity @s[type=llama] run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from entity @e[predicate=bucepack:breeding_overhaul/equine,tag=genes,distance=..2.1,limit=1,sort=random] Attributes[{Name:"minecraft:generic.movement_speed"}].Base
execute unless entity @s[type=llama] run data modify entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base set from entity @e[predicate=bucepack:breeding_overhaul/equine,tag=genes,distance=..2.1,limit=1,sort=random] Attributes[{Name:"minecraft:horse.jump_strength"}].Base
data modify entity @s Health set from entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base

# debug
tellraw @a ["== New Baby Stats =="]
function bucepack:breeding_overhaul/debug
tellraw @a ["== Parent Stats =="]
execute as @e[predicate=bucepack:breeding_overhaul/equine,tag=genes,tag=!mutation,scores={var=5999}] run function bucepack:breeding_overhaul/debug
tellraw @a ["== Mutation Stats =="]
execute as @e[predicate=bucepack:breeding_overhaul/equine,tag=mutation] run function bucepack:breeding_overhaul/debug

# clean up
execute as @e[type=horse,tag=mutation] run teleport @s ~ ~-255 ~
kill @e[type=horse,tag=mutation]
tag @e[predicate=bucepack:breeding_overhaul/equine,tag=genes,distance=..2.1] remove genes

