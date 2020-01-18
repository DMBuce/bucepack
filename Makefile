
PACKFILES = oretypes.zip pigarmor.zip brewguide.zip
MCDIR     = $(HOME)/.minecraft

CLEAN_TARGETS := $(PACKFILES) pack.mcmeta pack.png

.SECONDEXPANSION:

# needed by all texture pack targets
DEFAULT = CONTRIBUTORS.txt LICENSE.txt

oretypes_FILES := $(DEFAULT_FILES) \
	assets/minecraft/blockstates/coal_ore.json \
	assets/minecraft/blockstates/lapis_ore.json \
	assets/minecraft/models/block/coal_ore_1.json \
	assets/minecraft/models/block/lapis_ore_1.json \
	assets/minecraft/textures/block/coal_ore_1.png \
	assets/minecraft/textures/block/lapis_ore_1.png \
	assets/minecraft/textures/block/diamond_ore.png \
	assets/minecraft/textures/block/redstone_ore.png

pigarmor_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/entity/pig/pig_saddle.png

brewguide_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/gui/container/brewing_stand.png

.PHONY: all
all: $(PACKFILES)

oretypes.zip: $(oretypes_FILES)
	cp $(@:.zip=.png) pack.png
	cp $(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

pigarmor.zip: $(pigarmor_FILES)
	cp $(@:.zip=.png) pack.png
	cp $(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

brewguide.zip: $(brewguide_FILES)
	cp $(@:.zip=.png) pack.png
	cp $(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

.PHONY: install
install: $(PACKFILES)
	cp $< $(MCDIR)/resourcepacks

.PHONY: clean
clean:
	rm -rf $(CLEAN_TARGETS)

.PHONY: uninstall
uninstall:
	cd $(MCDIR)/resourcepacks && rm -f $(PACKFILES)

# dead code below

# textures taken directly from previous versions of minecraft
NOSTALGIA = \
	assets/minecraft/textures/block/iron_block.png \
	assets/minecraft/textures/item/apple.png \
	assets/minecraft/textures/item/chicken_raw.png \
	assets/minecraft/textures/item/chicken_cooked.png \
	assets/minecraft/textures/item/porkchop_cooked.png \
	assets/minecraft/textures/item/porkchop_raw.png \
	assets/minecraft/textures/item/beef_cooked.png \
	assets/minecraft/textures/item/beef_raw.png \
	assets/minecraft/textures/item/bread.png \
	assets/minecraft/sounds/random/bowhit4.ogg \
	assets/minecraft/sounds/random/bowhit2.ogg \
	assets/minecraft/sounds/random/bowhit1.ogg \
	assets/minecraft/sounds/random/bowhit3.ogg \
	assets/minecraft/sounds/liquid/splash.ogg \
	assets/minecraft/sounds/liquid/splash2.ogg \
	assets/minecraft/sounds/liquid/swim1.ogg \
	assets/minecraft/sounds/liquid/swim2.ogg \
	assets/minecraft/sounds/liquid/swim3.ogg \
	assets/minecraft/sounds/liquid/swim4.ogg \
	assets/minecraft/sounds/step/grass4.ogg \
	assets/minecraft/sounds/step/grass5.ogg \
	assets/minecraft/sounds/step/grass1.ogg \
	assets/minecraft/sounds/step/grass2.ogg \
	assets/minecraft/sounds/step/grass6.ogg \
	assets/minecraft/sounds/step/grass3.ogg \
	assets/minecraft/sounds/mob/cow/say3.ogg \
	assets/minecraft/sounds/mob/cow/say2.ogg \
	assets/minecraft/sounds/mob/cow/hurt2.ogg \
	assets/minecraft/sounds/mob/cow/say1.ogg \
	assets/minecraft/sounds/mob/cow/say4.ogg \
	assets/minecraft/sounds/mob/cow/hurt3.ogg \
	assets/minecraft/sounds/mob/cow/hurt1.ogg

# new textures that add flavor
FLAVOR = \
	assets/minecraft/textures/item/emerald.png \
	assets/minecraft/textures/block/command_block.png \
	assets/minecraft/textures/item/fish_cod_cooked.png \
	assets/minecraft/textures/item/fish_cod_raw.png \
	assets/minecraft/textures/item/fish_salmon_cooked.png \
	assets/minecraft/textures/item/fish_salmon_raw.png \
	assets/minecraft/textures/item/pumpkin_pie.png \
	assets/minecraft/textures/entity/iron_golem.png \
	assets/minecraft/textures/entity/villager/priest.png \
	assets/minecraft/textures/entity/villager/librarian.png

# slightly tweaked textures to make nostalgia and flavor textures mesh better
NOSTALGIA_FLAVOR = \
	assets/minecraft/textures/item/potato.png \
	assets/minecraft/textures/item/potato_baked.png \
	assets/minecraft/textures/item/potato_poisonous.png \
	assets/minecraft/textures/item/carrot_golden.png \
	assets/minecraft/textures/item/carrot.png \
	assets/minecraft/textures/item/mutton_cooked.png \
	assets/minecraft/textures/item/mutton_raw.png \
	assets/minecraft/textures/item/rabbit_cooked.png \
	assets/minecraft/textures/item/rabbit_raw.png \
	assets/minecraft/textures/item/cookie.png

# textures that didn't work out well
GROSS = \
	assets/minecraft/textures/block/glass.png \
	assets/minecraft/models/block/glass.json \
	assets/minecraft/models/item/glass.json \
	assets/minecraft/blockstates/glass.json \
	assets/minecraft/textures/block/bedrock.png \
	assets/minecraft/textures/item/potion_splash.png

