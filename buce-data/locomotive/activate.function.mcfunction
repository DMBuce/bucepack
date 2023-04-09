# runs as a furnace cart reversing direction

## debug
#say activate

# reverse the force on minecart
execute store result entity @s PushX double -1 run data get entity @s PushX
execute store result entity @s PushZ double -1 run data get entity @s PushZ

