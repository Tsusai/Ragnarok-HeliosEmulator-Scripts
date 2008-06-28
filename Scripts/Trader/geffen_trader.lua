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
--| 28/06/2008                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

trader("geffen_in","Tool Dealer","1_F_03",77,167,0,0,0)
OnInit:()
	sellitem Arrow
	sellitem Spectacles
	sellitem Red_Potion
	sellitem Orange_Potion
	sellitem Yellow_Potion
	sellitem White_Potion
	sellitem Green_Potion
	sellitem Center_Potion
	sellitem Awakening_Potion
	sellitem Wing_Of_Fly
	sellitem Wing_Of_Butterfly
	sellitem Granpa_Beard
end

trader("geffen_in","Magical Item Seller","1_M_WIZARD",77,173,0,0,0)
OnInit:()
	sellitem Blue_Gemstone
	sellitem Rod
	sellitem Wand
	sellitem Staff
	sellitem Arc_Wand
	sellitem Circlet
	sellitem Silk_Robe
	sellitem Silver_Robe
end

trader("geffen_in","Armor Dealer","1_F_01",26,178,4,0,0)
OnInit:()
	sellitem Novice_Armlet
	sellitem Guard
	sellitem Mirror_Shield
	sellitem Sandals
	sellitem Hood
	sellitem Gemmed_Sallet
	sellitem Cotton_Shirt
	sellitem Leather_Jacket
	sellitem Adventure_Suit
	sellitem Silk_Robe
	sellitem Silver_Robe
end

trader("geffen_in","Weapon Dealer","1_M_01",30,178,4,0,0)
OnInit:()
	sellitem Arrow
	sellitem Silver_Arrow
	sellitem Sword
	sellitem Bow
	sellitem Knife
	sellitem Cutter
	sellitem Main_Gauche
	sellitem Dirk
	sellitem Dagger
	sellitem Stiletto
	sellitem Rod
	sellitem Wand
	sellitem Staff
	sellitem Arc_Wand
end

trader("geffen_in","Trader","1_F_01",74,144,0,0,0)
OnInit:()
	sellitem Scell
	sellitem Garlet
	sellitem Zargon
end

trader("geffen_in","Tool Dealer","1_M_WIZARD",171,123,4,0,0)
OnInit:()
	sellitem Empty_Cylinder
	sellitem Empty_Potion
end

trader("geffen","Pet Groomer","4_F_TELEPORTER",193,152,4,0,0)
OnInit:()
	sellitem Pet_Food
	sellitem Pet_Incubator
	sellitem Backpack
	sellitem Rocker_Glasses
end

trader("geffen_in","Weapon Dealer","4_M_02",22,171,7,0,0)
OnInit:()
	sellitem Town_Sword
	sellitem Cinquedea
end
