# runs as a wander trader hit by a player

# figure out if this trader is an illusioner in disguise
execute unless predicate buce:illusory/trader/illusioner_chance run tag @s add real

# turn into illusioner if necessary
execute if entity @s[tag=!real] run function buce:illusory/trader/activate

