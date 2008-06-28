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

trader("hu_in01","Tool Dealer","1_M_INNKEEPER",241,368,2,0,0)
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
	sellitem Booby_Trap
end

trader("hu_in01","Weapon Dealer","4_M_HUMAN_01",94,390,3,0,0)
OnInit:()
	sellitem Katana
	sellitem Bastard_Sword
	sellitem Hammer
	sellitem Knife
end

trader("hu_in01","Armor Dealer","4_M_04",94,313,3,0,0)
OnInit:()
	sellitem Goggle
	sellitem Circlet
	sellitem Cap
	sellitem Guard
	sellitem Buckler
	sellitem Sandals
	sellitem Hood
	sellitem Mantle
	sellitem Shield
end

trader("hu_in01","Bow Dealer","4_M_04",100,390,3,0,0)
OnInit:()
	sellitem Bow
	sellitem Great_Bow
	sellitem Hunter_Bow
	sellitem Kakkung
end

trader("hu_in01","Tool Dealer","4_F_01",252,368,3,0,0)
OnInit:()
	sellitem Blue_Gemstone
	sellitem Sunglasses
	sellitem Garlet
	sellitem Monster's_Feed
end

trader("hugel","Vendor from Milk Ranch","4_F_01",105,169,5,0,0)
OnInit:()
	sellitem Milk
end

trader("hugel","Vegetable Gardener","4_F_HUGRANMA",77,167,3,0,0)
OnInit:()
	sellitem Fruit_Of_Mastela
	sellitem Apple
	sellitem Banana
	sellitem Carrot
	sellitem Sweet_Potato
	sellitem Pumpkin
end

npc("hu_in01","Shopkeeper#hg",SPRITE_4_M_HUMAN_01,23,311,5,0,0,"hu_in01_Shopkeeper#hg_23311")
function hu_in01_Shopkeeper#hg_23311()
	local max_max_c1 = CheckMaxCount 1201 1
		if (max_max_c1 == 1) then
			dialog "- Please hold on !! -"
			dialog "- You have carried too many things -"
			dialog "- and you won't be able to obtain any items. -"
			dialog "- Please remove something of your load -"
			dialog "- and come again later. -"
			close()
			return
		end
local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
if (now_weight < 2000) then
		dialog "- Please hold on !! -"
		dialog "- You have carried too many things -"
		dialog "- and you won't be able to obtain any items. -"
		dialog "- Please remove something of your load -"
		dialog "- and come again later. -"
		close()
		return
end
	dialog "[Shopkeeper]"
	dialog "Welcome!"
	dialog "Do you want to play firecrackers with your friends?"
	dialog "It will only cost you 500zeny for 5 firecrackers. "
	wait()
local mresulta = menu("I'll buy it","Forget it ")
		if mresulta == 1 then
			local yourgold = getvar(VAR_MONEY)
			if (yourgold < 500) then
				dialog "[Shopkeeper]"
				dialog "Oh~ You don't have enough zeny."
				close()
				return
			else
				dialog "[Shopkeeper]"
				dialog "Thank you!"
				dialog "Have fun with it!"
				dropgold(500)
				getitem("Fire_Cracker",5)
				close()
				return
			end
		elseif mresulta == 2 then
			dialog "[Shopkeeper]"
			dialog "Just imagine how spectacular the night will be with all these firecrackers."
			close()
			return
end
end
