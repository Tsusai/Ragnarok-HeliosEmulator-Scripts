--  ____________________________________________________________
-- /                                                            \
-- |  ##       ##  ########  #########     ##########   ######   |
-- |   ##     ##  ##    ##  ##     ##     ##      ##   ##    ##  |
-- |    ##   ##  ##    ##  ##     ##     ##      ##   ##         |
-- |     ## ##  ##    ##  ##     ##     ##      ##   ##          |
-- |      ###  ########  #########     ##      ##   #######      |
-- |      ##  ##    ##  ##    ##      ##      ##        ##       |
-- |     ##  ##    ##  ##      ##    ##      ##  ##    ##        |
-- |    ##  ##    ##  ##        ##  ##########    ######         |
-- |   Yaros Package                                             |
-- |-------------------------------------------------------------|
-- | Current Version: 1.0      | Episode 10.3 File.              |
-- |-------------------------------------------------------------|
-- | 01/05/2007 : Added 1st Version. [Muad_Dib]                  |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |                                                             |
-- |                                                             |
-- \____________________________________________________________/

npc("prontera","Bulletin Board#pron",SPRITE_2_BULLETIN_BOARD,148,49,0,0,0,"prontera_Bulletin_Board#pron_14849")
function prontera_Bulletin_Board#pron_14849()
	dialog "[Prontera: Capital of the]"
	dialog "[Rune-Midgarts Kingdom]"
	dialog "Welcome to Prontera, the capital city of Rune-Midgarts."
	wait()
	dialog "[Prontera: Capital of the]"
	dialog "[Rune-Midgarts Kingdom]"
	dialog "Prontera is located in the center of the Rune-Midgard continent and is very well-known as a city of flourishing commerce."
	wait()
	dialog "[Prontera: Capital of the]"
	dialog "[Rune-Midgarts Kingdom]"
	dialog "In this city, you can find the Sanctuary, where people can change their jobs to Acolyte and Priest."
	wait()
	dialog "[Prontera: Capital of the]"
	dialog "[Rune-Midgarts Kingdom]"
	dialog "You can also find the Castle, where people can change their jobs to Crusader."
	wait()
	dialog "[Prontera: Capital of the]"
	dialog "[Rune-Midgarts Kingdom]"
	dialog "Please feel free to explore the streets of Prontera, as there are various tourist attractions within the city."
	wait()
	dialog "[Prontera: Capital of the]"
	dialog "[Rune-Midgarts Kingdom]"
	dialog "When you need to upgrade your weapons and armors, please visit the building in the 5 o'clock direction from the fountain in the center of Prontera."
	wait()
	dialog "[Prontera: Capital of the]"
	dialog "[Rune-Midgarts Kingdom]"
	dialog "From Prontera, ^666699Izlude^000000 is located to the Southeast, ^006600Payon^000000 to the far South, ^993300Geffen^000000 to the far West, and ^003366Al De Baran^000000 to the far North. Enjoy your time in Prontera."
	close()
end

npc("geffen","Bulletin Board#geffen",SPRITE_2_BULLETIN_BOARD,124,65,0,0,0,"geffen_Bulletin_Board#geffen_12465")
function geffen_Bulletin_Board#geffen_12465()
	dialog "[Geffen: The City of Magic]"
	dialog "Welcome to Geffen, the City of Magic. Geffen is well known for its various legends related to magic."
	wait()
	dialog "[Geffen: The City of Magic]"
	dialog "Points of interest in the city include the Forge, where people can change their jobs to Blacksmith, the Magic Academy for aspiring Mages, and the Geffen Tower for the Wizard job change."
	wait()
	dialog "[Geffen: The City of Magic]"
	dialog "Underneath the Geffen Tower lies a dungeon in which dreadful monsters are rumored to appear."
	wait()
	dialog "[Geffen: The City of Magic]"
	dialog "It is said that the lost city of Geffenia, a place of elven lore and legend, is hidden within the depths of this dungeon."
	wait()
	dialog "[Geffen: The City of Magic]"
	dialog "From Geffen, the ^999900Orc Village^000000 is located to the South, ^336666Glast Heim^000000 to the West, ^3355FFProntera^000000 to the far East, and ^CC3300Mt. Mjolnir^000000 to the North. Enjoy your stay here in Geffen."
	close()
end

npc("gef_tower","Bulletin Board#gefdun",SPRITE_2_BULLETIN_BOARD,55,142,0,0,0,"gef_tower_Bulletin_Board#gefdun_55142")
function gef_tower_Bulletin_Board#gefdun_55142()
	dialog "[Geffen Dungeon]"
	dialog "^CC0000Caution!^000000"
	dialog "Geffen Dungeon consists"
	dialog "of 3 levels that are too dangerous for new adventurers."
	wait()
	dialog "[Geffen Dungeon]"
	dialog "Monsters commonly found in the first level of this dungeon include Hunter Flies, Nightmares and Jakks. Nightmares and Jakks only appear in this dungeon."
	wait()
	dialog "[Geffen Dungeon]"
	dialog "In the second level of this dungeon, you may enounter Ogretooth, a creature of one of the doomed swords, and ^990000Dracula^000000, the nefarious boss monster, without warning."
	wait()
	dialog "[Geffen Dungeon]"
	dialog "On the 3rd level, ^990000Doppelganger^000000,"
	dialog "one of the strongest boss monsters, will also manifest at certain times."
	close()
end

npc("payon","Bulletin Board#pay",SPRITE_2_BULLETIN_BOARD,178,108,0,0,0,"payon_Bulletin_Board#pay_178108")
function payon_Bulletin_Board#pay_178108()
	dialog "[Payon: The Mountain City]"
	dialog "Welcome to Payon, the mountain city. Payon has recently been renovated, so we hope you enjoy the clean, nice streets and buildings."
	wait()
	dialog "[Payon: The Mountain City]"
	dialog "Payon is famous for being a city of archery. For a long time, its citizens have made their living by hunting with bows and arrows. Bow crafting and training have also been developed here in Payon."
	wait()
	dialog "[Payon: The Mountain City]"
	dialog "Payon has various armor and weapons, especially for the Archer class. If you wish to become an Archer, it would be best to become familiar with this city."
	wait()
	dialog "[Payon: The Mountain City]"
	dialog "Payon Palace is located in the center of the city. The Archer Village is located in the Northern part of the Payon. There, people can change their jobs to Archer."
	wait()
	dialog "[Payon: The Mountain City]"
	dialog "Near the Archer Village, you can find the ^660000Payon Cave^000000 where Undead monsters reside."
	wait()
	dialog "[Payon: The Mountain City]"
	dialog "From Payon, ^003399Alberta^000000 is located to the Southeast, and ^996633Morroc^000000 is to the West. ^666699Izlude^000000 and ^3355FFProntera^000000 are North of Payon. Enjoy your travels."
	close()
end

npc("pay_arche","Bulletin Board#archervil",SPRITE_2_BULLETIN_BOARD,79,31,0,0,0,"pay_arche_Bulletin_Board#archervil_7931")
function pay_arche_Bulletin_Board#archervil_7931()
	dialog "[Archer Village]"
	dialog "Welcome to the Payon Archer Village where Novices can change their jobs to Archer."
	wait()
	dialog "[Archer Village]"
	dialog "The Archer Village provides Bows and Tights that are available for purchase. These are necessities for new Archers and Hunters."
	wait()
	dialog "[Archer Village]"
	dialog "If you wish to become an Archer, it is suggested to become familiar with this village. For aspiring Hunters, the Hunter Guild is located in a field that is East of Payon."
	close()
end

npc("pay_arche","Bulletin Board#paydun",SPRITE_2_BULLETIN_BOARD,39,134,0,0,0,"pay_arche_Bulletin_Board#paydun_39134")
function pay_arche_Bulletin_Board#paydun_39134()
	dialog "[Payon Cave]"
	dialog "^CC0000Caution!^000000"
	dialog "Payon Cave consists of 5 levels full of Undead and Demon monsters. Beware of swarms of Hydra in the third and fourth levels."
	wait()
	dialog "[Payon Cave]"
	dialog "In the fifth level, there is a pretty, yet dreadful boss monster known as ^990000Moonlight^000000 that spawns at certain times. Approach with extreme caution."
	close()
end

npc("alberta","Bulletin Board#alberta",SPRITE_2_BULLETIN_BOARD,111,59,0,0,0,"alberta_Bulletin_Board#alberta_11159")
function alberta_Bulletin_Board#alberta_11159()
	dialog "[Alberta: The Port City]"
	dialog "Welcome to Alberta, the Port City."
	wait()
	dialog "[Alberta: The Port City]"
	dialog "In Alberta, you can find the Merchant Guild where adventurers can change their job to Merchant."
	wait()
	dialog "[Alberta: The Port City]"
	dialog "As a city that provides dependable sea travel, Alberta has provided the means for the foreign commerce that has brought prosperity to the Rune-Midgarts Kingdom."
	wait()
	dialog "[Alberta: The Port City]"
	dialog "On the docks, you may find representatives from foreign lands that will guide tourists to their countries."
	wait()
	dialog "[Alberta: The Port City]"
	dialog "Among seafarers, there is a rumor of a place known as ^009966Turtle Island^000000. Intrepid adventurers may seek to investigate this rumor and learn the truth for themselves."
	wait()
	dialog "[Alberta: The Port City]"
	dialog "There is also a sunken ship that has been discovered near Alberta, and it has become a popular area for adventurers to explore."
	wait()
	dialog "[Alberta: The Port City]"
	dialog "From Alberta, ^006600Payon^000000 is located to the Northwest. You can board passenger ships at the dock to travel to ^666699Izlude^000000. Enjoy your travels."
	close()
end

npc("alb2trea","Bulletin Board#sunken",SPRITE_2_BULLETIN_BOARD,75,101,0,0,0,"alb2trea_Bulletin_Board#sunken_75101")
function alb2trea_Bulletin_Board#sunken_75101()
	dialog "[Island Near Sunken Ship]"
	dialog "^CC0000Caution!^000000"
	dialog "The Sunken Ship consists of"
	dialog "2 levels, and is a dwelling place for dangerous monsters. It is strongly recommended that Novices do not venture there."
	wait()
	dialog "[Island Near Sunken Ship]"
	dialog "In the second level, the boss monster ^990000Drake^000000, who was once"
	dialog "captain of this ship, will appear at certain times. Terminate with extreme prejudice."
	wait()
	dialog "[Island Near Sunken Ship]"
	dialog "The rooms within the ship are very narrow and small, so be careful of being cornered by monsters."
	wait()
	dialog "[Island Near Sunken Ship]"
	dialog "Beware of the many flying ghosts that will attack passerby without warning. You may encounter ^333333Ghostring^000000, a mini-boss that spawns with a few minions,"
	dialog "among these ghosts."
	close()
end

npc("aldebaran","Bulletin Board#alde",SPRITE_2_BULLETIN_BOARD,146,106,0,0,0,"aldebaran_Bulletin_Board#alde_146106")
function aldebaran_Bulletin_Board#alde_146106()
	dialog "[Al De Baran: The Border City]"
	dialog "Welcome to Al De Baran, the border city of the Rune-Midgarts Kingdom. Al De Baran's beautiful canals and majestic Clock Tower are a source of pride for its citizens."
	wait()
	dialog "[Al De Baran: The Border City]"
	dialog "Adventurers can explore the Clock Tower located in the city's center. Other notable places are the Kafra Corporation Headquarters, and the Alchemist Guild which provides the Alchemist job change."
	wait()
	dialog "[Al De Baran: The Border City]"
	dialog "There is a fully trained Santa Claus somewhere in Al De Baran who can send you to the magical town of ^0033CCLutie^000000. If you're interested in seeing it for yourself, you must seek Santa Claus."
	wait()
	dialog "[Al De Baran: The Border City]"
	dialog "From this city, ^0099CCJuno^000000 is located to the North, and ^3355FFProntera^000000 is located to the South."
	close()
end

npc("xmas_fild01","Bulletin Board#lutie",SPRITE_2_BULLETIN_BOARD,75,80,0,0,0,"xmas_fild01_Bulletin_Board#lutie_7580")
function xmas_fild01_Bulletin_Board#lutie_7580()
	dialog "[Lutie: The Winter Town]"
	dialog "Welcome to Lutie, the town of year round snowfall. This town's main industry... is toy manufacturing!"
	wait()
	dialog "[Lutie: The Winter Town]"
	dialog "Don't forget to visit Lutie during the Christmas season. We always have joyous events to celebrate the Holidays! Hooray~!"
	wait()
	dialog "[Lutie: The Winter Town]"
	dialog "Brave adventurers can explore the ^660000Toy Factory^000000 dungeon located North of Lutie. Just be careful of Stormy Knight and Hatii, boss monsters that live in the Toy Factory. Merry Christmas~!"
	close()
end

npc("xmas","Bulletin Board#toy",SPRITE_2_BULLETIN_BOARD,147,311,0,0,0,"xmas_Bulletin_Board#toy_147311")
function xmas_Bulletin_Board#toy_147311()
	dialog "[Toy Factory]"
	dialog "^CC0000Caution!^000000"
	dialog "The Toy Factory is comprised of"
	dialog "2 levels. This is the only place where you can fight with Myst Cases, Cruisers and Cookies."
	wait()
	dialog "[Toy Factory]"
	dialog "This dungeon is not too difficult for newer adventurers, but there are 3 dangerous monsters to be wary of. If you are unprepared, steer clear of the following monsters."
	wait()
	dialog "[Toy Factory]"
	dialog "In the first level, you may encounter the mighty Angeling. Within the second level roams the boss monsters ^990000Stormy Knight^000000 and ^990000Hatii^000000."
	close()
end

npc("comodo","Bulletin Board#comodo",SPRITE_2_BULLETIN_BOARD,210,148,0,0,0,"comodo_Bulletin_Board#comodo_210148")
function comodo_Bulletin_Board#comodo_210148()
	dialog "[Comodo: The Beach City]"
	dialog "Welcome! This town of Comodo is surrounded by many ancient relics from a forgotten era."
	wait()
	dialog "[Comodo: The Beach City]"
	dialog "Only in Comodo can you find the Dancer Guild and Bard Guild which provide the opportunity for adventurers to change their jobs to Dancers and Bards."
	wait()
	dialog "[Comodo: The Beach City]"
	dialog "You can also visit the Casino, which is popular as a tourist attraction and place to lounge."
	wait()
	dialog "[Comodo: The Beach City]"
	dialog "You can buy Berserk Potions, a special product of Comodo, from the Tool Dealers in the area."
	wait()
	dialog "[Comodo: The Beach City]"
	dialog "There are 3 caves around Comodo that are inhabited by many different monsters. If you enter these areas, please be extremely careful."
	wait()
	dialog "[Comodo: The Beach City]"
	dialog "From Comodo, you can travel to ^996633Morroc^000000 through the East Cave and to ^990099Umbala^000000 through the North Cave."
	wait()
	dialog "[Comodo: The Beach City]"
	dialog "To the East, you can find ^FF3300Paros Lighthouse^000000, where the Rogue Guild is located. Enjoy the Comodo night life~"
	close()
end

npc("yuno","Bulletin Board#juno",SPRITE_2_BULLETIN_BOARD,153,113,0,0,0,"yuno_Bulletin_Board#juno_153113")
function yuno_Bulletin_Board#juno_153113()
	dialog "[Juno: Capital of]"
	dialog "[The Schubaltzwald Republic]"
	dialog "Welcome to Juno, the City of Sages. Juno is kept aloft in the air by the power of the Ymir Heart Pieces."
	wait()
	dialog "[Juno: Capital of]"
	dialog "[The Schubaltzwald Republic]"
	dialog "Those interested in becoming Sages should visit the Sage Castle for more information on the Sage job and its requirements."
	wait()
	dialog "[Juno: Capital of]"
	dialog "[The Schubaltzwald Republic]"
	dialog "Other notable places include the Monster Museum, Magic Academy"
	dialog "and the Juno Library."
	wait()
	dialog "[Juno: Capital of]"
	dialog "[The Schubaltzwald Republic]"
	dialog "Somewhere around Juno, there is information regarding secret access to the world where adventurers may be reborn with newfound strength."
	wait()
	dialog "[Juno: Capital of]"
	dialog "[The Schubaltzwald Republic]"
	dialog "To the Southeast of Juno lies ^660000Nogg Road^000000, the Lava Dungeon. Nogg Road is infamous for its aggressive creatures, so be careful."
	wait()
	dialog "[Juno: Capital of]"
	dialog "[The Schubaltzwald Republic]"
	dialog "From Juno, ^003366Al De Baran^000000, a city of the Rune-Midgarts Kingdom, is located to the South."
	close()
end

npc("yuno_fild03","Bulletin Board#noggroad",SPRITE_2_BULLETIN_BOARD,37,143,0,0,0,"yuno_fild03_Bulletin_Board#noggroad_37143")
function yuno_fild03_Bulletin_Board#noggroad_37143()
	dialog "[Lava Dungeon: Nogg Road]"
	dialog "^CC0000Caution!^000000"
	dialog "Nogg Road is filled with very dangerous creatures. Only well-experienced adventurers"
	dialog "should consider entering."
	wait()
	dialog "[Lava Dungeon: Nogg Road]"
	dialog "The main monsters of this dungeon are Kahos and Nightmare Terrors. Please exercise extreme caution."
	close()
end

npc("aldebaran","Bulletin Board#clocktower",SPRITE_2_BULLETIN_BOARD,136,133,0,0,0,"aldebaran_Bulletin_Board#clocktower_136133")
function aldebaran_Bulletin_Board#clocktower_136133()
	dialog "[Clock Tower]"
	dialog "^CC0000Caution!^000000"
	dialog "Only well-experienced adventurers should consider entering the Clock Tower. There are a total of 8 levels: 4 beneath the ground, and 4 above the earth."
	wait()
	dialog "[Clock Tower]"
	dialog "The main monsters of the Clock Tower are Clocks, Alarms and Bathories. Beware of the Clock Tower Keepers on patrol."
	wait()
	dialog "[Clock Tower]"
	dialog "The paths in the Clock Tower are winding and complicated, so be please careful and avoid getting lost."
	close()
end

npc("morocc","Bulletin Board#morroc",SPRITE_2_BULLETIN_BOARD,152,110,0,0,0,"morocc_Bulletin_Board#morroc_152110")
function morocc_Bulletin_Board#morroc_152110()
	dialog "[Morroc: The Frontier Town]"
	dialog "Welcome to Morroc, the City of the Desert. Morroc was built on an oasis, so this town can accomodate its many visitors and travelers."
	wait()
	dialog "[Morroc: The Frontier Town]"
	dialog "Morroc Castle lies in the center of this city. Please feel free to explore this town, and enjoy its unique atmosphere. However, watch your pockets and beware of Rogues and Thieves."
	wait()
	dialog "[Morroc: The Frontier Town]"
	dialog "From Morroc, the ^660000Pyramid Dungeon^000000 can be found to the Northwest, and the ^660000Sphinx Dungeon^000000 can be found to the West. To the Southeast, you may find ^660000Ant Hell^000000."
	wait()
	dialog "[Morroc: The Frontier Town]"
	dialog "The Assassin Guild is rumored to be located to the Southeast. When you head East from Morroc, and then North, you will arrive at ^3355FFProntera^000000."
	close()
end

npc("izlude","Bulletin Board#izlude",SPRITE_2_BULLETIN_BOARD,131,116,0,0,0,"izlude_Bulletin_Board#izlude_131116")
function izlude_Bulletin_Board#izlude_131116()
	dialog "[Izlude: The Satellite City]"
	dialog "Welcome to Izlude, the satellite of Prontera. Izlude was built to support Prontera's defense and to accomodate its burgeoning population."
	wait()
	dialog "[Izlude: The Satellite City]"
	dialog "Points of interest include the Swordman Association building which allows adventurers to change their job to Swordman, and the Battle Area that is North of Izlude."
	wait()
	dialog "[Izlude: The Satellite City]"
	dialog "At the docks, you may take a ship and travel to ^003399Alberta^000000 or ^660000Byalan Island^000000."
	wait()
	dialog "[Izlude: The Satellite City]"
	dialog "From Izlude, ^3355FFProntera^000000 is located to the Northwest, and ^006600Payon^000000 is located to the South. Enjoy your travels in the Rune-Midgarts Kingdom."
	close()
end

npc("umbala","Bulletin Board#umbala",SPRITE_2_BULLETIN_BOARD,137,94,0,0,0,"umbala_Bulletin_Board#umbala_13794")
function umbala_Bulletin_Board#umbala_13794()
	dialog "[Umbala: The Utan Village]"
	dialog "Welcome to Umbala,"
	dialog "the village of the Utan tribe."
	wait()
	dialog "[Umbala: The Utan Village]"
	dialog "Umbala, as well as the Utan tribe which speak their own unique language, was recently discovered by a few intrepid adventurers."
	wait()
	dialog "[Umbala: The Utan Village]"
	dialog "Scholars believe that Umbala may be the border between our world another realm. They believe the junction between the worlds might be the Yggdrasil tree to the North."
	wait()
	dialog "[Umbala: The Utan Village]"
	dialog "Points of interest include the Chief's House, the Shaman's House, and the Bungee Jump Area. Thousands of tourists visit the Bungee Jump Area to test their courage."
	wait()
	dialog "[Umbala: The Utan Village]"
	dialog "From Umbala, head South to go to ^FF0099Comodo^000000. Please enjoy your stay here in Umbala."
	close()
end

npc("niflheim","Bulletin Board#Niflheim",SPRITE_2_BULLETIN_BOARD,200,191,0,0,0,"niflheim_Bulletin_Board#Niflheim_200191")
function niflheim_Bulletin_Board#Niflheim_200191()
	dialog "[Niflheim: City of the Dead]"
	dialog "This is Niflheim."
	dialog "The City of the Dead."
	wait()
	dialog "[Niflheim: City of the Dead]"
	dialog "This is the realm where the dead reside. If you are one of the living who has traveled here through Yggdrasil, turn back."
	wait()
	dialog "[Niflheim: City of the Dead]"
	dialog "There are no save or respawn points, or warp points anywhere in Niflheim. This town is also crowded with bloodthirsty monsters."
	wait()
	dialog "[Niflheim: City of the Dead]"
	dialog "Your only hope of survival is to search this town for an escape. Seek for clues in the Witch's Castle, and from the friendlier locals that are becoming more and more scarce."
	wait()
	dialog "[Niflheim: City of the Dead]"
	dialog "And at all cost..."
	dialog "Try to avoid the"
	dialog "^990000Lord of the Dead^000000,"
	dialog "a dangerous boss monster that despises trespassers in its realm."
	wait()
	dialog "[City of the Dead, Niflheim]"
	dialog "To the West is the ^660000Valley of Gyoll^000000 where most of the powerful and fearful monsters live. Escape as soon as you can, especially if you're alone or inexperienced..."
	close()
end

npc("gef_fild10","Bulletin Board#orcdungeon",SPRITE_2_BULLETIN_BOARD,69,340,0,0,0,"gef_fild10_Bulletin_Board#orcdungeon_69340")
function gef_fild10_Bulletin_Board#orcdungeon_69340()
	dialog "[Orc Dungeon]"
	dialog "^CC0000Caution!^000000"
	dialog "The Orc Dungeon is comprised"
	dialog "of 2 levels. Although not very strong individually, the monsters here attack in groups. Be careful."
	wait()
	dialog "[Orc Dungeon]"
	dialog "Only in this dungeon will you be able to encounter Orc Skeletons, Zenorcs and Orc Zombies."
	wait()
	dialog "[Orc Dungeon]"
	dialog "Holy attribute weapons will greatly aid you in this place, since most of the monsters in this dungeon are Undead."
	wait()
	dialog "[Orc Dungeon]"
	dialog "If you don't have a Holy weapon and you're teamed with a Priest, the Priest's Aspersio spell would be of tremendous help."
	close()
end

npc("gef_fild09","Bulletin Board#orcvillage1",SPRITE_2_BOARD1,227,29,0,0,0,"gef_fild09_Bulletin_Board#orcvillage1_22729")
function gef_fild09_Bulletin_Board#orcvillage1_22729()
	dialog "[Orc Village]"
	dialog "^CC0000Caution!^000000"
	dialog "Beyond this point"
	dialog "lies the Orc Village."
	wait()
	dialog "[Orc Village]"
	dialog "Be aware that this village is teeming with dangerous Orcs, namely Orc Warriors, Orc Lades and High Orcs. Two boss monsters, ^990000Orc Hero^000000 and ^990000Orc Lord^000000 will also appear at certain times."
	close()
end

npc("gef_fild13","Bulletin Board#orcvillage2",SPRITE_2_BOARD1,202,31,0,0,0,"gef_fild13_Bulletin_Board#orcvillage2_20231")
function gef_fild13_Bulletin_Board#orcvillage2_20231()
	dialog "[Orc Village]"
	dialog "^CC0000Caution!^000000"
	dialog "Beyond this point"
	dialog "lies the Orc Village."
	wait()
	dialog "[Orc Village]"
	dialog "Be aware that this village is teeming with dangerous Orcs, namely Orc Warriors, Orc Lades and High Orcs. Two boss monsters, ^990000Orc Hero^000000 and ^990000Orc Lord^000000 will also appear at certain times."
	close()
end

npc("gef_fild13","Bulletin Board#kobold1",SPRITE_2_BOARD2,29,206,0,0,0,"gef_fild13_Bulletin_Board#kobold1_29206")
function gef_fild13_Bulletin_Board#kobold1_29206()
	dialog "[Kobold Village]"
	dialog "^CC0000Caution!^000000"
	dialog "Beyond this point lies the"
	dialog "Kobold Village. This territory is populated by aggressive Kobolds that will attack any human on sight."
	close()
end

npc("gef_fild08","Bulletin Board#kobold2",SPRITE_2_BOARD2,211,24,0,0,0,"gef_fild08_Bulletin_Board#kobold2_21124")
function gef_fild08_Bulletin_Board#kobold2_21124()
	dialog "[Kobold Village]"
	dialog "^CC0000Caution!^000000"
	dialog "Beyond this point lies"
	dialog "the Kobold Village. This territory is populated by aggressive Kobolds that will attack any human on sight."
	close()
end

npc("gef_fild10","Bulletin Board#goblin1",SPRITE_2_BOARD2,109,23,0,0,0,"gef_fild10_Bulletin_Board#goblin1_10923")
function gef_fild10_Bulletin_Board#goblin1_10923()
	dialog "[Goblin Village]"
	dialog "^CC0000Caution!^000000"
	dialog "You are headed towards the Goblin Village. Be aware that this area is populated with Goblins that are unfriendly towards humans."
	close()
end

npc("moc_fild15","Bulletin Board#anthell",SPRITE_2_BULLETIN_BOARD,267,264,0,0,0,"moc_fild15_Bulletin_Board#anthell_267264")
function moc_fild15_Bulletin_Board#anthell_267264()
	dialog "[Ant Hell]"
	dialog "^CC0000Caution!^000000"
	dialog "Ant Hell is made up of 2 levels. True to its name, this dungeon is teeming with Ants and is a good training ground for new adventurers."
	wait()
	dialog "[Ant Hell]"
	dialog "Please be aware that the queens of the Ants appear in both levels of Ant Hell. ^990000Maya Purple^000000 appears in the first level, and ^990000Maya^000000 in the second level."
	wait()
	dialog "[Ant Hell]"
	dialog "The strangely seductive boss monster ^990000Preeoni^000000 also appears at certain times in Ant Hell."
	close()
end

npc("moc_ruins","Bulletin Board#pyramid",SPRITE_2_BULLETIN_BOARD,61,164,0,0,0,"moc_ruins_Bulletin_Board#pyramid_61164")
function moc_ruins_Bulletin_Board#pyramid_61164()
	dialog "[Pyramids]"
	dialog "^CC0000Caution!^000000"
	dialog "The Pyramids are made up of a total of 7 levels: 4 levels are above the earth, and the rest are underground."
	wait()
	dialog "[Pyramids]"
	dialog "The Thief Guild, where people can change their jobs to Thief, is located in the first level."
	wait()
	dialog "[Pyramids]"
	dialog "The first few levels are suited for newer adventurers to explore, but the dangers grow greater as you explore deeper into the dungeon."
	wait()
	dialog "[Pyramids]"
	dialog "In the fourth level, the boss monster ^990000Osiris^000000 will reveal himself at certain times. In the seventh level, the boss ^990000Amon Ra^000000 will manifest as well."
	close()
end

npc("moc_fild19","Bulletin Board#sphinx",SPRITE_2_BULLETIN_BOARD,107,101,0,0,0,"moc_fild19_Bulletin_Board#sphinx_107101")
function moc_fild19_Bulletin_Board#sphinx_107101()
	dialog "[Sphinx]"
	dialog "^CC0000Caution!^000000"
	dialog "The Sphinx consists of 5 levels. This dungeon is suited for training well-experienced adventurers."
	wait()
	dialog "[Sphinx]"
	dialog "There are many aggressive monsters residing in the Sphinx, and it is advised to run away if you happen to be surrounded by them."
	wait()
	dialog "[Sphinx]"
	dialog "In the fifth level, the boss monster ^990000Pharaoh^000000 will appear at certain times. Exorcise with extreme prejudice."
	close()
end

npc("izlu2dun","Bulletin Board#izlude",SPRITE_2_BULLETIN_BOARD,104,91,0,0,0,"izlu2dun_Bulletin_Board#izlude_10491")
function izlu2dun_Bulletin_Board#izlude_10491()
	dialog "[Byalan Island]"
	dialog "^CC0000Caution!^000000"
	dialog "The Izlude dungeon is comprised of 5 levels. The first few levels are suited for newer adventurers."
	wait()
	dialog "[Byalan Island]"
	dialog "As you venture deeper into the Byalan dungeon, you will encounter stronger, more powerful monsters."
	wait()
	dialog "[Byalan Island]"
	dialog "With a few exceptions, most of the monsters in this dungeon are of the Water attribute. Therefore, a Wind attribute weapon will help you greatly."
	close()
end

npc("mjolnir_02","Bulletin Board#coal",SPRITE_2_BULLETIN_BOARD,76,362,0,0,0,"mjolnir_02_Bulletin_Board#coal_76362")
function mjolnir_02_Bulletin_Board#coal_76362()
	dialog "[Coal Mine]"
	dialog "^CC0000Caution!^000000"
	dialog "The Coal Mine consists of a total of 3 levels. This dungeon is suited to both new and experienced adventurers, depending on the dungeon level."
	wait()
	dialog "[Coal Mine]"
	dialog "In the third level, monsters tend to attack adventurers in swarms, so avoid being surrounded. Since this area is a mine, many Ores can be found within the depths of this dungeon."
	close()
end

npc("prt_fild05","Bulletin Board#sewer",SPRITE_2_BULLETIN_BOARD,278,220,0,0,0,"prt_fild05_Bulletin_Board#sewer_278220")
function prt_fild05_Bulletin_Board#sewer_278220()
	dialog "[Culvert]"
	dialog "Culvert is comprised of a total of 4 levels, and is a good training ground for new adventurers."
	wait()
	dialog "[Culvert]"
	dialog "In order to access the Culvert, you must volunteer as a monster exterminator at the Prontera Chivalry. Remember that the monsters here may attack in swarms."
	wait()
	dialog "[Culvert]"
	dialog "In the fourth level of the Prontera Culvert, you may encounter the boss monster known as the ^990000Golden Thief Bug^000000. New adventurers should exercise caution."
	close()
end

npc("glast_01","Bulletin Board#castle",SPRITE_2_BULLETIN_BOARD,369,308,0,0,0,"glast_01_Bulletin_Board#castle_369308")
function glast_01_Bulletin_Board#castle_369308()
	dialog "[Glast Heim]"
	dialog "Glast Heim is an enormous dungeon with countless levels. This dungeon is definitely not for new adventurers or even experienced adventurers."
	wait()
	dialog "[Glast Heim]"
	dialog "Only masters of combat and exploration have a chance of survival in Glast Heim..."
	wait()
	dialog "[Glast Heim]"
	dialog "Many fearsome monsters populate Glast Heim, including Dark Lord, Owl Baron, Owl Duke, Dark Illusion, Bloody Knight, Abysmal Knight, Chimera and various kinds of doomed swords."
	wait()
	dialog "[Glast Heim]"
	dialog "However, greater difficulty in an expedition will result in greater rewards. Hence, Glast Heim is pretty popular among dungeon experts. Best of luck on your dungeon expedition."
	close()
end
