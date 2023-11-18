# runs when a player holds a compass

# revoke advancement
advancement revoke @s only buce:debugless/compass

## debug
#say compass

# check whether player is holding lodestone compass or a normal one
#execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{LodestonePos:{}}}]}] run function buce:debugless/map
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{LodestonePos:{}}}]}] run function buce:debugless/lodestone

