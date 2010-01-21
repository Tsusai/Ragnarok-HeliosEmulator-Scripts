-- _________________________________________________ --
--/                                                 \--
--|    _    _          _   _                        |--
--|   | |  | |        | | (_)                       |--
--|   | |__| |   ___  | |  _    ___    ___          |--
--|   |  __  |  / _ \ | | | |  / _ \  / __|         |--
--|   | |  | | |  __/ | | | | | (_) | \__ \         |--
--|   |_|  |_|  \___| |_| |_|  \___/  |___/         |--
--|                                                 |--
--|-------------------------------------------------|--
--| 20/01/2010                                      |--
--|   - First version for helios. [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--
npc("yuno","Metheus Sylphe",SPRITE_2_M_SAGE_B,88,164,5,0,0,"Metheus_Sylphe")
function Metheus_Sylphe()
	if(getvar(JOBLEVEL) > 49) then
		if(getvar(CLEVEL) > 98)) then
			if(getvar("valkyrie_q", 0) then --Not sure if this is right...
				dialog "Metheus Sylphe"
				dialog "Welcome to the Library of the Schweicherbil Magic Academy."
				dialog "I assume you have come here"
				dialog "to read the 'Book of Ymir."
				wait()
				dialog "Metheus Sylphe"
				dialog "Unfortunately, the original copy of the book has been damaged over time. We currently only allow the public to view a copy of the book."
				wait()
				dialog "Metheus Sylphe"
				dialog "Also, in order to preserve the original 'Book of Ymir,' we have decided to accept donations from people who wish to read the copy we have provided."
				wait()
				dialog "Metheus Sylphe"
				dialog "The suggested"
				dialog "donation amount is"
				dialog "1,285,000 zeny."
				wait()
				local mresult = menu("Donate",0,"Cancel",1)
				if(mresult == 1) then
					if(getvar(MONEY) >= 1285000)
						getgold(-1285000)
						setvar("valkyrie_q",1)
						dialog "[Metheus Sylphe]"
						dialog "Thank you, your donation will be used for a good cause. You May"
						dialog "now go in and read the book."
					else
						dialog "Metheus Sylphe"
						dialog "Unfortunately, you don't seem to possess enough zeny at the moment. Please check your funds and come back again."
						close()
					end
				elseif
					dialog "Metheus Sylphe"
					dialog "Take your time, and"
					dialog "enjoy your travels."
					end
				close()
			else
				dialog "Metheus Sylphe"
				dialog "Once again, thank you for you generous donation."
				dialog "Feel free to read a carbon copy of the 'Book of Ymir' at your leisure."
				close()
		else
			dialog "Metheus Sylphe"
			dialog "You must be atleast level 99."
			close()
	else
		dialog "Metheus Sylphe"
		dialog "Welcome to the Library of the Schweicherbil Magic Academy."
		dialog "Here, we have a countless number of books. Please take your time and look around."
		close()
end


