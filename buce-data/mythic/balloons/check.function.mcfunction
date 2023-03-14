# runs as a mob near a player that leashed a creature while wearing clown pants

# tag self if leashed to player
execute store result score @s var run data get entity @s Leash.UUID[0]
execute if score @s var = #buce.leasher var run tag @s add leashed

