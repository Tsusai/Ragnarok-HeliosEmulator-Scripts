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
--| 29/12/2007                                      |--
--|   - First Version for Helios  [Muad_Dib]        |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("ve_in","Inn Masterveinsin",SPRITE_4_M_SEAMAN,157,219,5,0,0,"ve_in_Inn_Master#veinsin_157219")

function ve_in_Inn_Masterveinsin_157219()
	dialog "[Inn Master]"
	dialog "Good day~"
	dialog "Welcome to the most comfortable inn here in Veins~"
	wait()
	local mresult = menu("Save Point","Rest - 5,000z","Quit")
	if mresult == 1 then
		dialog "[Inn Master]"
		dialog "Your Respawn Point has been saved in Veins."
		dialog "Enjoy your stay in town~"
		checkpoint("ve_in",157,210)
		close()
		return
	elseif mresult == 2 then
		if getvar(VAR_MONEY) > 4999 then
			dialog "[Inn Master]"
			dialog "Please enjoy your stay."
			close()
			dropgold(5000)
			hpheal(100)
			spheal(100)
			moveto("ve_in",184,228)
			return
		else
			dialog "[Inn Master]"
			dialog "I'm sorry but you don't have enough money to check in."
			dialog "The service charge is 5,000 zeny."
			close()
			return
		end
	elseif mresult == 3 then
		dialog "[Inn Master]"
		dialog "Please come again."
		close()
		return
	end
	close()
end

