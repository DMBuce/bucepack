#!/bin/bash

echo "# generated by ${0##*/}"

template_mainhand='execute as @s[nbt={SelectedItem:{id:"minecraft:%s"}}%s] run replaceitem entity @s weapon.mainhand minecraft:%s %s'
template_offhand='execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:%s"}]}%s] run replaceitem entity @s weapon.offhand minecraft:%s %s'
while read food rottenfood amount selector; do
	printf "$template_mainhand\n" "$food" "$selector" "$rottenfood" "$amount"
	printf "$template_offhand\n" "$food" "$selector" "$rottenfood" "$amount"
done <<-EOF
	apple                  rotten_flesh     2 
	baked_potato           poisonous_potato 1 
	beef                   rotten_flesh     2 ,team=!bunny
	beetroot               rotten_flesh     2 
	beetroot_soup          rotten_flesh     2 
	bread                  rotten_flesh     2 
	cake                   rotten_flesh     2 
	carrot                 rotten_flesh     2 ,team=!bunny
	chicken                rotten_flesh     2 ,team=!bunny
	chorus_fruit           rotten_flesh     2 
	cod                    rotten_flesh     2 ,team=!bunny
	cooked_beef            rotten_flesh     2 
	cooked_chicken         rotten_flesh     2 
	cooked_cod             rotten_flesh     2 
	cooked_mutton          rotten_flesh     2 
	cooked_porkchop        rotten_flesh     2 
	cooked_rabbit          rotten_flesh     2 
	cooked_salmon          rotten_flesh     2 
	cookie                 rotten_flesh     2 
	dried_kelp             rotten_flesh     2 ,team=!turtle
	enchanted_golden_apple rotten_flesh     2 
	golden_apple           rotten_flesh     2 
	golden_carrot          rotten_flesh     2 
	honey_bottle           rotten_flesh     2 
	melon_slice            rotten_flesh     2 
	mushroom_stew          rotten_flesh     2 
	mutton                 rotten_flesh     2 ,team=!bunny
	porkchop               rotten_flesh     2 ,team=!bunny
	potato                 poisonous_potato 1
	pufferfish             rotten_flesh     2 
	pumpkin_pie            rotten_flesh     2 
	rabbit                 rotten_flesh     2 ,team=!bunny
	rabbit_stew            rotten_flesh     2 
	salmon                 rotten_flesh     2 ,team=!bunny
	suspicious_stew        rotten_flesh     2 
	sweet_berries          rotten_flesh     2 
	tropical_fish          rotten_flesh     2 
EOF

exit

template='execute as @s[nbt={SelectedItem:{id:"minecraft:%s"}}] run replaceitem entity @s weapon.mainhand minecraft:poisonous_potato 1'
for food in \
	baked_potato \
	potato
do
	printf "$template\n" "$food"
done

template='execute as @s[nbt={SelectedItem:{id:"minecraft:%s"}}] run replaceitem entity @s weapon.mainhand minecraft:rotten_flesh 2'
for food in \
	apple \
	beef \
	beetroot \
	beetroot_soup \
	bread \
	cake \
	carrot \
	chicken \
	chorus_fruit \
	cod \
	cooked_beef \
	cooked_chicken \
	cooked_cod \
	cooked_mutton \
	cooked_porkchop \
	cooked_rabbit \
	cooked_salmon \
	cookie \
	dried_kelp \
	enchanted_golden_apple \
	golden_apple \
	golden_carrot \
	honey_bottle \
	melon_slice \
	mushroom_stew \
	mutton \
	porkchop \
	pufferfish \
	pumpkin_pie \
	rabbit \
	rabbit_stew \
	salmon \
	suspicious_stew \
	sweet_berries \
	tropical_fish
do
	printf "$template\n" "$food"
done

