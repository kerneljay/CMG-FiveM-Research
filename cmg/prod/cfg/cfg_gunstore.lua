local cfgWeapons = CMG.loadModule("cfg/weapons")

local cfg = {}

cfg.CMGGunStores = {
	--{x,y,z,blid id, blip colour,blip name}
	--["GUN_MODEL"] = {array of guns {name,price,ammo price}
	["Legion"] = {
		_config = {
			{
				vector3(-3171.5241699219,1087.5402832031,19.838747024536),
				vector3(-330.56484985352,6083.6059570312,30.454759597778),
			},
			154,1,"Melee Store",{""},true,
			hasPurgeDiscount = true,
			inBlackMarket = true,
			allowPlatDiscount = true,
		},
		["WEAPON_BROOMCMG"] = {"Broom",2500,0,{""},"w_me_broom"},
		["WEAPON_BUTTERFLYCMG"] = {"Butterfly Knife",7500,0,{""},"w_me_butterfly"},
		["WEAPON_CLEAVERCMG"] = {"Cleaver",7500,0,{""},"w_me_cleaver"},
		["WEAPON_SHOVELCMG"] = {"Shovel",2500,0,{""},"w_me_shovel"},
		["WEAPON_SHANKCMG"] = {"Shank",7500,0,{""},"w_me_shank"},
		["WEAPON_KITCHENKNIFECMG"] = {"Kitchen Knife",7500,0,{""},"w_me_kitchenknife"},
		["WEAPON_GUITARCMG"] = {"Guitar",2500,0,{""},"w_me_guitar"},
		["WEAPON_DILDOCMG"] = {"Dildo",2500,0,{""},"w_me_dildo"},
		["WEAPON_HAMAXEHAMCMG"] = {"Hammer+Axe+Hammer",2500,0,{""},"w_me_hamaxeham"},
		["WEAPON_TOILETBRUSHCMG"] = {"Toilet Brush",2500,0,{""},"w_me_toiletbrush"},
		["WEAPON_TRAFFICSIGNCMG"] = {"Traffic Sign",2500,0,{""},"w_me_trafficsign"},
		["WEAPON_SCREWDRIVER"] = {"Screwdriver",nil,nil,{"js.whitelisted"},"w_me_screwdriver"},
		["WEAPON_BATSPIKE"] = {"Bat with spikes",nil,nil,{"bat.whitelisted"},"w_me_batspike"},
		["WEAPON_SWITCHBLADE"] = {"Switch Blade",7500,0,{""},"w_me_switchblade"},
		["WEAPON_FLASHLIGHT"] = {"Flashlight",2500,0,{""},"w_me_flashlight"},
		["WEAPON_WOODENBATCMG"] = {"Baseball Bat",2500,0,{""},"w_me_woodenbat"},
		["WEAPON_ANIMESWORD"] = {"Anime One Sword",nil,nil,{"anime.whitelisted"},"w_me_animesword"},
		["WEAPON_REDQUEEN"] = {"Red Queen Sword",nil,nil,{"redqueen.whitelisted"},"w_me_redqueen"},
		["WEAPON_FIREAXECMG"] = {"Fireaxe",2500,0,{""},"w_me_fireaxe"},
		["WEAPON_MACHETE2"] = {"Machete 2",7500,0,{"machete2.whitelisted"},"w_me_machete2"},
		["WEAPON_CRICKETBATCMG"] = {"Cricket Bat",2500,0,{""},"w_me_cricketbat"},
		["WEAPON_SLEDGEHAMMER"] = {"Sledge Hammer",2500,0,{""},"w_me_sledgehammer"},
		["WEAPON_CROWBAR"] = {"Crowbar",10000,0,{""},"w_me_crowbar"},
		["WEAPON_MACHETE"] = {"Machete",7500,0,{""},"w_me_machette_lr"},
		["WEAPON_CROWBARCMG"] = {"Bonesaw",nil,nil,{"rusty.whitelisted"},"w_me_crowbarcmg"},
		["WEAPON_RONIN"] = {"Ronins Sword",nil,nil,{"ronin.whitelisted"},"w_me_ronin"},
		["WEAPON_CRUTCH"] = {"Crutch",nil,nil,{"crutch.whitelisted"},"w_me_crutch"},
		["WEAPON_EVIL"] = {"Shadows of Evil Apothicon Sword",nil,nil,{"evil.whitelisted"},"w_me_evil"},
		["WEAPON_BRICK"] = {"Brick",nil,nil,{"harra.whitelisted","brick.whitelisted"},"w_me_brick"},
		["WEAPON_HAWK"] = {"Tomahawk",nil,nil,{"billy.whitelisted"},"w_me_hawk"},
		["WEAPON_KIRITO"] = {"Kiritos Sword",nil,nil,{"kirito.whitelisted"},"w_me_kirito"},
		["WEAPON_SHITSTICK"] = {"Shit Stick",nil,nil,{"vlad.whitelisted"},"w_me_shitstick"},
		["WEAPON_PILUM"] = {"Roman Pilum",nil,nil,{"pilum.whitelisted"},"w_me_pilum"},
		["WEAPON_MACHETECMG"] = {"Casa Blanca Reaper Machete",nil,nil,{"machete.whitelisted"},"w_me_machete"},
		["WEAPON_HORSEBAT"] = {"Hobby Horse Bat",nil,nil,{"horsebat.whitelisted"},"w_me_horsebat"},
		["WEAPON_DAEDRIC"] = {"Daedric sword",nil,nil,{"daedric.whitelisted"},"w_me_daedric"},
		["WEAPON_STORMBREAKER"] = {"STORMBREAKER",nil,nil,{"minepup.whitelisted","storm.whitelisted"},"w_me_stormbreaker"},
		["WEAPON_DAGGER"] = {"Ancient Dagger",nil,nil,{"dagger.whitelisted"},"w_me_dagger"},
		["WEAPON_KATANACMG"] = {"Katana",nil,nil,{"renbo.whitelisted","trotsky.whitelisted","gibbed.whitelisted"},"w_me_katana"},
		["WEAPON_KATANACMG2"] = {"Katana",nil,nil,{"katana.whitelisted"},"w_me_katana2"},
		["WEAPON_NIGHTSLICER"] = {"Night Slicer",nil,nil,{"nightslicer.whitelisted"},"w_me_nightslicer"},
		["WEAPON_LIGHTSABER2"] = {"Crossguard Light Saber",nil,nil,{"lightsaber.whitelisted"},"w_me_lightsaber2"},
		["WEAPON_LIGHTSABER3"] = {"LightSaber Type 3",nil,nil,{"lightsaber3.whitelisted"},"w_me_lightsaber3"},
		["WEAPON_KATANA3"] = {"Thermal Katana",nil,nil,{"katana3.whitelisted"},"w_me_katana3"},
		["WEAPON_CORVO"] = {"Corvo Attano Sword",nil,nil,{"corvo.whitelisted"},"w_me_corvo"},
		["WEAPON_SWEETTOOTH"] = {"Sweet Tooth's Machete",nil,nil,{"sweet.whitelisted"},"w_me_sweettooth"},
		["WEAPON_PONY"] = {"My Little Pony Twilight",nil,nil,{"pony.whitelisted"},"w_me_pony"},
		["WEAPON_LIGHTSABER"] = {"LightSaber",nil,nil,{"light.whitelisted"},"w_me_lightsaber"},
		["WEAPON_KICKASS"] = {"Kickass Stick",nil,nil,{"kickass.whitelisted"},"w_me_kickass"},
		["WEAPON_BASEBALLBAT"] = {"Marucci AP5 Baseball Bat",nil,nil,{"baseballbat.whitelisted"},"w_me_baseballbat"},
		--["WEAPON_WUXIAFAN"] = {"WU XIA FAN",nil,nil,{"bob.whitelisted"},"w_me_wuxiafan"}, --?Removed/Bought back from Bob
		["WEAPON_BREAD"] = {"Bread Stick",nil,nil,{"hero.whitelisted","breadstick.whitelisted"},"w_me_bread"},
		["WEAPON_BLADE"] = {"Captain America Shield",nil,nil,{"blade.whitelisted"},"w_me_blade"},
		["WEAPON_SWORD"] = {"Dishonored Corvo Attano Sword",nil,nil,{"og.whitelisted","corvo2.whitelisted"},"w_me_sword"},
		["WEAPON_NAILBAT"] = {"Lucille",nil,nil,{"kc.whitelisted"},"w_me_nailbat"},
		["WEAPON_AWCMG"] = {"AW Combat Knife",nil,nil,{"minepup.whitelisted","combatknife.whitelisted"},"w_me_aw"},
		["WEAPON_LONGSWORD"] = {"Medieval Longsword",nil,nil,{"rekta.whitelisted"},"w_me_longsword"},
		["WEAPON_STALKER"] = {"STALKER KNIFE",nil,nil,{"jamie.whitelisted"},"w_me_stalker"},
		["WEAPON_AXE"] = {"COD AXE",nil,nil,{"codaxe.whitelisted"},"w_me_axe"},
		["WEAPON_THANOSSWORD"] = {"Thanos' Sword",nil,nil,{"thanossword.whitelisted"},"w_me_thanossword"},
		["WEAPON_WWSHIELD"] = {"Wonder Woman Shield",nil,nil,{"wwshield.whitelisted"},"w_me_wwshield"}, --tbx-39019921a80442-720d46
		["WEAPON_DIAMONDPICKAXE"] = {"Minecraft Pickaxe",nil,nil,{"diamondpickaxe.whitelisted"},"w_me_diamondpickaxe"}, --tbx-26420021a45917-593499
		["WEAPON_HALOSWORD"] = {"Halo Sword",nil,nil,{"halosword.whitelisted"},"w_me_halosword"}, --tbx-54720021a36373-e915ca
		["WEAPON_DIAMONDSWORD"] = {"Diamond Sword",nil,nil,{"diamondsword.whitelisted"},"w_me_diamondsword"}, --tbx-32020121a60894-d7ae02
		["WEAPON_TRIADSKATANA"] = {"Triads Katana",nil,nil,{"triadskatana.whitelisted"},"w_me_triadskatana"}, --tbx-10920321a51769-288a85
		["WEAPON_TENKENKATANA"] = {"Tenken Katana",nil,nil,{"tenkenkatana.whitelisted"},"w_me_tenkenkatana"}, --tbx-38820321a66692-4bd3a1
		["WEAPON_CLAWKNUCKLE"] = {"CLAWKNUCKLE",nil,nil,{"clawknuckle.whitelisted"},"w_me_clawknuckle"}, --tbx-61921221a71530-0443c1
		["WEAPON_BATTLEAXEGOLFCLUB"] = {"Battle Axe GolfClub",nil,nil,{"battleaxegolfclub.whitelisted"},"w_me_battleaxegolfclub"}, --tbx-74621021a82974-287bf7
		["WEAPON_MACHETTE"] = {"Dez & Troy Machette",nil,nil,{"dtmachette.whitelisted"},"w_me_machette"}, --tbx-51121121a57407-9093db
		["WEAPON_TOMAHAWK"] = {"Downrange Tomahawk",nil,nil,{"downtomahawk.whitelisted"},"w_me_tomahawk"}, --tbx-12820521a81220-cfe4a0
		["WEAPON_HALBERD"] = {"Monster Hunter Demonlord Halberd",nil,nil,{"halberd.whitelisted"},"w_me_halberd"}, --tbx-93620621a39641-686491
		["WEAPON_TIGERBLADE"] = {"Tiger Blade",nil,nil,{"tigerblade.whitelisted"},"w_me_tigerblade"}, --tbx-20120121a66791-b477dc
		["WEAPON_KATANASWORD"] = {"Katana Sword",nil,nil,{"katanasword.whitelisted"},"w_me_katanasword"}, --tbx-33620421a69614-0fa2fd
		["WEAPON_RAINBOWSMASH"] = {"Rainbow Smash Pickaxe",nil,nil,{"rainbowsmash.whitelisted"},"w_me_rainbowsmash"}, --tbx-30520821a2199-ca494d
		["WEAPON_CANDYAXE"] = {"Candy Axe",nil,nil,{"candyaxe.whitelisted"},"w_me_candyaxe"}, --tbx-59820321a78155-7c185f
		--["WEAPON_EXBLADE"] = {"Executioners Blade",nil,nil,{"executionersblade.whitelisted"},"w_me_executionersblade"}, --tbx-86421121a82636-887385 --?Removed/Bought back from Bob
		--["WEAPON_SAMEHADA"] = {"Samehada",nil,nil,{"samehada.whitelisted"},"w_me_samehada"}, --tbx-73421121a62684-c69009 --?Removed/Bought back from Bob
		["WEAPON_PICKSQUEAK"] = {"Pick Squeak",nil,nil,{"picksqueak.whitelisted"},"w_me_picksqueak"}, --tbx-74825621a66693-7e3d87
		["WEAPON_ELEMENTALSHLONG"] = {"Elemental Shlong",nil,nil,{"elementalshlong.whitelisted"},"w_me_elementalshlong"}, --tbx-59020721a76786-89839c
		["WEAPON_ELEMENTALKWEFF"] = {"Elemental Kweff",nil,nil,{"elementalkweff.whitelisted"},"w_me_elementalkweff"}, --tbx-40320721a76914-9cdf86
		["WEAPON_ELEMENTALCHINGER"] = {"Elemental Chinger",nil,nil,{"elementalchinger.whitelisted"},"w_me_elementalchinger"}, --tbx-76220721a77046-10d06c
		["WEAPON_ELEMENTALRAMBO"] = {"Elemental Rambo",nil,nil,{"elementalrambo.whitelisted"},"w_me_elementalrambo"}, --tbx-77220721a76853-7da281
		["WEAPON_ELEMENTALDIPPER"] = {"Elemental Dipper",nil,nil,{"elementaldipper.whitelisted"},"w_me_elementaldipper"}, --tbx-24320721a76977-b650f1
		["WEAPON_ELEMENTALCHEFFER"] = {"Elemental Cheffer",nil,nil,{"elementalcheffer.whitelisted"},"w_me_elementalcheffer"}, --tbx-87620721a77168-865259
		["WEAPON_STELLA"] = {"Stella Can",nil,nil,{"stella.whitelisted"},"w_me_stella"}, --tbx-73625621a59951-95df82
		["WEAPON_BLOODYCROWBAR"] = {"Bloody Crowbar",nil,nil,{"bloodycrowbar.whitelisted"},"w_me_bloodycrowbar"}, --tbx-14725921a65513-2256a2
		["WEAPON_PISTOLMELEE"] = {"Pistol Melee",nil,nil,{"pistolmelee.whitelisted"},"w_me_pistolmelee"}, --tbx-34227621a68705-3611f0
		["WEAPON_TUKTUKBAT"] = {"TukTuk Bat",nil,nil,{"tuktukbat.whitelisted"},"w_me_tuktukbat"}, --tbx-35426921a66881-6b5056
		["WEAPON_SLIPPER"] = {"Slipper",nil,nil,{"tuktukbat.whitelisted"},"w_me_slipper"}, --tbx-67026021a47688-253d5c
		["WEAPON_MINTYAXE"] = {"Minty Axe",nil,nil,{"mintyaxe.whitelisted"},"w_me_mintyaxe"}, --tbx-67026021a47688-253d5c
		["WEAPON_REAPER"] = {"Reaper",nil,nil,{"reaper.whitelisted"},"w_me_reaper"}, --tbx-13628021a85126-88fd88
		["WEAPON_CRANE"] = {"Mini Crane",nil,nil,{"crane.whitelisted"},"w_me_crane"}, --tbx-33826521a67733-e896a9
		["WEAPON_SCYTHE"] = {"Grims Scythe",nil,nil,{"scythe.whitelisted"},"w_me_scythe"}, --tbx-25429221a73882-93e38c
		["WEAPON_VISIONPICKAXE"] = {"Vision Pickaxe",nil,nil,{"visionpickaxe.whitelisted"},"w_me_visionpickaxe"}, --tbx-82430421a85883-62d4b0
		["WEAPON_KEYBOARDAXE"] = {"Keyboard Axe",nil,nil,{"keyboardaxe.whitelisted"},"w_me_keyboardaxe"}, --tbx-11612021a83117-540b77
		["WEAPON_THUNDERCRASGPICKAXE"] = {"Thunder Crash Pickaxe",nil,nil,{"thundercrashpickaxe.whitelisted"},"w_me_thundercrashpickaxe"}, --tbx-41529621a68492-72007e
		["WEAPON_KIRITOSSWORD"] = {"Kirito's Sword",nil,nil,{"kiritosword.whitelisted"},"w_me_kiritossword"}, --tbx-18629621a64137-dd9e44
		["WEAPON_FORTNITEPICKAXE"] = {"Fortnite Pickaxe",nil,nil,{"fortnitepickaxe.whitelisted"},"w_me_fortnitepickaxe"}, --https://cdn.discordapp.com/attachments/902861246590779422/902861457258086430/melleeee.jpg
		["WEAPON_PERFORATOR"] = {"The Perforator Baseball Bat",nil,nil,{"perforator.whitelisted"},"w_me_perforator"}, --tbx-72630321a55248-7cdc90
		["WEAPON_BANANABAT"] = {"Bannana Bat",nil,nil,{"bananabat.whitelisted"},"w_me_bananabat"}, --tbx-48130921a84642-0267e6
		["WEAPON_SLURPAXE"] = {"Slurp Axe",nil,nil,{"slurpaxe.whitelisted"},"w_me_slurpaxe"}, --tbx-33830921a57860-fc5ad5
		["WEAPON_SINGULARITYKNIFE"] = {"Singularity Knife",nil,nil,{"singularityknife.whitelisted"},"w_me_singularityknife"}, --tbx-20934921a70320-a68321
		["WEAPON_DARKINSCYTHE"] = {"Darkin Scythe",nil,nil,{"darkinscythe.whitelisted"},"w_me_darkinscythe"}, --tbx-922622a63728-abf463
		["WEAPON_BATTERINGRAM"] = {"Battering Ram",nil,nil,{"batteringram.whitelisted"},"w_me_batteringram"}, --tbx-157122a86363-0f3b7c
		["WEAPON_TURTLE"] = {"Turtle",nil,nil,{"turtle.whitelisted"},"w_me_turtle"}, --tbx-13930221a83196-eaa625
		["WEAPON_SHISHA"] = {"Shisha",nil,nil,{"shisha.whitelisted"},"w_me_shisha"}, --tbx-747122a78612-8a308a
		["WEAPON_DORITO"] = {"Dorito",nil,nil,{"dorito.whitelisted"},"w_me_dorito"}, --tbx-747122a78612-8a308a
		["WEAPON_DORITOBAG"] = {"Dorito Bag",nil,nil,{"doritobag.whitelisted"},"w_me_doritobag"}, --tbx-75035021a82947-567b83
		["WEAPON_GIANTAF1"] = {"Giant AF1",nil,nil,{"giantaf1.whitelisted"},"w_me_giantaf1"}, --tbx-9806222a61247-418bac
		["WEAPON_MERTRIXPAN"] = {"Mertrix Pan",nil,nil,{"mertrixpan.whitelisted"},"w_me_mertrixpan"}, --tbx-7338722a81845-098dda
		["WEAPON_BONESAW"] = {"Bone Saw",nil,nil,{"bonesaw.whitelisted"},"w_me_bonesaw"}, --tbx-48410722a28809-e5c554
		["WEAPON_BANDPOLE"] = {"Band Pole",nil,nil,{"bandpole.whitelisted"},"w_me_bandpole"}, --tbx-48410722a28809-e5c554
		["WEAPON_CHRISSCREWDRIVER"] = {"Chris Screwdriver",nil,nil,{"chrisscrewdriver.whitelisted"},"w_me_chrisscrewdriver"}, --tbx-24110522a73509-cd9670
		["WEAPON_TRAFFICCONE"] = {"Traffic Cone",nil,nil,{"trafficcone.whitelisted"},"w_me_trafficcone"}, --tbx-28410022a54215-ce3881
		["WEAPON_SMALLSPOON"] = {"Small Spoon",nil,nil,{"smallspoon.whitelisted"},"w_me_smallspoon"}, --tbx-54713422a52642-330682
		["WEAPON_PIGEON"] = {"Pigeon",nil,nil,{"pigeon.whitelisted"},"w_me_pigeon"}, --tbx-14213822a55953-a9a2c0
		["WEAPON_VAPEPEN"] = {"Vape Pen",nil,nil,{"vapepen.whitelisted"},"w_me_vapepen"}, --tbx-5238622a3057-4b81a8
		["WEAPON_BOXINGGLOVE"] = {"Boxing Glove",nil,nil,{"boxingglove.whitelisted"},"w_me_boxingglove"}, --tbx-31915322a46719-1da322
		["WEAPON_ZAMORAKSWORD"] = {"Zamorak Sword",nil,nil,{"zamoraksword.whitelisted"},"w_me_zamoraksword"}, --tbx-89415122a79364-0e1c8e
		["WEAPON_MGATOMAHAWK"] = {"Glenda",nil,nil,{"mgatomahawk.whitelisted"},"w_me_mgatomahawk"}, --tbx-14229621a39592-0d4178
		["WEAPON_ARMADYLGODSWORD"] = {"Armadyl Godsword",nil,nil,{"armadylgodsword.whitelisted"},"w_me_armadylgodsword"}, --tbx-42116022a80578-80bb98
		["WEAPON_SARADOMINGODSWORD"] = {"Saradomin Godsword",nil,nil,{"saradomingodsword.whitelisted"},"w_me_saradomingodsword"}, --tbx-70916522a75551-df9b6c
		["WEAPON_REYQUARTERSTAFF"] = {"Rey's Quarterstaff",nil,nil,{"reyquarterstaff.whitelisted"},"w_me_reysquaterstaff"}, --tbx-97317322a7517-b767fe
		["WEAPON_LBOZOMOSIN"] = {"LBOZO",nil,nil,{"lbozomosin.whitelisted"},"w_me_lbozomosin"}, --tbx-39517722a45439-3d3e62
		["WEAPON_ZOMBIEKILLER"] = {"Zombie Killer",nil,nil,{"zombiekiller.whitelisted"},"w_me_zombiekiller"}, --tbx-96530121a55589-1b49e9 (Multiple purchases in Tebex)
		["WEAPON_PALETTAPOLIZIA"] = {"Paletta Polizia",nil,nil,{"palettapolizia.whitelisted"},"w_me_palettapolizia"}, --tbx-26822222a57622-ae51d2
		["WEAPON_MRFLOATER"] = {"Mr Floater AWP",nil,nil,{"mrfloater.whitelisted"},"w_me_mrfloater"}, --tbx-30322222a61712-4001ff
		["WEAPON_PETERSDUSTERS"] = {"Peters Dusters",nil,nil,{"petersdusters.whitelisted"},"w_me_petersdusters"}, --tbx-40523622a74378-d5e8b3
		["WEAPON_NIERSWORD"] = {"Peters Sword",nil,nil,{"petersword.whitelisted"},"w_me_niersword"}, --tbx-39824822a25853-dd3688
		["WEAPON_SOOKITKNUCKLES"] = {"Sookit Knuckles",nil,nil,{"sookitknuckles.whitelisted"},"w_me_sookitknuckles"}, --tbx-26822222a57622-ae51d2
		["WEAPON_LIGHTSABER4"] = {"Lightsaber Type 4",nil,nil,{"lightsaber4.whitelisted"},"w_me_lightsaber4"}, --tbx-45126222a72847-8bbd76
		["WEAPON_ANGELDAGGER"] = {"Angel Dagger",nil,nil,{"angeldagger.whitelisted"},"w_me_angeldagger"}, --F923-00CF
		["WEAPON_AWPMELEE"] = {"AWP Hyperbeast MK2",nil,nil,{"awpmelee.whitelisted"},"w_me_awpmelee"}, --259d-a753
		["WEAPON_LDNUMASK"] = {"LDNU Mask",nil,nil,{"ldnumask.whitelisted"},"w_me_ldnumask"}, --7A13-ED15
		["WEAPON_FISHHOOK"] = {"Fish Hook",nil,nil,{"fishhook.whitelisted"},"w_me_fishhook"}, --29C7-A4A7
		["WEAPON_OGNEONS"] = {"OG Neons",nil,nil,{"ogneons.whitelisted"},"w_me_ogneons"}, --E5EB-1381
		["WEAPON_RING"] = {"Golden Ring",nil,nil,{"ringknuckles.whitelisted"},"w_me_ring"}, --D105-F7F3
		["WEAPON_NUGGETMEAL"] = {"Nugget Meal",nil,nil,{"nuggetmeal.whitelisted"},"w_me_nuggetmeal"}, --C759-F3FF
		["WEAPON_EGGO"] = {"The Waffler",nil,nil,{"eggo.whitelisted"},"w_me_eggo"}, --2819-DFB5
		["WEAPON_CAPYBARA"] = {"Capybara",nil,nil,{"capybara.whitelisted"},"w_me_capybara"}, --270D-D3DF
		["WEAPON_NOKIABRICKBAT"] = {"Toms Phone",nil,nil,{"nokiabrickbat.whitelisted"},"w_me_nokiabrickbat"}, --AFC3-24CF
		["WEAPON_WOTSIT"] = {"Wotsit",nil,nil,{"wotsit.whitelisted"},"w_me_wotsit"}, --E16B-02D7
		["WEAPON_FLOWER_BOUQUET"] = {"Flower Bouquet",nil,nil,{"flowerbouquet.whitelisted"},"w_me_flowerbouquet"}, --C6DD-EAE3
		["WEAPON_ARCANEHAMMER"] = {"Jayce's Hammer",nil,nil,{"arcanehammer.whitelisted"},"w_me_arcanehammer"}, --7A47-5557
		["WEAPON_TAMPON"] = {"Tampon",nil,nil,{"weapontampon.whitelisted"},"w_me_tampon"}, --91D9-BA07
		["WEAPON_ICESWORD"] = {"Ice Sword",nil,nil,{"icesword.whitelisted"},"w_me_icesword"}, --9B35-A63D
		["WEAPON_MISFITSSIGN"] = {"Don't play with the Misfits",nil,nil,{"misfitssign.whitelisted"},"w_me_misfitssign"}, --B33F-6CB3
		["WEAPON_PIKACHU"] = {"Ekko's Pikachu",nil,nil,{"pikachumelee.whitelisted"},"w_me_pikachu"}, --2853-588D
		["WEAPON_SAKURAKATANA"] = {"Ekko's Sakura Katana",nil,nil,{"sakurakatana.whitelisted"},"w_me_sakurakatana"}, --E29F-36A1
		["WEAPON_RIFTEDGEPICKAXE"] = {"Rift Edge Pickaxe",nil,nil,{"riftedgepickaxe.whitelisted"},"w_me_riftedgepickaxe"}, --8DE5-254B
		["WEAPON_UWUPAPER"] = {"UwU Paper Bat",nil,nil,{"uwupaper.whitelisted"},"w_me_uwupaper"}, --C41B-89CB
		["WEAPON_JOINT"] = {"Joint",nil,nil,{"weaponjoint.whitelisted"},"w_me_joint"}, --9C8D-8747
		["WEAPON_PUSHDAGGER"] = {"Push Dagger",nil,nil,{"pushdagger.whitelisted"},"w_me_pushdagger"}, --CE65-D62F
		["WEAPON_SNICKERS"] = {"Ryd's Snickers Bar",nil,nil,{"weaponsnickers.whitelisted"},"w_me_snickers"}, --B963-1F5F
		["WEAPON_BONGMELEE"] = {"Bong",nil,nil,{"bongmelee.whitelisted"},"w_me_bongmelee"}, --E00B-3C6D
		["WEAPON_BABYYODA"] = {"Baby Yoda",nil,nil,{"babyyoda.whitelisted"},"w_me_babyyoda"}, --EFD1-09E7
		["WEAPON_PEAKYHAT"] = {"Peaky Hat",nil,nil,{"peakyhat.whitelisted"},"w_me_peakyhat"}, --1849-2CBD
		["WEAPON_BRIANGRIFFIN"] = {"Brian Griffin",nil,nil,{"briangriffin.whitelisted"},"w_me_briangriffin"}, --0E63-47CD
		["WEAPON_TWIX"] = {"Ryd's Twix Bar",nil,nil,{"weapontwix.whitelisted"},"w_me_twix"}, --A6DF-191D
		["WEAPON_STEWIEGRIFFIN"] = {"Stewie Griffin",nil,nil,{"stewiegriffin.whitelisted"},"w_me_stewiegriffin"}, --9E81-2F2D
		["WEAPON_KENNY"] = {"Kenny",nil,nil,{"weaponkenny.whitelisted"},"w_me_kenny"}, --154B-531D
		["WEAPON_MORTY"] = {"Morty",nil,nil,{"weaponmorty.whitelisted"},"w_me_morty"}, --16FD-6E49
		["WEAPON_PICKLERICK"] = {"Pickle Rick",nil,nil,{"weaponpicklerick.whitelisted"},"w_me_picklerick"}, --AB19-91AB
		["WEAPON_RICK"] = {"Rick",nil,nil,{"weaponrick.whitelisted"},"w_me_rick"}, --AFC9-444B
		["WEAPON_GENGAR"] = {"Gengar",nil,nil,{"weapongengar.whitelisted"},"w_me_gengar"}, --6497-ADFD
		["WEAPON_SQUIRTLE"] = {"Canuckle's Squirtle",nil,nil,{"weaponsquirtle.whitelisted"},"w_me_squirtle"}, --F2FB-4C89
		["WEAPON_CHARMANDER"] = {"Vortex's Charmander",nil,nil,{"weaponcharmander.whitelisted"},"w_me_charmander"}, --CD35-4D01
		["WEAPON_TOYBUG"] = {"Bugs Toy Bug",nil,nil,{"weapontoybug.whitelisted"},"w_me_toybug"}, --6927-9C37
		["WEAPON_GEODUDE"] = {"Geodude",nil,nil,{"weapongeodude.whitelisted"},"w_me_geodude"}, --257B-6029
		["WEAPON_RAICHU"] = {"Raichu",nil,nil,{"weaponraichu.whitelisted"},"w_me_raichu"}, --CA8F-5BD9
		["WEAPON_BABYMIKE"] = {"Baby Mike",nil,nil,{"weaponbabymike.whitelisted"},"w_me_babymike"}, --84C7-3A37
		["WEAPON_POCHITA"] = {"Pochita",nil,nil,{"weaponpochita.whitelisted"},"w_me_pochita"}, --580B-2ECB
		["WEAPON_MEW"] = {"Mew",nil,nil,{"weaponmew.whitelisted"},"w_me_mew"}, --82E9-9553
		["WEAPON_KIRBY"] = {"Kirby",nil,nil,{"weaponkirby.whitelisted"},"w_me_kirby"}, --92BB-B09F
		["WEAPON_LOSTMARY"] = {"Lost Mary",nil,nil,{"lostmary.whitelisted"},"w_me_lostmary"}, --E043-2B2B
		["WEAPON_CHARIZARD"] = {"Charizard",nil,nil,{"weaponcharizard.whitelisted"},"w_me_charizard"}, --C94D-C687
		["WEAPON_PEPSIBAT"] = {"Donnie's Pepsi Bat",nil,nil,{"pepsibat.whitelisted"},"w_me_pepsibat"}, --D42B-0985
		["WEAPON_TOAD"] = {"Jayz Toad",nil,nil,{"weapontoad.whitelisted"},"w_me_toad"}, --3D41-B51D
		["WEAPON_BLASTOICE"] = {"Blastoise",nil,nil,{"blastoice.whitelisted"},"w_me_blastoice"}, --D191-CBD3
		["WEAPON_PRIMEBOTTLE"] = {"Prime Bottle",nil,nil,{"primebottle.whitelisted"},"w_me_primebottle"}, --78FD-6295
		["WEAPON_SONIC"] = {"Sonic",nil,nil,{"weaponsonic.whitelisted"},"w_me_sonic"}, --4BBD-CD7E
		["WEAPON_PAYPAL"] = {"Paypal",nil,nil,{"weaponpaypal.whitelisted"},"w_me_paypal"}, --E3FA-8696
		["WEAPON_HUSKY"] = {"Ekko's Tena",nil,nil,{"weaponhusky.whitelisted"},"w_me_husky"}, --FC83-7A9F
		["WEAPON_HELLOKITTY"] = {"Hello Kitty",nil,nil,{"weaponhellokitty.whitelisted"},"w_me_hellokitty"}, --FC83-7A9F
		["WEAPON_DARKSABER"] = {"Dark Saber",nil,nil,{"darksaber.whitelisted"},"w_me_darksaber"}, --C27B-85BF
		["WEAPON_KUNAI"] = {"Kunai",nil,nil,{"weaponkunai.whitelisted"},"w_me_kunai"}, --CB0B-B7EF
		["WEAPON_RITUALKATANA"] = {"Ritual's Katana",nil,nil,{"ritualkatana.whitelisted"},"w_me_ritualkatana"}, --58D1-8C9E
		["WEAPON_MANDALORIAN"] = {"Mandalorian",nil,nil,{"mandalorian.whitelisted"},"w_me_mandalorian"}, --AB76-7DAF
		["WEAPON_DARTHMAUL"] = {"Darth Maul",nil,nil,{"darthmaul.whitelisted"},"w_me_darthmaul"}, --D48B-3D6F
		["WEAPON_SPIDERMAN"] = {"Spiderman",nil,nil,{"weaponspiderman.whitelisted"},"w_me_spiderman"}, --ABE3-8D1A
		["WEAPON_PEPERAMI"] = {"Soph's Peperami",nil,nil,{"peperami.whitelisted"},"w_me_peperami"}, --C7F1-97F9
		["WEAPON_GYARADOS"] = {"Gyarados",nil,nil,{"gyarados.whitelisted"},"w_me_gyarados"}, --BC98-A1DC
		["WEAPON_HOTDOG"] = {"Sausage",nil,nil,{"weaponhotdog.whitelisted"},"w_me_hotdog"}, --0C35-E89D
		["WEAPON_ICECREAM"] = {"Licks Ice cream",nil,nil,{"weaponicecream.whitelisted"},"w_me_icecream"}, --1089-D1BC
		["WEAPON_MASTERSWORD"] = {"Master Sword",nil,nil,{"weaponmastersword.whitelisted"},"w_me_mastersword"}, --RemovedPreviously
		["WEAPON_KUBIKIRIBOCHO"] = {"Kubikiribocho",nil,nil,{"weaponkubikiribocho.whitelisted"},"w_me_kubikiribocho"}, --2719-80E4
		["WEAPON_BEVSHANDBAG"] = {"Bevs Handbag",nil,nil,{"weaponbevshandbag.whitelisted"},"w_me_bevshandbag"}, --CF09-A963
		["WEAPON_PINKSABER"] = {"Canuckle's UwU Saber",nil,nil,{"weaponpinksaber.whitelisted"},"w_me_pinksaber"}, --677B-39E3
		["WEAPON_MINIBOMBER"] = {"Eitsu's Bomber",nil,nil,{"weaponminibomber.whitelisted"},"w_me_minibomber"}, --CE5B-3347
		["WEAPON_AHSOKA"] = {"Ahsoka",nil,nil,{"weaponahsoka.whitelisted"},"w_me_ahsoka"}, --06B8-58CC
		["WEAPON_USGWRENCH"] = {"The Usual Suspects Wrench",nil,nil,{"weaponusgwrench.whitelisted"},"w_me_usgwrench"}, --E559-07BB
		["WEAPON_RACOON"] = {"Racoon",nil,nil,{"weaponracoon.whitelisted"},"w_me_racoon"}, --B38E-D0BD
		["WEAPON_CANUCKLESEBUD"] = {"Canuckle's E-Bud",nil,nil,{"weaponcanucklesebud.whitelisted"},"w_me_canucklesebud"}, --FDBF-2375
		["WEAPON_CANUCKLESMONKEY"] = {"Canuckle's Monkey",nil,nil,{"weaponcanucklesmonkey.whitelisted"},"w_me_canucklesmonkey"}, --7F89-E7C1
		["WEAPON_CALSBLOODTHIRST"] = {"Cal's Bloodthirst",nil,nil,{"weaponcalsbloodthirst.whitelisted"},"w_me_calsbloodthirst"}, --B9A5-D154
		["WEAPON_STATGEARFOLDINGKNIFE"] = {"StatGear Folding Knife",nil,nil,{"weaponstatgearfoldingknife.whitelisted"},"w_me_statgearfoldingknife"}, --CD92-8C30
		["WEAPON_6SBACKPACK"] = {"6S Backpack",nil,nil,{"weapon6sbackpack.whitelisted"},"w_me_6sbackpack"}, --9EC9-8B7F
		["WEAPON_FOOPAKATANA"] = {"Ronin's Katana",nil,nil,{"weaponfoopakatana.whitelisted"},"w_me_foopakatana"}, --4727-CCD2
		["WEAPON_MUJASZK"] = {"Muja's ZK",nil,nil,{"weaponmujaszk.whitelisted"},"w_me_mujaszk"}, --3C81-D8BD
		["WEAPON_TEEMOSWAND"] = {"Teemo's Wand",nil,nil,{"weaponteemoswand.whitelisted"},"w_me_teemoswand"}, --B3E6-D9B2
		["WEAPON_SHARKY"] = {"Sharky",nil,nil,{"weaponsharky.whitelisted"},"w_me_sharky"}, --B972-6C92
		["WEAPON_BLACKLOTUSBACKPACK"] = {"Black Lotus Backpack",nil,nil,{"weaponblacklotusbackpack.whitelisted"},"w_me_blacklotusbackpack"}, --1646-B2C0
		["WEAPON_NORTHDONZBAT"] = {"The North Donz",nil,nil,{"weaponnorthdonzbat.whitelisted"},"w_me_northdonzbat"}, --9DB6-8451
		["WEAPON_WALKINGSTICK"] = {"Walking Stick",nil,nil,{"weaponwalkingstick.whitelisted"},"w_me_walkingstick"}, --67F8-B6DD
		["WEAPON_CHEESE"] = {"Cheese",nil,nil,{"weaponcheese.whitelisted"},"w_me_cheese"}, --5569-5353
		["WEAPON_SABRESWORD"] = {"Sabre Sword",nil,nil,{"weaponsabresword.whitelisted"},"w_me_sabresword"}, --AB40-2095
		["WEAPON_CANUCKLECANDYAXE"] = {"Candy Axe",nil,nil,{"weaponcanucklecandyaxe.whitelisted"},"w_me_canucklecandyaxe"}, --17C8-9732
		["WEAPON_DEMITRI"] = {"Demitri",nil,nil,{"weapondemitri.whitelisted"},"w_me_demitri"}, --A19E-93F9
		["WEAPON_BUSH"] = {"Big Ol' Hairy Bush",nil,nil,{"weaponbush.whitelisted"},"w_me_bush"}, --99CA-716F
		["WEAPON_FLUTTER"] = {"Flutter",nil,nil,{"weaponflutter.whitelisted"},"w_me_flutter"}, --4C09-88E8
		["WEAPON_BABYOIL"] = {"Baby Oil",nil,nil,{"weaponbabyoil.whitelisted"},"w_me_babyoil"}, --126D-2D3A
		["WEAPON_DOLLGIRL"] = {"Doll Girl",nil,nil,{"weapondollgirl.whitelisted"},"w_me_dollgirl"}, --B44D-2AD4
		["WEAPON_DAVECAT"] = {"Dave",nil,nil,{"weapondavecat.whitelisted"},"w_me_davecat"}, --2252-DF6B
		["WEAPON_TOYRPG"] = {"Toy RPG",nil,nil,{"weapontoyrpg.whitelisted"},"w_me_toyrpg"}, --0272-C34C
		["WEAPON_LOSTMCRINGS"] = {"Lost MC Rings",nil,nil,{"weaponlostmcrings.whitelisted"},"w_me_lostmcrings"}, --7CF7-E5FA
		["WEAPON_ACEREVENGE"] = {"Ace's Revenge",nil,nil,{"weaponacerevenge.whitelisted"},"w_me_acerevenge"}, --66C5-570B
		["WEAPON_XMASAXE"] = {"Minty Axe",nil,nil,{"weaponxmasaxe.whitelisted"},"w_me_xmasaxe"}, --D8E6-301D
		["WEAPON_ICEBREAKER"] = {"Ice Breaker",nil,nil,{"weaponicebreaker.whitelisted"},"w_me_icebreaker"}, --78AA-8A79
		["WEAPON_SPEAROFHEAVEN"] = {"Inverted Spear of Heaven",nil,nil,{"weaponspearofheaven.whitelisted"},"w_me_spearofheaven"}, --1C41-5A4A
		["WEAPON_GDCCHAIN"] = {"Crybaby Chain",nil,nil,{"weapongdcchain.whitelisted"},"w_me_gdcchain"}, --8433-061B
		["WEAPON_REDLINECHAIN"] = {"Redline Chain",nil,nil,{"weaponredlinechain.whitelisted"},"w_me_redlinechain"}, --CFBC-939A
		["WEAPON_LIFESTYLECHAIN"] = {"Lyfestyle Chain",nil,nil,{"weaponlifestylechain.whitelisted"},"w_me_lifestylechain"}, --08A6-BDFC
		["WEAPON_BRANZCHAIN"] = {"Branz Chain",nil,nil,{"weaponbranzchain.whitelisted"},"w_me_branzchain"}, --D80E-D831
		["WEAPON_SIXTHSENSECHAIN"] = {"Sixth Sense Chain",nil,nil,{"weaponsixthsensechain.whitelisted"},"w_me_sixthsensechain"}, --0708-0F20
		["WEAPON_GOODBOY"] = {"Good Boy",nil,nil,{"weapongoodboy.whitelisted"},"w_me_goodboy"}, --F601-7EBA
		["WEAPON_MKTCHAIN"] = {"MKT Chain",nil,nil,{"weaponmktchain.whitelisted"},"w_me_mktchain"}, --8B8B-C226
		["WEAPON_ETHANCHAIN"] = {"Ethan's Chain",nil,nil,{"weaponethanchain.whitelisted"},"w_me_ethanchain"}, --D300-44A2
		["WEAPON_CODKNUCKLES"] = {"COD Knuckles",nil,nil,{"codknuckles.whitelisted"},"w_me_codknuckles"}, --Unknown
		["WEAPON_NEEDLE"] = {"Needle",nil,nil,{"og.whitelisted","needle.whitelisted"},"w_me_needle"}, --Unknown
		["WEAPON_STUBIXCHAIN"] = {"Stubix Chain",nil,nil,{"weaponstubixchain.whitelisted"},"w_me_stubixchain"}, --7883-27B3
		["WEAPON_DWLMG"] = {"DW LMG",nil,nil,{"dwlmg.whitelisted"},"w_me_dwlmg"}, --679D-C829
		["WEAPON_RAMSHARD"] = {"RAM Shard",nil,nil,{"weaponramshard.whitelisted"},"w_me_ramshard"}, --CEAE-BFAB
		["WEAPON_BLUSCHAIN"] = {"Blu's Chain",nil,nil,{"weaponbluschain.whitelisted"},"w_me_bluschain"}, --D2B0-2AFE
		["WEAPON_BLACKLOTUSCHAIN"] = {"Black Lotus Chain",nil,nil,{"weaponblacklotuschain.whitelisted"},"w_me_blacklotuschain"}, --D0CA-95D6
		["WEAPON_LOSTRIOTSHIELD"] = {"Lost Riot Shield",nil,nil,{"weaponlostriotshield.whitelisted"},"w_me_lostriotshield"}, --797F-3214
		["WEAPON_FEELBETTER"] = {"FeelBetter",nil,nil,{"weaponfeelbetter.whitelisted"},"w_me_feelbetter"}, --0FDE-6CCA
		--? End Shank Melee (DO NOT DELETE - USED BY CI)
		--["GADGET_PARACHUTE"] = {"Out of stock!",0,0,{""}},
	},
	["SmallArmsDealer"] = {
		_config = {
			{},
			110,1,"Small Arms Dealer",{""},true,
			hasPurgeDiscount = true,
			inBlackMarket = true,
			allowPlatDiscount = true,
		},
		["WEAPON_BERETTACMG"] = {"Berreta M9 Pistol",40000,20000,{""},"w_pi_beretta"},
		["WEAPON_M1911CMG"] = {"M1911 Pistol",50000,25000,{""},"w_pi_m1911"},
		["WEAPON_ROOK"] = {"Rook 9mm",60000,30000,{""},"w_pi_rook"},
		["WEAPON_PYTHONCMG"] = {"Python .357 Revolver",50000,20000,{""},"w_pi_pythoncmg"},
		["WEAPON_TEC9CMG"] = {"Tec-9",50000,20000,{""},"w_sb_tec9"},
		["WEAPON_M1935CMG"]  = {"Browning M1935",nil,nil,{"callum.whitelisted","brown.whitelisted","break.whitelisted"},"w_pi_m135"},
		["WEAPON_MAKAROVCMG"]  = {"Makarov",nil,nil,{"winalot.whitelisted"},"w_pi_makarov"},
		["WEAPON_MAKAROV2"]  = {"Makarov",nil,nil,{"makarov.whitelisted"},"w_pi_makarov2"},
		["WEAPON_CZ75B"]  = {"CZ 75 B",nil,nil,{"cz.whitelisted"},"w_pi_cz75b"},
		["WEAPON_GHOST"] = {"Soul Ghost",nil,nil,{"sghost.whitelisted"},"w_pi_ghost"},
		["WEAPON_BLACKICEGLOCK"] = {"Black Ice Glock",nil,nil,{"iceglock.whitelisted"},"w_pi_blackiceglock"},
		["WEAPON_SWCOMBATPISTOL"] = {"Smith & Wesson Combat Pistol",nil,nil,{"swcombat.whitelisted"},"w_pi_swcombatpistol"},
		["WEAPON_TECHG17"] = {"Tech G17",nil,nil,{"techg17.whitelisted"},"w_pi_techg17"},
		["WEAPON_GOLDENDEAGLEV2"]  = {"Black Gold Deagle",120000,60000,{"gdeagle.whitelisted"},"w_pi_goldendeaglev2"},
		["WEAPON_DEAGLEGUNGIRL"]  = {"Deagle Gun Girl",120000,60000,{"deaglegungirl.whitelisted"},"w_pi_deaglegungirl"},
		["WEAPON_DEADPOOLDEAGLE"]  = {"Deadpool Deagle",120000,60000,{"deadpooldeagle.whitelisted"},"w_pi_deadpooldeagle"},
		["WEAPON_HEISER"]  = {"Heiser Single-Shot",120000,60000,{"heiser.whitelisted"},"w_pi_heiser"},
		["WEAPON_KIMBERPISTOL"]  = {"Kimber Pistol",nil,nil,{"kimberpistol.whitelisted"},"w_pi_kimberpistol"},
		["WEAPON_TGC"]  = {"TGC-Punisher",nil,nil,{"tgc.whitelisted"},"w_pi_tgc"},
		["WEAPON_GLOCK17D"] = {"Glock 17 D",nil,nil,{"glock17d.whitelisted"},"w_pi_glock17d"},
		["WEAPON_PROKOCMG"]  = {"Prokotop",nil,nil,{"winalot2.whitelisted"},"w_pi_proko"},
		["WEAPON_HK45CMG"]  = {"HK45",nil,nil,{"hk45.whitelisted"},"w_pi_hk45"},
		["WEAPON_WP99"] = {"P99",nil,nil,{"p99.whitelisted"},"w_pi_wp99"},
		["WEAPON_GLOCK17S"] = {"Glock 17",nil,nil,{"glock17s.whitelisted"},"w_pi_glock17s"},
		["WEAPON_GLOCK18"] = {"Glock 18",nil,nil,{"glock18.whitelisted"},"w_pi_glock18"},
		["WEAPON_WALTHERP88"] = {"Walther P88",nil,nil,{"waltherp88.whitelisted"},"w_pi_waltherp88"},
		["WEAPON_HUSHGHOST"] = {"Hush Ghost",nil,nil,{"ghost.whitelisted"},"w_pi_hushghost"},
		["WEAPON_MWR"]  = {"Prokolot COD MWR",nil,nil,{"mwr.whitelisted"},"w_pi_mwr"},
		["WEAPON_SALIENTGLOCK"]  = {"Salient Glock",nil,nil,{"salientglock.whitelisted"},"w_pi_salientglock"},
		["WEAPON_USPSTORQUE"]  = {"USP-S Torque",nil,nil,{"uspstorque.whitelisted"},"w_pi_uspstorque"},
		["WEAPON_FNXV2"]  = {"FNX V2",nil,nil,{"fnxv2.whitelisted"},"w_pi_fnxv2"},--tbx-10810321a41417-7e646d
		["WEAPON_P30L"]  = {"P30L",nil,nil,{"p30l.whitelisted"},"w_pi_p30l"},
		["WEAPON_ACETX"]  = {"Ace TX",nil,nil,{"acetx.whitelisted"},"w_pi_acetx"},
		["WEAPON_DP9"]  = {"Hawk & Little D&P 9",nil,nil,{"dp9.whitelisted"},"w_pi_dp9"},
		["WEAPON_PISTOLWR"]  = {"Pistol WoodRed",nil,nil,{"pistolwr.whitelisted"},"w_pi_pistolwr"},
		["WEAPON_ROBOCOP"]  = {"ROBOCOP",nil,nil,{"robocop.whitelisted"},"w_pi_robocop"},
		["WEAPON_TX22V2"]  = {"TX22 v2",nil,nil,{"tx22v2.whitelisted"},"w_pi_tx22v2"},
		["WEAPON_EDGE"]  = {"SAMURAI EDGE",nil,nil,{"edge.whitelisted"},"w_pi_edge"},
		["WEAPON_OZONE"]  = {"Pistol Ozone",nil,nil,{"ozone.whitelisted"},"w_pi_ozone"},
		["WEAPON_GOLDM9"]  = {"Gold M9",nil,nil,{"goldm9.whitelisted"},"w_pi_goldm9"},
		["WEAPON_PUN1911CMG"] = {"Punisher Custom 1911",nil,nil,{"pun1911.whitelisted"},"w_pi_pun1911"},
		["WEAPON_DL44"] = {"DL44",80000,20000,{"dl44.whitelisted"},"w_pi_dl44"},
		["WEAPON_REVCMG"] = {"Harley Quin Revolver",80000,20000,{"rusty.whitelisted","hqrevolver.whitelisted"},"w_pi_revcmg"},
		["WEAPON_44REV"] = {"44 Revolver",120000,60000,{"revolver.whitelisted"},"w_pi_44revcmg"},
		["WEAPON_GOLDENDEAGLECMG"] = {"Deagle",120000,60000,{"deagle.whitelisted"},"w_pi_goldendeagle"},
		["WEAPON_TINTCMG"] = {"White Tint Pistol 50",120000,60000,{"t.whitelisted","nbk.whitelisted"},"w_pi_tint"},
		["WEAPON_FNXCMG"] = {"FNX45 Pistol",nil,nil,{"fnx.whitelisted"},"w_pi_fnx"},
		["WEAPON_P99CMG"] = {"P99",nil,nil,{"callum3.whitelisted"},"w_pi_p99"},
		["WEAPON_PINKGLOCK"] = {"Pink Glock",nil,nil,{"pinkglock.whitelisted"},"w_pi_pinkglock"},
		["WEAPON_HKUSPCMG"] = {"H&K USP",nil,nil,{"nbk.whitelisted","usp.whitelisted"},"w_pi_hkusp"},
		["WEAPON_MP"] = {"Smith & Wesson M&P",nil,nil,{"mpt762.whitelisted"},"w_pi_mp"},
		["WEAPON_NL1911"] = {"Nickel & Ivory M1911",nil,nil,{"nl1911.whitelisted"},"w_pi_nl1911"},
		["WEAPON_GLOCK17V3"] = {"Glock 17 v3",nil,nil,{"glock17v3.whitelisted"},"w_pi_glock17v3"},
		["WEAPON_VOM"] = {"Vom Feuer",nil,nil,{"vom.whitelisted"},"w_pi_vom"},
		["WEAPON_OTS"] = {"OTS 33",nil,nil,{"ots.whitelisted"},"w_pi_ots"},
		["WEAPON_MPM"] = {"MPM",nil,nil,{"mpm.whitelisted"},"w_pi_mpm"},
		["WEAPON_GLOCK34"] = {"Glock 34",nil,nil,{"glock34.whitelisted"},"w_pi_glock34"},
		["WEAPON_MR61"] = {"MR6",nil,nil,{"mr6.whitelisted"},"w_pi_mr61"},
		["WEAPON_PURPLEGLOCK"] = {"Purple Glock",nil,nil,{"purpleglock.whitelisted"},"w_pi_purpleglock"},
		["WEAPON_GLOCK30"] = {"Glock 30",nil,nil,{"glock30.whitelisted"},"w_pi_glock30"},
		["WEAPON_GLOCK20VAR"] = {"GLOCK 20 CMGTRADER",nil,nil,{"glock20.whitelisted"},"w_pi_glock20var"},
		["WEAPON_GLOCK18CC"] = {"GLOCK 18 CC",nil,nil,{"glock18cc.whitelisted"},"w_pi_glock18cc"},
		["WEAPON_GLOCK17"] = {"GLOCK 17",nil,nil,{"glock17.whitelisted"},"w_pi_glock17"},
		["WEAPON_GLOCK17V2"] = {"GOLD GLOCK 17",nil,nil,{"glock.whitelisted"},"w_pi_glock17v2"},
		["WEAPON_SR40"] = {"Ruger SR40",nil,nil,{"sr40.whitelisted"},"w_pi_sr40"},
		["WEAPON_P80"] = {"Glock P80",nil,nil,{"p80.whitelisted"},"w_pi_p80"},
		["WEAPON_GLOCK19"] = {"Glock 19",nil,nil,{"glock19.whitelisted"},"w_pi_glock19"},
		["WEAPON_ASP"] = {"Survarium Stechkin",nil,nil,{"asp.whitelisted"},"w_pi_asp"},
		["WEAPON_P22CMG"] = {"P226",nil,nil,{"mongy.whitelisted","p226.whitelisted"},"w_pi_p22"},
		["WEAPON_CRIMCMG"] = {"Elephant Killer",120000,60000,{"josh2.whitelisted"},"w_pi_crim"},
		["WEAPON_GOLDENDEAGLE2"] = {"Desert Eagle Golden",120000,60000,{"cro.whitelisted"},"w_pi_goldendeagle2"}, --Callum , reece , og splinter
		["WEAPON_GOLDENDEAGLE3"] = {"Desert Eagle .50",120000,60000,{"soba.whitelisted"},"w_pi_goldendeagle3"},
		["WEAPON_BADGEDEAGLE"] = {"Badge Deagle",120000,60000,{"badgedeagle.whitelisted"},"w_pi_badgedeagle"},
		["WEAPON_FIVECMG"] = {"Five-Seven",nil,nil,{"five.whitelisted"},"w_pi_five"},
		["WEAPON_GLOCK2"] = {"GLOCK 20",nil,nil,{"mattt.whitelisted"},"w_pi_glock2"},
		["WEAPON_SHREWSBURY"] = {"Shrewsbury Duty Pistol",nil,nil,{"duty.whitelisted"},"w_pi_shrewsbury"},
		["WEAPON_TX22"] = {"TX22",nil,nil,{"tx22.whitelisted"},"w_pi_tx22"},
		["WEAPON_PT92"] = {"PT92",nil,nil,{"tty.whitelisted","fcfj.whitelisted","luke.whitelisted","tsteg.whitelisted"},"w_pi_pt92"}, -- TwokEU, Tensers , yb
		["WEAPON_CZ75CMG"] = {"CZ-USA 75 SP-01",nil,nil,{"apex.whitelisted"},"w_pi_cz75"},
		["WEAPON_SOCOMCMG"] = {"Baby Browning",nil,nil,{"diyar.whitelisted"},"w_pi_socom"},
		["WEAPON_HK45C"] = {"HK Compact 45",nil,nil,{"doorag.whitelisted"},"w_pi_hk45"},
		["WEAPON_FNP"] = {"FNP-45",nil,nil,{"chnkz.whitelisted","echoman.whitelisted","spenser.whitelisted","og.whitelisted"},"w_pi_fnp"}, -- POPE: 53543  GazzaCMG: 999 Default Dando: 83711
        ["WEAPON_MR6"] = {"Prokolot MR6",nil,nil,{"prokolot.whitelisted"},"w_pi_mr6"},
        ["WEAPON_SM659CMG"] = {"S&M 569",nil,nil,{"tbat.whitelisted","preston.whitelisted"},"w_pi_sm659"},
        ["WEAPON_SILVERBALLERCMG"] = {"SILVERBALLER",nil,nil,{"shockz.whitelisted"},"w_pi_silverballer"},
		["WEAPON_UMP45CMG"] = {"UMP-45",400000,200000,{""},"w_sb_ump45"},
		["WEAPON_MPX"] = {"MPX",425000,200000,{""},"w_sb_mpx2"},
		["WEAPON_USP45"] = {"USP .45",nil,nil,{"panda.whitelisted"},"w_pi_usp45"},
		["WEAPON_FNX2CMG"] = {"FNX 2",nil,nil,{"bozo.whitelisted","fnx2.whitelisted"},"w_pi_fnx2"},
		["WEAPON_MK23CMG"] = {"MK23",nil,nil,{"mk23.whitelisted","minepup.whitelisted","vioze.whitelisted","jjh.whitelisted"},"w_pi_mk23"},
		["WEAPON_GLOCK19X"] = {"Glock 19X",nil,nil,{"glock19x.whitelisted"},"w_pi_glock19x"},
		["WEAPON_ASIIMOVPISTOL"] = {"Asiimov Pistol",nil,nil,{"asiimovpistol.whitelisted"},"w_pi_asiimovpistol"},
		["WEAPON_USPSKILLCONFIRMED"] = {"USP-S Kill Confirmed",nil,nil,{"uspskillconfirmed.whitelisted"},"w_pi_uspskillconfirmed"},
		["WEAPON_P2011"] = {"P2011",nil,nil,{"p2011.whitelisted"},"w_pi_p2011"},
		["WEAPON_OPPKILLER"] = {"OPP Killer",nil,nil,{"oppkiller.whitelisted"},"w_pi_oppkiller"},
		["WEAPON_VINDICATOR"] = {"Cyberpunk Vindicator",nil,nil,{"vindicator.whitelisted"},"w_pi_vindicator"},
		["WEAPON_JOKERPISTOL"] = {"Joker's Pistol",nil,nil,{"jokerspistol.whitelisted"},"w_pi_jokerpistol"},
		["WEAPON_38SPECIAL"] = {"Five-Seven Violent Daimyo",nil,nil,{"38special.whitelisted"},"w_pi_38Special"}, --tbx-82319921a75668-561e83
		["WEAPON_USPSPRINTSTREAM"]  = {"USP-S Printstream",nil,nil,{"uspsprintstream.whitelisted"},"w_pi_uspsprintstream"}, --tbx-65420021a62689-f0bd8a
		["WEAPON_DEVASTATORDEAGLE"]  = {"Devastator Deagle",120000,60000,{"devastator.whitelisted"},"w_pi_devastatordeagle"}, --tbx-20320021a16217-07ec02
		["WEAPON_B23R"] = {"B23R",nil,nil,{"b23r.whitelisted"},"w_pi_b23r"}, --tbx-12719921a78183-e3b563
		["WEAPON_1911SAD"] = {"SLAP AH DON",nil,nil,{"slapahdon.whitelisted"},"w_pi_1911sad"}, --tbx-56819921a78458-a5953f
		["WEAPON_VIGILANTE"] = {"Vigilante Pistol",nil,nil,{"weaponvigilante.whitelisted"},"w_pi_vigilante"}, --tbx-81319921a85655-036b5e
		["WEAPON_SLAYERHEAVYPISTOL"] = {"Slayer Pistol",nil,nil,{"slayerpistol.whitelisted"},"w_pi_slayerheavypistol"}, --tbx-70720021a75181-33e8d6
		["WEAPON_PRINTSTREAMDEAGLE"]  = {"Printstream Deagle",120000,60000,{"printdeagle.whitelisted"},"w_pi_printstreamdeagle"}, --tbx-78720121a13556-19a770
		["WEAPON_TRIADDEAGLE"]  = {"Triad Deagle",120000,60000,{"triaddeagle.whitelisted"},"w_pi_triaddeagle"}, --tbx-59720121a31918-0e0502
		["WEAPON_DEAGLEERASER"]  = {"Deagle Eraser",120000,60000,{"deagleeraser.whitelisted"},"w_pi_deagleeraser"}, --tbx-25420321a75869-7e5f81
		["WEAPON_GALAXY1911"] = {"Galaxy 1911",nil,nil,{"galaxy1911.whitelisted"},"w_pi_galaxy1911"}, --tbx-42320121a80912-efd054
		["WEAPON_GLOCK18BULLETQUEEN"] = {"Five Seven Vermelha",nil,nil,{"glock18bulletqueen.whitelisted"},"w_pi_glock18bulletqueen"}, --tbx-24820321a74837-793d49
		["WEAPON_MK2TEJINA"] = {"Pistol MK2 TEJINA",nil,nil,{"mk2tejina.whitelisted"},"w_pi_mk2tejina"}, --tbx-90220321a75763-cfba95
		["WEAPON_DEAGLELV"]  = {"Deagle LV",120000,60000,{"deaglelv.whitelisted"},"w_pi_deaglelv"}, --tbx-60720821a83331-c5b7b8
		["WEAPON_KUSHV1"]  = {"KUSH V1",nil,nil,{"kushv1.whitelisted"},"w_pi_kushv1"}, --tbx-98020321a67074-552fc0
		["WEAPON_DIAMATTITINTCOMRADE"]  = {"Diamatti Tiny Comrade",nil,nil,{"tinycomrade.whitelisted"},"w_pi_diamattitinycomrade"}, --tbx-79720421a30026-5b8f2e
		["WEAPON_FRACTLEBLUE"]  = {"Fractle Blue",nil,nil,{"fractleblue.whitelisted"},"w_pi_fractleblue"}, --tbx-31819921a78151-2e7fd6
		["WEAPON_DEAGLEKILLCONFIRMED"]  = {"Deagle Kill Confirmed",120000,60000,{"deaglekillconfirmed.whitelisted"},"w_pi_deaglekillconfirmed"}, --tbx-63920321a71482-ef3a51
		["WEAPON_CHROMATICDEAGLE"]  = {"Chromatic Aberration Deagle",120000,60000,{"chromaticdeagle.whitelisted"},"w_pi_chromaticdeagle"}, --tbx-81520221a65504-2f7fa3
	    ["WEAPON_USPSHYBRID"]  = {"USP-S Hybrid",nil,nil,{"uspshybrid.whitelisted"},"w_pi_uspshybrid"}, --tbx-86020421a51954-01bd32
		["WEAPON_DRAGONBALLDEAGLE"]  = {"DragonBall Deagle",120000,60000,{"dragonballdeagle.whitelisted"},"w_pi_dragonballdeagle"}, --tbx-58720621a45182-dac524
		["WEAPON_THEGLIZZY"]  = {"The Glizzy",nil,nil,{"theglizzy.whitelisted"},"w_pi_theglizzy"}, --tbx-16220621a59764-66b82e
		["WEAPON_SUICIDESQUARDDEAGLE"]  = {"Suicide Squad Deagle",120000,60000,{"ssdeagle.whitelisted"},"w_pi_suicidesquaddeagle"}, --tbx-63520621a49354-07c540
		["WEAPON_NERFELITEJOLT"]  = {"Nerf Elite Jolt",nil,nil,{"nerfelitejolt.whitelisted"},"w_pi_nerfelitejolt"}, --tbx-43220621a61526-659661
		["WEAPON_ICEGLOCK"]  = {"Glock Ice",nil,nil,{"glockice.whitelisted"},"w_pi_iceglock"}, --tbx-24020621a61696-5931f3
		["WEAPON_SKULLBLASTER"]  = {"SkullBlaster",nil,nil,{"skullblaster.whitelisted"},"w_pi_skullblaster"}, --tbx-99320621a68295-e0a124
		["WEAPON_GLOCK17DM"]  = {"Dark Matter Glock",nil,nil,{"darkmatterglock.whitelisted"},"w_pi_glock17dm"}, --tbx-15520721a49043-854c39
		["WEAPON_VTSGLOW"]  = {"VTS Glow",nil,nil,{"vtsglow.whitelisted"},"w_pi_vtsglow"}, --tbx-28920721a71553-28c859
		["WEAPON_GLOCK20VA5"]  = {"Glock 20 VA5",nil,nil,{"glock20va5.whitelisted"},"w_pi_glock20va5"}, --tbx-76320521a74804-c78652
		["WEAPON_GLOCKHYPERBEAST"]  = {"Glock Hyperbeast",nil,nil,{"glockhyperbeast.whitelisted"},"w_pi_glockhyperbeast"}, --tbx-89620221a54178-42f2cf
		["WEAPON_TLSBBGUN"]  = {"TLs BBGUN",nil,nil,{"tlsbbgun.whitelisted"},"w_pi_tlsbbgun"}, --tbx-74421121a68635-a32b06
		["WEAPON_REAVERSHERIFF"]  = {"Reaver Sheriff",120000,60000,{"reaversheriff.whitelisted"},"w_pi_reaversheriff"}, --tbx-43620121a44839-24227c
		["WEAPON_RICKNSNORTY"]  = {"Rick N Snorty",nil,nil,{"ricknsnorty.whitelisted"},"w_pi_ricknsnorty"}, --tbx-47121121a74293-7a00bc
		["WEAPON_DESERTEAGLESILVER"]  = {"Desert Eagle Silver",120000,60000,{"deserteaglesilver.whitelisted"},"w_pi_deserteaglesilver"}, --tbx-14920521a37717-c08619
		["WEAPON_LIZARDDEAGLE"]  = {"Lizard Deagle",120000,60000,{"lizarddeagle.whitelisted"},"w_pi_lizarddeagle"}, --tbx-52620621a47877-d83adf
		["WEAPON_HKUSP45"]  = {"Heckler & Koch USP .45",nil,nil,{"hkusp45.whitelisted"},"w_pi_hkusp45"}, --tbx-83320021a62600-0633e1
		["WEAPON_DSPISTOL"]  = {"D&S Pistol",nil,nil,{"dspistol.whitelisted"},"w_pi_dspistol"}, --tbx-83621321a3962-c37ed4
		["WEAPON_WX22V2"]  = {"WX22 V2",nil,nil,{"wx22v2.whitelisted"},"w_pi_wx22v2"}, --tbx-28720621a80583-67e2d1
		["WEAPON_DEAGLEREDTIGER"]  = {"Sakura Deagle",120000,60000,{"sakuradeagle.whitelisted"},"w_pi_deagleredtiger"}, --tbx-62921321a54638-4a56a7
		["WEAPON_GLOCK18DT"]  = {"Glock 18C Demon Time",nil,nil,{"glock18dt.whitelisted"},"w_pi_glock18dt"}, --tbx-75426221a66478-495933
		["WEAPON_USP"]  = {"USP",nil,nil,{"usp2.whitelisted"},"w_pi_usp"}, --tbx-88225621a66680-0a8684
		["WEAPON_REVOLVER357"]  = {"Revolver",120000,60000,{"revolver357.whitelisted"},"w_pi_revolver357"}, --tbx-19125821a56104-e70229
		["WEAPON_WATERGUN"]  = {"Water Gun",nil,nil,{"watergun.whitelisted"},"w_pi_watergun"}, --tbx-96829321a73635-ded743
		["WEAPON_FORTNITEPISTOL"]  = {"Fortnite Pistol",nil,nil,{"fortnitepistol.whitelisted"},"w_pi_fortnitepistol"}, --tbx-63926221a77639-e12c16
		["WEAPON_HENRYPISTOL"]  = {"Henry Pistol",nil,nil,{"henrypistol.whitelisted"},"w_pi_henrypistol"}, --tbx-17625921a63990-bca80d
		["WEAPON_SOVEREIGNGHOST"]  = {"Sovereign Ghost",nil,nil,{"sovereignghost.whitelisted"},"w_pi_sovereignghost"}, --tbx-83326221a71635-546283
		["WEAPON_BALDINATOR"]  = {"Baldinator Deagle",120000,60000,{"baldinator.whitelisted"},"w_pi_baldinator"}, --Brought with £50 from staff meeting - SA
		["WEAPON_LVGLOCK"]  = {"LV Glock",nil,nil,{"lvglock.whitelisted"},"w_pi_lvglock"}, --tbx-13527321a68926-17c9e3
		["WEAPON_TBSPROKOLOT"]  = {"TBS Prokolot",nil,nil,{"tbsprokolot.whitelisted"},"w_pi_tbsprokolot"}, --tbx-23426121a60217-43035e
		["WEAPON_PISTOLMKII"]  = {"Pistol MKII Nike",nil,nil,{"pistolmkii.whitelisted"},"w_pi_pistolmkii"}, --tbx-99229221a74776-471557
		["WEAPON_DIAMATTITACTICAL"]  = {"Diamatti Tactical",nil,nil,{"diamattitactical.whitelisted"},"w_pi_diamattitactical"}, --tbx-58729321a46170-0ba576
		["WEAPON_TJESPLINE"]  = {"TJE Spline",nil,nil,{"tjespline.whitelisted"},"w_pi_tjespline"}, --tbx-97629421a77058-d51b3b
		["WEAPON_M19STATEOFWAR"]  = {"M19 State Of War",nil,nil,{"m19stateofwar.whitelisted"},"w_pi_m19stateofwar"}, --tbx-59223221a42361-19aac8
		["WEAPON_NERFDEAGLE"]  = {"Nerf Deagle",nil,nil,{"nerfdeagle.whitelisted"},"w_pi_nerfdeagle"}, --tbx-93535921a2085-65a43b
		["WEAPON_ARTICATTACKPISTOL"]  = {"Artic Attack Pistol",nil,nil,{"articattack.whitelisted"},"w_pi_articattackpistol"}, --tbx-24034821a84366-61a1d5
		["WEAPON_SUPERSPLASHER"]  = {"Super Splasher",nil,nil,{"supersplasher.whitelisted"},"w_pi_supersplaher"}, --tbx-53027221a65330-8c1ae5
		["WEAPON_SPUDGUN"]  = {"Spud Gun",nil,nil,{"spudgun.whitelisted"},"w_pi_spudgun"}, --tbx-46628221a78389-384d88
		["WEAPON_DEAGLEFADE"]  = {"Deagle Fade",nil,nil,{"deaglefade.whitelisted"},"w_pi_deaglefade"}, --tbx-16727121a40848-1f353f
		["WEAPON_DIAMATTIKILLS"]  = {"Diamatti Kills",nil,nil,{"diamattikills.whitelisted"},"w_pi_diamattikills"}, --tbx-91730321a64758-23c9f5
		["WEAPON_TIMOTAPPER"]  = {"Timo Tapper",nil,nil,{"timotapper.whitelisted"},"w_pi_timotapper"}, --tbx-19732921a29852-c6d6e6
		["WEAPON_JUICEWRLDPISTOL"]  = {"Juice WRLD Pistol",nil,nil,{"juicewrldpistol.whitelisted"},"w_pi_juicewrldpistol"}, --tbx-19732921a29852-c6d6e6
		["WEAPON_USPSORANGETAC"]  = {"USP-S Orange Tac",nil,nil,{"uspsorangetac.whitelisted"},"w_pi_uspsorangetac"}, --tbx-8335822a66029-a15f3e
		["WEAPON_BONNIM1911"]  = {"Bloody M19",nil,nil,{"bonnim1911.whitelisted"},"w_pi_bonnim1911"}, --tbx-89510222a59978-943f64
		["WEAPON_ERAYPISTOLMK2"]  = {"Glitchpop Classic",nil,nil,{"eraypistolmk2.whitelisted"},"w_pi_eraypistolmk2"}, --tbx-24610322a77380-e58b65
		["WEAPON_LEGOPISTOL"]  = {"Lego Pistol",nil,nil,{"legopistol.whitelisted"},"w_pi_legopistol"}, --tbx-3106722a45410-2563f7
		["WEAPON_CMGMR6"]  = {"CMG MR6",nil,nil,{"cmgmr6.whitelisted"},"w_pi_cmgmr6"}, --tbx-50710022a83453-f061d7
		["WEAPON_JOHANDEAGLE"]  = {"Johan Deagle",nil,nil,{"johandeagle.whitelisted"},"w_pi_johandeagle"}, --tbx-5804921a78861-8e74dc
		["WEAPON_RUINATIONGHOST"]  = {"Ruination Ghost",nil,nil,{"ruinationghost.whitelisted"},"w_pi_ruinationghost"}, --tbx-79410622a73637-082a87
		["WEAPON_LOUISVUITTONPISTOL"]  = {"Louis Vuitton Pistol",nil,nil,{"louisvuittonpistol.whitelisted"},"w_pi_louisvuittonpistol"}, --tbx-13912522a66563-ca1009
		["WEAPON_FINNANDJAKEPISTOL"]  = {"Finn & Jake Pistol",nil,nil,{"finnandjakepistol.whitelisted"},"w_pi_finnandjakepistol"}, --tbx-62010622a86391-254a3e
		["WEAPON_PRIMECLASSIC"]  = {"Prime Classic",nil,nil,{"primeclassic.whitelisted"},"w_pi_primeclassic"}, --tbx-41813622a61821-fb170f
		["WEAPON_ENGRAVED1911"]  = {"Engraved 1911",nil,nil,{"engraved1911.whitelisted"},"w_pi_engraved1911"}, --tbx-99812122a70662-7d5b76
		["WEAPON_HARRYPOTTERWAND"]  = {"Harry Potter Wand",nil,nil,{"harrypotterwand.whitelisted"},"w_pi_harrypotterwand"}, --tbx-53611722a59739-6bc872
		["WEAPON_RAYGUNMK2"]  = {"Ray Gun Mk2",nil,nil,{"raygunmk2.whitelisted"},"w_pi_raygunmk2"}, --tbx-32815122a55912-bcc221
		["WEAPON_CUSTOMRAYGUN"]  = {"Ray Gun",nil,nil,{"raygun.whitelisted"},"w_pi_customraygun"}, --tbx-95815422a55128-9e6f2a
		["WEAPON_DRAGONFNP45"]  = {"Dragon FNP-45",nil,nil,{"dragonfnp45.whitelisted"},"w_pi_dragonfnp45"}, --tbx-17315322a4208-992a1e
		["WEAPON_BOMBGLOCK18C"]  = {"Bomb Glock 18C",nil,nil,{"bombglock18c.whitelisted"},"w_pi_bombglock18c"}, --tbx-89415122a79364-0e1c8e
		["WEAPON_BUBBLEGUN"]  = {"Bubblegun",nil,nil,{"bubblegun.whitelisted"},"w_pi_bubblegun"}, --tbx-77315922a62512-bf03fc
		["WEAPON_DC17BLASTER"]  = {"DC-17 Blaster",nil,nil,{"dc17blaster.whitelisted"},"w_pi_dc17blaster"}, --tbx-75217422a48740-ac95fe
		["WEAPON_KINGDOMCLASSIC"]  = {"Kingdom Classic",nil,nil,{"kingdomclassic.whitelisted"},"w_pi_kingdomclassic"}, --tbx-43517122a74453-8e7cfd
		["WEAPON_RUGER57"]  = {"Ruger-5.7",nil,nil,{"ruger57.whitelisted"},"w_pi_ruger57"}, --tbx-98217422a76764-2b6108
		["WEAPON_VIRGILSVENGEANCE"]  = {"Virgils Vengeance",nil,nil,{"virgilsvengeance.whitelisted"},"w_pi_virgilsvengeance"}, --tbx-91818322a2043-de57c3
		["WEAPON_ARCANESHERIFF"]  = {"Arcane Sheriff",nil,nil,{"arcanesheriff.whitelisted"},"w_pi_arcanesheriff"}, --tbx-22717822a77792-cd7331
		["WEAPON_P250D"]  = {"P250D",nil,nil,{"p250d.whitelisted"},"w_pi_p250d"}, --tbx-96530121a55589-1b49e9 (Multiple purchases in Tebex)
		["WEAPON_RECONGHOST"]  = {"Recon Ghost",nil,nil,{"reconghost.whitelisted"},"w_pi_reconghost"}, --tbx-18622322a62509-f6047f
		["WEAPON_CRONICCAPPA"]  = {"Cronic Cappa",nil,nil,{"croniccappa.whitelisted"},"w_pi_croniccappa"}, --tbx-68023422a78337-608955 (Glock x NIKE OFF-White)
		["WEAPON_GLOCK19GEN4"]  = {"Glock 19 Gen 4",nil,nil,{"glock19gen4.whitelisted"},"w_pi_glock19gen4"}, --125328 tbx-55324222a61315-7e14c2
		["WEAPON_PINKEYESGLOCK18"]  = {"Pink Eyes Glock 18",nil,nil,{"pinkeyesglock18.whitelisted"},"w_pi_pinkeyesglock18"}, --tbx-12025722a29686-4ea250
		["WEAPON_GOLDENGRAVED1911"]  = {"Gold Engraved 1911",nil,nil,{"goldengraved1911.whitelisted"},"w_pi_goldengraved1911"}, --tbx-93932522a34650-707098 (887D-FE57)
		["WEAPON_SUPREMEDEAGLE"]  = {"Supreme Deagle",nil,nil,{"supremedeagle.whitelisted"},"w_pi_supremedeagle"}, --F085-91C5
		["WEAPON_BLOODSHOTUSP"]  = {"Blood Shot USP",nil,nil,{"bloodshotusp.whitelisted"},"w_pi_bloodshotusp"}, --6C67-E52B
		["WEAPON_JINXZAPPER"]  = {"Jinx",nil,nil,{"jinxzapper.whitelisted"},"w_pi_jinxzapper"}, --1BF1-9181
		["WEAPON_GLOWGLOW"]  = {"Glock Glow",nil,nil,{"glowglow.whitelisted"},"w_pi_glockglow"}, --47bf-ade3
		["WEAPON_PINKSCIFIDEAGLE"]  = {"Pink Sci-Fi Deagle",nil,nil,{"pinkscifideagle.whitelisted"},"w_pi_pinkscifideagle"}, --E845-45D1
		["WEAPON_Q929"]  = {"Q-929 Glow",nil,nil,{"q929.whitelisted"},"w_pi_q929"}, --8127-F801
		["WEAPON_G18C"]  = {"Manny Hitta",nil,nil,{"g18c.whitelisted"},"w_pi_g18c"}, --46F9-C27F
		["WEAPON_GLOCK18CTOBY"]  = {"Glock 18C",nil,nil,{"glock18ctoby.whitelisted"},"w_pi_glock18ctoby"}, --9a53-1a39
		["WEAPON_DATGUYSGLOCK"]  = {"DATGUYS GLOCK",nil,nil,{"datguysglock.whitelisted"},"w_pi_datguysglock"}, --7D6B-BA11
		["WEAPON_RG15"]  = {"RG15",nil,nil,{"rg15.whitelisted"},"w_pi_rg15"}, --C865-EEA9
		["WEAPON_PIKAPISTOL"]  = {"Pika Pistol",nil,nil,{"pikapistol.whitelisted"},"w_pi_pikapistol"}, --E6ED-9073
		["WEAPON_EKKOPISTOL"]  = {"Ekko's Combat Pistol",nil,nil,{"ekkopistol.whitelisted"},"w_pi_ekkopistol"}, --DAF9-E067
		["WEAPON_ZIWADEAGLE"]  = {"White Golden Deagle",nil,nil,{"ziwadeagle.whitelisted"},"w_pi_ziwadeagle"}, --B25D-5B17
		["WEAPON_CMPGLOCK"]  = {"CMP Glock",nil,nil,{"cmpglock.whitelisted"},"w_pi_cmpglock"}, --F88D-ACE1
		["WEAPON_WHITEGLOCK"]  = {"White Glock",nil,nil,{"whiteglock.whitelisted"},"w_pi_whiteglock"}, --3ED1-FD61
		["WEAPON_MK11WHITEANDFIRE"]  = {"MK11 White And Fire",nil,nil,{"mk11whiteandfire.whitelisted"},"w_pi_mk11whiteandfire"}, --1053-F5CE
		["WEAPON_DEAGLELIGHTCHAIN"]  = {"Deagle Light Chain",nil,nil,{"deaglelightchain.whitelisted"},"w_pi_deaglelightchain"}, --EF07-6425
		["WEAPON_SILENCERCOMAXIM9"]  = {"SilencerCo Maxim 9",nil,nil,{"silencercomaxim9.whitelisted"},"w_pi_silencercomaxim9"}, --E43F-F732
		["WEAPON_TARANTACTICAL"]  = {"Taran Tactical",nil,nil,{"tarantactical.whitelisted"},"w_pi_tarantactical"}, --1D89-5068
		["WEAPON_USP200IQ"]  = {"USP 200 IQ",nil,nil,{"usp200iq.whitelisted"},"w_pi_usp200iq"}, --F6EE-3D7D
		["WEAPON_MANDOLORIANBLASTER"]  = {"Mandolorian Blaster",nil,nil,{"mandolorianblaster.whitelisted"},"w_pi_mandolorianblaster"}, --AD81-497D
		["WEAPON_CMGTRADERPISTOL"]  = {"CMG Trader Pistol",nil,nil,{"cmgtraderpistol.whitelisted"},"w_pi_cmgtraderpistol"}, --83F6-0CA6
		["WEAPON_GLOCK17SKELETON"] = {"Glock 17 Skeleton",nil,nil,{"weaponglock17skeleton.whitelisted"},"w_pi_glock17skeleton"}, --78F6-D302
		["WEAPON_OMDARKMATTER"] = {"O.M DarkMatter",nil,nil,{"weaponomdarkmatter.whitelisted"},"w_pi_omdarkmatter"}, --6A6E-97EF
		["WEAPON_SABREREVOLVER"] = {"Sabre Silenced Revolver",nil,nil,{"weaponsabrerevolver.whitelisted"},"w_pi_sabrerevolver"}, --09CC-EF33
		["WEAPON_CALSNIGHTSHADE"] = {"Cal's Nightshade",nil,nil,{"weaponcalsnightshade.whitelisted"},"w_pi_calsnightshade"}, --6DDB-54B4
		["WEAPON_G19MOD"] = {"G19 Mod",nil,nil,{"weapong19mod.whitelisted"},"w_pi_g19mod"}, --3125-B7ED
		["WEAPON_USOKILLERHIS"] = {"His Pocket P",nil,nil,{"weaponusokillerhis.whitelisted"},"w_pi_usokillerhis"}, --6B43-882D
		["WEAPON_USPKILLERHERS"] = {"Her Pocket D",nil,nil,{"weaponuspkillerhers.whitelisted"},"w_pi_uspkillerhers"}, --7D95-869B
		["WEAPON_ICBMK1"] = {"ICB MK-1",nil,nil,{"weaponicbmk12.whitelisted"},"w_pi_icbmk1"}, --C646-A806
		["WEAPON_REBELYUS"] = {"Rebelyus",nil,nil,{"weaponrebelyus.whitelisted"},"w_pi_rebelyus"}, --315E-470F
		["WEAPON_TOYGUN"] = {"Eitsu's Toy Pistol",nil,nil,{"weapontoygun.whitelisted"},"w_pi_toygun"}, --F473-243D
		["WEAPON_CLAPZHS2000"] = {"Clapz Glock",nil,nil,{"weaponclapzhs2000.whitelisted"},"w_pi_clapzhs2000"}, --5781-8D90
		["WEAPON_SPOOKYPISTOL"] = {"Spooky Pistol",nil,nil,{"weaponspookypistol.whitelisted"},"w_pi_spookypistol"}, --7FF9-3655
		["WEAPON_LUNARKISSPISTOL"] = {"Lunar Kiss Pistol",nil,nil,{"weaponlunarkisspistol.whitelisted"},"w_pi_lunarkisspistol"}, --CD5A-2B48
		["WEAPON_XRKELITE45"] = {"XRK Elite 45",nil,nil,{"weaponxrkelite45.whitelisted"},"w_pi_xrkelite45"}, --6fd3-ce27
		["WEAPON_FNGFIVENINE"] = {"FN G Five-Nine",nil,nil,{"weaponfngfivenine.whitelisted"},"w_pi_fngfivenine"}, --74D0-CDE9
		["WEAPON_BISHBASHBOSH"] = {"Bish Bash Bosh",nil,nil,{"weaponbishbashbosh.whitelisted"},"w_pi_bishbashbosh"}, --D73A-3D22
		["WEAPON_ANGELOFDEATHMC"] = {"Angles of Death Suppressed Pistol",nil,nil,{"weaponangelofdeathmc.whitelisted"},"w_pi_angelofdeathmc"}, --D709-C09F
		["WEAPON_BPUPISTOL"] = {"BPU Pistol",nil,nil,{"weaponbpupistol.whitelisted"},"w_pi_bpupistol"}, --BF64-A74F
		["WEAPON_COMMANDERS646464"] = {"Commanders 646464/.b",nil,nil,{"weaponcommanders646464.whitelisted"},"w_pi_commanders646464"}, --5650-026b
		["WEAPON_NOISEYCRICKET"] = {"Noisey Cricket",nil,nil,{"weaponnoiseycricket.whitelisted"},"w_pi_noiseycricket"}, --3B8A-5AF1
		["WEAPON_VODKAPISTOL"] = {"Vodka Pistol",nil,nil,{"weaponvodkapistol.whitelisted"},"w_pi_vodkapistol"}, --EAEF-F646
		["WEAPON_DL44CMGTRADER"] = {"DL-44 CMG Trader",nil,nil,{"weapondl44cmgtrader.whitelisted"},"w_pi_dl44cmgtrader"}, --8E67-D5FD
		["WEAPON_DEAGLEDIVORCE"] = {"CR4ZYS Deagle",nil,nil,{"weapondeagledivorce.whitelisted"},"w_pi_deagledivorce"}, --D1BB-9F2A
		["WEAPON_DINOPISTOL"] = {"Zaza Pistol",nil,nil,{"weapondinopistol.whitelisted"},"w_pi_dinopistol"}, --D771-4847
		["WEAPON_USPJW"] = {"999",nil,nil,{"weaponuspjw.whitelisted"},"w_pi_uspjw"}, --33A6-A384
		["WEAPON_GLOCKFADE"] = {"Glock Fade",nil,nil,{"weaponglockfade.whitelisted"},"w_pi_glockfade"}, --E391-F22F
		["WEAPON_GLOCK17CAUTION"] = {"Glock-17 CAUTION",nil,nil,{"weaponglock17caution.whitelisted"},"w_pi_glock17caution"}, --9B81-1434
		--? End Small Arms (DO NOT DELETE - USED BY CI)

		["item|1LightArmour"] = {"LvL 1 Armour",25000,0,{""},"prop_armour_pickup"},
	    --["WEAPON_M1935CMG"]  = {"Browning M1935",80000,25000,"swat.whitelisted"}},
		--["WEAPON_JAGCMG"]  = {"Jagdkommandoo",3000,0,{"thomson.whitelisted"}},
		--["GADGET_PARACHUTE"] = {"Out of stock!",0,0,{""}},
	},
	["LargeArmsDealer"] = {
		_config = {
			{
				vector3(-1108.3199462891,4934.7392578125,217.35540771484),
			},
			110,1,"Large Arms Dealer",{"gang.whitelisted"},false,
			hasPurgeDiscount = true,
			hasTurfComission = true,
			inBlackMarket = true,
			allowPlatDiscount = true,
		},
		--?Shotguns
		["WEAPON_OLYMPIACMG"] = {"Olympia Shotgun",nil,nil,{""},"w_sg_olympia"},
		["WEAPON_VEPR12"] = {"Vepr-12 Shotgun",nil,nil,{"vepr.whitelisted"},"w_sg_vepr12"},
		["WEAPON_DEADPOOLSHOTGUN"] = {"Deadpool Shotgun",nil,nil,{"deadpoolshotty.whitelisted"},"w_sg_deadpoolshotgun"},
		["WEAPON_FOSTECHORIGIN12"] = {"Fostech Origin-12",nil,nil,{"fostechorigin12.whitelisted"},"w_sg_fostechorigin12"},
		["WEAPON_AA12CMG"] = {"AA12",nil,nil,{"aa12.whitelisted"},"w_sg_aa12cmg"},
		["WEAPON_870SHOTGUN"]  = {"Tactical Shotgun",nil,nil,{"870shot.whitelisted"},"w_sg_870shotgun"},
		["WEAPON_MOSSBERG"]  = {"Mossberg 590",nil,nil,{"mossberg.whitelisted"},"w_sg_mossberg"},
		["WEAPON_PUMPMK2CMG"] = {"Pump-shotgun MK2",nil,nil,{"calflux.whitelisted"},"w_sg_pumpmk2"},
		["WEAPON_PURPLEICESHOTGUN"] = {"Purple Ice Shotgun",nil,nil,{"purpleice.whitelisted"},"w_sg_purpleiceshotgun"},
		["WEAPON_205BRECCI"] = {"205 Brecci",nil,nil,{"205brecci.whitelisted"},"w_sg_205brecci"},
		["WEAPON_HAYMAKERDARKMATTER"] = {"Haymaker Dark Matter",nil,nil,{"haymakerdm.whitelisted"},"w_sg_haymakerdarkmatter"}, --tbx-37721321a81433-9d1543
		["WEAPON_THESECRETFORMULA"] = {"The Secret Formula",nil,nil,{"thesecretformula.whitelisted"},"w_sg_thesecretformula"}, --tbx-53027221a65330-8c1ae5
		["WEAPON_KINGDOMBUCKY"] = {"Kingdom Bucky",nil,nil,{"kingdombucky.whitelisted"},"w_sg_kingdombucky"}, --tbx-53027221a65330-8c1ae5
		["WEAPON_MWDP12"] = {"MW DP-12",nil,nil,{"mwpd12.whitelisted"},"w_sg_mwdp12"}, --E37F-7643
		["WEAPON_HEAVENSPLITTER"] = {"Heaven Splitter",nil,nil,{"heavensplitter.whitelisted"},"w_sg_heavensplitter"}, --7CB9-8355
		["WEAPON_BOBFIREWORKLAUNCHER"]  = {"Bob's Firework Launcher",2500000,100000,{"bobfireworklauncher.whitelisted"},"w_lr_bobfireworklauncher"}, --6E91-8CB8
		--["WEAPON_USASCMG"] = {"USAS",nil,nil,{"amachi.whitelisted"},"w_sg_usascmg"}, --SOLD TO CSWAT
		["WEAPON_NIGHTMAREREAPER"] = {"Nightmare Reaper Shotgun",nil,nil,{"weaponnightmarereaper.whitelisted"},"w_sg_nightmarereaper"}, --A4F9-1625
		["WEAPON_BLACKICEASSSHOTGUN"] = {"Black Ice Assault Shotgun",nil,nil,{"weaponblackiceassshotgun.whitelisted"},"w_sg_blackiceassshotgun"}, --7D41-EE09
		["WEAPON_ANGELOFDEATHSHOTGUN"] = {"Angel Of Death Shotgun",nil,nil,{"weaponangelofdeathshotgun.whitelisted"},"w_sg_angelofdeathshotgun"}, --1A7A-73A1
		["WEAPON_999SHOTGUN"] = {"999",nil,nil,{"weapon999shotgun.whitelisted"},"w_sg_999shotgun"}, --DBFE-94A3
		["WEAPON_REDLINEBENELLIM4"] = {"Redline Benelli M4",nil,nil,{"weaponredlinebenellim4.whitelisted"},"w_sg_redlinebenellim4"}, --ED69-05AF
		["WEAPON_BLACKLOTUSHEAVYSHOTGUN"] = {"Black Lotus Heavy Shotgun",nil,nil,{"weaponblacklotusheavyshotgun.whitelisted"},"w_sg_blacklotusheavyshotgun"}, --AA1D-6DEB
		["WEAPON_HH"] = {"H&H",nil,nil,{"weaponhh.whitelisted"},"w_sg_hh"}, --9CCF-50DE
		--? End Large Arms Shotguns (DO NOT DELETE - USED BY CI)

		--?SMGs
		["WEAPON_UMP45CMG"] = {"UMP-45",400000,200000,{""},"w_sb_ump45"},
		["WEAPON_UZICMG"] = {"Uzi SMG",nil,nil,{""},"w_sb_uzi"},
		["WEAPON_VESPERCMG"]  = {"Vesper",nil,nil,{"jamz.whitelisted","katos.whitelisted"},"w_sb_vesper"}, -- agwe, jack
		["WEAPON_MP5SD"]  = {"MP5SD",nil,nil,{"callum.whitelisted","mp5sd.whitelisted"},"w_sb_mp5sd"},
		["WEAPON_MP5FELDSPAR"]  = {"MP5 Feld Spar",nil,nil,{"mp5feldspar.whitelisted"},"w_sb_mp5feldspar"},
		["WEAPON_PINEAPPLEMP5"]  = {"Pineapple MP5",nil,nil,{"pineapplemp5.whitelisted"},"w_sb_pineapplemp5"},
		["WEAPON_MP40TYPE2"]  = {"MP40 Type 2",nil,nil,{"mp40type2.whitelisted"},"w_sb_mp40type2"},
		["WEAPON_UMP9CMG"]  = {"UMP9",nil,nil,{"callum4.whitelisted","ump9.whitelisted"},"w_sb_ump9"},
		["WEAPON_PDW"]  = {"PDW",nil,nil,{"pdw.whitelisted"},"w_sb_pdw"},
		["WEAPON_STERLING"]  = {"Sterling",nil,nil,{"sterling.whitelisted"},"w_sb_sterling"},
		["WEAPON_R99"]  = {"R-99",nil,nil,{"r99.whitelisted"},"w_sb_r99"},
		["WEAPON_MP9CMG"]  = {"MP9",nil,nil,{"swat.whitelisted"},"w_sb_mp9"},
		["WEAPON_ICEVECTOR"]  = {"Black Ice Vector",nil,nil,{"ice.whitelisted"},"w_sb_icevector"},
		["WEAPON_P90MD"]  = {"P90MD",nil,nil,{"p90md.whitelisted"},"w_sb_p90md"},
		["WEAPON_AK74U"]  = {"AK74U",nil,nil,{"ak74u.whitelisted"},"w_ar_ak74u"},
		["WEAPON_PPSHCMG"] = {"PPSH",nil,nil,{"ppsh.whitelisted"},"w_sb_ppsh"}, -- sold to cam
		["WEAPON_THOMPSON"] = {"Thompson",nil,nil,{"thomson2.whitelisted"},"w_sb_thompsonv2"}, -- sold to cam
		["WEAPON_THOMPSONCMG"]  = {"Thompson",nil,nil,{"winalot.whitelisted"},"w_sb_thompson"},
		["WEAPON_MK16"]  = {"MK16",nil,nil,{"mk16.whitelisted"},"w_sb_mk16"},
		["WEAPON_MP7V"]  = {"MP7V",nil,nil,{"mp7v.whitelisted"},"w_sb_mp7v"},
		["WEAPON_MCX"]  = {"SIG MCX",nil,nil,{"mcx.whitelisted"},"w_sb_mcx"},
		["WEAPON_VSS"]  = {"VSS",nil,nil,{"vss.whitelisted"},"w_sb_vss"},
		["WEAPON_MAC11CMG"]  = {"Mac11",nil,nil,{"winalot3.whitelisted"},"w_sb_mac11"},
		["WEAPON_MP9"]  = {"MP9",nil,nil,{"mp9.whitelisted"},"w_sb_mp9cmg"},
		["WEAPON_MSMC"]  = {"MSMC",nil,nil,{"msmc.whitelisted"},"w_sb_msmc"},
		["WEAPON_MAC10"]  = {"MAC-10",nil,nil,{"mac10.whitelisted"},"w_sb_mac10"},
		["WEAPON_FENNEC"]  = {"Fennec",nil,nil,{"fennec.whitelisted"},"w_sb_fennec"},
		["WEAPON_ACRCQB"]  = {"ACR CQB",nil,nil,{"acrcqb.whitelisted"},"w_sb_acrcqb"},
		["WEAPON_HKUMP"]  = {"HK UMP9",nil,nil,{"hkump.whitelisted"},"w_sb_hkump"},
		["WEAPON_AK74UV2"]  = {"AK74U",nil,nil,{"ak74uv2.whitelisted"},"w_ar_ak74uv2"},
		["WEAPON_MPXCMG"]  = {"P90",nil,nil,{"callum5.whitelisted","brogan.whitelisted","roizer.whitelisted"},"w_sb_mpx"},
		["WEAPON_KUDACMG"]  = {"KUDA",nil,nil,{"nootnoot.whitelisted","yaba.whitelisted","savage.whitelisted"},"w_sb_kuda"},
		["WEAPON_KF5"]  = {"KF5",nil,nil,{"kf5.whitelisted"},"w_sb_kf5"},
	    ["WEAPON_38ACMG"]  = {"Beretta mab 38A",nil,nil,{"38acmg.whitelisted"},"w_sb_38a"},
		["WEAPON_CYBERSMG"]  = {"CYBER SMG",nil,nil,{"cyber.whitelisted"},"w_sb_cybersmg"},
		["WEAPON_RAUDNIMP5CMG"] = {"MP5-K",nil,nil,{"raudnimp5.whitelisted","billz.whitelisted"},"w_sb_raudnimp5k"},
		["WEAPON_MP5K2"] = {"MP5K2",nil,nil,{"mp5k2.whitelisted"},"w_sb_mp5k2"},
		["WEAPON_OPULENCEGLOW"] = {"Opulence Glow",nil,nil,{"opulenceglow.whitelisted"},"w_sb_opulenceglow"},
		["WEAPON_GKSTACTICALUNICORN"] = {"GKS TACTICAL UNICORN",nil,nil,{"unicorn.whitelisted"},"w_sb_gksunicorn"},
		["WEAPON_HAHA47U"]  = {"Laughing AK-47u",nil,nil,{"haha74u.whitelisted"},"w_sb_haha74u"},
		["WEAPON_GLOW"]  = {"Glow SMG",nil,nil,{"glow.whitelisted"},"w_sb_glow"},
		["WEAPON_MP7ANIME"]  = {"MP7 Anime",nil,nil,{"mp7anime.whitelisted"},"w_sb_mp7anime"},
		["WEAPON_MP7A2"]  = {"MP7A2",nil,nil,{"mp7.whitelisted"},"w_sb_mp7a2"},
		["WEAPON_MTCMG"]  = {"Taurus FAMAE MT 40",nil,nil,{"harryb.whitelisted","mt40.whitelisted"},"w_sb_mt"},
		["WEAPON_MP5SD2"]  = {"MP5SD",nil,nil,{"mp5sd2.whitelisted"},"w_sb_mp5sd2"},
		["WEAPON_SIGMPX2"]  = {"Sig Sauer MPX",nil,nil,{"sigmpx2.whitelisted"},"w_sb_sigmpx2"},
		["WEAPON_RAZORBACK"]  = {"Razorback",nil,nil,{"razorback.whitelisted"},"w_ar_razorback"},
		["WEAPON_KISSVECTORCMG"]  = {"Kiss Vector",nil,nil,{"kissvector.whitelisted"},"w_sb_kissvector"},
		["WEAPON_AK74UV3"]  = {"AK74-U Type 336",nil,nil,{"ak74uv3.whitelisted"},"w_ar_ak74uv3"},
		["WEAPON_MP40"]  = {"MP40",nil,nil,{"mp40.whitelisted"},"w_ar_mp40"},
		["WEAPON_M12"]  = {"Beretta M12",nil,nil,{"houchkinm12.whitelisted"},"w_sb_m12"},
		["WEAPON_PP19"]  = {"PP-19 Bizon",nil,nil,{"pp19.whitelisted"},"w_sb_pp19"},
		["WEAPON_R99TAMAGOTCHI"]  = {"R-99 TamaGotchi",nil,nil,{"r99tama.whitelisted"},"w_sb_r99tamagotchi"},--tbx-94420021a41356-8e2219
		["WEAPON_M12SMG"]  = {"M12",nil,nil,{"m12smg.whitelisted"},"w_sb_m12smg"},--tbx-72720021a66916-158fdd
		["WEAPON_VSNSMG"]  = {"VSN smg",nil,nil,{"vsnsmg.whitelisted"},"w_sb_vsnsmg"}, --tbx-40819921a79101-7dde0b
		["WEAPON_MERKP5"]  = {"MERKP5",nil,nil,{"merkp5.whitelisted"},"w_sb_merkp5"}, --tbx-49919921a78266-52b12a
		["WEAPON_ANIMEMAC10"]  = {"Anime MAC-10",nil,nil,{"animemac10.whitelisted"},"w_sb_animemac10"}, --tbx-16019921a74630-b24334
		["WEAPON_T5GLOW"]  = {"T-5 Glow",nil,nil,{"t5glow.whitelisted"},"w_sb_t5glow"}, --tbx-91020021a20959-3a36a9
		["WEAPON_COLDHUNTERMP5"]  = {"Cold Hunter MP5",nil,nil,{"coldmp5.whitelisted"},"w_sb_coldhuntermp5"}, --tbx-72519921a74856-7e09e7
		["WEAPON_MPXSIG"]  = {"Sig Sauer MPX",nil,nil,{"mpxsig.whitelisted"},"w_sb_mpxsig"}, --tbx-87320221a74197-38e2af
		["WEAPON_K1A"]  = {"K1A",nil,nil,{"k1a.whitelisted"},"w_sb_k1a"}, --tbx-57320321a47752-2e51fc
		["WEAPON_CRIMSONSNOWVECTOR"]  = {"Crimson Snow Vector",nil,nil,{"crimsonvector.whitelisted"},"w_sb_crimsonsnowvector"}, --tbx-84220021a68389-ca3bb8
		["WEAPON_MP5V3"]  = {"MP5 v3",nil,nil,{"mp3v3.whitelisted"},"w_sb_mp5v3"}, --tbx-16219921a78189-fa9180 - AR & SMG
		["WEAPON_BLACKICEPEACEKEEPER"]  = {"Black Ice PeaceKeeper",nil,nil,{"blackicekeeper.whitelisted"},"w_sb_blackicepeacekeeper"}, --tbx-25920021a77149-779127
		["WEAPON_ASM1"]  = {"ASM1",nil,nil,{"asm1.whitelisted"},"w_sb_asm1"}, --tbx-33120321a22834-e3a3f7
		["WEAPON_DRAGONPDW"]  = {"Dragon PDW",nil,nil,{"dragonpdw.whitelisted"},"w_sb_dragonpdw"}, --tbx-17220321a61042-603f8c
		["WEAPON_MP5OPULENCE"]  = {"MP5 Roman Opulence",nil,nil,{"mp5opulence.whitelisted"},"w_sb_mp5opulence"}, --tbx-44320321a69389-d21a9d
		["WEAPON_W90SUPER"]  = {"W90 SUPER",nil,nil,{"w90super.whitelisted"},"w_sb_w90super"}, --tbx-68420121a82121-1fe518
		["WEAPON_COLDHUNTERTHOMPSON"]  = {"Cold Hunter Thompson",nil,nil,{"coldhunterthompson.whitelisted"},"w_sb_coldhunterthompson"}, --tbx-97620321a74451-0f406c
		["WEAPON_SCORPIONBLUE"]  = {"Scorpion Blue",nil,nil,{"scorpionblue.whitelisted"},"w_sb_scorpionblue"}, --tbx-59221121a65121-78ddd5
		["WEAPON_P90HYPERBEAST"]  = {"P90 Hyper Beast",nil,nil,{"p90hyperbeast.whitelisted"},"w_sb_p90hyperbeast"}, --tbx-61720121a7972578607
		["WEAPON_MP7ICE"]  = {"MP7 Ice",nil,nil,{"mp7ice.whitelisted"},"w_sb_mp7ice"}, --tbx-55620621a49422-d834d0
		["WEAPON_KUDAPURPLE"]  = {"Kuda Dark Matter",nil,nil,{"kudapurple.whitelisted"},"w_sb_kurdapurple"}, --tbx-30020421a51746-2cf5f8
		["WEAPON_MP5GLOW"]  = {"MP5 Glow",nil,nil,{"mp5glow.whitelisted"},"w_sb_mp5glow"}, --tbx-23920421a53880-847d81
		["WEAPON_AK47U"]  = {"Graffiti AK47U",nil,nil,{"ak47u.whitelisted"},"w_sb_ak47u"}, --tbx-48720221a74407-32ff82
		["WEAPON_MP5JOB"]  = {"MP5",nil,nil,{"mp5job.whitelisted"},"w_sb_mp5job"}, --tbx-40920621a44689-c4eebf
		["WEAPON_MJSMGMK2"]  = {"MJ SMG MK2",nil,nil,{"mjsmgmk2.whitelisted"},"w_sb_mjsmgmk2"}, --tbx-16820521a52403-5ffb1d
		["WEAPON_SCORPIONEVO"]  = {"B&W Scorpion Evo",nil,nil,{"scorpionevo.whitelisted"},"w_sb_scorpionevo"}, --tbx-22620521a75175-93b147
		["WEAPON_VESPERHYBRID"]  = {"Vesper Hybrid",nil,nil,{"vesperhybrid.whitelisted"},"w_sb_vesperhybrid"}, --tbx-34420621a62945-8f6679
		["WEAPON_MP7CLAWFINGER"]  = {"MP7 Claw Finger",nil,nil,{"mp7clawfinger.whitelisted"},"w_sb_mp7clawfinger"}, --tbx-28120921a81735-e81b5a
		["WEAPON_WK74U"]  = {"WK74U",nil,nil,{"wk74u.whitelisted"},"w_sb_wk74u"}, --tbx-94420521a34237-68c4e7
		["WEAPON_AK74UGOKU"]  = {"AK74-U GOKU",nil,nil,{"ak74ugoku.whitelisted"},"w_sb_ak74ugoku"}, --tbx-38319921a74627-6908bb
		["WEAPON_GLOWAUG"]  = {"Glow Aug",nil,nil,{"glowaug.whitelisted"},"w_sb_glowaug"}, --tbx-78121021a67599-4d1e85
		["WEAPON_DIAMONDMP5"]  = {"Diamond MP5",nil,nil,{"diamondmp5.whitelisted"},"w_sb_diamondmp5"}, --tbx-80121121a47240-bb77dc
		["WEAPON_NERFELITEINFINUS"]  = {"Nerf Elite Infinus",nil,nil,{"nerfeliteinfinus.whitelisted"},"w_sb_nerfeliteinfinus"}, --tbx-26821221a5989-fe64a1
		["WEAPON_MTARGLOW"]  = {"Mtar Glow",nil,nil,{"mtarglow.whitelisted"},"w_sb_mtarglow"}, --tbx-13321021a58976-1ce99f
		["WEAPON_UZILUNA"]  = {"Uzi Luna",nil,nil,{"uziluna.whitelisted"},"w_sb_uziluna"}, --tbx-67621321a76065-cac066
		["WEAPON_PRIMESPECTRE"]  = {"Prime Spectre",nil,nil,{"primespectre.whitelisted"},"w_sb_primespectre"}, --tbx-35619921a78578-ff8b4b
		["WEAPON_BLACKICEMP7"]  = {"Black Ice MP7",nil,nil,{"blackicemp7.whitelisted"},"w_sb_blackicemp7"}, --tbx-41320521a68462-86429f
		["WEAPON_CX9"]  = {"CX-9",nil,nil,{"cx9.whitelisted"},"w_sb_cx9"}, --tbx-82919921a78844-0fd9b4
		["WEAPON_PDWHYPERBEAST"]  = {"WF PDW Hyperbeast",nil,nil,{"pdwhyperbeast.whitelisted"},"w_sb_pdwhyperbeast"}, --tbx-72812721a35627-81f632
		["WEAPON_TBSVECTOR"]  = {"TBS Vector",nil,nil,{"tbsvector.whitelisted"},"w_sb_tbsvector"}, --tbx-61925821a26377-f9b846
		["WEAPON_CANDYMP5"]  = {"Candy MP5",nil,nil,{"candymp5.whitelisted"},"w_sb_candymp5"}, --tbx-44125621a69853-70acb3
		["WEAPON_MINICARBINE"]  = {"Mini Carbine",nil,nil,{"minicarbine.whitelisted"},"w_sb_minicarbine"}, --tbx-48525821a34582-f7a084
		["WEAPON_UMPV2NEONOIR"]  = {"UMP V2 Neo Noir",nil,nil,{"umpv2neonoir.whitelisted"},"w_sb_umpv2neonoir"}, --tbx-90425721a73783-b249f0
		["WEAPON_HUFFNPUFF"]  = {"Huff'N'Puff",nil,nil,{"huffnpuff.whitelisted"},"w_sb_huffnpuff"}, --tbx-61225621a59992-5618d4
		["WEAPON_THOMPSON1928"]  = {"Thompson 1928 A1",nil,nil,{"thompson1928.whitelisted"},"w_sb_thompson1928"}, --tbx-82227421a65289-919940
		["WEAPON_DARKMATTERMP5"]  = {"MP5 Dark Matter",nil,nil,{"mp5darkmatter.whitelisted"},"w_sb_darkmattermp5"}, --tbx-81726620a54168-06b206
		["WEAPON_MP7DEVIL"]  = {"MP7 Devil",nil,nil,{"mp7devil.whitelisted"},"w_sb_mp7devil"}, --tbx-56526321a74862-483bb3
		["WEAPON_NERFMEGA"]  = {"NERF Mega Assault",nil,nil,{"nerfmega.whitelisted"},"w_sb_nerfmega"}, --tbx-54429721a63521-a15913
		["WEAPON_AUGA3"]  = {"AUG-A3",nil,nil,{"auga3.whitelisted"},"w_sb_auga3"}, --tbx-83329721a77053-9ee0d3
		["WEAPON_GMCMP5"]  = {"GMC MP5",nil,nil,{"gmcmp5.whitelisted"},"w_sb_gmcmp5"}, --tbx-94426121a77758-19bb18
		["WEAPON_DSSMG"]  = {"D&S SMG",nil,nil,{"dssmg.whitelisted"},"w_sb_dssmg"}, --tbx-18129921a59830-38171a
		["WEAPON_BLASTXSPECTRE"]  = {"Blastx Spectre",nil,nil,{"blastxspectre.whitelisted"},"w_sb_blastxspectre"}, --tbx-95233721a75874-2c119b
		["WEAPON_YELLOWDEVILP90"]  = {"Yellow Devil P90",nil,nil,{"yellowdevilp90.whitelisted"},"w_sb_yellowdevil90"}, --tbx-34233021a30122-abb945
		["WEAPON_VIOLETMP5"]  = {"Violet MP5",nil,nil,{"violetmp5.whitelisted"},"w_sb_violetmp5"}, --tbx-70132021a31007-82bdd2
		["WEAPON_SPACEFLIGHTMP5"]  = {"Spaceflight MP5",nil,nil,{"spaceflightmp5.whitelisted"},"w_sb_spaceflightmp5"}, --tbx-48930921a63130-00d207
		["WEAPON_SOVSTINGER"]  = {"Sovereign Stinger",nil,nil,{"sovstinger.whitelisted"},"w_sb_sovereignstinger"}, --tbx-44030921a58267-0f321f
		["WEAPON_SPECTRE"]  = {"Spectre SMG",nil,nil,{"spectre.whitelisted"},"w_sb_spectre"}, --tbx-77035821a68862-fa96a9
		["WEAPON_DC15"]  = {"DC15 Blaster SMG",nil,nil,{"dc15.whitelisted"},"w_sb_dc15"}, --tbx-94135821a77683-f59c9c
		["WEAPON_TEMPEREDMP5"]  = {"Tempered MP5A4",nil,nil,{"temperedmp5.whitelisted"},"w_sb_temperedmp5"}, --tbx-40835821a65249-ec5e85
		["WEAPON_PRINTSTREAMSMG"]  = {"Printstream SMG",nil,nil,{"printstreamsmg.whitelisted"},"w_sb_printstreamsmg"}, --tbx-96034921a77397-48f5ba
		["WEAPON_DARKMATTERPPSH"]  = {"Dark Matter PP-SH",nil,nil,{"darkmatterppsh.whitelisted"},"w_sb_darkmatterppsh"}, --tbx-99835521a21758-33960e
		["WEAPON_REDTIGERSCORPIONEVO"]  = {"Red Tiger Scorpion Evo",nil,nil,{"redtigerscorpionevo.whitelisted"},"w_sb_redtigerscorpionevo"}, --tbx-40218222a3623-c2df17
		["WEAPON_CALLEEMMP7"]  = {"Calleem MP7",nil,nil,{"calleemmp7.whitelisted"},"w_sb_calleemmp7"}, --tbx-50718322a80314-e1659f
		["WEAPON_ITALIANSWEEPER"]  = {"Italian Sweeper",nil,nil,{"italiansweeper.whitelisted"},"w_sb_italiansweeper"}, --tbx-88424222a7617-f1fa81
		["WEAPON_CBHONEYBADGER"] = {"C.B Honeybadger",nil,nil,{"cbhoneybadger.whitelisted"},"w_sb_cbhoneybadger"}, --tbx-46830122a29785-eb0520
		["WEAPON_BABYDRACO"]  = {"Baby Draco",nil,nil,{"babydraco.whitelisted"},"w_ar_draco_smg"}, --475B-11F3
		["WEAPON_COLT9MM"]  = {"Colt 9mm",nil,nil,{"colt9mm.whitelisted"},"w_sb_colt9mm"}, --BC89-3431
		["WEAPON_AUGX"]  = {"Bloodshot AUG",nil,nil,{"augx.whitelisted"},"w_sb_augx"}, --4411-01A5
		["WEAPON_MP5BI"]  = {"MP5 Black Ice",nil,nil,{"mp5bi.whitelisted"},"w_sb_mp5bi"}, --3563-1C2F
		["WEAPON_MP5SD2GLOW"]  = {"MP5SD2 Glow",nil,nil,{"mp5sd2glow.whitelisted"},"w_sb_mp5sd2glow"}, --C3CF-FADB
		["WEAPON_MP5TEMPERED"]  = {"Tempered MP5",nil,nil,{"mp5tempered.whitelisted"},"w_sb_mp5tempered"}, --1EED-5E73
		["WEAPON_INTERNALDRAGON"]  = {"Infernal Dragon SMG",nil,nil,{"internaldragon.whitelisted"},"w_sb_internaldragon"}, --7BCB-5679
		["WEAPON_RUINATIONSPECTRE"]  = {"Ruination Spectre",nil,nil,{"ruinationspectre.whitelisted"},"w_sb_ruinationspectre"}, --702D-2563
		["WEAPON_BLUESMG"]  = {"Blue SMG",nil,nil,{"bluesmg.whitelisted"},"w_sb_bluesmg"}, --B2D9-74EB
		["WEAPON_BLACKICESCORPION"]  = {"Black Ice Scorpion",nil,nil,{"blackicescorpion.whitelisted"},"w_sb_blackicescorpion"}, --A5DF-34BF
		["WEAPON_REDMP5"]  = {"Red MP5",nil,nil,{"redmp5.whitelisted"},"w_sb_redmp5"}, --B50B-A6AF
		["WEAPON_LDNUFENNEC"]  = {"LDNU Fennec",nil,nil,{"ldnufennec.whitelisted"},"w_sb_ldnufennec"}, --4C51-DA11
		["WEAPON_RECONSPECTRE"]  = {"Recon Spectre",nil,nil,{"reconspectre.whitelisted"},"w_sb_reconspectre"}, --0E3D-8A55
		["WEAPON_MP5SNOW"]  = {"Plods Attitude",nil,nil,{"mp5snow.whitelisted"},"w_sb_mp5snow"}, --C4D3-1015
		["WEAPON_CROWYSMG"]  = {"Crowy SMG",nil,nil,{"crowysmg.whitelisted"},"w_sb_crowysmg"}, --D13F-7007
		["WEAPON_NUCLEARWINTER"]  = {"Declare's Nuclear Winter",nil,nil,{"nuclearwinter.whitelisted"},"w_sb_nuclearwinter"}, --7EC5-1BEF
		["WEAPON_LVGLOW"]  = {"LV Glow UMP",nil,nil,{"lvglow.whitelisted"},"w_sb_lvglow"}, --7C43-FFDD
		["WEAPON_PURPLEREIGNM13"]  = {"Spectre M4",nil,nil,{"purplereignm13.whitelisted"},"w_sb_purplereignm13"}, --9645-37CF
		["WEAPON_CMPSMG"]  = {"CMP MP7",nil,nil,{"cmpsmg.whitelisted"},"w_sb_cmpsmg"}, --3F8B-FD03
		["WEAPON_CORRUPTG"]  = {"CorruptG",nil,nil,{"corruptg.whitelisted"},"w_sb_corruptg"}, --3347-37D1
		["WEAPON_SLIPSTREAMMP5"]  = {"Slipstream MP5",nil,nil,{"slipstreammp5.whitelisted"},"w_sb_slipstreammp5"}, --43D5-A01F
		["WEAPON_CARLSSONSMG"]  = {"Carlsson SMG",nil,nil,{"carlssonsmg.whitelisted"},"w_sb_carlssonsmg"}, --7AAC-8E4C
		["WEAPON_AMAX"]  = {"Queen Of Hearts",nil,nil,{"amax.whitelisted"},"w_ar_amax"}, --52E7-1450
		["WEAPON_STIGMAMP5"]  = {"Stigma MP5",nil,nil,{"stigmamp5.whitelisted"},"w_sb_stigmamp5"}, --64A2-F35D
		["WEAPON_PP191"]  = {"PP-19-01",nil,nil,{"pp191.whitelisted"},"w_smg_vityaz"}, --105A-0DD3
		["WEAPON_SCORPIONEVO3"]  = {"Scorpion EVO 3",nil,nil,{"scorpionevo3.whitelisted"},"w_sb_scorpionevo3"}, --DD51-80F1
		["WEAPON_JEVSMP5"]  = {"Jev's MP5SD",nil,nil,{"jevsmp5.whitelisted"},"w_sb_jevsmp5"}, --8730-A999
		["WEAPON_M13SMG"]  = {"M13 SMG",nil,nil,{"m13smg.whitelisted"},"w_sb_m13smg"}, --35B5-7C1F
		["WEAPON_AZONQXMC"]  = {"Azonq's XMC",nil,nil,{"azonqxmc.whitelisted"},"w_sb_azonqxmc"}, --D2CD-680C
		["WEAPON_RXGUESKUDA"]  = {"Rxgue's Kuda",nil,nil,{"rxgueskuda.whitelisted"},"w_sb_rxgueskuda"}, --240A-BDDD
		["WEAPON_VECTORP22"]  = {"Vector P22",nil,nil,{"vectorp22.whitelisted"},"w_sb_vectorp22"}, --2E67-5437
		["WEAPON_SIGV2"]  = {"Sig V2",nil,nil,{"sigv2.whitelisted"},"w_sb_sigv2"}, --6FE4-6773
		["WEAPON_BLUBBLUB"] = {"Canuckle's Blub Blub",nil,nil,{"weaponblubblub.whitelisted"},"w_sb_blubblub"}, --7621-4C81
		["WEAPON_HKMP7"] = {"MP7 Hk",nil,nil,{"weaponhkmp7.whitelisted"},"w_sb_hkmp7"}, --070A-7718
		["WEAPON_TTTAXESMG"] = {"TTT A.X.E SMG",nil,nil,{"weapontttaxesmg.whitelisted"},"w_sb_tttaxesmg"}, --dbc7-6516
		["WEAPON_K1AEMERGENCY"] = {"K1A Emergency",nil,nil,{"weaponk1aemergency.whitelisted"},"w_sb_k1aemergency"}, --40A3-1394
		["WEAPON_MP5TACTICALBLUE"] = {"MP5 Tactical Blue",nil,nil,{"weaponmp5tacticalblue.whitelisted"},"w_sb_mp5tacticalblue"}, --81D4-72D8
		["WEAPON_ONISPECTRE"] = {"Oni Spectre",nil,nil,{"weapononispectre.whitelisted"},"w_sb_onispectre"}, --E050-7D38
		["WEAPON_FORCEDASM1"] = {"Forced ASM1",nil,nil,{"weaponforcedasm1.whitelisted"},"w_sb_forcedasm1"}, --7F6C-A24A
		["WEAPON_EVILSPECTRE"] = {"Evil Spectre",nil,nil,{"weaponevilspectre.whitelisted"},"w_sb_evilspectre"}, --D939-9CA6
		["WEAPON_PEACEMAKER"] = {"Peacekeeper",nil,nil,{"weaponpeacemaker.whitelisted"},"w_sb_peacemaker"}, --7079-E450
		["WEAPON_PPSHRONIN"] = {"Ronin's Return",nil,nil,{"weaponppshronin.whitelisted"},"w_sb_ppshronin"}, --55A2-3D6F
		["WEAPON_NEONDIAMONDMP9"] = {"Neon Diamond MP9",nil,nil,{"weaponneondiamondmp9.whitelisted"},"w_sb_neondiamondmp9"}, --5DE1-7BE7
		["WEAPON_AM40DAMASCUS"] = {"AM40 Damascus",nil,nil,{"weaponam40damascus.whitelisted"},"w_sb_am40damascus"}, --2171-F062
		["WEAPON_CALSDEMONTIME"] = {"Cal's Demon Time",nil,nil,{"weaponcalsdemontime.whitelisted"},"w_sb_calsdemontime"}, --7540-3967
		["WEAPON_JACKTIGERSMG"] = {"Jacks Tiger SMG",nil,nil,{"weaponjacktigersmg.whitelisted"},"w_sb_jacktigersmg"}, --CD8D-7CF0
		["WEAPON_BLACKICEAUGPARA"] = {"Black Ice AUG Para",nil,nil,{"weaponblackiceaugpara.whitelisted"},"w_sb_blackiceaugpara"}, --989C-67CB
		["WEAPON_ASVALUSG"] = {"AS VAL USG",nil,nil,{"weaponasvalusg.whitelisted"},"w_ar_asvalusg"}, --1540-9660
		["WEAPON_SK3NGMP5"] = {"sk3ng's MP5",nil,nil,{"weaponsk3ngmp5.whitelisted"},"w_sb_sk3ngmp5"}, --A7E6-1A1E
		["WEAPON_RITUALTTTAXESMG"] = {"Ritual's lil uzi",nil,nil,{"weaponritualtttaxesmg.whitelisted"},"w_sb_ritualtttaxesmg"}, --D7CD-871F
		["WEAPON_REDRUMSMG"] = {"Redrum SMG",nil,nil,{"weaponredrumsmg.whitelisted"},"w_sb_redrumsmg"}, --AF71-FD95
		["WEAPON_ISO45"] = {"ISO 45",nil,nil,{"weaponiso45.whitelisted"},"w_sb_iso45"}, --2C8B-4EA7
		["WEAPON_MP5A3"] = {"Cloud Mp5a3",nil,nil,{"weaponmp5a3.whitelisted"},"w_sb_mp5a3"}, --3F42-5591
		["WEAPON_FNP90"] = {"ULTRA INSTINCT OMEN",nil,nil,{"weaponfnp90.whitelisted"},"w_sb_fnp90"}, --21F7-206F
		["WEAPON_616MP5"] = {"616 MP5",nil,nil,{"weapon616mp5.whitelisted"},"w_sb_616mp5"}, --B01E-544B
		["WEAPON_AYRESYYSMP5"] = {"AYRESYYS MP5",nil,nil,{"weaponayresyysmp5.whitelisted"},"w_sb_ayresyysmp5"}, --E1EF-D70A
		["WEAPON_35AKANIME"] = {"Yiqqa's Death Whisperer",nil,nil,{"weapon35akanime.whitelisted"},"w_sb_35akanime"}, --6479-82A0
		["WEAPON_BLUEBELLAK47U"] = {"Bluebell ak-47u",nil,nil,{"weaponbluebellak47u.whitelisted"},"w_sb_bluebellak47u"}, --5C13-0CC8
		["WEAPON_BLOODCRACKISO"] = {"Bloodcrack ISO",nil,nil,{"weaponbloodcrackiso.whitelisted"},"w_sb_bloodcrackiso"}, --304A-7C0E
		["WEAPON_MP5CHROMIUM"] = {"CLC Chromium MP5",nil,nil,{"weaponmp5chromium.whitelisted"},"w_sb_mp5chromium"}, --2525-6B0F
		["WEAPON_BLOODTHIRSTUZI"] = {"Blood Thirst Uzi",nil,nil,{"weaponbloodthirstuzi.whitelisted"},"w_sb_bloodthirstuzi"}, --FCB5-EC81
		["WEAPON_BLOODMOONHB"] = {"Blood Moon HB",nil,nil,{"weaponbloodmoonhb.whitelisted"},"w_sb_bloodmoonhb"}, --597A-7D86
		["WEAPON_TEMPEREDTHOMPSON"] = {"Tempered Thompson",nil,nil,{"weapontemperedthompson.whitelisted"},"w_sb_temperedthompson"}, --09B2-83B3
		["WEAPON_MP5DRACO"] = {"MP5 Draco",nil,nil,{"weaponmp5draco.whitelisted"},"w_sb_mp5draco"}, --1259-077F
		["WEAPON_SCORPIONEVO3A1"] = {"Muz's Scorpion",nil,nil,{"weaponscorpionevo3a1.whitelisted"},"w_sb_scorpionevo3a1"}, --E353-DF01
		["WEAPON_STREETSWEEPER"] = {"Street Sweeper",nil,nil,{"weaponstreetsweeper.whitelisted"},"w_sb_streetsweeper"}, --3400-0211
		["WEAPON_CHARLESAK74U"] = {"Charles AK74U",nil,nil,{"weaponcharlesak74u.whitelisted"},"w_sb_charlesak74u"}, --6E60-2B32
		["WEAPON_STRTHOMPSONMUSICFEST"] = {"DANNY SMG",nil,nil,{"weaponstrthompsonmusicfest.whitelisted"},"w_sb_strthompsonmusicfest"}, --4C98-DD53
		["WEAPON_TOPSHOOTA"] = {"TopShootah",nil,nil,{"weapontopshoota.whitelisted"},"w_sb_topshoota"}, --3FB5-69B3
		["WEAPON_M16SMG"] = {"Get Pebbled",nil,nil,{"weaponm16smg.whitelisted"},"w_sb_m16smg"}, --5198-8BD3
		["WEAPON_HOODMAC10"] = {"HoodMac10",nil,nil,{"weaponhoodmac10.whitelisted"},"w_sb_hoodmac10"}, --3442-FE14
		["WEAPON_BASPRED"] = {"Bravo 6 Bas-P",nil,nil,{"weaponbaspred.whitelisted"},"w_sb_baspred"}, --85DF-0D92
		["WEAPON_BLUETTTAXE"] = {"Clapz SMG",nil,nil,{"weaponbluetttaxe.whitelisted"},"w_sb_bluetttaxe"}, --4571-DCCB
		["WEAPON_HONEYBADGERTOPOGRAPHY"] = {"J4ckals Honeybadger",nil,nil,{"weaponhoneybadgertopography.whitelisted"},"w_sb_honeybadgertopography"}, --88E0-0860
		["WEAPON_TTTAXECHAPOSMG"] = {"CHAPO SMG",nil,nil,{"weapontttaxechaposmg.whitelisted"},"w_sb_tttaxechaposmg"}, --0BF0-12AC
		["WEAPON_MP7TNDSPITFIRE"] = {"TND Spitfire",nil,nil,{"weaponmp7tndspitfire.whitelisted"},"w_sb_mp7tndspitfire"}, --A215-7F77
		["WEAPON_THELUXSMG"] = {"The Lux SMG",nil,nil,{"weapontheluxsmg.whitelisted"},"w_sb_theluxsmg"}, --CB45-2007
		["WEAPON_PEWPEW"] = {"Pew Pew SMG",nil,nil,{"weaponpewpew.whitelisted"},"w_sb_pewpew"}, --FA5F-F71F
		["WEAPON_THEGRAFTER"] = {"The Grafter",nil,nil,{"weaponthegrafter.whitelisted"},"w_sb_thegrafter"}, --708C-4496
		["WEAPON_EVO3A1"] = {"EVO 3 A1",nil,nil,{"weaponevo3a1.whitelisted"},"w_sb_evo3a1"}, --076A-2357
		["WEAPON_DRAGONBORNMASTERPIECEGLOW"] = {"Flamethrower",nil,nil,{"weapondragonbornmasterpieceglow.whitelisted"},"w_sb_dragonbornmasterpieceglow"}, --c2f8-f749
		["WEAPON_AQUAMP40"] = {"Aqua MP-40",nil,nil,{"weaponaquamp40.whitelisted"},"w_sb_aquamp40"}, --58D1-FDCE
		["WEAPON_DRAGONLORESMG"] = {"Dragon Lore SMG",nil,nil,{"weapondragonloresmg.whitelisted"},"w_sb_dragonloresmg"}, --4FDA-8A78
		["WEAPON_POIDSRD"] = {"Poids RD",nil,nil,{"weaponpoidsrd.whitelisted"},"w_sb_poidsrd"}, --BC5D-A106
		["WEAPON_CHIPSSIG"] = {"Chips Sig",nil,nil,{"weaponchipssig.whitelisted"},"w_sb_chipssig"}, --D5CB-DEA6
		--? End Large Arms SMGs (DO NOT DELETE - USED BY CI)

        --?Snipers
		["WEAPON_MOSINCMG"] = {"Mosin Bolt-Action",nil,nil,{""},"w_ar_mosin"},
		["WEAPON_M110CMGG"]  = {"M110",nil,nil,{"rusty.whitelisted","m110.whitelisted"},"w_sr_m110cmg"},
		["WEAPON_M8"]  = {"M-82",nil,nil,{"callum.whitelisted","m82.whitelisted"},"w_ar_m8a7"},
		["WEAPON_SVCMG"]  = {"SV-98",nil,nil,{"callum.whitelisted","bozo.whitelisted","sv98.whitelisted"},"WEAPON_SVCMG"},
		["WEAPON_MSR"]  = {"MSR",nil,nil,{"msr.whitelisted"},"w_sr_msr"},
		["WEAPON_M200CMG"]  = {"CheyTac Intervention",nil,nil,{"vortex.whitelisted"},"w_sr_m200"},
		["WEAPON_RE6CMG"]  = {"RE6 Bolt-Action Sniper Rifle",nil,nil,{"mir.whitelisted"},"w_sr_re6cmg"}, --mngy,imo,ras
		["WEAPON_BARRETCMG"] = {"Barret .50cal",nil,nil,{"rusty.whitelisted","matt.whitelisted","barret.whitelisted"},"w_sr_barretcmg"},
		["WEAPON_BARRETM98"] = {"Barret M98",nil,nil,{"m98.whitelisted"},"w_sr_barretm98"},
		["WEAPON_M82A4"] = {"AWP Hyper Beast",nil,nil,{"awp.whitelisted"},"w_sr_m82a4"},
		["WEAPON_GUNGNIR"] = {"Gungnir",nil,nil,{"gungnir.whitelisted"},"w_sr_gungnir"},
		["WEAPON_DEVASTATORSSNIPER"]  = {"Devastator Sniper",nil,nil,{"devastatorsniper.whitelisted"},"w_sr_devtatorsniper"}, --tbx-44120021a14223-d9014c
		["WEAPON_ORSIST5000"]  = {"Orsis T5000",nil,nil,{"orsist5000.whitelisted"},"w_sr_orsist5000"}, --tbx-85820021a33777-abb254
		["WEAPON_M82BLOSSOM"]  = {"Evil M82 Divine Blossom",nil,nil,{"m82blossom.whitelisted"},"w_sr_m82blossom"}, --tbx-21534921a76328-267bfd
		["WEAPON_NERFMOSIN"] = {"Nerf Mosin",nil,nil,{"nerfmosin.whitelisted"},"w_ar_nerfmosin"}, --tbx-72310222a53865-d8f88a
		["WEAPON_SAKURAMOSIN"] = {"Sakura Mosin",nil,nil,{"sakuramosin.whitelisted"},"w_ar_sakuramosin"}, --?MINIGAMES TROPHY REWARD
		["WEAPON_CBMOSIN"] = {"CB Mosin",nil,nil,{"cbmosin.whitelisted"},"w_sr_cbmosin"}, --tbx-79914922a43308-c58fd9
		["WEAPON_L115A3"]  = {"L115A3",nil,nil,{"l115a3.whitelisted"},"w_sr_l115a3"}, --FF3B-898B
		["WEAPON_ANONMOUSSNIPER"]  = {"Anonymous Sniper",nil,nil,{"anonymoussniper.whitelisted"},"w_sr_anonymoussniper"}, --0689-5439
		["WEAPON_M107SNIPER"]  = {"M107",nil,nil,{"m107sniper.whitelisted"},"w_sr_m107sniper"}, --91A9-5097
		["WEAPON_RICHORREKTSNIPER"]  = {"RektByRich",nil,nil,{"richorrektsniper.whitelisted"},"w_sr_richorrektsniper"}, --991B-EF3D
		["WEAPON_AJHUNTERMOSIN"] = {"AJ Hunter Mosin",nil,nil,{"ajhuntermosin.whitelisted"},"w_ar_adhuntermosin"}, -- competition win
		["WEAPON_MANORMOSIN"] = {"Manor Mosin",nil,nil,{"weaponmanormosin.whitelisted"},"w_ar_manormosin"}, --FA77-57B0
		["WEAPON_KITTYSNIPER"] = {"Kitty Sniper",nil,nil,{"weaponkittysniper.whitelisted"},"w_sr_kittysniper"}, --94DA-9DD4
		["WEAPON_DVL10SABOTEUR"] = {"Boddy's DVL-10 Saboteur",nil,nil,{"weapondvl10saboteur.whitelisted"},"w_sr_dvl10saboteur"}, --2E82-EDA1
		["WEAPON_CALSFAKEY"] = {"Cal's Fakey",nil,nil,{"weaponcalsfakey.whitelisted"},"w_sr_calsfakey"}, --19BE-2FA1
		["WEAPON_SCOPEDMOSIN"] = {"Scoped Mosin",nil,nil,{"weaponscopedmosin.whitelisted"},"w_sr_scopedmosin"}, --DFCE-76E0
		["WEAPON_FRM82"] = {"FR M82",nil,nil,{"weaponfrm82.whitelisted"},"w_sr_frm82"}, --E656-ECBE
		["WEAPON_CALSNAGANT"] = {"Cal's Nagant",nil,nil,{"weaponcalsnagant.whitelisted"},"w_sr_calsnagant"}, --30D9-FC97
		["WEAPON_K98K"] = {"Guardian Angel",nil,nil,{"weaponk98k.whitelisted"},"w_sr_k98k"}, --2D8F-87D4
		["WEAPON_MARKSMANMK2"] = {"Marksman Rifle Mk2",nil,nil,{"weaponmarksmanmk2.whitelisted"},"w_sr_marksmanmk2"}, --0881-C5B7
		["WEAPON_616SNIPER"] = {"616 Sniper",nil,nil,{"weapon616sniper.whitelisted"},"w_sr_616sniper"}, --50A7-C98A
		["WEAPON_EVILANONSNIPER"] = {"Evil Anon Sniper",nil,nil,{"weaponevilanonsniper.whitelisted"},"w_sr_evilanonsniper"}, --177D-D9BB
		["WEAPON_DRAGONLORE"] = {"Dragon Lore",nil,nil,{"weapondragonlore.whitelisted"},"w_sr_dragonlore"}, --BF1B-A5B5
		["WEAPON_616MOSIN"] = {"616 Mosin",nil,nil,{"weapon616mosin.whitelisted"},"w_ar_616mosin"}, --EE58-E11F
		["WEAPON_SNIPEXALLIGATOR"] = {"Mkitten Snipex",nil,nil,{"weaponsnipexalligator.whitelisted"},"w_sr_snipexalligator"}, --8E6A-9832
		["WEAPON_SIXTHSENSESNIPER"] = {"Sixth Sense Sniper",nil,nil,{"gang.sixthsense.whitelist"},"w_sr_sixthsensesniper"}, --Sixth Sense Whitelist
		["WEAPON_GATETOHEAVENSNIPER"] = {"Yiqqa's Gate To Heaven",nil,nil,{"weapongatetoheavensniper.whitelisted"},"w_sr_gatetoheavensniper"}, --E1E1-75BB
		["WEAPON_CALZWRAITH"] = {"CalzWraith",nil,nil,{"weaponcalzwraith.whitelisted"},"w_sr_calzwraith"}, --E5A3-7815
		["WEAPON_SIMMXHHDOWN"] = {"Simmxhh Down",nil,nil,{"weaponsimmxhhdown.whitelisted"},"w_sr_simmxhhdown"}, --675B-5380
		["WEAPON_MACMOSIN"] = {"Mac's Mosin",nil,nil,{"weaponmacmosin.whitelisted"},"w_ar_macmosin"}, --ACE8-CB29
		["WEAPON_SABRESNIPER"] = {"Sabre Railgun",nil,nil,{"weaponsabresniper.whitelisted"},"w_sr_sabresniper"}, --20C0-DC23
		["WEAPON_AWPDESERTHYDRA"] = {"AWP Desert Hydra",nil,nil,{"weaponawpdeserthydra.whitelisted"},"w_sr_awpdeserthydra"}, --C71D-61EE
		["WEAPON_EMOSTRIKE6"] = {"Emostrike CS-6",nil,nil,{"weaponemostrike6.whitelisted"},"w_ar_emostrike6"}, --1102-2293
		["WEAPON_AWPPRINTSTREAM"] = {"AWP Printstream",nil,nil,{"weaponawpprintstream.whitelisted"},"w_sr_awpprintstream"}, --7E01-083D
		["WEAPON_TOASTMOSIN"] = {"Toasta's Nagant",nil,nil,{"weapontoastmosin.whitelisted"},"w_ar_toastmosin"}, --E3CD-29BD
		["WEAPON_SUPMO"] = {"Mosin Wrapped",nil,nil,{"weaponsupmo.whitelisted"},"w_ar_supmo"}, --4990-7308
		["WEAPON_WIREFRAMEMOSIN"] = {"Sukyas Nagant",nil,nil,{"weaponwireframemosin.whitelisted"},"w_ar_wireframemosin"}, --56DC-D14
		["WEAPON_KONGMOSIN"] = {"Kong's Mosin",nil,nil,{"weaponkongmosin.whitelisted"},"w_ar_kongmosin"}, --760B-8CA6
		["WEAPON_REDLINESNIPER"] = {"Redline Sniper",nil,nil,{"weaponredlinesniper.whitelisted"},"w_sr_redlinesniper"}, --1179-6109
		["WEAPON_SCREAMMOSIN"] = {" Scream's mosin",nil,nil,{"weaponscreammosin.whitelisted"},"w_sr_screammosin"}, --3DC0-DD02
		["WEAPON_HIGHROLLERMOSIN"] = {"High Roller Mosin",nil,nil,{"weaponhighrollermosin.whitelisted"},"w_ar_highrollermosin"}, --0748-6550
		["WEAPON_BLACKICEMOSIN"] = {"Black Ice Mosin",nil,nil,{"weaponblackicemosin.whitelisted"},"w_sr_blackicemosin"}, --8B06-062E
		["WEAPON_TOMSCUPID"] = {"Tom's Cupid",nil,nil,{"weapontomscupid.whitelisted"},"w_sr_tomscupid"}, --D795-AB40
		["WEAPON_STARBOY"] = {"Starboy",nil,nil,{"weaponstarboy.whitelisted"},"w_ar_starboy"}, --77CD-BC36
		--? End Large Arms Snipers (DO NOT DELETE - USED BY CI)

		--?Rifles
		["WEAPON_AK74CMG"] = {"AK-74 Assault Rifle",nil,nil,{""},"w_ar_ak74cmg"},
		["WEAPON_DARKKNIGHTAK"]  = {"Predator AK47",nil,nil,{"darkknightak.whitelisted"},"w_ar_darkknightak"},
		["WEAPON_CNDYRIFLE"]  = {"CNDY Rifle",nil,nil,{"cdnyrifle.whitelisted"},"w_ar_cndyrifle"},
		["WEAPON_FAMAS"]  = {"SCAR-H",nil,nil,{"famas.whitelisted"},"w_ar_famas"},
		["WEAPON_L119A2"]  = {"L119A2",nil,nil,{"l1.whitelisted"},"w_ar_l119a2"},
		["WEAPON_SIG516"]  = {"SIG 516",nil,nil,{"sig516.whitelisted"},"w_ar_sig516"},
		["WEAPON_RE6RN"]  = {"RE6 Assault Rifle RN",nil,nil,{"smr.whitelisted"},"w_ar_re6rn"}, -- shaz, marcus and rice
		["WEAPON_SP1"]  = {"M16 SP1",nil,nil,{"josh3.whitelisted","gust.whitelisted"},"w_ar_sp1"}, -- 49712 /  333  / 71887 joshtm
		["WEAPON_FAMASG2"]  = {"FAMAS G2",nil,nil,{"ck.whitelisted"},"w_ar_famasg2"}, -- chiefwiggy & kevingames
		["WEAPON_P416"]  = {"POF P416",nil,nil,{"jordan.whitelisted"},"w_ar_p416"}, -- jordan +1
		["WEAPON_CR"]  = {"Improved Carbine Rifle",nil,nil,{"cr.whitelisted"},"w_pi_crim"}, -- jack and jim
		["WEAPON_HK418"]  = {"HK418 TAN",nil,nil,{"hk418.whitelisted"},"w_ar_hk418"}, -- awge and whobigs
		["WEAPON_ANARCHY"]  = {"Anarchy 3n300",nil,nil,{"anarchy.whitelisted"},"w_ar_anarchy"}, -- awge and whobigs
		["WEAPON_RIFLEV2"]  = {"Rifle v2",nil,nil,{"riflev2.whitelisted"},"w_ar_riflev2"},
		["WEAPON_TAR21"]  = {"TAR 21",nil,nil,{"tar.whitelisted"},"w_ar_tar21"}, -- 99190 24 17552 soba
		["WEAPON_MK18"]  = {"MK 18",nil,nil,{"mk18.whitelisted"},"w_ar_mk18"}, -- imo, ras
		["WEAPON_M8A7"]  = {"M8A7",nil,nil,{"m8a7.whitelisted"},"w_ar_m8a7"},
		["WEAPON_BAL27"]  = {"Bal-27",nil,nil,{"bal.whitelisted"},"w_ar_bal27"},
		["WEAPON_416DCMG"] = {"416D Assault Rifle",nil,nil,{"416d.whitelisted"},"w_ar_416DCMG"},
		["WEAPON_L129A1"]  = {"L129A1",nil,nil,{"vortex2.whitelisted"},"w_ar_l129a1"},
		["WEAPON_M16A2"]  = {"M16A2",nil,nil,{"m16a2.whitelisted"},"w_ar_m16a2"},
		["WEAPON_M16A4"]  = {"M16A4",nil,nil,{"m16a4.whitelisted"},"w_ar_m16a4"},
		["WEAPON_HK870"]  = {"HK 870",nil,nil,{"znuo.whitelisted"},"w_ar_hk870"}, -- sold to gunna
		["WEAPON_RIOTM4"]  = {"Riot M4",nil,nil,{"riotm4.whitelisted"},"w_ar_riotm4"},
		["WEAPON_JUNKER"]  = {"Junker",nil,nil,{"junker.whitelisted"},"w_ar_junker"},
		["WEAPON_HK416SKEL"]  = {"HK 416 Skel",nil,nil,{"hkskel.whitelisted"},"w_ar_hk416skel"},
		["WEAPON_HK416CMG"] = {"HK 416",nil,nil,{"gazza.whitelisted","harra.whitelisted","callum.whitelisted","chiefwiggy.whitelisted","hk416.whitelisted","irish.whitelisted","curt.whitelisted"},"w_ar_hk416"},
		["WEAPON_AR15CMG"]  = {"AR15",nil,nil,{"ar15.whitelisted"},"w_ar_ar15cmg"},
		["WEAPON_FNFALCMG"] = {"FNFAL",nil,nil,{"fnfal.whitelisted"},"w_ar_fnfalcmg"}, -- sold to qwebbse
		["WEAPON_SPECCARBINECMG"] = {"Special Carbine MK2",nil,nil,{"rusty.whitelisted","matt.whitelisted","imo.whitelisted","mk2.whitelisted"},"w_ar_speccarbinemk2"},
		["WEAPON_ACRCMG"]  = {"ACR-R",nil,nil,{"acrr.whitelisted"},"w_ar_acr"},
		["WEAPON_LVOACCMG"]  = {"LOAC",nil,nil,{"lvoac.whitelisted","jerome.whitelisted","callum.whitelisted"},"w_ar_lvoac"},
		["WEAPON_SCARCMG"]  = {"SCARH",nil,nil,{"rudy.whitelisted","whobigs.whitelisted"},"w_ar_scar"},
		["WEAPON_AUGCMG"]  = {"AUG",nil,nil,{"aug.whitelisted"},"w_ar_aug"},
		["WEAPON_416CCMG"]  = {"HK 416C",nil,nil,{"callum.whitelisted","harrow.whitelisted","hk416c.whitelisted","irish.whitelisted","luke.whitelisted"},"w_ar_hk416c"},
		["WEAPON_AKSAKURA"]  = {"AK Sakura",nil,nil,{"aksakura.whitelisted"},"w_ar_aksakura"},
		["WEAPON_CARBINERIFLEV2"]  = {"ARBINE RIFLE V2",nil,nil,{"cbv2.whitelisted"},"w_ar_carbineriflev2"},
		["WEAPON_HONEYBADGER"]  = {"Honey Badger",nil,nil,{"honey.whitelisted"},"w_ar_honeybadger"},
		["WEAPON_R5"]  = {"Remington R5 RGP",nil,nil,{"whobigs.whitelisted","r5.whitelisted"},"w_ar_r5"},
		["WEAPON_NV4"]  = {"NV4 flatline",nil,nil,{"zeus.whitelisted"},"w_ar_nv4"},
		["WEAPON_M4A11"]  = {"M4A1",nil,nil,{"callum2.whitelisted","sam.whitelisted","dutch.whitelisted","irish.whitelisted"},"w_ar_m4a11"},
		["WEAPON_M203"]  = {"Evil M203",nil,nil,{"callum.whitelisted","tay.whitelisted","reece.whitelisted","m203.whitelisted"},"w_ar_m203"},
		["WEAPON_HKG3CMG"]  = {"HKG3",nil,nil,{"shockz.whitelisted"},"w_ar_hkg3"},
		["WEAPON_BF4"]  = {"AR-C Far Cry 5",nil,nil,{"imo.whitelisted"},"w_ar_bf4"},
		["WEAPON_PARAFAL"]  = {"FAL",nil,nil,{"parafal.whitelisted"},"w_ar_parafal"},
		["WEAPON_HKCMG"]  = {"HK17",nil,nil,{"hk.whitelisted"},"w_ar_hk"},
		["WEAPON_SC2010"]  = {"SC-2010",nil,nil,{"marcus.whitelisted"},"w_ar_sc2010"}, -- IDS :20605, 100 and 53064
		["WEAPON_M4COLT"]  = {"M4A1 COLT",nil,nil,{"mone.whitelisted","houchkinm4.whitelisted"},"w_ar_m4colt"}, -- IDS :13464, 18739 and 18920
		["WEAPON_G3A3"]  = {"G3A3",nil,nil,{"btec.whitelisted"},"w_ar_g3a3"}, -- IDS :34485, 99190, 44344
		["WEAPON_AR18CMG"]  = {"AR-18",nil,nil,{"ar18.whitelisted","whobigs.whitelisted"},"w_ar_ar18"},
		["WEAPON_QBZCMG"]  = {"HK417",nil,nil,{"matt.whitelisted","flux.whitelisted","lucky.whitelisted","nbk.whitelisted","hk417.whitelisted"},"w_ar_qbz"},
		["WEAPON_IA2CMG"]  = {"IMBEL IA2",nil,nil,{"ia2.whitelisted"},"w_ar_ia2"},
		["WEAPON_AK12CMG"]  = {"MPT-76",nil,nil,{"ak12cmg.whitelisted","joshtm.whitelisted"},"w_ar_ak12"},
		["WEAPON_SCARLCMG"]  = {"SCAR-L",nil,nil,{"mongy.whitelisted"},"w_ar_scarl"},
		["WEAPON_IWICMG"]  = {"IWI X95",nil,nil,{"iwi.whitelisted"},"w_ar_iwi"},
		["WEAPON_A2CMG"]  = {"M416",nil,nil,{"wiggy.whitelisted","jimrp.whitelisted","m4.whitelisted"},"w_ar_a2"},
		["WEAPON_M4A1S"]  = {"M4A1-S",nil,nil,{"m4a1s.whitelisted"},"w_ar_a2"},
		["WEAPON_LVGUN"]  = {"LV GUN",nil,nil,{"lv.whitelisted"},"w_ar_lvgun"},
		["WEAPON_ARES"]  = {"Ares Shrike",nil,nil,{"ares.whitelisted"},"w_ar_ares"},
		["WEAPON_M13"]  = {"M13",nil,nil,{"m13.whitelisted"},"w_ar_m13"}, -- brinders
		["WEAPON_GRAU"]  = {"GRAU",nil,nil,{"grau.whitelisted"},"w_ar_grau"}, -- gunna
		["WEAPON_LR300S"]  = {"LR300 Sakura",nil,nil,{"lr300s.whitelisted"},"w_ar_lr300s"},
		["WEAPON_EF88"]  = {"EF88",nil,nil,{"ef88.whitelisted"},"w_ar_ef88"},
		["WEAPON_MCX2"]  = {"MCX",nil,nil,{"mcx2.whitelisted"},"w_ar_mcx2"},
		["WEAPON_PHANTOM"]  = {"Phantom",nil,nil,{"phantom.whitelisted"},"w_ar_phantom"},
		["WEAPON_416"]  = {"Tactical 416",nil,nil,{"416.whitelisted"},"w_ar_416"},
		["WEAPON_HKV2"]  = {"HK",nil,nil,{"hkv2.whitelisted"},"w_ar_hkv2"},
		["WEAPON_AN94"]  = {"AN-94",nil,nil,{"an94.whitelisted"},"w_ar_an94"},
		["WEAPON_AUGMK2"]  = {"AUGMK2",nil,nil,{"augmk2.whitelisted"},"w_ar_augmk2"},
		["WEAPON_AUG2"]  = {"AUG Type 2",nil,nil,{"aug2.whitelisted"},"w_ar_aug2"},
		["WEAPON_VHS"]  = {"vhs",nil,nil,{"vhs.whitelisted"},"w_ar_vhs"},
		["WEAPON_M16A1"]  = {"Colt M16A1",nil,nil,{"m16a1.whitelisted"},"w_ar_m16a1"},
		["WEAPON_HK33CMG"]  = {"HK33",nil,nil,{"harrow.whitelisted","dweltas.whitelisted"},"w_ar_hk33"},
		["WEAPON_KILO"]  = {"Kilo",nil,nil,{"kilo.whitelisted"},"w_ar_kilo"},
		["WEAPON_M4A4NOIR"]  = {"M4A4 Neo Noir",nil,nil,{"noir.whitelisted"},"w_ar_m4a4noir"},
		["WEAPON_RE6"]  = {"RE6",nil,nil,{"rice.whitelisted"},"w_sr_re6cmg"},
		["WEAPON_G36"]  = {"G36",nil,nil,{"g36.whitelisted"},"w_ar_g36"},
		["WEAPON_ICEDRAKE"]  = {"Ice Drake",nil,nil,{"icedrake.whitelisted"},"w_ar_icedrake"},
		["WEAPON_AK74UCMG"]  = {"AK74-U",nil,nil,{"ak74ua.whitelisted"},"w_ar_ak74ucmg"},
		["WEAPON_GURA"]  = {"M4 Gura",nil,nil,{"m4gura.whitelisted"},"w_ar_gura"},
		["WEAPON_PRIMEVANDAL"]  = {"Prime Vandal",nil,nil,{"primevandal.whitelisted"},"w_ar_primevandal"},
		["WEAPON_SIG516SOPMOD"]  = {"SIG 516 SOPMOD",nil,nil,{"sig516sopmod.whitelisted"},"w_ar_516sopmod"},
		["WEAPON_M16ANIME"]  = {"M16 Anime",nil,nil,{"m16anime.whitelisted"},"w_ar_m16anime"},
		["WEAPON_LR300RAINBOW"]  = {"LR300 Rainbow",nil,nil,{"lr300rainbow.whitelisted"},"w_ar_lr300rainbow"},
		["WEAPON_15SAIGRY"]  = {"AR 15 Sai Gry",nil,nil,{"saigry.whitelisted"},"w_ar_15saigry"},
		["WEAPON_AKCQB"]  = {"AK CQB",nil,nil,{"akcqb.whitelisted"},"w_ar_akcqb"},
		["WEAPON_M4A1SGC"]  = {"M4A1-S Golden Coil",nil,nil,{"m4gc.whitelisted"},"w_ar_m4a1sgc"},
		["WEAPON_HAWKM4"]  = {"Hawk M4",nil,nil,{"hawk.whitelisted"},"w_ar_hawkm4"},
		["WEAPON_MAVERICK"]  = {"Maverick AR",nil,nil,{"maverick.whitelisted"},"w_ar_maverick"},
		["WEAPON_M4A1V2"]  = {"M4A1 Howl",nil,nil,{"howl.whitelisted"},"w_ar_m4a1v2"},
		["WEAPON_AKKRAB"]  = {"AK Krab",nil,nil,{"akkrab.whitelisted"},"w_ar_akkrab"},
		["WEAPON_TACCMG"]  = {"Tactical M4A1 CQB",nil,nil,{"harra.whitelisted","m4cqb.whitelisted"},"w_ar_tac"},
		["WEAPON_LOUISVUITTONCARBINE"]  = {"Louis Vuitton Carbine",nil,nil,{"louisvuittoncarbine.whitelisted"},"w_ar_louisvuittoncarbine"},
		["WEAPON_M4WAGESOFSIN"]  = {"M4A4 Wages of Sin",nil,nil,{"m4wagesofsin.whitelisted"},"w_ar_m4wagesofsin"},
		["WEAPON_M8A1"]  = {"M8A1",nil,nil,{"m8a1.whitelisted"},"w_ar_m8a1"},
		["WEAPON_BIOME"]  = {"M4P",nil,nil,{"biome.whitelisted"},"w_ar_biome"},
		["WEAPON_M4HYPERBEAST"]  = {"M4A1-S Hyperbeast",nil,nil,{"m4hyperbeast.whitelisted"},"w_ar_m4hyperbeast"},
		["WEAPON_KN57"]  = {"KN-57",nil,nil,{"kn57.whitelisted"},"w_ar_kn57"},
		["WEAPON_M4FBX"]  = {"M4 FBX",nil,nil,{"m4fbx.whitelisted"},"w_ar_m4fbx"},
		["WEAPON_AEK971"]  = {"AEK-971",nil,nil,{"aek.whitelisted"},"w_ar_aek971"},
		["WEAPON_HINEDERE"]  = {"HINEDERE",nil,nil,{"hinedere.whitelisted"},"w_ar_hinedere"}, --vibe
		["WEAPON_NSC"]  = {"NSC",nil,nil,{"nsc.whitelisted"},"w_ar_nsc"},  --vibe
		["WEAPON_PQ15"]  = {"AN-PQ15",nil,nil,{"pq15.whitelisted"},"w_ar_pq15"}, --callum matteo
		["WEAPON_XR2"]  = {"XR-2",nil,nil,{"xr2.whitelisted"},"w_ar_xr2"},  --Morg4n
		["WEAPON_HK416SF"]  = {"hk416 silahı",nil,nil,{"hksf.whitelisted"},"w_ar_hk416sf"},  --SEFLY
		["WEAPON_VAL"]  = {"AS VAL",nil,nil,{"val.whitelisted"},"w_ar_val"}, --jim and jack
		["WEAPON_M4A1T"]  = {"M4A1",nil,nil,{"drb.whitelisted"},"w_ar_m4a1t"}, --Dewaltas,ross,bozo
		["WEAPON_CARBINEMK3CMG"]  = {"Carbine Mk3",nil,nil,{"hero.whitelisted","rebelperson.whitelisted","jimrp.whitelisted","carbinemk3cmg.whitelisted"},"w_ar_carbinemk3"},
		["WEAPON_GALILCMG"]  = {"Galil",nil,nil,{"og.whitelisted","galil.whitelisted"},"w_ar_galil"},
		["WEAPON_MPT76CMG"]  = {"MPT76",nil,nil,{"og.whitelisted","mpt76.whitelisted"},"w_ar_mpt76"},
		["WEAPON_SIGMPX"]  = {"G3 Battle Rifle",nil,nil,{"bob.whitelisted","gully.whitelisted"},"w_ar_sigmpx"}, --GULLY AND BOB
		["WEAPON_M16VNCMG"]  = {"M16VN",nil,nil,{"irish.whitelisted","m16.whitelisted"},"w_ar_m16vn"},
		["WEAPON_M4A4PRINTSTREAM"]  = {"M4A4 Printstream",nil,nil,{"m4a4print.whitelisted"},"w_ar_m4a4printstream"}, --tbx-94720021a73594-b15ee6
		["WEAPON_M4A4HYBRID"]  = {"M4A4 Hybrid",nil,nil,{"m4a4hybrid.whitelisted"},"w_ar_m4a4hybrid"}, --tbx-65120021a72770-3ed272
		["WEAPON_IBAK"]  = {"IB Cherry Blossom AK",nil,nil,{"ibak.whitelisted"},"w_ar_ibak"}, --tbx-44120021a57705-5278d6
		["WEAPON_1928BAR"]  = {"1928 Browning",nil,nil,{"1982bar.whitelisted"},"w_ar_1928bar"}, --tbx-33120021a47511-e184e1
		["WEAPON_M4A1SNEONOIR"]  = {"M4A1-S Neo Noir",nil,nil,{"m4a1snoir.whitelisted"},"w_ar_m4a1sneonoir"}, --tbx-60820021a57753-782589
		["WEAPON_SR25"]  = {"SR-25",nil,nil,{"sr25.whitelisted"},"w_ar_sr25"}, --tbx-28520021a33925-99044c (07/06/2022: Now a Peacemaker model)
		["WEAPON_M4A4FIRE"]  = {"M4A4 Fire",nil,nil,{"m4a1fire.whitelisted"},"w_ar_m4a4fire"}, --tbx-66319921a74577-04e704
		["WEAPON_MKC1"]  = {"MKC1",nil,nil,{"mkc1.whitelisted"},"w_ar_mkc1"}, --tbx-23120021a75807-20e20a
		["WEAPON_AK47CURSEDANGEL"]  = {"AK-47 Cursed Angel",nil,nil,{"cursedangel.whitelisted"},"w_ar_ak47cursedangel"}, --tbx-23320021a41191-64461b
		["WEAPON_SG556GLOW"]  = {"SG556 Anime",nil,nil,{"sg556anime.whitelisted"},"w_ar_sg556glow"}, --tbx-80820021a43413-2c4c73
		["WEAPON_CHROMEDMK2"]  = {"Chromed MK2",nil,nil,{"chromedmk2.whitelisted"},"w_ar_chromedmk2"}, --tbx-54819921a80343-13bb98
		["WEAPON_M4A1SPURPLE"]  = {"M4A1-S Purple",nil,nil,{"m4a1spurple.whitelisted"},"w_ar_m4a1spurple"}, --tbx-98920221a55346-0df599
		["WEAPON_ORIGINVANDAL"]  = {"Origin Vandal",nil,nil,{"originvandal.whitelisted"},"w_ar_originvandal"}, --tbx-99920121a79528-6553ac
		["WEAPON_HK416A"]  = {"HK416-A",nil,nil,{"hk416a.whitelisted"},"w_ar_hk416a"}, --tbx-16219921a78189-fa9180 - AR & SMG
		["WEAPON_M4A1SGYSPUNKRED"]  = {"M4A1 S GYS Punk Red",nil,nil,{"m4a1spunkred.whitelisted"},"w_ar_m4a1sgyspunkred"}, --tbx-87920021a69177-53c4af
		["WEAPON_ANIMEM16"]  = {"M16 Anime",nil,nil,{"animem16.whitelisted"},"w_ar_animem16"}, --tbx-99720221a74791-0424e7
		["WEAPON_DEVASTATORRIFLE"]  = {"Devastator AK",nil,nil,{"devastatorrifle.whitelisted"},"w_ar_devastatorrifle"}, --tbx-56620021a16132-7a5a4a
		["WEAPON_HOS"]  = {"HOS assault rifle",nil,nil,{"hos.whitelisted"},"w_ar_hos"}, --tbx-33920321a49029-f27dbd
		["WEAPON_REDDEATHSC"]  = {"Red Death Special Carbine",nil,nil,{"reddeathsc.whitelisted"},"w_ar_reddeathsc"}, --tbx-16820521a52403-5ffb1d
		["WEAPON_NOVESKENSR9"]  = {"Noveske NSR-9",nil,nil,{"noveskensr9.whitelisted"},"w_ar_noveskensr9"}, --tbx-62420621a51364-980db3
		["WEAPON_SINGULARITYPHANTOM"]  = {"Singularity Phantom",nil,nil,{"singularityphantom.whitelisted"},"w_ar_singularityphantom"}, --tbx-85020721a50388-3a3a1f
		["WEAPON_AK74GLOW"]  = {"Sacred Trader AK",nil,nil,{"sacredak.whitelisted"},"w_ar_ak74glow"}, --tbx-15520721a49043-854c39
		["WEAPON_M4A1SCI"]  = {"M4A1-S Cursed IVY",nil,nil,{"m4a1sci.whitelisted"},"w_ar_m4a1sci"}, --tbx-18420721a70345-bdd5bf
		["WEAPON_NERFBLASTER"]  = {"Nerf Elite Delta Trooper",nil,nil,{"nerfblaster.whitelisted"},"w_ar_nerfblaster"}, --tbx-37820721a77314-f3a413
		["WEAPON_M4A1SDECIMATOR"]  = {"M4A1-S Decimator",nil,nil,{"m4a1sdecimator.whitelisted"},"w_ar_m4a1sdecimator"}, --tbx-95720821a83713-c26cb4
		["WEAPON_DRAGONAK"]  = {"Dragon AK",nil,nil,{"dragonak.whitelisted"},"w_ar_dragonak"}, --tbx-18920021a51381-19bf43
		["WEAPON_RETROM4A4"]  = {"M4A4 Retro",nil,nil,{"m4a4retro.whitelisted"},"w_ar_retrom4a4"}, --tbx-28521321a61814-970f0a
		["WEAPON_WFREDTIGER"]  = {"WF Red Tiger",nil,nil,{"wfredtiger.whitelisted"},"w_ar_wfredtiger"}, --tbx-88720521a69194-9f1235
		["WEAPON_XM4TIGER"]  = {"XM4 Tiger",nil,nil,{"xm4tiger.whitelisted"},"w_ar_xm4tiger"}, --tbx-69821321a74208-c464b6
		["WEAPON_MCX3"]  = {"Sig Sauer MCX",nil,nil,{"mcx3.whitelisted"},"w_ar_mcx3"}, --tbx-58220721a58391-8e2a4e
		["WEAPON_M4A1WHITENOISE"]  = {"M4A1 White Noise",nil,nil,{"m4a1whitenoise.whitelisted"},"w_ar_m4a1whitenoise"}, --tbx-21125721a52849-e028a6
		["WEAPON_HEADSHOTM4"]  = {"Headshot M4",nil,nil,{"headshotm4.whitelisted"},"w_ar_headshotm4"}, --tbx-69227321a46348-c91aab
		["WEAPON_TACTICALCARBINERIFLE"]  = {"Tactical Carbine rifle R",nil,nil,{"tacticalcarbinerifle.whitelisted"},"w_ar_tacticalcarbinerifle"}, --tbx-82226021a47405-942ee7
		["WEAPON_AK74ASIIMOV"]  = {"AK-47 Asiimov",nil,nil,{"ak74asiimov.whitelisted"},"w_ar_ak74asiimov"}, --tbx-78325721a28276-4b809a
		["WEAPON_M4PRINTSTREAM"]  = {"Holographic M4 Printstream",nil,nil,{"m4printstream.whitelisted"},"w_ar_m4printstream"}, --
		["WEAPON_FFAR"]  = {"FFAR",nil,nil,{"ffar.whitelisted"},"w_ar_ffar"}, --tbx-74627621a79392-f3d792
		["WEAPON_PURPLENIKEGRAU"]  = {"Purple Nike Grau",nil,nil,{"purplenikegrau.whitelisted"},"w_ar_purplenikegrau"}, --tbx-37829621a67637-343279
		["WEAPON_FAMASV2"]  = {"Famas v2",nil,nil,{"famasv2.whitelisted"},"w_ar_famasv2"}, --tbx-28325621a61006-f58e9d
		["WEAPON_HEADSTONEAUG"]  = {"Headstone Aug",nil,nil,{"headstoneaug.whitelisted"},"w_ar_headstoneaug"}, --tbx-97629421a601-2859de
		["WEAPON_M4ASSAULTRIFLE"]  = {"M4 Assault Rifle",nil,nil,{"m4assaultrifle.whitelisted"},"w_ar_m4assaultrifle"}, --https://media.discordapp.net/attachments/904011500094648372/905849826506338344/unknown.png
		["WEAPON_BLASTXPHANTOM"]  = {"BlastX Phantom",nil,nil,{"blastxphantom.whitelisted"},"w_ar_blastxphantom"}, --tbx-56925921a55632-ed5b84
		["WEAPON_CUSTOMM4A1"]  = {"Silenced M4A1",nil,nil,{"customm4a1.whitelisted"},"w_ar_customm4a1"}, --tbx-73930221a76012-c59e1d
		["WEAPON_PARAFALSOULREAPER"]  = {"Parafal Soul Reaper",nil,nil,{"parafalsoulreaper.whitelisted"},"w_ar_parafalsoulreaper"}, --tbx-70729221a71847-98ad99
		["WEAPON_TACTICALAK47"]  = {"Tactical AK-47",nil,nil,{"tacticalak47.whitelisted"},"w_ar_tacticalak47"}, --tbx-83930221a47639-a7046f
		["WEAPON_WELSHINATOR"]  = {"Welshinator",nil,nil,{"welshinator.whitelisted"},"w_ar_welshinator"}, --tbx-63532521a78390-9aa44b
		["WEAPON_YELLOWM4A1S"]  = {"Yellow Demon M4A1-S",nil,nil,{"yellowm4a1s.whitelisted"},"w_ar_yellowm4a1s"}, --tbx-43635421a78867-cbb636
		["WEAPON_PURPLEVANDAL"]  = {"Purple Chrome Vandal", nil,nil,{"purplevandal.whitelisted"},"w_ar_purplevandal"}, --tbx-38135921a85595-9946d7
		["WEAPON_RAM7DIVINESPIRIT"]  = {"Ram 7 Divine Spirit",nil,nil,{"ram7divinespirit.whitelisted"},"w_ar_ram7divinespirit"}, --tbx-40932921a32213-09e5d8
		["WEAPON_DARKMATTERVANDAL"]  = {"Evil Vandal",nil,nil,{"darkmattervandal.whitelisted"},"w_ar_darkmattervandal"}, --tbx-71331521a86291-76e419
		["WEAPON_HOTSHOTWELDER"]  = {"Hotshot Welder",nil,nil,{"hotshotwelder.whitelisted"},"w_ar_hotshotwelder"}, --tbx-5414822a73313-d80013
		["WEAPON_M4A4DRAGONKING"]  = {"M4A4 Dragon King",nil,nil,{"m4a4dragonking.whitelisted"},"w_ar_m4a4dragonking"}, --tbx-5414822a73313-d80013
		["WEAPON_AKBLACKOUT"]  = {"AK Blackout",nil,nil,{"akblackout.whitelisted"},"w_ar_blackout"}, --tbx-5414822a73313-d80013
		["WEAPON_TX15EFT"] = {"TX-15 ",nil,nil,{"tx15eft.whitelisted"},"w_ar_tx15"}, --tbx-6876322a78673-deaae9
		["WEAPON_ONIPHANTOM"] = {"Oni Phantom ",nil,nil,{"oniphantom.whitelisted"},"w_ar_oniphantom"}, --tbx-3946722a45175-adc4b8
		["WEAPON_RUINATIONGUARDIAN"] = {"Ruination Guardian",nil,nil,{"ruinationguardian.whitelisted"},"w_ar_ruinationguardian"}, --tbx-89831621a34243-05293b
		["WEAPON_LYNXCQ300"] = {"Turtle's N.F.G",nil,nil,{"lynxcq300.whitelisted"},"w_sb_lynxcq300"}, --tbx-28011622a3422-d5a13b
		["WEAPON_KLEGGYHK416"] = {"Kleggy HK416",nil,nil,{"kleggyhk416.whitelisted"},"w_ar_kleggyhk416"}, --tbx-92711022a44560-27985c
		["WEAPON_E11BLASTER"] = {"E-11 Blaster",nil,nil,{"e11blaster.whitelisted"},"w_ar_e11blaster"}, --tbx-99415422a15207-885d28
		["WEAPON_RGXVANDAL"] = {"RGX Vandal",nil,nil,{"rgxvandal.whitelisted"},"w_ar_rgxvandal"}, --tbx-74423622a53161-adf6b9
		["WEAPON_M13GRAFFITI"] = {"M13 Graffiti",nil,nil,{"m13graffiti.whitelisted"},"w_ar_m13graffiti"}, --tbx-68624422a49027-b43371
		["WEAPON_CMPCARBINE"] = {"CMP Carbine",nil,nil,{"cmpcarbine.whitelisted"},"w_ar_cmpcarbine"}, --tbx-30326622a55110-6b91b1
		["WEAPON_M4A1HOTROD"] = {"M4A1-S | Hot Rod",nil,nil,{"m4a1hotrod.whitelisted"},"w_ar_m4a1hotrod"}, --tbx-12029822a60511-246fa2
		["WEAPON_KILO141"] = {"Kilo 141 Glow",nil,nil,{"kilo141.whitelisted"},"w_ar_kilo141"}, --BA99-C479
		["WEAPON_AK47TEMPERED"] = {"AK-47 Tempered",nil,nil,{"ak47tempered.whitelisted"},"w_ar_ak47tempered"}, --700F-AD27
		["WEAPON_NEYNAYCHAINSAR"] = {"Neynay's Death",nil,nil,{"neynaychainsar.whitelisted"},"w_ar_neynaychains"}, --C805-17B3
		["WEAPON_GLACIERM416"] = {"Glacier M416",nil,nil,{"glacierm416.whitelisted"},"w_ar_glacierm416"}, --A943-77BF
		["WEAPON_LR300BI"] = {"Black Ice Tuxinator",nil,nil,{"lr300bi.whitelisted"},"w_ar_lr300bi"}, --8DEF-2B3D
		["WEAPON_YAKUZAMK17"] = {"Yakuza's MK17",nil,nil,{"yakuzamk17.whitelisted"},"w_ar_yakuzamk17"}, --4F9B-8B1B
		["WEAPON_CUSTOMM4"] = {"Plods Ego",nil,nil,{"customm4.whitelisted"},"w_ar_customm4"}, --1E7D-F499
		["WEAPON_ANONYMOUSAR"] = {"Anonymous AR",nil,nil,{"anonymousar.whitelisted"},"w_ar_anonymousar"}, --6EAF-B989
		["WEAPON_NIKEPRINTSTREAM"] = {"Nike Printstream m4a4",nil,nil,{"nikeprintstream.whitelisted"},"w_ar_nikeprintstream"}, --AD6B-6D2D
		["WEAPON_UWUAK"] = {"Ekko's UwU-AK",nil,nil,{"uwuak.whitelisted"},"w_ar_uwuak"}, --7AD9-C943
		["WEAPON_LR300V2"] = {"Blacknight LR300",nil,nil,{"lr300v2.whitelisted"},"w_ar_lr300v2"}, --BA7F-6D39
		["WEAPON_AR15SMR"] = {"AR-15 SMR",nil,nil,{"ar15smr.whitelisted"},"w_ar_ar15smr"}, --E3C1-7EB1
		["WEAPON_CORRUPTFAL"] = {"Corrupt FNFAL",nil,nil,{"corruptfal.whitelisted"},"w_ar_corruptfal"}, --27B3-FB1B
		["WEAPON_HK416A5"] = {"HK416 A5",nil,nil,{"hk416a5.whitelisted"},"w_ar_hk416a5"}, --E9C1-4339
		["WEAPON_LDNULCX"] = {"LDNU LCX",nil,nil,{"ldnulcx.whitelisted"},"w_ar_ldnulcx"}, --DEDF-3639
		["WEAPON_ONIPHANTOMLVL2"] = {"Oni Phantom LVL 2",nil,nil,{"oniphantomlvl2.whitelisted"},"w_ar_oniphantomlvl2"}, --F114-4D60
		["WEAPON_RITUALSDEMISE"] = {"Rituals Demise",nil,nil,{"ritualsdemise.whitelisted"},"w_ar_ritualsdemise"}, --6B02-AA90
		["WEAPON_M6IC"] = {"LWRC M6IC",nil,nil,{"m6ic.whitelisted"},"w_ar_m6ic"}, --F795-D8D0
		["WEAPON_KINGOFCLUBS"] = {"King Of Clubs",nil,nil,{"kingofclubs.whitelisted"},"w_sb_kingofclubs"}, --5BBB-D4E3
		["WEAPON_M4A1SPLAYERTWO"] = {"M4A1-S Player Two",nil,nil,{"m4as1playertwo.whitelisted"},"w_ar_m4a1splayertwo"}, --BB09-3865
		--["WEAPON_LDNUADAR15"] = {"LDNU ADAR 15",nil,nil,{"gang.ldnu.whitelist"},"w_ar_ldnuadar15"}, -- ldnu gang whitelist
		["WEAPON_MARKETPLACEMK18"] = {"Marketplace MK18",nil,nil,{"gang.marketplace.whitelist"},"w_ar_marketplacemk18"}, -- marketplace gang whitelist
		["WEAPON_TAQTIDALLOCK"] = {"TAQ Tidal Lock",nil,nil,{"weapontaqtidallock.whitelisted"},"w_ar_taqtidallock"}, --6D17-058B
		["WEAPON_CHERRYBLOSSOMMK14HONEYBADGER"] = {"Cherry Blossom MK14 Honeybadger",nil,nil,{"weaponcherryblossommk14honeybadger.whitelisted"},"w_ar_cherryblossommk14honeybadger"}, --A55F-BC0D
		["WEAPON_KS1"] = {"KS-1",nil,nil,{"weaponks1.whitelisted"},"w_ar_ks1"}, --CEC5-16FD
		["WEAPON_MK18BOB"] = {"Bob's MK18",nil,nil,{"weaponmk18bob.whitelisted"},"w_ar_mk18bob"}, --8F4C-D52E
		["WEAPON_CALNIGHTFIRE"] = {"Cal's Nightfire",nil,nil,{"weaponcalnightfire.whitelisted"},"w_ar_calnightfire"}, --E871-9390
		["WEAPON_HIROSTG44"] = {"HIRO STG 44",nil,nil,{"weaponhirostg44.whitelisted"},"w_ar_hirostg44"}, --237d-9469
		["WEAPON_EVILPHANTOM"] = {"Evil Phantom",nil,nil,{"weaponevilphantom.whitelisted"},"w_ar_evilphantom"}, --FA76-C094
		["WEAPON_USGMDR"] = {"USG Desert Tech MDR",nil,nil,{"weaponusgmdr.whitelisted"},"w_ar_usgmdr"}, --7E81-C089
		["WEAPON_SINGLEBARRELPUNISHER"] = {"Single Barrel Punisher",nil,nil,{"weaponsinglebarrelpunisher.whitelisted"},"w_ar_singlebarrelpunisher"}, --9C48-7D6F
		["WEAPON_MK47MUTANT"] = {"MK47 Mutant",nil,nil,{"weaponmk47mutant.whitelisted"},"w_ar_mk47mutant"}, --A9CA-0D7E
		["WEAPON_RXDNOCTURNO"] = {"RXD Nocturno",nil,nil,{"weaponrxdnocturno.whitelisted"},"w_ar_rxdnocturno"}, --E2D3-7392
		["WEAPON_GRAU556"] = {"kleq's grau",nil,nil,{"weapongrau556.whitelisted"},"w_ar_grau556"}, --FFAF-E637
		["WEAPON_LNHAR15"] = {"LNH AR-15",nil,nil,{"weaponlnhar15.whitelisted"},"w_ar_lnhar15"}, --4A11-5312
		["WEAPON_JRJMCWAFTERLIFE"] = {"JRJs MCW Afterlife",nil,nil,{"weaponjrjmcwafterlife.whitelisted"},"w_ar_jrjmcwafterlife"}, --0DD3-2591
		["WEAPON_SIXTHSENSEAR"] = {"Sixth Sense AR",nil,nil,{"weaponsixthsensear.whitelisted"},"w_ar_sixthsensear"}, --3DCE-7EDB
		["WEAPON_L403A12"] = {"L403A1",nil,nil,{"weaponl403a12.whitelisted"},"w_ar_l403a12"}, --A8A7-3444
		["WEAPON_FOOPAMK"] = {"Ronin's Revenge",nil,nil,{"weaponfoopamk.whitelisted"},"w_ar_foopamk"}, --8D2D-F87F
		["WEAPON_KIRATSPECIALCARBINEMK2"] = {"Kirats Bandook",nil,nil,{"weaponkiratspecialcarbinemk2.whitelisted"},"w_ar_kiratspecialcarbinemk2"}, --9A48-3A2C
		["WEAPON_MK12"] = {"MK12",nil,nil,{"weaponmk12.whitelisted"},"w_ar_mk12"}, --2E68-A5A0
		["WEAPON_DRAGONAR"] = {"Dragon AR",nil,nil,{"weapondragonar.whitelisted"},"w_ar_dragonar"}, --E30D-F316
		["WEAPON_ANIMEM4A1"] = {"XXI",nil,nil,{"weaponanimem4a1.whitelisted"},"w_ar_animem4a1"}, --2985-0950
		["WEAPON_ROYALREVENGE"] = {"Royal Revenge",nil,nil,{"weaponroyalrevenge.whitelisted"},"w_ar_royalrevenge"}, --4327-7521
		["WEAPON_MK1C"] = {"spin back fam",nil,nil,{"weaponmk1c.whitelisted"},"w_ar_mk1c"}, --94BC-BC85
		["WEAPON_ALIENRED"] = {"AK Alien Red",nil,nil,{"weaponalienred.whitelisted"},"w_ar_alienred"}, --5765-3385
		["WEAPON_M4A1CHROME"] = {"m4a1 Chromium",nil,nil,{"weaponm4a1chrome.whitelisted"},"w_ar_m4a1chrome"}, --2E98-BB2E
		["WEAPON_HK416GOBLIN"] = {"Goblin AR",nil,nil,{"weaponhk416goblin.whitelisted"},"w_ar_hk416goblin"}, --5930-EA99
		["WEAPON_FROSTYBLUUMK16"] = {"Frosty Bluu MK16",nil,nil,{"weaponfrostybluumk16.whitelisted"},"w_ar_frostybluumk16"}, --691c-b95d
		["WEAPON_C7E"] = {"C7E",nil,nil,{"weaponc7e.whitelisted"},"w_ar_c7e"}, --A598-6EAB
		["WEAPON_MK18BEE"] = {"Beekeeper MK-18",nil,nil,{"weaponmk18bee.whitelisted"},"w_ar_mk18bee"}, --5719-D517
		["WEAPON_BLACKLOTUSM4SAI"] = {"Black Lotus M4 Sai",nil,nil,{"weaponblacklotusm4sai.whitelisted"},"w_ar_blacklotusm4sai"}, --CB98-28D8
		["WEAPON_616CARBINE"] = {"616 Carbine",nil,nil,{"weapon616carbine.whitelisted"},"w_ar_616carbine"}, --D688-70C3
		["WEAPON_REDLINEAR"] = {"Redline AR",nil,nil,{"weaponredlinear.whitelisted"},"w_ar_redlinear"}, --DCFE-24F1
		["WEAPON_AR15999"] = {"AR15 999",nil,nil,{"weaponar15999.whitelisted"},"w_ar_ar15999"}, --241C-290B
		["WEAPON_BLUUS38M4S1"] = {"Bluu's 38 M4S1",nil,nil,{"weaponbluus38m4s1.whitelisted"},"w_ar_bluus38m4s1"}, --CC1C-4BBC
		["WEAPON_AR15GRIMREAPER"] = {"RATTYS REAPER",nil,nil,{"weaponar15grimreaper.whitelisted"},"w_ar_ar15grimreaper"}, --728F-E250
		["WEAPON_CARBINEMKITTEN"] = {"Carbine MKitten",nil,nil,{"weaponcarbinemkitten.whitelisted"},"w_ar_carbinemkitten"}, --3FD7-2E22
		["WEAPON_RJSUSANOOGALIL"] = {"RJ'S SUSANOO",nil,nil,{"weaponrjsusanoogalil.whitelisted"},"w_ar_rjsusanoogalil"}, --9188-E1CE
		["WEAPON_AIGAAR15"] = {"AIGA AR15",nil,nil,{"weaponaigaar15.whitelisted"},"w_ar_aigaar15"}, --2128-D42D
		["WEAPON_THEREAPER"] = {"THE REAPER",nil,nil,{"weaponthereaper.whitelisted"},"w_ar_thereaper"}, --E277-2495
		["WEAPON_MDMMARKETSIGSPEAR"] = {"MDM Market Sig Spear",nil,nil,{"weaponmdmmarketsigspear.whitelisted"},"w_ar_mdmmarketsigspear"}, --E074-E502
		["WEAPON_HONEYBADGERLIGHTNINGWAVEZ"] = {"Hxribos Tangfastic",nil,nil,{"weaponhoneybadgerlightningwavez.whitelisted"},"w_ar_honeybadgerlightningwavez"}, --028E-27DF
		["WEAPON_ANUBISGALIL"] = {"Jackos Anubis Galil",nil,nil,{"weaponanubisgalil.whitelisted"},"w_ar_anubisgalil"}, --B92E-8604
		["WEAPON_MONOPOLYAR15"] = {"Alec Monopoly AR-15",nil,nil,{"weaponmonopolyar15.whitelisted"},"w_ar_monopolyar15"}, --C6C1-EC75
		["WEAPON_R4CBLACKICE"] = {"R4C Black ice",nil,nil,{"weaponr4cblackice.whitelisted"},"w_ar_r4cblackice"}, --F72D-AE45
		["WEAPON_BLACKMARKETSR16"] = {"Black Market SR16",nil,nil,{"weaponblackmarketsr16.whitelisted"},"w_ar_blackmarketsr16"}, --D6DB-9CC2
		["WEAPON_BARRETTM468"] = {"Barrett M468 v2",nil,nil,{"weaponbarrettm468.whitelisted"},"w_ar_barrettm468"}, --9334-2685
		["WEAPON_MCW"] = {"Fauxys Sweet Strike",nil,nil,{"weaponmcw.whitelisted"},"w_ar_mcw"}, --FDB9-6D08
		["WEAPON_CANDYRIFLE"] = {"Forgive Them Father",nil,nil,{"weaponcandyrifle.whitelisted"},"w_ar_candyrifle"}, --328F-CE92
		["WEAPON_SIXTHSENSEMK2"] = {"Sixth Sense MK2",nil,nil,{"weaponsixthsensemk2.whitelisted"},"w_ar_sixthsensemk2"}, --57BE-9CDB
		["WEAPON_STUBIXR201"] = {"Stubix R-201",nil,nil,{"weaponstubixr201.whitelisted"},"w_ar_stubixr201"}, --6777-3C65
		["WEAPON_M4A1SCARFACE"] = {"M4A1 Scarface",nil,nil,{"weaponm4a1scarface.whitelisted"},"w_ar_m4a1scarface"}, --1C4E-98C6
		["WEAPON_SCARHL"] = {"TND'Z VICTIM",nil,nil,{"weaponscarhl.whitelisted"},"w_ar_scarhl"}, --1A08-6CFF
		["WEAPON_SAMMERHCR"] = {"Aug A3 Shush",nil,nil,{"weaponsammerhcr.whitelisted"},"w_ar_sammerhcr"}, --C424-CF37
		["WEAPON_L403A1KS1"] = {"L403A1 (KS-1)",nil,nil,{"weaponl403a1ks1.whitelisted"},"w_ar_l403a1ks1"}, --39CC-68E3
		["WEAPON_FBBERYLM762"] = {"FB Beryl M762",nil,nil,{"weaponfbberylm762.whitelisted"},"w_ar_fbberylm762"}, --F82E-9C89
		["WEAPON_BLUEDREAM"] = {"Blue Dream",nil,nil,{"weaponbluedream.whitelisted"},"w_ar_bluedream"}, --3009-B009
		["WEAPON_GRAU556PINKZEBRA"] = {"Silly's Pew Pew",nil,nil,{"weapongrau556pinkzebra.whitelisted"},"w_ar_grau556pinkzebra"}, --4359-E59F
		["WEAPON_SHEIFHALLOWEEN"] = {"sHeif's Halloween",nil,nil,{"weaponsheifhalloween.whitelisted"},"w_ar_sheifhalloween"}, --B2AB-BB63
		["WEAPON_SKELETONSPECIALCARBINE"] = {"Skeleton Special Carbine",nil,nil,{"weaponskeletonspecialcarbine.whitelisted"},"w_ar_skeletonspecialcarbine"}, --0F78-A5BB
		["WEAPON_HARRYSECLIPSE"] = {"Harry's Eclipse",nil,nil,{"weaponharryseclipse.whitelisted"},"w_ar_harryseclipse"}, --3286-bf5d
		["WEAPON_MK47CMGTRADER"] = {"MK47 CMG Trader",nil,nil,{"weaponmk47cmgtrader.whitelisted"},"w_ar_mk47cmgtrader"}, --7CF3-98D9
		["WEAPON_GOTHRETALIATOR"] = {"Goth Retaliator",nil,nil,{"weapongothretaliator.whitelisted"},"w_ar_gothretaliator"}, --1CB1-9053
		["WEAPON_QBZ191"] = {"Blackout Tactical QBZ191",nil,nil,{"weaponqbz191.whitelisted"},"w_ar_qbz191"}, --F441-BFB7
		["WEAPON_MK18MOD1"] = {"MK18 Mod 1 SMR",nil,nil,{"weaponmk18mod1.whitelisted"},"w_ar_mk18mod1"}, --85D7-9032
		["WEAPON_HOPOUTVOID"] = {"Hop Out's Void",nil,nil,{"weaponhopoutvoid.whitelisted"},"w_ar_hopoutvoid"}, --E733-A164
		["WEAPON_NIZZG36C"] = {"Nizz G36C",nil,nil,{"weaponnizzg36c.whitelisted"},"w_ar_nizzg36c"}, --94F1-6F66
		["WEAPON_MAORZORO"] = {"T-AR",nil,nil,{"weaponmaorzoro.whitelisted"},"w_ar_maorzoro"}, --AA97-4834
		["WEAPON_SUPRESSEDAF"] = {"supressed af",nil,nil,{"weaponsupressedaf.whitelisted"},"w_ar_supressedaf"}, --2A27-E383
		--? End Large Arms Rifles (DO NOT DELETE - USED BY CI)

		--LMG
		["WEAPON_CALSFIERYTORMENTOR"] = {"Cal’s Fiery Tormentor",nil,nil,{"weaponcalsfierytormentor.whitelisted"},"w_mg_calsfierytormentor"}, --7760-E55C
		["WEAPON_BLUELAGOONMG4"] = {"Blue Lagoon",nil,nil,{"weaponbluelagoonmg4.whitelisted"},"w_mg_bluelagoonmg4"}, --ABE8-E7F0
		["WEAPON_BRUENMK9"] = {"BRUEN MK9",nil,nil,{"weaponbruenmk9.whitelisted"},"w_mg_bruenmk9"}, --39B8-5912
		["WEAPON_616LMG"] = {"616 LMG",nil,nil,{"weapon616lmg.whitelisted"},"w_mg_616lmg"}, --EE2E-564E
		["WEAPON_TAQEVOLVERE"] = {"TAQ Evolvere",nil,nil,{"weapontaqevolvere.whitelisted"},"w_mg_taqevolvere"}, --6B5C-55B3
		["WEAPON_ODINX"] = {"Odinx",nil,nil,{"odinx.whitelisted"},"w_mg_odinx"}, --tbx-2699522a84554-2c87d8
		["WEAPON_JAYSLINGMK2"] = {"The Jaysling Mk2",nil,nil,{"jayslingmk2.whitelisted"},"w_mg_jayslingmk2"}, --tbx-15215222a9168-31d514
		["WEAPON_BREENYSINGULARITY"] = {"Breeny Singularity",nil,nil,{"breenysingularity.whitelisted"},"w_mg_breenysingularity"}, --9AE9-65BB
		["WEAPON_WESTYARES"] = {"Westy Ares",nil,nil,{"westyares.whitelisted"},"w_mg_westyares"}, --tbx-70310222a55333-482902
		["WEAPON_HOPOUTOBLIVION"] = {"Hop Out's Oblivion",nil,nil,{"weaponhopoutoblivion.whitelisted"},"w_mg_hopoutoblivion"}, --0BD4-BB89
		["WEAPON_TRUMPINATOR"] = {"The Trumpinator",nil,nil,{"weapontrumpinator.whitelisted"},"w_mg_trumpinator"}, --F2FD-2A39
		["WEAPON_FRANKSPACKAGE"] = {"Frank's Package",nil,nil,{"weaponfrankspackage.whitelisted"},"w_mg_frankspackage"}, --0309-315F
		["WEAPON_SA58"] = {"SA-58 Got Boddy'd",nil,nil,{"weaponsa58.whitelisted"},"w_mg_sa58"}, --AE97-13D1
		["WEAPON_DBCHAUCHATLMG"] = {"Double Barrelled Chauchat LMG",nil,nil,{"weapondbchauchatlmg.whitelisted"},"w_mg_dbchauchatlmg"}, --F22A-7EAD
		["WEAPON_MARKETPLACELMG"] = {"MKT Place LMG",nil,nil,{"weaponmarketplacelmg.whitelisted"},"w_mg_marketplacelmg"}, --0EB8-D910
		["WEAPON_LOSTMCLMG"] = {"LOST MC LMG",nil,nil,{"weaponlostmclmg.whitelisted"},"w_mg_lostmclmg"}, --3C23-A7BF
		["WEAPON_TOMMYGUN"] = {"Tommy Gun",nil,nil,{"weapontommygun.whitelisted"},"w_mg_tommygun"}, --C8B2-73A7
		["WEAPON_MAESTROSLMG"] = {"Maestro's Ameli",nil,nil,{"weaponmaestroslmg.whitelisted"},"w_mg_maestroslmg"}, --070D-E42F
		["WEAPON_REDLINELMG"] = {"Redline LMG",nil,nil,{"weaponredlinelmg.whitelisted"},"w_mg_redlinelmg"}, --0F45-4686
		["WEAPON_HXRIBOSSTARBURSTS"] = {"Hxribo's Supermix",nil,nil,{"weaponhxribosstarbursts.whitelisted"},"w_mg_hxribosstarbursts"}, --BE27-E9A2
		["WEAPON_C9A2"] = {"C9A2",nil,nil,{"weaponc9a2.whitelisted"},"w_mg_c9a2"}, --E732-A332
		["WEAPON_M249PLAYMAKER"] = {"M249 Playmaker",nil,nil,{"m249playmaker.whitelisted"},"w_mg_m249playmaker"}, --tbx-48834821a82166
		["WEAPON_NG7TOXICWASTE"] = {"NG7 Toxic Waste",nil,nil,{"ng7toxicwaste.whitelisted"},"w_mg_ng7toxicwaste"}, --2715-8A1B
		["WEAPON_M4SALAMANDER"] = {"Starlight M4LMG",nil,nil,{"m4salamander.whitelisted"},"w_mg_m4salamander"}, --7577-B377
		["WEAPON_RAALV2"] = {"Ace Of Spades",nil,nil,{"raalv2.whitelisted"},"w_mg_raalv2"}, --D1C7-DCAD
		["WEAPON_M249TEMPERED"] = {"M249 Tempered",nil,nil,{"m249tempered.whitelisted"},"w_mg_m249tempered"}, --8B20-95D9
		["WEAPON_THEPUNISHER"] = {"THE PUNISHER",nil,nil,{"weaponthepunisher.whitelisted"},"w_mg_thepunisher"}, --7FFB-B58F
		["WEAPON_NEYNAYCHAINSLMG"] = {"Neynay's Wood",nil,nil,{"neynaychainslmg.whitelisted"},"w_mg_neynaychains"}, --FF6B-B9D3
		["WEAPON_SPARKYZSHLONG"] = {"Sparkz's Shlong",nil,nil,{"sparkzshlong.whitelisted"},"w_ar_sparkyzshlong"}, --0430-9C43
		["WEAPON_EMOHUNTERLMG"] = {"EMO HUNTER",nil,nil,{"weaponemohunterlmg.whitelisted"},"w_mg_emohunterlmg"}, --64CA-F4FC
		["WEAPON_M249CMG"] = {"M249",nil,nil,{"rusty.whitelisted","m249.whitelisted"},"w_mg_m249"}, --Unknown
		["WEAPON_ODIN"] = {"Odin",nil,nil,{"odin.whitelisted"},"w_mg_odin"}, --tbx-62625921a61697
		["WEAPON_CHIPSPOCKETROCKET"] = {"Chips Pocket Rocket",nil,nil,{"weaponchipspocketrocket.whitelisted"},"w_mg_chipspocketrocket"}, --90E8-555B
		["WEAPON_AURA"] = {"Aura",nil,nil,{"weaponaura.whitelisted"},"w_mg_aura"}, --6587-1EDA
		--? End Large Arms LMGs (DO NOT DELETE - USED BY CI)

		["item|1LightArmour"] = {"LvL 1 Armour",25000,0,{""},"prop_armour_pickup"},
		["item|2MediumArmour"] = {"LvL 2 Armour",50000,0,{""},"prop_bodyarmour_06"},
		-- ["GADGET_PARACHUTE"] = {"Out of stock!",0,0,{""}},
	},
	["VIP"] = {
		_config = {
			{
				vector3(-2151.5739746094,5191.2548828125,14.718822479248),
			},
			110,5,"VIP Gun Store",{"vip.gunstore"},true,
			hasPlatLargeArms = true,
			useBankPayments = true,
			allowGangDiscount = true,
		},
		["WEAPON_SNOWBALL"] = {"Snowball",1000,0,{""},"w_ex_snowball"},
		["WEAPON_MOLOTOV"] = {"Molotov Cocktail",10000,10000,{""},"w_ex_molotov"},
		["WEAPON_SMOKEGRENADECMG"] = {"Smoke Grenade",10000,10000,{""},"w_ex_smokegrenadecmg"},
		["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",10000,0,{""},"w_am_fire_exting"},
		["WEAPON_MJLONIRCMG"] = {"Mjlonir",5000,0,{""},"w_me_mjlonir"},
		["WEAPON_AK74KASHNARCMG"] = {"Golden AK-47",700000,350000,{""},"w_ar_ak74kashnar"},
		["item|1LightArmour"] = {"LvL 1 Armour",0,0,{"cmgplatinum.whitelisted"},"prop_armour_pickup"},
		["item|2MediumArmour"] = {"LvL 2 Armour",50000,0,{"cmgplatinum.whitelisted","gang.whitelisted"},"prop_bodyarmour_06"},
		["item|3HeavyArmour"] = {"LvL 3 Armour",75000,0,{"cmgplatinum.whitelisted","rebellicense.whitelisted"},"prop_bodyarmour_04"},
		["item|4SuperHeavyArmour"] = {"LvL 4 Armour",100000,0,{"cmgplatinum.whitelisted","rebellicense.whitelisted"},"prop_bodyarmour_05"},
		["item|fillUpArmour"] = {"Replenish Armour",100000,0,{"cmgplatinum.whitelisted","rebellicense.whitelisted"},"prop_armour_pickup"},
		["item|vigilanteFillUpArmour"] = {"Replenish Armour",100000,0,{"cmgplatinum.whitelisted","vigilante.whitelisted"},"prop_armour_pickup"},
		-- ["GADGET_PARACHUTE"] = {"Out of stock!",0,0,{""}},
	},
	["Rebel"] = {
		_config = {
			{
				vector3(1545.2521972656,6331.5615234375,23.07857131958),
			},
			110,5,"Rebel Gun Store",{"rebellicense.whitelisted"},true,
			hasPurgeDiscount = true,
			inBlackMarket = true,
			allowPlatDiscount = true,
		},
		["item|1LightArmour"] = {"LvL 1 Armour",25000,0,{""},"prop_armour_pickup"},
		["item|2MediumArmour"] = {"LvL 2 Armour",50000,0,{""},"prop_bodyarmour_06"},
		["item|3HeavyArmour"] = {"LvL 3 Armour",75000,0,{""},"prop_bodyarmour_04"},
		["item|4SuperHeavyArmour"] = {"LvL 4 Armour",100000,0,{""},"prop_bodyarmour_05"},
		["item|fillUpArmour"] = {"Replenish Armour",100000,0,{""},"prop_armour_pickup"},
		["item|armourPlate"] = {"Armour Plate (Advanced Rebel)", 100000, 0, {"advrebellicense.whitelisted"}, "prop_armour_pickup"},
		["WEAPON_AKMCMG"] = {"AKM",700000,350000,{""},"w_ar_akm"},
		["WEAPON_AKKAL"] = {"AK-200",750000,350000,{""},"w_ar_akkal"},
		["WEAPON_SVDCMG"] = {"Dragunov SVD",2000000,1000000,{""},"w_sr_svd"},
		["WEAPON_WINCHESTER12CMG"] = {"Winchester Model 12",350000,175000,{""},"w_sg_winchester12"},
		["WEAPON_SPAZ"] = {"SPAS-12",375000,175000,{""},"w_sg_spaz"},
		["WEAPON_NBK"] = {"Revolver",200000,100000,{""},"w_pi_nbk"},
		["GADGET_PARACHUTE"] = {"Parachute",1000,0,{""},"hei_p_parachute_s_female"},

		["WEAPON_MK1EMR"] = {"Mk-1 EMR (Advanced Rebel)",800000,400000,{"advrebellicense.whitelisted"},"w_ar_mk1emr"},
		["WEAPON_MXM"] = {"MXM (Advanced Rebel)",700000,350000,{"advrebellicense.whitelisted"},"w_ar_mxm"},
		["WEAPON_MX"] = {"MX (Advanced Rebel)",700000,350000,{"advrebellicense.whitelisted"},"w_ar_mx"},
		["WEAPON_MK14"] = {"MK14 (Advanced Rebel)",3500000,1500000,{"advrebellicense.whitelisted"},"w_sr_mk14"},
		["WEAPON_TRG"] = {"TRG (Advanced Rebel)",700000,350000,{"advrebellicense.whitelisted"},"w_ar_trg"},
		["WEAPON_SPAR16"] = {"SPAR-16 (Advanced Rebel)",700000,350000,{"advrebellicense.whitelisted"},"w_ar_spar16"},

		--["GADGET_PARACHUTE"] = {"Out of stock!",0,0,{""}},
	},
	["Lost MC"] = {
		_config = {
			{
				vector3(2061.9274902344,5086.046875,40.977416534424),
			},
			110,5,"Lost MC Gun Room",{"soa2.whitelisted"},false,
			webhookName = "the_lost_armoury",
			gangGunstore = true,
		},
		["WEAPON_DOUBLE12CMG"] = {"Double Barreled Shotgun ",nil,nil,{"soa2.whitelisted"},"w_pi_double12"},
	},
	["policeSmallArms"] = {
		_config = {
			{
				vector3(461.53082275391,-979.35876464844,29.689668655396),
				vector3(1842.9096679688,3690.7692871094,33.267082214355),
				vector3(-448.93994140625,6015.4150390625,30.766398239136),
				vector3(638.55255126953,2.7499871253967,43.423725128174),
				vector3(-1104.5264892578,-821.70153808594,13.282785415649),
				vector3(1538.1597900391,793.95196533203,77.693084716797),
			},110,5,"MET Police Small Arms",{"police.onduty.permission"},false,true,
			useBankPayments = true,
			webhookName = "police_armoury",
		},
		["item|policeArmourPlate"] = {"Police Armour Plate", 100000, 0, {""}, "prop_armour_pickup"},
		["item|bandage"] = {"Bandage", 5000, 0, {""}, "prop_ld_health_pack"},
		["WEAPON_REMINGTON870CMG"] = {"Remington 870",nil,nil,{""},"w_sg_remington870"},
		["WEAPON_SAIGA"] = {"PAYDAY 2 Saiga-12G",nil,nil,{"saiga.whitelisted"},"w_sg_saiga"},
		["WEAPON_COMBATSHOTGUN1"] = {"Combat Shotgun",nil,nil,{"cs.whitelisted"},"w_sg_combatshotgun1"},
		["WEAPON_FLAREGUN"] = {"Flare Gun",nil,nil,{"gc.whitelisted"},"w_pi_flaregun"},
		["WEAPON_FLASHLIGHT"] = {"Flashlight",nil,nil,{""},"w_me_flashlight"},
		["WEAPON_FLARE"] = {"Flare",nil,nil,{"gc.whitelisted", "trident.seniorpilot.whitelist","npas.command.whitelist"},"w_am_flare"},
		["WEAPON_PAVA"] = {"PAVA",nil,nil,{"policepava.permission"},"w_am_pava"},
		["WEAPON_NIGHTSTICK"] = {"Police Baton",nil,nil,{""},"w_me_nightstick"},
		["WEAPON_STUNGUN"] = {"Taser",nil,nil,{""},"w_pi_stungun"},
		["WEAPON_GLOCKCMG"] = {"Glock",nil,nil,{""},"w_pi_glock"},
		["WEAPON_M19"] = {"M19",nil,nil,{"pdm19.whitelisted"},"w_pi_m19"}, --tbx-41826421a47097-246f39
		["WEAPON_SIGSAUERM17"] = {"Sig Sauer M17",nil,nil,{"m17.whitelisted"},"w_pi_sigsauerm17"}, --tbx-66125721a68201-99d406
		["WEAPON_MANDAPISTOL"] = {"Manda Pistol",nil,nil,{"mandapistol.whitelisted"},"w_pi_mandapistol"}, --tbx-71610622a72702-437d88
		["WEAPON_ANDYDEAGLE"] = {"Andy Deagle",nil,nil,{"andydeagle.whitelisted"},"w_pi_andydeagle"}, --tbx-72714622a74341-77cbe3
		["WEAPON_MK23SOCOM"] = {"H&K MK23 Socom",nil,nil,{"mk23socom.whitelisted"},"w_pi_mk23socom"}, --tbx-62615422a74840-c6c6e8
		["WEAPON_PDGLOCK20VA5"] = {"Glock 20 VA5",nil,nil,{"pdglock20va5.whitelisted"},"w_pi_pdglock20va5"}, --tbx-71217222a58500-456484
		["WEAPON_JACKPISTOL50"] = {"Jack On Bootings Tac Pistol",nil,nil,{"jackpistol50.whitelisted"},"w_pi_pistol50"}, --tbx-66623422a83765-0d149c
		["WEAPON_PDB23R"] = {"Mac & Bread B23R",nil,nil,{"pdb23r.whitelisted"},"w_pi_pdb23r"}, --tbx-24324722a67870-23beda
		["WEAPON_GAZGLOCK17C"] = {"It$Gaz Glock 17c",nil,nil,{"gazglock17c.whitelisted"},"w_pi_gazglock17c"}, --tbx-13527722a67832-a07ecb
		["WEAPON_SPEEDGUN"] = {"Speed Gun",nil,nil,{""},"w_pi_staffgun"},
		["WEAPON_FNFIVESEVEN"] = {"FN Five-seveN",nil,nil,{"weaponfnfiveseven.whitelisted"},"w_pi_fnfiveseven"}, --3731-4800
		["WEAPON_MMX19X"] = {"MM X19-X",nil,nil,{"weaponmmx19x.whitelisted"},"w_pi_mmx19x"}, --B4EA-16FB
		["WEAPON_SILENCERCOMAXIM9PD"] = {"PD SilencerCo Maxim 9",nil,nil,{"weaponsilencercomaxim9pd.whitelisted"},"w_pi_silencercomaxim9pd"}, --7C19-A21F
		["WEAPON_50DJEAGLE"] = {".50 DJs Eagle",nil,nil,{"weapon50djeagle.whitelisted"},"w_pi_50djeagle"}, --4D05-BCE7
		["WEAPON_PDX19X"] = {"JMI'S JUSTICE",nil,nil,{"weaponpdx19x.whitelisted"},"w_pi_pdx19x"}, --62A9-CFD6
		["WEAPON_JMITASER"] = {"JMI's Taser",nil,nil,{"weaponjmitaser.whitelisted"},"w_pi_jmitaser"}, --FF10-F0F0
		--? End Police Small Arms (DO NOT DELETE - USED BY CI)
		--? End Police Shank Melee (DO NOT DELETE - USED BY CI)
	},
	["policeLargeArms"] = {
		_config = {
			{
				vector3(1840.6104736328,3691.4741210938,33.350730895996),
				vector3(461.43179321289,-982.66412353516,29.689668655396),
				vector3(-449.9557800293,6016.5454101563,30.766398239136),
				vector3(640.8759765625,-0.63530212640762,43.423385620117),
				vector3(-1102.5059814453,-820.62091064453,13.282785415649),
				vector3(1535.4519042969,795.24822998047,77.693084716797),
			},
			110,5,"MET Police Large Arms",{"police.loadshop2","police.onduty.permission"},false,true,
			useBankPayments = true,
			webhookName = "police_armoury",
		},
		["WEAPON_M4A1CMG"] = {"M4 Carbine",nil,nil,{"assaultrifle.whitelisted"},"W_AR_M4A1CMG"},
		["WEAPON_SIGMCXCMG"] = {"SigMCX",nil,nil,{"assaultrifle.whitelisted"},"w_ar_sigmcx"},
		["WEAPON_SIGMCXCMG2"] = {"Sig Sauer Sig 516",nil,nil,{"nootnoot.whitelisted","sigsaur.whitelisted"},"w_ar_sigmcx2"},
		["WEAPON_GCSNIPER"] = {"GC Sniper",nil,nil,{"gc.whitelisted"},"w_sr_gcsniper"},
		["WEAPON_G36CMG"] = {"G36C",nil,nil,{"assaultrifle.whitelisted"},"w_ar_g36c"},
	  	["WEAPON_SMOKEGRENADECMGPD"] = {"Police Smoke Grenade",nil,nil,{""},"w_ex_smokegrenadecmg"},
	  	["WEAPON_REMINGTON700CMG"] = {"Remington 700",nil,nil,{"sniperrifle.whitelisted"},"w_sr_remington700"},
		["WEAPON_MP5XCMG"] = {"MP5",nil,nil,{""},"w_sb_mp5x"},
		["WEAPON_BORA"] = {"Bora Sniper",nil,nil,{"rolex.whitelisted","bora.whitelisted"},"w_sr_bora"},
		["WEAPON_SIGMP"] = {"Sig Sauer MPX",nil,nil,{"og.whitelisted","sigmp.whitelisted"},"w_sb_sigmp"},
		["WEAPON_M82A2"] = {"M82A2",nil,nil,{"m82a2.whitelisted"},"w_sr_m82a2"},
		["WEAPON_M82A3"] = {"M82A3",nil,nil,{"m82a3.whitelisted"},"w_sr_m82a3"},
		["WEAPON_DAEWOO"] = {"Daewoo K2 Rifle",nil,nil,{"og.whitelisted","daewoo.whitelisted"},"w_ar_daewoo"},
		["WEAPON_MP5CMG"] = {"MP5",nil,nil,{"ludde.whitelisted"},"w_sb_mp5cmg"},
		["WEAPON_H416"] = {"HK416",nil,nil,{"h416.whitelisted"},"w_ar_h416"},
		["WEAPON_HK416B"] = {"HK416 B",nil,nil,{"hk416b.whitelisted"},"w_ar_h416b"},
		["WEAPON_VECTORCMG"] = {"Vector",nil,nil,{"nootnoot.whitelisted","vector2.whitelisted"},"w_sb_vector"},
		["WEAPON_SPAR17"] = {"Spar-17",nil,nil,{"assaultrifle.whitelisted"},"w_ar_spar17"},
		["WEAPON_MK18V2"] = {"MK18",nil,nil,{"mk18v2.whitelisted"},"w_ar_mk18v2"},
		["WEAPON_PDMK18"] = {"MK-18",nil,nil,{"pdmk18.whitelisted"},"w_ar_pdmk18"},
		["WEAPON_STING"] = {"Sting 9mm",nil,nil,{""},"w_sb_sting"},
		["WEAPON_MP5V2"] = {"MP5 V2",nil,nil,{"mp5v2.whitelisted"},"w_sb_mp5v2"},
		["WEAPON_P90"] = {"P90",nil,nil,{"p90.whitelisted"},"w_sb_p90"},
		["WEAPON_MP7CMG"] = {"MP7",nil,nil,{"rolex.whitelisted","mp7rolex.whitelisted"},"w_sb_mp7"},
		["WEAPON_M98B"] = {"M98B",nil,nil,{"m98b.whitelisted"},"w_sr_m98b"},
		["WEAPON_TRGSNIPER"] = {"AWP Redline",nil,nil,{"trgsniper.whitelisted"},"w_sr_trgsniper"}, --tbx-27320221a72649-009cab
		["WEAPON_STAC"] = {"S-TAC",nil,nil,{"stac.whitelisted"},"w_sr_stac"},
		["WEAPON_ARXCMG"]  = {"ARX",nil,nil,{"og.whitelisted","arx.whitelisted"},"w_ar_arx"},
		["WEAPON_MK4AR15"] = {"AR-15 Mk4",nil,nil,{"ar15mk4.whitelisted"},"w_ar_FBIARb"},
		["WEAPON_PDM4A4"] = {"M4A4",nil,nil,{"rolex.whitelisted","m4a4.whitelisted"},"w_ar_pdm4a4"},
		["WEAPON_ACWR"]  = {"ACW-R",nil,nil,{"og.whitelisted","acwr.whitelisted"},"w_ar_acwr"},
		["WEAPON_HEYMAKER"]  = {"Haymaker 12",nil,nil,{"og.whitelisted","haymaker.whitelisted"},"w_sg_heymaker"},
		["WEAPON_DEVGRU"]  = {"Devgru Hk416 Eotech",nil,nil,{"break.whitelisted","dev.whitelisted"},"w_ar_devgru"}, -- re brought by break 114946, 4327, 110004
		["WEAPON_SIGCMG"]  = {"SIG SG 552",nil,nil,{"sig.whitelisted"},"W_AR_SIG"}, -- sold to bennyaa
		["WEAPON_USASCMG"] = {"USAS",nil,nil,{"usas.whitelisted"},"w_sg_usascmg"},
		["WEAPON_JAK12"] = {"JAK-12",nil,nil,{"jak12.whitelisted"},"w_sg_jak12"}, --tbx-26625621a61571-19d6c9
		["WEAPON_L115A1"] = {"L115A1",nil,nil,{"l115a1.whitelisted"},"w_sr_l115a1"},
		["WEAPON_MSR2"] = {"AX-50",nil,nil,{"ax50.whitelisted"},"w_sr_msr2"},
		["WEAPON_PDUMP45"] = {"UMP 45",nil,nil,{"ump45.whitelisted"},"w_sb_pdump45"},
		["WEAPON_M1014"] = {"M1014 Shotgun",nil,nil,{"m1014.whitelisted"},"w_sg_m1014"},
		["WEAPON_FLASHBANG"] = {"Flashbang",nil,nil,{""},"w_ex_flashbang"},
		["WEAPON_MK18SOG"] = {"MK18 SOG",nil,nil,{"mk18sog.whitelisted"},"w_ar_mk18sog"}, --tbx-46820221a53327-bb341c
		["WEAPON_NSR9"] = {"NSR-9",nil,nil,{"nsr9.whitelisted"},"w_ar_nsr9"}, --tbx-13020121a59640-94f2c4
		["WEAPON_MPXC"] = {"MPX-C",nil,nil,{"mpxc.whitelisted"},"w_sb_mpxc"}, --tbx-95020221a70911-d700c5
		["WEAPON_SCARHPD"] = {"SCAR-H",nil,nil,{"scarhpd.whitelisted"},"w_ar_scarhpd"}, --tbx-51026121a58197-42c242
		["WEAPON_G27"] = {"G27",nil,nil,{"g27.whitelisted"},"w_ar_g27"}, --tbx-52525721a50807-e47b3a
		["WEAPON_STEYRAUG"]  = {"Steyr AUG",nil,nil,{"steyraug.whitelisted"},"w_sb_steyraug"}, --tbx-16026421a47219-d5e706
		["WEAPON_SSMCX"]  = {"Sig Sauer MCX Suppressed",nil,nil,{"ssmcx.whitelisted"},"w_ar_ssmcx"}, --tbx-28625621a69646-86f4f6
		["WEAPON_L104A1"] = {"L104A1",nil,nil,{"l104a1.whitelisted"},"w_lr_l104a1"}, --Arthur/Dev Gun
		["WEAPON_BEANAR15"] = {"Bean AR-15",nil,nil,{"beanar15.whitelisted"},"w_ar_beanar15"}, --tbx-17535521a70172-42ee2a.
		["WEAPON_FANG45"] = {"Fang 45 SMG",nil,nil,{"fang45.whitelisted"},"w_sb_fang45"}, --tbx-951022a73073-31f82c
		["WEAPON_ANDYM16A2"] = {"M16A2",nil,nil,{"andym16a2.whitelisted"},"w_ar_andym16a2"}, --tbx-4225822a75430-db3004
		["WEAPON_VOMFEUER"] = {"Vom Feuer M16",nil,nil,{"vomfeuerclassic.whitelisted"},"w_ar_vomfeuerclassic"}, --tbx-9476022a79896-671e66
		["WEAPON_TX15EFTPD"] = {"TX-15",nil,nil,{"tx15eftpd.whitelisted"},"w_ar_tx15pd"}, --tbx-5887722a32065-deb08c
		["WEAPON_TOMSNIPER"] = {"Heavy Sniper",nil,nil,{"tomsniper.whitelisted"},"w_sr_tomsniper"}, --Internal Payment
		["WEAPON_HKMP5"] = {"HK MP5",nil,nil,{"hkmp5.whitelisted"},"w_sb_hkmp5"}, --tbx-3276722a45324-52602d
		["WEAPON_FOLDEDCOMBATSHOTGUN"] = {"Folded Combat Shotgun",nil,nil,{"foldedcombatshotgun.whitelisted"},"w_sg_foldedcombatshotgun"}, --tbx-3025922a76469-b3b488
		["WEAPON_DONNYSCAR"] = {"Donny Scar",nil,nil,{"donnyscar.whitelisted"},"w_sb_donnyscar"}, --tbx-55111022a73182-d1c331
		["WEAPON_JUNCTIONJAK12"] = {"Junction JAK-12",nil,nil,{"junctionjak12.whitelisted"},"w_sg_junctionjak12"}, --tbx-96810622a62507-d56d83
		["WEAPON_MARKOMPX"] = {"Marko MPX",nil,nil,{"markompx.whitelisted"},"w_sb_markompx"}, --tbx-26629521a54970-ce4f81
		["WEAPON_ASHYSCARHDMR"] = {"Ashys Scar-H DMR",nil,nil,{"ashyscarhdmr.whitelisted"},"w_sr_ashyscarhdmr"}, --tbx-56315322a8202-1ebefe
		["WEAPON_UPPYR700"] = {"uppy R700",nil,nil,{"uppyr700.whitelisted"},"w_sr_uppyr700"}, --tbx-48614522a64235-fed4a8
		["WEAPON_UPPYHK416"] = {"uppy HK416",nil,nil,{"uppyhk416.whitelisted"},"w_ar_uppyhk416"}, --tbx-88014422a85230-c58fcd
		["WEAPON_M870SHOTGUN"] = {"M870 Shotgun",nil,nil,{"m870shotgun.whitelisted"},"w_sg_m870shotgun"}, --tbx-34223122a63420-bd0136
		["WEAPON_PDFNFAL"] = {"PD FN FAL",nil,nil,{"pdfnfal.whitelisted"},"w_ar_pdfnfal"}, --tbx-60322622a69457-fa73d3
		["WEAPON_PDHAWKNAVY"] = {"PD HAWK NAVY",nil,nil,{"pdhawknavy.whitelisted"},"w_ar_pdhawknavy"}, --tbx-56816122a69327-a3d025
		["WEAPON_PDR4C"] = {"Burnleys R4-C",nil,nil,{"pdr4c.whitelisted"},"w_ar_pdr4c"}, --tbx-73923922a82572-d64f6f
		["WEAPON_LASTOFUSM16A4"] = {"M16A4",nil,nil,{"lastofusm16a4.whitelisted"},"w_ar_lastofusm16a4"}, --	tbx-81830422a68784-3ec451
		["WEAPON_TACM4A1"] = {"M4A1 Tactical",nil,nil,{"tacm4a1.whitelisted"},"w_ar_tacm4a1"}, --tbx-73332522a54125-e67431 (B2E5-48F1)
		["WEAPON_SIMAX"] = {"Simax HK416",nil,nil,{"simax.whitelisted"},"w_ar_simax"}, --4A7F-A775
		["WEAPON_BARRETTM82"] = {"Barrett M82",nil,nil,{"barrettm82.whitelisted"},"w_sr_barrettm82"}, --9F2D-A309
		["WEAPON_SIGMCXCARBINE"] = {"Sig MCX Carbine Rifle",nil,nil,{"sigmcxcarbine.whitelisted"},"w_ar_sigmcxcarbine"}, --90F8-20B6
		["WEAPON_PP19PD"] = {"Police PP19",nil,nil,{"pp19pd.whitelisted"},"w_smg_vityaz"}, --F3CB-5925
		["WEAPON_RAA12"] = {"R AA-12",nil,nil,{"weaponraa12.whitelisted"},"w_sg_raa12"}, --2C4F-2CA8
		["WEAPON_BOSG122"] = {"BOSG.12.2",nil,nil,{"weaponbosg122.whitelisted"},"w_sg_bosg122"}, --BE86-05CD
		["WEAPON_BENELLIM4"] = {"Benalli M4",nil,nil,{"weaponbenellim4.whitelisted"},"w_sg_benellim4"}, --4593-3BB7
		["WEAPON_BERETTA1301TACTICAL"] = {"Berreta 1031 Tactical",nil,nil,{"weaponberetta1301tactical.whitelisted"},"w_sg_beretta1301tactical"}, --E495-D3C9
		["WEAPON_JMISPUNISHER"] = {"JMI's Punisher",nil,nil,{"weaponjmispunisher.whitelisted"},"w_sg_jmispunisher"}, --C9F2-3FE7
		--? End Police Large Arms Shotguns (DO NOT DELETE - USED BY CI)
		["WEAPON_PDASVAL"] = {"AS VAL",nil,nil,{"weaponpdasval.whitelisted"},"w_sb_pdasval"}, --4009-3F26
		["WEAPON_PDMK7K"] = {"PD MP7K",nil,nil,{"weaponpdmk7k.whitelisted"},"w_sb_pdmk7k"}, --C7EE-27D9
		["WEAPON_SILENCEDHKUMP"] = {"Silenced HK UMP",nil,nil,{"weaponsilencedhkump.whitelisted"},"w_sb_silencedhkump"}, --C13E-2A5E
		["WEAPON_PDCOMBATPDW"] = {"Combat PDW",nil,nil,{"weaponpdcombatpdw.whitelisted"},"w_sb_pdcombatpdw"}, --F9B8-48B4
		["WEAPON_JMISDISARMER"] = {"JMI's Disarmer",nil,nil,{"weaponjmisdisarmer.whitelisted"},"w_sb_jmisdisarmer"}, --6C80-5958
		["WEAPON_MP7S"] = {"MP7-S",nil,nil,{"weaponmp7s.whitelisted"},"w_sb_mp7s"}, -- 0774-11C2
		["WEAPON_PDP90"] = {"P90",nil,nil,{"weaponpdp90.whitelisted"},"w_sb_pdp90"}, --88C4-6A98
		--? End Police Large Arms SMGs (DO NOT DELETE - USED BY CI)
		["WEAPON_L96A1SNIPER"] = {"L96A1 Sniper",nil,nil,{"weaponl96a1sniper.whitelisted"},"w_sr_l96a1sniper"}, --A851-8451
		["WEAPON_PDMK13"] = {"MK13 Mod 7",nil,nil,{"weaponpdmk13.whitelisted"},"w_sr_pdmk13"}, --292B-8D9A
		["WEAPON_MMAXMC"] = {"MM AXMC",nil,nil,{"weaponmmaxmc.whitelisted"},"w_sr_mmaxmc"}, --88F8-1CC3
		["WEAPON_PDDSR50"] = {"PD DSR-50",nil,nil,{"weaponpddsr50.whitelisted"},"w_sr_pddsr50"}, --6DC3-1198
		["WEAPON_SIG716"] = {"SIG 716 DMR",nil,nil,{"weaponsig716.whitelisted"},"w_sr_sig716"}, --B0D3-28A3
		["WEAPON_SNIPERDVL"] = {"DVL-10",nil,nil,{"weaponsniperdvl.whitelisted"},"w_sr_sniperdvl"}, --3B9E-0255
		--? End Police Large Arms Snipers (DO NOT DELETE - USED BY CI)
		["WEAPON_MANDARIFLE"] = {"Manda Rifle",nil,nil,{"weaponmandarifle.whitelisted"},"w_ar_mandarifle"}, --1D75-33EE
		["WEAPON_L85A2"] = {"L85A2",nil,nil,{"weaponl85a2.whitelisted"},"w_ar_l85a2"}, --1714-C754
		["WEAPON_LBRS"] = {"MM LBRS",nil,nil,{"weaponlbrs.whitelisted"},"w_ar_lbrs"}, --75DB-BA57
		["WEAPON_PDSPECIALCARBINEMK2"] = {"Special Carbine Mk2",nil,nil,{"weaponpdspecialcarbinemk2.whitelisted"},"w_ar_pdspecialcarbinemk2"}, --823C-A951
		["WEAPON_SIGMCXSPEAR"] = {"SIG MCX SPEAR",nil,nil,{"weaponsigmcxspear.whitelisted"},"w_ar_sigmcxspear"}, --B3E2-E964
		["WEAPON_JASONSM4"] = {"Jasons M4",nil,nil,{"weaponjasonsm4.whitelisted"},"w_ar_jasonsm4"}, --97C1-BC2F
		["WEAPON_M416MK2"] = {"M416 MKII",nil,nil,{"weaponm416mk2.whitelisted"},"w_ar_m416mk2"}, --7605-CBE6
		["WEAPON_NOVESKEPD"] = {"NOVESKE X IRREGULAR DEFENSE CHAINSAW RIFLE",nil,nil,{"weaponnoveskepd.whitelisted"},"w_ar_noveskepd"}, --0E33-5740
		["WEAPON_GALIL52PD"] = {"Galil 52",nil,nil,{"weapongalil52pd.whitelisted"},"w_ar_galil52pd"}, --DD2F-9BB9
		["WEAPON_M4CMG"]  = {"M4A1",nil,nil,{"m4a1.whitelisted"},"w_ar_m4cmg"},
		["WEAPON_REMINGTONACRC"] = {"Remington ACR-C",nil,nil,{"weaponremingtonacrc.whitelisted"},"w_ar_remingtonacrc"}, --9524-6088
		["WEAPON_HK416PD"] = {"HK416 PD",nil,nil,{"weaponhk416pd.whitelisted"},"w_ar_hk416pd"}, --6189-ADE5
		["WEAPON_NOCTURNOSCAR17"] = {"Nocturno Scar-17",nil,nil,{"weaponnocturnoscar17.whitelisted"},"w_ar_nocturnoscar17"}, --30BD-2318
		["WEAPON_G36CTACTICAL"] = {"G36C Tactical",nil,nil,{"weapong36ctactical.whitelisted"},"w_ar_g36ctactical"}, --4ADA-DE6B
		["WEAPON_MK47DISSENT"] = {"MK47 Dissent",nil,nil,{"weaponmk47dissent.whitelisted"},"w_ar_mk47dissent"}, --9DFC-6FD2
		["WEAPON_L85A1"] = {"L85A1",nil,nil,{"weaponl85a1.whitelisted"},"w_ar_l85a1"}, --E503-8009
		["WEAPON_PROJECTSBADGER"] = {"Project's Badger",nil,nil,{"weaponprojectsbadger.whitelisted"},"w_ar_projectsbadger"}, --DF31-B83A
		--? End Police Large Arms Rifles (DO NOT DELETE - USED BY CI)
		--? End Police Large Arms LMGs (DO NOT DELETE - USED BY CI)
	},
	["prisonArmoury"] = {
		_config = {
			{
				vector3(1764.7838134766,2591.0380859375,45.000999450684),
			},
			110,5,"Prison Armoury",{"prisonguard.onduty.permission"},false,true,
			webhookName = "hmp_armoury_logs",
		},
		["WEAPON_FLAREGUN"] = {"Flare Gun",nil,nil,{""},"w_pi_flaregun"},
		["WEAPON_FLASHLIGHT"] = {"Flashlight",nil,nil,{""},"w_me_flashlight"},
		["WEAPON_FLARE"] = {"Flare",nil,nil,{""},"w_am_flare"},
		["WEAPON_PAVA"] = {"PAVA",nil,nil,{"policepava.permission"},"w_am_pava"},
		["WEAPON_NIGHTSTICK"] = {"Police Baton",nil,nil,{""},"w_me_nightstick"},
		["WEAPON_STUNGUN"] = {"Tazer",nil,nil,{""},"w_pi_stungun"},
		["WEAPON_GLOCKCMG"] = {"Glock",nil,nil,{""},"w_pi_glock"},
		["WEAPON_MP5XCMG"] = {"MP5",nil,nil,{"hmp.smgtrained.permission"},"w_sb_mp5x"},
		["WEAPON_NONLETHALSHOTGUN"] = {"HMP NonLethal Shotgun",nil,nil,{"riottrained.whitelisted"},"w_sg_nonlethalmossberg"},
		["WEAPON_SMOKEGRENADECMGPD"] = {"Riot Smoke Grenade",nil,nil,{"riottrained.whitelisted"},"w_ex_smokegrenadecmg"},
		["WEAPON_FLASHBANG"] = {"Flashbang",nil,nil,{"hmpflashbang.permission", "hmphq.whitelisted"},"w_ex_flashbang"},
		["WEAPON_M9A3"] = {"M9A3",nil,nil,{"weaponm9a3.whitelisted"},"w_pi_m9a3"}, --EE66-771D
		["WEAPON_HKMP7A1"] = {"HK MP7-A1",nil,nil,{"weaponhkmp7a1.whitelisted"},"w_sb_hkmp7a1"}, --FAA8-E242
	},
	["borderForceArmoury"] = {
		_config = {
			{
				-- vector3(2420.1384277344,-182.38229370117,86.580810546875),
				-- vector3(1304.5487060547,617.97155761719,79.330574035645),
				-- vector3(-2441.3811035156,-248.25277709961,15.435325622559)
			},
			110,5,"Border Force Armoury",{"borderforce.onduty.permission"},false,true,
			webhookName = "ukbf_armoury",
		},
		["WEAPON_REMINGTON870CMG"] = {"Remington 870",nil,nil,{""},"w_sg_remington870"},
		["WEAPON_FLASHLIGHT"] = {"Flashlight",nil,nil,{""},"w_me_flashlight"},
		["WEAPON_PAVA"] = {"PAVA",nil,nil,{"policepava.permission"},"w_am_pava"},
		["WEAPON_NIGHTSTICK"] = {"Police Baton",nil,nil,{""},"w_me_nightstick"},
		["WEAPON_STUNGUN"] = {"Tazer",nil,nil,{""},"w_pi_stungun"},
		["WEAPON_GLOCKCMG"] = {"Glock",nil,nil,{""},"w_pi_glock"},
		["WEAPON_NONLETHALSHOTGUN"] = {"NonLethal Shotgun",nil,nil,{""},"w_sg_nonlethalmossberg"},
		["WEAPON_MP5XCMG"] =  {"MP5",nil,nil,{"borderforcelarge.permission"},"w_sb_mp5x"},
	},
	-- ["LDNU"] = {
	-- 	_config = {
	-- 		{
	-- 			vector3(-580.14367675781,-727.19079589844,120.61459899902),
	-- 		},
	-- 		110,5,"LDNU Gun Room",{"gang.ldnu.whitelist"},false,
	-- 		webhookName = "ldnu_weapons",
	-- 	},
	-- 	["WEAPON_LDNUADAR15"] = {"LDNU ADAR 15",nil,nil,{"gang.ldnu.whitelist"},"w_ar_ldnuadar15"},
	-- },
	["Marketplace"] = {
		_config = {
			{
				vector3(-267.004211, -907.300171, 45.270470),
			},
			110,5,"Marketplace Gun Room",{"gang.marketplace.whitelist"},false,
			webhookName = "marketplace_weapons",
			gangGunstore = true,
		},
		["WEAPON_MARKETPLACEMK18"] = {"Marketplace MK18",nil,nil,{"gang.marketplace.whitelist"},"w_ar_marketplacemk18"},
	},
	["SixthSense"] = {
		_config = {
			{
				vector3(-91.22550201416,378.45083618164,106.87739672852)
			},
			110,5,"Sixth Sense Gun Room",{"gang.sixthsense.whitelist"},false,
			webhookName = "sixth_sense_armoury",
			gangGunstore = true,
		},
		["WEAPON_SIXTHSENSESNIPER"] = {"Sixth Sense Sniper",nil,nil,{"gang.sixthsense.whitelist"},"w_sr_sixthsensesniper"},
	},
	["Purge"] = {
		_config = {
			{},
			110,5,"Purge Gun Store",{"purge.active"},true
		},
		["item|purgeArmourPlate"] = {"Armour Plate (Purge)", 50000, 0, {"purge.active"}, "prop_armour_pickup"},
		["WEAPON_HOMINGLAUNCHERCMG"] = {"Homing Launcher", 2000000, 100000, {"purge.active"}, "w_lr_homing"},
		["item|vigilanteArmour"] = {"Armour",50000,0,{"vigilante.onduty.permission"},"prop_bodyarmour_05"},
		["item|vigilanteFillUpArmour"] = {"Replenish Armour",50000,0,{"vigilante.onduty.permission"},"prop_armour_pickup"},
	},
	["Vigilante"] = {
		_config = {
			{},
			110,5,"Vigilante Gun Store",{"vigilante.onduty.permission"},true,
			disableCategories = true,
			grayNotPurchableItems = true,
			useBankPayments = true,
		},
		["WEAPON_VIGILANTE45ACP"] = {"FNX",50000,25000,{"vigilanteglock.whitelisted"},"w_pi_vigilante45acp"},
		["WEAPON_VIGILANTESTINGER"] = {"Sting 9mm",300000,150000,{"vigilantesting.whitelisted"},"w_sb_vigilantestinger"},
		["WEAPON_VIGILANTESPAR16"] = {"SPAR-16",500000,250000,{"vigilantespar16.whitelisted"},"w_ar_vigilantespar16"},
		["WEAPON_VIGILANTEMOSIN"] = {"Mosin Bolt-Action",1000000,500000,{"vigilantemosin.whitelisted"},"w_ar_vigilantemosin"},
		["item|vigilanteArmour"] = {"Armour",50000,0,{""},"prop_bodyarmour_05"},
		["item|vigilanteFillUpArmour"] = {"Replenish Armour",50000,0,{""},"prop_armour_pickup"},
		["WEAPON_GLOCK17VIGI"] = {"Dragon Fury",50000,25000,{"weaponglock17vigi.whitelisted"},"w_pi_glock17vigi"}, --2F50-A775
		["WEAPON_BLACKICEPISTOL"] = {"Black Ice Pistol",50000,25000,{"weaponblackicepistol.whitelisted"},"w_pi_blackicepistol"}, --CCC6-9AE8
		["WEAPON_744GOTBADDIES"] = {"744gotbaddies",50000,25000,{"weapon744gotbaddies.whitelisted"},"w_pi_744gotbaddies"}, --4750-F85E
		--? End Vigilante Small Arms (DO NOT DELETE - USED BY CI)
		--? End Vigilante Shank Melee (DO NOT DELETE - USED BY CI)
		["WEAPON_THERECLAIMER"] = {"The Reclaimer",300000,150000,{"weaponthereclaimer.whitelisted"},"w_sg_thereclaimer"}, --94F8-EE2C
		--? End Vigilante Large Arms Shotguns (DO NOT DELETE - USED BY CI)
		["WEAPON_MP7TACTICAL"] = {"MP7 Tactical",300000,150000,{"weaponmp7tactical.whitelisted"},"w_sb_mp7tactical"}, --7CE8-356D
		["WEAPON_PINKMANORMP5"] = {"Pink Manor MP5",300000,150000,{"weaponpinkmanormp5.whitelisted"},"w_sb_pinkmanormp5"}, --1448-3360
		["WEAPON_FIBSMG"] = {"FIB SMG",300000,150000,{"weaponfibsmg.whitelisted"},"w_sb_fibsmg"}, --020E-A4AF
		["WEAPON_STM9"] = {"STM-9",300000,150000,{"weaponstm9.whitelisted"},"w_sb_stm9"}, --F68B-E430
		["WEAPON_T5DARKZERO"] = {"T-5 Darkzero",300000,150000,{"weapont5darkzero.whitelisted"},"w_sb_t5darkzero"}, --84FE-0995
		--? End Vigilante Large Arms SMGs (DO NOT DELETE - USED BY CI)
		["WEAPON_BLACKICEVIGIMOSIN"] = {"Black Ice Mosin",1000000,500000,{"weaponblackicevigimosin.whitelisted"},"w_sr_blackicevigimosin"}, --039C-03E6
		--? End Vigilante Large Arms Snipers (DO NOT DELETE - USED BY CI)
		["WEAPON_TSTAKEDOWN"] = {"TS Takedown",500000,250000,{"weapontstakedown.whitelisted"},"w_ar_tstakedown"}, --337B-E293
		["WEAPON_DRAGONRAGE"] = {"Dragon Rage",500000,250000,{"weapondragonrage.whitelisted"},"w_ar_dragonrage"}, --D30C-C7EE
		["WEAPON_M4HEX"] = {"M4 Heat Exhaustion",500000,250000,{"weaponm4hex.whitelisted"},"w_ar_m4hex"}, --A81D-376A
		["WEAPON_ARX200"] = {"ARX200 Darkzero",500000,250000,{"weaponarx200.whitelisted"},"w_ar_arx200"}, --8E9B-2F6F
		["WEAPON_MOSHYSMONSTER"] = {"Moshy's Monster",500000,250000,{"weaponmoshysmonster.whitelisted"},"w_ar_moshysmonster"}, --6480-5B77
		["WEAPON_THELUMBERJACKSAR"] = {"LumberJacks AR",500000,250000,{"weaponthelumberjacksar.whitelisted"},"w_ar_thelumberjacksar"}, --D2A8-E6D2
		["WEAPON_CANTPAYILTAKEITAWAY"] = {"CantPayIlTakeItAway",500000,250000,{"weaponcantpayiltakeitaway.whitelisted"},"w_ar_cantpayiltakeitaway"}, --A81E-E737
		--? End Vigilante Large Arms Rifles (DO NOT DELETE - USED BY CI)
		--? End Vigilante Large Arms LMGs (DO NOT DELETE - USED BY CI)
	},
	["RebelTokenShop"] = {
		_config = {
			{
				vector3(1443.654296875,6333.43359375,22.891420135498),
			},
			110,5,"Rebel Token Shop",{"rebellicense.whitelisted"},true,
			useRebelTokens = true,
		},
		["item|armourPlate"] = {"Armour Plate (Advanced Rebel)", 2, 0, {"advrebellicense.whitelisted"}, "prop_armour_pickup"},
		["WEAPON_AKMCMG"] = {"AKM",14,7,{""},"w_ar_akm"},
		["WEAPON_AKKAL"] = {"AK-200",15,7,{""},"w_ar_akkal"},
		["WEAPON_SVDCMG"] = {"Dragunov SVD",50,25,{""},"w_sr_svd"},
		["WEAPON_WINCHESTER12CMG"] = {"Winchester Model 12",7,3,{""},"w_sg_winchester12"},
		["WEAPON_SPAZ"] = {"SPAS-12",8,4,{""},"w_sg_spaz"},
		["WEAPON_NBK"] = {"Revolver",4,2,{""},"w_pi_nbk"},

		["WEAPON_MK1EMR"] = {"Mk-1 EMR (Advanced Rebel)",16,8,{"advrebellicense.whitelisted"},"w_ar_mk1emr"},
		["WEAPON_MXM"] = {"MXM (Advanced Rebel)",14,7,{"advrebellicense.whitelisted"},"w_ar_mxm"},
		["WEAPON_MX"] = {"MX (Advanced Rebel)",14,7,{"advrebellicense.whitelisted"},"w_ar_mx"},
		["WEAPON_MK14"] = {"MK14 (Advanced Rebel)",50,25,{"advrebellicense.whitelisted"},"w_sr_mk14"},
		["WEAPON_TRG"] = {"TRG (Advanced Rebel)",14,7,{"advrebellicense.whitelisted"},"w_ar_trg"},
		["WEAPON_SPAR16"] = {"SPAR-16 (Advanced Rebel)",14,7,{"advrebellicense.whitelisted"},"w_ar_spar16"},
	},
	["Airport"] = {
		_config = {
			{
				vector3(-980.71038818359,-2933.4665527344,12.94506072998),
			},
			110,5,"Airport Shop",{""},true,
			useBankPayments = true,
		},
		["GADGET_PARACHUTE"] = {"Parachute",1000,0,{""},"hei_p_parachute_s_female"},
	},
}

cfg.rebelTokenClassPricing = {
	["Pistol"] = {2, 1},
	["SMG"] = {12,6},
	["AR"] = {20,10},
	["Shotgun"] = {10,5},
}

cfg.rebelTokenSubTypePricing = {
	["sniper"] = {40, 20},
	["musket"] = {30, 15},
	["combatmg"] = {60, 30},
}

---@param originalGunstoreName string
local function copyGunstoreWhitelistsToRebelTokenShop(originalGunstoreName)
	local rebelTokenShopData = cfg.CMGGunStores["RebelTokenShop"]
	if not rebelTokenShopData then
		return
	end

	local gunstoreData = cfg.CMGGunStores[originalGunstoreName]
	if not gunstoreData then
		return
	end

	for weaponId, gunstoreWeaponRow in pairs(gunstoreData) do
		local weaponConfig = cfgWeapons.weapons[weaponId]
		if weaponConfig and not gunstoreWeaponRow[2] and not gunstoreWeaponRow[3] then
			local permissionsTable = gunstoreWeaponRow[4]
			if type(permissionsTable) ~= "table" then
				permissionsTable = {}
			end

			local numRealPermissions = 0
			for _, permission in pairs(permissionsTable) do
				if #permission > 0 then
					numRealPermissions = numRealPermissions + 1
				end
			end

			if numRealPermissions > 0 then
				local newGunstoreWeaponRow = table.copy(gunstoreWeaponRow)

				local pricing = cfg.rebelTokenSubTypePricing[weaponConfig.subType]
				if not pricing then
					pricing = cfg.rebelTokenClassPricing[weaponConfig.class]
				end

				if pricing then
					newGunstoreWeaponRow[2] = pricing[1]
					newGunstoreWeaponRow[3] = pricing[2]
					rebelTokenShopData[weaponId] = newGunstoreWeaponRow
				end
			end
		end
	end
end

copyGunstoreWhitelistsToRebelTokenShop("LargeArmsDealer")
copyGunstoreWhitelistsToRebelTokenShop("SmallArmsDealer")

-- No plat discount for large arms at VIP Island
cfg.CMGGunStores["LargeArms_VIP"] = table.copy(cfg.CMGGunStores["LargeArmsDealer"])
cfg.CMGGunStores["LargeArms_VIP"]._config.allowPlatDiscount = false
cfg.CMGGunStores["LargeArms_VIP"]._config.useBankPayments = true

cfg.CMGGunStores["SmallArms_VIP"] = table.copy(cfg.CMGGunStores["SmallArmsDealer"])
cfg.CMGGunStores["SmallArms_VIP"]._config.allowPlatDiscount = false
cfg.CMGGunStores["SmallArms_VIP"]._config.useBankPayments = true

cfg.CMGGunStores["Legion_VIP"] = table.copy(cfg.CMGGunStores["Legion"])
cfg.CMGGunStores["Legion_VIP"]._config.allowPlatDiscount = false
cfg.CMGGunStores["Legion_VIP"]._config.useBankPayments = true

--? Copy Large Arms to Rebel
cfg.CMGGunStores["LargeArms_Rebel"] = table.copy(cfg.CMGGunStores["LargeArmsDealer"])

cfg.classToName = {
	["AR"] = "Assault Rifles",
	["SMG"] = "Submachine Guns",
	["Pistol"] = "Pistols",
	["Melee"] = "Melees",
	["Misc"] = "Miscellaneous",
	["Shotgun"] = "Shotguns",
	["Heavy"] = "Heavies"
}

cfg.miscWeaponItems = {
	["WEAPON_FLAREGUN"] = true,
	["GADGET_PARACHUTE"] = true,
}

cfg.classPricing = {
	["Melee"] = {5000, 0},
	["Pistol"] = {60000, 40000},
	["SMG"] = {450000, 200000},
	["AR"] = {850000, 325000},
	["Shotgun"] = {400000, 200000},
	["Heavy"] = {2000000, 2000000},
}

cfg.subTypePricing = {
	["musket"] = {1000000, 500000},
	["combatmg"] = {3000000, 1250000},
}

local policeStores = {
	["policeSmallArms"] = true,
	["policeLargeArms"] = true,
	["prisonArmoury"] = true,
	["borderForceArmoury"] = true,
}

cfg.alwaysActiveWeapons = {
	"WEAPON_STUNGUN",
	"WEAPON_PAVA",
	"WEAPON_FLASHBANG",
	"WEAPON_GLOCKCMG",
	"WEAPON_PYTHONCMG",
	"WEAPON_THROWBAG",
	"WEAPON_FIREWORK",
	"WEAPON_CROWBAR",
	"WEAPON_BATTLEAXE",
	"WEAPON_SHANKCMG",
	"WEAPON_STAFFGUN",
	"WEAPON_SPEEDGUN",
	"WEAPON_APPISTOLCMG",
	"WEAPON_COMBATPISTOLCMG",
}

cfg.armourValues = {
	["item|1LightArmour"] = 25,
	["item|2MediumArmour"] = 50,
	["item|3HeavyArmour"] = 75,
	["item|4SuperHeavyArmour"] = 100,
	["item|fillUpArmour"] = -1,
}

for storeName, storeInfo in pairs(cfg.CMGGunStores) do
	for itemName, itemInfo in pairs(storeInfo) do
		if itemName ~= "_config" then
			if not itemInfo[2] or not itemInfo[3] then
				local weaponInfo = cfgWeapons.weapons[itemName]
				assert(weaponInfo, string.format("^1The %s in %s with no price set is not a weapon!^7", itemName, storeName))
				if policeStores[storeName] then
					itemInfo[2] = 0
					itemInfo[3] = 0
				else
					local pricing = cfg.subTypePricing[weaponInfo.subType]
					if not pricing then
						pricing = cfg.classPricing[weaponInfo.class]
					end

					itemInfo[2] = pricing[1]
					itemInfo[3] = pricing[2]
				end
				assert(itemInfo[2] and itemInfo[3], string.format("^1The %s in %s does not have a price set!^7", itemName, storeName))
			end
		else
			-- New market 3d prop seems low
---@diagnostic disable-next-line: param-type-mismatch
			for i, vector in pairs(itemInfo[1]) do
				itemInfo[1][i] = vector3(vector.x, vector.y, vector.z + 0.95)
			end
		end
	end
end
--TODO:
--Texture of menu should be defined in here

return cfg
