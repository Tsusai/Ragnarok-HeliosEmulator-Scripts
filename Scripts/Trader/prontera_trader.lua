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
trader("prontera","Vendor from Milk Ranch","4_F_01",73,134,0,0,0)
OnInit:()
	sellitem Milk
end

trader("prontera","Fruit Gardener","8_F",104,49,0,0,0)
OnInit:()
	sellitem Apple
	sellitem Banana
end

trader("prontera","Vegetable Gardener","4_F_02",48,58,0,0,0)
OnInit:()
	sellitem Carrot
	sellitem Sweet_Potato
	sellitem Pumpkin
end

trader("prontera","Butcher","4_M_BARBER",64,125,0,0,0)
OnInit:()
	sellitem Meat
	sellitem Monster's_Feed
end

trader("prontera","Flower Girl","4W_KID",58,1820,0,0)
OnInit:()
	sellitem Flower
	sellitem Bunch_Of_Flowers
end

trader("prontera","Flower Lady","4_F_01",113,42,0,0,0)
OnInit:()
	sellitem Flower
	sellitem Bunch_Of_Flowers
end

trader("prontera","Gift Merchant","4_F_02",105,87,0,0,0)
OnInit:()
	sellitem Red_Frame
	sellitem Blue_Porcelain
	sellitem White_Platter
	sellitem Black_Ladle
	sellitem Glass_Bead
end

trader("prontera","Doll Supplier","4_M_03",248,153,0,0,0)
OnInit:()
	sellitem Stuffed_Doll
	sellitem Poring_Doll
	sellitem Chonchon_Doll
end

trader("prontera","Pet Groomer","4_M_TELEPORTER",218,211,4,0,0)
OnInit:()
	sellitem Pet_Food
	sellitem Pet_Incubator
	sellitem Backpack
	sellitem Rocker_Glasses
end

trader("prt_fild05","Tool Dealer","4_M_01",290,221,2,0,0)
OnInit:()
	sellitem Arrow
	sellitem Spectacles
	sellitem Red_Potion
	sellitem Orange_Potion
	sellitem Green_Potion
	sellitem Center_Potion
	sellitem Wing_Of_Fly
	sellitem Wing_Of_Butterfly
end

trader("prt_church","Nun","1_F_PRIEST",108,124,4,0,0)
OnInit:()
	sellitem Rosary
	sellitem Biretta
	sellitem Blue_Coif
	sellitem Scapulare
	sellitem Saint_Robe
	sellitem Club
	sellitem Mace
	sellitem Smasher
	sellitem Flail
	sellitem Morning_Star
	sellitem Chain
end

trader("prt_in","Tool Dealer","1_M_INNKEEPER",126,76,0,0,0)
OnInit:()
	sellitem Spectacles
	sellitem Arrow
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
	sellitem One_Eyed_Glass
end

trader("prt_in","Wedding Shop Dealer","1_F_LIBRARYGIRL",211,169,0,0,0)
OnInit:()
	sellitem Bunch_Of_Flowers
	sellitem Wedding_Bouquet
	sellitem Wedding_Dress
	sellitem Wedding_Veil
	sellitem Tuxedo
end

trader("prt_in","Weapon Dealer","1_M_JOBGUIDER",172,130,0,0,0)
OnInit:()
	sellitem Arrow
	sellitem Silver_Arrow
	sellitem Bow
	sellitem Knife
	sellitem Cutter
	sellitem Main_Gauche
	sellitem Rod
	sellitem Sword
	sellitem Falchion
	sellitem Blade
	sellitem Lapier
	sellitem Scimiter
	sellitem Ring_Pommel_Saber
	sellitem Tsurugi
	sellitem Haedonggum
	sellitem Saber
	sellitem Flamberge
	sellitem Katana
	sellitem Axe
end

trader("prt_in","Weapon Dealer","1_M_01",171,140,0,0,0)
OnInit:()
	sellitem Javelin
	sellitem Spear
	sellitem Pike
	sellitem Guisarme
	sellitem Glaive
	sellitem Partizan
	sellitem Trident
	sellitem Halberd
	sellitem Lance
end

trader("prt_in","Armor Dealer","1_M_02",172,132,0,0,0)
OnInit:()
	sellitem Guard
	sellitem Buckler
	sellitem Sandals
	sellitem Shoes
	sellitem Hood
	sellitem Muffler
	sellitem Hat
	sellitem Cap
	sellitem Cotton_Shirt
	sellitem Leather_Jacket
	sellitem Adventure_Suit
	sellitem Wooden_Mail
	sellitem Mantle
	sellitem Coat
	sellitem Padded_Armor
	sellitem Chain_Mail
	sellitem Novice_Armlet
	sellitem Belt
end

trader("prt_monk","Weapon Dealer","4_F_JOB_BLACKSMITH",135,263,5,0,0)
OnInit:()
	sellitem Waghnakh
	sellitem Knuckle_Duster
	sellitem Hora
end

trader("prt_in","Weapon Dealer","1_F_01",165,140,4,0,0)
OnInit:()
	sellitem Town_Sword
	sellitem Cinquedea
end
