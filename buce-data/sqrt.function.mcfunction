# compute the square root of a positive whole number using newton's method
#
# Usage:
#
# add buce:sqrt and buce:var to your datapack with buce:var in #minecraft:load
#
# set #buce.in var to your input number and make sure it's positive
#
# set #buce.sqrt var to #buce.in var, then call buce:sqrt
#
#     scoreboard players operation #buce.sqrt var = #buce.in var
#     function buce:sqrt
#
# the square root of #buce.in var will be stored into #buce.out var
#

## debug
#scoreboard players add #buce.count var 1

# out = (sqrt + (in / sqrt)) / 2
scoreboard players operation #buce.out var = #buce.in var
scoreboard players operation #buce.out var /= #buce.sqrt var
scoreboard players operation #buce.out var += #buce.sqrt var
scoreboard players operation #buce.out var /= #2 var

# base case: stop if abs(out - sqrt) < 1,
# i.e. if out <= sqrt and out >= sqrt
execute if score #buce.out var <= #buce.sqrt var if score #buce.out var >= #buce.sqrt var run return 0

# update sqrt and recurse
scoreboard players operation #buce.sqrt var = #buce.out var
function buce:sqrt

## compute square root of a positive whole number
## https://discord.com/channels/154777837382008833/157097006500806656/743214600341815306
##
## Usage:
##
## add buce:sqrt and buce:var to your datapack with buce:var in #minecraft:load
##
## set #buce.in var to your input number and make sure it's positive
##
## set #buce.out var and #buce.sqrt var, then call buce:sqrt
##
##     scoreboard players set #buce.out var 0
##     scoreboard players set #buce.sqrt var 32768
##     function buce:sqrt
##
## the square root of #buce.in var will be stored into #buce.out var

## tmp = (out + sqrt)^2
#scoreboard players operation #buce.tmp var = #buce.out var
#scoreboard players operation #buce.tmp var += #buce.sqrt var
#scoreboard players operation #buce.tmp var *= #buce.tmp var
#
## if tmp <= in, out = out + sqrt
#execute if score #buce.tmp var <= #buce.in var run scoreboard players operation #buce.out var += #buce.sqrt var
#
## set sqrt = sqrt/2 and recurse
#scoreboard players operation #buce.sqrt var /= #2 var
#execute if score #buce.sqrt var matches 1.. run function buce:sqrt

