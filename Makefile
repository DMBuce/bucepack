
PACKFILES = paintingoverhaul.zip noteguide.zip brewguide.zip \
	techarrows.zip ravager.zip villagemech.zip pigarmor.zip oretypes.zip \
	retrofood.zip retroiron.zip retromoo.zip retrotwang.zip retrosploosh.zip retrocrunch.zip \
	climbable.zip aggrobastions.zip waterprooftech.zip notreasuremaps.zip bluefire.zip
MCDIR     = $(HOME)/.minecraft

CLEAN_TARGETS := $(PACKFILES) pack.mcmeta pack.png test.zip

# needed by all texture pack targets
DEFAULT = CONTRIBUTORS.txt LICENSE.txt

paintingoverhaul_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/painting/kebab.png \
	assets/minecraft/textures/painting/aztec.png \
	assets/minecraft/textures/painting/alban.png \
	assets/minecraft/textures/painting/aztec2.png \
	assets/minecraft/textures/painting/bomb.png \
	assets/minecraft/textures/painting/plant.png \
	assets/minecraft/textures/painting/wasteland.png \
	assets/minecraft/textures/painting/wanderer.png \
	assets/minecraft/textures/painting/graham.png \
	assets/minecraft/textures/painting/pool.png \
	assets/minecraft/textures/painting/courbet.png \
	assets/minecraft/textures/painting/sunset.png \
	assets/minecraft/textures/painting/sea.png \
	assets/minecraft/textures/painting/creebet.png \
	assets/minecraft/textures/painting/match.png \
	assets/minecraft/textures/painting/bust.png \
	assets/minecraft/textures/painting/stage.png \
	assets/minecraft/textures/painting/void.png \
	assets/minecraft/textures/painting/skull_and_roses.png \
	assets/minecraft/textures/painting/wither.png \
	assets/minecraft/textures/painting/fighters.png \
	assets/minecraft/textures/painting/skeleton.png \
	assets/minecraft/textures/painting/donkey_kong.png \
	assets/minecraft/textures/painting/burning_skull.png \
	assets/minecraft/textures/painting/pigscene.png \
	assets/minecraft/textures/painting/pointer.png

noteguide_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/note_block_0.png \
	assets/minecraft/textures/block/note_block_1.png \
	assets/minecraft/textures/block/note_block_2.png \
	assets/minecraft/textures/block/note_block_3.png \
	assets/minecraft/textures/block/note_block_4.png \
	assets/minecraft/textures/block/note_block_5.png \
	assets/minecraft/textures/block/note_block_6.png \
	assets/minecraft/textures/block/note_block_7.png \
	assets/minecraft/textures/block/note_block_8.png \
	assets/minecraft/textures/block/note_block_9.png \
	assets/minecraft/textures/block/note_block_10.png \
	assets/minecraft/textures/block/note_block_11.png \
	assets/minecraft/models/block/note_block_0.json \
	assets/minecraft/models/block/note_block_1.json \
	assets/minecraft/models/block/note_block_2.json \
	assets/minecraft/models/block/note_block_3.json \
	assets/minecraft/models/block/note_block_4.json \
	assets/minecraft/models/block/note_block_5.json \
	assets/minecraft/models/block/note_block_6.json \
	assets/minecraft/models/block/note_block_7.json \
	assets/minecraft/models/block/note_block_8.json \
	assets/minecraft/models/block/note_block_9.json \
	assets/minecraft/models/block/note_block_10.json \
	assets/minecraft/models/block/note_block_11.json \
	assets/minecraft/models/item/note_block.json \
	assets/minecraft/blockstates/note_block.json

noteguide_adv_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/adv_note_block_0.png \
	assets/minecraft/textures/block/adv_note_block_1.png \
	assets/minecraft/textures/block/adv_note_block_2.png \
	assets/minecraft/textures/block/adv_note_block_3.png \
	assets/minecraft/textures/block/adv_note_block_4.png \
	assets/minecraft/textures/block/adv_note_block_5.png \
	assets/minecraft/textures/block/adv_note_block_6.png \
	assets/minecraft/textures/block/adv_note_block_7.png \
	assets/minecraft/textures/block/adv_note_block_8.png \
	assets/minecraft/textures/block/adv_note_block_9.png \
	assets/minecraft/textures/block/adv_note_block_10.png \
	assets/minecraft/textures/block/adv_note_block_11.png \
	assets/minecraft/textures/block/adv_note_block_12.png \
	assets/minecraft/textures/block/adv_note_block_13.png \
	assets/minecraft/textures/block/adv_note_block_14.png \
	assets/minecraft/textures/block/adv_note_block_15.png \
	assets/minecraft/textures/block/adv_note_block_16.png \
	assets/minecraft/textures/block/adv_note_block_17.png \
	assets/minecraft/textures/block/adv_note_block_18.png \
	assets/minecraft/textures/block/adv_note_block_19.png \
	assets/minecraft/textures/block/adv_note_block_20.png \
	assets/minecraft/textures/block/adv_note_block_21.png \
	assets/minecraft/textures/block/adv_note_block_22.png \
	assets/minecraft/textures/block/adv_note_block_23.png \
	assets/minecraft/textures/block/adv_note_block_24.png \
	assets/minecraft/models/block/note_block_0.json \
	assets/minecraft/models/block/note_block_1.json \
	assets/minecraft/models/block/note_block_2.json \
	assets/minecraft/models/block/note_block_3.json \
	assets/minecraft/models/block/note_block_4.json \
	assets/minecraft/models/block/note_block_5.json \
	assets/minecraft/models/block/note_block_6.json \
	assets/minecraft/models/block/note_block_7.json \
	assets/minecraft/models/block/note_block_8.json \
	assets/minecraft/models/block/note_block_9.json \
	assets/minecraft/models/block/note_block_10.json \
	assets/minecraft/models/block/note_block_11.json \
	assets/minecraft/models/block/note_block_12.json \
	assets/minecraft/models/block/note_block_13.json \
	assets/minecraft/models/block/note_block_14.json \
	assets/minecraft/models/block/note_block_15.json \
	assets/minecraft/models/block/note_block_16.json \
	assets/minecraft/models/block/note_block_17.json \
	assets/minecraft/models/block/note_block_18.json \
	assets/minecraft/models/block/note_block_19.json \
	assets/minecraft/models/block/note_block_20.json \
	assets/minecraft/models/block/note_block_21.json \
	assets/minecraft/models/block/note_block_22.json \
	assets/minecraft/models/block/note_block_23.json \
	assets/minecraft/models/block/note_block_24.json \
	assets/minecraft/models/item/note_block.json \
	assets/minecraft/blockstates/adv_note_block.json

brewguide_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/gui/container/brewing_stand.png

techarrows_FILES := $(DEFAULT_FILES) \
	assets/minecraft/models/block/hopper_side.json \
	assets/minecraft/models/block/observer.json \
	assets/minecraft/textures/block/hopper_inside.png \
	assets/minecraft/textures/block/hopper_inside_side.png \
	assets/minecraft/textures/block/observer_back_on.png \
	assets/minecraft/textures/block/observer_side.png

ravager_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/entity/illager/ravager.png

villagemech_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/entity/iron_golem/iron_golem.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_low.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_medium.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_high.png

pigarmor_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/entity/pig/pig_saddle.png


oretypes_FILES := $(DEFAULT_FILES) \
	assets/minecraft/blockstates/coal_ore.json \
	assets/minecraft/blockstates/lapis_ore.json \
	assets/minecraft/models/block/coal_ore_1.json \
	assets/minecraft/models/block/coal_ore_2.json \
	assets/minecraft/models/block/lapis_ore_1.json \
	assets/minecraft/models/block/lapis_ore_2.json \
	assets/minecraft/textures/block/coal_ore_1.png \
	assets/minecraft/textures/block/coal_ore_2.png \
	assets/minecraft/textures/block/lapis_ore_1.png \
	assets/minecraft/textures/block/lapis_ore_2.png \
	assets/minecraft/textures/block/diamond_ore.png \
	assets/minecraft/textures/block/redstone_ore.png

retrofood_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/item/apple.png \
	assets/minecraft/textures/item/baked_potato.png \
	assets/minecraft/textures/item/beef.png \
	assets/minecraft/textures/item/bread.png \
	assets/minecraft/textures/item/carrot.png \
	assets/minecraft/textures/item/chicken.png \
	assets/minecraft/textures/item/cod.png \
	assets/minecraft/textures/item/cooked_beef.png \
	assets/minecraft/textures/item/cooked_chicken.png \
	assets/minecraft/textures/item/cooked_cod.png \
	assets/minecraft/textures/item/cooked_mutton.png \
	assets/minecraft/textures/item/cooked_porkchop.png \
	assets/minecraft/textures/item/cooked_rabbit.png \
	assets/minecraft/textures/item/cooked_salmon.png \
	assets/minecraft/textures/item/cookie.png \
	assets/minecraft/textures/item/golden_apple.png \
	assets/minecraft/textures/item/golden_carrot.png \
	assets/minecraft/textures/item/mutton.png \
	assets/minecraft/textures/item/poisonous_potato.png \
	assets/minecraft/textures/item/porkchop.png \
	assets/minecraft/textures/item/potato.png \
	assets/minecraft/textures/item/pumpkin_pie.png \
	assets/minecraft/textures/item/rabbit.png \
	assets/minecraft/textures/item/salmon.png

retronetherrack_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/netherrack.png \
	assets/minecraft/textures/block/nether_quartz_ore.png

retroiron_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/iron_block.png

retromoo_FILES := $(DEFAULT_FILES) \
	assets/minecraft/sounds/mob/cow/hurt1.ogg \
	assets/minecraft/sounds/mob/cow/hurt2.ogg \
	assets/minecraft/sounds/mob/cow/hurt3.ogg \
	assets/minecraft/sounds/mob/cow/say1.ogg \
	assets/minecraft/sounds/mob/cow/say2.ogg \
	assets/minecraft/sounds/mob/cow/say3.ogg \
	assets/minecraft/sounds/mob/cow/say4.ogg

retrotwang_FILES := $(DEFAULT_FILES) \
	assets/minecraft/sounds/random/bowhit4.ogg \
	assets/minecraft/sounds/random/bowhit2.ogg \
	assets/minecraft/sounds/random/bowhit1.ogg \
	assets/minecraft/sounds/random/bowhit3.ogg

retrosploosh_FILES := $(DEFAULT_FILES) \
	assets/minecraft/sounds/liquid/splash.ogg \
	assets/minecraft/sounds/liquid/splash2.ogg \
	assets/minecraft/sounds/liquid/swim1.ogg \
	assets/minecraft/sounds/liquid/swim2.ogg \
	assets/minecraft/sounds/liquid/swim3.ogg \
	assets/minecraft/sounds/liquid/swim4.ogg

retrocrunch_FILES := $(DEFAULT_FILES) \
	assets/minecraft/sounds/step/grass4.ogg \
	assets/minecraft/sounds/step/grass5.ogg \
	assets/minecraft/sounds/step/grass1.ogg \
	assets/minecraft/sounds/step/grass2.ogg \
	assets/minecraft/sounds/step/grass6.ogg \
	assets/minecraft/sounds/step/grass3.ogg

climbable_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/climbable.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/climbable.json

aggrobastions_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/guarded_by_piglins.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/aggrobastions.json

waterprooftech_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/signs.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/waterprooftech.json

notreasuremaps_FILES := $(DEFAULT_FILES) \
	data/minecraft/loot_tables/chests/buried_treasure.json \
	data/minecraft/loot_tables/chests/shipwreck_map.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/notreasuremaps.json

bluefire_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/soul_fire_base_blocks.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/bluefire.json

test_FILES = \
	# nothing

.PHONY: all
all: $(PACKFILES)

test.zip: $(test_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

paintingoverhaul.zip: $(paintingoverhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

noteguide.zip: $(noteguide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

noteguide_adv.zip: $(noteguide_adv_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ assets/minecraft/blockstates/adv_note_block.json\n@=assets/minecraft/blockstates/note_block.json\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_0.png\n@=assets/minecraft/textures/block/note_block_0.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_1.png\n@=assets/minecraft/textures/block/note_block_1.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_2.png\n@=assets/minecraft/textures/block/note_block_2.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_3.png\n@=assets/minecraft/textures/block/note_block_3.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_4.png\n@=assets/minecraft/textures/block/note_block_4.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_5.png\n@=assets/minecraft/textures/block/note_block_5.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_6.png\n@=assets/minecraft/textures/block/note_block_6.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_7.png\n@=assets/minecraft/textures/block/note_block_7.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_8.png\n@=assets/minecraft/textures/block/note_block_8.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_9.png\n@=assets/minecraft/textures/block/note_block_9.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_10.png\n@=assets/minecraft/textures/block/note_block_10.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_11.png\n@=assets/minecraft/textures/block/note_block_11.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_12.png\n@=assets/minecraft/textures/block/note_block_12.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_13.png\n@=assets/minecraft/textures/block/note_block_13.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_14.png\n@=assets/minecraft/textures/block/note_block_14.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_15.png\n@=assets/minecraft/textures/block/note_block_15.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_16.png\n@=assets/minecraft/textures/block/note_block_16.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_17.png\n@=assets/minecraft/textures/block/note_block_17.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_18.png\n@=assets/minecraft/textures/block/note_block_18.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_19.png\n@=assets/minecraft/textures/block/note_block_19.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_20.png\n@=assets/minecraft/textures/block/note_block_20.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_21.png\n@=assets/minecraft/textures/block/note_block_21.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_22.png\n@=assets/minecraft/textures/block/note_block_22.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_23.png\n@=assets/minecraft/textures/block/note_block_23.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_24.png\n@=assets/minecraft/textures/block/note_block_24.png\n" | zipnote -w $@

brewguide.zip: $(brewguide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

techarrows.zip: $(techarrows_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

ravager.zip: $(ravager_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

villagemech.zip: $(villagemech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

pigarmor.zip: $(pigarmor_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

oretypes.zip: $(oretypes_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retrofood.zip: $(retrofood_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retronetherrack.zip: $(retronetherrack_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retroiron.zip: $(retroiron_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retromoo.zip: $(retromoo_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retrotwang.zip: $(retrotwang_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retrosploosh.zip: $(retrosploosh_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retrocrunch.zip: $(retrocrunch_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

climbable.zip: $(climbable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

aggrobastions.zip: $(aggrobastions_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

waterprooftech.zip: $(waterprooftech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

notreasuremaps.zip: $(notreasuremaps_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

bluefire.zip: $(bluefire_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

.PHONY: install
install: $(PACKFILES)
	cp $^ $(MCDIR)/resourcepacks

.PHONY: uninstall
uninstall:
	cd $(MCDIR)/resourcepacks && rm -f $(PACKFILES)

.PHONY: clean
clean:
	rm -rf $(CLEAN_TARGETS)

