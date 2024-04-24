# runs when a player is holding an item frame

# revoke advancement
advancement revoke @s only buce:phantasmal/item_frame

# spawn particles
#execute as @e[type=minecraft:item_frame,distance=..16,nbt={Invisible:1b}] at @s run particle minecraft:block_marker minecraft:glass ^ ^ ^0.1
#execute as @e[type=minecraft:glow_item_frame,distance=..16,nbt={Invisible:1b}] at @s run particle minecraft:block_marker minecraft:glass ^ ^ ^0.1
execute as @e[type=minecraft:item_frame,distance=..16,nbt={Invisible:1b}] at @s run particle minecraft:block_marker{block_state:"minecraft:glass"} ^ ^ ^0.1
execute as @e[type=minecraft:glow_item_frame,distance=..16,nbt={Invisible:1b}] at @s run particle minecraft:block_marker{block_state:"minecraft:glass"} ^ ^ ^0.1

