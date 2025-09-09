RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local M = RaidCalendar

M.loot_table = {
	[ 94 ] = {
		[ "name" ] = "Blackwing Lair",
		[ "reference" ] = "BWL",
		[ "raidBosses" ] = { {
			[ "id" ] = 562,
			[ "name" ] = "Razorgore",
			[ "position" ] = 0
		}, {
			[ "id" ] = 563,
			[ "name" ] = "Vaelastrasz",
			[ "position" ] = 1
		}, {
			[ "id" ] = 564,
			[ "name" ] = "Broodlord Lashlayer",
			[ "position" ] = 2
		}, {
			[ "id" ] = 565,
			[ "name" ] = "Firemaw",
			[ "position" ] = 3
		}, {
			[ "id" ] = 566,
			[ "name" ] = "Ebonroc",
			[ "position" ] = 4
		}, {
			[ "id" ] = 567,
			[ "name" ] = "Flamegor",
			[ "position" ] = 5
		}, {
			[ "id" ] = 568,
			[ "name" ] = "Chromaggus",
			[ "position" ] = 6
		}, {
			[ "id" ] = 569,
			[ "name" ] = "Nefarian",
			[ "position" ] = 7
		}, {
			[ "id" ] = 570,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 8
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 6767,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_belt_22",
			[ "name" ] = "Netherwind Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16818,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5781,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_shoulder_23",
			[ "name" ] = "Bloodfang Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 16832,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5804,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_chest_chain_16",
			[ "name" ] = "Stormrage Chestguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 16897,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5731,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_boots_08",
			[ "name" ] = "Stormrage Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16898,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5747,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_gauntlets_25",
			[ "name" ] = "Stormrage Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16899,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5782,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_shoulder_07",
			[ "name" ] = "Stormrage Pauldrons",
			[ "quality" ] = 4,
			[ "itemId" ] = 16902,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5716,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_belt_06",
			[ "name" ] = "Stormrage Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16903,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5704,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_bracer_03",
			[ "name" ] = "Stormrage Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16904,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5803,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_chest_cloth_07",
			[ "name" ] = "Bloodfang Chestpiece",
			[ "quality" ] = 4,
			[ "itemId" ] = 16905,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5730,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_boots_08",
			[ "name" ] = "Bloodfang Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16906,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5746,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_gauntlets_21",
			[ "name" ] = "Bloodfang Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16907,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5715,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_belt_23",
			[ "name" ] = "Bloodfang Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16910,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5703,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_bracer_02",
			[ "name" ] = "Bloodfang Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16911,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5728,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_boots_07",
			[ "name" ] = "Netherwind Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16912,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5744,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_gauntlets_14",
			[ "name" ] = "Netherwind Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16913,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5801,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_chest_cloth_03",
			[ "name" ] = "Netherwind Robes",
			[ "quality" ] = 4,
			[ "itemId" ] = 16916,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5779,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_shoulder_32",
			[ "name" ] = "Netherwind Mantle",
			[ "quality" ] = 4,
			[ "itemId" ] = 16917,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 6762,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_bracer_09",
			[ "name" ] = "Netherwind Bindings",
			[ "quality" ] = 4,
			[ "itemId" ] = 16918,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5727,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_boots_07",
			[ "name" ] = "Boots of Transcendence",
			[ "quality" ] = 4,
			[ "itemId" ] = 16919,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5743,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_gauntlets_14",
			[ "name" ] = "Handguards of Transcendence",
			[ "quality" ] = 4,
			[ "itemId" ] = 16920,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5800,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_chest_cloth_03",
			[ "name" ] = "Robes of Transcendence",
			[ "quality" ] = 4,
			[ "itemId" ] = 16923,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5778,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_shoulder_02",
			[ "name" ] = "Pauldrons of Transcendence",
			[ "quality" ] = 4,
			[ "itemId" ] = 16924,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 6764,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_belt_22",
			[ "name" ] = "Belt of Transcendence",
			[ "quality" ] = 4,
			[ "itemId" ] = 16925,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 6761,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_bracer_09",
			[ "name" ] = "Bindings of Transcendence",
			[ "quality" ] = 4,
			[ "itemId" ] = 16926,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5729,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_boots_05",
			[ "name" ] = "Nemesis Slippers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16927,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5745,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_gauntlets_19",
			[ "name" ] = "Nemesis Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16928,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5802,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_chest_leather_01",
			[ "name" ] = "Nemesis Robes",
			[ "quality" ] = 4,
			[ "itemId" ] = 16931,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5780,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_shoulder_19",
			[ "name" ] = "Nemesis Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 16932,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 6768,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_belt_13",
			[ "name" ] = "Nemesis Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16933,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 6763,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_bracer_07",
			[ "name" ] = "Nemesis Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16934,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5705,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_bracer_17",
			[ "name" ] = "Dragonstalker's Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16935,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5717,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_belt_28",
			[ "name" ] = "Dragonstalker's Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16936,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5783,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_shoulder_10",
			[ "name" ] = "Dragonstalker's Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 16937,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5748,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_gauntlets_10",
			[ "name" ] = "Dragonstalker's Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 16940,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5732,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_boots_plate_07",
			[ "name" ] = "Dragonstalker's Greaves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16941,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5805,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_chest_chain_03",
			[ "name" ] = "Dragonstalker's Breastplate",
			[ "quality" ] = 4,
			[ "itemId" ] = 16942,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5706,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_bracer_16",
			[ "name" ] = "Bindings of Ten Storms",
			[ "quality" ] = 4,
			[ "itemId" ] = 16943,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5718,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_belt_14",
			[ "name" ] = "Sash of Ten Storms",
			[ "quality" ] = 4,
			[ "itemId" ] = 16944,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5784,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_shoulder_33",
			[ "name" ] = "Epaulets of Ten Storms",
			[ "quality" ] = 4,
			[ "itemId" ] = 16945,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5749,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_gauntlets_11",
			[ "name" ] = "Gauntlets of Ten Storms",
			[ "quality" ] = 4,
			[ "itemId" ] = 16948,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5733,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_boots_plate_06",
			[ "name" ] = "Greaves of Ten Storms",
			[ "quality" ] = 4,
			[ "itemId" ] = 16949,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5806,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_chest_chain_11",
			[ "name" ] = "Raiments of Ten Storms",
			[ "quality" ] = 4,
			[ "itemId" ] = 16950,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5707,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_bracer_18",
			[ "name" ] = "Judgement Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16951,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5719,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_belt_27",
			[ "name" ] = "Judgement Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16952,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5785,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_shoulder_37",
			[ "name" ] = "Judgement Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 16953,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5750,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_gauntlets_29",
			[ "name" ] = "Judgement Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16956,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5734,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_boots_plate_09",
			[ "name" ] = "Judgement Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16957,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5807,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_chest_plate03",
			[ "name" ] = "Judgement Breastplate",
			[ "quality" ] = 4,
			[ "itemId" ] = 16958,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5708,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_bracer_19",
			[ "name" ] = "Bracelets of Wrath",
			[ "quality" ] = 4,
			[ "itemId" ] = 16959,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5720,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_belt_09",
			[ "name" ] = "Waistband of Wrath",
			[ "quality" ] = 4,
			[ "itemId" ] = 16960,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5786,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_shoulder_34",
			[ "name" ] = "Pauldrons of Wrath",
			[ "quality" ] = 4,
			[ "itemId" ] = 16961,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5751,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_gauntlets_10",
			[ "name" ] = "Gauntlets of Wrath",
			[ "quality" ] = 4,
			[ "itemId" ] = 16964,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5735,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_boots_plate_04",
			[ "name" ] = "Sabatons of Wrath",
			[ "quality" ] = 4,
			[ "itemId" ] = 16965,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5808,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_chest_plate16",
			[ "name" ] = "Breastplate of Wrath",
			[ "quality" ] = 4,
			[ "itemId" ] = 16966,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 6829,
			[ "icon" ] = "inv_misc_bag_10",
			[ "name" ] = "Yellow Sack of Gems",
			[ "quality" ] = 2,
			[ "itemId" ] = 17965,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 6816,
			[ "icon" ] = "inv_misc_head_dragon_black",
			[ "name" ] = "Head of Nefarian (Horde)",
			[ "quality" ] = 4,
			[ "itemId" ] = 19002,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5809,
			[ "icon" ] = "inv_misc_head_dragon_black",
			[ "name" ] = "Head of Nefarian (Alliance)",
			[ "quality" ] = 4,
			[ "itemId" ] = 19003,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5714,
			[ "icon" ] = "inv_sword_50",
			[ "name" ] = "The Untamed Blade",
			[ "quality" ] = 4,
			[ "itemId" ] = 19334,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5713,
			[ "icon" ] = "inv_mace_06",
			[ "name" ] = "Spineshatter",
			[ "quality" ] = 4,
			[ "itemId" ] = 19335,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5709,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "spell_nature_wispsplode",
			[ "name" ] = "Arcane Infused Gem",
			[ "quality" ] = 4,
			[ "itemId" ] = 19336,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5710,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_misc_book_06",
			[ "name" ] = "The Black Book",
			[ "quality" ] = 4,
			[ "itemId" ] = 19337,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5721,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "spell_nature_wispheal",
			[ "name" ] = "Mind Quickening Gem",
			[ "quality" ] = 4,
			[ "itemId" ] = 19339,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5722,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_misc_rune_06",
			[ "name" ] = "Rune of Metamorphosis",
			[ "quality" ] = 4,
			[ "itemId" ] = 19340,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5737,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_misc_gem_pearl_05",
			[ "name" ] = "Lifegiving Gem",
			[ "quality" ] = 4,
			[ "itemId" ] = 19341,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5738,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_misc_idol_03",
			[ "name" ] = "Venomous Totem",
			[ "quality" ] = 4,
			[ "itemId" ] = 19342,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5753,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_scroll_08",
			[ "name" ] = "Scrolls of Blinding Light",
			[ "quality" ] = 4,
			[ "itemId" ] = 19343,
			[ "raidBosses" ] = { 565 }
		}, {
			[ "id" ] = 5752,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_misc_gem_03",
			[ "name" ] = "Natural Alignment Crystal",
			[ "quality" ] = 4,
			[ "itemId" ] = 19344,
			[ "raidBosses" ] = { 565 }
		}, {
			[ "id" ] = 5766,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "spell_holy_blessingofprotection",
			[ "name" ] = "Aegis of Preservation",
			[ "quality" ] = 4,
			[ "itemId" ] = 19345,
			[ "raidBosses" ] = { 566 }
		}, {
			[ "id" ] = 5726,
			[ "icon" ] = "inv_weapon_shortblade_29",
			[ "name" ] = "Dragonfang Blade",
			[ "quality" ] = 4,
			[ "itemId" ] = 19346,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5798,
			[ "icon" ] = "inv_weapon_shortblade_28",
			[ "name" ] = "Claw of Chromaggus",
			[ "quality" ] = 4,
			[ "itemId" ] = 19347,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5725,
			[ "icon" ] = "inv_shield_20",
			[ "name" ] = "Red Dragonscale Protector",
			[ "quality" ] = 4,
			[ "itemId" ] = 19348,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5797,
			[ "icon" ] = "inv_shield_17",
			[ "name" ] = "Elementium Reinforced Bulwark",
			[ "quality" ] = 4,
			[ "itemId" ] = 19349,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5741,
			[ "icon" ] = "inv_weapon_bow_09",
			[ "name" ] = "Heartstriker",
			[ "quality" ] = 4,
			[ "itemId" ] = 19350,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5742,
			[ "icon" ] = "inv_sword_49",
			[ "name" ] = "Maladath, Runed Blade of the Black Flight",
			[ "quality" ] = 4,
			[ "itemId" ] = 19351,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5799,
			[ "icon" ] = "inv_sword_51",
			[ "name" ] = "Chromatically Tempered Sword",
			[ "quality" ] = 4,
			[ "itemId" ] = 19352,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5762,
			[ "icon" ] = "inv_axe_10",
			[ "name" ] = "Drake Talon Cleaver",
			[ "quality" ] = 4,
			[ "itemId" ] = 19353,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5833,
			[ "icon" ] = "inv_axe_21",
			[ "name" ] = "Draconic Avenger",
			[ "quality" ] = 4,
			[ "itemId" ] = 19354,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5763,
			[ "icon" ] = "inv_staff_13",
			[ "name" ] = "Shadow Wing Focus Staff",
			[ "quality" ] = 4,
			[ "itemId" ] = 19355,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5816,
			[ "icon" ] = "inv_staff_06",
			[ "name" ] = "Staff of the Shadow Flame",
			[ "quality" ] = 4,
			[ "itemId" ] = 19356,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5775,
			[ "icon" ] = "inv_mace_05",
			[ "name" ] = "Herald of Woe",
			[ "quality" ] = 4,
			[ "itemId" ] = 19357,
			[ "raidBosses" ] = { 567 }
		}, {
			[ "id" ] = 5834,
			[ "icon" ] = "inv_mace_05",
			[ "name" ] = "Draconic Maul",
			[ "quality" ] = 4,
			[ "itemId" ] = 19358,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5813,
			[ "icon" ] = "inv_mace_06",
			[ "name" ] = "Lok'amir il Romathis",
			[ "quality" ] = 4,
			[ "itemId" ] = 19360,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5796,
			[ "icon" ] = "inv_weapon_crossbow_09",
			[ "name" ] = "Ashjre'thul, Crossbow of Smiting",
			[ "quality" ] = 4,
			[ "itemId" ] = 19361,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5832,
			[ "icon" ] = "inv_axe_15",
			[ "name" ] = "Doom's Edge",
			[ "quality" ] = 4,
			[ "itemId" ] = 19362,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5814,
			[ "icon" ] = "inv_axe_12",
			[ "name" ] = "Crul'shorukh, Edge of Chaos",
			[ "quality" ] = 4,
			[ "itemId" ] = 19363,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5815,
			[ "icon" ] = "inv_sword_50",
			[ "name" ] = "Ashkandi, Greatsword of the Brotherhood",
			[ "quality" ] = 4,
			[ "itemId" ] = 19364,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5761,
			[ "icon" ] = "inv_weapon_shortblade_27",
			[ "name" ] = "Claw of the Black Drake",
			[ "quality" ] = 4,
			[ "itemId" ] = 19365,
			[ "raidBosses" ] = { 565 }
		}, {
			[ "id" ] = 5774,
			[ "icon" ] = "inv_wand_11",
			[ "name" ] = "Dragon's Touch",
			[ "quality" ] = 4,
			[ "itemId" ] = 19367,
			[ "raidBosses" ] = { 567 }
		}, {
			[ "id" ] = 5769,
			[ "icon" ] = "inv_weapon_rifle_02",
			[ "name" ] = "Dragonbreath Hand Cannon",
			[ "quality" ] = 4,
			[ "itemId" ] = 19368,
			[ "raidBosses" ] = { 566 }
		}, {
			[ "id" ] = 5712,
			[ "icon" ] = "inv_gauntlets_06",
			[ "name" ] = "Gloves of Rapid Evolution",
			[ "quality" ] = 4,
			[ "itemId" ] = 19369,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5711,
			[ "icon" ] = "inv_shoulder_25",
			[ "name" ] = "Mantle of the Blackwing Cabal",
			[ "quality" ] = 4,
			[ "itemId" ] = 19370,
			[ "raidBosses" ] = { 562 }
		}, {
			[ "id" ] = 5724,
			[ "icon" ] = "inv_jewelry_necklace_12",
			[ "name" ] = "Pendant of the Fallen Dragon",
			[ "quality" ] = 4,
			[ "itemId" ] = 19371,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5723,
			[ "icon" ] = "inv_helmet_10",
			[ "name" ] = "Helm of Endless Rage",
			[ "quality" ] = 4,
			[ "itemId" ] = 19372,
			[ "raidBosses" ] = { 563 }
		}, {
			[ "id" ] = 5739,
			[ "icon" ] = "inv_shoulder_14",
			[ "name" ] = "Black Brood Pauldrons",
			[ "quality" ] = 4,
			[ "itemId" ] = 19373,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5740,
			[ "icon" ] = "inv_bracer_07",
			[ "name" ] = "Bracers of Arcane Accuracy",
			[ "quality" ] = 4,
			[ "itemId" ] = 19374,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 5817,
			[ "icon" ] = "inv_helmet_52",
			[ "name" ] = "Mish'undare, Circlet of the Mind Flayer",
			[ "quality" ] = 4,
			[ "itemId" ] = 19375,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5822,
			[ "icon" ] = "inv_jewelry_ring_40",
			[ "name" ] = "Archimtiros' Ring of Reckoning",
			[ "quality" ] = 4,
			[ "itemId" ] = 19376,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5818,
			[ "icon" ] = "inv_jewelry_necklace_17",
			[ "name" ] = "Prestor's Talisman of Connivery",
			[ "quality" ] = 4,
			[ "itemId" ] = 19377,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5819,
			[ "icon" ] = "inv_misc_cape_20",
			[ "name" ] = "Cloak of the Brood Lord",
			[ "quality" ] = 4,
			[ "itemId" ] = 19378,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5824,
			[ "icon" ] = "inv_stone_15",
			[ "name" ] = "Neltharion's Tear",
			[ "quality" ] = 4,
			[ "itemId" ] = 19379,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5820,
			[ "icon" ] = "inv_belt_18",
			[ "name" ] = "Therazane's Link",
			[ "quality" ] = 4,
			[ "itemId" ] = 19380,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5821,
			[ "icon" ] = "inv_boots_cloth_05",
			[ "name" ] = "Boots of the Shadow Flame",
			[ "quality" ] = 4,
			[ "itemId" ] = 19381,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5823,
			[ "icon" ] = "inv_jewelry_ring_42",
			[ "name" ] = "Pure Elementium Band",
			[ "quality" ] = 4,
			[ "itemId" ] = 19382,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 5793,
			[ "icon" ] = "inv_pants_cloth_19",
			[ "name" ] = "Empowered Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 19385,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5788,
			[ "icon" ] = "inv_misc_cape_01",
			[ "name" ] = "Elementium Threaded Cloak",
			[ "quality" ] = 4,
			[ "itemId" ] = 19386,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5795,
			[ "icon" ] = "inv_boots_plate_04",
			[ "name" ] = "Chromatic Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 19387,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5790,
			[ "icon" ] = "inv_belt_13",
			[ "name" ] = "Angelista's Grasp",
			[ "quality" ] = 4,
			[ "itemId" ] = 19388,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5787,
			[ "icon" ] = "inv_shoulder_08",
			[ "name" ] = "Taut Dragonhide Shoulderpads",
			[ "quality" ] = 4,
			[ "itemId" ] = 19389,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5789,
			[ "icon" ] = "inv_gauntlets_19",
			[ "name" ] = "Taut Dragonhide Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 19390,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5794,
			[ "icon" ] = "inv_boots_cloth_01",
			[ "name" ] = "Shimmering Geta",
			[ "quality" ] = 4,
			[ "itemId" ] = 19391,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5792,
			[ "icon" ] = "inv_belt_11",
			[ "name" ] = "Girdle of the Fallen Crusader",
			[ "quality" ] = 4,
			[ "itemId" ] = 19392,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5791,
			[ "icon" ] = "inv_belt_21",
			[ "name" ] = "Primalist's Linked Waistguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 19393,
			[ "raidBosses" ] = { 568 }
		}, {
			[ "id" ] = 5754,
			[ "icon" ] = "inv_shoulder_23",
			[ "name" ] = "Drake Talon Pauldrons",
			[ "quality" ] = 4,
			[ "itemId" ] = 19394,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5765,
			[ "icon" ] = "inv_misc_gem_topaz_02",
			[ "name" ] = "Rejuvenating Gem",
			[ "quality" ] = 4,
			[ "itemId" ] = 19395,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5758,
			[ "icon" ] = "inv_belt_16",
			[ "name" ] = "Taut Dragonhide Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 19396,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5764,
			[ "icon" ] = "inv_jewelry_ring_43",
			[ "name" ] = "Ring of Blackrock",
			[ "quality" ] = 4,
			[ "itemId" ] = 19397,
			[ "raidBosses" ] = { 565, 566, 567 }
		}, {
			[ "id" ] = 5755,
			[ "icon" ] = "inv_misc_cape_18",
			[ "name" ] = "Cloak of Firemaw",
			[ "quality" ] = 4,
			[ "itemId" ] = 19398,
			[ "raidBosses" ] = { 565 }
		}, {
			[ "id" ] = 5756,
			[ "icon" ] = "inv_chest_cloth_50",
			[ "name" ] = "Black Ash Robe",
			[ "quality" ] = 4,
			[ "itemId" ] = 19399,
			[ "raidBosses" ] = { 565 }
		}, {
			[ "id" ] = 5757,
			[ "icon" ] = "inv_belt_10",
			[ "name" ] = "Firemaw's Clutch",
			[ "quality" ] = 4,
			[ "itemId" ] = 19400,
			[ "raidBosses" ] = { 565 }
		}, {
			[ "id" ] = 5759,
			[ "icon" ] = "inv_pants_mail_19",
			[ "name" ] = "Primalist's Linked Legguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 19401,
			[ "raidBosses" ] = { 565 }
		}, {
			[ "id" ] = 5760,
			[ "icon" ] = "inv_pants_plate_16",
			[ "name" ] = "Legguards of the Fallen Crusader",
			[ "quality" ] = 4,
			[ "itemId" ] = 19402,
			[ "raidBosses" ] = { 565 }
		}, {
			[ "id" ] = 5770,
			[ "icon" ] = "inv_jewelry_ring_34",
			[ "name" ] = "Band of Forced Concentration",
			[ "quality" ] = 4,
			[ "itemId" ] = 19403,
			[ "raidBosses" ] = { 566 }
		}, {
			[ "id" ] = 5768,
			[ "icon" ] = "inv_chest_leather_08",
			[ "name" ] = "Malfurion's Blessed Bulwark",
			[ "quality" ] = 4,
			[ "itemId" ] = 19405,
			[ "raidBosses" ] = { 566 }
		}, {
			[ "id" ] = 5771,
			[ "icon" ] = "inv_misc_bone_06",
			[ "name" ] = "Drake Fang Talisman",
			[ "quality" ] = 4,
			[ "itemId" ] = 19406,
			[ "raidBosses" ] = { 566 }
		}, {
			[ "id" ] = 5767,
			[ "icon" ] = "inv_gauntlets_27",
			[ "name" ] = "Ebony Flame Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 19407,
			[ "raidBosses" ] = { 566 }
		}, {
			[ "id" ] = 5772,
			[ "icon" ] = "inv_misc_cape_16",
			[ "name" ] = "Shroud of Pure Thought",
			[ "quality" ] = 4,
			[ "itemId" ] = 19430,
			[ "raidBosses" ] = { 567 }
		}, {
			[ "id" ] = 5777,
			[ "icon" ] = "inv_misc_armorkit_10",
			[ "name" ] = "Styleen's Impeding Scarab",
			[ "quality" ] = 4,
			[ "itemId" ] = 19431,
			[ "raidBosses" ] = { 567 }
		}, {
			[ "id" ] = 5776,
			[ "icon" ] = "inv_jewelry_ring_37",
			[ "name" ] = "Circle of Applied Force",
			[ "quality" ] = 4,
			[ "itemId" ] = 19432,
			[ "raidBosses" ] = { 567 }
		}, {
			[ "id" ] = 5773,
			[ "icon" ] = "inv_pants_mail_17",
			[ "name" ] = "Emberweave Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 19433,
			[ "raidBosses" ] = { 567 }
		}, {
			[ "id" ] = 5830,
			[ "icon" ] = "inv_jewelry_ring_24",
			[ "name" ] = "Band of Dark Dominion",
			[ "quality" ] = 4,
			[ "itemId" ] = 19434,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5831,
			[ "icon" ] = "inv_wand_06",
			[ "name" ] = "Essence Gatherer",
			[ "quality" ] = 4,
			[ "itemId" ] = 19435,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5826,
			[ "icon" ] = "inv_misc_cape_11",
			[ "name" ] = "Cloak of Draconic Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 19436,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5828,
			[ "icon" ] = "inv_boots_cloth_03",
			[ "name" ] = "Boots of Pure Thought",
			[ "quality" ] = 4,
			[ "itemId" ] = 19437,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5829,
			[ "icon" ] = "inv_boots_cloth_16",
			[ "name" ] = "Ringo's Blizzard Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 19438,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5827,
			[ "icon" ] = "inv_chest_leather_03",
			[ "name" ] = "Interlaced Shadow Jerkin",
			[ "quality" ] = 4,
			[ "itemId" ] = 19439,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 5736,
			[ "icon" ] = "spell_shadow_curseoftounges",
			[ "name" ] = "Head of the Broodlord Lashlayer",
			[ "quality" ] = 4,
			[ "itemId" ] = 20383,
			[ "raidBosses" ] = { 564 }
		}, {
			[ "id" ] = 6820,
			[ "icon" ] = "inv_misc_gem_ruby_03",
			[ "name" ] = "Red Scepter Shard",
			[ "quality" ] = 1,
			[ "itemId" ] = 21138,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 7086,
			[ "icon" ] = "ability_hunter_beastcall",
			[ "name" ] = "Black Drake",
			[ "quality" ] = 4,
			[ "itemId" ] = 36551,
			[ "raidBosses" ] = { 569 }
		}, {
			[ "id" ] = 7791,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Plans: Blackwing Signet of Command",
			[ "quality" ] = 4,
			[ "itemId" ] = 70173,
			[ "raidBosses" ] = { 570 }
		}, {
			[ "id" ] = 7793,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Plans: Blazefury Circlet",
			[ "quality" ] = 4,
			[ "itemId" ] = 70213,
			[ "raidBosses" ] = { 570 }
		} }
	},
	[ 95 ] = {
		[ "name" ] = "Molten Core",
		[ "reference" ] = "MC",
		[ "raidBosses" ] = { {
			[ "id" ] = 571,
			[ "name" ] = "Lucifron",
			[ "position" ] = 0
		}, {
			[ "id" ] = 572,
			[ "name" ] = "Magmadar",
			[ "position" ] = 1
		}, {
			[ "id" ] = 573,
			[ "name" ] = "Incindis",
			[ "position" ] = 2
		}, {
			[ "id" ] = 574,
			[ "name" ] = "Garr",
			[ "position" ] = 3
		}, {
			[ "id" ] = 576,
			[ "name" ] = "Baron Geddon",
			[ "position" ] = 4
		}, {
			[ "id" ] = 575,
			[ "name" ] = "Shazzrah",
			[ "position" ] = 5
		}, {
			[ "id" ] = 578,
			[ "name" ] = "Sulfuron Harbringer",
			[ "position" ] = 6
		}, {
			[ "id" ] = 577,
			[ "name" ] = "Golemagg",
			[ "position" ] = 7
		}, {
			[ "id" ] = 579,
			[ "name" ] = "Majordomo Executus",
			[ "position" ] = 8
		}, {
			[ "id" ] = 708,
			[ "name" ] = "Sorcerer T. Thaurissan",
			[ "position" ] = 9
		}, {
			[ "id" ] = 707,
			[ "name" ] = "Basalthar & Smoldaris",
			[ "position" ] = 10
		}, {
			[ "id" ] = 580,
			[ "name" ] = "Ragnaros",
			[ "position" ] = 11
		}, {
			[ "id" ] = 581,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 12
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 6817,
			[ "icon" ] = "inv_ammo_firetar",
			[ "name" ] = "Burning Pitch",
			[ "quality" ] = 0,
			[ "itemId" ] = 4787,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5853,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_misc_book_11",
			[ "name" ] = "Tome of Tranquilizing Shot",
			[ "quality" ] = 2,
			[ "itemId" ] = 16665,
			[ "raidBosses" ] = { 571 }
		}, {
			[ "id" ] = 5884,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_helmet_53",
			[ "name" ] = "Arcanist Crown",
			[ "quality" ] = 4,
			[ "itemId" ] = 16795,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5855,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_pants_cloth_16",
			[ "name" ] = "Arcanist Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 16796,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5904,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_shoulder_02",
			[ "name" ] = "Arcanist Mantle",
			[ "quality" ] = 4,
			[ "itemId" ] = 16797,
			[ "raidBosses" ] = { 576 }
		}, {
			[ "id" ] = 5912,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_chest_cloth_03",
			[ "name" ] = "Arcanist Robes",
			[ "quality" ] = 4,
			[ "itemId" ] = 16798,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5984,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_belt_29",
			[ "name" ] = "Arcanist Bindings",
			[ "quality" ] = 4,
			[ "itemId" ] = 16799,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5836,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_boots_07",
			[ "name" ] = "Arcanist Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16800,
			[ "raidBosses" ] = { 571 }
		}, {
			[ "id" ] = 5899,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_gauntlets_14",
			[ "name" ] = "Arcanist Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16801,
			[ "raidBosses" ] = { 575 }
		}, {
			[ "id" ] = 5970,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_belt_30",
			[ "name" ] = "Arcanist Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16802,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5900,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_boots_cloth_05",
			[ "name" ] = "Felheart Slippers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16803,
			[ "raidBosses" ] = { 575 }
		}, {
			[ "id" ] = 5985,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_bracer_07",
			[ "name" ] = "Felheart Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16804,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5837,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_gauntlets_19",
			[ "name" ] = "Felheart Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16805,
			[ "raidBosses" ] = { 571 }
		}, {
			[ "id" ] = 5971,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_belt_13",
			[ "name" ] = "Felheart Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16806,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5905,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_shoulder_23",
			[ "name" ] = "Felheart Shoulder Pads",
			[ "quality" ] = 4,
			[ "itemId" ] = 16807,
			[ "raidBosses" ] = { 576 }
		}, {
			[ "id" ] = 5885,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_helmet_08",
			[ "name" ] = "Felheart Horns",
			[ "quality" ] = 4,
			[ "itemId" ] = 16808,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5913,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_chest_cloth_09",
			[ "name" ] = "Felheart Robes",
			[ "quality" ] = 4,
			[ "itemId" ] = 16809,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5856,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_pants_cloth_14",
			[ "name" ] = "Felheart Pants",
			[ "quality" ] = 4,
			[ "itemId" ] = 16810,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5898,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_boots_07",
			[ "name" ] = "Boots of Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 16811,
			[ "raidBosses" ] = { 575 }
		}, {
			[ "id" ] = 5877,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_gauntlets_14",
			[ "name" ] = "Gloves of Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 16812,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 5883,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_helmet_34",
			[ "name" ] = "Circlet of Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 16813,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5854,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_pants_08",
			[ "name" ] = "Pants of Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 16814,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5911,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_chest_cloth_03",
			[ "name" ] = "Robes of Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 16815,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5924,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_shoulder_02",
			[ "name" ] = "Mantle of Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 16816,
			[ "raidBosses" ] = { 578 }
		}, {
			[ "id" ] = 5969,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_belt_22",
			[ "name" ] = "Girdle of Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 16817,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5983,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_bracer_09",
			[ "name" ] = "Vambraces of Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 16819,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5914,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_chest_cloth_07",
			[ "name" ] = "Nightslayer Chestpiece",
			[ "quality" ] = 4,
			[ "itemId" ] = 16820,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5886,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_helmet_41",
			[ "name" ] = "Nightslayer Cover",
			[ "quality" ] = 4,
			[ "itemId" ] = 16821,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5857,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_pants_leather_03",
			[ "name" ] = "Nightslayer Pants",
			[ "quality" ] = 4,
			[ "itemId" ] = 16822,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5925,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_shoulder_25",
			[ "name" ] = "Nightslayer Shoulder Pads",
			[ "quality" ] = 4,
			[ "itemId" ] = 16823,
			[ "raidBosses" ] = { 578 }
		}, {
			[ "id" ] = 5901,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_boots_08",
			[ "name" ] = "Nightslayer Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16824,
			[ "raidBosses" ] = { 575 }
		}, {
			[ "id" ] = 5986,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_bracer_02",
			[ "name" ] = "Nightslayer Bracelets",
			[ "quality" ] = 4,
			[ "itemId" ] = 16825,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5878,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_gauntlets_21",
			[ "name" ] = "Nightslayer Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16826,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 5972,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_belt_23",
			[ "name" ] = "Nightslayer Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16827,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5973,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_belt_06",
			[ "name" ] = "Cenarion Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16828,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5838,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_boots_08",
			[ "name" ] = "Cenarion Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16829,
			[ "raidBosses" ] = { 571 }
		}, {
			[ "id" ] = 5987,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_bracer_03",
			[ "name" ] = "Cenarion Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16830,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5902,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_gauntlets_07",
			[ "name" ] = "Cenarion Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16831,
			[ "raidBosses" ] = { 575 }
		}, {
			[ "id" ] = 5915,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_chest_cloth_06",
			[ "name" ] = "Cenarion Vestments",
			[ "quality" ] = 4,
			[ "itemId" ] = 16833,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5887,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_helmet_09",
			[ "name" ] = "Cenarion Helm",
			[ "quality" ] = 4,
			[ "itemId" ] = 16834,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5858,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_pants_06",
			[ "name" ] = "Cenarion Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 16835,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5906,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_shoulder_07",
			[ "name" ] = "Cenarion Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 16836,
			[ "raidBosses" ] = { 576 }
		}, {
			[ "id" ] = 5839,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_boots_plate_06",
			[ "name" ] = "Earthfury Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16837,
			[ "raidBosses" ] = { 571 }
		}, {
			[ "id" ] = 5975,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_belt_14",
			[ "name" ] = "Earthfury Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16838,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5880,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_gauntlets_11",
			[ "name" ] = "Earthfury Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16839,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 5989,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_bracer_16",
			[ "name" ] = "Earthfury Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16840,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5917,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_chest_chain_11",
			[ "name" ] = "Earthfury Chestpiece",
			[ "quality" ] = 4,
			[ "itemId" ] = 16841,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5889,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_helmet_09",
			[ "name" ] = "Earthfury Helmet",
			[ "quality" ] = 4,
			[ "itemId" ] = 16842,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5860,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_pants_03",
			[ "name" ] = "Earthfury Pants",
			[ "quality" ] = 4,
			[ "itemId" ] = 16843,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5907,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_shoulder_29",
			[ "name" ] = "Earthfury Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 16844,
			[ "raidBosses" ] = { 576 }
		}, {
			[ "id" ] = 5916,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_chest_chain_03",
			[ "name" ] = "Giantstalker's Breastplate",
			[ "quality" ] = 4,
			[ "itemId" ] = 16845,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5888,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_helmet_05",
			[ "name" ] = "Giantstalker's Helmet",
			[ "quality" ] = 4,
			[ "itemId" ] = 16846,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5859,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_pants_mail_03",
			[ "name" ] = "Giantstalker's Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 16847,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5926,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_shoulder_10",
			[ "name" ] = "Giantstalker's Epaulets",
			[ "quality" ] = 4,
			[ "itemId" ] = 16848,
			[ "raidBosses" ] = { 578 }
		}, {
			[ "id" ] = 5879,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_boots_chain_13",
			[ "name" ] = "Giantstalker's Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16849,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 5988,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_bracer_17",
			[ "name" ] = "Giantstalker's Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16850,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5974,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_belt_28",
			[ "name" ] = "Giantstalker's Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16851,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5903,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_gauntlets_10",
			[ "name" ] = "Giantstalker's Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16852,
			[ "raidBosses" ] = { 575 }
		}, {
			[ "id" ] = 5918,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_chest_plate03",
			[ "name" ] = "Lawbringer Breastplate",
			[ "quality" ] = 4,
			[ "itemId" ] = 16853,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5890,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_helmet_05",
			[ "name" ] = "Lawbringer Helm",
			[ "quality" ] = 4,
			[ "itemId" ] = 16854,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5861,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_pants_plate_19",
			[ "name" ] = "Lawbringer Legplates",
			[ "quality" ] = 4,
			[ "itemId" ] = 16855,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5908,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_shoulder_20",
			[ "name" ] = "Lawbringer Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 16856,
			[ "raidBosses" ] = { 576 }
		}, {
			[ "id" ] = 5990,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_bracer_18",
			[ "name" ] = "Lawbringer Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 16857,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5976,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_belt_27",
			[ "name" ] = "Lawbringer Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 16858,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5840,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_boots_plate_09",
			[ "name" ] = "Lawbringer Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 16859,
			[ "raidBosses" ] = { 571 }
		}, {
			[ "id" ] = 5881,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_gauntlets_29",
			[ "name" ] = "Lawbringer Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 16860,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 5991,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_bracer_19",
			[ "name" ] = "Bracers of Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 16861,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5882,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_boots_plate_04",
			[ "name" ] = "Sabatons of Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 16862,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 5841,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_gauntlets_10",
			[ "name" ] = "Gauntlets of Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 16863,
			[ "raidBosses" ] = { 571 }
		}, {
			[ "id" ] = 5977,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_belt_09",
			[ "name" ] = "Belt of Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 16864,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5919,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_chest_plate16",
			[ "name" ] = "Breastplate of Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 16865,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5891,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_helmet_09",
			[ "name" ] = "Helm of Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 16866,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5862,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_pants_plate_17",
			[ "name" ] = "Legplates of Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 16867,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5927,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_shoulder_15",
			[ "name" ] = "Pauldrons of Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 16868,
			[ "raidBosses" ] = { 578 }
		}, {
			[ "id" ] = 5949,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_pants_06",
			[ "name" ] = "Stormrage Legguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 16901,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5948,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_pants_06",
			[ "name" ] = "Bloodfang Pants",
			[ "quality" ] = 4,
			[ "itemId" ] = 16909,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5946,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_pants_08",
			[ "name" ] = "Netherwind Pants",
			[ "quality" ] = 4,
			[ "itemId" ] = 16915,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5945,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_pants_08",
			[ "name" ] = "Leggings of Transcendence",
			[ "quality" ] = 4,
			[ "itemId" ] = 16922,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5947,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_pants_07",
			[ "name" ] = "Nemesis Pants",
			[ "quality" ] = 4,
			[ "itemId" ] = 16930,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5950,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_pants_03",
			[ "name" ] = "Dragonstalker's Legguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 16938,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5951,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_pants_03",
			[ "name" ] = "Legplates of Ten Storms",
			[ "quality" ] = 4,
			[ "itemId" ] = 16946,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5952,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_pants_04",
			[ "name" ] = "Judgement Legplates",
			[ "quality" ] = 4,
			[ "itemId" ] = 16954,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5953,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_pants_04",
			[ "name" ] = "Legplates of Wrath",
			[ "quality" ] = 4,
			[ "itemId" ] = 16962,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5961,
			[ "icon" ] = "inv_jewelry_ring_15",
			[ "name" ] = "Band of Accuria",
			[ "quality" ] = 4,
			[ "itemId" ] = 17063,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5863,
			[ "icon" ] = "inv_jewelry_amulet_03",
			[ "name" ] = "Medallion of Steadfast Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 17065,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5894,
			[ "icon" ] = "inv_shield_10",
			[ "name" ] = "Drillborer Disk",
			[ "quality" ] = 4,
			[ "itemId" ] = 17066,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5873,
			[ "icon" ] = "inv_weapon_bow_08",
			[ "name" ] = "Striker's Mark",
			[ "quality" ] = 4,
			[ "itemId" ] = 17069,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5895,
			[ "icon" ] = "inv_weapon_shortblade_18",
			[ "name" ] = "Gutgore Ripper",
			[ "quality" ] = 4,
			[ "itemId" ] = 17071,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5921,
			[ "icon" ] = "inv_weapon_rifle_09",
			[ "name" ] = "Blastershot Launcher",
			[ "quality" ] = 4,
			[ "itemId" ] = 17072,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5875,
			[ "icon" ] = "inv_hammer_04",
			[ "name" ] = "Earthshaker",
			[ "quality" ] = 4,
			[ "itemId" ] = 17073,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 5928,
			[ "icon" ] = "inv_spear_08",
			[ "name" ] = "Shadowstrike",
			[ "quality" ] = 4,
			[ "itemId" ] = 17074,
			[ "raidBosses" ] = { 578 }
		}, {
			[ "id" ] = 5968,
			[ "icon" ] = "inv_sword_12",
			[ "name" ] = "Bonereaver's Edge",
			[ "quality" ] = 4,
			[ "itemId" ] = 17076,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5851,
			[ "icon" ] = "inv_staff_13",
			[ "name" ] = "Crimson Shocker",
			[ "quality" ] = 4,
			[ "itemId" ] = 17077,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 5964,
			[ "icon" ] = "inv_misc_orb_05",
			[ "name" ] = "Shard of the Flame",
			[ "quality" ] = 4,
			[ "itemId" ] = 17082,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5958,
			[ "icon" ] = "inv_misc_cape_17",
			[ "name" ] = "Cloak of the Shrouded Mists",
			[ "quality" ] = 4,
			[ "itemId" ] = 17102,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5922,
			[ "icon" ] = "inv_sword_39",
			[ "name" ] = "Azuresong Mageblade",
			[ "quality" ] = 4,
			[ "itemId" ] = 17103,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5967,
			[ "icon" ] = "inv_axe_09",
			[ "name" ] = "Spinal Reaper",
			[ "quality" ] = 4,
			[ "itemId" ] = 17104,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5896,
			[ "icon" ] = "inv_hammer_05",
			[ "name" ] = "Aurastone Hammer",
			[ "quality" ] = 4,
			[ "itemId" ] = 17105,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5965,
			[ "icon" ] = "inv_shield_08",
			[ "name" ] = "Malistar's Defender",
			[ "quality" ] = 4,
			[ "itemId" ] = 17106,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5959,
			[ "icon" ] = "inv_misc_cape_08",
			[ "name" ] = "Dragon's Blood Cape",
			[ "quality" ] = 4,
			[ "itemId" ] = 17107,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5843,
			[ "icon" ] = "inv_jewelry_necklace_10",
			[ "name" ] = "Choker of Enlightenment",
			[ "quality" ] = 4,
			[ "itemId" ] = 17109,
			[ "raidBosses" ] = { 571 }
		}, {
			[ "id" ] = 5910,
			[ "icon" ] = "inv_jewelry_ring_21",
			[ "name" ] = "Seal of the Archmagus",
			[ "quality" ] = 4,
			[ "itemId" ] = 17110,
			[ "raidBosses" ] = { 576 }
		}, {
			[ "id" ] = 5920,
			[ "icon" ] = "spell_fire_sealoffire",
			[ "name" ] = "Sulfuron Ingot",
			[ "quality" ] = 4,
			[ "itemId" ] = 17203,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5954,
			[ "icon" ] = "inv_misc_gem_pearl_05",
			[ "name" ] = "Eye of Sulfuras",
			[ "quality" ] = 5,
			[ "itemId" ] = 17204,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5892,
			[ "icon" ] = "inv_jewelry_amulet_04",
			[ "name" ] = "Talisman of Binding Shard",
			[ "quality" ] = 5,
			[ "itemId" ] = 17782,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5874,
			[ "icon" ] = "inv_misc_monsterclaw_04",
			[ "name" ] = "Eskhandar's Right Claw",
			[ "quality" ] = 4,
			[ "itemId" ] = 18203,
			[ "raidBosses" ] = { 572 }
		}, {
			[ "id" ] = 6006,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Pattern: Core Armor Kit",
			[ "quality" ] = 3,
			[ "itemId" ] = 18252,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 6012,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Recipe: Major Rejuvenation Potion",
			[ "quality" ] = 3,
			[ "itemId" ] = 18257,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 6005,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Weapon - Spell Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 18259,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 6014,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Weapon - Healing Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 18260,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 5997,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Plans: Elemental Sharpening Stone",
			[ "quality" ] = 3,
			[ "itemId" ] = 18264,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 6008,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Pattern: Flarecore Wraps",
			[ "quality" ] = 3,
			[ "itemId" ] = 18265,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 6003,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Schematic: Biznicks 247x128 Accurascope",
			[ "quality" ] = 3,
			[ "itemId" ] = 18290,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 6001,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Schematic: Force Reactive Disk",
			[ "quality" ] = 3,
			[ "itemId" ] = 18291,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 5999,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Schematic: Core Marksman Rifle",
			[ "quality" ] = 3,
			[ "itemId" ] = 18292,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 5909,
			[ "classes" ] = { "Warrior", "Paladin", "Hunter", "Rogue" },
			[ "icon" ] = "spell_ice_lament",
			[ "name" ] = "Bindings of the Windseeker (Left Half)",
			[ "quality" ] = 5,
			[ "itemId" ] = 18563,
			[ "raidBosses" ] = { 576 }
		}, {
			[ "id" ] = 5893,
			[ "classes" ] = { "Warrior", "Paladin", "Hunter", "Rogue" },
			[ "icon" ] = "spell_ice_lament",
			[ "name" ] = "Bindings of the Windseeker (Right Half)",
			[ "quality" ] = 5,
			[ "itemId" ] = 18564,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5942,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "spell_holy_mindsooth",
			[ "name" ] = "The Eye of Divinity",
			[ "quality" ] = 4,
			[ "itemId" ] = 18646,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5940,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "spell_nature_resistnature",
			[ "name" ] = "Ancient Petrified Leaf",
			[ "quality" ] = 4,
			[ "itemId" ] = 18703,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5939,
			[ "icon" ] = "inv_gizmo_02",
			[ "name" ] = "Finkle's Lava Dredger",
			[ "quality" ] = 4,
			[ "itemId" ] = 18803,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5938,
			[ "icon" ] = "inv_weapon_shortblade_11",
			[ "name" ] = "Core Hound Tooth",
			[ "quality" ] = 4,
			[ "itemId" ] = 18805,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5936,
			[ "icon" ] = "inv_boots_plate_09",
			[ "name" ] = "Core Forged Greaves",
			[ "quality" ] = 4,
			[ "itemId" ] = 18806,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5933,
			[ "icon" ] = "inv_gauntlets_03",
			[ "name" ] = "Gloves of the Hypnotic Flame",
			[ "quality" ] = 4,
			[ "itemId" ] = 18808,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5934,
			[ "icon" ] = "inv_belt_12",
			[ "name" ] = "Sash of Whispered Secrets",
			[ "quality" ] = 4,
			[ "itemId" ] = 18809,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5931,
			[ "icon" ] = "inv_shoulder_18",
			[ "name" ] = "Wild Growth Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 18810,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5932,
			[ "icon" ] = "inv_misc_cape_18",
			[ "name" ] = "Fireproof Cloak",
			[ "quality" ] = 4,
			[ "itemId" ] = 18811,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5935,
			[ "icon" ] = "inv_bracer_02",
			[ "name" ] = "Wristguards of True Flight",
			[ "quality" ] = 4,
			[ "itemId" ] = 18812,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5957,
			[ "icon" ] = "inv_jewelry_amulet_05",
			[ "name" ] = "Choker of the Fire Lord",
			[ "quality" ] = 4,
			[ "itemId" ] = 18814,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5963,
			[ "icon" ] = "spell_fire_fire",
			[ "name" ] = "Essence of the Pure Flame",
			[ "quality" ] = 4,
			[ "itemId" ] = 18815,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5966,
			[ "icon" ] = "inv_sword_48",
			[ "name" ] = "Perdition's Blade",
			[ "quality" ] = 4,
			[ "itemId" ] = 18816,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5956,
			[ "icon" ] = "inv_crown_02",
			[ "name" ] = "Crown of Destruction",
			[ "quality" ] = 4,
			[ "itemId" ] = 18817,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5871,
			[ "icon" ] = "inv_misc_stonetablet_11",
			[ "name" ] = "Talisman of Ephemeral Power",
			[ "quality" ] = 4,
			[ "itemId" ] = 18820,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5870,
			[ "icon" ] = "inv_jewelry_ring_07",
			[ "name" ] = "Quick Strike Ring",
			[ "quality" ] = 4,
			[ "itemId" ] = 18821,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5876,
			[ "icon" ] = "inv_sword_28",
			[ "name" ] = "Obsidian Edged Blade",
			[ "quality" ] = 4,
			[ "itemId" ] = 18822,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5865,
			[ "icon" ] = "inv_gauntlets_23",
			[ "name" ] = "Aged Core Leather Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 18823,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5869,
			[ "icon" ] = "inv_boots_plate_08",
			[ "name" ] = "Magma Tempered Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 18824,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5864,
			[ "icon" ] = "inv_shoulder_04",
			[ "name" ] = "Deep Earth Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 18829,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5897,
			[ "icon" ] = "inv_sword_15",
			[ "name" ] = "Brutality Blade",
			[ "quality" ] = 4,
			[ "itemId" ] = 18832,
			[ "raidBosses" ] = { 574 }
		}, {
			[ "id" ] = 5923,
			[ "icon" ] = "inv_staff_13",
			[ "name" ] = "Staff of Dominance",
			[ "quality" ] = 4,
			[ "itemId" ] = 18842,
			[ "raidBosses" ] = { 577 }
		}, {
			[ "id" ] = 5848,
			[ "icon" ] = "inv_pants_04",
			[ "name" ] = "Flamewaker Legplates",
			[ "quality" ] = 4,
			[ "itemId" ] = 18861,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577, 578, 707, 708 }
		}, {
			[ "id" ] = 5842,
			[ "icon" ] = "inv_helmet_18",
			[ "name" ] = "Helm of the Lifegiver",
			[ "quality" ] = 4,
			[ "itemId" ] = 18870,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 5846,
			[ "icon" ] = "inv_pants_08",
			[ "name" ] = "Manastorm Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 18872,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 5847,
			[ "icon" ] = "inv_pants_12",
			[ "name" ] = "Salamander Scale Pants",
			[ "quality" ] = 4,
			[ "itemId" ] = 18875,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 5852,
			[ "icon" ] = "inv_weapon_shortblade_07",
			[ "name" ] = "Sorcerous Dagger",
			[ "quality" ] = 4,
			[ "itemId" ] = 18878,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 5849,
			[ "icon" ] = "inv_jewelry_ring_14",
			[ "name" ] = "Heavy Dark Iron Ring",
			[ "quality" ] = 4,
			[ "itemId" ] = 18879,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 5955,
			[ "icon" ] = "spell_fire_selfdestruct",
			[ "name" ] = "Essence of the Firelord",
			[ "quality" ] = 5,
			[ "itemId" ] = 19017,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5867,
			[ "icon" ] = "inv_belt_11",
			[ "name" ] = "Mana Igniting Cord",
			[ "quality" ] = 4,
			[ "itemId" ] = 19136,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5960,
			[ "icon" ] = "inv_belt_29",
			[ "name" ] = "Onslaught Girdle",
			[ "quality" ] = 4,
			[ "itemId" ] = 19137,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5962,
			[ "icon" ] = "inv_jewelry_ring_36",
			[ "name" ] = "Band of Sulfuras",
			[ "quality" ] = 4,
			[ "itemId" ] = 19138,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 5930,
			[ "icon" ] = "inv_shoulder_23",
			[ "name" ] = "Fireguard Shoulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 19139,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5937,
			[ "icon" ] = "inv_jewelry_ring_39",
			[ "name" ] = "Cauterizing Band",
			[ "quality" ] = 4,
			[ "itemId" ] = 19140,
			[ "raidBosses" ] = { 579 }
		}, {
			[ "id" ] = 5872,
			[ "icon" ] = "inv_misc_book_09",
			[ "name" ] = "Fire Runed Grimoire",
			[ "quality" ] = 4,
			[ "itemId" ] = 19142,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5866,
			[ "icon" ] = "inv_gauntlets_26",
			[ "name" ] = "Flameguard Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 19143,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5868,
			[ "icon" ] = "inv_boots_chain_05",
			[ "name" ] = "Sabatons of the Flamewalker",
			[ "quality" ] = 4,
			[ "itemId" ] = 19144,
			[ "raidBosses" ] = { 572, 574, 576, 577, 707, 708 }
		}, {
			[ "id" ] = 5844,
			[ "icon" ] = "inv_chest_cloth_18",
			[ "name" ] = "Robe of Volatile Power",
			[ "quality" ] = 4,
			[ "itemId" ] = 19145,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 5845,
			[ "icon" ] = "inv_bracer_04",
			[ "name" ] = "Wristguards of Stability",
			[ "quality" ] = 4,
			[ "itemId" ] = 19146,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 5850,
			[ "icon" ] = "inv_jewelry_ring_38",
			[ "name" ] = "Ring of Spell Power",
			[ "quality" ] = 4,
			[ "itemId" ] = 19147,
			[ "raidBosses" ] = { 571, 573, 575, 578 }
		}, {
			[ "id" ] = 6822,
			[ "icon" ] = "inv_misc_stonetablet_03",
			[ "name" ] = "Draconic for Dummies",
			[ "quality" ] = 1,
			[ "itemId" ] = 21110,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 6010,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Pattern: Core Felcloth Bag",
			[ "quality" ] = 3,
			[ "itemId" ] = 21371,
			[ "raidBosses" ] = { 571, 572, 573, 574, 575, 576, 577 }
		}, {
			[ "id" ] = 7808,
			[ "icon" ] = "inv_wand_09",
			[ "name" ] = "Primal Flameslinger",
			[ "quality" ] = 4,
			[ "itemId" ] = 58205,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 7819,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "spell_nature_protectionformnature",
			[ "name" ] = "Idol of the Forgotten Wilds",
			[ "quality" ] = 4,
			[ "itemId" ] = 58206,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 7813,
			[ "icon" ] = "inv_elementalfist",
			[ "name" ] = "Fist of the Flamewaker",
			[ "quality" ] = 4,
			[ "itemId" ] = 58207,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 7801,
			[ "icon" ] = "inv_misc_cape_10",
			[ "name" ] = "Shroud of Flowing Magma",
			[ "quality" ] = 4,
			[ "itemId" ] = 58208,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 7820,
			[ "icon" ] = "inv_jewelry_ring_gold",
			[ "name" ] = "Sizzling Pyrestone Aureole",
			[ "quality" ] = 4,
			[ "itemId" ] = 58209,
			[ "raidBosses" ] = { 573 }
		}, {
			[ "id" ] = 7797,
			[ "icon" ] = "inv_gauntlets_15",
			[ "name" ] = "Grasps of Sundering Power",
			[ "quality" ] = 4,
			[ "itemId" ] = 58210,
			[ "raidBosses" ] = { 707, 708 }
		}, {
			[ "id" ] = 7814,
			[ "icon" ] = "inv_misc_gem_ruby_01",
			[ "name" ] = "Molten Emberstone",
			[ "quality" ] = 4,
			[ "itemId" ] = 58211,
			[ "raidBosses" ] = { 707 }
		}, {
			[ "id" ] = 7799,
			[ "icon" ] = "inv_boots_cloth_09",
			[ "name" ] = "Treads of Scalding Rage",
			[ "quality" ] = 4,
			[ "itemId" ] = 58212,
			[ "raidBosses" ] = { 707, 708 }
		}, {
			[ "id" ] = 7804,
			[ "icon" ] = "inv_misc_orb_03",
			[ "name" ] = "Smoldaris' Fractured Eye",
			[ "quality" ] = 4,
			[ "itemId" ] = 58213,
			[ "raidBosses" ] = { 707 }
		}, {
			[ "id" ] = 7798,
			[ "icon" ] = "spell_fire_flametounge",
			[ "name" ] = "Modrag'zan, Heart of the Mountain",
			[ "quality" ] = 4,
			[ "itemId" ] = 58214,
			[ "raidBosses" ] = { 708 }
		}, {
			[ "id" ] = 7806,
			[ "icon" ] = "inv_boots_chain_01",
			[ "name" ] = "Ash-Forged Greaves",
			[ "quality" ] = 4,
			[ "itemId" ] = 58215,
			[ "raidBosses" ] = { 707, 708 }
		}, {
			[ "id" ] = 7803,
			[ "icon" ] = "inv_chest_cloth_18",
			[ "name" ] = "Emberwoven Binding Garments",
			[ "quality" ] = 4,
			[ "itemId" ] = 58237,
			[ "raidBosses" ] = { 707, 708 }
		}, {
			[ "id" ] = 7823,
			[ "icon" ] = "inv_square_rune_4",
			[ "name" ] = "Runed Wardstone",
			[ "quality" ] = 4,
			[ "itemId" ] = 58238,
			[ "raidBosses" ] = { 707, 708 }
		}, {
			[ "id" ] = 7800,
			[ "icon" ] = "ability_upgrademoonglaive",
			[ "name" ] = "Overheated Skyrazors",
			[ "quality" ] = 4,
			[ "itemId" ] = 58239,
			[ "raidBosses" ] = { 707 }
		}, {
			[ "id" ] = 7809,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_relics_libramoftruth",
			[ "name" ] = "Libram of Final Judgement",
			[ "quality" ] = 4,
			[ "itemId" ] = 58240,
			[ "raidBosses" ] = { 708 }
		}, {
			[ "id" ] = 7822,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "spell_fire_volcano",
			[ "name" ] = "Totem of Eruption",
			[ "quality" ] = 4,
			[ "itemId" ] = 58241,
			[ "raidBosses" ] = { 707 }
		}, {
			[ "id" ] = 7805,
			[ "icon" ] = "inv_magmafire_shield_3",
			[ "name" ] = "Sulfuron Aegis",
			[ "quality" ] = 4,
			[ "itemId" ] = 58242,
			[ "raidBosses" ] = { 707, 708 }
		}, {
			[ "id" ] = 7821,
			[ "icon" ] = "inv_pants_04",
			[ "name" ] = "Leggings of the Deep Delve",
			[ "quality" ] = 4,
			[ "itemId" ] = 58243,
			[ "raidBosses" ] = { 708 }
		}, {
			[ "id" ] = 7802,
			[ "icon" ] = "inv_misc_rune_03",
			[ "name" ] = "Sigil of Ancient Accord",
			[ "quality" ] = 4,
			[ "itemId" ] = 58244,
			[ "raidBosses" ] = { 708 }
		}, {
			[ "id" ] = 7815,
			[ "icon" ] = "inv_misc_stonetablet_11",
			[ "name" ] = "Tablet of Molten Blast VI",
			[ "quality" ] = 3,
			[ "itemId" ] = 58246,
			[ "raidBosses" ] = { 707 }
		}, {
			[ "id" ] = 7790,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Plans: Crown of Molten Ascension",
			[ "quality" ] = 4,
			[ "itemId" ] = 70171,
			[ "raidBosses" ] = { 580 }
		}, {
			[ "id" ] = 7789,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Plans: Talisman of Hinderance",
			[ "quality" ] = 4,
			[ "itemId" ] = 70174,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 7792,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Plans: Blazefury Circlet",
			[ "quality" ] = 4,
			[ "itemId" ] = 70213,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5978,
			[ "icon" ] = "inv_axe_23",
			[ "name" ] = "Lavashard Axe",
			[ "quality" ] = 4,
			[ "itemId" ] = 81260,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5992,
			[ "icon" ] = "inv_boots_02",
			[ "name" ] = "Boots of Blistering Flames",
			[ "quality" ] = 4,
			[ "itemId" ] = 81261,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5993,
			[ "icon" ] = "inv_helmet_10",
			[ "name" ] = "Core Forged Helmet",
			[ "quality" ] = 4,
			[ "itemId" ] = 81262,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5994,
			[ "icon" ] = "inv_belt_18",
			[ "name" ] = "Lost Dark Iron Chain",
			[ "quality" ] = 4,
			[ "itemId" ] = 81263,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5995,
			[ "icon" ] = "inv_shoulder_28",
			[ "name" ] = "Shoulderpads of True Flight",
			[ "quality" ] = 4,
			[ "itemId" ] = 81264,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 5996,
			[ "icon" ] = "inv_belt_16",
			[ "name" ] = "Ashskin Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 81265,
			[ "raidBosses" ] = { 581 }
		}, {
			[ "id" ] = 7085,
			[ "icon" ] = "spell_fire_flameshock",
			[ "name" ] = "Molten Corehound",
			[ "quality" ] = 4,
			[ "itemId" ] = 92080,
			[ "raidBosses" ] = { 580 }
		} }
	},
	[ 96 ] = {
		[ "name" ] = "Naxxramas",
		[ "reference" ] = "NAX",
		[ "raidBosses" ] = { {
			[ "id" ] = 586,
			[ "name" ] = "Anub'Rekhan (SW)",
			[ "position" ] = 1
		}, {
			[ "id" ] = 587,
			[ "name" ] = "Grand Widow Faerlina (SW)",
			[ "position" ] = 2
		}, {
			[ "id" ] = 588,
			[ "name" ] = "Maexxna (SW)",
			[ "position" ] = 3
		}, {
			[ "id" ] = 589,
			[ "name" ] = "Noth the Plaguebringer (PW)",
			[ "position" ] = 4
		}, {
			[ "id" ] = 590,
			[ "name" ] = "Heigan the Unclean (PW)",
			[ "position" ] = 5
		}, {
			[ "id" ] = 591,
			[ "name" ] = "Loatheb (PW)",
			[ "position" ] = 6
		}, {
			[ "id" ] = 592,
			[ "name" ] = "Instructor Razuvious (DW)",
			[ "position" ] = 7
		}, {
			[ "id" ] = 593,
			[ "name" ] = "Gothik the Harvester (DW)",
			[ "position" ] = 8
		}, {
			[ "id" ] = 594,
			[ "name" ] = "The Four Horsemen (DW)",
			[ "position" ] = 9
		}, {
			[ "id" ] = 655,
			[ "name" ] = "Patchwerk (AW)",
			[ "position" ] = 10
		}, {
			[ "id" ] = 583,
			[ "name" ] = "Grobbulus (AW)",
			[ "position" ] = 11
		}, {
			[ "id" ] = 584,
			[ "name" ] = "Gluth (AW)",
			[ "position" ] = 12
		}, {
			[ "id" ] = 585,
			[ "name" ] = "Thaddius (AW)",
			[ "position" ] = 13
		}, {
			[ "id" ] = 595,
			[ "name" ] = "Sapphiron",
			[ "position" ] = 14
		}, {
			[ "id" ] = 596,
			[ "name" ] = "Kel Thuzard",
			[ "position" ] = 15
		}, {
			[ "id" ] = 597,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 16
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 6098,
			[ "classes" ] = { "Rogue", "Warrior" },
			[ "icon" ] = "inv_misc_desecrated_platechest",
			[ "name" ] = "Desecrated Breastplate",
			[ "quality" ] = 4,
			[ "itemId" ] = 22349,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6097,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Druid" },
			[ "icon" ] = "inv_misc_desecrated_mailchest",
			[ "name" ] = "Desecrated Tunic",
			[ "quality" ] = 4,
			[ "itemId" ] = 22350,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6096,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_misc_desecrated_clothchest",
			[ "name" ] = "Desecrated Robe",
			[ "quality" ] = 4,
			[ "itemId" ] = 22351,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6079,
			[ "classes" ] = { "Warrior", "Rogue" },
			[ "icon" ] = "inv_misc_desecrated_platepants",
			[ "name" ] = "Desecrated Legplates",
			[ "quality" ] = 4,
			[ "itemId" ] = 22352,
			[ "raidBosses" ] = { 591 }
		}, {
			[ "id" ] = 6041,
			[ "classes" ] = { "Warrior", "Rogue" },
			[ "icon" ] = "inv_misc_desecrated_platehelm",
			[ "name" ] = "Desecrated Helmet",
			[ "quality" ] = 4,
			[ "itemId" ] = 22353,
			[ "raidBosses" ] = { 585 }
		}, {
			[ "id" ] = 6019,
			[ "classes" ] = { "Warrior", "Rogue" },
			[ "icon" ] = "inv_misc_desecrated_plateshoulder",
			[ "name" ] = "Desecrated Pauldrons",
			[ "quality" ] = 4,
			[ "itemId" ] = 22354,
			[ "raidBosses" ] = { 583, 584, 655 }
		}, {
			[ "id" ] = 6036,
			[ "classes" ] = { "Warrior", "Rogue" },
			[ "icon" ] = "inv_misc_desecrated_platebracer",
			[ "name" ] = "Desecrated Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 22355,
			[ "raidBosses" ] = { 584, 586, 587 }
		}, {
			[ "id" ] = 6037,
			[ "classes" ] = { "Warrior", "Rogue" },
			[ "icon" ] = "inv_misc_desecrated_platebelt",
			[ "name" ] = "Desecrated Waistguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 22356,
			[ "raidBosses" ] = { 584, 589, 590 }
		}, {
			[ "id" ] = 6059,
			[ "classes" ] = { "Warrior", "Rogue" },
			[ "icon" ] = "inv_misc_desecrated_plategloves",
			[ "name" ] = "Desecrated Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 22357,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 6038,
			[ "classes" ] = { "Warrior", "Rogue" },
			[ "icon" ] = "inv_misc_desecrated_plateboots",
			[ "name" ] = "Desecrated Sabatons",
			[ "quality" ] = 4,
			[ "itemId" ] = 22358,
			[ "raidBosses" ] = { 584, 592, 593 }
		}, {
			[ "id" ] = 6078,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Druid" },
			[ "icon" ] = "inv_misc_desecrated_mailpants",
			[ "name" ] = "Desecrated Legguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 22359,
			[ "raidBosses" ] = { 591 }
		}, {
			[ "id" ] = 6040,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Druid" },
			[ "icon" ] = "inv_misc_desecrated_mailhelm",
			[ "name" ] = "Desecrated Headpiece",
			[ "quality" ] = 4,
			[ "itemId" ] = 22360,
			[ "raidBosses" ] = { 585 }
		}, {
			[ "id" ] = 6018,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Druid" },
			[ "icon" ] = "inv_misc_desecrated_mailshoulder",
			[ "name" ] = "Desecrated Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 22361,
			[ "raidBosses" ] = { 583, 584, 655 }
		}, {
			[ "id" ] = 6033,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Druid" },
			[ "icon" ] = "inv_misc_desecrated_mailbracer",
			[ "name" ] = "Desecrated Wristguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 22362,
			[ "raidBosses" ] = { 584, 586, 587 }
		}, {
			[ "id" ] = 6034,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Druid" },
			[ "icon" ] = "inv_misc_desecrated_mailbelt",
			[ "name" ] = "Desecrated Girdle",
			[ "quality" ] = 4,
			[ "itemId" ] = 22363,
			[ "raidBosses" ] = { 584, 589, 590 }
		}, {
			[ "id" ] = 6058,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Druid" },
			[ "icon" ] = "inv_misc_desecrated_mailglove",
			[ "name" ] = "Desecrated Handguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 22364,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 6035,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Druid" },
			[ "icon" ] = "inv_misc_desecrated_mailboots",
			[ "name" ] = "Desecrated Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 22365,
			[ "raidBosses" ] = { 584, 592, 593 }
		}, {
			[ "id" ] = 6077,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_misc_desecrated_clothpants",
			[ "name" ] = "Desecrated Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 22366,
			[ "raidBosses" ] = { 591 }
		}, {
			[ "id" ] = 6039,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_misc_desecrated_clothhelm",
			[ "name" ] = "Desecrated Circlet",
			[ "quality" ] = 4,
			[ "itemId" ] = 22367,
			[ "raidBosses" ] = { 585 }
		}, {
			[ "id" ] = 6017,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_misc_desecrated_clothshoulder",
			[ "name" ] = "Desecrated Shoulderpads",
			[ "quality" ] = 4,
			[ "itemId" ] = 22368,
			[ "raidBosses" ] = { 583, 584, 655 }
		}, {
			[ "id" ] = 6030,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_misc_desecrated_clothbracer",
			[ "name" ] = "Desecrated Bindings",
			[ "quality" ] = 4,
			[ "itemId" ] = 22369,
			[ "raidBosses" ] = { 584, 586, 587 }
		}, {
			[ "id" ] = 6031,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_misc_desecrated_clothbelt",
			[ "name" ] = "Desecrated Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 22370,
			[ "raidBosses" ] = { 584, 589, 590 }
		}, {
			[ "id" ] = 6057,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_misc_desecrated_clothglove",
			[ "name" ] = "Desecrated Gloves",
			[ "quality" ] = 4,
			[ "itemId" ] = 22371,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 6032,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_misc_desecrated_clothboots",
			[ "name" ] = "Desecrated Sandals",
			[ "quality" ] = 4,
			[ "itemId" ] = 22372,
			[ "raidBosses" ] = { 584, 592, 593 }
		}, {
			[ "id" ] = 6160,
			[ "icon" ] = "inv_misc_wartornscrap_leather",
			[ "name" ] = "Wartorn Leather Scrap",
			[ "quality" ] = 3,
			[ "itemId" ] = 22373,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6161,
			[ "icon" ] = "inv_misc_wartornscrap_chain",
			[ "name" ] = "Wartorn Chain Scrap",
			[ "quality" ] = 3,
			[ "itemId" ] = 22374,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6162,
			[ "icon" ] = "inv_misc_wartornscrap_plate",
			[ "name" ] = "Wartorn Plate Scrap",
			[ "quality" ] = 3,
			[ "itemId" ] = 22375,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6159,
			[ "icon" ] = "inv_misc_wartornscrap_cloth",
			[ "name" ] = "Wartorn Cloth Scrap",
			[ "quality" ] = 3,
			[ "itemId" ] = 22376,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6130,
			[ "icon" ] = "inv_misc_urn_01",
			[ "name" ] = "The Phylactery of Kel'Thuzad",
			[ "quality" ] = 4,
			[ "itemId" ] = 22520,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6164,
			[ "icon" ] = "inv_misc_rune_09",
			[ "name" ] = "Frozen Rune",
			[ "quality" ] = 3,
			[ "itemId" ] = 22682,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6104,
			[ "icon" ] = "inv_sword_2h_ashbringercorrupt",
			[ "name" ] = "Corrupted Ashbringer",
			[ "quality" ] = 4,
			[ "itemId" ] = 22691,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6015,
			[ "classes" ] = { "Priest", "Mage", "Warlock", "Druid" },
			[ "icon" ] = "inv_qiraj_jewelblessed",
			[ "name" ] = "Splinter of Atiesh",
			[ "quality" ] = 5,
			[ "itemId" ] = 22726,
			[ "raidBosses" ] = { 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 655 }
		}, {
			[ "id" ] = 6142,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_04",
			[ "name" ] = "Staff Head of Atiesh",
			[ "quality" ] = 5,
			[ "itemId" ] = 22733,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6128,
			[ "icon" ] = "inv_mace_25",
			[ "name" ] = "Might of Menethil",
			[ "quality" ] = 4,
			[ "itemId" ] = 22798,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6129,
			[ "icon" ] = "inv_staff_15",
			[ "name" ] = "Soulseeker",
			[ "quality" ] = 4,
			[ "itemId" ] = 22799,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6084,
			[ "icon" ] = "inv_staff_13",
			[ "name" ] = "Brimstone Staff",
			[ "quality" ] = 4,
			[ "itemId" ] = 22800,
			[ "raidBosses" ] = { 591 }
		}, {
			[ "id" ] = 6046,
			[ "icon" ] = "inv_staff_31",
			[ "name" ] = "Spire of Twilight",
			[ "quality" ] = 4,
			[ "itemId" ] = 22801,
			[ "raidBosses" ] = { 585 }
		}, {
			[ "id" ] = 6124,
			[ "icon" ] = "inv_weapon_shortblade_37",
			[ "name" ] = "Kingsfall",
			[ "quality" ] = 4,
			[ "itemId" ] = 22802,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6023,
			[ "icon" ] = "inv_knife_1h_stratholme_d_02",
			[ "name" ] = "Midnight Haze",
			[ "quality" ] = 4,
			[ "itemId" ] = 22803,
			[ "raidBosses" ] = { 583 }
		}, {
			[ "id" ] = 6064,
			[ "icon" ] = "inv_knife_1h_stratholme_d_01",
			[ "name" ] = "Maexxna's Fang",
			[ "quality" ] = 4,
			[ "itemId" ] = 22804,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 6056,
			[ "icon" ] = "inv_sword_60",
			[ "name" ] = "Widow's Remorse",
			[ "quality" ] = 4,
			[ "itemId" ] = 22806,
			[ "raidBosses" ] = { 587 }
		}, {
			[ "id" ] = 6063,
			[ "icon" ] = "inv_sword_11",
			[ "name" ] = "Wraith Blade",
			[ "quality" ] = 4,
			[ "itemId" ] = 22807,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 6045,
			[ "icon" ] = "inv_mace_1h_stratholme_d_01",
			[ "name" ] = "The Castigator",
			[ "quality" ] = 4,
			[ "itemId" ] = 22808,
			[ "raidBosses" ] = { 585 }
		}, {
			[ "id" ] = 6103,
			[ "icon" ] = "inv_mace_26",
			[ "name" ] = "Maul of the Redeemed Crusader",
			[ "quality" ] = 4,
			[ "itemId" ] = 22809,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6022,
			[ "icon" ] = "inv_weapon_rifle_13",
			[ "name" ] = "Toxin Injector",
			[ "quality" ] = 4,
			[ "itemId" ] = 22810,
			[ "raidBosses" ] = { 583 }
		}, {
			[ "id" ] = 6102,
			[ "icon" ] = "inv_weapon_bow_13",
			[ "name" ] = "Soulstring",
			[ "quality" ] = 4,
			[ "itemId" ] = 22811,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6121,
			[ "icon" ] = "inv_weapon_crossbow_12",
			[ "name" ] = "Nerubian Slavemaker",
			[ "quality" ] = 4,
			[ "itemId" ] = 22812,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6029,
			[ "icon" ] = "inv_sword_46",
			[ "name" ] = "Claymore of Unholy Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 22813,
			[ "raidBosses" ] = { 584 }
		}, {
			[ "id" ] = 6802,
			[ "icon" ] = "inv_axe_2h_stratholme_d_01",
			[ "name" ] = "Severance",
			[ "quality" ] = 4,
			[ "itemId" ] = 22815,
			[ "raidBosses" ] = { 655 }
		}, {
			[ "id" ] = 6071,
			[ "icon" ] = "inv_axe_08",
			[ "name" ] = "Hatchet of Sundered Bone",
			[ "quality" ] = 4,
			[ "itemId" ] = 22816,
			[ "raidBosses" ] = { 589 }
		}, {
			[ "id" ] = 6803,
			[ "icon" ] = "inv_shield_27",
			[ "name" ] = "The Plague Bearer",
			[ "quality" ] = 4,
			[ "itemId" ] = 22818,
			[ "raidBosses" ] = { 655 }
		}, {
			[ "id" ] = 6123,
			[ "icon" ] = "inv_shield_28",
			[ "name" ] = "Shield of Condemnation",
			[ "quality" ] = 4,
			[ "itemId" ] = 22819,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6804,
			[ "icon" ] = "inv_wand_1h_stratholme_d_01",
			[ "name" ] = "Wand of Fates",
			[ "quality" ] = 4,
			[ "itemId" ] = 22820,
			[ "raidBosses" ] = { 655 }
		}, {
			[ "id" ] = 6122,
			[ "icon" ] = "inv_wand_1h_stratholme_d_02",
			[ "name" ] = "Doomfinger",
			[ "quality" ] = 4,
			[ "itemId" ] = 22821,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6047,
			[ "icon" ] = "inv_jewelry_amulet_04",
			[ "name" ] = "Touch of Frost",
			[ "quality" ] = 4,
			[ "itemId" ] = 22935,
			[ "raidBosses" ] = { 586 }
		}, {
			[ "id" ] = 6049,
			[ "icon" ] = "inv_bracer_17",
			[ "name" ] = "Wristguards of Vengeance",
			[ "quality" ] = 4,
			[ "itemId" ] = 22936,
			[ "raidBosses" ] = { 586 }
		}, {
			[ "id" ] = 6051,
			[ "icon" ] = "inv_offhand_naxxramas_d_01",
			[ "name" ] = "Gem of Nerubis",
			[ "quality" ] = 4,
			[ "itemId" ] = 22937,
			[ "raidBosses" ] = { 586 }
		}, {
			[ "id" ] = 6048,
			[ "icon" ] = "inv_misc_cape_naxxramas_02",
			[ "name" ] = "Cryptfiend Silk Cloak",
			[ "quality" ] = 4,
			[ "itemId" ] = 22938,
			[ "raidBosses" ] = { 586 }
		}, {
			[ "id" ] = 6050,
			[ "icon" ] = "inv_jewelry_ring_50naxxramas",
			[ "name" ] = "Band of Unanswered Prayers",
			[ "quality" ] = 4,
			[ "itemId" ] = 22939,
			[ "raidBosses" ] = { 586 }
		}, {
			[ "id" ] = 6054,
			[ "icon" ] = "inv_shoulder_16",
			[ "name" ] = "Icebane Pauldrons",
			[ "quality" ] = 4,
			[ "itemId" ] = 22940,
			[ "raidBosses" ] = { 587 }
		}, {
			[ "id" ] = 6053,
			[ "icon" ] = "inv_shoulder_07",
			[ "name" ] = "Polar Shoulder Pads",
			[ "quality" ] = 4,
			[ "itemId" ] = 22941,
			[ "raidBosses" ] = { 587 }
		}, {
			[ "id" ] = 6055,
			[ "icon" ] = "inv_mace_29",
			[ "name" ] = "The Widow's Embrace",
			[ "quality" ] = 4,
			[ "itemId" ] = 22942,
			[ "raidBosses" ] = { 587 }
		}, {
			[ "id" ] = 6052,
			[ "icon" ] = "inv_jewelry_necklace_29naxxramas",
			[ "name" ] = "Malice Stone Pendant",
			[ "quality" ] = 4,
			[ "itemId" ] = 22943,
			[ "raidBosses" ] = { 587 }
		}, {
			[ "id" ] = 6060,
			[ "icon" ] = "inv_jewelry_necklace_28naxxramas",
			[ "name" ] = "Pendant of Forgotten Names",
			[ "quality" ] = 4,
			[ "itemId" ] = 22947,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 6062,
			[ "icon" ] = "inv_trinket_naxxramas04",
			[ "name" ] = "Kiss of the Spider",
			[ "quality" ] = 4,
			[ "itemId" ] = 22954,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 6805,
			[ "icon" ] = "inv_misc_cape_naxxramas_02",
			[ "name" ] = "Cloak of Suturing",
			[ "quality" ] = 4,
			[ "itemId" ] = 22960,
			[ "raidBosses" ] = { 655 }
		}, {
			[ "id" ] = 6806,
			[ "icon" ] = "inv_jewelry_ring_49naxxramas",
			[ "name" ] = "Band of Reanimation",
			[ "quality" ] = 4,
			[ "itemId" ] = 22961,
			[ "raidBosses" ] = { 655 }
		}, {
			[ "id" ] = 6021,
			[ "icon" ] = "inv_shoulder_14",
			[ "name" ] = "Icy Scale Spaulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 22967,
			[ "raidBosses" ] = { 583 }
		}, {
			[ "id" ] = 6020,
			[ "icon" ] = "inv_shoulder_14",
			[ "name" ] = "Glacial Mantle",
			[ "quality" ] = 4,
			[ "itemId" ] = 22968,
			[ "raidBosses" ] = { 583 }
		}, {
			[ "id" ] = 6026,
			[ "icon" ] = "inv_jewelry_necklace_27naxxramas",
			[ "name" ] = "Gluth's Missing Collar",
			[ "quality" ] = 4,
			[ "itemId" ] = 22981,
			[ "raidBosses" ] = { 584 }
		}, {
			[ "id" ] = 6025,
			[ "icon" ] = "inv_shoulder_05",
			[ "name" ] = "Rime Covered Mantle",
			[ "quality" ] = 4,
			[ "itemId" ] = 22983,
			[ "raidBosses" ] = { 584 }
		}, {
			[ "id" ] = 6024,
			[ "icon" ] = "inv_mace_1h_stratholme_d_02",
			[ "name" ] = "The End of Dreams",
			[ "quality" ] = 4,
			[ "itemId" ] = 22988,
			[ "raidBosses" ] = { 583 }
		}, {
			[ "id" ] = 6027,
			[ "icon" ] = "inv_offhand_stratholme_a_02",
			[ "name" ] = "Digested Hand of Power",
			[ "quality" ] = 4,
			[ "itemId" ] = 22994,
			[ "raidBosses" ] = { 584 }
		}, {
			[ "id" ] = 6042,
			[ "icon" ] = "inv_chest_chain_15",
			[ "name" ] = "Plated Abomination Ribcage",
			[ "quality" ] = 4,
			[ "itemId" ] = 23000,
			[ "raidBosses" ] = { 585 }
		}, {
			[ "id" ] = 6044,
			[ "icon" ] = "inv_trinket_naxxramas02",
			[ "name" ] = "Eye of Diminution",
			[ "quality" ] = 4,
			[ "itemId" ] = 23001,
			[ "raidBosses" ] = { 585 }
		}, {
			[ "id" ] = 6088,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_relics_idolofhealth",
			[ "name" ] = "Idol of Longevity",
			[ "quality" ] = 4,
			[ "itemId" ] = 23004,
			[ "raidBosses" ] = { 592 }
		}, {
			[ "id" ] = 6070,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_relics_totemoflife",
			[ "name" ] = "Totem of Flowing Water",
			[ "quality" ] = 4,
			[ "itemId" ] = 23005,
			[ "raidBosses" ] = { 589 }
		}, {
			[ "id" ] = 6069,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_relics_libramofgrace",
			[ "name" ] = "Libram of Light",
			[ "quality" ] = 4,
			[ "itemId" ] = 23006,
			[ "raidBosses" ] = { 589 }
		}, {
			[ "id" ] = 6089,
			[ "icon" ] = "inv_wand_1h_stratholme_d_01",
			[ "name" ] = "Wand of the Whispering Dead",
			[ "quality" ] = 4,
			[ "itemId" ] = 23009,
			[ "raidBosses" ] = { 592 }
		}, {
			[ "id" ] = 6090,
			[ "icon" ] = "inv_sword_07",
			[ "name" ] = "Iblis, Blade of the Fallen Seraph",
			[ "quality" ] = 4,
			[ "itemId" ] = 23014,
			[ "raidBosses" ] = { 592 }
		}, {
			[ "id" ] = 6085,
			[ "icon" ] = "inv_misc_cape_naxxramas_01",
			[ "name" ] = "Veil of Eclipse",
			[ "quality" ] = 4,
			[ "itemId" ] = 23017,
			[ "raidBosses" ] = { 592 }
		}, {
			[ "id" ] = 6087,
			[ "icon" ] = "inv_jewelry_ring_50naxxramas",
			[ "name" ] = "Signet of the Fallen Defender",
			[ "quality" ] = 4,
			[ "itemId" ] = 23018,
			[ "raidBosses" ] = { 592 }
		}, {
			[ "id" ] = 6074,
			[ "icon" ] = "inv_helmet_06",
			[ "name" ] = "Icebane Helmet",
			[ "quality" ] = 4,
			[ "itemId" ] = 23019,
			[ "raidBosses" ] = { 590 }
		}, {
			[ "id" ] = 6092,
			[ "icon" ] = "inv_helmet_04",
			[ "name" ] = "Polar Helmet",
			[ "quality" ] = 4,
			[ "itemId" ] = 23020,
			[ "raidBosses" ] = { 593 }
		}, {
			[ "id" ] = 6094,
			[ "icon" ] = "inv_bracer_07",
			[ "name" ] = "The Soul Harvester's Bindings",
			[ "quality" ] = 4,
			[ "itemId" ] = 23021,
			[ "raidBosses" ] = { 593 }
		}, {
			[ "id" ] = 6093,
			[ "icon" ] = "inv_jewelry_necklace_29naxxramas",
			[ "name" ] = "Sadist's Collar",
			[ "quality" ] = 4,
			[ "itemId" ] = 23023,
			[ "raidBosses" ] = { 593 }
		}, {
			[ "id" ] = 6100,
			[ "icon" ] = "inv_jewelry_ring_48naxxramas",
			[ "name" ] = "Seal of the Damned",
			[ "quality" ] = 4,
			[ "itemId" ] = 23025,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6101,
			[ "icon" ] = "inv_trinket_naxxramas01",
			[ "name" ] = "Warmth of Forgiveness",
			[ "quality" ] = 4,
			[ "itemId" ] = 23027,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6067,
			[ "icon" ] = "inv_jewelry_ring_35",
			[ "name" ] = "Hailstone Band",
			[ "quality" ] = 4,
			[ "itemId" ] = 23028,
			[ "raidBosses" ] = { 589 }
		}, {
			[ "id" ] = 6068,
			[ "icon" ] = "inv_offhand_naxxramas_04",
			[ "name" ] = "Noth's Frigid Heart",
			[ "quality" ] = 4,
			[ "itemId" ] = 23029,
			[ "raidBosses" ] = { 589 }
		}, {
			[ "id" ] = 6065,
			[ "icon" ] = "inv_misc_cape_naxxramas_01",
			[ "name" ] = "Cloak of the Scourge",
			[ "quality" ] = 4,
			[ "itemId" ] = 23030,
			[ "raidBosses" ] = { 589 }
		}, {
			[ "id" ] = 6066,
			[ "icon" ] = "inv_jewelry_ring_53naxxramas",
			[ "name" ] = "Band of the Inevitable",
			[ "quality" ] = 4,
			[ "itemId" ] = 23031,
			[ "raidBosses" ] = { 589 }
		}, {
			[ "id" ] = 6091,
			[ "icon" ] = "inv_helmet_53",
			[ "name" ] = "Glacial Headdress",
			[ "quality" ] = 4,
			[ "itemId" ] = 23032,
			[ "raidBosses" ] = { 593 }
		}, {
			[ "id" ] = 6073,
			[ "icon" ] = "inv_helmet_20",
			[ "name" ] = "Icy Scale Coif",
			[ "quality" ] = 4,
			[ "itemId" ] = 23033,
			[ "raidBosses" ] = { 590 }
		}, {
			[ "id" ] = 6072,
			[ "icon" ] = "inv_helmet_50",
			[ "name" ] = "Preceptor's Hat",
			[ "quality" ] = 4,
			[ "itemId" ] = 23035,
			[ "raidBosses" ] = { 590 }
		}, {
			[ "id" ] = 6075,
			[ "icon" ] = "inv_jewelry_necklace_30naxxramas",
			[ "name" ] = "Necklace of Necropsy",
			[ "quality" ] = 4,
			[ "itemId" ] = 23036,
			[ "raidBosses" ] = { 590 }
		}, {
			[ "id" ] = 6081,
			[ "icon" ] = "inv_jewelry_ring_52naxxramas",
			[ "name" ] = "Ring of Spiritual Fervor",
			[ "quality" ] = 4,
			[ "itemId" ] = 23037,
			[ "raidBosses" ] = { 591 }
		}, {
			[ "id" ] = 6080,
			[ "icon" ] = "inv_jewelry_ring_48naxxramas",
			[ "name" ] = "Band of Unnatural Forces",
			[ "quality" ] = 4,
			[ "itemId" ] = 23038,
			[ "raidBosses" ] = { 591 }
		}, {
			[ "id" ] = 6083,
			[ "icon" ] = "inv_spear_09",
			[ "name" ] = "The Eye of Nerub",
			[ "quality" ] = 4,
			[ "itemId" ] = 23039,
			[ "raidBosses" ] = { 591 }
		}, {
			[ "id" ] = 6107,
			[ "icon" ] = "inv_trinket_naxxramas05",
			[ "name" ] = "Glyph of Deflection",
			[ "quality" ] = 4,
			[ "itemId" ] = 23040,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6109,
			[ "icon" ] = "inv_trinket_naxxramas03",
			[ "name" ] = "Slayer's Crest",
			[ "quality" ] = 4,
			[ "itemId" ] = 23041,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6082,
			[ "icon" ] = "inv_trinket_naxxramas05",
			[ "name" ] = "Loatheb's Reflection",
			[ "quality" ] = 4,
			[ "itemId" ] = 23042,
			[ "raidBosses" ] = { 591 }
		}, {
			[ "id" ] = 6113,
			[ "icon" ] = "inv_shield_26",
			[ "name" ] = "The Face of Death",
			[ "quality" ] = 4,
			[ "itemId" ] = 23043,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6157,
			[ "icon" ] = "inv_knife_1h_stratholme_d_03",
			[ "name" ] = "Harbinger of Doom",
			[ "quality" ] = 4,
			[ "itemId" ] = 23044,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6106,
			[ "icon" ] = "inv_misc_cape_naxxramas_03",
			[ "name" ] = "Shroud of Dominion",
			[ "quality" ] = 4,
			[ "itemId" ] = 23045,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6110,
			[ "icon" ] = "inv_trinket_naxxramas06",
			[ "name" ] = "The Restrained Essence of Sapphiron",
			[ "quality" ] = 4,
			[ "itemId" ] = 23046,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6108,
			[ "icon" ] = "inv_trinket_naxxramas01",
			[ "name" ] = "Eye of the Dead",
			[ "quality" ] = 4,
			[ "itemId" ] = 23047,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6112,
			[ "icon" ] = "inv_offhand_naxxramas_02",
			[ "name" ] = "Sapphiron's Right Eye",
			[ "quality" ] = 4,
			[ "itemId" ] = 23048,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6111,
			[ "icon" ] = "inv_offhand_naxxramas_03",
			[ "name" ] = "Sapphiron's Left Eye",
			[ "quality" ] = 4,
			[ "itemId" ] = 23049,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6105,
			[ "icon" ] = "inv_misc_cape_naxxramas_03",
			[ "name" ] = "Cloak of the Necropolis",
			[ "quality" ] = 4,
			[ "itemId" ] = 23050,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6120,
			[ "icon" ] = "inv_jewelry_necklace_28naxxramas",
			[ "name" ] = "Stormrage's Talisman of Seething",
			[ "quality" ] = 4,
			[ "itemId" ] = 23053,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6126,
			[ "icon" ] = "inv_sword_61",
			[ "name" ] = "Gressil, Dawn of Ruin",
			[ "quality" ] = 4,
			[ "itemId" ] = 23054,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6163,
			[ "icon" ] = "inv_scroll_02",
			[ "name" ] = "Word of Thawing",
			[ "quality" ] = 1,
			[ "itemId" ] = 23055,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6125,
			[ "icon" ] = "inv_mace_27",
			[ "name" ] = "Hammer of the Twisting Nether",
			[ "quality" ] = 4,
			[ "itemId" ] = 23056,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6119,
			[ "icon" ] = "inv_jewelry_necklace_29naxxramas",
			[ "name" ] = "Gem of Trapped Innocents",
			[ "quality" ] = 4,
			[ "itemId" ] = 23057,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6141,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Ring of the Dreadnaught (Desecrated Ring)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23059,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6136,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Bonescythe Ring (Desecrated Ring)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23060,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6133,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Ring of Faith (Desecrated Loop)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23061,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6134,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Frostfire Ring (Desecrated Loop)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23062,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6135,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Plagueheart Ring (Desecrated Loop)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23063,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6137,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Ring of The Dreamwalker (Desecrated Signet)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23064,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6139,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Ring of the Earthshatterer (Desecrated Signet)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23065,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6140,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Ring of Redemption (Desecrated Signet)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23066,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6138,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_jewelry_ring_51naxxramas",
			[ "name" ] = "Ring of the Cryptstalker (Desecrated Signet)",
			[ "quality" ] = 4,
			[ "itemId" ] = 23067,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6076,
			[ "icon" ] = "inv_pants_plate_20",
			[ "name" ] = "Legplates of Carnage",
			[ "quality" ] = 4,
			[ "itemId" ] = 23068,
			[ "raidBosses" ] = { 590 }
		}, {
			[ "id" ] = 6149,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_chest_cloth_46",
			[ "name" ] = "Necro-Knight's Garb",
			[ "quality" ] = 4,
			[ "itemId" ] = 23069,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6043,
			[ "icon" ] = "inv_pants_08",
			[ "name" ] = "Leggings of Polarity",
			[ "quality" ] = 4,
			[ "itemId" ] = 23070,
			[ "raidBosses" ] = { 585 }
		}, {
			[ "id" ] = 6099,
			[ "icon" ] = "inv_pants_leather_09",
			[ "name" ] = "Leggings of Apocalypse",
			[ "quality" ] = 4,
			[ "itemId" ] = 23071,
			[ "raidBosses" ] = { 594 }
		}, {
			[ "id" ] = 6095,
			[ "icon" ] = "inv_boots_08",
			[ "name" ] = "Boots of Displacement",
			[ "quality" ] = 4,
			[ "itemId" ] = 23073,
			[ "raidBosses" ] = { 593 }
		}, {
			[ "id" ] = 6028,
			[ "icon" ] = "inv_armor_shield_naxxramas_d_01",
			[ "name" ] = "Death's Bargain",
			[ "quality" ] = 4,
			[ "itemId" ] = 23075,
			[ "raidBosses" ] = { 584 }
		}, {
			[ "id" ] = 6086,
			[ "icon" ] = "inv_belt_13",
			[ "name" ] = "Girdle of the Mentor",
			[ "quality" ] = 4,
			[ "itemId" ] = 23219,
			[ "raidBosses" ] = { 592 }
		}, {
			[ "id" ] = 6061,
			[ "icon" ] = "inv_chest_cloth_46",
			[ "name" ] = "Crystal Webbed Robe",
			[ "quality" ] = 4,
			[ "itemId" ] = 23220,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 6158,
			[ "icon" ] = "inv_mace_28",
			[ "name" ] = "Misplaced Servo Arm",
			[ "quality" ] = 4,
			[ "itemId" ] = 23221,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6150,
			[ "icon" ] = "inv_chest_leather_02",
			[ "name" ] = "Ghoul Skin Tunic",
			[ "quality" ] = 4,
			[ "itemId" ] = 23226,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6155,
			[ "icon" ] = "inv_jewelry_ring_48naxxramas",
			[ "name" ] = "Ring of the Eternal Flame",
			[ "quality" ] = 4,
			[ "itemId" ] = 23237,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6156,
			[ "icon" ] = "inv_armor_shield_naxxramas_d_02",
			[ "name" ] = "Stygian Buckler",
			[ "quality" ] = 4,
			[ "itemId" ] = 23238,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6114,
			[ "icon" ] = "inv_weapon_hand_03",
			[ "name" ] = "Claw of the Frost Wyrm",
			[ "quality" ] = 4,
			[ "itemId" ] = 23242,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6117,
			[ "icon" ] = "spell_shadow_darkritual",
			[ "name" ] = "Power of the Scourge",
			[ "quality" ] = 4,
			[ "itemId" ] = 23545,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6118,
			[ "icon" ] = "spell_shadow_deadofnight",
			[ "name" ] = "Resilience of the Scourge",
			[ "quality" ] = 4,
			[ "itemId" ] = 23547,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6116,
			[ "icon" ] = "spell_shadow_deathpact",
			[ "name" ] = "Might of the Scourge",
			[ "quality" ] = 4,
			[ "itemId" ] = 23548,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6115,
			[ "icon" ] = "spell_shadow_antishadow",
			[ "name" ] = "Fortitude of the Scourge",
			[ "quality" ] = 4,
			[ "itemId" ] = 23549,
			[ "raidBosses" ] = { 595 }
		}, {
			[ "id" ] = 6127,
			[ "icon" ] = "inv_sword_62",
			[ "name" ] = "The Hungering Cold",
			[ "quality" ] = 4,
			[ "itemId" ] = 23577,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6151,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_belt_32",
			[ "name" ] = "Girdle of Elemental Fury",
			[ "quality" ] = 4,
			[ "itemId" ] = 23663,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6147,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_shoulder_01",
			[ "name" ] = "Pauldrons of Elemental Fury",
			[ "quality" ] = 4,
			[ "itemId" ] = 23664,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6153,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_pants_mail_14",
			[ "name" ] = "Leggings of Elemental Fury",
			[ "quality" ] = 4,
			[ "itemId" ] = 23665,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6152,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_belt_27",
			[ "name" ] = "Belt of the Grand Crusader",
			[ "quality" ] = 4,
			[ "itemId" ] = 23666,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6148,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_shoulder_22",
			[ "name" ] = "Spaulders of the Grand Crusader",
			[ "quality" ] = 4,
			[ "itemId" ] = 23667,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 6154,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_pants_04",
			[ "name" ] = "Leggings of the Grand Crusader",
			[ "quality" ] = 4,
			[ "itemId" ] = 23668,
			[ "raidBosses" ] = { 597 }
		}, {
			[ "id" ] = 7208,
			[ "icon" ] = "inv_misc_monsterspidercarapace_01",
			[ "name" ] = "Plagued Riding Spider",
			[ "quality" ] = 4,
			[ "itemId" ] = 36666,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 7796,
			[ "icon" ] = "inv_misc_monsterspidercarapace_01",
			[ "name" ] = "Maexxna's Hatchling",
			[ "quality" ] = 2,
			[ "itemId" ] = 37012,
			[ "raidBosses" ] = { 588 }
		}, {
			[ "id" ] = 7083,
			[ "classes" ] = { "Warrior", "Rogue" },
			[ "icon" ] = "inv_jewelry_ring_15",
			[ "name" ] = "Desecrated Ring",
			[ "quality" ] = 4,
			[ "itemId" ] = 55581,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 7082,
			[ "classes" ] = { "Mage", "Priest", "Warlock" },
			[ "icon" ] = "inv_jewelry_ring_27",
			[ "name" ] = "Desecrated Loop",
			[ "quality" ] = 4,
			[ "itemId" ] = 55582,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 7081,
			[ "classes" ] = { "Hunter", "Paladin", "Shaman", "Druid" },
			[ "icon" ] = "inv_jewelry_ring_16",
			[ "name" ] = "Desecrated Signet",
			[ "quality" ] = 4,
			[ "itemId" ] = 55583,
			[ "raidBosses" ] = { 596 }
		}, {
			[ "id" ] = 6818,
			[ "icon" ] = "inv_misc_ribbon_01",
			[ "name" ] = "Mr. Bigglesworth",
			[ "quality" ] = 2,
			[ "itemId" ] = 81283,
			[ "raidBosses" ] = { 596 }
		} }
	},
	[ 97 ] = {
		[ "name" ] = "Onyxia's Lair",
		[ "reference" ] = "ONY",
		[ "raidBosses" ] = { {
			[ "id" ] = 598,
			[ "name" ] = "Onyxia",
			[ "position" ] = 0
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 6188,
			[ "icon" ] = "inv_misc_monsterscales_24",
			[ "name" ] = "Scale of Onyxia",
			[ "quality" ] = 3,
			[ "itemId" ] = 15410,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 7056,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Chest - Greater Stats",
			[ "quality" ] = 2,
			[ "itemId" ] = 16253,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6169,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_helmet_09",
			[ "name" ] = "Stormrage Cover",
			[ "quality" ] = 4,
			[ "itemId" ] = 16900,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6168,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_helmet_41",
			[ "name" ] = "Bloodfang Hood",
			[ "quality" ] = 4,
			[ "itemId" ] = 16908,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6166,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_helmet_70",
			[ "name" ] = "Netherwind Crown",
			[ "quality" ] = 4,
			[ "itemId" ] = 16914,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6165,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_helmet_24",
			[ "name" ] = "Halo of Transcendence",
			[ "quality" ] = 4,
			[ "itemId" ] = 16921,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6167,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_helmet_08",
			[ "name" ] = "Nemesis Skullcap",
			[ "quality" ] = 4,
			[ "itemId" ] = 16929,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6170,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_helmet_05",
			[ "name" ] = "Dragonstalker's Helm",
			[ "quality" ] = 4,
			[ "itemId" ] = 16939,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6171,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_helmet_69",
			[ "name" ] = "Visor of Ten Storms",
			[ "quality" ] = 4,
			[ "itemId" ] = 16947,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6172,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_helmet_74",
			[ "name" ] = "Judgement Helm",
			[ "quality" ] = 4,
			[ "itemId" ] = 16955,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6173,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_helmet_71",
			[ "name" ] = "Helm of Wrath",
			[ "quality" ] = 4,
			[ "itemId" ] = 16963,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6183,
			[ "icon" ] = "inv_misc_monsterscales_15",
			[ "name" ] = "Shard of the Scale",
			[ "quality" ] = 4,
			[ "itemId" ] = 17064,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6184,
			[ "icon" ] = "inv_misc_book_07",
			[ "name" ] = "Ancient Cornerstone Grimoire",
			[ "quality" ] = 4,
			[ "itemId" ] = 17067,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6185,
			[ "icon" ] = "inv_axe_09",
			[ "name" ] = "Deathbringer",
			[ "quality" ] = 4,
			[ "itemId" ] = 17068,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6186,
			[ "icon" ] = "inv_sword_18",
			[ "name" ] = "Vis'kag the Bloodletter",
			[ "quality" ] = 4,
			[ "itemId" ] = 17075,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6181,
			[ "icon" ] = "inv_misc_cape_16",
			[ "name" ] = "Sapphiron Drape",
			[ "quality" ] = 4,
			[ "itemId" ] = 17078,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6825,
			[ "icon" ] = "inv_misc_bag_10",
			[ "name" ] = "Yellow Sack of Gems",
			[ "quality" ] = 2,
			[ "itemId" ] = 17965,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6187,
			[ "icon" ] = "inv_misc_bag_22",
			[ "name" ] = "Onyxia Hide Backpack",
			[ "quality" ] = 3,
			[ "itemId" ] = 17966,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6180,
			[ "icon" ] = "inv_belt_12",
			[ "name" ] = "Eskhandar's Collar",
			[ "quality" ] = 4,
			[ "itemId" ] = 18205,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6815,
			[ "icon" ] = "inv_misc_head_dragon_01",
			[ "name" ] = "Head of Onyxia (Horde)",
			[ "quality" ] = 4,
			[ "itemId" ] = 18422,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6174,
			[ "icon" ] = "inv_misc_head_dragon_01",
			[ "name" ] = "Head of Onyxia (Alliance)",
			[ "quality" ] = 4,
			[ "itemId" ] = 18423,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6179,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "spell_holy_dispelmagic",
			[ "name" ] = "Mature Black Dragon Sinew",
			[ "quality" ] = 4,
			[ "itemId" ] = 18705,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6182,
			[ "icon" ] = "inv_jewelry_ring_13",
			[ "name" ] = "Ring of Binding",
			[ "quality" ] = 4,
			[ "itemId" ] = 18813,
			[ "raidBosses" ] = { 598 }
		}, {
			[ "id" ] = 6821,
			[ "icon" ] = "inv_misc_stonetablet_03",
			[ "name" ] = "Draconic for Dummies",
			[ "quality" ] = 1,
			[ "itemId" ] = 21110,
			[ "raidBosses" ] = { 598 }
		} }
	},
	[ 98 ] = {
		[ "name" ] = "Ruins of Ahn'Qiraj",
		[ "reference" ] = "AQ20",
		[ "raidBosses" ] = { {
			[ "id" ] = 599,
			[ "name" ] = "Kurinnaxx",
			[ "position" ] = 0
		}, {
			[ "id" ] = 602,
			[ "name" ] = "Captains",
			[ "position" ] = 1
		}, {
			[ "id" ] = 601,
			[ "name" ] = "Rajaxx",
			[ "position" ] = 2
		}, {
			[ "id" ] = 603,
			[ "name" ] = "Moam",
			[ "position" ] = 3
		}, {
			[ "id" ] = 604,
			[ "name" ] = "Buru",
			[ "position" ] = 4
		}, {
			[ "id" ] = 605,
			[ "name" ] = "Ayamiss",
			[ "position" ] = 5
		}, {
			[ "id" ] = 606,
			[ "name" ] = "Ossirian",
			[ "position" ] = 6
		}, {
			[ "id" ] = 600,
			[ "name" ] = "Andorov",
			[ "position" ] = 7
		}, {
			[ "id" ] = 608,
			[ "name" ] = "Class books",
			[ "position" ] = 8
		}, {
			[ "id" ] = 609,
			[ "name" ] = "Enchants",
			[ "position" ] = 9
		}, {
			[ "id" ] = 607,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 10
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 7812,
			[ "icon" ] = "inv_scroll_06",
			[ "name" ] = "Plans: Obsidian Belt Buckle",
			[ "quality" ] = 3,
			[ "itemId" ] = 132,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6321,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Shadow Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 20727,
			[ "raidBosses" ] = { 609 }
		}, {
			[ "id" ] = 6315,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Frost Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 20728,
			[ "raidBosses" ] = { 609 }
		}, {
			[ "id" ] = 6318,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Fire Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 20729,
			[ "raidBosses" ] = { 609 }
		}, {
			[ "id" ] = 6320,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Healing Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 20730,
			[ "raidBosses" ] = { 609 }
		}, {
			[ "id" ] = 6316,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Superior Agility",
			[ "quality" ] = 3,
			[ "itemId" ] = 20731,
			[ "raidBosses" ] = { 609 }
		}, {
			[ "id" ] = 6317,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Cloak - Stealth",
			[ "quality" ] = 3,
			[ "itemId" ] = 20734,
			[ "raidBosses" ] = { 609 }
		}, {
			[ "id" ] = 6319,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Cloak - Dodge",
			[ "quality" ] = 3,
			[ "itemId" ] = 20736,
			[ "raidBosses" ] = { 609 }
		}, {
			[ "id" ] = 6267,
			[ "classes" ] = { "Hunter", "Rogue", "Mage" },
			[ "icon" ] = "inv_qirajidol_azure",
			[ "name" ] = "Azure Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 20866,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6271,
			[ "classes" ] = { "Rogue", "Warrior", "Warlock" },
			[ "icon" ] = "inv_qirajidol_onyx",
			[ "name" ] = "Onyx Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 20867,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6269,
			[ "classes" ] = { "Warrior", "Hunter", "Priest" },
			[ "icon" ] = "inv_qirajidol_lambent",
			[ "name" ] = "Lambent Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 20868,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6266,
			[ "classes" ] = { "Druid", "Mage", "Warrior" },
			[ "icon" ] = "inv_qirajidol_amber",
			[ "name" ] = "Amber Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 20869,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6268,
			[ "classes" ] = { "Priest", "Warlock", "Druid" },
			[ "icon" ] = "inv_qirajidol_jasper",
			[ "name" ] = "Jasper Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 20870,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6270,
			[ "classes" ] = { "Paladin", "Priest", "Shaman", "Mage" },
			[ "icon" ] = "inv_qirajidol_obsidian",
			[ "name" ] = "Obsidian Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 20871,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6272,
			[ "classes" ] = { "Rogue", "Shaman", "Paladin", "Druid" },
			[ "icon" ] = "inv_qirajidol_vermillion",
			[ "name" ] = "Vermillion Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 20872,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6265,
			[ "classes" ] = { "Warrior", "Mage", "Druid" },
			[ "icon" ] = "inv_qirajidol_alabaster",
			[ "name" ] = "Alabaster Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 20873,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6198,
			[ "classes" ] = { "Warrior", "Paladin", "Shaman", "Mage", "Druid" },
			[ "icon" ] = "inv_qiraj_ringmagisterial",
			[ "name" ] = "Qiraji Magisterial Ring",
			[ "quality" ] = 3,
			[ "itemId" ] = 20884,
			[ "raidBosses" ] = { 599, 601, 603, 604, 605 }
		}, {
			[ "id" ] = 6195,
			[ "classes" ] = { "Warrior", "Rogue", "Mage", "Priest" },
			[ "icon" ] = "inv_qiraj_drapemartial",
			[ "name" ] = "Qiraji Martial Drape",
			[ "quality" ] = 3,
			[ "itemId" ] = 20885,
			[ "raidBosses" ] = { 599, 601, 604, 605 }
		}, {
			[ "id" ] = 6227,
			[ "classes" ] = { "Warrior", "Paladin", "Hunter", "Rogue", "Shaman" },
			[ "icon" ] = "inv_qiraj_hiltspiked",
			[ "name" ] = "Qiraji Spiked Hilt",
			[ "quality" ] = 4,
			[ "itemId" ] = 20886,
			[ "raidBosses" ] = { 603, 604, 605, 606 }
		}, {
			[ "id" ] = 6197,
			[ "classes" ] = { "Hunter", "Rogue", "Priest", "Warlock" },
			[ "icon" ] = "inv_qiraj_ringceremonial",
			[ "name" ] = "Qiraji Ceremonial Ring",
			[ "quality" ] = 3,
			[ "itemId" ] = 20888,
			[ "raidBosses" ] = { 599, 601, 603, 604, 605 }
		}, {
			[ "id" ] = 6196,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Warlock", "Druid" },
			[ "icon" ] = "inv_bracer_18",
			[ "name" ] = "Qiraji Regal Drape",
			[ "quality" ] = 3,
			[ "itemId" ] = 20889,
			[ "raidBosses" ] = { 599, 601, 604, 605 }
		}, {
			[ "id" ] = 6226,
			[ "classes" ] = { "Priest", "Mage", "Warlock", "Druid" },
			[ "icon" ] = "inv_qiraj_hiltornate",
			[ "name" ] = "Qiraji Ornate Hilt",
			[ "quality" ] = 4,
			[ "itemId" ] = 20890,
			[ "raidBosses" ] = { 603, 604, 605, 606 }
		}, {
			[ "id" ] = 6292,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_misc_book_07",
			[ "name" ] = "Tome of Frostbolt XI",
			[ "quality" ] = 3,
			[ "itemId" ] = 21214,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6257,
			[ "icon" ] = "ability_hunter_pet_owl",
			[ "name" ] = "Head of Ossirian the Unscarred",
			[ "quality" ] = 4,
			[ "itemId" ] = 21220,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6291,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_misc_book_07",
			[ "name" ] = "Tome of Fireball XII",
			[ "quality" ] = 3,
			[ "itemId" ] = 21279,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6293,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_misc_book_07",
			[ "name" ] = "Tome of Arcane Missiles VIII",
			[ "quality" ] = 3,
			[ "itemId" ] = 21280,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6294,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_misc_book_06",
			[ "name" ] = "Grimoire of Shadow Bolt X",
			[ "quality" ] = 3,
			[ "itemId" ] = 21281,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6296,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_misc_book_06",
			[ "name" ] = "Grimoire of Immolate VIII",
			[ "quality" ] = 3,
			[ "itemId" ] = 21282,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6295,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_misc_book_06",
			[ "name" ] = "Grimoire of Corruption VII",
			[ "quality" ] = 3,
			[ "itemId" ] = 21283,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6288,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_misc_book_09",
			[ "name" ] = "Codex of Greater Heal V",
			[ "quality" ] = 3,
			[ "itemId" ] = 21284,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6290,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_misc_book_09",
			[ "name" ] = "Codex of Renew X",
			[ "quality" ] = 3,
			[ "itemId" ] = 21285,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6289,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_misc_book_09",
			[ "name" ] = "Codex of Prayer of Healing V",
			[ "quality" ] = 3,
			[ "itemId" ] = 21287,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6309,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_misc_book_08",
			[ "name" ] = "Libram: Blessing of Wisdom VI",
			[ "quality" ] = 3,
			[ "itemId" ] = 21288,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6310,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_misc_book_08",
			[ "name" ] = "Libram: Blessing of Might VII",
			[ "quality" ] = 3,
			[ "itemId" ] = 21289,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6311,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_misc_book_08",
			[ "name" ] = "Libram: Holy Light IX",
			[ "quality" ] = 3,
			[ "itemId" ] = 21290,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6306,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_misc_stonetablet_11",
			[ "name" ] = "Tablet of Healing Wave X",
			[ "quality" ] = 3,
			[ "itemId" ] = 21291,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6307,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_misc_stonetablet_11",
			[ "name" ] = "Tablet of Strength of Earth Totem V",
			[ "quality" ] = 3,
			[ "itemId" ] = 21292,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6308,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_misc_stonetablet_11",
			[ "name" ] = "Tablet of Grace of Air Totem III",
			[ "quality" ] = 3,
			[ "itemId" ] = 21293,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6300,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_misc_book_11",
			[ "name" ] = "Book of Healing Touch XI",
			[ "quality" ] = 3,
			[ "itemId" ] = 21294,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6302,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_misc_book_11",
			[ "name" ] = "Book of Starfire VII",
			[ "quality" ] = 3,
			[ "itemId" ] = 21295,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6301,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_misc_book_11",
			[ "name" ] = "Book of Rejuvenation XI",
			[ "quality" ] = 3,
			[ "itemId" ] = 21296,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6314,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_misc_book_03",
			[ "name" ] = "Manual of Heroic Strike IX",
			[ "quality" ] = 3,
			[ "itemId" ] = 21297,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6312,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_misc_book_03",
			[ "name" ] = "Manual of Battle Shout VII",
			[ "quality" ] = 3,
			[ "itemId" ] = 21298,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6313,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_misc_book_03",
			[ "name" ] = "Manual of Revenge VI",
			[ "quality" ] = 3,
			[ "itemId" ] = 21299,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6297,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_misc_book_10",
			[ "name" ] = "Handbook of Backstab IX",
			[ "quality" ] = 3,
			[ "itemId" ] = 21300,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6299,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_misc_book_10",
			[ "name" ] = "Handbook of Deadly Poison V",
			[ "quality" ] = 3,
			[ "itemId" ] = 21302,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6298,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_misc_book_10",
			[ "name" ] = "Handbook of Feint V",
			[ "quality" ] = 3,
			[ "itemId" ] = 21303,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6304,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_misc_book_02",
			[ "name" ] = "Guide: Multi-Shot V",
			[ "quality" ] = 3,
			[ "itemId" ] = 21304,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6303,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_misc_book_02",
			[ "name" ] = "Guide: Serpent Sting IX",
			[ "quality" ] = 3,
			[ "itemId" ] = 21306,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6305,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_misc_book_02",
			[ "name" ] = "Guide: Aspect of the Hawk VII",
			[ "quality" ] = 3,
			[ "itemId" ] = 21307,
			[ "raidBosses" ] = { 608 }
		}, {
			[ "id" ] = 6256,
			[ "icon" ] = "inv_staff_12",
			[ "name" ] = "Staff of the Ruins",
			[ "quality" ] = 4,
			[ "itemId" ] = 21452,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6246,
			[ "icon" ] = "inv_shoulder_28",
			[ "name" ] = "Mantle of the Horusath",
			[ "quality" ] = 4,
			[ "itemId" ] = 21453,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6245,
			[ "icon" ] = "inv_shoulder_18",
			[ "name" ] = "Runic Stone Shoulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 21454,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6217,
			[ "icon" ] = "inv_helmet_01",
			[ "name" ] = "Southwind Helm",
			[ "quality" ] = 3,
			[ "itemId" ] = 21455,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6247,
			[ "icon" ] = "inv_misc_cape_06",
			[ "name" ] = "Sandstorm Cloak",
			[ "quality" ] = 4,
			[ "itemId" ] = 21456,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6249,
			[ "icon" ] = "inv_bracer_19",
			[ "name" ] = "Bracers of Brutality",
			[ "quality" ] = 4,
			[ "itemId" ] = 21457,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6251,
			[ "icon" ] = "inv_gauntlets_24",
			[ "name" ] = "Gauntlets of New Life",
			[ "quality" ] = 4,
			[ "itemId" ] = 21458,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6254,
			[ "icon" ] = "inv_weapon_crossbow_06",
			[ "name" ] = "Crossbow of Imminent Doom",
			[ "quality" ] = 4,
			[ "itemId" ] = 21459,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6244,
			[ "icon" ] = "inv_helmet_09",
			[ "name" ] = "Helm of Domination",
			[ "quality" ] = 4,
			[ "itemId" ] = 21460,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6253,
			[ "icon" ] = "inv_pants_cloth_06",
			[ "name" ] = "Leggings of the Black Blizzard",
			[ "quality" ] = 4,
			[ "itemId" ] = 21461,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6250,
			[ "icon" ] = "inv_gauntlets_19",
			[ "name" ] = "Gloves of Dark Wisdom",
			[ "quality" ] = 4,
			[ "itemId" ] = 21462,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6252,
			[ "icon" ] = "inv_belt_18",
			[ "name" ] = "Ossirian's Binding",
			[ "quality" ] = 4,
			[ "itemId" ] = 21463,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6248,
			[ "icon" ] = "inv_bracer_07",
			[ "name" ] = "Shackles of the Unscarred",
			[ "quality" ] = 4,
			[ "itemId" ] = 21464,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6238,
			[ "icon" ] = "inv_mace23",
			[ "name" ] = "Stinger of Ayamiss",
			[ "quality" ] = 4,
			[ "itemId" ] = 21466,
			[ "raidBosses" ] = { 605 }
		}, {
			[ "id" ] = 6214,
			[ "icon" ] = "inv_chest_leather_07",
			[ "name" ] = "Thick Silithid Chestguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 21467,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6218,
			[ "icon" ] = "inv_shoulder_25",
			[ "name" ] = "Mantle of Maz'Nadir",
			[ "quality" ] = 3,
			[ "itemId" ] = 21468,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6221,
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Gauntlets of Southwind",
			[ "quality" ] = 3,
			[ "itemId" ] = 21469,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6220,
			[ "icon" ] = "inv_misc_cape_16",
			[ "name" ] = "Cloak of the Savior",
			[ "quality" ] = 3,
			[ "itemId" ] = 21470,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6216,
			[ "icon" ] = "inv_mace_21",
			[ "name" ] = "Talon of Furious Concentration",
			[ "quality" ] = 4,
			[ "itemId" ] = 21471,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6213,
			[ "icon" ] = "inv_helmet_62",
			[ "name" ] = "Dustwind Turban",
			[ "quality" ] = 4,
			[ "itemId" ] = 21472,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6225,
			[ "icon" ] = "inv_misc_eye_01",
			[ "name" ] = "Eye of Moam",
			[ "quality" ] = 3,
			[ "itemId" ] = 21473,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6219,
			[ "icon" ] = "inv_shoulder_29",
			[ "name" ] = "Chitinous Shoulderguards",
			[ "quality" ] = 3,
			[ "itemId" ] = 21474,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6223,
			[ "icon" ] = "inv_pants_plate_01",
			[ "name" ] = "Legplates of the Destroyer",
			[ "quality" ] = 3,
			[ "itemId" ] = 21475,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6222,
			[ "icon" ] = "inv_pants_mail_15",
			[ "name" ] = "Obsidian Scaled Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 21476,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6224,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_04",
			[ "name" ] = "Ring of Fury",
			[ "quality" ] = 3,
			[ "itemId" ] = 21477,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6237,
			[ "icon" ] = "inv_weapon_bow_13",
			[ "name" ] = "Bow of Taut Sinew",
			[ "quality" ] = 4,
			[ "itemId" ] = 21478,
			[ "raidBosses" ] = { 605 }
		}, {
			[ "id" ] = 6215,
			[ "icon" ] = "inv_gauntlets_31",
			[ "name" ] = "Gauntlets of the Immovable",
			[ "quality" ] = 4,
			[ "itemId" ] = 21479,
			[ "raidBosses" ] = { 603, 605 }
		}, {
			[ "id" ] = 6240,
			[ "icon" ] = "inv_gauntlets_10",
			[ "name" ] = "Scaled Silithid Gauntlets",
			[ "quality" ] = 3,
			[ "itemId" ] = 21480,
			[ "raidBosses" ] = { 605 }
		}, {
			[ "id" ] = 6242,
			[ "icon" ] = "inv_boots_plate_05",
			[ "name" ] = "Boots of the Desert Protector",
			[ "quality" ] = 3,
			[ "itemId" ] = 21481,
			[ "raidBosses" ] = { 605 }
		}, {
			[ "id" ] = 6241,
			[ "icon" ] = "inv_boots_chain_02",
			[ "name" ] = "Boots of the Fiery Sands",
			[ "quality" ] = 3,
			[ "itemId" ] = 21482,
			[ "raidBosses" ] = { 605 }
		}, {
			[ "id" ] = 6243,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_05",
			[ "name" ] = "Ring of the Desert Winds",
			[ "quality" ] = 3,
			[ "itemId" ] = 21483,
			[ "raidBosses" ] = { 605 }
		}, {
			[ "id" ] = 6239,
			[ "icon" ] = "inv_helmet_15",
			[ "name" ] = "Helm of Regrowth",
			[ "quality" ] = 3,
			[ "itemId" ] = 21484,
			[ "raidBosses" ] = { 605 }
		}, {
			[ "id" ] = 6232,
			[ "icon" ] = "inv_shield_22",
			[ "name" ] = "Buru's Skull Fragment",
			[ "quality" ] = 4,
			[ "itemId" ] = 21485,
			[ "raidBosses" ] = { 604 }
		}, {
			[ "id" ] = 6231,
			[ "icon" ] = "inv_gauntlets_30",
			[ "name" ] = "Gloves of the Swarm",
			[ "quality" ] = 4,
			[ "itemId" ] = 21486,
			[ "raidBosses" ] = { 604 }
		}, {
			[ "id" ] = 6230,
			[ "icon" ] = "inv_gauntlets_12",
			[ "name" ] = "Slimy Scaled Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 21487,
			[ "raidBosses" ] = { 604 }
		}, {
			[ "id" ] = 6236,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_02",
			[ "name" ] = "Fetish of Chitinous Spikes",
			[ "quality" ] = 3,
			[ "itemId" ] = 21488,
			[ "raidBosses" ] = { 604 }
		}, {
			[ "id" ] = 6234,
			[ "icon" ] = "inv_boots_cloth_05",
			[ "name" ] = "Quicksand Waders",
			[ "quality" ] = 3,
			[ "itemId" ] = 21489,
			[ "raidBosses" ] = { 604 }
		}, {
			[ "id" ] = 6235,
			[ "icon" ] = "inv_boots_plate_04",
			[ "name" ] = "Slime Kickers",
			[ "quality" ] = 3,
			[ "itemId" ] = 21490,
			[ "raidBosses" ] = { 604 }
		}, {
			[ "id" ] = 6233,
			[ "icon" ] = "inv_bracer_03",
			[ "name" ] = "Scaled Bracers of the Gorger",
			[ "quality" ] = 3,
			[ "itemId" ] = 21491,
			[ "raidBosses" ] = { 604 }
		}, {
			[ "id" ] = 6204,
			[ "icon" ] = "inv_sword_56",
			[ "name" ] = "Manslayer of the Qiraji",
			[ "quality" ] = 4,
			[ "itemId" ] = 21492,
			[ "raidBosses" ] = { 601 }
		}, {
			[ "id" ] = 6203,
			[ "icon" ] = "inv_boots_08",
			[ "name" ] = "Boots of the Vanguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 21493,
			[ "raidBosses" ] = { 601 }
		}, {
			[ "id" ] = 6206,
			[ "icon" ] = "inv_belt_25",
			[ "name" ] = "Southwind's Grasp",
			[ "quality" ] = 3,
			[ "itemId" ] = 21494,
			[ "raidBosses" ] = { 601 }
		}, {
			[ "id" ] = 6207,
			[ "icon" ] = "inv_pants_plate_15",
			[ "name" ] = "Legplates of the Qiraji Command",
			[ "quality" ] = 3,
			[ "itemId" ] = 21495,
			[ "raidBosses" ] = { 601 }
		}, {
			[ "id" ] = 6205,
			[ "icon" ] = "inv_bracer_13",
			[ "name" ] = "Bracers of Qiraji Command",
			[ "quality" ] = 3,
			[ "itemId" ] = 21496,
			[ "raidBosses" ] = { 601 }
		}, {
			[ "id" ] = 6208,
			[ "icon" ] = "inv_boots_chain_11",
			[ "name" ] = "Boots of the Qiraji General",
			[ "quality" ] = 3,
			[ "itemId" ] = 21497,
			[ "raidBosses" ] = { 601 }
		}, {
			[ "id" ] = 6190,
			[ "icon" ] = "inv_weapon_shortblade_34",
			[ "name" ] = "Qiraji Sacrificial Dagger",
			[ "quality" ] = 4,
			[ "itemId" ] = 21498,
			[ "raidBosses" ] = { 599 }
		}, {
			[ "id" ] = 6189,
			[ "icon" ] = "inv_chest_cloth_17",
			[ "name" ] = "Vestments of the Shifting Sands",
			[ "quality" ] = 4,
			[ "itemId" ] = 21499,
			[ "raidBosses" ] = { 599 }
		}, {
			[ "id" ] = 6193,
			[ "icon" ] = "inv_belt_05",
			[ "name" ] = "Belt of the Inquisition",
			[ "quality" ] = 3,
			[ "itemId" ] = 21500,
			[ "raidBosses" ] = { 599 }
		}, {
			[ "id" ] = 6192,
			[ "icon" ] = "inv_gauntlets_24",
			[ "name" ] = "Toughened Silithid Hide Gloves",
			[ "quality" ] = 3,
			[ "itemId" ] = 21501,
			[ "raidBosses" ] = { 599 }
		}, {
			[ "id" ] = 6191,
			[ "icon" ] = "inv_bracer_19",
			[ "name" ] = "Sand Reaver Wristguards",
			[ "quality" ] = 3,
			[ "itemId" ] = 21502,
			[ "raidBosses" ] = { 599 }
		}, {
			[ "id" ] = 6194,
			[ "icon" ] = "inv_belt_13",
			[ "name" ] = "Belt of the Sand Reaver",
			[ "quality" ] = 3,
			[ "itemId" ] = 21503,
			[ "raidBosses" ] = { 599 }
		}, {
			[ "id" ] = 6255,
			[ "icon" ] = "inv_mace_24",
			[ "name" ] = "Sand Polished Hammer",
			[ "quality" ] = 4,
			[ "itemId" ] = 21715,
			[ "raidBosses" ] = { 606 }
		}, {
			[ "id" ] = 6276,
			[ "icon" ] = "inv_weapon_rifle_10",
			[ "name" ] = "Silithid Husked Launcher",
			[ "quality" ] = 3,
			[ "itemId" ] = 21800,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6275,
			[ "icon" ] = "inv_wand_04",
			[ "name" ] = "Antenna of Invigoration",
			[ "quality" ] = 3,
			[ "itemId" ] = 21801,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6277,
			[ "icon" ] = "inv_sword_32",
			[ "name" ] = "The Lost Kris of Zedd",
			[ "quality" ] = 3,
			[ "itemId" ] = 21802,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6263,
			[ "icon" ] = "inv_helmet_03",
			[ "name" ] = "Helm of the Holy Avenger",
			[ "quality" ] = 3,
			[ "itemId" ] = 21803,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6262,
			[ "icon" ] = "inv_helmet_24",
			[ "name" ] = "Coif of Elemental Fury",
			[ "quality" ] = 3,
			[ "itemId" ] = 21804,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6264,
			[ "icon" ] = "inv_shoulder_26",
			[ "name" ] = "Polished Obsidian Pauldrons",
			[ "quality" ] = 3,
			[ "itemId" ] = 21805,
			[ "raidBosses" ] = { 607 }
		}, {
			[ "id" ] = 6212,
			[ "icon" ] = "inv_hammer_04",
			[ "name" ] = "Gavel of Qiraji Authority",
			[ "quality" ] = 3,
			[ "itemId" ] = 21806,
			[ "raidBosses" ] = { 602 }
		}, {
			[ "id" ] = 6210,
			[ "icon" ] = "inv_jewelry_necklace_14",
			[ "name" ] = "Fury of the Forgotten Swarm",
			[ "quality" ] = 3,
			[ "itemId" ] = 21809,
			[ "raidBosses" ] = { 602 }
		}, {
			[ "id" ] = 6211,
			[ "icon" ] = "inv_boots_cloth_05",
			[ "name" ] = "Treads of the Wandering Nomad",
			[ "quality" ] = 3,
			[ "itemId" ] = 21810,
			[ "raidBosses" ] = { 602 }
		}, {
			[ "id" ] = 6228,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Plans: Black Grasp of the Destroyer",
			[ "quality" ] = 3,
			[ "itemId" ] = 22220,
			[ "raidBosses" ] = { 603 }
		}, {
			[ "id" ] = 6209,
			[ "icon" ] = "inv_weapon_shortblade_32",
			[ "name" ] = "Sandswept Obsidian Dagger",
			[ "quality" ] = 3,
			[ "itemId" ] = 81004,
			[ "raidBosses" ] = { 601 }
		}, {
			[ "id" ] = 6819,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_04",
			[ "name" ] = "Perfect Obsidian Shard",
			[ "quality" ] = 4,
			[ "itemId" ] = 83005,
			[ "raidBosses" ] = { 603 }
		} }
	},
	[ 99 ] = {
		[ "name" ] = "Temple of Ahn'Qiraj",
		[ "reference" ] = "AQ40",
		[ "raidBosses" ] = { {
			[ "id" ] = 610,
			[ "name" ] = "Skeram",
			[ "position" ] = 0
		}, {
			[ "id" ] = 611,
			[ "name" ] = "Trio",
			[ "position" ] = 1
		}, {
			[ "id" ] = 612,
			[ "name" ] = "Sartura",
			[ "position" ] = 2
		}, {
			[ "id" ] = 613,
			[ "name" ] = "Fankriss",
			[ "position" ] = 3
		}, {
			[ "id" ] = 614,
			[ "name" ] = "Viscidus",
			[ "position" ] = 4
		}, {
			[ "id" ] = 615,
			[ "name" ] = "Huhuran",
			[ "position" ] = 5
		}, {
			[ "id" ] = 616,
			[ "name" ] = "Emperors",
			[ "position" ] = 6
		}, {
			[ "id" ] = 617,
			[ "name" ] = "Ouro",
			[ "position" ] = 7
		}, {
			[ "id" ] = 618,
			[ "name" ] = "CThun",
			[ "position" ] = 8
		}, {
			[ "id" ] = 619,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 10
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 6422,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Threat",
			[ "quality" ] = 3,
			[ "itemId" ] = 20726,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 7064,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Shadow Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 20727,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615 }
		}, {
			[ "id" ] = 7065,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Frost Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 20728,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615 }
		}, {
			[ "id" ] = 7066,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Fire Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 20729,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615 }
		}, {
			[ "id" ] = 7067,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Healing Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 20730,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615 }
		}, {
			[ "id" ] = 7068,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Superior Agility",
			[ "quality" ] = 3,
			[ "itemId" ] = 20731,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615 }
		}, {
			[ "id" ] = 7069,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Cloak - Stealth",
			[ "quality" ] = 3,
			[ "itemId" ] = 20734,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615 }
		}, {
			[ "id" ] = 6413,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Cloak - Subtlety",
			[ "quality" ] = 3,
			[ "itemId" ] = 20735,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 7070,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Cloak - Dodge",
			[ "quality" ] = 3,
			[ "itemId" ] = 20736,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615 }
		}, {
			[ "id" ] = 6414,
			[ "classes" ] = { "Warrior", "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_bracer_18",
			[ "name" ] = "Vek'nilash's Circlet",
			[ "quality" ] = 4,
			[ "itemId" ] = 20926,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6431,
			[ "classes" ] = { "Warrior", "Rogue", "Priest", "Mage" },
			[ "icon" ] = "inv_qiraj_ourohide",
			[ "name" ] = "Ouro's Intact Hide",
			[ "quality" ] = 4,
			[ "itemId" ] = 20927,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6398,
			[ "classes" ] = { "Warrior", "Hunter", "Rogue", "Priest" },
			[ "icon" ] = "inv_qiraj_bindingscommand",
			[ "name" ] = "Qiraji Bindings of Command",
			[ "quality" ] = 4,
			[ "itemId" ] = 20928,
			[ "raidBosses" ] = { 614, 615 }
		}, {
			[ "id" ] = 6447,
			[ "classes" ] = { "Warrior", "Paladin", "Hunter", "Rogue", "Shaman" },
			[ "icon" ] = "inv_qiraj_carapaceoldgod",
			[ "name" ] = "Carapace of the Old God",
			[ "quality" ] = 4,
			[ "itemId" ] = 20929,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6406,
			[ "classes" ] = { "Paladin", "Hunter", "Rogue", "Shaman", "Druid" },
			[ "icon" ] = "inv_bracer_18",
			[ "name" ] = "Vek'lor's Diadem",
			[ "quality" ] = 4,
			[ "itemId" ] = 20930,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6432,
			[ "classes" ] = { "Paladin", "Hunter", "Shaman", "Warlock", "Druid" },
			[ "icon" ] = "inv_qiraj_skinsandworm",
			[ "name" ] = "Skin of the Great Sandworm",
			[ "quality" ] = 4,
			[ "itemId" ] = 20931,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6399,
			[ "classes" ] = { "Paladin", "Shaman", "Mage", "Warlock", "Druid" },
			[ "icon" ] = "inv_qiraj_bindingsdominance",
			[ "name" ] = "Qiraji Bindings of Dominance",
			[ "quality" ] = 4,
			[ "itemId" ] = 20932,
			[ "raidBosses" ] = { 614, 615 }
		}, {
			[ "id" ] = 6448,
			[ "classes" ] = { "Priest", "Mage", "Warlock", "Druid" },
			[ "icon" ] = "inv_qiraj_huskoldgod",
			[ "name" ] = "Husk of the Old God",
			[ "quality" ] = 4,
			[ "itemId" ] = 20933,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6444,
			[ "icon" ] = "inv_weapon_shortblade_33",
			[ "name" ] = "Death's Sting",
			[ "quality" ] = 4,
			[ "itemId" ] = 21126,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6334,
			[ "icon" ] = "inv_staff_01",
			[ "name" ] = "Staff of the Qiraji Prophets",
			[ "quality" ] = 4,
			[ "itemId" ] = 21128,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6445,
			[ "icon" ] = "inv_axe_25",
			[ "name" ] = "Dark Edge of Insanity",
			[ "quality" ] = 4,
			[ "itemId" ] = 21134,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6462,
			[ "icon" ] = "inv_misc_qirajicrystal_04",
			[ "name" ] = "Blue Qiraji Resonating Crystal",
			[ "quality" ] = 3,
			[ "itemId" ] = 21218,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6449,
			[ "icon" ] = "spell_shadow_detectinvisibility",
			[ "name" ] = "Eye of C'Thun",
			[ "quality" ] = 4,
			[ "itemId" ] = 21221,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6339,
			[ "icon" ] = "inv_staff_24",
			[ "name" ] = "Imperial Qiraji Armaments",
			[ "quality" ] = 4,
			[ "itemId" ] = 21232,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615, 616, 617 }
		}, {
			[ "id" ] = 6335,
			[ "icon" ] = "inv_staff_20",
			[ "name" ] = "Imperial Qiraji Regalia",
			[ "quality" ] = 4,
			[ "itemId" ] = 21237,
			[ "raidBosses" ] = { 610, 611, 612, 613, 614, 615, 616, 617 }
		}, {
			[ "id" ] = 6465,
			[ "icon" ] = "inv_misc_qirajicrystal_02",
			[ "name" ] = "Red Qiraji Resonating Crystal",
			[ "quality" ] = 3,
			[ "itemId" ] = 21321,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6464,
			[ "icon" ] = "inv_misc_qirajicrystal_03",
			[ "name" ] = "Green Qiraji Resonating Crystal",
			[ "quality" ] = 3,
			[ "itemId" ] = 21323,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6463,
			[ "icon" ] = "inv_misc_qirajicrystal_01",
			[ "name" ] = "Yellow Qiraji Resonating Crystal",
			[ "quality" ] = 3,
			[ "itemId" ] = 21324,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6442,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_05",
			[ "name" ] = "Vanquished Tentacle of C'Thun",
			[ "quality" ] = 4,
			[ "itemId" ] = 21579,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6440,
			[ "icon" ] = "inv_gauntlets_31",
			[ "name" ] = "Gauntlets of Annihilation",
			[ "quality" ] = 4,
			[ "itemId" ] = 21581,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6437,
			[ "icon" ] = "inv_belt_31",
			[ "name" ] = "Grasp of the Old God",
			[ "quality" ] = 4,
			[ "itemId" ] = 21582,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6434,
			[ "icon" ] = "inv_misc_cape_02",
			[ "name" ] = "Cloak of Clarity",
			[ "quality" ] = 4,
			[ "itemId" ] = 21583,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6439,
			[ "icon" ] = "inv_gauntlets_17",
			[ "name" ] = "Dark Storm Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 21585,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6438,
			[ "icon" ] = "inv_belt_26",
			[ "name" ] = "Belt of Never-ending Agony",
			[ "quality" ] = 4,
			[ "itemId" ] = 21586,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6441,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_06",
			[ "name" ] = "Ring of the Godslayer",
			[ "quality" ] = 4,
			[ "itemId" ] = 21596,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6412,
			[ "icon" ] = "inv_wand_10",
			[ "name" ] = "Royal Scepter of Vek'lor",
			[ "quality" ] = 4,
			[ "itemId" ] = 21597,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6409,
			[ "icon" ] = "inv_belt_31",
			[ "name" ] = "Royal Qiraji Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 21598,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6408,
			[ "icon" ] = "inv_gauntlets_28",
			[ "name" ] = "Vek'lor's Gloves of Devastation",
			[ "quality" ] = 4,
			[ "itemId" ] = 21599,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6410,
			[ "icon" ] = "inv_boots_cloth_05",
			[ "name" ] = "Boots of Epiphany",
			[ "quality" ] = 4,
			[ "itemId" ] = 21600,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6411,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_01",
			[ "name" ] = "Ring of Emperor Vek'lor",
			[ "quality" ] = 4,
			[ "itemId" ] = 21601,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6407,
			[ "icon" ] = "inv_bracer_13",
			[ "name" ] = "Qiraji Execution Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 21602,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6355,
			[ "icon" ] = "inv_wand_06",
			[ "name" ] = "Wand of Qiraji Nobility",
			[ "quality" ] = 4,
			[ "itemId" ] = 21603,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6416,
			[ "icon" ] = "inv_bracer_13",
			[ "name" ] = "Bracelets of Royal Redemption",
			[ "quality" ] = 4,
			[ "itemId" ] = 21604,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6417,
			[ "icon" ] = "inv_gauntlets_19",
			[ "name" ] = "Gloves of the Hidden Temple",
			[ "quality" ] = 4,
			[ "itemId" ] = 21605,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6420,
			[ "icon" ] = "inv_belt_34",
			[ "name" ] = "Belt of the Fallen Emperor",
			[ "quality" ] = 4,
			[ "itemId" ] = 21606,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6419,
			[ "icon" ] = "inv_belt_32",
			[ "name" ] = "Grasp of the Fallen Emperor",
			[ "quality" ] = 4,
			[ "itemId" ] = 21607,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6415,
			[ "icon" ] = "inv_jewelry_necklace_ahnqiraj_01",
			[ "name" ] = "Amulet of Vek'nilash",
			[ "quality" ] = 4,
			[ "itemId" ] = 21608,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6418,
			[ "icon" ] = "inv_belt_11",
			[ "name" ] = "Regenerating Belt of Vek'nilash",
			[ "quality" ] = 4,
			[ "itemId" ] = 21609,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6427,
			[ "icon" ] = "inv_shield_24",
			[ "name" ] = "Wormscale Blocker",
			[ "quality" ] = 4,
			[ "itemId" ] = 21610,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6424,
			[ "icon" ] = "inv_bracer_13",
			[ "name" ] = "Burrower Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 21611,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6430,
			[ "icon" ] = "inv_boots_chain_08",
			[ "name" ] = "Wormscale Stompers",
			[ "quality" ] = 4,
			[ "itemId" ] = 21612,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6429,
			[ "icon" ] = "inv_boots_04",
			[ "name" ] = "Wormhide Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 21613,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 7075,
			[ "icon" ] = "inv_helmet_09",
			[ "name" ] = "Wormhide Protector",
			[ "quality" ] = 4,
			[ "itemId" ] = 21614,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6423,
			[ "icon" ] = "inv_helmet_51",
			[ "name" ] = "Don Rigoberto's Lost Hat",
			[ "quality" ] = 4,
			[ "itemId" ] = 21615,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6405,
			[ "icon" ] = "inv_weapon_bow_14",
			[ "name" ] = "Huhuran's Stinger",
			[ "quality" ] = 4,
			[ "itemId" ] = 21616,
			[ "raidBosses" ] = { 615 }
		}, {
			[ "id" ] = 6403,
			[ "icon" ] = "inv_gauntlets_17",
			[ "name" ] = "Wasphide Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 21617,
			[ "raidBosses" ] = { 615 }
		}, {
			[ "id" ] = 6401,
			[ "icon" ] = "inv_bracer_02",
			[ "name" ] = "Hive Defiler Wristguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 21618,
			[ "raidBosses" ] = { 615 }
		}, {
			[ "id" ] = 6402,
			[ "icon" ] = "inv_gauntlets_17",
			[ "name" ] = "Gloves of the Messiah",
			[ "quality" ] = 4,
			[ "itemId" ] = 21619,
			[ "raidBosses" ] = { 615 }
		}, {
			[ "id" ] = 6404,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_01",
			[ "name" ] = "Ring of the Martyr",
			[ "quality" ] = 4,
			[ "itemId" ] = 21620,
			[ "raidBosses" ] = { 615 }
		}, {
			[ "id" ] = 6400,
			[ "icon" ] = "inv_misc_cape_01",
			[ "name" ] = "Cloak of the Golden Hive",
			[ "quality" ] = 4,
			[ "itemId" ] = 21621,
			[ "raidBosses" ] = { 615 }
		}, {
			[ "id" ] = 6394,
			[ "icon" ] = "inv_sword_58",
			[ "name" ] = "Sharpened Silithid Femur",
			[ "quality" ] = 4,
			[ "itemId" ] = 21622,
			[ "raidBosses" ] = { 614 }
		}, {
			[ "id" ] = 6392,
			[ "icon" ] = "inv_gauntlets_26",
			[ "name" ] = "Gauntlets of the Righteous Champion",
			[ "quality" ] = 4,
			[ "itemId" ] = 21623,
			[ "raidBosses" ] = { 614 }
		}, {
			[ "id" ] = 6391,
			[ "icon" ] = "inv_gauntlets_26",
			[ "name" ] = "Gauntlets of Kalimdor",
			[ "quality" ] = 4,
			[ "itemId" ] = 21624,
			[ "raidBosses" ] = { 614 }
		}, {
			[ "id" ] = 6396,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_06",
			[ "name" ] = "Scarab Brooch",
			[ "quality" ] = 4,
			[ "itemId" ] = 21625,
			[ "raidBosses" ] = { 614 }
		}, {
			[ "id" ] = 6393,
			[ "icon" ] = "inv_pants_mail_11",
			[ "name" ] = "Slime-coated Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 21626,
			[ "raidBosses" ] = { 614 }
		}, {
			[ "id" ] = 6380,
			[ "icon" ] = "inv_misc_cape_20",
			[ "name" ] = "Cloak of Untold Secrets",
			[ "quality" ] = 4,
			[ "itemId" ] = 21627,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6386,
			[ "icon" ] = "inv_weapon_halberd_ahnqiraj",
			[ "name" ] = "Barb of the Sand Reaver",
			[ "quality" ] = 4,
			[ "itemId" ] = 21635,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6379,
			[ "icon" ] = "inv_shoulder_29",
			[ "name" ] = "Pauldrons of the Unrelenting",
			[ "quality" ] = 4,
			[ "itemId" ] = 21639,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6384,
			[ "icon" ] = "inv_boots_04",
			[ "name" ] = "Hive Tunneler's Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 21645,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6388,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_03",
			[ "name" ] = "Fetish of the Sand Reaver",
			[ "quality" ] = 4,
			[ "itemId" ] = 21647,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6374,
			[ "icon" ] = "inv_boots_cloth_07",
			[ "name" ] = "Recomposed Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 21648,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6385,
			[ "icon" ] = "inv_sword_59",
			[ "name" ] = "Ancient Qiraji Ripper",
			[ "quality" ] = 4,
			[ "itemId" ] = 21650,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6383,
			[ "icon" ] = "inv_pants_mail_10",
			[ "name" ] = "Scaled Sand Reaver Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 21651,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6382,
			[ "icon" ] = "inv_chest_plate09",
			[ "name" ] = "Silithid Carapace Chestguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 21652,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6381,
			[ "icon" ] = "inv_chest_cloth_23",
			[ "name" ] = "Robes of the Guardian Saint",
			[ "quality" ] = 4,
			[ "itemId" ] = 21663,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6387,
			[ "icon" ] = "inv_jewelry_necklace_ahnqiraj_02",
			[ "name" ] = "Barbed Choker",
			[ "quality" ] = 4,
			[ "itemId" ] = 21664,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6378,
			[ "icon" ] = "inv_shoulder_30",
			[ "name" ] = "Mantle of Wicked Revenge",
			[ "quality" ] = 4,
			[ "itemId" ] = 21665,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6376,
			[ "icon" ] = "inv_qirajidol_war",
			[ "name" ] = "Sartura's Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 21666,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6373,
			[ "icon" ] = "inv_pants_plate_11",
			[ "name" ] = "Legplates of Blazing Light",
			[ "quality" ] = 4,
			[ "itemId" ] = 21667,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6372,
			[ "icon" ] = "inv_pants_mail_15",
			[ "name" ] = "Scaled Leggings of Qiraji Fury",
			[ "quality" ] = 4,
			[ "itemId" ] = 21668,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6365,
			[ "icon" ] = "inv_helmet_01",
			[ "name" ] = "Creeping Vine Helm",
			[ "quality" ] = 4,
			[ "itemId" ] = 21669,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6375,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_04",
			[ "name" ] = "Badge of the Swarmguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 21670,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6367,
			[ "icon" ] = "inv_chest_cloth_26",
			[ "name" ] = "Robes of the Battleguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 21671,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6368,
			[ "icon" ] = "inv_gauntlets_17",
			[ "name" ] = "Gloves of Enforcement",
			[ "quality" ] = 4,
			[ "itemId" ] = 21672,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6377,
			[ "icon" ] = "inv_misc_monsterclaw_03",
			[ "name" ] = "Silithid Claw",
			[ "quality" ] = 4,
			[ "itemId" ] = 21673,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6369,
			[ "icon" ] = "inv_gauntlets_31",
			[ "name" ] = "Gauntlets of Steadfast Determination",
			[ "quality" ] = 4,
			[ "itemId" ] = 21674,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6370,
			[ "icon" ] = "inv_belt_15",
			[ "name" ] = "Thick Qirajihide Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 21675,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6371,
			[ "icon" ] = "inv_pants_cloth_02",
			[ "name" ] = "Leggings of the Festering Swarm",
			[ "quality" ] = 4,
			[ "itemId" ] = 21676,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6395,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_01",
			[ "name" ] = "Ring of the Qiraji Fury",
			[ "quality" ] = 4,
			[ "itemId" ] = 21677,
			[ "raidBosses" ] = { 614 }
		}, {
			[ "id" ] = 6366,
			[ "icon" ] = "inv_jewelry_necklace_ahnqiraj_04",
			[ "name" ] = "Necklace of Purity",
			[ "quality" ] = 4,
			[ "itemId" ] = 21678,
			[ "raidBosses" ] = { 612 }
		}, {
			[ "id" ] = 6421,
			[ "icon" ] = "inv_sword_53",
			[ "name" ] = "Kalimdor's Revenge",
			[ "quality" ] = 4,
			[ "itemId" ] = 21679,
			[ "raidBosses" ] = { 616 }
		}, {
			[ "id" ] = 6352,
			[ "icon" ] = "inv_chest_cloth_45",
			[ "name" ] = "Vest of Swift Execution",
			[ "quality" ] = 4,
			[ "itemId" ] = 21680,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6353,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_05",
			[ "name" ] = "Ring of the Devoured",
			[ "quality" ] = 4,
			[ "itemId" ] = 21681,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6363,
			[ "icon" ] = "inv_gauntlets_21",
			[ "name" ] = "Bile-Covered Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 21682,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6362,
			[ "icon" ] = "inv_shoulder_29",
			[ "name" ] = "Mantle of the Redeemed Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 21683,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6361,
			[ "icon" ] = "inv_shoulder_16",
			[ "name" ] = "Mantle of the Fallen Prophet",
			[ "quality" ] = 4,
			[ "itemId" ] = 21684,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6354,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_01",
			[ "name" ] = "Petrified Scarab",
			[ "quality" ] = 4,
			[ "itemId" ] = 21685,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6360,
			[ "icon" ] = "inv_shoulder_02",
			[ "name" ] = "Mantle of Phrenic Power",
			[ "quality" ] = 4,
			[ "itemId" ] = 21686,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6364,
			[ "icon" ] = "inv_jewelry_ring_24",
			[ "name" ] = "Ukko's Ring of Darkness",
			[ "quality" ] = 4,
			[ "itemId" ] = 21687,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6359,
			[ "icon" ] = "inv_boots_plate_01",
			[ "name" ] = "Boots of the Fallen Hero",
			[ "quality" ] = 4,
			[ "itemId" ] = 21688,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6357,
			[ "icon" ] = "inv_gauntlets_23",
			[ "name" ] = "Gloves of Ebru",
			[ "quality" ] = 4,
			[ "itemId" ] = 21689,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6356,
			[ "icon" ] = "inv_jewelry_necklace_20",
			[ "name" ] = "Angelista's Charm",
			[ "quality" ] = 4,
			[ "itemId" ] = 21690,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6358,
			[ "icon" ] = "inv_gauntlets_11",
			[ "name" ] = "Ooze-ridden Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 21691,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6350,
			[ "icon" ] = "inv_belt_18",
			[ "name" ] = "Triad Girdle",
			[ "quality" ] = 4,
			[ "itemId" ] = 21692,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6346,
			[ "icon" ] = "inv_helmet_06",
			[ "name" ] = "Guise of the Devourer",
			[ "quality" ] = 4,
			[ "itemId" ] = 21693,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6347,
			[ "icon" ] = "inv_shoulder_05",
			[ "name" ] = "Ternary Mantle",
			[ "quality" ] = 4,
			[ "itemId" ] = 21694,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6351,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_04",
			[ "name" ] = "Angelista's Touch",
			[ "quality" ] = 4,
			[ "itemId" ] = 21695,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6349,
			[ "icon" ] = "inv_chest_cloth_22",
			[ "name" ] = "Robes of the Triumvirate",
			[ "quality" ] = 4,
			[ "itemId" ] = 21696,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6348,
			[ "icon" ] = "inv_misc_cape_18",
			[ "name" ] = "Cape of the Trinity",
			[ "quality" ] = 4,
			[ "itemId" ] = 21697,
			[ "raidBosses" ] = { 611 }
		}, {
			[ "id" ] = 6325,
			[ "icon" ] = "inv_pants_leather_11",
			[ "name" ] = "Leggings of Immersion",
			[ "quality" ] = 4,
			[ "itemId" ] = 21698,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6322,
			[ "icon" ] = "inv_shoulder_14",
			[ "name" ] = "Barrage Shoulders",
			[ "quality" ] = 4,
			[ "itemId" ] = 21699,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6330,
			[ "icon" ] = "inv_jewelry_necklace_ahnqiraj_01",
			[ "name" ] = "Pendant of the Qiraji Guardian",
			[ "quality" ] = 4,
			[ "itemId" ] = 21700,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6331,
			[ "icon" ] = "inv_misc_cape_02",
			[ "name" ] = "Cloak of Concentrated Hatred",
			[ "quality" ] = 4,
			[ "itemId" ] = 21701,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6329,
			[ "icon" ] = "inv_jewelry_necklace_12",
			[ "name" ] = "Amulet of Foul Warding",
			[ "quality" ] = 4,
			[ "itemId" ] = 21702,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6333,
			[ "icon" ] = "inv_mace_21",
			[ "name" ] = "Hammer of Ji'zhi",
			[ "quality" ] = 4,
			[ "itemId" ] = 21703,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6327,
			[ "icon" ] = "inv_boots_plate_08",
			[ "name" ] = "Boots of the Redeemed Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 21704,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6326,
			[ "icon" ] = "inv_boots_chain_06",
			[ "name" ] = "Boots of the Fallen Prophet",
			[ "quality" ] = 4,
			[ "itemId" ] = 21705,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6328,
			[ "icon" ] = "inv_boots_plate_06",
			[ "name" ] = "Boots of the Unwavering Will",
			[ "quality" ] = 4,
			[ "itemId" ] = 21706,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6332,
			[ "icon" ] = "inv_jewelry_ring_ahnqiraj_04",
			[ "name" ] = "Ring of Swarming Thought",
			[ "quality" ] = 4,
			[ "itemId" ] = 21707,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6324,
			[ "icon" ] = "inv_bracer_12",
			[ "name" ] = "Beetle Scaled Wristguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 21708,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6323,
			[ "icon" ] = "inv_chest_plate02",
			[ "name" ] = "Breastplate of Annihilation",
			[ "quality" ] = 4,
			[ "itemId" ] = 21814,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6460,
			[ "icon" ] = "inv_jewelry_ring_34",
			[ "name" ] = "Ritssyn's Ring of Chaos",
			[ "quality" ] = 4,
			[ "itemId" ] = 21836,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6459,
			[ "icon" ] = "inv_hammer_11",
			[ "name" ] = "Anubisath Warhammer",
			[ "quality" ] = 4,
			[ "itemId" ] = 21837,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6454,
			[ "icon" ] = "inv_chest_cloth_48",
			[ "name" ] = "Garb of Royal Ascension",
			[ "quality" ] = 4,
			[ "itemId" ] = 21838,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6443,
			[ "icon" ] = "inv_mace22",
			[ "name" ] = "Scepter of the False Prophet",
			[ "quality" ] = 4,
			[ "itemId" ] = 21839,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6458,
			[ "icon" ] = "inv_axe_09",
			[ "name" ] = "Neretzek, The Blood Drinker",
			[ "quality" ] = 4,
			[ "itemId" ] = 21856,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6455,
			[ "icon" ] = "inv_gauntlets_14",
			[ "name" ] = "Gloves of the Immortal",
			[ "quality" ] = 4,
			[ "itemId" ] = 21888,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6457,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_gauntlets_19",
			[ "name" ] = "Gloves of the Redeemed Prophecy",
			[ "quality" ] = 4,
			[ "itemId" ] = 21889,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6456,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_gauntlets_11",
			[ "name" ] = "Gloves of the Fallen Prophet",
			[ "quality" ] = 4,
			[ "itemId" ] = 21890,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6461,
			[ "icon" ] = "inv_misc_ahnqirajtrinket_04",
			[ "name" ] = "Shard of the Fallen Star",
			[ "quality" ] = 4,
			[ "itemId" ] = 21891,
			[ "raidBosses" ] = { 619 }
		}, {
			[ "id" ] = 6344,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Plans: Thick Obsidian Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 22222,
			[ "raidBosses" ] = { 610 }
		}, {
			[ "id" ] = 6390,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_relics_totemoflife",
			[ "name" ] = "Totem of Life",
			[ "quality" ] = 4,
			[ "itemId" ] = 22396,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6397,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_relics_idolofhealth",
			[ "name" ] = "Idol of Health",
			[ "quality" ] = 4,
			[ "itemId" ] = 22399,
			[ "raidBosses" ] = { 614 }
		}, {
			[ "id" ] = 6389,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_relics_libramofgrace",
			[ "name" ] = "Libram of Grace",
			[ "quality" ] = 4,
			[ "itemId" ] = 22402,
			[ "raidBosses" ] = { 613 }
		}, {
			[ "id" ] = 6436,
			[ "icon" ] = "inv_belt_12",
			[ "name" ] = "Eyestalk Waist Cord",
			[ "quality" ] = 4,
			[ "itemId" ] = 22730,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6435,
			[ "icon" ] = "inv_misc_cape_18",
			[ "name" ] = "Cloak of the Devoured",
			[ "quality" ] = 4,
			[ "itemId" ] = 22731,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6433,
			[ "icon" ] = "inv_jewelry_necklace_ahnqiraj_04",
			[ "name" ] = "Mark of C'Thun",
			[ "quality" ] = 4,
			[ "itemId" ] = 22732,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6453,
			[ "icon" ] = "inv_qirajidol_sun",
			[ "name" ] = "Base of Atiesh",
			[ "quality" ] = 5,
			[ "itemId" ] = 22734,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6428,
			[ "icon" ] = "inv_weapon_rifle_10",
			[ "name" ] = "Larvae of the Great Worm",
			[ "quality" ] = 4,
			[ "itemId" ] = 23557,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6425,
			[ "icon" ] = "inv_shield_23",
			[ "name" ] = "The Burrower's Shell",
			[ "quality" ] = 4,
			[ "itemId" ] = 23558,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6426,
			[ "icon" ] = "inv_misc_enggizmos_19",
			[ "name" ] = "Jom Gabbar",
			[ "quality" ] = 4,
			[ "itemId" ] = 23570,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 7087,
			[ "icon" ] = "ability_hunter_beastcall",
			[ "name" ] = "Spotted Qiraji Battle Tank",
			[ "quality" ] = 4,
			[ "itemId" ] = 36550,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 6824,
			[ "icon" ] = "inv_helmet_illidari_01",
			[ "name" ] = "Yshgo'lar, Cowl of Fanatical Devotion",
			[ "quality" ] = 4,
			[ "itemId" ] = 41077,
			[ "raidBosses" ] = { 618 }
		}, {
			[ "id" ] = 7076,
			[ "icon" ] = "inv_gauntlets_23",
			[ "name" ] = "Gloves of the Primordial Burrower",
			[ "quality" ] = 4,
			[ "itemId" ] = 55553,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 7077,
			[ "icon" ] = "inv_gauntlets_26",
			[ "name" ] = "Carapace Handguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 55554,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 7084,
			[ "icon" ] = "inv_hammer_25",
			[ "name" ] = "Ivonor, Maiden's Mallet",
			[ "quality" ] = 4,
			[ "itemId" ] = 55555,
			[ "raidBosses" ] = { 617 }
		}, {
			[ "id" ] = 6446,
			[ "icon" ] = "inv_weapon_hand_07",
			[ "name" ] = "Remnants of an Old God",
			[ "quality" ] = 4,
			[ "itemId" ] = 60003,
			[ "raidBosses" ] = { 618 }
		} }
	},
	[ 100 ] = {
		[ "name" ] = "Zul'Gurub",
		[ "reference" ] = "ZG",
		[ "raidBosses" ] = { {
			[ "id" ] = 621,
			[ "name" ] = "Jeklik",
			[ "position" ] = 0
		}, {
			[ "id" ] = 622,
			[ "name" ] = "Venoxis",
			[ "position" ] = 1
		}, {
			[ "id" ] = 624,
			[ "name" ] = "Mar'li",
			[ "position" ] = 2
		}, {
			[ "id" ] = 625,
			[ "name" ] = "Mandokir",
			[ "position" ] = 3
		}, {
			[ "id" ] = 631,
			[ "name" ] = "Thekal",
			[ "position" ] = 4
		}, {
			[ "id" ] = 632,
			[ "name" ] = "Arlokk",
			[ "position" ] = 5
		}, {
			[ "id" ] = 633,
			[ "name" ] = "Jindo",
			[ "position" ] = 6
		}, {
			[ "id" ] = 629,
			[ "name" ] = "Wushoolay",
			[ "position" ] = 7
		}, {
			[ "id" ] = 628,
			[ "name" ] = "Renataki",
			[ "position" ] = 8
		}, {
			[ "id" ] = 627,
			[ "name" ] = "Hazzarah",
			[ "position" ] = 9
		}, {
			[ "id" ] = 626,
			[ "name" ] = "Grilek",
			[ "position" ] = 10
		}, {
			[ "id" ] = 634,
			[ "name" ] = "Hakkar",
			[ "position" ] = 11
		}, {
			[ "id" ] = 630,
			[ "name" ] = "Gahzranka",
			[ "position" ] = 12
		}, {
			[ "id" ] = 637,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 13
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 7210,
			[ "icon" ] = "inv_misc_bag_10",
			[ "name" ] = "Yellow Sack of Gems",
			[ "quality" ] = 2,
			[ "itemId" ] = 17965,
			[ "raidBosses" ] = { 630 }
		}, {
			[ "id" ] = 6488,
			[ "classes" ] = { "Hunter", "Paladin", "Mage" },
			[ "icon" ] = "inv_bracer_05",
			[ "name" ] = "Primal Hakkari Bindings",
			[ "quality" ] = 4,
			[ "itemId" ] = 19716,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6487,
			[ "classes" ] = { "Warrior", "Shaman", "Rogue" },
			[ "icon" ] = "inv_bracer_18",
			[ "name" ] = "Primal Hakkari Armsplint",
			[ "quality" ] = 4,
			[ "itemId" ] = 19717,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6489,
			[ "classes" ] = { "Priest", "Warlock", "Druid" },
			[ "icon" ] = "inv_bracer_14",
			[ "name" ] = "Primal Hakkari Stanchion",
			[ "quality" ] = 4,
			[ "itemId" ] = 19718,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6490,
			[ "classes" ] = { "Warrior", "Rogue", "Shaman" },
			[ "icon" ] = "inv_belt_12",
			[ "name" ] = "Primal Hakkari Girdle",
			[ "quality" ] = 4,
			[ "itemId" ] = 19719,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6491,
			[ "classes" ] = { "Priest", "Warlock", "Druid" },
			[ "icon" ] = "inv_belt_07",
			[ "name" ] = "Primal Hakkari Sash",
			[ "quality" ] = 4,
			[ "itemId" ] = 19720,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6483,
			[ "classes" ] = { "Paladin", "Hunter", "Mage" },
			[ "icon" ] = "inv_shoulder_19",
			[ "name" ] = "Primal Hakkari Shawl",
			[ "quality" ] = 4,
			[ "itemId" ] = 19721,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6486,
			[ "classes" ] = { "Druid", "Shaman", "Paladin" },
			[ "icon" ] = "inv_banner_01",
			[ "name" ] = "Primal Hakkari Tabard",
			[ "quality" ] = 4,
			[ "itemId" ] = 19722,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6485,
			[ "classes" ] = { "Warrior", "Mage", "Warlock" },
			[ "icon" ] = "inv_shirt_07",
			[ "name" ] = "Primal Hakkari Kossack",
			[ "quality" ] = 4,
			[ "itemId" ] = 19723,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6484,
			[ "classes" ] = { "Hunter", "Rogue", "Priest" },
			[ "icon" ] = "inv_chest_chain_12",
			[ "name" ] = "Primal Hakkari Aegis",
			[ "quality" ] = 4,
			[ "itemId" ] = 19724,
			[ "raidBosses" ] = { 621, 622, 624, 625, 631, 632, 633 }
		}, {
			[ "id" ] = 6609,
			[ "icon" ] = "inv_misc_herb_09",
			[ "name" ] = "Bloodvine",
			[ "quality" ] = 2,
			[ "itemId" ] = 19726,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6602,
			[ "icon" ] = "inv_weapon_shortblade_29",
			[ "name" ] = "Blood Scythe",
			[ "quality" ] = 3,
			[ "itemId" ] = 19727,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6611,
			[ "icon" ] = "inv_misc_pelt_01",
			[ "name" ] = "Primal Bat Leather",
			[ "quality" ] = 1,
			[ "itemId" ] = 19767,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6612,
			[ "icon" ] = "inv_misc_pelt_04",
			[ "name" ] = "Primal Tiger Leather",
			[ "quality" ] = 1,
			[ "itemId" ] = 19768,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6610,
			[ "icon" ] = "inv_misc_gem_01",
			[ "name" ] = "Souldarite",
			[ "quality" ] = 2,
			[ "itemId" ] = 19774,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6597,
			[ "icon" ] = "inv_misc_gem_bloodstone_02",
			[ "name" ] = "Heart of Hakkar",
			[ "quality" ] = 4,
			[ "itemId" ] = 19802,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6621,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Warrior)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19813,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6616,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Rogue)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19814,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6620,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Paladin)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19815,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6618,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Hunter)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19816,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6619,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Shaman)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19817,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6614,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Mage)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19818,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6615,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Warlock)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19819,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6613,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Priest)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19820,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6617,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_misc_idol_02",
			[ "name" ] = "Punctured Voodoo Doll (Druid)",
			[ "quality" ] = 2,
			[ "itemId" ] = 19821,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6594,
			[ "icon" ] = "inv_axe_35",
			[ "name" ] = "Ancient Hakkari Manslayer",
			[ "quality" ] = 4,
			[ "itemId" ] = 19852,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6590,
			[ "icon" ] = "inv_weapon_rifle_10",
			[ "name" ] = "Gurubashi Dwarf Destroyer",
			[ "quality" ] = 4,
			[ "itemId" ] = 19853,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6596,
			[ "icon" ] = "inv_sword_55",
			[ "name" ] = "Zin'rokh, Destroyer of Worlds",
			[ "quality" ] = 4,
			[ "itemId" ] = 19854,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6586,
			[ "icon" ] = "inv_pants_plate_21",
			[ "name" ] = "Bloodsoaked Legplates",
			[ "quality" ] = 4,
			[ "itemId" ] = 19855,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6588,
			[ "icon" ] = "inv_jewelry_necklace_22",
			[ "name" ] = "The Eye of Hakkar",
			[ "quality" ] = 4,
			[ "itemId" ] = 19856,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6583,
			[ "icon" ] = "inv_misc_cape_22",
			[ "name" ] = "Cloak of Consumption",
			[ "quality" ] = 4,
			[ "itemId" ] = 19857,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6595,
			[ "icon" ] = "inv_weapon_shortblade_30",
			[ "name" ] = "Fang of the Faceless",
			[ "quality" ] = 4,
			[ "itemId" ] = 19859,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6589,
			[ "icon" ] = "inv_wand_09",
			[ "name" ] = "Touch of Chaos",
			[ "quality" ] = 4,
			[ "itemId" ] = 19861,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6591,
			[ "icon" ] = "inv_shield_12",
			[ "name" ] = "Aegis of the Blood God",
			[ "quality" ] = 4,
			[ "itemId" ] = 19862,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6538,
			[ "icon" ] = "inv_jewelry_ring_47",
			[ "name" ] = "Primalist's Seal",
			[ "quality" ] = 3,
			[ "itemId" ] = 19863,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6592,
			[ "icon" ] = "inv_sword_18",
			[ "name" ] = "Bloodcaller",
			[ "quality" ] = 4,
			[ "itemId" ] = 19864,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6593,
			[ "icon" ] = "inv_sword_55",
			[ "name" ] = "Warblade of the Hakkari (MH)",
			[ "quality" ] = 4,
			[ "itemId" ] = 19865,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6530,
			[ "icon" ] = "inv_sword_55",
			[ "name" ] = "Warblade of the Hakkari (OH)",
			[ "quality" ] = 4,
			[ "itemId" ] = 19866,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6529,
			[ "icon" ] = "inv_sword_54",
			[ "name" ] = "Bloodlord's Defender",
			[ "quality" ] = 4,
			[ "itemId" ] = 19867,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6534,
			[ "icon" ] = "inv_gauntlets_26",
			[ "name" ] = "Blooddrenched Grips",
			[ "quality" ] = 3,
			[ "itemId" ] = 19869,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6533,
			[ "icon" ] = "inv_misc_cape_18",
			[ "name" ] = "Hakkari Loa Cloak",
			[ "quality" ] = 3,
			[ "itemId" ] = 19870,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6521,
			[ "icon" ] = "inv_jewelry_necklace_21",
			[ "name" ] = "Talisman of Protection",
			[ "quality" ] = 3,
			[ "itemId" ] = 19871,
			[ "raidBosses" ] = { 624 }
		}, {
			[ "id" ] = 6527,
			[ "icon" ] = "ability_mount_raptor",
			[ "name" ] = "Armored Razzashi Raptor",
			[ "quality" ] = 4,
			[ "itemId" ] = 19872,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6537,
			[ "icon" ] = "inv_jewelry_ring_39",
			[ "name" ] = "Overlord's Crimson Band",
			[ "quality" ] = 3,
			[ "itemId" ] = 19873,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6531,
			[ "icon" ] = "inv_weapon_halberd_12",
			[ "name" ] = "Halberd of Smiting",
			[ "quality" ] = 4,
			[ "itemId" ] = 19874,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6576,
			[ "icon" ] = "inv_helmet_39",
			[ "name" ] = "Bloodstained Coif",
			[ "quality" ] = 3,
			[ "itemId" ] = 19875,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6587,
			[ "icon" ] = "inv_jewelry_necklace_19",
			[ "name" ] = "Soul Corrupter's Necklace",
			[ "quality" ] = 4,
			[ "itemId" ] = 19876,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6536,
			[ "icon" ] = "inv_pants_mail_14",
			[ "name" ] = "Animist's Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 19877,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6532,
			[ "icon" ] = "inv_shoulder_01",
			[ "name" ] = "Bloodsoaked Pauldrons",
			[ "quality" ] = 3,
			[ "itemId" ] = 19878,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6574,
			[ "icon" ] = "inv_staff_33",
			[ "name" ] = "Jin'do's Judgement",
			[ "quality" ] = 4,
			[ "itemId" ] = 19884,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6571,
			[ "icon" ] = "inv_jewelry_ring_45",
			[ "name" ] = "Jin'do's Evil Eye",
			[ "quality" ] = 4,
			[ "itemId" ] = 19885,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6575,
			[ "icon" ] = "inv_mask_02",
			[ "name" ] = "The Hexxer's Cover",
			[ "quality" ] = 3,
			[ "itemId" ] = 19886,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6581,
			[ "icon" ] = "inv_pants_mail_09",
			[ "name" ] = "Bloodstained Legplates",
			[ "quality" ] = 3,
			[ "itemId" ] = 19887,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6577,
			[ "icon" ] = "inv_misc_cape_21",
			[ "name" ] = "Overlord's Embrace",
			[ "quality" ] = 3,
			[ "itemId" ] = 19888,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6580,
			[ "icon" ] = "inv_pants_leather_09",
			[ "name" ] = "Blooddrenched Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 19889,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6573,
			[ "icon" ] = "inv_mace_17",
			[ "name" ] = "Jin'do's Hexxer",
			[ "quality" ] = 4,
			[ "itemId" ] = 19890,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6572,
			[ "icon" ] = "inv_misc_bag_10_black",
			[ "name" ] = "Jin'do's Bag of Whammies",
			[ "quality" ] = 4,
			[ "itemId" ] = 19891,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6582,
			[ "icon" ] = "inv_boots_chain_13",
			[ "name" ] = "Animist's Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 19892,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6539,
			[ "icon" ] = "inv_jewelry_ring_46",
			[ "name" ] = "Zanzil's Seal",
			[ "quality" ] = 3,
			[ "itemId" ] = 19893,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6579,
			[ "icon" ] = "inv_gauntlets_14",
			[ "name" ] = "Bloodsoaked Gauntlets",
			[ "quality" ] = 3,
			[ "itemId" ] = 19894,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6535,
			[ "icon" ] = "inv_pants_cloth_14",
			[ "name" ] = "Bloodtinged Kilt",
			[ "quality" ] = 3,
			[ "itemId" ] = 19895,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6559,
			[ "icon" ] = "inv_weapon_hand_01",
			[ "name" ] = "Thekal's Grasp",
			[ "quality" ] = 4,
			[ "itemId" ] = 19896,
			[ "raidBosses" ] = { 631 }
		}, {
			[ "id" ] = 6558,
			[ "icon" ] = "inv_boots_cloth_09",
			[ "name" ] = "Betrayer's Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 19897,
			[ "raidBosses" ] = { 631 }
		}, {
			[ "id" ] = 6563,
			[ "icon" ] = "inv_jewelry_ring_44",
			[ "name" ] = "Seal of Jin",
			[ "quality" ] = 3,
			[ "itemId" ] = 19898,
			[ "raidBosses" ] = { 631 }
		}, {
			[ "id" ] = 6560,
			[ "icon" ] = "inv_pants_cloth_14",
			[ "name" ] = "Ritualistic Legguards",
			[ "quality" ] = 3,
			[ "itemId" ] = 19899,
			[ "raidBosses" ] = { 631 }
		}, {
			[ "id" ] = 6504,
			[ "icon" ] = "inv_axe_34",
			[ "name" ] = "Zulian Stone Axe",
			[ "quality" ] = 3,
			[ "itemId" ] = 19900,
			[ "raidBosses" ] = { 622 }
		}, {
			[ "id" ] = 6564,
			[ "icon" ] = "inv_sword_35",
			[ "name" ] = "Zulian Slicer",
			[ "quality" ] = 3,
			[ "itemId" ] = 19901,
			[ "raidBosses" ] = { 631 }
		}, {
			[ "id" ] = 6557,
			[ "icon" ] = "ability_mount_jungletiger",
			[ "name" ] = "Swift Zulian Tiger",
			[ "quality" ] = 4,
			[ "itemId" ] = 19902,
			[ "raidBosses" ] = { 631 }
		}, {
			[ "id" ] = 6500,
			[ "icon" ] = "inv_weapon_shortblade_31",
			[ "name" ] = "Fang of Venoxis",
			[ "quality" ] = 4,
			[ "itemId" ] = 19903,
			[ "raidBosses" ] = { 622 }
		}, {
			[ "id" ] = 6499,
			[ "icon" ] = "inv_chest_plate08",
			[ "name" ] = "Runed Bloodstained Hauberk",
			[ "quality" ] = 4,
			[ "itemId" ] = 19904,
			[ "raidBosses" ] = { 622 }
		}, {
			[ "id" ] = 6503,
			[ "icon" ] = "inv_jewelry_ring_46",
			[ "name" ] = "Zanzil's Band",
			[ "quality" ] = 3,
			[ "itemId" ] = 19905,
			[ "raidBosses" ] = { 622 }
		}, {
			[ "id" ] = 6502,
			[ "icon" ] = "inv_boots_chain_04",
			[ "name" ] = "Blooddrenched Footpads",
			[ "quality" ] = 3,
			[ "itemId" ] = 19906,
			[ "raidBosses" ] = { 622 }
		}, {
			[ "id" ] = 6501,
			[ "icon" ] = "inv_misc_cape_10",
			[ "name" ] = "Zulian Tigerhide Cloak",
			[ "quality" ] = 3,
			[ "itemId" ] = 19907,
			[ "raidBosses" ] = { 622 }
		}, {
			[ "id" ] = 6607,
			[ "icon" ] = "inv_mace_08",
			[ "name" ] = "Sceptre of Smiting",
			[ "quality" ] = 3,
			[ "itemId" ] = 19908,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6566,
			[ "icon" ] = "inv_staff_35",
			[ "name" ] = "Will of Arlokk",
			[ "quality" ] = 4,
			[ "itemId" ] = 19909,
			[ "raidBosses" ] = { 632 }
		}, {
			[ "id" ] = 6565,
			[ "icon" ] = "inv_weapon_hand_01",
			[ "name" ] = "Arlokk's Grasp",
			[ "quality" ] = 4,
			[ "itemId" ] = 19910,
			[ "raidBosses" ] = { 632 }
		}, {
			[ "id" ] = 6568,
			[ "icon" ] = "inv_jewelry_ring_39",
			[ "name" ] = "Overlord's Onyx Band",
			[ "quality" ] = 3,
			[ "itemId" ] = 19912,
			[ "raidBosses" ] = { 632 }
		}, {
			[ "id" ] = 6567,
			[ "icon" ] = "inv_boots_plate_06",
			[ "name" ] = "Bloodsoaked Greaves",
			[ "quality" ] = 3,
			[ "itemId" ] = 19913,
			[ "raidBosses" ] = { 632 }
		}, {
			[ "id" ] = 6570,
			[ "icon" ] = "inv_misc_bag_14",
			[ "name" ] = "Panther Hide Sack",
			[ "quality" ] = 3,
			[ "itemId" ] = 19914,
			[ "raidBosses" ] = { 632 }
		}, {
			[ "id" ] = 6498,
			[ "icon" ] = "inv_shield_22",
			[ "name" ] = "Zulian Defender",
			[ "quality" ] = 3,
			[ "itemId" ] = 19915,
			[ "raidBosses" ] = { 621 }
		}, {
			[ "id" ] = 6492,
			[ "icon" ] = "inv_mace_19",
			[ "name" ] = "Jeklik's Crusher",
			[ "quality" ] = 4,
			[ "itemId" ] = 19918,
			[ "raidBosses" ] = { 621 }
		}, {
			[ "id" ] = 6522,
			[ "icon" ] = "inv_boots_chain_04",
			[ "name" ] = "Bloodstained Greaves",
			[ "quality" ] = 3,
			[ "itemId" ] = 19919,
			[ "raidBosses" ] = { 624 }
		}, {
			[ "id" ] = 6497,
			[ "icon" ] = "inv_jewelry_ring_47",
			[ "name" ] = "Primalist's Band",
			[ "quality" ] = 3,
			[ "itemId" ] = 19920,
			[ "raidBosses" ] = { 621 }
		}, {
			[ "id" ] = 6606,
			[ "icon" ] = "inv_axe_08",
			[ "name" ] = "Zulian Hacker",
			[ "quality" ] = 3,
			[ "itemId" ] = 19921,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6569,
			[ "icon" ] = "inv_misc_bone_dwarfskull_01",
			[ "name" ] = "Arlokk's Hoodoo Stick",
			[ "quality" ] = 3,
			[ "itemId" ] = 19922,
			[ "raidBosses" ] = { 632 }
		}, {
			[ "id" ] = 6493,
			[ "icon" ] = "inv_jewelry_necklace_03",
			[ "name" ] = "Jeklik's Opaline Talisman",
			[ "quality" ] = 3,
			[ "itemId" ] = 19923,
			[ "raidBosses" ] = { 621 }
		}, {
			[ "id" ] = 6523,
			[ "icon" ] = "inv_jewelry_ring_44",
			[ "name" ] = "Band of Jin",
			[ "quality" ] = 3,
			[ "itemId" ] = 19925,
			[ "raidBosses" ] = { 624 }
		}, {
			[ "id" ] = 6520,
			[ "icon" ] = "inv_wand_06",
			[ "name" ] = "Mar'li's Touch",
			[ "quality" ] = 4,
			[ "itemId" ] = 19927,
			[ "raidBosses" ] = { 624 }
		}, {
			[ "id" ] = 6494,
			[ "icon" ] = "inv_shoulder_09",
			[ "name" ] = "Animist's Spaulders",
			[ "quality" ] = 3,
			[ "itemId" ] = 19928,
			[ "raidBosses" ] = { 621 }
		}, {
			[ "id" ] = 6578,
			[ "icon" ] = "inv_gauntlets_16",
			[ "name" ] = "Bloodtinged Gloves",
			[ "quality" ] = 3,
			[ "itemId" ] = 19929,
			[ "raidBosses" ] = { 633 }
		}, {
			[ "id" ] = 6524,
			[ "icon" ] = "inv_zulgurubtrinket",
			[ "name" ] = "Mar'li's Eye",
			[ "quality" ] = 3,
			[ "itemId" ] = 19930,
			[ "raidBosses" ] = { 624 }
		}, {
			[ "id" ] = 6542,
			[ "icon" ] = "inv_potion_26",
			[ "name" ] = "Gri'lek's Blood",
			[ "quality" ] = 2,
			[ "itemId" ] = 19939,
			[ "raidBosses" ] = { 626 }
		}, {
			[ "id" ] = 6548,
			[ "icon" ] = "inv_misc_monsterfang_01",
			[ "name" ] = "Renataki's Tooth",
			[ "quality" ] = 2,
			[ "itemId" ] = 19940,
			[ "raidBosses" ] = { 628 }
		}, {
			[ "id" ] = 6551,
			[ "icon" ] = "inv_misc_monstertail_02",
			[ "name" ] = "Wushoolay's Mane",
			[ "quality" ] = 2,
			[ "itemId" ] = 19941,
			[ "raidBosses" ] = { 629 }
		}, {
			[ "id" ] = 6545,
			[ "icon" ] = "inv_misc_bandage_16",
			[ "name" ] = "Hazza'rah's Dream Thread",
			[ "quality" ] = 2,
			[ "itemId" ] = 19942,
			[ "raidBosses" ] = { 627 }
		}, {
			[ "id" ] = 6553,
			[ "icon" ] = "inv_fishingpole_02",
			[ "name" ] = "Nat Pagle's Fish Terminator",
			[ "quality" ] = 4,
			[ "itemId" ] = 19944,
			[ "raidBosses" ] = { 630 }
		}, {
			[ "id" ] = 6552,
			[ "icon" ] = "inv_helmet_46",
			[ "name" ] = "Foror's Eyepatch",
			[ "quality" ] = 4,
			[ "itemId" ] = 19945,
			[ "raidBosses" ] = { 630 }
		}, {
			[ "id" ] = 6555,
			[ "icon" ] = "inv_spear_04",
			[ "name" ] = "Tigule's Harpoon",
			[ "quality" ] = 3,
			[ "itemId" ] = 19946,
			[ "raidBosses" ] = { 630 }
		}, {
			[ "id" ] = 6554,
			[ "icon" ] = "inv_gizmo_09",
			[ "name" ] = "Nat Pagle's Broken Reel",
			[ "quality" ] = 3,
			[ "itemId" ] = 19947,
			[ "raidBosses" ] = { 630 }
		}, {
			[ "id" ] = 6540,
			[ "icon" ] = "inv_mace_04",
			[ "name" ] = "Gri'lek's Grinder",
			[ "quality" ] = 3,
			[ "itemId" ] = 19961,
			[ "raidBosses" ] = { 626 }
		}, {
			[ "id" ] = 6541,
			[ "icon" ] = "inv_axe_24",
			[ "name" ] = "Gri'lek's Carver",
			[ "quality" ] = 3,
			[ "itemId" ] = 19962,
			[ "raidBosses" ] = { 626 }
		}, {
			[ "id" ] = 6547,
			[ "icon" ] = "inv_spear_03",
			[ "name" ] = "Pitchfork of Madness",
			[ "quality" ] = 3,
			[ "itemId" ] = 19963,
			[ "raidBosses" ] = { 628 }
		}, {
			[ "id" ] = 6546,
			[ "icon" ] = "inv_sword_37",
			[ "name" ] = "Renataki's Soul Conduit",
			[ "quality" ] = 3,
			[ "itemId" ] = 19964,
			[ "raidBosses" ] = { 628 }
		}, {
			[ "id" ] = 6550,
			[ "icon" ] = "inv_sword_38",
			[ "name" ] = "Wushoolay's Poker",
			[ "quality" ] = 3,
			[ "itemId" ] = 19965,
			[ "raidBosses" ] = { 629 }
		}, {
			[ "id" ] = 6543,
			[ "icon" ] = "inv_wand_05",
			[ "name" ] = "Thoughtblighter",
			[ "quality" ] = 3,
			[ "itemId" ] = 19967,
			[ "raidBosses" ] = { 627 }
		}, {
			[ "id" ] = 6544,
			[ "icon" ] = "inv_sword_01",
			[ "name" ] = "Fiery Retributer",
			[ "quality" ] = 3,
			[ "itemId" ] = 19968,
			[ "raidBosses" ] = { 627 }
		}, {
			[ "id" ] = 6601,
			[ "icon" ] = "inv_misc_fish_05",
			[ "name" ] = "Zulian Mudskunk",
			[ "quality" ] = 1,
			[ "itemId" ] = 19975,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6549,
			[ "icon" ] = "inv_waepon_bow_zulgrub_d_02",
			[ "name" ] = "Hoodoo Hunting Bow",
			[ "quality" ] = 3,
			[ "itemId" ] = 19993,
			[ "raidBosses" ] = { 629 }
		}, {
			[ "id" ] = 6519,
			[ "icon" ] = "inv_chest_cloth_25",
			[ "name" ] = "Flowing Ritual Robes",
			[ "quality" ] = 4,
			[ "itemId" ] = 20032,
			[ "raidBosses" ] = { 624 }
		}, {
			[ "id" ] = 6528,
			[ "icon" ] = "inv_waepon_bow_zulgrub_d_01",
			[ "name" ] = "Mandokir's Sting",
			[ "quality" ] = 4,
			[ "itemId" ] = 20038,
			[ "raidBosses" ] = { 625 }
		}, {
			[ "id" ] = 6584,
			[ "icon" ] = "inv_gauntlets_30",
			[ "name" ] = "Seafury Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 20257,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6608,
			[ "icon" ] = "inv_staff_34",
			[ "name" ] = "Zulian Ceremonial Staff",
			[ "quality" ] = 3,
			[ "itemId" ] = 20258,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6604,
			[ "icon" ] = "inv_gauntlets_25",
			[ "name" ] = "Shadow Panther Hide Gloves",
			[ "quality" ] = 3,
			[ "itemId" ] = 20259,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6561,
			[ "icon" ] = "inv_pants_mail_06",
			[ "name" ] = "Seafury Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 20260,
			[ "raidBosses" ] = { 631 }
		}, {
			[ "id" ] = 6605,
			[ "icon" ] = "inv_belt_26",
			[ "name" ] = "Shadow Panther Hide Belt",
			[ "quality" ] = 3,
			[ "itemId" ] = 20261,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6495,
			[ "icon" ] = "inv_boots_chain_11",
			[ "name" ] = "Seafury Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 20262,
			[ "raidBosses" ] = { 621 }
		}, {
			[ "id" ] = 6603,
			[ "icon" ] = "inv_helmet_25",
			[ "name" ] = "Gurubashi Helm",
			[ "quality" ] = 3,
			[ "itemId" ] = 20263,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 6585,
			[ "icon" ] = "inv_gauntlets_10",
			[ "name" ] = "Peacekeeper Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 20264,
			[ "raidBosses" ] = { 634 }
		}, {
			[ "id" ] = 6496,
			[ "icon" ] = "inv_boots_plate_03",
			[ "name" ] = "Peacekeeper Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 20265,
			[ "raidBosses" ] = { 621 }
		}, {
			[ "id" ] = 6562,
			[ "icon" ] = "inv_pants_plate_04",
			[ "name" ] = "Peacekeeper Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 20266,
			[ "raidBosses" ] = { 631 }
		}, {
			[ "id" ] = 6526,
			[ "icon" ] = "inv_zulgurubtrinket",
			[ "name" ] = "Primal Hakkari Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 22637,
			[ "raidBosses" ] = { 625, 633 }
		}, {
			[ "id" ] = 6775,
			[ "icon" ] = "inv_misc_cape_16",
			[ "name" ] = "Cloak of the Hakkari Worshipers",
			[ "quality" ] = 3,
			[ "itemId" ] = 22711,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6776,
			[ "icon" ] = "inv_misc_cape_16",
			[ "name" ] = "Might of the Tribe",
			[ "quality" ] = 3,
			[ "itemId" ] = 22712,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6780,
			[ "icon" ] = "inv_mace_18",
			[ "name" ] = "Zulian Scepter of Rites",
			[ "quality" ] = 3,
			[ "itemId" ] = 22713,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6778,
			[ "icon" ] = "inv_gauntlets_31",
			[ "name" ] = "Sacrificial Gauntlets",
			[ "quality" ] = 3,
			[ "itemId" ] = 22714,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6777,
			[ "icon" ] = "inv_gauntlets_10",
			[ "name" ] = "Gloves of the Tormented",
			[ "quality" ] = 3,
			[ "itemId" ] = 22715,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6779,
			[ "icon" ] = "inv_belt_01",
			[ "name" ] = "Belt of Untapped Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 22716,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6774,
			[ "icon" ] = "inv_helmet_41",
			[ "name" ] = "Blooddrenched Mask",
			[ "quality" ] = 3,
			[ "itemId" ] = 22718,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6772,
			[ "icon" ] = "inv_helmet_61",
			[ "name" ] = "Zulian Headdress",
			[ "quality" ] = 3,
			[ "itemId" ] = 22720,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6770,
			[ "icon" ] = "inv_jewelry_ring_16",
			[ "name" ] = "Band of Servitude",
			[ "quality" ] = 4,
			[ "itemId" ] = 22721,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6771,
			[ "icon" ] = "inv_jewelry_ring_20",
			[ "name" ] = "Seal of the Gurubashi Berserker",
			[ "quality" ] = 4,
			[ "itemId" ] = 22722,
			[ "raidBosses" ] = { 621, 622, 624, 631, 632 }
		}, {
			[ "id" ] = 6556,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_misc_book_07",
			[ "name" ] = "Tome of Polymorph: Turtle",
			[ "quality" ] = 3,
			[ "itemId" ] = 22739,
			[ "raidBosses" ] = { 630 }
		}, {
			[ "id" ] = 7816,
			[ "icon" ] = "inv_misc_monsterspidercarapace_01",
			[ "name" ] = "Razzashi Hatchling",
			[ "quality" ] = 2,
			[ "itemId" ] = 37010,
			[ "raidBosses" ] = { 637 }
		}, {
			[ "id" ] = 7080,
			[ "icon" ] = "inv_misc_orb_01",
			[ "name" ] = "Middle Piece of an Ancient Idol",
			[ "quality" ] = 3,
			[ "itemId" ] = 56084,
			[ "raidBosses" ] = { 630 }
		}, {
			[ "id" ] = 6525,
			[ "icon" ] = "inv_weapon_hand_02",
			[ "name" ] = "Ancient Hakkari Flayer",
			[ "quality" ] = 3,
			[ "itemId" ] = 81003,
			[ "raidBosses" ] = { 624 }
		} }
	},
	[ 101 ] = {
		[ "name" ] = "Lower Karazhan Halls",
		[ "reference" ] = "KARA",
		[ "raidBosses" ] = { {
			[ "id" ] = 638,
			[ "name" ] = "Rolfen",
			[ "position" ] = 0
		}, {
			[ "id" ] = 639,
			[ "name" ] = "Brood Queen Araxxna",
			[ "position" ] = 1
		}, {
			[ "id" ] = 640,
			[ "name" ] = "Grizikil",
			[ "position" ] = 2
		}, {
			[ "id" ] = 641,
			[ "name" ] = "Clawlord Howlfang",
			[ "position" ] = 3
		}, {
			[ "id" ] = 642,
			[ "name" ] = "Lord Blackwald II",
			[ "position" ] = 4
		}, {
			[ "id" ] = 643,
			[ "name" ] = "Moroes",
			[ "position" ] = 5
		}, {
			[ "id" ] = 644,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 6
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 6632,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Formula: Powerful Smelling Salts",
			[ "quality" ] = 3,
			[ "itemId" ] = 8547,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643, 644 }
		}, {
			[ "id" ] = 6633,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Recipe: Alchemist's Stone",
			[ "quality" ] = 4,
			[ "itemId" ] = 13517,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 7811,
			[ "icon" ] = "inv_misc_monsterspidercarapace_01",
			[ "name" ] = "Skitterweb Hatchling",
			[ "quality" ] = 2,
			[ "itemId" ] = 37006,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 7810,
			[ "icon" ] = "inv_misc_monsterspidercarapace_01",
			[ "name" ] = "Araxxna's Hatchling",
			[ "quality" ] = 2,
			[ "itemId" ] = 37011,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 7071,
			[ "icon" ] = "inv_misc_ribbon_01",
			[ "name" ] = "Fashion Coin",
			[ "quality" ] = 2,
			[ "itemId" ] = 51217,
			[ "raidBosses" ] = { 638, 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 6694,
			[ "icon" ] = "inv_misc_note_03",
			[ "name" ] = "Scribbled Cooking Notes",
			[ "quality" ] = 4,
			[ "itemId" ] = 51326,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 7209,
			[ "icon" ] = "inv_misc_book_02",
			[ "name" ] = "Guide: Aspect of the Wolf VII",
			[ "quality" ] = 3,
			[ "itemId" ] = 55552,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 7072,
			[ "icon" ] = "inv_drink_waterskin_05",
			[ "name" ] = "Medivh's Merlot",
			[ "quality" ] = 3,
			[ "itemId" ] = 61174,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 7073,
			[ "icon" ] = "inv_drink_waterskin_01",
			[ "name" ] = "Medivh's Merlot Blue",
			[ "quality" ] = 3,
			[ "itemId" ] = 61175,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 6646,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Recipe: Potion of Quickness",
			[ "quality" ] = 3,
			[ "itemId" ] = 61177,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643, 644 }
		}, {
			[ "id" ] = 6645,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Plans: Thorium Spurs",
			[ "quality" ] = 3,
			[ "itemId" ] = 61178,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643, 644 }
		}, {
			[ "id" ] = 6643,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Cloak - Greater Arcane Resistance",
			[ "quality" ] = 3,
			[ "itemId" ] = 61180,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643, 644 }
		}, {
			[ "id" ] = 6634,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Plans: Dawnstone Hammer",
			[ "quality" ] = 4,
			[ "itemId" ] = 61189,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 6635,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Pattern: Gloves of Unwinding Mystery",
			[ "quality" ] = 4,
			[ "itemId" ] = 61190,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 6648,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Schematic: Intricate Gyroscope Goggles",
			[ "quality" ] = 4,
			[ "itemId" ] = 61191,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 6647,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Pattern: Inscribed Runic Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 61192,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 6631,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Boots - Superior Stamina",
			[ "quality" ] = 3,
			[ "itemId" ] = 61219,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 6629,
			[ "icon" ] = "inv_potion_97",
			[ "name" ] = "Vial of Potent Venoms",
			[ "quality" ] = 4,
			[ "itemId" ] = 61243,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6640,
			[ "icon" ] = "inv_pants_plate_03",
			[ "name" ] = "Leggings of Shrouding Winds",
			[ "quality" ] = 3,
			[ "itemId" ] = 61244,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6637,
			[ "icon" ] = "inv_bracer_12",
			[ "name" ] = "Bracers of Brambled Vines",
			[ "quality" ] = 3,
			[ "itemId" ] = 61245,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6673,
			[ "icon" ] = "inv_boots_chain_08",
			[ "name" ] = "Sabatons of the Endless March",
			[ "quality" ] = 4,
			[ "itemId" ] = 61246,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6674,
			[ "icon" ] = "inv_sword_2h_blood_c_02",
			[ "name" ] = "Shadowbringer",
			[ "quality" ] = 4,
			[ "itemId" ] = 61247,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6664,
			[ "icon" ] = "inv_weapon_rifle_twow_02_gray",
			[ "name" ] = "Beasthunter's Blunderbuss",
			[ "quality" ] = 4,
			[ "itemId" ] = 61248,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6662,
			[ "icon" ] = "inv_misc_pelt_bear_ruin_03",
			[ "name" ] = "Pelt of the Great Howler",
			[ "quality" ] = 4,
			[ "itemId" ] = 61249,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6665,
			[ "icon" ] = "inv_shirt_06",
			[ "name" ] = "Reedwoven Tunic",
			[ "quality" ] = 3,
			[ "itemId" ] = 61250,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6814,
			[ "icon" ] = "btnringjadefalcon",
			[ "name" ] = "Medivh's Foresight",
			[ "quality" ] = 4,
			[ "itemId" ] = 61251,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6653,
			[ "icon" ] = "inv_helmet_52",
			[ "name" ] = "Red Hat of Destruction",
			[ "quality" ] = 3,
			[ "itemId" ] = 61252,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6650,
			[ "icon" ] = "inv_gauntlets_30",
			[ "name" ] = "Aetherforged Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 61253,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6696,
			[ "icon" ] = "inv_belt_25",
			[ "name" ] = "Reedmesh Belt",
			[ "quality" ] = 3,
			[ "itemId" ] = 61254,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 6680,
			[ "icon" ] = "inv_knife_1h_draenei_a_03",
			[ "name" ] = "Tuning Fork of Charged Lightning",
			[ "quality" ] = 3,
			[ "itemId" ] = 61255,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6683,
			[ "icon" ] = "inv_pants_cloth_06",
			[ "name" ] = "Leggings of the Misty Marsh",
			[ "quality" ] = 4,
			[ "itemId" ] = 61256,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6685,
			[ "icon" ] = "inv_bracer_14",
			[ "name" ] = "Cloudplate Wristguards",
			[ "quality" ] = 4,
			[ "itemId" ] = 61257,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6627,
			[ "icon" ] = "inv_helmet_34",
			[ "name" ] = "Flamescorched Hood",
			[ "quality" ] = 4,
			[ "itemId" ] = 61260,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6654,
			[ "icon" ] = "inv_misc_cape_18",
			[ "name" ] = "Battlescarred Cloak",
			[ "quality" ] = 3,
			[ "itemId" ] = 61261,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 7211,
			[ "icon" ] = "btnlancelot_ring",
			[ "name" ] = "Royal Signet of Blackwald II",
			[ "quality" ] = 4,
			[ "itemId" ] = 61262,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6670,
			[ "icon" ] = "inv_misc_monsterfang_01",
			[ "name" ] = "Tooth of the Packlord",
			[ "quality" ] = 3,
			[ "itemId" ] = 61263,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6689,
			[ "icon" ] = "inv_staff_07",
			[ "name" ] = "Ansirem's Runeweaver",
			[ "quality" ] = 4,
			[ "itemId" ] = 61264,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6684,
			[ "icon" ] = "inv_pants_leather_18",
			[ "name" ] = "Leggings of the Inferno",
			[ "quality" ] = 4,
			[ "itemId" ] = 61265,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6672,
			[ "icon" ] = "inv_gauntlets_11",
			[ "name" ] = "Rune Infused Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 61266,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6655,
			[ "icon" ] = "inv_gauntlets_26",
			[ "name" ] = "Sparkgrasp Gloves",
			[ "quality" ] = 3,
			[ "itemId" ] = 61267,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6628,
			[ "icon" ] = "spell_nature_crystalball",
			[ "name" ] = "Sigil of the Brood",
			[ "quality" ] = 4,
			[ "itemId" ] = 61268,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6636,
			[ "icon" ] = "inv_chest_cloth_01",
			[ "name" ] = "Clutchweave Robe",
			[ "quality" ] = 3,
			[ "itemId" ] = 61269,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6813,
			[ "icon" ] = "btnemeraldnecklace",
			[ "name" ] = "Pendant of Shadra's Chosen",
			[ "quality" ] = 4,
			[ "itemId" ] = 61270,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6667,
			[ "icon" ] = "inv_boots_07",
			[ "name" ] = "Boots of Blazing Steps",
			[ "quality" ] = 3,
			[ "itemId" ] = 61271,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6639,
			[ "icon" ] = "inv_boots_chain_10",
			[ "name" ] = "Deepstone Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 61272,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6661,
			[ "icon" ] = "inv_belt_26",
			[ "name" ] = "Earthbreaker Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 61273,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6668,
			[ "icon" ] = "inv_gauntlets_24",
			[ "name" ] = "Pulverizer Gauntlets",
			[ "quality" ] = 3,
			[ "itemId" ] = 61274,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6686,
			[ "icon" ] = "inv_chest_plate04",
			[ "name" ] = "Breastplate of Earthen Might",
			[ "quality" ] = 4,
			[ "itemId" ] = 61275,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6651,
			[ "icon" ] = "spell_arcane_portaldarnassus",
			[ "name" ] = "Hyperchromatic Deflector",
			[ "quality" ] = 4,
			[ "itemId" ] = 61276,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6688,
			[ "icon" ] = "inv_mace_33",
			[ "name" ] = "Fist of the Forgotten Order",
			[ "quality" ] = 4,
			[ "itemId" ] = 61277,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6641,
			[ "icon" ] = "inv_weapon_shortblade_25",
			[ "name" ] = "Vampiric Kris",
			[ "quality" ] = 3,
			[ "itemId" ] = 61278,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6678,
			[ "icon" ] = "inv_pants_mail_13",
			[ "name" ] = "Slateplate Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 61279,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6697,
			[ "icon" ] = "inv_bracer_16",
			[ "name" ] = "Granitized Bracers",
			[ "quality" ] = 3,
			[ "itemId" ] = 61280,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 6660,
			[ "icon" ] = "inv_boots_cloth_09",
			[ "name" ] = "Shadeweave Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 61281,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6677,
			[ "icon" ] = "inv_bracer_09",
			[ "name" ] = "Deepshadow Bracers",
			[ "quality" ] = 3,
			[ "itemId" ] = 61282,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6638,
			[ "icon" ] = "inv_gauntlets_09",
			[ "name" ] = "Darkgrasp Gloves",
			[ "quality" ] = 3,
			[ "itemId" ] = 61283,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6682,
			[ "icon" ] = "inv_shirt_16",
			[ "name" ] = "Vest of Encroaching Darkness",
			[ "quality" ] = 4,
			[ "itemId" ] = 61284,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6666,
			[ "icon" ] = "inv_pants_cloth_05",
			[ "name" ] = "Duskwrapped Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 61285,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6681,
			[ "icon" ] = "inv_wand_01",
			[ "name" ] = "Bloodfang Effigy",
			[ "quality" ] = 3,
			[ "itemId" ] = 61286,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6679,
			[ "icon" ] = "inv_chest_plate16",
			[ "name" ] = "Gusthewn Chestplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 61287,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6656,
			[ "icon" ] = "inv_belt_15",
			[ "name" ] = "Nightwoven Belt",
			[ "quality" ] = 3,
			[ "itemId" ] = 61288,
			[ "raidBosses" ] = { 640, 644 }
		}, {
			[ "id" ] = 6657,
			[ "icon" ] = "inv_boots_plate_03",
			[ "name" ] = "Aurious Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 61289,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6669,
			[ "icon" ] = "inv_belt_32",
			[ "name" ] = "Zephyrian Girdle",
			[ "quality" ] = 3,
			[ "itemId" ] = 61290,
			[ "raidBosses" ] = { 641, 644 }
		}, {
			[ "id" ] = 6649,
			[ "icon" ] = "inv_helmet_10",
			[ "name" ] = "Darkflame Helm",
			[ "quality" ] = 4,
			[ "itemId" ] = 61291,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6652,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_staff_07",
			[ "name" ] = "Totem of Crackling Thunder",
			[ "quality" ] = 4,
			[ "itemId" ] = 61292,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6663,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_qirajidol_night",
			[ "name" ] = "Idol of the Moonfang",
			[ "quality" ] = 4,
			[ "itemId" ] = 61293,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6831,
			[ "icon" ] = "btneyering",
			[ "name" ] = "Dark Rider's Signet",
			[ "quality" ] = 3,
			[ "itemId" ] = 61294,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6698,
			[ "icon" ] = "inv_mace_34",
			[ "name" ] = "Dawnstone Bludgeon",
			[ "quality" ] = 3,
			[ "itemId" ] = 61295,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 6626,
			[ "icon" ] = "inv_boots_cloth_04",
			[ "name" ] = "Marshtreader Slippers",
			[ "quality" ] = 4,
			[ "itemId" ] = 61297,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6658,
			[ "icon" ] = "inv_gauntlets_21",
			[ "name" ] = "Overgrown Gloves",
			[ "quality" ] = 3,
			[ "itemId" ] = 61298,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6690,
			[ "icon" ] = "inv_misc_bandage_16",
			[ "name" ] = "Shawl of the Castellan",
			[ "quality" ] = 4,
			[ "itemId" ] = 61299,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6675,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_misc_book_13",
			[ "name" ] = "Libram of the Faithful",
			[ "quality" ] = 4,
			[ "itemId" ] = 61443,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 7212,
			[ "icon" ] = "inv_bracer_13",
			[ "name" ] = "Searhide Bracers",
			[ "quality" ] = 3,
			[ "itemId" ] = 61449,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6659,
			[ "icon" ] = "inv_misc_key_09",
			[ "name" ] = "The Mind's Key",
			[ "quality" ] = 3,
			[ "itemId" ] = 61450,
			[ "raidBosses" ] = { 640 }
		}, {
			[ "id" ] = 6671,
			[ "icon" ] = "inv_enchant_essenceeternalsmall",
			[ "name" ] = "Sliver of Hope",
			[ "quality" ] = 3,
			[ "itemId" ] = 61451,
			[ "raidBosses" ] = { 641 }
		}, {
			[ "id" ] = 6699,
			[ "icon" ] = "inv_axe_30",
			[ "name" ] = "Skycleaver",
			[ "quality" ] = 3,
			[ "itemId" ] = 61452,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 6692,
			[ "icon" ] = "inv_sword_draenei_05",
			[ "name" ] = "Anasterian's Legacy",
			[ "quality" ] = 4,
			[ "itemId" ] = 61453,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6691,
			[ "icon" ] = "inv_staff_draenei_a_01",
			[ "name" ] = "Rod of Resuscitation",
			[ "quality" ] = 4,
			[ "itemId" ] = 61454,
			[ "raidBosses" ] = { 643 }
		}, {
			[ "id" ] = 6687,
			[ "icon" ] = "inv_misc_gem_diamond_03",
			[ "name" ] = "Overcharged Ley Energy",
			[ "quality" ] = 3,
			[ "itemId" ] = 61674,
			[ "raidBosses" ] = { 638, 639, 640, 641, 642, 643, 644 }
		}, {
			[ "id" ] = 6630,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Boots - Vampirism",
			[ "quality" ] = 3,
			[ "itemId" ] = 61739,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 6676,
			[ "classes" ] = { "Priest", "Mage", "Warlock", "Druid" },
			[ "icon" ] = "inv_weapon_shortblade_23",
			[ "name" ] = "The Scythe of Elune",
			[ "quality" ] = 5,
			[ "itemId" ] = 61759,
			[ "raidBosses" ] = { 642 }
		}, {
			[ "id" ] = 6622,
			[ "icon" ] = "inv_scroll_04",
			[ "name" ] = "Plans: Towerforge Demolisher",
			[ "quality" ] = 4,
			[ "itemId" ] = 61805,
			[ "raidBosses" ] = { 638 }
		}, {
			[ "id" ] = 6623,
			[ "icon" ] = "inv_scroll_04",
			[ "name" ] = "Plans: Towerforge Pauldrons",
			[ "quality" ] = 4,
			[ "itemId" ] = 61806,
			[ "raidBosses" ] = { 638 }
		}, {
			[ "id" ] = 6624,
			[ "icon" ] = "inv_scroll_04",
			[ "name" ] = "Plans: Towerforge Breastplate",
			[ "quality" ] = 4,
			[ "itemId" ] = 61807,
			[ "raidBosses" ] = { 638 }
		}, {
			[ "id" ] = 6625,
			[ "icon" ] = "inv_scroll_04",
			[ "name" ] = "Plans: Towerforge Crown",
			[ "quality" ] = 4,
			[ "itemId" ] = 61808,
			[ "raidBosses" ] = { 638 }
		}, {
			[ "id" ] = 6642,
			[ "icon" ] = "inv_shield_21",
			[ "name" ] = "Araxxna's Husk",
			[ "quality" ] = 3,
			[ "itemId" ] = 61816,
			[ "raidBosses" ] = { 639 }
		}, {
			[ "id" ] = 6644,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Arcane Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 70001,
			[ "raidBosses" ] = { 639, 640, 641, 642, 643 }
		}, {
			[ "id" ] = 6832,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_misc_book_07",
			[ "name" ] = "Tome of Portals: Theramore",
			[ "quality" ] = 3,
			[ "itemId" ] = 92002,
			[ "raidBosses" ] = { 644 }
		}, {
			[ "id" ] = 6833,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_misc_book_07",
			[ "name" ] = "Tome of Portals: Stonard",
			[ "quality" ] = 3,
			[ "itemId" ] = 92004,
			[ "raidBosses" ] = { 644 }
		} }
	},
	[ 102 ] = {
		[ "name" ] = "Emerald Sanctum",
		[ "reference" ] = "ES",
		[ "raidBosses" ] = { {
			[ "id" ] = 646,
			[ "name" ] = "Erennius",
			[ "position" ] = 0
		}, {
			[ "id" ] = 647,
			[ "name" ] = "Solnius",
			[ "position" ] = 1
		}, {
			[ "id" ] = 648,
			[ "name" ] = "Solnius 2 (DEPRECATED)",
			[ "position" ] = 2
		}, {
			[ "id" ] = 649,
			[ "name" ] = "Hard-mode",
			[ "position" ] = 3
		}, {
			[ "id" ] = 650,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 4
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 6830,
			[ "icon" ] = "inv_misc_bag_10",
			[ "name" ] = "Yellow Sack of Gems",
			[ "quality" ] = 2,
			[ "itemId" ] = 17965,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6710,
			[ "icon" ] = "inv_misc_monsterscales_11",
			[ "name" ] = "Dreamscale",
			[ "quality" ] = 2,
			[ "itemId" ] = 20381,
			[ "raidBosses" ] = { 646, 647, 650 }
		}, {
			[ "id" ] = 6823,
			[ "icon" ] = "inv_mace_09",
			[ "name" ] = "Aspect of Seradane",
			[ "quality" ] = 4,
			[ "itemId" ] = 41076,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6739,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_misc_note_05",
			[ "name" ] = "Glyph of the Dreamkin",
			[ "quality" ] = 3,
			[ "itemId" ] = 51361,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6756,
			[ "icon" ] = "inv_crate_02",
			[ "name" ] = "Dream Frog",
			[ "quality" ] = 3,
			[ "itemId" ] = 54001,
			[ "raidBosses" ] = { 650 }
		}, {
			[ "id" ] = 6732,
			[ "icon" ] = "inv_misc_bag_18",
			[ "name" ] = "Bag of Vast Consciousness",
			[ "quality" ] = 3,
			[ "itemId" ] = 61196,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6709,
			[ "icon" ] = "inv_stone_05",
			[ "name" ] = "Fading Dream Fragment",
			[ "quality" ] = 3,
			[ "itemId" ] = 61197,
			[ "raidBosses" ] = { 646, 649, 650 }
		}, {
			[ "id" ] = 6708,
			[ "icon" ] = "inv_stone_03",
			[ "name" ] = "Small Dream Shard",
			[ "quality" ] = 2,
			[ "itemId" ] = 61198,
			[ "raidBosses" ] = { 646, 647, 650 }
		}, {
			[ "id" ] = 6726,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_relics_libramofgrace",
			[ "name" ] = "Libram of the Dreamguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 61203,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6727,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "spell_nature_stoneskintotem",
			[ "name" ] = "Totem of the Stonebreaker",
			[ "quality" ] = 4,
			[ "itemId" ] = 61204,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6717,
			[ "icon" ] = "inv_jewelry_ring_37",
			[ "name" ] = "Ring of Nature's Duality",
			[ "quality" ] = 4,
			[ "itemId" ] = 61205,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6711,
			[ "icon" ] = "inv_chest_leather_06",
			[ "name" ] = "Robe of the Dreamways",
			[ "quality" ] = 4,
			[ "itemId" ] = 61206,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6722,
			[ "icon" ] = "inv_helmet_02",
			[ "name" ] = "Jadestone Helmet",
			[ "quality" ] = 4,
			[ "itemId" ] = 61207,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6724,
			[ "icon" ] = "inv_staff_49",
			[ "name" ] = "Staff of the Dreamer",
			[ "quality" ] = 4,
			[ "itemId" ] = 61208,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6718,
			[ "icon" ] = "inv_enchant_essencemysticallarge",
			[ "name" ] = "Shard of Nightmare",
			[ "quality" ] = 4,
			[ "itemId" ] = 61209,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6719,
			[ "icon" ] = "inv_misc_cape_01",
			[ "name" ] = "Veil of Nightmare",
			[ "quality" ] = 4,
			[ "itemId" ] = 61210,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6712,
			[ "icon" ] = "inv_boots_fabric_01",
			[ "name" ] = "Sandals of Lucidity",
			[ "quality" ] = 4,
			[ "itemId" ] = 61211,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6720,
			[ "icon" ] = "inv_bracer_09",
			[ "name" ] = "Sanctum Bark Wraps",
			[ "quality" ] = 4,
			[ "itemId" ] = 61212,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6713,
			[ "icon" ] = "inv_gauntlets_29",
			[ "name" ] = "Talonwind Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 61213,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6721,
			[ "icon" ] = "inv_shoulder_13",
			[ "name" ] = "Mantle of the Wakener",
			[ "quality" ] = 4,
			[ "itemId" ] = 61214,
			[ "raidBosses" ] = { 646, 647, 648, 649, 650 }
		}, {
			[ "id" ] = 6728,
			[ "icon" ] = "inv_misc_head_dragon_green",
			[ "name" ] = "Head of Solnius",
			[ "quality" ] = 4,
			[ "itemId" ] = 61215,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6734,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Chest - Mighty Mana",
			[ "quality" ] = 3,
			[ "itemId" ] = 61217,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6736,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Recipe: Elixir of Greater Nature Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 61218,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6715,
			[ "icon" ] = "inv_mace_35",
			[ "name" ] = "Mallet of the Awakening",
			[ "quality" ] = 4,
			[ "itemId" ] = 61237,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6716,
			[ "icon" ] = "inv_shield_23",
			[ "name" ] = "Scaleshield of Emerald Flight",
			[ "quality" ] = 4,
			[ "itemId" ] = 61238,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6714,
			[ "icon" ] = "inv_pants_03",
			[ "name" ] = "Ancient Jade Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 61239,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6742,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Plans: Dreamsteel Mantle",
			[ "quality" ] = 4,
			[ "itemId" ] = 61424,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6740,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Pattern: Dreamhide Mantle",
			[ "quality" ] = 4,
			[ "itemId" ] = 61428,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6741,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Pattern: Dreamthread Mantle",
			[ "quality" ] = 4,
			[ "itemId" ] = 61432,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6737,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_stone_05",
			[ "name" ] = "Smoldering Dream Essence",
			[ "quality" ] = 4,
			[ "itemId" ] = 61444,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6723,
			[ "icon" ] = "inv_weapon_halberd_05",
			[ "name" ] = "Axe of Dormant Slumber",
			[ "quality" ] = 4,
			[ "itemId" ] = 61448,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6725,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "spell_nature_naturetouchdecay",
			[ "name" ] = "Idol of the Emerald Rot",
			[ "quality" ] = 4,
			[ "itemId" ] = 61455,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6744,
			[ "icon" ] = "inv_jewelry_necklace_01",
			[ "name" ] = "Choker of the Emerald Lord",
			[ "quality" ] = 4,
			[ "itemId" ] = 61522,
			[ "raidBosses" ] = { 649 }
		}, {
			[ "id" ] = 6746,
			[ "icon" ] = "inv_sword_38",
			[ "name" ] = "Crystal Sword of the Blossom",
			[ "quality" ] = 4,
			[ "itemId" ] = 61523,
			[ "raidBosses" ] = { 649 }
		}, {
			[ "id" ] = 6743,
			[ "icon" ] = "inv_chest_plate07",
			[ "name" ] = "Naturecaller's Tunic",
			[ "quality" ] = 4,
			[ "itemId" ] = 61524,
			[ "raidBosses" ] = { 649 }
		}, {
			[ "id" ] = 6747,
			[ "icon" ] = "inv_weapon_bow_04",
			[ "name" ] = "Nature's Call",
			[ "quality" ] = 4,
			[ "itemId" ] = 61525,
			[ "raidBosses" ] = { 649 }
		}, {
			[ "id" ] = 6748,
			[ "icon" ] = "inv_shield_24",
			[ "name" ] = "Jadestone Protector",
			[ "quality" ] = 4,
			[ "itemId" ] = 61526,
			[ "raidBosses" ] = { 649 }
		}, {
			[ "id" ] = 6745,
			[ "icon" ] = "btnorbofchaos",
			[ "name" ] = "Breath of Solnius",
			[ "quality" ] = 4,
			[ "itemId" ] = 61527,
			[ "raidBosses" ] = { 649 }
		}, {
			[ "id" ] = 6704,
			[ "icon" ] = "inv_misc_monsterclaw_02",
			[ "name" ] = "Claw of Erennius",
			[ "quality" ] = 4,
			[ "itemId" ] = 61652,
			[ "raidBosses" ] = { 646 }
		}, {
			[ "id" ] = 6733,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Eternal Dreamstone Shard",
			[ "quality" ] = 5,
			[ "itemId" ] = 61733,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6735,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant Gloves - Nature Power",
			[ "quality" ] = 3,
			[ "itemId" ] = 70000,
			[ "raidBosses" ] = { 647 }
		}, {
			[ "id" ] = 6753,
			[ "icon" ] = "inv_weapon_shortblade_22",
			[ "name" ] = "Lucid Nightmare",
			[ "quality" ] = 4,
			[ "itemId" ] = 84500,
			[ "raidBosses" ] = { 650 }
		}, {
			[ "id" ] = 6755,
			[ "icon" ] = "inv_misc_root_02corrupt",
			[ "name" ] = "Corrupted Reed",
			[ "quality" ] = 4,
			[ "itemId" ] = 84501,
			[ "raidBosses" ] = { 650 }
		}, {
			[ "id" ] = 6749,
			[ "icon" ] = "inv_boots_cloth_04",
			[ "name" ] = "Verdant Dreamer's Boots",
			[ "quality" ] = 4,
			[ "itemId" ] = 84502,
			[ "raidBosses" ] = { 650 }
		}, {
			[ "id" ] = 6812,
			[ "icon" ] = "inv_staff_42",
			[ "name" ] = "Nature's Gift",
			[ "quality" ] = 4,
			[ "itemId" ] = 84503,
			[ "raidBosses" ] = { 650 }
		}, {
			[ "id" ] = 6752,
			[ "icon" ] = "inv_misc_herb_15",
			[ "name" ] = "Lasher's Whip",
			[ "quality" ] = 4,
			[ "itemId" ] = 84504,
			[ "raidBosses" ] = { 650 }
		}, {
			[ "id" ] = 6750,
			[ "icon" ] = "inv_bracer_06",
			[ "name" ] = "Infused Wildthorn Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 84505,
			[ "raidBosses" ] = { 650 }
		}, {
			[ "id" ] = 6751,
			[ "icon" ] = "inv_jewelry_ring_37",
			[ "name" ] = "Sleeper's Ring",
			[ "quality" ] = 4,
			[ "itemId" ] = 84506,
			[ "raidBosses" ] = { 650 }
		}, {
			[ "id" ] = 6754,
			[ "icon" ] = "inv_staff_14",
			[ "name" ] = "Emerald Rod",
			[ "quality" ] = 4,
			[ "itemId" ] = 84509,
			[ "raidBosses" ] = { 650 }
		} }
	},
	[ 106 ] = {
		[ "name" ] = "Upper Blackrock Spire",
		[ "reference" ] = "UBRS",
		[ "raidBosses" ] = { {
			[ "id" ] = 656,
			[ "name" ] = "Pyroguard Emberseer",
			[ "position" ] = 0
		}, {
			[ "id" ] = 657,
			[ "name" ] = "Solakar Flamewreath",
			[ "position" ] = 1
		}, {
			[ "id" ] = 658,
			[ "name" ] = "Father Flame",
			[ "position" ] = 2
		}, {
			[ "id" ] = 659,
			[ "name" ] = "Jed Runewatcher (rare)",
			[ "position" ] = 3
		}, {
			[ "id" ] = 660,
			[ "name" ] = "Goraluk Anvilcrack (rare)",
			[ "position" ] = 4
		}, {
			[ "id" ] = 661,
			[ "name" ] = "Warchief Rend Blackhand",
			[ "position" ] = 5
		}, {
			[ "id" ] = 662,
			[ "name" ] = "Gyth",
			[ "position" ] = 6
		}, {
			[ "id" ] = 663,
			[ "name" ] = "The Beast",
			[ "position" ] = 7
		}, {
			[ "id" ] = 664,
			[ "name" ] = "Lord Valthalak",
			[ "position" ] = 8
		}, {
			[ "id" ] = 665,
			[ "name" ] = "General Drakkisath",
			[ "position" ] = 9
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 6993,
			[ "icon" ] = "inv_weapon_halberd_04",
			[ "name" ] = "Blackhand Doomsaw",
			[ "quality" ] = 3,
			[ "itemId" ] = 12583,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6983,
			[ "icon" ] = "inv_helmet_46",
			[ "name" ] = "Eye of Rend",
			[ "quality" ] = 3,
			[ "itemId" ] = 12587,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6984,
			[ "icon" ] = "inv_shoulder_11",
			[ "name" ] = "Bonespike Shoulder",
			[ "quality" ] = 3,
			[ "itemId" ] = 12588,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6957,
			[ "icon" ] = "inv_belt_11",
			[ "name" ] = "Dustfeather Sash",
			[ "quality" ] = 3,
			[ "itemId" ] = 12589,
			[ "raidBosses" ] = { 657 }
		}, {
			[ "id" ] = 6981,
			[ "icon" ] = "inv_weapon_shortblade_25",
			[ "name" ] = "Felstriker",
			[ "quality" ] = 4,
			[ "itemId" ] = 12590,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 7022,
			[ "icon" ] = "inv_sword_29",
			[ "name" ] = "Blackblade of Shahram",
			[ "quality" ] = 4,
			[ "itemId" ] = 12592,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7030,
			[ "icon" ] = "inv_shield_20",
			[ "name" ] = "Draconian Deflector",
			[ "quality" ] = 3,
			[ "itemId" ] = 12602,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 6956,
			[ "icon" ] = "inv_chest_plate06",
			[ "name" ] = "Nightbrace Tunic",
			[ "quality" ] = 3,
			[ "itemId" ] = 12603,
			[ "raidBosses" ] = { 657 }
		}, {
			[ "id" ] = 6962,
			[ "icon" ] = "inv_crown_02",
			[ "name" ] = "Starfire Tiara",
			[ "quality" ] = 3,
			[ "itemId" ] = 12604,
			[ "raidBosses" ] = { 659 }
		}, {
			[ "id" ] = 6964,
			[ "icon" ] = "inv_misc_bone_elfskull_01",
			[ "name" ] = "Serpentine Skuller",
			[ "quality" ] = 3,
			[ "itemId" ] = 12605,
			[ "raidBosses" ] = { 659 }
		}, {
			[ "id" ] = 6958,
			[ "icon" ] = "inv_belt_10",
			[ "name" ] = "Crystallized Girdle",
			[ "quality" ] = 3,
			[ "itemId" ] = 12606,
			[ "raidBosses" ] = { 657 }
		}, {
			[ "id" ] = 6955,
			[ "icon" ] = "inv_chest_cloth_17",
			[ "name" ] = "Polychromatic Visionwrap",
			[ "quality" ] = 3,
			[ "itemId" ] = 12609,
			[ "raidBosses" ] = { 657 }
		}, {
			[ "id" ] = 6977,
			[ "icon" ] = "inv_chest_plate10",
			[ "name" ] = "Enchanted Thorium Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 12618,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6980,
			[ "icon" ] = "inv_chest_plate06",
			[ "name" ] = "Demon Forged Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 12628,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6974,
			[ "icon" ] = "inv_chest_chain_07",
			[ "name" ] = "Invulnerable Mail",
			[ "quality" ] = 4,
			[ "itemId" ] = 12641,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6979,
			[ "icon" ] = "inv_scroll_03",
			[ "name" ] = "Plans: Demon Forged Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 12696,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 7010,
			[ "icon" ] = "inv_sword_33",
			[ "name" ] = "Finkle's Skinner",
			[ "quality" ] = 3,
			[ "itemId" ] = 12709,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 6976,
			[ "icon" ] = "inv_scroll_05",
			[ "name" ] = "Plans: Enchanted Thorium Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 12727,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6973,
			[ "icon" ] = "inv_scroll_03",
			[ "name" ] = "Plans: Invulnerable Mail",
			[ "quality" ] = 4,
			[ "itemId" ] = 12728,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 7001,
			[ "icon" ] = "inv_misc_monsterscales_15",
			[ "name" ] = "Pristine Hide of the Beast",
			[ "quality" ] = 4,
			[ "itemId" ] = 12731,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 6970,
			[ "icon" ] = "inv_sword_39",
			[ "name" ] = "Arcanite Champion",
			[ "quality" ] = 3,
			[ "itemId" ] = 12790,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6972,
			[ "icon" ] = "inv_hammer_04",
			[ "name" ] = "Masterwork Stormhammer",
			[ "quality" ] = 3,
			[ "itemId" ] = 12794,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6978,
			[ "icon" ] = "inv_chest_plate04",
			[ "name" ] = "Unforged Rune Covered Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 12806,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6969,
			[ "icon" ] = "inv_scroll_03",
			[ "name" ] = "Plans: Arcanite Champion",
			[ "quality" ] = 3,
			[ "itemId" ] = 12834,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6971,
			[ "icon" ] = "inv_scroll_03",
			[ "name" ] = "Plans: Masterwork Stormhammer",
			[ "quality" ] = 3,
			[ "itemId" ] = 12837,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6994,
			[ "icon" ] = "inv_shield_21",
			[ "name" ] = "Chromatic Carapace",
			[ "quality" ] = 4,
			[ "itemId" ] = 12871,
			[ "raidBosses" ] = { 662 }
		}, {
			[ "id" ] = 6951,
			[ "icon" ] = "inv_chest_cloth_16",
			[ "name" ] = "Wildfire Cape",
			[ "quality" ] = 3,
			[ "itemId" ] = 12905,
			[ "raidBosses" ] = { 656 }
		}, {
			[ "id" ] = 6952,
			[ "icon" ] = "spell_holy_innerfire",
			[ "name" ] = "Flaming Band",
			[ "quality" ] = 3,
			[ "itemId" ] = 12926,
			[ "raidBosses" ] = { 656 }
		}, {
			[ "id" ] = 6950,
			[ "icon" ] = "inv_shoulder_10",
			[ "name" ] = "Truestrike Shoulders",
			[ "quality" ] = 3,
			[ "itemId" ] = 12927,
			[ "raidBosses" ] = { 656 }
		}, {
			[ "id" ] = 6949,
			[ "icon" ] = "inv_jewelry_necklace_05",
			[ "name" ] = "Emberfury Talisman",
			[ "quality" ] = 3,
			[ "itemId" ] = 12929,
			[ "raidBosses" ] = { 656 }
		}, {
			[ "id" ] = 6963,
			[ "icon" ] = "inv_misc_root_02",
			[ "name" ] = "Briarwood Reed",
			[ "quality" ] = 3,
			[ "itemId" ] = 12930,
			[ "raidBosses" ] = { 659 }
		}, {
			[ "id" ] = 6987,
			[ "icon" ] = "inv_pants_04",
			[ "name" ] = "Warmaster Legguards",
			[ "quality" ] = 3,
			[ "itemId" ] = 12935,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6985,
			[ "icon" ] = "inv_bracer_17",
			[ "name" ] = "Battleborn Armbraces",
			[ "quality" ] = 3,
			[ "itemId" ] = 12936,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6992,
			[ "icon" ] = "inv_sword_40",
			[ "name" ] = "Dal'Rend's Tribal Guardian",
			[ "quality" ] = 3,
			[ "itemId" ] = 12939,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6991,
			[ "icon" ] = "inv_sword_43",
			[ "name" ] = "Dal'Rend's Sacred Charge",
			[ "quality" ] = 3,
			[ "itemId" ] = 12940,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6999,
			[ "icon" ] = "inv_helmet_23",
			[ "name" ] = "Gyth's Skull",
			[ "quality" ] = 3,
			[ "itemId" ] = 12952,
			[ "raidBosses" ] = { 662 }
		}, {
			[ "id" ] = 6998,
			[ "icon" ] = "inv_helmet_39",
			[ "name" ] = "Dragoneye Coif",
			[ "quality" ] = 3,
			[ "itemId" ] = 12953,
			[ "raidBosses" ] = { 662 }
		}, {
			[ "id" ] = 6997,
			[ "icon" ] = "inv_helmet_24",
			[ "name" ] = "Tribal War Feathers",
			[ "quality" ] = 3,
			[ "itemId" ] = 12960,
			[ "raidBosses" ] = { 662 }
		}, {
			[ "id" ] = 7007,
			[ "icon" ] = "inv_pants_06",
			[ "name" ] = "Blademaster Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 12963,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7008,
			[ "icon" ] = "inv_pants_04",
			[ "name" ] = "Tristam Legguards",
			[ "quality" ] = 3,
			[ "itemId" ] = 12964,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7006,
			[ "icon" ] = "inv_pants_06",
			[ "name" ] = "Spiritshroud Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 12965,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7005,
			[ "icon" ] = "inv_bracer_07",
			[ "name" ] = "Blackmist Armguards",
			[ "quality" ] = 3,
			[ "itemId" ] = 12966,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7003,
			[ "icon" ] = "inv_misc_cape_05",
			[ "name" ] = "Bloodmoon Cloak",
			[ "quality" ] = 3,
			[ "itemId" ] = 12967,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7004,
			[ "icon" ] = "inv_misc_cape_18",
			[ "name" ] = "Frostweaver Cape",
			[ "quality" ] = 3,
			[ "itemId" ] = 12968,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7011,
			[ "icon" ] = "inv_hammer_17",
			[ "name" ] = "Seeping Willow",
			[ "quality" ] = 3,
			[ "itemId" ] = 12969,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7043,
			[ "icon" ] = "inv_chest_chain_16",
			[ "name" ] = "Breastplate of the Chosen",
			[ "quality" ] = 3,
			[ "itemId" ] = 13090,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7027,
			[ "icon" ] = "inv_jewelry_ring_18",
			[ "name" ] = "Painweaver Band",
			[ "quality" ] = 3,
			[ "itemId" ] = 13098,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7024,
			[ "icon" ] = "inv_jewelry_necklace_09",
			[ "name" ] = "Tooth of Gnarr",
			[ "quality" ] = 3,
			[ "itemId" ] = 13141,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7026,
			[ "icon" ] = "inv_belt_33",
			[ "name" ] = "Brigam Girdle",
			[ "quality" ] = 3,
			[ "itemId" ] = 13142,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7045,
			[ "icon" ] = "inv_boots_01",
			[ "name" ] = "Wind Dancer Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 13260,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 6961,
			[ "icon" ] = "inv_misc_orb_05",
			[ "name" ] = "Father Flame",
			[ "quality" ] = 2,
			[ "itemId" ] = 13371,
			[ "raidBosses" ] = { 658 }
		}, {
			[ "id" ] = 6966,
			[ "icon" ] = "inv_pants_04",
			[ "name" ] = "Handcrafted Mastersmith Leggings",
			[ "quality" ] = 3,
			[ "itemId" ] = 13498,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6965,
			[ "icon" ] = "inv_belt_23",
			[ "name" ] = "Handcrafted Mastersmith Girdle",
			[ "quality" ] = 3,
			[ "itemId" ] = 13502,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 7033,
			[ "icon" ] = "inv_scroll_06",
			[ "name" ] = "Recipe: Flask of the Titans",
			[ "quality" ] = 2,
			[ "itemId" ] = 13519,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7000,
			[ "icon" ] = "inv_scroll_06",
			[ "name" ] = "Recipe: Flask of Chromatic Resistance",
			[ "quality" ] = 2,
			[ "itemId" ] = 13522,
			[ "raidBosses" ] = { 662 }
		}, {
			[ "id" ] = 7032,
			[ "icon" ] = "inv_chest_chain_07",
			[ "name" ] = "Red Dragonscale Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 15047,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7031,
			[ "icon" ] = "inv_scroll_03",
			[ "name" ] = "Pattern: Red Dragonscale Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 15730,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7054,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Formula: Enchant 2H Weapon - Superior Impact",
			[ "quality" ] = 2,
			[ "itemId" ] = 16247,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7040,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_chest_chain_11",
			[ "name" ] = "Vest of Elements",
			[ "quality" ] = 3,
			[ "itemId" ] = 16666,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 6995,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_shoulder_29",
			[ "name" ] = "Pauldrons of Elements",
			[ "quality" ] = 3,
			[ "itemId" ] = 16669,
			[ "raidBosses" ] = { 662 }
		}, {
			[ "id" ] = 6948,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_gauntlets_11",
			[ "name" ] = "Gauntlets of Elements",
			[ "quality" ] = 3,
			[ "itemId" ] = 16672,
			[ "raidBosses" ] = { 656 }
		}, {
			[ "id" ] = 7052,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_belt_16",
			[ "name" ] = "Cord of Elements",
			[ "quality" ] = 3,
			[ "itemId" ] = 16673,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7039,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_chest_chain_03",
			[ "name" ] = "Beaststalker's Tunic",
			[ "quality" ] = 3,
			[ "itemId" ] = 16674,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7051,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_belt_28",
			[ "name" ] = "Beaststalker's Belt",
			[ "quality" ] = 3,
			[ "itemId" ] = 16680,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7050,
			[ "classes" ] = { "Hunter" },
			[ "icon" ] = "inv_bracer_17",
			[ "name" ] = "Beaststalker's Bindings",
			[ "quality" ] = 3,
			[ "itemId" ] = 16681,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7047,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_jewelry_ring_23",
			[ "name" ] = "Magister's Bindings",
			[ "quality" ] = 3,
			[ "itemId" ] = 16683,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7035,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_chest_cloth_25",
			[ "name" ] = "Magister's Robes",
			[ "quality" ] = 3,
			[ "itemId" ] = 16688,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7034,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_chest_cloth_11",
			[ "name" ] = "Devout Robe",
			[ "quality" ] = 3,
			[ "itemId" ] = 16690,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 6954,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_shoulder_02",
			[ "name" ] = "Devout Mantle",
			[ "quality" ] = 3,
			[ "itemId" ] = 16695,
			[ "raidBosses" ] = { 657 }
		}, {
			[ "id" ] = 7046,
			[ "classes" ] = { "Priest" },
			[ "icon" ] = "inv_belt_10",
			[ "name" ] = "Devout Belt",
			[ "quality" ] = 3,
			[ "itemId" ] = 16696,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7036,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_chest_cloth_49",
			[ "name" ] = "Dreadmist Robe",
			[ "quality" ] = 3,
			[ "itemId" ] = 16700,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7048,
			[ "classes" ] = { "Warlock" },
			[ "icon" ] = "inv_bracer_13",
			[ "name" ] = "Dreadmist Bracers",
			[ "quality" ] = 3,
			[ "itemId" ] = 16703,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7038,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_chest_plate06",
			[ "name" ] = "Wildheart Vest",
			[ "quality" ] = 3,
			[ "itemId" ] = 16706,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7049,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_belt_03",
			[ "name" ] = "Shadowcraft Belt",
			[ "quality" ] = 3,
			[ "itemId" ] = 16713,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7037,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_chest_leather_07",
			[ "name" ] = "Shadowcraft Tunic",
			[ "quality" ] = 3,
			[ "itemId" ] = 16721,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7041,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_chest_plate03",
			[ "name" ] = "Lightforge Breastplate",
			[ "quality" ] = 3,
			[ "itemId" ] = 16726,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7002,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_shoulder_10",
			[ "name" ] = "Lightforge Spaulders",
			[ "quality" ] = 3,
			[ "itemId" ] = 16729,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7042,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_chest_plate03",
			[ "name" ] = "Breastplate of Valor",
			[ "quality" ] = 3,
			[ "itemId" ] = 16730,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 6982,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_shoulder_30",
			[ "name" ] = "Spaulders of Valor",
			[ "quality" ] = 3,
			[ "itemId" ] = 16733,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 7053,
			[ "classes" ] = { "Warrior" },
			[ "icon" ] = "inv_bracer_18",
			[ "name" ] = "Bracers of Valor",
			[ "quality" ] = 3,
			[ "itemId" ] = 16735,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 6967,
			[ "icon" ] = "inv_boots_02",
			[ "name" ] = "Flame Walkers",
			[ "quality" ] = 3,
			[ "itemId" ] = 18047,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6968,
			[ "icon" ] = "inv_hammer_06",
			[ "name" ] = "Mastersmith's Hammer",
			[ "quality" ] = 3,
			[ "itemId" ] = 18048,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 6988,
			[ "icon" ] = "inv_boots_05",
			[ "name" ] = "Dragonrider Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 18102,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6990,
			[ "icon" ] = "inv_jewelry_ring_16",
			[ "name" ] = "Band of Rumination",
			[ "quality" ] = 3,
			[ "itemId" ] = 18103,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6986,
			[ "icon" ] = "inv_belt_03",
			[ "name" ] = "Feralsurge Girdle",
			[ "quality" ] = 3,
			[ "itemId" ] = 18104,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 6960,
			[ "icon" ] = "inv_misc_enggizmos_04",
			[ "name" ] = "Hyper-Radiant Flame Reflector",
			[ "quality" ] = 3,
			[ "itemId" ] = 18638,
			[ "raidBosses" ] = { 657 }
		}, {
			[ "id" ] = 6959,
			[ "icon" ] = "inv_scroll_06",
			[ "name" ] = "Schematic: Hyper-Radiant Flame Reflector",
			[ "quality" ] = 2,
			[ "itemId" ] = 18657,
			[ "raidBosses" ] = { 657 }
		}, {
			[ "id" ] = 6975,
			[ "icon" ] = "inv_misc_note_06",
			[ "name" ] = "Bottom Half of Advanced Armorsmithing: Volume I",
			[ "quality" ] = 3,
			[ "itemId" ] = 18779,
			[ "raidBosses" ] = { 660 }
		}, {
			[ "id" ] = 7013,
			[ "icon" ] = "inv_misc_ticket_tarot_beasts_01",
			[ "name" ] = "Ace of Beasts",
			[ "quality" ] = 3,
			[ "itemId" ] = 19227,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 6996,
			[ "icon" ] = "inv_helmet_27",
			[ "name" ] = "Dragonskin Cowl",
			[ "quality" ] = 3,
			[ "itemId" ] = 22225,
			[ "raidBosses" ] = { 662 }
		}, {
			[ "id" ] = 6989,
			[ "icon" ] = "inv_boots_cloth_03",
			[ "name" ] = "Faith Healer's Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 22247,
			[ "raidBosses" ] = { 661 }
		}, {
			[ "id" ] = 7029,
			[ "icon" ] = "inv_misc_book_06",
			[ "name" ] = "Tome of the Lost",
			[ "quality" ] = 3,
			[ "itemId" ] = 22253,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7023,
			[ "icon" ] = "inv_helmet_62",
			[ "name" ] = "Spellweaver's Turban",
			[ "quality" ] = 3,
			[ "itemId" ] = 22267,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7028,
			[ "icon" ] = "inv_jewelry_talisman_09",
			[ "name" ] = "Draconic Infused Emblem",
			[ "quality" ] = 3,
			[ "itemId" ] = 22268,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7025,
			[ "icon" ] = "inv_misc_cape_20",
			[ "name" ] = "Shadow Prowler's Cloak",
			[ "quality" ] = 3,
			[ "itemId" ] = 22269,
			[ "raidBosses" ] = { 665 }
		}, {
			[ "id" ] = 7014,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_helmet_30",
			[ "name" ] = "Ironweave Cowl",
			[ "quality" ] = 3,
			[ "itemId" ] = 22302,
			[ "raidBosses" ] = { 664 }
		}, {
			[ "id" ] = 7009,
			[ "classes" ] = { "Priest", "Mage", "Warlock" },
			[ "icon" ] = "inv_boots_cloth_05",
			[ "name" ] = "Ironweave Boots",
			[ "quality" ] = 3,
			[ "itemId" ] = 22311,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7021,
			[ "icon" ] = "inv_staff_07",
			[ "name" ] = "Lord Valthalak's Staff of Command",
			[ "quality" ] = 3,
			[ "itemId" ] = 22335,
			[ "raidBosses" ] = { 664 }
		}, {
			[ "id" ] = 7020,
			[ "icon" ] = "inv_shield_02",
			[ "name" ] = "Draconian Aegis of the Legion",
			[ "quality" ] = 3,
			[ "itemId" ] = 22336,
			[ "raidBosses" ] = { 664 }
		}, {
			[ "id" ] = 7016,
			[ "icon" ] = "inv_misc_cape_19",
			[ "name" ] = "Shroud of Domination",
			[ "quality" ] = 3,
			[ "itemId" ] = 22337,
			[ "raidBosses" ] = { 664 }
		}, {
			[ "id" ] = 7019,
			[ "icon" ] = "inv_jewelry_ring_35",
			[ "name" ] = "Rune Band of Wizardry",
			[ "quality" ] = 3,
			[ "itemId" ] = 22339,
			[ "raidBosses" ] = { 664 }
		}, {
			[ "id" ] = 7015,
			[ "icon" ] = "inv_jewelry_necklace_04",
			[ "name" ] = "Pendant of Celerity",
			[ "quality" ] = 3,
			[ "itemId" ] = 22340,
			[ "raidBosses" ] = { 664 }
		}, {
			[ "id" ] = 7018,
			[ "icon" ] = "inv_pants_09",
			[ "name" ] = "Leggings of Torment",
			[ "quality" ] = 3,
			[ "itemId" ] = 22342,
			[ "raidBosses" ] = { 664 }
		}, {
			[ "id" ] = 7017,
			[ "icon" ] = "inv_gauntlets_11",
			[ "name" ] = "Handguards of Savagery",
			[ "quality" ] = 3,
			[ "itemId" ] = 22343,
			[ "raidBosses" ] = { 664 }
		}, {
			[ "id" ] = 6953,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_misc_stonetablet_11",
			[ "name" ] = "Tablet of Flame Shock VI",
			[ "quality" ] = 3,
			[ "itemId" ] = 23320,
			[ "raidBosses" ] = { 656 }
		}, {
			[ "id" ] = 7012,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_misc_book_02",
			[ "name" ] = "Book of Ferocious Bite VI",
			[ "quality" ] = 3,
			[ "itemId" ] = 24101,
			[ "raidBosses" ] = { 663 }
		}, {
			[ "id" ] = 7044,
			[ "classes" ] = { "Rogue" },
			[ "icon" ] = "inv_misc_book_14",
			[ "name" ] = "Manual of Eviscerate IX",
			[ "quality" ] = 3,
			[ "itemId" ] = 24102,
			[ "raidBosses" ] = { 666 }
		}, {
			[ "id" ] = 7055,
			[ "icon" ] = "inv_misc_ribbon_01",
			[ "name" ] = "Fashion Coin",
			[ "quality" ] = 2,
			[ "itemId" ] = 51217,
			[ "raidBosses" ] = { 656, 657, 661, 662, 663, 664, 665 }
		}, {
			[ "id" ] = 7794,
			[ "icon" ] = "inv_misc_note_01",
			[ "name" ] = "Plans: Blazefury Circlet",
			[ "quality" ] = 4,
			[ "itemId" ] = 70213,
			[ "raidBosses" ] = { 666 }
		} }
	},
	[ 109 ] = {
		[ "name" ] = "Tower of Karazhan",
		[ "reference" ] = "TK",
		[ "raidBosses" ] = { {
			[ "id" ] = 669,
			[ "name" ] = "Unknown boss",
			[ "position" ] = 0
		}, {
			[ "id" ] = 671,
			[ "name" ] = "Anomalus",
			[ "position" ] = 1
		}, {
			[ "id" ] = 672,
			[ "name" ] = "Keeper Gnarlmoon",
			[ "position" ] = 2
		}, {
			[ "id" ] = 673,
			[ "name" ] = "Ima'ghaol",
			[ "position" ] = 3
		}, {
			[ "id" ] = 680,
			[ "name" ] = "King's Council",
			[ "position" ] = 4
		}, {
			[ "id" ] = 674,
			[ "name" ] = "Incantagos",
			[ "position" ] = 5
		}, {
			[ "id" ] = 676,
			[ "name" ] = "Sanv Tas'dal",
			[ "position" ] = 6
		}, {
			[ "id" ] = 677,
			[ "name" ] = "Rupturan the Broken",
			[ "position" ] = 7
		}, {
			[ "id" ] = 678,
			[ "name" ] = "Mephistroth",
			[ "position" ] = 8
		}, {
			[ "id" ] = 679,
			[ "name" ] = "Kruul",
			[ "position" ] = 9
		}, {
			[ "id" ] = 675,
			[ "name" ] = "Echo of Medivh",
			[ "position" ] = 10
		}, {
			[ "id" ] = 681,
			[ "name" ] = "Trash mobs",
			[ "position" ] = 11
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 7079,
			[ "icon" ] = "inv_gizmo_03",
			[ "name" ] = "Broken Lock",
			[ "quality" ] = 1,
			[ "itemId" ] = 16747,
			[ "raidBosses" ] = { 669 }
		}, {
			[ "id" ] = 7602,
			[ "icon" ] = "ability_mount_ridinghorse",
			[ "name" ] = "Mechanical Horse",
			[ "quality" ] = 4,
			[ "itemId" ] = 20739,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7603,
			[ "icon" ] = "inv_misc_enggizmos_08",
			[ "name" ] = "Draconic Focus",
			[ "quality" ] = 4,
			[ "itemId" ] = 41373,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7604,
			[ "icon" ] = "inv_enchant_shardglowingsmall",
			[ "name" ] = "Enchanted Amethyst",
			[ "quality" ] = 4,
			[ "itemId" ] = 41403,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7605,
			[ "icon" ] = "inv_enchant_dustsoul",
			[ "name" ] = "Cosmic Residue",
			[ "quality" ] = 4,
			[ "itemId" ] = 41412,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7606,
			[ "icon" ] = "inv_enchant_essencemysticalsmall",
			[ "name" ] = "Anima of the Guardian",
			[ "quality" ] = 4,
			[ "itemId" ] = 41414,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7607,
			[ "icon" ] = "inv_misc_gem_pearl_06",
			[ "name" ] = "Soul of the Dreadlord",
			[ "quality" ] = 5,
			[ "itemId" ] = 41447,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7608,
			[ "icon" ] = "inv_misc_gem_diamond_01",
			[ "name" ] = "Pristine Ley Crystal",
			[ "quality" ] = 4,
			[ "itemId" ] = 41485,
			[ "raidBosses" ] = { 671, 680, 679, 674, 678, 677, 675, 681 }
		}, {
			[ "id" ] = 7219,
			[ "icon" ] = "inv_jewelry_talisman_mana",
			[ "name" ] = "Ley-attuned Choker",
			[ "quality" ] = 4,
			[ "itemId" ] = 55078,
			[ "raidBosses" ] = { 672 }
		}, {
			[ "id" ] = 7221,
			[ "icon" ] = "inv_chest_leather_04",
			[ "name" ] = "Ravenkeeper's Frenzied Embrace",
			[ "quality" ] = 4,
			[ "itemId" ] = 55079,
			[ "raidBosses" ] = { 672 }
		}, {
			[ "id" ] = 7216,
			[ "icon" ] = "inv_bloodmoon",
			[ "name" ] = "Bloodmoon, Sickle of the Murderous Flight",
			[ "quality" ] = 4,
			[ "itemId" ] = 55080,
			[ "raidBosses" ] = { 672 }
		}, {
			[ "id" ] = 7220,
			[ "icon" ] = "inv_boots_05",
			[ "name" ] = "Manadrenched Feather Slippers",
			[ "quality" ] = 4,
			[ "itemId" ] = 55081,
			[ "raidBosses" ] = { 672 }
		}, {
			[ "id" ] = 7320,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_qirajidol_war",
			[ "name" ] = "Idol of Laceration",
			[ "quality" ] = 4,
			[ "itemId" ] = 55082,
			[ "raidBosses" ] = { 672 }
		}, {
			[ "id" ] = 7218,
			[ "icon" ] = "inv_helmet_24",
			[ "name" ] = "Crown of the Wildpack",
			[ "quality" ] = 4,
			[ "itemId" ] = 55083,
			[ "raidBosses" ] = { 672 }
		}, {
			[ "id" ] = 7222,
			[ "icon" ] = "inv_misc_cape_10",
			[ "name" ] = "Torn Wings of Midnight",
			[ "quality" ] = 4,
			[ "itemId" ] = 55084,
			[ "raidBosses" ] = { 672 }
		}, {
			[ "id" ] = 7253,
			[ "icon" ] = "inv_pants_cloth_13",
			[ "name" ] = "Magispark Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 55085,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7252,
			[ "icon" ] = "inv_belt_22",
			[ "name" ] = "Magehunter Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 55086,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7247,
			[ "icon" ] = "inv_misc_gem_variety_01",
			[ "name" ] = "Jewel of Wild Magics",
			[ "quality" ] = 4,
			[ "itemId" ] = 55087,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7229,
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Dragonclaw Gauntlets",
			[ "quality" ] = 4,
			[ "itemId" ] = 55088,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7245,
			[ "icon" ] = "inv_bracer_02",
			[ "name" ] = "Bands of the Surgebreaker",
			[ "quality" ] = 4,
			[ "itemId" ] = 55089,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7254,
			[ "icon" ] = "inv_shield_23",
			[ "name" ] = "Scaleshield of Azure Flight",
			[ "quality" ] = 4,
			[ "itemId" ] = 55090,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7251,
			[ "classes" ] = { "Paladin", "Priest", "Shaman", "Druid" },
			[ "icon" ] = "inv_jewelry_ring_saphire",
			[ "name" ] = "Loop of Infused Renewal",
			[ "quality" ] = 4,
			[ "itemId" ] = 55091,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7300,
			[ "icon" ] = "inv_boots_plate_06",
			[ "name" ] = "Manahide Slippers",
			[ "quality" ] = 4,
			[ "itemId" ] = 55092,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7215,
			[ "icon" ] = "inv_enchant_dustsoul",
			[ "name" ] = "Remains of Overwhelming Power",
			[ "quality" ] = 4,
			[ "itemId" ] = 55093,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7294,
			[ "icon" ] = "inv_jewelry_ring_jade",
			[ "name" ] = "Medivh's Hindsight",
			[ "quality" ] = 4,
			[ "itemId" ] = 55094,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7298,
			[ "icon" ] = "inv_misc_cape_18",
			[ "name" ] = "Cloak of the Bloody Ravager",
			[ "quality" ] = 4,
			[ "itemId" ] = 55095,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7301,
			[ "icon" ] = "inv_weapon_crossbow_18",
			[ "name" ] = "Phase-shifting Crossbow",
			[ "quality" ] = 4,
			[ "itemId" ] = 55096,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7297,
			[ "icon" ] = "inv_jewelry_necklace_08",
			[ "name" ] = "Choker of Chromatic Power",
			[ "quality" ] = 4,
			[ "itemId" ] = 55097,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7299,
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Gloves of Nourishment",
			[ "quality" ] = 4,
			[ "itemId" ] = 55098,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7248,
			[ "icon" ] = "inv_pants_plate_18",
			[ "name" ] = "Leysteel Legplates",
			[ "quality" ] = 4,
			[ "itemId" ] = 55099,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7228,
			[ "icon" ] = "inv_checkmate",
			[ "name" ] = "Checkmate",
			[ "quality" ] = 4,
			[ "itemId" ] = 55100,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7233,
			[ "icon" ] = "inv_misc_book_11",
			[ "name" ] = "King's Edict",
			[ "quality" ] = 4,
			[ "itemId" ] = 55101,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7232,
			[ "icon" ] = "inv_chest_plate08",
			[ "name" ] = "Insomnius' Retribution",
			[ "quality" ] = 4,
			[ "itemId" ] = 55102,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7235,
			[ "icon" ] = "btnlancelot_ring",
			[ "name" ] = "Royal Seal of Greymane",
			[ "quality" ] = 4,
			[ "itemId" ] = 55103,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7234,
			[ "icon" ] = "inv_boots_chain_05",
			[ "name" ] = "Pawn's Advance",
			[ "quality" ] = 4,
			[ "itemId" ] = 55104,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7223,
			[ "icon" ] = "inv_bishophat",
			[ "name" ] = "Bishop's Reverence",
			[ "quality" ] = 4,
			[ "itemId" ] = 55105,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7302,
			[ "icon" ] = "inv_bracer_10",
			[ "name" ] = "Bindings of Contained Magic",
			[ "quality" ] = 4,
			[ "itemId" ] = 55106,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7291,
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Gloves of Leyline Convergence",
			[ "quality" ] = 4,
			[ "itemId" ] = 55107,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7288,
			[ "icon" ] = "inv_demonhornshoulders",
			[ "name" ] = "Dreadslayer Shoulderblades",
			[ "quality" ] = 4,
			[ "itemId" ] = 55108,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7292,
			[ "icon" ] = "inv_trickster_leggings",
			[ "name" ] = "Legwraps of Meticulous Planning",
			[ "quality" ] = 4,
			[ "itemId" ] = 55109,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7293,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_misc_book_07",
			[ "name" ] = "Libram of the Eternal Tower",
			[ "quality" ] = 4,
			[ "itemId" ] = 55110,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7289,
			[ "icon" ] = "spell_shadow_soulgem",
			[ "name" ] = "Eye of Dormant Corruption",
			[ "quality" ] = 4,
			[ "itemId" ] = 55111,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7295,
			[ "icon" ] = "inv_jewelry_talisman_health",
			[ "name" ] = "Pendant of Forgiven Mistakes",
			[ "quality" ] = 4,
			[ "itemId" ] = 55112,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7279,
			[ "icon" ] = "inv_demonhornhelmet",
			[ "name" ] = "Dreadslayer Horns",
			[ "quality" ] = 4,
			[ "itemId" ] = 55113,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7287,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_qirajidol_sage",
			[ "name" ] = "Totem of Broken Earth",
			[ "quality" ] = 4,
			[ "itemId" ] = 55114,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7284,
			[ "icon" ] = "inv_riftcarver",
			[ "name" ] = "Riftcarver's Implement",
			[ "quality" ] = 4,
			[ "itemId" ] = 55115,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7283,
			[ "icon" ] = "inv_draeneispear",
			[ "name" ] = "Raka'shishi, Spear of the Adrift Hunt",
			[ "quality" ] = 4,
			[ "itemId" ] = 55116,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7281,
			[ "icon" ] = "inv_belt_22",
			[ "name" ] = "Girdle of the Faded Primals",
			[ "quality" ] = 4,
			[ "itemId" ] = 55117,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7282,
			[ "icon" ] = "inv_misc_cape_06",
			[ "name" ] = "Kum'isha's Tattered Drape",
			[ "quality" ] = 4,
			[ "itemId" ] = 55118,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7280,
			[ "icon" ] = "inv_helmet_24",
			[ "name" ] = "Forgotten Hide Helm",
			[ "quality" ] = 4,
			[ "itemId" ] = 55119,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7271,
			[ "icon" ] = "inv_elementalfist",
			[ "name" ] = "Al'Kazeth, Claw of Ruptured Elements",
			[ "quality" ] = 4,
			[ "itemId" ] = 55120,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7272,
			[ "icon" ] = "inv_bulwark",
			[ "name" ] = "Bulwark of Enduring Earth",
			[ "quality" ] = 4,
			[ "itemId" ] = 55121,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7273,
			[ "icon" ] = "inv_pants_mail_15",
			[ "name" ] = "Earthquake Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 55122,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7276,
			[ "icon" ] = "inv_jewelry_ring_bronze",
			[ "name" ] = "Loop of Hardened Slate",
			[ "quality" ] = 4,
			[ "itemId" ] = 55123,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7278,
			[ "icon" ] = "inv_misc_gem_diamond_02",
			[ "name" ] = "Pure Jewel of Draenor",
			[ "quality" ] = 4,
			[ "itemId" ] = 55124,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7275,
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Handwraps of Dead Winds",
			[ "quality" ] = 4,
			[ "itemId" ] = 55125,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7277,
			[ "icon" ] = "inv_shoulder_14",
			[ "name" ] = "Mantle of the Drifting Stars",
			[ "quality" ] = 4,
			[ "itemId" ] = 55126,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7241,
			[ "icon" ] = "inv_demonaxe",
			[ "name" ] = "Shar'tateth, the Shattered Edge",
			[ "quality" ] = 4,
			[ "itemId" ] = 55127,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7238,
			[ "icon" ] = "ability_thunderbolt",
			[ "name" ] = "Comet Signaller",
			[ "quality" ] = 4,
			[ "itemId" ] = 55128,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7239,
			[ "icon" ] = "inv_desecration",
			[ "name" ] = "Desecration",
			[ "quality" ] = 4,
			[ "itemId" ] = 55129,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7244,
			[ "icon" ] = "inv_bracer_09",
			[ "name" ] = "Wristwraps of Exiled Radiance",
			[ "quality" ] = 4,
			[ "itemId" ] = 55130,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7242,
			[ "icon" ] = "inv_misc_stonetablet_02",
			[ "name" ] = "Shieldrender Talisman",
			[ "quality" ] = 4,
			[ "itemId" ] = 55131,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7240,
			[ "icon" ] = "spell_shadow_lifedrain",
			[ "name" ] = "Pendant of Purified Demon's Blood",
			[ "quality" ] = 4,
			[ "itemId" ] = 55132,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7311,
			[ "icon" ] = "inv_weapon_shortblade_27",
			[ "name" ] = "Claw of the Mageweaver",
			[ "quality" ] = 4,
			[ "itemId" ] = 55133,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7315,
			[ "classes" ] = { "Mage" },
			[ "icon" ] = "inv_wand_05",
			[ "name" ] = "Rod of Permafrost",
			[ "quality" ] = 4,
			[ "itemId" ] = 55134,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7316,
			[ "icon" ] = "inv_misc_monsterscales_09",
			[ "name" ] = "Shard of Leyflow",
			[ "quality" ] = 4,
			[ "itemId" ] = 55135,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7224,
			[ "icon" ] = "inv_misc_cape_21",
			[ "name" ] = "Chain-Cloak of the Rookguard",
			[ "quality" ] = 4,
			[ "itemId" ] = 55274,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7317,
			[ "icon" ] = "inv_misc_gem_amethyst_03",
			[ "name" ] = "Slivers of Nullification",
			[ "quality" ] = 4,
			[ "itemId" ] = 55275,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7290,
			[ "icon" ] = "inv_mallet",
			[ "name" ] = "Forgotten Raven's Mallet",
			[ "quality" ] = 4,
			[ "itemId" ] = 55276,
			[ "raidBosses" ] = { 675 }
		}, {
			[ "id" ] = 7318,
			[ "icon" ] = "inv_theend",
			[ "name" ] = "The End of All Ambitions",
			[ "quality" ] = 4,
			[ "itemId" ] = 55277,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7313,
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Ques' Gauntlets of Precision",
			[ "quality" ] = 4,
			[ "itemId" ] = 55278,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7296,
			[ "icon" ] = "inv_staff_22",
			[ "name" ] = "Branch of Resolute Defense",
			[ "quality" ] = 4,
			[ "itemId" ] = 55279,
			[ "raidBosses" ] = { 671 }
		}, {
			[ "id" ] = 7305,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_stormhowl_sabatons",
			[ "name" ] = "Boots of Elemental Fury",
			[ "quality" ] = 4,
			[ "itemId" ] = 55280,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7309,
			[ "classes" ] = { "Shaman" },
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Gauntlets of Elemental Fury",
			[ "quality" ] = 4,
			[ "itemId" ] = 55281,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7306,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_lionheart_sabatons",
			[ "name" ] = "Boots of the Grand Crusader",
			[ "quality" ] = 4,
			[ "itemId" ] = 55282,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7310,
			[ "classes" ] = { "Paladin" },
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Gauntlets of the Grand Crusader",
			[ "quality" ] = 4,
			[ "itemId" ] = 55283,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7308,
			[ "icon" ] = "inv_belt_08",
			[ "name" ] = "Dragunovi's Sash of Domination",
			[ "quality" ] = 4,
			[ "itemId" ] = 55284,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7217,
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Crite's Holy Hands",
			[ "quality" ] = 4,
			[ "itemId" ] = 55285,
			[ "raidBosses" ] = { 672 }
		}, {
			[ "id" ] = 7314,
			[ "icon" ] = "inv_jewelry_ring_33",
			[ "name" ] = "Ring of Holy Light",
			[ "quality" ] = 4,
			[ "itemId" ] = 55286,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7265,
			[ "icon" ] = "inv_weapon_bonebow2",
			[ "name" ] = "Rain of Spiders",
			[ "quality" ] = 4,
			[ "itemId" ] = 55346,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7267,
			[ "icon" ] = "inv_thunderfall",
			[ "name" ] = "Thunderfall, Stormhammer of the Chief Thane",
			[ "quality" ] = 4,
			[ "itemId" ] = 55347,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7260,
			[ "icon" ] = "inv_kirel",
			[ "name" ] = "Kirel'narak, the Death Sentence",
			[ "quality" ] = 4,
			[ "itemId" ] = 55348,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7264,
			[ "icon" ] = "inv_nethraka",
			[ "name" ] = "Nethraka, Wing of Oblivion",
			[ "quality" ] = 4,
			[ "itemId" ] = 55349,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7255,
			[ "icon" ] = "inv_censer",
			[ "name" ] = "Censer of Soulwarding",
			[ "quality" ] = 4,
			[ "itemId" ] = 55350,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7270,
			[ "icon" ] = "inv_belt_22",
			[ "name" ] = "Turalyon's Hope",
			[ "quality" ] = 4,
			[ "itemId" ] = 55351,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7256,
			[ "icon" ] = "inv_misc_cape_20",
			[ "name" ] = "Cloak of Rapid Regeneration",
			[ "quality" ] = 4,
			[ "itemId" ] = 55352,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7262,
			[ "icon" ] = "inv_jewelry_ring_nightbreaker",
			[ "name" ] = "Mephistroth's Cunning",
			[ "quality" ] = 4,
			[ "itemId" ] = 55353,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7259,
			[ "icon" ] = "inv_gauntlets_05",
			[ "name" ] = "Khadgar's Guidance",
			[ "quality" ] = 4,
			[ "itemId" ] = 55354,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7261,
			[ "icon" ] = "inv_belt_03",
			[ "name" ] = "Memory of the Last Guardian",
			[ "quality" ] = 4,
			[ "itemId" ] = 55355,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7263,
			[ "icon" ] = "inv_bracer_18",
			[ "name" ] = "Netherwrought Bracers",
			[ "quality" ] = 4,
			[ "itemId" ] = 55356,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7266,
			[ "icon" ] = "inv_belt_26",
			[ "name" ] = "Sash of the Grand Betrayal",
			[ "quality" ] = 4,
			[ "itemId" ] = 55357,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7676,
			[ "icon" ] = "inv_jewelry_necklace_29",
			[ "name" ] = "Ephemeral Pendant",
			[ "quality" ] = 4,
			[ "itemId" ] = 55482,
			[ "raidBosses" ] = { 680, 679, 678, 677 }
		}, {
			[ "id" ] = 7231,
			[ "classes" ] = { "Warrior", "Priest", "Warlock", "Druid" },
			[ "icon" ] = "inv_boots_cloth_01",
			[ "name" ] = "Ethereal Boots of Conquest",
			[ "quality" ] = 4,
			[ "itemId" ] = 55483,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7230,
			[ "classes" ] = { "Paladin", "Hunter", "Rogue", "Shaman", "Mage" },
			[ "icon" ] = "inv_boots_cloth_01",
			[ "name" ] = "Ethereal Boots of Ascendancy",
			[ "quality" ] = 4,
			[ "itemId" ] = 55484,
			[ "raidBosses" ] = { 680 }
		}, {
			[ "id" ] = 7286,
			[ "classes" ] = { "Warrior", "Priest", "Warlock", "Druid" },
			[ "icon" ] = "inv_shoulder_17",
			[ "name" ] = "Shifting Mantle of Conquest",
			[ "quality" ] = 4,
			[ "itemId" ] = 55485,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7285,
			[ "classes" ] = { "Paladin", "Hunter", "Rogue", "Shaman", "Mage" },
			[ "icon" ] = "inv_shoulder_17",
			[ "name" ] = "Shifting Mantle of Ascendancy",
			[ "quality" ] = 4,
			[ "itemId" ] = 55486,
			[ "raidBosses" ] = { 676 }
		}, {
			[ "id" ] = 7679,
			[ "icon" ] = "inv_helmet_57",
			[ "name" ] = "Fractured Crown of Conquest",
			[ "quality" ] = 4,
			[ "itemId" ] = 55487,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7680,
			[ "icon" ] = "inv_helmet_57",
			[ "name" ] = "Fractured Crown of Ascendancy",
			[ "quality" ] = 4,
			[ "itemId" ] = 55488,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7237,
			[ "classes" ] = { "Warrior", "Priest", "Warlock", "Druid" },
			[ "icon" ] = "inv_pants_plate_11",
			[ "name" ] = "Brutal Leggings of Conquest",
			[ "quality" ] = 4,
			[ "itemId" ] = 55489,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7236,
			[ "classes" ] = { "Paladin", "Hunter", "Rogue", "Shaman", "Mage" },
			[ "icon" ] = "inv_pants_plate_11",
			[ "name" ] = "Brutal Leggings of Ascendancy",
			[ "quality" ] = 4,
			[ "itemId" ] = 55490,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7683,
			[ "icon" ] = "inv_chest_cloth_45",
			[ "name" ] = "Nathrezim Armor of Treachery",
			[ "quality" ] = 4,
			[ "itemId" ] = 55491,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7684,
			[ "icon" ] = "inv_chest_cloth_45",
			[ "name" ] = "Nathrezim Armor of Deceit",
			[ "quality" ] = 4,
			[ "itemId" ] = 55492,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7243,
			[ "icon" ] = "inv_belt_27",
			[ "name" ] = "Worldbreaker Girdle",
			[ "quality" ] = 4,
			[ "itemId" ] = 55506,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7246,
			[ "icon" ] = "inv_jewelry_necklace_28",
			[ "name" ] = "Choker of Terminal Arcanum",
			[ "quality" ] = 4,
			[ "itemId" ] = 55507,
			[ "raidBosses" ] = { 674 }
		}, {
			[ "id" ] = 7307,
			[ "icon" ] = "inv_jewelry_necklace_27",
			[ "name" ] = "Brand of Karazhan",
			[ "quality" ] = 4,
			[ "itemId" ] = 55508,
			[ "raidBosses" ] = { 681 }
		}, {
			[ "id" ] = 7274,
			[ "icon" ] = "inv_stone_10",
			[ "name" ] = "Fragments of Aldrach",
			[ "quality" ] = 4,
			[ "itemId" ] = 55510,
			[ "raidBosses" ] = { 677 }
		}, {
			[ "id" ] = 7689,
			[ "icon" ] = "inv_wand_06",
			[ "name" ] = "Hellflame",
			[ "quality" ] = 4,
			[ "itemId" ] = 55511,
			[ "raidBosses" ] = { 679 }
		}, {
			[ "id" ] = 7258,
			[ "icon" ] = "inv_shoulder_01",
			[ "name" ] = "Forgotten Hide Pauldrons",
			[ "quality" ] = 4,
			[ "itemId" ] = 55512,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7269,
			[ "icon" ] = "inv_chest_chain_07",
			[ "name" ] = "Tunic of Demonic Deception",
			[ "quality" ] = 4,
			[ "itemId" ] = 55513,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7691,
			[ "icon" ] = "btnheartamulet",
			[ "name" ] = "Heart of Mephistroth",
			[ "quality" ] = 4,
			[ "itemId" ] = 55579,
			[ "raidBosses" ] = { 678 }
		}, {
			[ "id" ] = 7692,
			[ "icon" ] = "spell_shadow_summonfelhunter",
			[ "name" ] = "Felforged Dreadhound",
			[ "quality" ] = 4,
			[ "itemId" ] = 92082,
			[ "raidBosses" ] = { 678 }
		} }
	},
	[ 110 ] = {
		[ "name" ] = "Cla'ckora",
		[ "reference" ] = "WBCC",
		[ "raidBosses" ] = { {
			[ "id" ] = 670,
			[ "name" ] = "Cla'ckora",
			[ "position" ] = 0
		} },
		[ "raidItems" ] = { {
			[ "id" ] = 7088,
			[ "icon" ] = "inv_misc_birdbeck_02",
			[ "name" ] = "The Abyssal Pincer",
			[ "quality" ] = 4,
			[ "itemId" ] = 55494,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7089,
			[ "icon" ] = "inv_spear_04",
			[ "name" ] = "Zandalar Predator's Glaive",
			[ "quality" ] = 4,
			[ "itemId" ] = 55495,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7095,
			[ "icon" ] = "inv_jewelry_necklace_25",
			[ "name" ] = "Polychromatic Pearl Necklace",
			[ "quality" ] = 4,
			[ "itemId" ] = 55496,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7098,
			[ "classes" ] = { "Druid" },
			[ "icon" ] = "inv_qirajidol_night",
			[ "name" ] = "Idol of Ebb and Flow",
			[ "quality" ] = 4,
			[ "itemId" ] = 55497,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7091,
			[ "icon" ] = "inv_misc_shell_03",
			[ "name" ] = "Clamshell of the Depths",
			[ "quality" ] = 4,
			[ "itemId" ] = 55498,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7093,
			[ "icon" ] = "inv_belt_35",
			[ "name" ] = "Primal Murloc Scale Belt",
			[ "quality" ] = 4,
			[ "itemId" ] = 55499,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7094,
			[ "icon" ] = "inv_bracer_17",
			[ "name" ] = "Barnacle Vambraces",
			[ "quality" ] = 4,
			[ "itemId" ] = 55500,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7097,
			[ "icon" ] = "inv_ore_arcanite_02",
			[ "name" ] = "Sphere of the Endless Gulch",
			[ "quality" ] = 4,
			[ "itemId" ] = 55501,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7092,
			[ "icon" ] = "inv_pants_12",
			[ "name" ] = "Iceplated Leggings",
			[ "quality" ] = 4,
			[ "itemId" ] = 55502,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7096,
			[ "icon" ] = "inv_jewelry_ring_38",
			[ "name" ] = "Loop of Unceasing Frost",
			[ "quality" ] = 4,
			[ "itemId" ] = 55503,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7090,
			[ "icon" ] = "inv_generic_anchor",
			[ "name" ] = "Anchor of the Wavecutter",
			[ "quality" ] = 4,
			[ "itemId" ] = 55504,
			[ "raidBosses" ] = { 670 }
		}, {
			[ "id" ] = 7213,
			[ "icon" ] = "inv_misc_birdbeck_02",
			[ "name" ] = "Spawn of Cla'ckora",
			[ "quality" ] = 3,
			[ "itemId" ] = 92020,
			[ "raidBosses" ] = { 670 }
		} }
	}
}

return M
