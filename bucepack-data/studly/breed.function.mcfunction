# runs as the server 1t after a player bred a horse, donkey, or mule

# store age of all horses
# parent Age:5999
# child Age:-24000
execute as @e[type=horse] store result score @s var run data get entity @s Age

# summon an undetectable "mutation" horse with random stats
execute unless entity[type=horse,tag=mutation] run summon horse ~ ~ ~ {Age:-10,Silent:1,NoAI:1,Tags:["genes","mutation"]}

# mutate baby's traits
execute as @e[type=horse,scores={var=-24000}] at @s run function bucepack:studly/baby

