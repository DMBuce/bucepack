# runs as a player that joined the world

# put relic in player's enderchest or inventory
execute as @s[nbt={EnderItems:[{Slot:13b}]}] run loot give @s loot buce:relic/random
execute as @s[nbt=!{EnderItems:[{Slot:13b}]}] run loot replace entity @s enderchest.13 loot buce:relic/random

