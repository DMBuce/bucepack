# runs the first time a player kills a wither

# get gamerule
execute store result score #buce.randtick var run gamerule randomTickSpeed

# set gamerule
execute if score #buce.randtick var matches 1000.. run gamerule randomTickSpeed 4096
execute if score #buce.randtick var matches 200..999 run gamerule randomTickSpeed 1000
execute if score #buce.randtick var matches 30..199 run gamerule randomTickSpeed 200
execute if score #buce.randtick var matches 10..29 run gamerule randomTickSpeed 30
execute if score #buce.randtick var matches ..9 run gamerule randomTickSpeed 10

