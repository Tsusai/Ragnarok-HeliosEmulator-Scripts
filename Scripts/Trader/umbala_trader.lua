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

trader("um_in","Tool Dealer","4_M_UMOLDMAN",104,124,3,0,0)
OnInit:()
	sellitem Apple
	sellitem Carrot
	sellitem Pumpkin
	sellitem Sweet_Potato
	sellitem Banana
	sellitem Meat
	sellitem Monster's_Feed
	sellitem Pet_Food
	sellitem Wing_Of_Fly
	sellitem Wing_Of_Butterfly
	sellitem Center_Potion
	sellitem Awakening_Potion
	sellitem Leaf_Of_Yggdrasil
end

trader("um_in","Weapon Dealer","4_M_UMSOLDIER",160,125,3,0,0)
OnInit:()
	sellitem Club
	sellitem Mace
	sellitem Smasher
	sellitem Flail
	sellitem Morning_Star
	sellitem Chain
	sellitem Fist
	sellitem Finger
	sellitem Claw
end
