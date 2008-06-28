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

trader("ein_in01","Tool Dealer","4_F_EINWOMAN",189,15,1,0,0)
OnInit:()
	sellitem Arrow
	sellitem Fire_Arrow
	sellitem Silver_Arrow
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

trader("ein_in01","One Hand Weapon Dealer","4_F_EINWOMAN",106,27,4,0,0)
OnInit:()
	sellitem Sword
	sellitem Falchion
	sellitem Blade
	sellitem Lapier
	sellitem Scimiter
	sellitem Tsurugi
	sellitem Ring_Pommel_Saber
	sellitem Haedonggum
	sellitem Saber
	sellitem Flamberge
	sellitem Knife
	sellitem Cutter
	sellitem Main_Gauche
	sellitem Dirk
	sellitem Dagger
	sellitem Stiletto
	sellitem Gladius
	sellitem Damascus
	sellitem Axe
	sellitem Javelin
	sellitem Spear
	sellitem Pike
	sellitem Club
	sellitem Mace
	sellitem Smasher
	sellitem Flail
	sellitem Morning_Star
	sellitem Sword_Mace
	sellitem Chain
	sellitem Stunner
	sellitem Waghnakh
	sellitem Knuckle_Duster
	sellitem Hora
	sellitem Fist
	sellitem Claw
	sellitem Finger
end

trader("ein_in01","Two Hand Weapon Dealer","4_F_EINWOMAN",109,27,4,0,0)
OnInit:()
	sellitem Katana
	sellitem Slayer
	sellitem Bastard_Sword
	sellitem Two_Hand_Sword
	sellitem Broad_Sword
	sellitem Battle_Axe
	sellitem Hammer
	sellitem Buster
	sellitem Two_Handed_Axe
	sellitem Lance
	sellitem Guisarme
	sellitem Glaive
	sellitem Partizan
	sellitem Trident
	sellitem Halberd
	sellitem Jur
	sellitem Katar
	sellitem Jamadhar
end

trader("einbroch","Flu Mask Dealer#ein","4_F_EINWOMAN",138,66,4,0,0)
OnInit:()
	sellitem Fedora
	sellitem Flu_Mask
end
OnCommand: "on"
	enablenpc "Flu Mask Dealer#ein"
end
OnCommand: "off"
	disablenpc "Flu Mask Dealer#ein"
end

trader("einbroch","Paddler#ein","4_M_EINMAN",82,199,4,0,0)
OnInit:()
	sellitem Apple
	sellitem Center_Potion
	sellitem Arrow
	sellitem Red_Potion
end
OnCommand: "on"
	enablenpc "Paddler#ein"
end
OnCommand: "off"
	disablenpc "Paddler#ein"
end

trader("ein_in01","Weapon Dealer","4_M_EINMAN",119,26,4,0,0)
OnInit:()
	sellitem Kindling_Dagger
	sellitem Obsidian_Dagger
	sellitem Fisherman's_Dagger
	sellitem Jujube_Dagger
end
