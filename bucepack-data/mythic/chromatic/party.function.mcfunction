# runs as a firework rocket shot by a chromatic crossbow

# spawn a random firework rocket
loot spawn ~ ~ ~ loot bucepack:relic/subtables/fireworks

# copy nbt from item to self
data modify entity @s FireworksItem.tag.Fireworks.Explosions prepend from entity @e[type=item,distance=..0.1,limit=1] Item.tag.Fireworks.Explosions[0]
kill @e[type=item,distance=..0.1,limit=1]

