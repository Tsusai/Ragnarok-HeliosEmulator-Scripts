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

trader("ra_in01","Tool Dealer","4_F_SHABBY",257,269,3,0,0)
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
	sellitem Booby_Trap
	sellitem Leaf_Of_Yggdrasil
end

trader("ra_in01","Weapon Dealer","4_M_RACHMAN1",176,389,3,0,0)
OnInit:()
	sellitem Knife
	sellitem Main_Gauche
	sellitem Stiletto
	sellitem Blade
	sellitem Ring_Pommel_Saber
	sellitem Katana
	sellitem Bastard_Sword
	sellitem Pike
	sellitem Partizan
	sellitem Hammer
	sellitem Chain
	sellitem Coward
	sellitem Rod
	sellitem Wand
	sellitem Staff
end

trader("ra_in01","Armor Dealer","4_F_SHABBY",175,364,3,0,0)
OnInit:()
	sellitem Guard
	sellitem Buckler
	sellitem Shoes
	sellitem Boots
	sellitem Muffler
	sellitem Silk_Robe
	sellitem Chain_Mail
	sellitem Coat
	sellitem Thief_Clothes
	sellitem Novice_Armlet
end

trader("ra_in01","Fruit Gardener","4_M_RACHMAN1",254,300,3,0,0)
OnInit:()
	sellitem Apple
	sellitem Banana
end

trader("rachel","Vegetable Gardener","4_F_SHABBY",65,80,1,0,0)
OnInit:()
	sellitem Carrot
	sellitem Pumpkin
	sellitem Sweet_Potato
end
