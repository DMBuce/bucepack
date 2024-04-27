# runs when a player holds a light block

# revoke advancement
advancement revoke @s only buce:debugless/light

## debug
#say recovery

execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:15}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"15"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"15"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:14}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"14"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"14"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:13}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"13"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"13"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:12}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"12"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"12"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:11}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"11"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"11"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:10}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"10"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"10"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:9}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"9"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"9"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:8}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"8"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"8"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:7}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"7"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"7"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:6}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"6"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"6"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:5}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"5"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"5"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:4}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"4"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"4"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:3}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"3"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"3"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:2}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"2"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"2"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:1}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"1"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"1"}}}
execute \
	if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{light:{light:0}}}} \
	if predicate {condition:"minecraft:inverted",term:{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{components:{"minecraft:block_state":{level:"0"}}}}}}} \
	run item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:block_state":{level:"0"}}}

