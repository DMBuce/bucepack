# runs 102t after a player sleeps in a bed

# get current time
execute store result score #buce.time var run time query daytime

## debug
#tellraw @a ["Time: ",{"score":{"name":"#buce.time","objective":"var"}}]

# start raining
execute if score #buce.time var matches 0..5 if predicate bucepack:more_rain/rain_chance run weather rain 0

