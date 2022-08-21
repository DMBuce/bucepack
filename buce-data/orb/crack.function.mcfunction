# runs as an ender eye that a player used

## test
#say boxing items

# create shulker box
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:shulker_box",Count:1b},Tags:["box"]}
data modify entity @e[type=item,tag=box,limit=1] Item.tag set from entity @s Item.tag

# cleanup
tag @e[type=item,tag=box] remove box
kill @s

