# runs as a player using a breaking pick positioned where the block was broken

# break blocks above/below/left/right and to the corners
execute if block ^1 ^ ^ #mineable/pickaxe run setblock ^1 ^ ^ air destroy
execute if block ^1 ^1 ^ #mineable/pickaxe run setblock ^1 ^1 ^ air destroy
execute if block ^ ^1 ^ #mineable/pickaxe run setblock ^ ^1 ^ air destroy
execute if block ^-1 ^1 ^ #mineable/pickaxe run setblock ^-1 ^1 ^ air destroy
execute if block ^-1 ^ ^ #mineable/pickaxe run setblock ^-1 ^ ^ air destroy
execute if block ^-1 ^-1 ^ #mineable/pickaxe run setblock ^-1 ^-1 ^ air destroy
execute if block ^ ^-1 ^ #mineable/pickaxe run setblock ^ ^-1 ^ air destroy
execute if block ^1 ^-1 ^ #mineable/pickaxe run setblock ^1 ^-1 ^ air destroy

