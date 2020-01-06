
PACKNAME = BucePack
PACKDIR  = $(PACKNAME)
SRCDIR   = pack
MCDIR    = $(HOME)/.minecraft
MCJAR    = $(shell find $(HOME)/.minecraft/versions/ -type f -name '*.jar' | sort | tail -n1)

# needed by all texture pack targets
DEFAULT = $(PACKDIR)/pack.mcmeta $(PACKDIR)/pack.png \
	$(PACKDIR)/CONTRIBUTORS.txt $(PACKDIR)/LICENSE.txt

# minimal set of textures that i like
MINIMAL = \
	$(PACKDIR)/assets/minecraft/blockstates/coal_ore.json \
	$(PACKDIR)/assets/minecraft/blockstates/lapis_ore.json \
	$(PACKDIR)/assets/minecraft/models/block/coal_ore_1.json \
	$(PACKDIR)/assets/minecraft/models/block/lapis_ore_1.json \
	$(PACKDIR)/assets/minecraft/textures/block/coal_ore_1.png \
	$(PACKDIR)/assets/minecraft/textures/block/lapis_ore_1.png \
	$(PACKDIR)/assets/minecraft/textures/block/diamond_ore.png \
	$(PACKDIR)/assets/minecraft/textures/block/redstone_ore.png \
	$(PACKDIR)/assets/minecraft/textures/entity/pig/pig_saddle.png

# textures taken directly from previous versions of minecraft
NOSTALGIA = \
	$(PACKDIR)/assets/minecraft/textures/block/iron_block.png \
	$(PACKDIR)/assets/minecraft/textures/block/gravel.png \
	$(PACKDIR)/assets/minecraft/textures/block/lava_still.png \
	$(PACKDIR)/assets/minecraft/textures/block/lava_still.png.mcmeta \
	$(PACKDIR)/assets/minecraft/textures/block/lava_flow.png \
	$(PACKDIR)/assets/minecraft/textures/block/lava_flow.png.mcmeta \
	$(PACKDIR)/assets/minecraft/lang/en_US.lang \
	$(PACKDIR)/assets/minecraft/textures/block/flower_rose.png \
	$(PACKDIR)/assets/minecraft/textures/items/apple.png \
	$(PACKDIR)/assets/minecraft/textures/items/chicken_raw.png \
	$(PACKDIR)/assets/minecraft/textures/items/chicken_cooked.png \
	$(PACKDIR)/assets/minecraft/textures/items/porkchop_cooked.png \
	$(PACKDIR)/assets/minecraft/textures/items/porkchop_raw.png \
	$(PACKDIR)/assets/minecraft/textures/items/beef_cooked.png \
	$(PACKDIR)/assets/minecraft/textures/items/beef_raw.png \
	$(PACKDIR)/assets/minecraft/textures/items/bread.png \
	$(PACKDIR)/assets/minecraft/sounds/random/bowhit4.ogg \
	$(PACKDIR)/assets/minecraft/sounds/random/bowhit2.ogg \
	$(PACKDIR)/assets/minecraft/sounds/random/bowhit1.ogg \
	$(PACKDIR)/assets/minecraft/sounds/random/bowhit3.ogg \
	$(PACKDIR)/assets/minecraft/sounds/liquid/swim4.ogg \
	$(PACKDIR)/assets/minecraft/sounds/liquid/swim3.ogg \
	$(PACKDIR)/assets/minecraft/sounds/liquid/splash.ogg \
	$(PACKDIR)/assets/minecraft/sounds/liquid/splash2.ogg \
	$(PACKDIR)/assets/minecraft/sounds/liquid/swim1.ogg \
	$(PACKDIR)/assets/minecraft/sounds/liquid/swim2.ogg \
	$(PACKDIR)/assets/minecraft/sounds/step/grass4.ogg \
	$(PACKDIR)/assets/minecraft/sounds/step/grass5.ogg \
	$(PACKDIR)/assets/minecraft/sounds/step/grass1.ogg \
	$(PACKDIR)/assets/minecraft/sounds/step/grass2.ogg \
	$(PACKDIR)/assets/minecraft/sounds/step/grass6.ogg \
	$(PACKDIR)/assets/minecraft/sounds/step/grass3.ogg \
	$(PACKDIR)/assets/minecraft/sounds/mob/cow/say3.ogg \
	$(PACKDIR)/assets/minecraft/sounds/mob/cow/say2.ogg \
	$(PACKDIR)/assets/minecraft/sounds/mob/cow/hurt2.ogg \
	$(PACKDIR)/assets/minecraft/sounds/mob/cow/say1.ogg \
	$(PACKDIR)/assets/minecraft/sounds/mob/cow/say4.ogg \
	$(PACKDIR)/assets/minecraft/sounds/mob/cow/hurt3.ogg \
	$(PACKDIR)/assets/minecraft/sounds/mob/cow/hurt1.ogg

# new textures that add flavor
FLAVOR = \
	$(PACKDIR)/assets/minecraft/textures/block/coal_ore.png \
	$(PACKDIR)/assets/minecraft/textures/block/lapis_ore.png \
	$(PACKDIR)/assets/minecraft/textures/block/diamond_ore.png \
	$(PACKDIR)/assets/minecraft/textures/block/redstone_ore.png \
	$(PACKDIR)/assets/minecraft/textures/items/emerald.png \
	$(PACKDIR)/assets/minecraft/textures/block/command_block.png \
	$(PACKDIR)/assets/minecraft/textures/items/fish_cod_cooked.png \
	$(PACKDIR)/assets/minecraft/textures/items/fish_cod_raw.png \
	$(PACKDIR)/assets/minecraft/textures/items/fish_salmon_cooked.png \
	$(PACKDIR)/assets/minecraft/textures/items/fish_salmon_raw.png \
	$(PACKDIR)/assets/minecraft/textures/items/pumpkin_pie.png \
	$(PACKDIR)/assets/minecraft/textures/entity/iron_golem.png \
	$(PACKDIR)/assets/minecraft/textures/entity/pig/pig_saddle.png \
	$(PACKDIR)/assets/minecraft/textures/entity/villager/priest.png \
	$(PACKDIR)/assets/minecraft/textures/entity/villager/librarian.png \
	$(PACKDIR)/assets/minecraft/textures/misc/pumpkinblur.png \
	$(PACKDIR)/assets/minecraft/textures/misc/pumpkinblur.png.mcmeta

# slightly tweaked textures to make nostalgia and flavor textures mesh better
NOSTALGIA_FLAVOR = \
	$(PACKDIR)/assets/minecraft/textures/items/potato.png \
	$(PACKDIR)/assets/minecraft/textures/items/potato_baked.png \
	$(PACKDIR)/assets/minecraft/textures/items/potato_poisonous.png \
	$(PACKDIR)/assets/minecraft/textures/items/carrot_golden.png \
	$(PACKDIR)/assets/minecraft/textures/items/carrot.png \
	$(PACKDIR)/assets/minecraft/textures/items/mutton_cooked.png \
	$(PACKDIR)/assets/minecraft/textures/items/mutton_raw.png \
	$(PACKDIR)/assets/minecraft/textures/items/rabbit_cooked.png \
	$(PACKDIR)/assets/minecraft/textures/items/rabbit_raw.png \
	$(PACKDIR)/assets/minecraft/textures/items/cookie.png

# textures that didn't work out well
GROSS = \
	$(PACKDIR)/assets/minecraft/textures/block/glass.png \
	$(PACKDIR)/assets/minecraft/models/block/glass.json \
	$(PACKDIR)/assets/minecraft/models/item/glass.json \
	$(PACKDIR)/assets/minecraft/blockstates/glass.json \
	$(PACKDIR)/assets/minecraft/textures/block/bedrock.png \
	$(PACKDIR)/assets/minecraft/textures/items/potion_splash.png

# dirs for all of the above
DIRS     = \
	$(PACKDIR)/assets/minecraft/lang \
	$(PACKDIR)/assets/minecraft/models/block \
	$(PACKDIR)/assets/minecraft/models/item \
	$(PACKDIR)/assets/minecraft/blockstates \
	$(PACKDIR)/assets/minecraft/textures/entity/villager \
	$(PACKDIR)/assets/minecraft/textures/entity/pig \
	$(PACKDIR)/assets/minecraft/textures/block \
	$(PACKDIR)/assets/minecraft/textures/items \
	$(PACKDIR)/assets/minecraft/textures/misc \
	$(PACKDIR)/assets/minecraft/sounds/liquid \
	$(PACKDIR)/assets/minecraft/sounds/mob/cow \
	$(PACKDIR)/assets/minecraft/sounds/random \
	$(PACKDIR)/assets/minecraft/sounds/step

.PHONY: all
all: nostalgia flavor nostalgia-flavor

.PHONY: everything
everything: all gross

.PHONY: minimal
minimal: dirs $(MINIMAL) $(DEFAULT)

.PHONY: nostalgia
nostalgia: dirs $(NOSTALGIA) $(DEFAULT)

.PHONY: flavor
flavor: dirs $(FLAVOR) $(DEFAULT)

.PHONY: nostalgia-flavor
nostalgia-flavor: dirs $(NOSTALGIA_FLAVOR) $(DEFAULT)

.PHONY: gross
gross: dirs $(GROSS) $(DEFAULT)

$(PACKDIR)/%.ogg: pack/%.ogg
	cp $< $@

$(PACKDIR)/%.png: pack/%.png
	cp $< $@

$(PACKDIR)/%.json: pack/%.json
	cp $< $@

$(PACKDIR)/%.png.mcmeta: pack/%.png.mcmeta
	cp $< $@

$(PACKDIR)/%.lang: pack/%.lang
	cp $< $@

$(PACKDIR)/pack.mcmeta: $(SRCDIR)/pack.mcmeta
	cp $< $@

$(PACKDIR)/CONTRIBUTORS.txt: CONTRIBUTORS.asciidoc
	cp $< $@

$(PACKDIR)/LICENSE.txt: LICENSE.asciidoc
	cp $< $@

$(PACKNAME).zip: $(PACKDIR)
	cd $< && zip -r $@ *
	mv $</$@ $@

.PHONY: dirs
dirs: $(DIRS)

$(DIRS):
	mkdir -p $@

.PHONY: install
install: $(PACKNAME).zip
	cp $(PACKNAME).zip $(MCDIR)/resourcepacks

.PHONY: clean
clean:
	rm -rf $(PACKDIR) $(PACKNAME).zip
	rm -rf example

.PHONY: uninstall
uninstall:
	rm -f $(MCDIR)/texturepacks/$(PACKNAME).zip

example:
	mkdir example
	cd example && jar xvf $(MCJAR) && rm -rf *.class META-INF/ achievement/ com/ paulscode/ lang/ net/

example.zip: example
	cd example && zip -r example.zip * && mv example.zip ..

$(PACKNAME)-minimal.zip:
	make clean
	make minimal
	make $(PACKNAME).zip
	mv $(PACKNAME).zip $(PACKNAME)-minimal.zip

$(PACKNAME)-nostalgia.zip:
	make clean
	make nostalgia
	make nostalgia-flavor
	make $(PACKNAME).zip
	mv $(PACKNAME).zip $(PACKNAME)-nostalgia.zip

$(PACKNAME)-flavor.zip:
	make clean
	make flavor
	make $(PACKNAME).zip
	mv $(PACKNAME).zip $(PACKNAME)-flavor.zip

$(PACKNAME)-all.zip: all $(PACKNAME).zip
	mv $(PACKNAME).zip $(PACKNAME)-all.zip

.PHONY: dist
dist: $(PACKNAME)-minimal.zip $(PACKNAME)-nostalgia.zip $(PACKNAME)-flavor.zip $(PACKNAME)-all.zip

.PHONY: distclean
distclean: clean
	rm -f $(PACKNAME)-minimal.zip $(PACKNAME)-nostalgia.zip $(PACKNAME)-flavor.zip $(PACKNAME)-all.zip

