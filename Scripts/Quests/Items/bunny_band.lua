-- _________________________________________________ --
--/                                                 \--
--| 	    _    _          _   _                     |--
--|	   | |  | |        | | (_)                    |--
--|	   | |__| |   ___  | |  _    ___    ___       |--
--|	   |  __  |  / _ \ | | | |  / _ \  / __|      |--
--|	   | |  | | |  __/ | | | | | (_) | \__ \      |--
--|	   |_|  |_|  \___| |_| |_|  \___/  |___/      |--
--|				                            |--
--|-------------------------------------------------|--
--| 29/12/2007                             	    |--
--|		   -First Version for Helios  [Spre]    |--
--|-------------------------------------------------|--
--| Credits: Gravity                       	    |--
--|		 Muad_Dib                      	    |--
--|-------------------------------------------------|--
--| Notes:                                 	    |--
--|      All item code is commented out             |--
--|      untill the code is in Helios	    	    |--
--\_________________________________________________/--

npc("alberta","Kafra Employee",spr_4_M_01,26,229,0,0,0,"alberta_Kafra_Employee_26229")
function alberta_Kafra_Employee_26229()
if getvar("kafra_xmas") == 1 then
	dialog "[Kafra Employee]"
	dialog "Hello there~!"
	dialog "How'd you like to"
	dialog "participate in Kafra"
	dialog "Corporation's special"
	dialog "^529DFFBunny Band Event^000000?"
	wait()
	local mresulta = menu("Sure, I brought the items.","Event Information","Cancel")
		if mresulta == 1 then
			dialog "[Kafra Employee]"
			dialog "Alrighty~"
			dialog "Let me check to"
			dialog "see if you brought"
			dialog "all the items..."
			wait()
			if getvar(Feather) < 100 then
				dialog "[Kafra Employee]"
				dialog "Ooh, I'm sorry"
				dialog "but you need to"
				dialog "bring at least"
				dialog "100 Feathers."
				close()
				return
			end
			if getvar(Four_Leaf_Clover) == 0 then
				dialog "[Kafra Employee]"
				dialog "Ooh, I'm sorry"
				dialog "but you need to"
				dialog "bring at least"
				dialog "1 Four-Leaf Clover."
				close()
				return
			end
			if getvar(Scarlet_Jewel) == 0 then
				dialog "[Kafra Employee]"
				dialog "Ooh, I'm sorry"
				dialog "but you need to"
				dialog "bring at least"
				dialog "1 Pearl."
				close()
				return
			end
			if getvar(Cat_Hairband) == 0 then
				dialog "Ooh, I'm sorry"
				dialog "but you need to"
				dialog "bring at least"
				dialog "1 Kitty Band."
				close()
				return
			end

			dialog "[Kafra Employee]"
			dialog "Great, I see that"
			dialog "you've gathered"
			dialog "everything I need to"
			dialog "make the Bunny Band."
			dialog "Please wait a moment"
			dialog "while I put it together..."
			wait()
			if getvar(Feather) < 100 then
				dialog "[Kafra Employee]"
				dialog "Hm? I'm sorry,"
				dialog "but I actually can't"
				dialog "make this right now."
				dialog "You need 100 Feathers"
				dialog "in order for me to put this"
				dialog "Bunny Band together..."
				close()
				return
			end
			if getvar(Four_Leaf_Clover) < 1 then
				dialog "[Kafra Employee]"
				dialog "Hm? I'm sorry,"
				dialog "but I actually can't"
				dialog "make this right now. You"
				dialog "need 1 Four-Leaf Clover"
				dialog "in order for me to put this"
				dialog "Bunny Band together..."
				close()
				return
			end
			if getvar(Scarlet_Jewel) < 1 then
				dialog "[Kafra Employee]"
				dialog "Hm? I'm sorry,"
				dialog "but I actually can't"
				dialog "make this right now."
				dialog "You need 1 Pearl in"
				dialog "order for me to put this"
				dialog "Bunny Band together..."
				close()
				return
			end
			if getvar(Cat_Hairband) < 1 then
				dialog "[Kafra Employee]"
				dialog "Hm? I'm sorry,"
				dialog "but I actually can't"
				dialog "make this right now."
				dialog "You need 1 Kitty Band"
				dialog "in order for me to put this"
				dialog "Bunny Band together..."
				close()
				return
			end
--This will be uncommented once the functions are in place
--Spre
			--dropitem("Feather",100)
			--dropitem("Four_Leaf_Clover",1)
			--dropitem("Scarlet_Jewel",1)
			--dropitem("Cat_Hairband",1)
			--dialog "[Kafra Employee]"
			dialog "Ah, here you go~"
			dialog "The perfect Bunny Band!"
			dialog "Well, I hope you enjoy it."
			--getitem("Bunny_Band",1)
			setitem("kafra_xmas",0)
			wait()
			dialog "[Kafra Employee]"
			dialog "Thank you for"
			dialog "participating in this"
			dialog "special event and your"
			dialog "continued patronage"
			dialog "of the Kafra Services~"
			close()
			return
		elseif mresulta == 2 then
			dialog "[Kafra Employee]"
			dialog "To thank our valued"
			dialog "customers, Kafra Corporation"
			dialog "has prepared a special event"
			dialog "where Kafra Employee will assemble"
			dialog "Bunny Bands for adventurers"
			dialog "who bring the required items."
			wait()
			dialog "[Kafra Employee]"
			dialog "For this special,"
			dialog "one of a kind item,"
			dialog "bring 100 Feathers,"
			dialog "1 Four-Leaf Clover,"
			dialog "1 Kitty Band and"
			dialog "1 Pearl."
			wait()
			dialog "[Kafra Employee]"
			dialog "When you're ready,"
			dialog "come back and bring"
			dialog "those items to me."
			dialog "(Sponsored by the"
			dialog "Alberta Merchant Guild)."
			close()
		elseif mresulta == 3 then
			return
	end
	return
end

dialog "[Kafra Employee]"
dialog "Hi there~! Would you like"
dialog "to join our special ^529DFFBunny"
dialog "Band Event^000000 hosted by the Kafra"
dialog "Corporation and sponsored by"
dialog "the Alberta Merchant Guild?"
wait()
local mresulta = menu("Join the Event","Event Information","Cancel")
	if mresulta == 1 then
		setitem("kafra_xmas",1)
		dialog "[Kafra Employee]"
		dialog "Great! Thanks for"
		dialog "participating! If you"
		dialog "haven't already heard,"
		dialog "you need to collect these"
		dialog "items if you want me put a"
		dialog "Bunny Band together for you..."
		wait()
		dialog "[Kafra Employee]"
		dialog "100 Feathers,"
		dialog "1 Four-Leaf Clover,"
		dialog "1 Kitty Band and"
		dialog "1 Pearl. That's it!"
		dialog "Good luck and I'll be"
		dialog "waiting for you here~"
		close()
	elseif mresulta == 2 then
		dialog "[Kafra Employee]"
		dialog "To thank our valued"
		dialog "customers, Kafra Corporation"
		dialog "has prepared a special event"
		dialog "where Kafra Employee will assemble"
		dialog "Bunny Bands for adventurers"
		dialog "who bring the required items."
		wait()
		dialog "[Kafra Employee]"
		dialog "For this special,"
		dialog "one of a kind item,"
		dialog "bring 100 Feathers,"
		dialog "1 Four-Leaf Clover,"
		dialog "1 Kitty Band and"
		dialog "1 Pearl."
		wait()
		dialog "[Kafra Employee]"
		dialog "When you're ready,"
		dialog "come back and bring"
		dialog "those items to me."
		dialog "(Sponsored by the"
		dialog "Alberta Merchant Guild)."
		close()
	elseif mresulta == 3 then
		return
end
end
