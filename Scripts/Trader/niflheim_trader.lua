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

trader("nif_in","Tool Dealer","4_NFCOFFIN",145,23,1,0,0)
OnInit:()
	sellitem Pumpkin
	sellitem Pumpkin_Head
	sellitem Tree_Root
	sellitem Goat's_Horn
	sellitem Pet_Food
	sellitem Poison_Powder
	sellitem Single_Cell
	sellitem Mementos
end

trader("nif_in","Axe Dealer","4_NFCOFFIN",37,93,1,0,0)
OnInit:()
	sellitem Axe
	sellitem Battle_Axe
	sellitem Hammer
	sellitem Buster
	sellitem Two_Handed_Axe
end

trader("nif_in","Armor Dealer","4_NFCOFFIN",37,84,1,0,0)
OnInit:()
	sellitem Hood
	sellitem Hood
	sellitem Muffler
	sellitem Muffler
	sellitem Manteau
	sellitem Manteau
end
