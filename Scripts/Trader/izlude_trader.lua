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

trader("izlude","Fruit Gardener","1_M_INNKEEPER",94,98,4,0,0)
OnInit:()
	sellitem Apple
	sellitem Banana
	sellitem Carrot
	sellitem Sweet_Potato
end

trader("izlude","Butcher","1_M_JOBGUIDER",105,99,0,0,0)
OnInit:()
	sellitem Meat
end

trader("izlude","Vendor from Milk Ranch","4_F_01",105,92,7,0,0)
OnInit:()
	sellitem Milk
end

trader("izlude_in","Weapon Dealer","1_F_MARIA",60,127,4,0,0)
OnInit:()
	sellitem Arrow
	sellitem Silver_Arrow
	sellitem Bow
	sellitem Rod
	sellitem Knife
	sellitem Cutter
	sellitem Main_Gauche
	sellitem Sword
	sellitem Falchion
	sellitem Blade
	sellitem Katana
	sellitem Slayer
	sellitem Bastard_Sword
	sellitem Two_Hand_Sword
	sellitem Broad_Sword
	sellitem Axe
end

trader("izlude_in","Armor Dealer","1_M_SIZ",70,127,4,0,0)
OnInit:()
	sellitem Buckler
	sellitem Shield
	sellitem Shoes
	sellitem Boots
	sellitem Muffler
	sellitem Manteau
	sellitem Cap
	sellitem Helm
	sellitem Leather_Jacket
	sellitem Adventure_Suit
	sellitem Wooden_Mail
	sellitem Mantle
	sellitem Coat
	sellitem Padded_Armor
	sellitem Chain_Mail
	sellitem Plate_Armor
	sellitem Novice_Armlet
end

trader("izlude_in","Tool Dealer","1_M_01",115,61,0,0,0)
OnInit:()
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
	sellitem Booby_Trap
	sellitem Arrow
end

trader("izlude","Pet Groomer","4_F_TELEPORTER",164,138,4,0,0)
OnInit:()
	sellitem Pet_Food
	sellitem Pet_Incubator
	sellitem Backpack
	sellitem Rocker_Glasses
end
