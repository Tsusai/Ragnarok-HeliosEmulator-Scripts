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
trader("ama_in01","Tool Dealer","4_M_JPN",24,30,5,0,0)
OnInit:()
	sellitem Arrow
	sellitem Iron_Arrow
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
end

trader("ama_in01","Armor Dealer","4_F_JPN2",89,28,5,0,0)
OnInit:()
	sellitem Bandana
	sellitem Sandals
	sellitem Shoes
	sellitem Hood
	sellitem Muffler
	sellitem Guard
	sellitem Buckler
	sellitem Adventure_Suit
	sellitem Silk_Robe
	sellitem Silver_Robe
	sellitem Wooden_Mail
	sellitem Belt
end

trader("ama_in01","Weapon Dealer","4_M_JPNOJI",102,28,3,0,0)
OnInit:()
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
end
