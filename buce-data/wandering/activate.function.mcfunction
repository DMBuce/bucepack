# runs when a player right clicks a wandering trader

# revoke advancement
advancement revoke @s only buce:wandering/trigger

# add loot barrel trade
#execute as @e[type=wandering_trader,tag=!lootbarrel] run data modify entity @s Offers.Recipes append value {uses:0,maxUses:1,rewardExp:1b,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:barrel",Count:1b,tag:{display:{Lore:["\"§r§7Loot\""]},BlockEntityTag:{LootTable:"buce:wandering/loot_barrel"}}}}
execute as @e[type=wandering_trader,tag=!lootbarrel] run data modify entity @s Offers.Recipes append value {maxUses: 1, sell: {count: 1, id: "minecraft:barrel", components: {"minecraft:lore": ['{"color":"gray","italic":false,"text":"Loot"}'], "minecraft:container_loot": {loot_table: "buce:wandering/loot_barrel"}}}, buy: {count: 6, id: "minecraft:emerald"}, priceMultiplier: 0.05f}

# tag trader
tag @e[type=wandering_trader,tag=!lootbarrel] add lootbarrel

