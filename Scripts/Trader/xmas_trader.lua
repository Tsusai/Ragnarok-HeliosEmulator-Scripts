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

trader("xmas_in","Tool Dealer","4_M_01",40,38,5,0,0)
OnInit:()
	sellitem Red_Potion
	sellitem Orange_Potion
	sellitem Yellow_Potion
	sellitem White_Potion
	sellitem Green_Potion
	sellitem Center_Potion
	sellitem Awakening_Potion
	sellitem Wing_Of_Fly
	sellitem Wing_Of_Butterfly
	sellitem Spectacles
	sellitem Leaf_Of_Yggdrasil
end

trader("xmas_in","Weapon Dealer","1_M_03",174,98,2,0,0)
OnInit:()
	sellitem Knife
	sellitem Cutter
	sellitem Main_Gauche
	sellitem Dirk
	sellitem Dagger
	sellitem Stiletto
	sellitem Gladius
	sellitem Damascus
end

trader("xmas_in","Armor Dealer","4W_F_01",168,104,4,0,0)
OnInit:()
	sellitem Helm
	sellitem Buckler
	sellitem Shield
	sellitem Mantle
	sellitem Coat
	sellitem Padded_Armor
	sellitem Chain_Mail
	sellitem Plate_Armor
	sellitem Manteau
	sellitem Boots
end

trader("xmas_in","Gift Seller","4_F_GON",169,34,2,0,0)
OnInit:()
	sellitem Flower_Ring
	sellitem Bunch_Of_Flowers
	sellitem Witherless_Rose
	sellitem White_Platter
	sellitem Glass_Bead
	sellitem Stuffed_Doll
	sellitem Diamond_Ring
end
