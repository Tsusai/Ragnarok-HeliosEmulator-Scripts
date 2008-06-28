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
--| 24/01/2008                                      |--
--|   - First version for helios. [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("sec_in02","Juperos Manager",SPRITE_4_F_OPERATION,39,167,0,0,0,"sec_in02_Juperos_Manager_39167")
--[[OnInit:()
	SetGlobalVar("jupe_area1",0)
	SetGlobalVar("jupe_area2",0)
	SetGlobalVar("jupe_ele_r",0)
	SetGlobalVar("ufe_elev",0)
end]]--

function sec_in02_Juperos_Manager_39167()
	dialog "[Juperos Manager]"
	dialog "I'm the NPC in"
	dialog "charge of managing"
	dialog "the global variables for"
	dialog "the quests related to"
	dialog "Juperos. GM, please"
	dialog "enter the password."
	wait()
	dlgwrite(0,9999)
	if input == 1854 then
		dialog "[Juperos Manager]"
		dialog "Select a map. Remember:"
		dialog "Make sure that users aren't"
		dialog "doing the quest on the map"
		dialog "you're going to reset, or else"
		dialog "you'll cancel their progress"
		dialog "through the quest."
		wait()
		local mresulta = menu("jupe_Area1","jupe_Area2","jupe_ele_r","jupe_ele")
		if mresulta == 1 then
			dialog "[Juperos Manager]"
			dialog "You've decided"
			dialog "to reset jupe_Area1."
			dialog "Shall we proceed?"
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				dialog "[Juperos Manager]"
				dialog "The global variable in"
				dialog "jupe_Area1 has been"
				dialog "reset to 0. Thank you."
				SetGlobalVar("050420_jupe_area1",0)
				close()
				return
			elseif mresultb == 2 then
				dialog "[Juperos Manager]"
				dialog "This command"
				dialog "has been canceled."
				close()
				return
			end
			close()
			return
		elseif mresulta == 2 then
			dialog "[Juperos Manager]"
			dialog "You've decided"
			dialog "to reset jupe_Area2."
			dialog "Shall we proceed?"
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				dialog "[Juperos Manager]"
				dialog "The global variable in"
				dialog "jupe_Area2 has been"
				dialog "reset to 0. Thank you."
				SetGlobalVar("050420_jupe_area2",0)
				close()
				return
			elseif mresultb == 2 then
				dialog "[Juperos Manager]"
				dialog "This command"
				dialog "has been canceled."
				close()
				return
			end
			close()
			return
		elseif mresulta == 3 then
			dialog "[Juperos Manager]"
			dialog "You've decided"
			dialog "to reset jupe_ele_r."
			dialog "Shall we proceed?"
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				dialog "[Juperos Manager]"
				dialog "The global variable in"
				dialog "jupe_ele_r has been"
				dialog "reset to 0. Thank you."
				SetGlobalVar("050420_jupe_ele_r",0)
				close()
				return
			elseif mresultb == 2 then
				dialog "[Juperos Manager]"
				dialog "Command has been canceled."
				close()
				return
			end
			close()
			return
		elseif mresulta == 4 then
			dialog "[Juperos Manager]"
			dialog "You've decided"
			dialog "to reset jupe_ele."
			dialog "Shall we proceed?"
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				dialog "[Juperos Manager]"
				dialog "The global variable in"
				dialog "jupe_ele has been"
				dialog "reset to 0. Thank you."
				SetGlobalVar("050425_ufe_elev",0)
				close()
				return
			elseif mresultb == 2 then
				dialog "[Juperos Manager]"
				dialog "This command"
				dialog "has been canceled."
				close()
				return
			end
			close()
			return
		end
		close()
	else
		dialog "[Juperos Manager]"
		dialog "Incorrect password."
		close()
		return
	end
	close()
end
