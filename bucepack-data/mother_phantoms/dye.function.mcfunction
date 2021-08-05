# runs when a player applies unsleeping and vitality to a cat collar

# revoke advancement
advancement revoke @s only bucepack:mother_phantoms/dye

# toggle insomnia
execute store result score #buce.insomnia var run gamerule doInsomnia
execute if score #buce.insomnia var matches ..0 anchored eyes positioned ^ ^ ^1 as @e[predicate=bucepack:mother_phantoms/dyeable,distance=..8,limit=1,sort=nearest] at @s run function bucepack:mother_phantoms/do_insomnia
execute if score #buce.insomnia var matches 1.. anchored eyes positioned ^ ^ ^1 as @e[predicate=bucepack:mother_phantoms/dyeable,distance=..8,limit=1,sort=nearest] at @s run function bucepack:mother_phantoms/dont_insomnia

