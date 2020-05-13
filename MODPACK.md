
# Modpack Infodump

Just some rambling thoughts I've had while creating modpacks for Minecraft 1.12 using Forge.
Mostly intended as a place to put reminders for myself,
but published in case others find it useful.

You can see the modpacks I've created on
[my CurseForge page](https://www.curseforge.com/members/dmbuce/projects).

## WorldGen

### General Notes

There are a lot of mods that let you tweak worldgen and I always forget which mod has which features.
So I wanted to document my experience with various worldgen mods here.

I'm including mods that affect mob spawning rules as well since biomes and structures affect mobspawning so much.

Just Enough Dimensions (JED):
* Amazing mod with many partially-documented features
 * Some info is on the curseforge page
 * Other info can be intuited from Masa's pastebin - look for his most recent "testing config"
 * Still more info can be found in the release notes (also on his pastebin and linked from the curseforge page)
* Customizes things at the level of the world: WorldProviders, ChunkGenerators, Skyboxes, DayNightCycle, Weather, etc.
 * Figuring out the name of another mod's WorldProvider/ChunkGenerator/Skybox class can be difficult but e.g. `jar tf mods/modname.jar | grep -i -e provide -e generat` helps
* Doesn't do much with biomes, but can set a single biome for an entire dimension
BiomeTweaker
* Great for adding mob spawns to biomes
* Also great for replacing certain biome features such as dirt/grass, vegetation, pools, etc.
* For replacing blocks in general I've had varying degress of success with this mod. Try it and if it doesn't work, try Dimensional Control and if that doesn't work, look for a more customizeable worldgen mod and if that doesn't work, you're out of luck unless you write your own.
Dimensional Control
* An option worth trying if replacing blocks with BiomeTweaker doesn't work
InControl
* Confusing documentation with examples that don't cover every config option
* You can do an advanced search on GitHub to find more examples, e.g. `path:config/incontrol filename:spawn.json`
* Suppressing spawns or modifying their NBT works well
* When adding new spawns, test a lot and expect bugs
COFH World
* Lets you spawn arbitrary blocks in small structures such as veins, spikes, geodes, etc.
* Structures are limited in shape and can't include NBT data, use Pillar or Recurrent Complex for more complex needs
Pillar
* Lets you spawn stuff in using vanilla structure files
Recurrent Complex
* On my todo list to try, will add info when I do

### Island Overworld

You can use
[Hardcore Island](https://www.curseforge.com/minecraft/mc-mods/hardcore-island)
to create a world that is full of ocean with a single island in the middle.
I did this in my Myconesia modpack to create a world with a mushroom island at spawn.
[The JED config for that is here](https://raw.githubusercontent.com/DMBuce/myconesia/master/config/justenoughdimensions/dimensions.json).
The biomes are defined in `generatorOptions`. The "radius" for each biome is given in chunks.

    \"biomes\":[{\"radius\":4,\"spawn\":true,\"biomeId\":\"minecraft:mushroom_island\"},{\"radius\":3,\"spawn\":true,\"biomeId\":\"minecraft:mushroom_island_shore\"},{\"radius\":1,\"spawn\":true,\"biomeId\":\"minecraft:beaches\"},{\"radius\":1,\"spawn\":false,\"biomeId\":\"minecraft:ocean\"},{\"radius\":2,\"spawn\":false,\"biomeId\":\"minecraft:deep_ocean\"},{\"radius\":3,\"spawn\":false,\"biomeId\":\"minecraft:ocean\"},{\"radius\":4,\"spawn\":false,\"biomeId\":\"minecraft:deep_ocean\"},{\"radius\":5,\"spawn\":false,\"biomeId\":\"minecraft:ocean\"},{\"radius\":2651561,\"spawn\":false,\"biomeId\":\"minecraft:deep_ocean\"}]

The trick here is that,
although the GUI for Hardcore Island only lets you define biomes with a max radius of 64 chunks,
the generatorOptions it uses isn't limited in that way.
So what you can do is define whatever biomes you need to create your island,
and then add an ocean biome with a radius big enough to cover an entire minecraft world.
Hardcore Island sets the world spawn at x,z = (0,0)
and a minecraft world generates 30 million blocks out from there,
so with a bit of trigonometry it's not hard to find that we need to define 2651651 chunks in order to cover the overworld.

Obviously this is just an example that can be adapted for other use cases.
Want your world to be 10,000 blocks of desert in every direction from spawn
with a thin ring of jungle at the "equator" followed by more desert?
You can do that.

### Striped Overworld

Unlike the other info on this page, this section is for Minecraft 1.13+.

Using vanilla Minecraft's checkerboard option,
you can generate biomes in infinite stripes that run in a zig-zag pattern from northeast to southwest.
There's an example of how to do that in my
[Badlands Challenge](https://github.com/DMBuce/badlands-challenge#the-badlands-challenge).
You can use JED to set `generatorOptions` so your players don't have to mess with level.dat.

### Large Skyblock Island

TODO: Document how to get around the structure file's 32x32x32 limit for use with Void Island Control's spawn island feature.

### Body Horror Nether

If your pack includes Thaumcraft and Blood Magic,
you can use COFH World to create pools of blood lined with rotten flesh.
In combination with the meatlike texture of netherrack,
the end result is a huge, disgusting scab-like thing.

Here's the config snippet for that:

		"nether-lake": {
			"distribution": "uniform",
			"generator": {
				"type": "lake",
				"block": "bloodmagic:life_essence",
				"material": "minecraft:netherrack",
				"use-material": true,
				"outline-block": [
					{ "name": "thaumcraft:flesh_block" }
				]
			},
			"cluster-count": 1,
			"chunk-chance": 3,
			"min-height": 10,
			"max-height": 120,
			"biome": "all",
			"retrogen": false,
			"dimension": {
				"restriction": "whitelist",
				"value": [
					-1
				]
			}
		}

To increase the body horror I like to include rotting fangs in the floor and ceiling,
and huge decayed bones going from the bottom to the top of the nether.
It gives the sense that the nether is the rotting corpse of an old, dead, dimension-wide amalgam of primordial flesh.
I like to think that the lava oceans were its stomach acid.

		"nether-stalactite": {
			"distribution": "cave",
			"ceiling": true,
			"generator": {
				"type": "stalactite",
				"block": [
					{ "name": "minecraft:bone_block", "weight": 95 },
					{ "name": "minecraft:soul_sand", "weight": 5 }
				],
				"material": [
					{ "name": "minecraft:netherrack" },
					{ "name": "minecraft:air" }
				],
				"gen-body": [
					{ "name": "minecraft:netherrack" },
					{ "name": "minecraft:soul_sand" },
					{ "name": "minecraft:gravel" },
					{ "name": "minecraft:magma" },
					{ "name": "minecraft:lava" },
					{ "name": "minecraft:air" }
				],
				"smooth": true,
				"fat": false,
				"min-height": 16,
				"height-variance": 6,
				"height-mod": 8,
				"gen-size": 0,
				"size-variance": 2
			},
			"cluster-count": 2,
			"chunk-chance": 100,
			"retrogen": true,
			"biome": "all",
			"dimension": {
				"restriction": "whitelist",
				"value": [
					-1
				]
			}
		},
		"nether-stalagmite": {
			"distribution": "cave",
			"ceiling": false,
			"generator": {
				"type": "stalagmite",
				"block": [
					{ "name": "minecraft:bone_block", "weight": 95 },
					{ "name": "minecraft:soul_sand", "weight": 5 }
				],
				"material": [
					{ "name": "minecraft:netherrack" }
				],
				"gen-body": [
					{ "name": "minecraft:netherrack" },
					{ "name": "minecraft:soul_sand" },
					{ "name": "minecraft:gravel" },
					{ "name": "minecraft:magma" },
					{ "name": "minecraft:lava" },
					{ "name": "minecraft:air" }
				],
				"smooth": true,
				"fat": false,
				"min-height": 14,
				"height-variance": 8,
				"height-mod": 7,
				"gen-size": 0,
				"size-variance": 2
			},
			"cluster-count": 2,
			"chunk-chance": 100,
			"retrogen": true,
			"biome": "all",
			"dimension": {
				"restriction": "whitelist",
				"value": [
					-1
				]
			}
		},
		"nether-pillar": {
			"distribution": "uniform",
			"generator": {
				"type": "plate",
				"block": [
					{ "weight": 80, "name": "minecraft:bone_block", "metadata": 1 },
					{ "weight": 20, "name": "minecraft:air" }
				],
				"material": [
					{ "name": "minecraft:netherrack" },
					{ "name": "minecraft:soul_sand" },
					{ "name": "minecraft:gravel" },
					{ "name": "minecraft:magma" },
					{ "name": "minecraft:lava" },
					{ "name": "minecraft:air" },
					{ "name": "minecraft:bedrock" }
				],
				"radius": 4,
				"height": 64,
				"slim": false
			},
			"cluster-count": 2,
			"chunk-chance": 200,
			"min-height": 65,
			"max-height": 65,
			"retrogen": true,
			"biome": "all",
			"dimension": {
				"restriction": "whitelist",
				"value": [
					-1
				]
			}
		}

There are a couple gameplay implications to these structures:

* Players can dig channels leading from a blood pool to a lava ocean in order to turn the lava into obsidian, which isn't normally possible in the nether.
* Obviously, the bone structures make bone and bonemeal more readily available.
* The bone pillars poke up through the nether's bedrock ceiling. Tweak the height settings if you don't like that.

## Resource Gathering

In packs with limited worldgen I prefer to avoid the usual resource gathering mods like Ex Nihilo and Chickens.
So far I've tried and liked these alternatives:

* Fishing with Advanced Fishing + Giacomo's Fishing Net + LootTweaker
* Treasure Slimes with Primitve Mobs
* Thaumcraft Loot Bags with ModTweaker + LootTweaker
* Fossils & Archaeology sifter
* Various methods involving Scavenge + Bonemeal Control + ContentTweaker + quick and dirty scripts to generate configs for those mods (examples of that here: https://github.com/DMBuce/myconesia/tree/master/bin)

## Speculative

### Custom Maze Dimensions

JED + Recurrent Complex + Dimensional Doors

TODO: Document this if I figure it out

## Mods Worth Considering

This is a list of mods I've used and liked.
It's highly opinionated.

### Must-Have Mods

Quality of life mods that I see no reason to exclude in any of my packs:

* Just Enough Items
* Just Enough Resources + (optionally) Chunk Pregenerator
* AromaBackup
* Better Advancements
* Toast Control
* Default Options
* Controlling
* Quark
* Inventory Tweaks
* MouseTweaks
* AppleSkin
* Diet Hopper
* Quick Leaf Decay

Runners up:

* Harvest
* Bauble Shulker Boxes
* Quark Oddities
* Charset Storage Barrels
* Primitive Mobs
* Antique Atlas
* Hatchling Snacks (I am biased)

### Utility

* CraftTweaker
* BiomeTweaker
* Dimensional Control
* Just Enough Dimensions
* Corpse Complex
* Default World Generator
* Pillar
* Bonemeal Control
* Scavenge
* COFH World
* Content Tweaker
* Mod Tweaker
* LootTweaker
* Tree Tweaker
* Initial Inventory
* TellMe
* Triumph
* WorldPrimer

### Situationally Useful

Ocean/Island Worlds:

* Advanced Fishing
* Giacomo's Fishing Net
* Clear Water
* Coral Reef
* Hardcore Island
* Merpig
* Waterproof 2

Other:

* Better Builder's Wands
* Netherending Ores
* No Mob Spawning On Trees
* Akashic Tome
* Simplified Horses
* Stone Crafting Table
* ComputerCraft
* Psi

### Performance

* Better FPS
* FoamFix 
* FastWorkBench
* Phosphor
* VanillaFix

