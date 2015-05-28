
PACKNAME = BucePack
PACKDIR  = $(PACKNAME)
SRCDIR   = pack
MCDIR    = $(HOME)/.minecraft
MCJAR    = $(shell find /home/woody/.minecraft/versions/ -type f -name '*.jar' | sort | tail -n1)

# needed by all texture pack targets
DEFAULT = $(PACKDIR)/pack.mcmeta $(PACKDIR)/pack.png \
	$(PACKDIR)/CONTRIBUTORS.txt $(PACKDIR)/LICENSE.txt

# textures taken directly from previous versions of minecraft
NOSTALGIA = \
	$(PACKDIR)/assets/minecraft/textures/blocks/iron_block.png \
	$(PACKDIR)/assets/minecraft/textures/blocks/gravel.png \
	$(PACKDIR)/assets/minecraft/textures/blocks/lava_still.png \
	$(PACKDIR)/assets/minecraft/textures/blocks/lava_still.png.mcmeta \
	$(PACKDIR)/assets/minecraft/textures/blocks/lava_flow.png \
	$(PACKDIR)/assets/minecraft/textures/blocks/lava_flow.png.mcmeta \
	$(PACKDIR)/assets/minecraft/textures/blocks/flower_rose.png \
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
	$(PACKDIR)/assets/minecraft/textures/blocks/coal_ore.png \
	$(PACKDIR)/assets/minecraft/textures/blocks/lapis_ore.png \
	$(PACKDIR)/assets/minecraft/textures/blocks/diamond_ore.png \
	$(PACKDIR)/assets/minecraft/textures/blocks/redstone_ore.png \
	$(PACKDIR)/assets/minecraft/textures/items/emerald.png \
	$(PACKDIR)/assets/minecraft/textures/blocks/command_block.png \
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
	$(PACKDIR)/assets/minecraft/textures/items/cookie.png

# textures that didn't work out well
GROSS = \
	$(PACKDIR)/assets/minecraft/textures/blocks/bedrock.png \
	$(PACKDIR)/assets/minecraft/textures/items/potion_splash.png

# dirs for all of the above
DIRS     = \
	$(PACKDIR)/assets/minecraft/textures/entity/villager \
	$(PACKDIR)/assets/minecraft/textures/entity/pig \
	$(PACKDIR)/assets/minecraft/textures/blocks \
	$(PACKDIR)/assets/minecraft/textures/items \
	$(PACKDIR)/assets/minecraft/textures/misc

.PHONY: all
all: nostalgia flavor nostalgia-flavor

.PHONY: everything
everything: all gross

.PHONY: nostalgia
nostalgia: dirs $(NOSTALGIA) $(DEFAULT)

.PHONY: flavor
flavor: dirs $(FLAVOR) $(DEFAULT)

.PHONY: nostalgia-flavor
nostalgia-flavor: dirs $(NOSTALGIA_FLAVOR) $(DEFAULT)

.PHONY: gross
gross: dirs $(GROSS) $(DEFAULT)

$(PACKDIR)/%.png: pack/%.png
	cp $< $@

$(PACKDIR)/%.png.mcmeta: pack/%.png.mcmeta
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
dist: $(PACKNAME)-nostalgia.zip $(PACKNAME)-flavor.zip $(PACKNAME)-all.zip

.PHONY: distclean
distclean: clean
	rm -f $(PACKNAME)-nostalgia.zip $(PACKNAME)-flavor.zip $(PACKNAME)-all.zip

