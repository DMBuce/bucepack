# runs as an area effect cloud near a player tooting a deep gate horn

## debug
#say return

# teleport player to exit location
data modify entity @s Pos set from entity @a[tag=leaving,predicate=buce:portal/deep/mainhand,limit=1] SelectedItem.tag.GatePos
data modify entity @s Pos set from entity @a[tag=leaving,predicate=!buce:portal/deep/mainhand,limit=1] Inventory[{Slot:-106b}].tag.GatePos
teleport @a[tag=leaving,limit=1] @s
#tellraw @a ["x: ", {"nbt": "SelectedItem.tag.GatePos", "entity": "@s"}]
#tellraw @a ["y: ", {"nbt": "SelectedItem.tag.GatePos", "entity": "@s"}]
#tellraw @a ["z: ", {"nbt": "SelectedItem.tag.GatePos", "entity": "@s"}]
kill @s

