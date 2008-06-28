-- _________________________________________________ --
--/                                                 \--
--|     _    _          _   _                       |--
--|    | |  | |        | | (_)                      |--
--|    | |__| |   ___  | |  _    ___    ___         |--
--|    |  __  |  / _ \ | | | |  / _ \  / __|        |--
--|    | |  | | |  __/ | | | | | (_) | \__ \        |--
--|    |_|  |_|  \___| |_| |_|  \___/  |___/        |--
--|                                                 |--
--|-------------------------------------------------|--
--| 31/12/2007                                      |--
--|   - First Version for Helios  [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("comodo","Kachua",SPRITE_4_F_02,219,158,6,0,0,"comodo_Kachua_219158")
function comodo_Kachua_219158()
	-- item check
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "^3355FFWait a second! Right now, you're carrying too many items with you. Please come back after putting some of your things into Kafra Storage.^000000"
		close()
		return
	end
	showimage("katsua01.bmp",2)
	-- check end
	dialog "[Kachua]"
	dialog "Diamonds...!"
	dialog "I simply can't get my mind off them! Ever since that man showed me that diamond, it's all I think about!"
	wait()
	local mresulta = menu("Would you like to have mine?","Ah, what a shame...")
	if mresulta == 1 then
		if (getvar(Crystal_Jewel__) > 0) then
			showimage("katsua02.bmp",2)
			dialog "[Kachua]"
			dialog "Are you sure you don't mind"
			dialog "giving this to me? Thank you"
			dialog "so much! I don't have much in"
			dialog "the way of money, but I can give you something from one of my collections~"
			wait()
			local now_weight = (getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT))
			if now_weight < 5500 then
				dialog "[Kachua]"
				dialog "Um..."
				dialog "You're carrying too many things on you right now, so I couldn't give you anything, even if I wanted to. Why don't you put some of your things into Kafra Storage?"
				close()
			else
				dialog "[Kachua]"
				dialog "So what would"
				dialog "you like to have?"
				wait()
				local mresultb = menu("Weapon","Armor","Garment","Helmet","Shoes","Shield")
				if mresultb == 1 then
					dropitem("Crystal_Jewel__",1)
					local gamble_1 = math.random(1,1000)
					if ((gamble_1 > 920) and (gamble_1 < 931)) then
						local gamble_2 = math.random(1,85)
						if (gamble_2 == 1) then
							getitem("Hae_Dong_Gum_",1)
						elseif (gamble_2 == 2) then
							getitem("Tsurugi_",1)
						elseif (gamble_2 == 3) then
							getitem("Saber_",1)
						elseif (gamble_2 == 4) then
							getitem("Two_Hand_Sword_",1)
						elseif (gamble_2 == 5) then
							getitem("Bastard_Sword_",1)
						elseif (gamble_2 == 6) then
							getitem("Gladius_",1)
						elseif (gamble_2 == 7) then
							getitem("Damascus",1)
						elseif (gamble_2 == 8) then
							getitem("Katar_",1)
						elseif (gamble_2 == 9) then
							getitem("Iron_Driver",1)
						elseif (gamble_2 == 10) then
							getitem("Jur_",1)
						elseif (gamble_2 == 11) then
							getitem("Two_Handed_Axe_",1)
						elseif (gamble_2 == 12) then
							getitem("Katar_Of_Raging_Blaze",1)
						elseif (gamble_2 == 13) then
							getitem("Katar_Of_Thornbush",1)
						elseif (gamble_2 == 14) then
							getitem("Katar_Of_Cold_Icicle",1)
						elseif (gamble_2 == 15) then
							getitem("Katar_Of_Piercing_Wind",1)
						elseif (gamble_2 == 16) then
							getitem("Ghoul_Leg",1)
						elseif (gamble_2 == 17) then
							getitem("Kakkung_",1)
						elseif (gamble_2 == 18) then
							getitem("Arbalest_",1)
						elseif (gamble_2 == 19) then
							getitem("CrossBow_",1)
						elseif (gamble_2 == 20) then
							getitem("Bow_",1)
						elseif (gamble_2 == 21) then
							getitem("Chain_",1)
						elseif (gamble_2 == 22) then
							getitem("Arc_Wand",1)
						elseif (gamble_2 == 23) then
							getitem("Bone_Wand",1)
						elseif (gamble_2 == 24) then
							getitem("Rod_",1)
						elseif (gamble_2 == 25) then
							getitem("Trident_",1)
						elseif (gamble_2 == 26) then
							getitem("Javelin_",1)
						elseif (gamble_2 == 27) then
							getitem("Whip_",1)
						elseif (gamble_2 == 28) then
							getitem("Rante_",1)
						elseif (gamble_2 == 29) then
							getitem("Tablet",1)
						elseif (gamble_2 == 30) then
							getitem("Bible",1)
						elseif (gamble_2 == 31) then
							getitem("Book_Of_Billows",1)
						elseif (gamble_2 == 32) then
							getitem("Book_Of_Mother_Earth",1)
						elseif (gamble_2 == 33) then
							getitem("Book_Of_Blazing_Sun",1)
						elseif (gamble_2 == 34) then
							getitem("Book_Of_Gust_Of_Wind",1)
						elseif (gamble_2 == 35) then
							getitem("Rope_",1)
						elseif (gamble_2 == 36) then
							getitem("Tail_",1)
						elseif (gamble_2 == 37) then
							getitem("Line_",1)
						elseif (gamble_2 == 38) then
							getitem("Wire_",1)
						elseif (gamble_2 == 39) then
							getitem("Claw_",1)
						elseif (gamble_2 == 40) then
							getitem("Harp_",1)
						elseif (gamble_2 == 41) then
							getitem("Lute_",1)
						elseif (gamble_2 == 42) then
							getitem("Violin_",1)
						elseif (gamble_2 == 43) then
							getitem("Mandolin_",1)
						elseif (gamble_2 == 44) then
							getitem("Guh_Moon_Goh_",1)
						elseif (gamble_2 == 45) then
							getitem("Guitar_",1)
						elseif (gamble_2 == 46) then
							getitem("Fist_",1)
						elseif (gamble_2 == 47) then
							getitem("Waghnakh_",1)
						elseif (gamble_2 == 48) then
							getitem("Finger_",1)
						elseif (gamble_2 == 49) then
							getitem("Hora_",1)
						elseif (gamble_2 == 50) then
							getitem("Knuckle_Duster_",1)
						elseif (gamble_2 == 51) then
							getitem("Book",1)
						elseif (gamble_2 == 52) then
							getitem("Cinquedea_",1)
						elseif (gamble_2 == 53) then
							getitem("Town_Sword_",1)
						elseif ((gamble_2 > 53) and (gamble_2 < 56)) then
							getitem("Various_Jur",1)
						elseif ((gamble_2 > 55) and (gamble_2 < 58)) then
							getitem("Nail_Of_Loki",1)
						elseif ((gamble_2 > 57) and (gamble_2 < 60)) then
							getitem("Hypnotist's_Staff_",1)
						elseif (gamble_2 == 60) then
							getitem("Luna_Bow",1)
						elseif ((gamble_2 > 60) and (gamble_2 < 63)) then
							getitem("Whip_Of_Red_Flame",1)
						elseif ((gamble_2 > 62) and (gamble_2 < 65)) then
							getitem("Whip_Of_Ice_Piece",1)
						elseif ((gamble_2 > 64) and (gamble_2 < 67)) then
							getitem("Whip_Of_Earth",1)
						elseif ((gamble_2 > 66) and (gamble_2 < 69)) then
							getitem("Jump_Rope",1)
						elseif ((gamble_2 > 68) and (gamble_2 < 71)) then
							getitem("Guitar_Of_Passion",1)
						elseif ((gamble_2 > 70) and (gamble_2 < 73)) then
							getitem("Guitar_Of_Blue_Solo",1)
						elseif ((gamble_2 > 72) and (gamble_2 < 75)) then
							getitem("Guitar_Of_Vast_Land",1)
						elseif ((gamble_2 > 74) and (gamble_2 < 77)) then
							getitem("Guitar_Of_Gentle_Breeze",1)
						elseif ((gamble_2 > 76) and (gamble_2 < 79)) then
							getitem("Coward_",1)
						elseif ((gamble_2 > 78) and (gamble_2 < 81)) then
							getitem("Windhawk",1)
						elseif (gamble_2 == 81) then
							getitem("Diary_Of_Great_Sage",1)
						elseif (gamble_2 == 82) then
							getitem("Survival_Rod_",1)
						elseif (gamble_2 == 83) then
							getitem("Survival_Rod2_",1)
						end
					elseif ((gamble_1 > 0) and (gamble_1 < 201)) then
						getitem("Knife",1)
					elseif ((gamble_1 > 200) and (gamble_1 < 301)) then
						getitem("Sword",1)
					elseif ((gamble_1 > 300) and (gamble_1 < 401)) then
						getitem("Rod",1)
					elseif ((gamble_1 > 400) and (gamble_1 < 501)) then
						getitem("Katana",1)
					elseif ((gamble_1 > 500) and (gamble_1 < 601)) then
						getitem("Jur",1)
					elseif ((gamble_1 > 600) and (gamble_1 < 701)) then
						getitem("Axe",1)
					elseif ((gamble_1 > 700) and (gamble_1 < 801)) then
						getitem("Bow",1)
					elseif ((gamble_1 > 800) and (gamble_1 < 851)) then
						getitem("Mace",1)
					elseif ((gamble_1 > 850) and (gamble_1 < 901)) then
						getitem("Wand",1)
					elseif ((gamble_1 > 900) and (gamble_1 < 911)) then
						getitem("Blade_",1)
					elseif ((gamble_1 > 910) and (gamble_1 < 921)) then
						getitem("Claymore",1)
					elseif ((gamble_1 > 930) and (gamble_1 < 961)) then
						getitem("Stunner",1)
					elseif ((gamble_1 > 960) and (gamble_1 < 971)) then
						getitem("Staff_",1)
					elseif ((gamble_1 > 970) and (gamble_1 < 981)) then
						getitem("Pike_",1)
					elseif ((gamble_1 > 980) and (gamble_1 < 991)) then
						getitem("Guisarme_",1)
					elseif ((gamble_1 > 990) and (gamble_1 < 1001)) then
						getitem("Main_Gauche_",1)
					end
				elseif mresultb == 2 then
					dropitem("Crystal_Jewel__",1)
					local gamble_1 = math.random(1,500)
					if ((gamble_1 > 299) and (gamble_1 < 303)) then
						local gamble_2 = math.random(1,30)
						if ((gamble_2 > 0) and (gamble_2 < 3)) then
							getitem("Chain_Mail_",1)
						elseif ((gamble_2 > 2) and (gamble_2 < 5)) then
							getitem("Thief_Clothes_",1)
						elseif ((gamble_2 > 4) and (gamble_2 < 7)) then
							getitem("Clothes_Of_The_Lord",1)
						elseif ((gamble_2 > 6) and (gamble_2 < 9)) then
							getitem("Saint_Robe_",1)
						elseif ((gamble_2 > 8) and (gamble_2 < 11)) then
							getitem("Holy_Robe",1)
						elseif ((gamble_2 > 10) and (gamble_2 < 13)) then
							getitem("Full_Plate_Armor_",1)
						elseif ((gamble_2 > 12) and (gamble_2 < 15)) then
							getitem("Tights_",1)
						elseif ((gamble_2 > 14) and (gamble_2 < 17)) then
							getitem("Full_Plate_Armor_",1)
						elseif ((gamble_2 > 16) and (gamble_2 < 19)) then
							getitem("Mink_Coat",1)
						elseif ((gamble_2 > 18) and (gamble_2 < 21)) then
							getitem("Formal_Suit",1)
						elseif ((gamble_2 > 20) and (gamble_2 < 23)) then
							getitem("Glittering_Clothes",1)
						elseif ((gamble_2 > 22) and (gamble_2 < 25)) then
							getitem("Flame_Sprits_Armor",1)
						elseif ((gamble_2 > 24) and (gamble_2 < 27)) then
							getitem("Water_Sprits_Armor",1)
						elseif ((gamble_2 > 26) and (gamble_2 < 29)) then
							getitem("Wind_Sprits_Armor",1)
						elseif ((gamble_2 > 28) and (gamble_2 < 31)) then
							getitem("Earth_Sprits_Armor",1)
						end
					elseif ((gamble_1 > 0) and (gamble_1 < 51)) then
						getitem("Cotton_Shirt",1)
					elseif ((gamble_1 > 50) and (gamble_1 < 101)) then
						getitem("Cotton_Shirt_",1)
					elseif ((gamble_1 > 100) and (gamble_1 < 151)) then
						getitem("Leather_Jacket",1)
					elseif ((gamble_1 > 150) and (gamble_1 < 201)) then
						getitem("Leather_Jacket_",1)
					elseif ((gamble_1 > 200) and (gamble_1 < 251)) then
						getitem("Adventure_Suit",1)
					elseif ((gamble_1 > 250) and (gamble_1 < 300)) then
						getitem("Cotton_Shirt",1)
					elseif ((gamble_1 > 301) and (gamble_1 < 351)) then
						getitem("Mantle",1)
					elseif ((gamble_1 > 350) and (gamble_1 < 401)) then
						getitem("Coat",1)
					elseif ((gamble_1 > 400) and (gamble_1 < 402)) then
						getitem("Silk_Robe_",1)
					elseif ((gamble_1 > 401) and (gamble_1 < 403)) then
						getitem("Coat_",1)
					elseif ((gamble_1 > 402) and (gamble_1 < 411)) then
						getitem("Adventurere's_Suit_",1)
					elseif ((gamble_1 > 410) and (gamble_1 < 416)) then
						getitem("Mantle_",1)
					elseif ((gamble_1 > 415) and (gamble_1 < 421)) then
						getitem("Padded_Armor_",1)
					elseif ((gamble_1 > 420) and (gamble_1 < 426)) then
						getitem("Ninja_Suit",1)
					elseif ((gamble_1 > 425) and (gamble_1 < 431)) then
						getitem("Full_Plate_Armor",1)
					elseif ((gamble_1 > 430) and (gamble_1 < 436)) then
						getitem("Saint_Robe",1)
					elseif ((gamble_1 > 435) and (gamble_1 < 441)) then
						getitem("Plate_Armor",1)
					elseif ((gamble_1 > 440) and (gamble_1 < 446)) then
						getitem("Tights",1)
					elseif ((gamble_1 > 445) and (gamble_1 < 451)) then
						getitem("Chain_Mail",1)
					elseif ((gamble_1 > 450) and (gamble_1 < 456)) then
						getitem("Thief_Clothes",1)
					elseif ((gamble_1 > 455) and (gamble_1 < 461)) then
						getitem("Scapulare_",1)
					elseif ((gamble_1 > 460) and (gamble_1 < 466)) then
						getitem("Wooden_Mail_",1)
					elseif ((gamble_1 > 465) and (gamble_1 < 471)) then
						getitem("Novice_Breast",1)
					elseif ((gamble_1 > 470) and (gamble_1 < 476)) then
						getitem("Padded_Armor",1)
					elseif ((gamble_1 > 475) and (gamble_1 < 481)) then
						getitem("G_Strings",1)
					elseif ((gamble_1 > 480) and (gamble_1 < 486)) then
						getitem("Wooden_Mail",1)
					elseif ((gamble_1 > 485) and (gamble_1 < 491)) then
						getitem("Silk_Robe",1)
					elseif ((gamble_1 > 490) and (gamble_1 < 501)) then
						getitem("Scapulare",1)
					end
				elseif mresultb == 3 then
					dropitem("Crystal_Jewel__",1)
					local gamble_1 = math.random(1,500)
					if ((gamble_1 > 200) and (gamble_1 < 204)) then
						local gamble_2 = math.random(1,16)
						if ((gamble_2 > 0) and (gamble_2 < 3)) then
							getitem("Manteau_",1)
						elseif ((gamble_2 > 2) and (gamble_2 < 5)) then
							getitem("Muffler_",1)
						elseif ((gamble_2 > 4) and (gamble_2 < 8)) then
							getitem("Ragamuffin_Cape",1)
						elseif ((gamble_2 > 7) and (gamble_2 < 11)) then
							getitem("Cape_Of_Ancient_Lord",1)
						elseif (gamble_2 == 11) then
							getitem("Celestial_Robe",1)
						elseif (gamble_2 == 12) then
							getitem("Pauldron",1)
						elseif ((gamble_2 > 12) and (gamble_2 < 15)) then
							getitem("Undershirt_",1)
						elseif (gamble_2 == 15) then
							getitem("Clack_Of_Servival",1)
						elseif (gamble_2 == 16) then
							getitem("Wing_Of_Eagle",1)
						end
					elseif ((gamble_1 > 0) and (gamble_1 < 101)) then
						getitem("Muffler",1)
					elseif ((gamble_1 > 100) and (gamble_1 < 201)) then
						getitem("Manteau",1)
					elseif ((gamble_1 > 203) and (gamble_1 < 451)) then
						getitem("Hood",1)
					elseif ((gamble_1 > 450) and (gamble_1 < 501)) then
						getitem("Hood_",1)
					end
				elseif mresultb == 4 then
					dropitem("Crystal_Jewel__",1)
					local gamble_1 = math.random(1,1000)
					if ((gamble_1 > 299) and (gamble_1 < 305)) then
						local gamble_2 = math.random(1,93)
						if ((gamble_2 > 0) and (gamble_2 < 3)) then
							getitem("Holy_Bonnet",1)
						elseif ((gamble_2 > 2) and (gamble_2 < 5)) then
							getitem("Apple_Of_Archer",1)
						elseif ((gamble_2 > 4) and (gamble_2 < 7)) then
							getitem("Satanic_Chain",1)
						elseif ((gamble_2 > 6) and (gamble_2 < 9)) then
							getitem("Magician_Hat",1)
						elseif ((gamble_2 > 8) and (gamble_2 < 11)) then
							getitem("Circlet_",1)
						elseif ((gamble_2 > 10) and (gamble_2 < 13)) then
							getitem("Gemmed_Sallet_",1)
						elseif ((gamble_2 > 12) and (gamble_2 < 15)) then
							getitem("Biretta_",1)
						elseif ((gamble_2 > 14) and (gamble_2 < 17)) then
							getitem("Wedding_Veil",1)
						elseif ((gamble_2 > 16) and (gamble_2 < 19)) then
							getitem("Golden_Gear",1)
						elseif ((gamble_2 > 18) and (gamble_2 < 21)) then
							getitem("Prontera_Army_Cap",1)
						elseif ((gamble_2 > 20) and (gamble_2 < 23)) then
							getitem("Pirate_Bandana",1)
						elseif ((gamble_2 > 22) and (gamble_2 < 25)) then
							getitem("Ph.D_Hat",1)
						elseif ((gamble_2 > 24) and (gamble_2 < 27)) then
							getitem("Big_Sis'_Ribbon",1)
						elseif ((gamble_2 > 26) and (gamble_2 < 29)) then
							getitem("Cat_Hairband",1)
						elseif ((gamble_2 > 28) and (gamble_2 < 31)) then
							getitem("Western_Grace",1)
						elseif ((gamble_2 > 30) and (gamble_2 < 33)) then
							getitem("Turban_",1)
						elseif ((gamble_2 > 32) and (gamble_2 < 35)) then
							getitem("Oldman's_Romance",1)
						elseif ((gamble_2 > 34) and (gamble_2 < 37)) then
							getitem("Sweet_Gents",1)
						elseif ((gamble_2 > 36) and (gamble_2 < 39)) then
							getitem("Joker_Jester",1)
						elseif ((gamble_2 > 38) and (gamble_2 < 41)) then
							getitem("Goggle_",1)
						elseif ((gamble_2 > 40) and (gamble_2 < 43)) then
							getitem("Bone_Helm",1)
						elseif ((gamble_2 > 42) and (gamble_2 < 45)) then
							getitem("Panda_Cap",1)
						elseif ((gamble_2 > 44) and (gamble_2 < 47)) then
							getitem("Poring_Hat",1)
						elseif ((gamble_2 > 46) and (gamble_2 < 49)) then
							getitem("Fillet",1)
						elseif ((gamble_2 > 48) and (gamble_2 < 51)) then
							getitem("Nurse_Cap",1)
						elseif ((gamble_2 > 50) and (gamble_2 < 53)) then
							getitem("Antenna",1)
						elseif ((gamble_2 > 52) and (gamble_2 < 55)) then
							getitem("Funeral_Costume",1)
						elseif ((gamble_2 > 54) and (gamble_2 < 57)) then
							getitem("Indian_Hair_Piece",1)
						elseif ((gamble_2 > 56) and (gamble_2 < 60)) then
							getitem("Mini_Propeller",1)
						elseif ((gamble_2 > 59) and (gamble_2 < 62)) then
							getitem("Puppy_Love",1)
						elseif ((gamble_2 > 61) and (gamble_2 < 63)) then
							getitem("Coronet",1)
						elseif ((gamble_2 > 62) and (gamble_2 < 65)) then
							getitem("Helm_",1)
						elseif (gamble_2 == 65) then
							getitem("Sharp_Gear",1)
						elseif (gamble_2 == 66) then
							getitem("Ghost_Bandana",1)
						elseif (gamble_2 == 67) then
							getitem("Corsair",1)
						elseif (gamble_2 == 68) then
							getitem("Angelic_Chain",1)
						elseif (gamble_2 == 69) then
							getitem("Loard_Circlet",1)
						elseif (gamble_2 == 70) then
							getitem("Horn_Of_Succubus",1)
						elseif (gamble_2 == 71) then
							getitem("Crown",1)
						elseif (gamble_2 == 72) then
							getitem("Tiara",1)
						elseif (gamble_2 == 73) then
							getitem("Magestic_Goat",1)
						elseif (gamble_2 == 74) then
							getitem("Blue_Coif_",1)
						elseif (gamble_2 == 75) then
							getitem("Inccubus_Horn",1)
						elseif (gamble_2 == 76) then
							getitem("Gemmed_Crown",1)
						elseif ((gamble_2 > 76) and (gamble_2 < 80)) then
							getitem("Ear_Of_Puppy",1)
						elseif ((gamble_2 > 79) and (gamble_2 < 83)) then
							getitem("Fedora_",1)
						elseif ((gamble_2 > 82) and (gamble_2 < 86)) then
							getitem("Galapago_Cap",1)
						elseif ((gamble_2 > 85) and (gamble_2 < 89)) then
							getitem("Banana_Hat",1)
						elseif ((gamble_2 > 88) and (gamble_2 < 92)) then
							getitem("Super_Novice_Hat_",1)
						elseif ((gamble_2 > 91) and (gamble_2 < 94)) then
							getitem("Marionette_Doll",1)
						end
					elseif ((gamble_1 > 0) and (gamble_1 < 101)) then
						getitem("Cap",1)
					elseif ((gamble_1 > 100) and (gamble_1 < 201)) then
						getitem("Bandana",1)
					elseif ((gamble_1 > 200) and (gamble_1 < 300)) then
						getitem("Ribbon_",1)
					elseif ((gamble_1 > 303) and (gamble_1 < 401)) then
						getitem("Hat",1)
					elseif ((gamble_1 > 400) and (gamble_1 < 501)) then
						getitem("Circlet",1)
					elseif ((gamble_1 > 500) and (gamble_1 < 601)) then
						getitem("Biretta",1)
					elseif ((gamble_1 > 600) and (gamble_1 < 701)) then
						getitem("Gemmed_Sallet",1)
					elseif ((gamble_1 > 700) and (gamble_1 < 801)) then
						getitem("Goggle",1)
					elseif ((gamble_1 > 800) and (gamble_1 < 901)) then
						getitem("Turban",1)
					elseif ((gamble_1 > 900) and (gamble_1 < 906)) then
						getitem("Helm",1)
					elseif ((gamble_1 > 905) and (gamble_1 < 911)) then
						getitem("Star_Sparkling",1)
					elseif ((gamble_1 > 910) and (gamble_1 < 916)) then
						getitem("Cap_",1)
					elseif ((gamble_1 > 915) and (gamble_1 < 921)) then
						getitem("Hat_",1)
					elseif ((gamble_1 > 920) and (gamble_1 < 926)) then
						getitem("Viking_Helm",1)
					elseif ((gamble_1 > 925) and (gamble_1 < 931)) then
						getitem("Santa's_Hat",1)
					elseif ((gamble_1 > 930) and (gamble_1 < 936)) then
						getitem("Red_Bandana",1)
					elseif ((gamble_1 > 935) and (gamble_1 < 941)) then
						getitem("Egg_Shell",1)
					elseif ((gamble_1 > 940) and (gamble_1 < 946)) then
						getitem("Flower_Hairband",1)
					elseif ((gamble_1 > 945) and (gamble_1 < 951)) then
						getitem("Blue_Coif",1)
					elseif ((gamble_1 > 950) and (gamble_1 < 1001)) then
						getitem("Cap",1)
					end
				elseif mresultb == 5 then
					dropitem("Crystal_Jewel__",1)
					local gamble_1 = math.random(1,500)
					if ((gamble_1 > 299) and (gamble_1 < 303)) then
						local gamble_2 = math.random(1,10)
						if ((gamble_2 > 0) and (gamble_2 < 3)) then
							getitem("Boots_",1)
						elseif ((gamble_2 > 2) and (gamble_2 < 5)) then
							getitem("Grave_",1)
						elseif ((gamble_2 > 4) and (gamble_2 < 8)) then
							getitem("Shoes_",1)
						elseif ((gamble_2 > 7) and (gamble_2 < 11)) then
							getitem("Chrystal_Pumps",1)
						end
					elseif ((gamble_1 > 0) and (gamble_1 < 201)) then
						getitem("Sandals",1)
					elseif ((gamble_1 > 200) and (gamble_1 < 300)) then
						getitem("Cuffs",1)
					elseif ((gamble_1 > 302) and (gamble_1 < 351)) then
						getitem("Grave",1)
					elseif ((gamble_1 > 350) and (gamble_1 < 401)) then
						getitem("Shoes",1)
					elseif ((gamble_1 > 400) and (gamble_1 < 451)) then
						getitem("Boots",1)
					elseif ((gamble_1 > 450) and (gamble_1 < 476)) then
						getitem("Spiky_Heel",1)
					elseif ((gamble_1 > 475) and (gamble_1 < 501)) then
						getitem("Sandals_",1)
					end
				elseif mresultb == 6 then
					dropitem("Crystal_Jewel__",1)
					local gamble_1 = math.random(1,500)
					if ((gamble_1 > 200) and (gamble_1 < 205)) then
						local gamble_2 = math.random(1,10)
						if ((gamble_2 > 0) and (gamble_2 < 3)) then
							getitem("Buckler_",1)
						elseif ((gamble_2 > 2) and (gamble_2 < 5)) then
							getitem("Shield_",1)
						elseif ((gamble_2 > 4) and (gamble_2 < 7)) then
							getitem("Guard_",1)
						elseif ((gamble_2 > 6) and (gamble_2 < 9)) then
							getitem("Herald_Of_GOD",1)
						elseif ((gamble_2 > 8) and (gamble_2 < 11)) then
							getitem("Memorize_Book",1)
						end
					elseif ((gamble_1 > 0) and (gamble_1 < 201)) then
						getitem("Guard",1)
					elseif ((gamble_1 > 204) and (gamble_1 < 301)) then
						getitem("Buckler",1)
					elseif ((gamble_1 > 300) and (gamble_1 < 401)) then
						getitem("Mirror_Shield",1)
					elseif ((gamble_1 > 401) and (gamble_1 < 481)) then
						getitem("Shield",1)
					elseif ((gamble_1 > 480) and (gamble_1 < 501)) then
						getitem("Mirror_Shield_",1)
					end
				end
				dialog "[Kachua]"
				dialog "Ahhhhh~"
				dialog "Diamonds are"
				dialog "so beautiful."
				dialog "I want to have as"
				dialog "many of them as I can!"
				dialog "I must have more!"
				close()
			end
			close()
		else
			showimage("katsua03.bmp",2)
			dialog "[Kachua]"
			dialog "^666666*Piff*^000000"
			dialog "You don't have any"
			dialog "diamonds! Don't even"
			dialog "try to fool me!"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Kachua]"
		dialog "Yes, I know..."
		dialog "Even among everything"
		dialog "in my collections, nothing"
		dialog "compares to diamonds..."
		close()
	end
	close()
	showimage("katsua01.bmp",255)
	showimage("katsua02.bmp",255)
	showimage("katsua03.bmp",255)
end

npc("comodo","Devellin",SPRITE_4_F_01,204,148,7,0,0,"comodo_Devellin_204148")
function comodo_Devellin_204148()
	dialog "[Devellin]"
	dialog "It seems some traveller showed"
	dialog "a huge diamond to Kachua a while ago. Ever since then, all she's been talking about is diamonds and how much she wants them."
	wait()
	dialog "[Devellin]"
	dialog "She's been getting pretty obsessive about it, which scares me. It seems she's more than willing to sacrifice anything she owns for a diamond."
	wait()
	dialog "[Devellin]"
	dialog "She's the type of person who'll do anything to get what she wants. I'm worried that she might give away something far more valuable than a diamond in exchange..."
	close()
end

npc("comodo","Suspicious Guy",SPRITE_2_M_THIEFMASTER,210,154,2,0,0,"comodo_Suspicious_Guy_210154")
function comodo_Suspicious_Guy_210154()
	if ((getvar(VAR_JOB) == ASSASSIN) or (getvar(VAR_JOB) == ROGUE) or (getvar(VAR_JOB) == THIEF)) then
		dialog "[Cain]"
		dialog "Heeeey..."
		dialog "It seems we share the same line of work, you and me. Heh heh, lemme give you a hot tip."
		wait()
		dialog "[Cain]"
		dialog "I've been charging other people for this information, but since, shall we say, we work in the same professional field, I don't have the heart to take your zeny."
		wait()
		dialog "[Cain]"
		dialog "You see that lady over there?"
		dialog "She's just totally in love with diamonds. And from what my sources tell me, she's loaded. Tons and tons of valuables."
		wait()
		dialog "[Cain]"
		dialog "I'm talkin' rare items."
		dialog "I took the liberty of sneaking a peek at what she owns, and saw she's got a helmet with goat horns and even a crown! She's so rich it's ridiculous!"
		wait()
		dialog "[Cain]"
		dialog "The buzz that's been going around is that she's got a cache of rare equipment and weapons too! So whaddya say? Wanna be partners in crime and rob her house?"
		wait()
		local mresulta = menu("No, thanks.","Sweet, I'm in!")
		if mresulta == 1 then
			dialog "[Cain]"
			dialog "Wha...?"
			dialog "C'mon! I thought pilfering was something you do! Aw well, I'm gonna do it, but stay hushed on this, got it?"
			close()
		elseif mresulta == 2 then
			dialog "[Cain]"
			dialog "Ha ha ha!"
			dialog "...^660000Dork^000000!"
			dialog "I'm just jivin'"
			dialog "sp fuggedabout it!"
			wait()
			dialog "[Cain]"
			dialog "Ah right. Supposedly, there's a mountain where tons of diamonds are buried. A pal o' mine says there's a mine near the mountain too, so I guess if you went to the mine, you'd find Diamonds."
			wait()
			dialog "[Cain]"
			dialog "I guess it can't hurt to gather some Diamonds there and try to exchange them for whatever the old lady's got. Take care, pal~"
			close()
		end
		close()
	else
		dialog "[Cain]"
		dialog "Hey..."
		dialog "I got a hot tip for you."
		dialog "It'll just cost you 500 zeny"
		dialog "and trust me, it's worth it."
		dialog "So whaddya say...?"
		wait()
		local mresulta = menu("Alright.","No, thanks.")
		if mresulta == 1 then
			if (getvar(VAR_MONEY) > 499) then
				dialog "[Cain]"
				dialog "You see that lady over there? She's just totally in love with diamonds. And from what my sources tell me, she's loaded. Tons and tons of valuables."
				wait()
				dialog "[Cain]"
				dialog "I'm talkin' rare items."
				dialog "I took the liberty of sneaking a peek at what she owns, and saw she's got a helmet with goat horns and even a crown! She's so rich it's ridiculous!"
				wait()
				dialog "[Cain]"
				dialog "There's a chance that rare equipment and weapons might be yours! She'll give anything for a 3 carat diamond. So if you have any of those, you might as well see her."
				wait()
				dialog "[Cain]"
				dialog "Ah right. Supposedly, there's a mountain where tons of diamonds"
				dialog "are buried. A pal o' mine says there's a mine near the mountain too, so I guess if you went to the mine, you'd find Diamonds."
				wait()
				dialog "[Cain]"
				dialog "I guess it can't hurt to gather some Diamonds there and try to exchange them for whatever the old lady's got. Take care, pal~"
				close()
			else
				dialog "[Cain]"
				dialog "What the hell?!"
				dialog "Don't you have any money? Didn't I say 500 zeny? Hey man, info like this doesn't come cheap!"
				close()
			end
		elseif mresulta == 2 then
			dialog "[Cain]"
			dialog "Hey hey!"
			dialog "What are you, a cheapskate? You understand that everything has its price and this information is so worth it. C'mon, you can't pass this up, can you?"
			close()
		end
		close()
	end
end

npc("mjolnir_02","Blacksmith Miner",SPRITE_4_F_JOB_BLACKSMITH,85,362,3,0,0,"mjolnir_02_Blacksmith_Miner_85362")
function mjolnir_02_Blacksmith_Miner_85362()
	-- item check
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "^3355FFWait a second! Right now, you're carrying too many items with you. Please come back after putting some of your things into Kafra Storage.^000000"
		close()
		return
	end
	-- check end
	local sell
	local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
	local item_weight
	dialog "[Dwayne]"
	dialog "Wahahahaha~"
	dialog "I've dug up a fortune!"
	wait()
	dialog "[Dwayne]"
	dialog "Diamonds! Hundreds and"
	dialog "thousands of Diamonds,"
	dialog "all of them mine!"
	dialog "I'm rich!"
	Emotion("Blacksmith Miner","ET_SMILE")
	wait()
	local mresulta = menu("I want to buy some.","Congratulations.")
	if mresulta == 1 then
		dialog "[Dwayne]"
		dialog "Ah, you have an"
		dialog "eye for valuables!"
		dialog "Sure, sure why not!"
		dialog "I'll give you a discount, too!"
		dialog "55,000 Zeny for a diamond,"
		dialog "how does that sound?"
		wait()
		dialog "[Dwayne]"
		dialog "How many"
		dialog "diamonds do you need?"
		dialog "If you change your mind,"
		dialog "please enter '0' to cancel."
		wait()
		while(1) do
			dlgwrite(1,500)
			if input == 0 then
				dialog "[Dwayne]"
				dialog "Alright, you've"
				dialog "canceled the trade."
				dialog "Take care!"
				close()
				return
			elseif error then
				dialog "[Dwayne]"
				dialog "The maximum"
				dialog "amount is 500."
				dialog "Please enter 500 or less."
				wait()
			else
				break
			end
		end
		sell("=","input","*",55000)
		item_weight("=","input","*",100)
		if (getvar(VAR_MONEY) < sell) then
			dialog "[Dwayne]"
			dialog "Errr..."
			dialog "I'm sorry, but you"
			dialog "do not have enough money."
			dialog "I'll be losing money if"
			dialog "I sell them at that price."
			close()
			return
		end
		if (now_weight < item_weight) then
			dialog "[Dwayne]"
			dialog "Errr..."
			dialog "You're carrying too many items."
			dialog "I don't think give you anything if there's no room in your inventory. Why don't you put some of your stuff into Kafra Storage?"
			close()
			return
		end
		dropgold (sell)
		getitem("Crystal_Jewel__","input")
		dialog "[Dwayne]"
		dialog "Thank you for"
		dialog "buying my diamonds!"
		dialog "You're welcome to"
		dialog "come back anytime."
		close()
	elseif mresulta == 2 then
		dialog "[Dwayne]"
		dialog "Haha, thank you~"
		dialog "If by any chance"
		dialog "you need a diamond,"
		dialog "please drop by."
		dialog "I'll sell them to"
		dialog "you at a cheap price."
		close()
	end
	close()
end
