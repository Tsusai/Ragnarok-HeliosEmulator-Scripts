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
--| 24/01/2008                                      |--
--|   - First Version for Helios [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("yuno","Airship  Representative",spr_4W_SAILOR,142,183,5,0,0,"yuno_Airship__Representative_142183")
function yuno_Airship__Representative_142183()
	dialog "[Airship Representative]"
	dialog "Good day, I am here to inform you"
	dialog "about the Juno Airship which"
	dialog "we plan to operate in the near future."
	wait()
	dialog "[Air ship Representative]"
	dialog "Unfortunately, it is still in"
	dialog "development, and we've yet"
	dialog "to complete testing. However,"
	dialog "we feel the need to let our"
	dialog "eager customers know of our"
	dialog "progress."
	wait()
	dialog "[Airship Representative]"
	dialog "The Airship we're developing will provide you with convenient travel to any town. You can also enjoy the sights while aloft in the sky. Unique products from various areas will also be provided."
	wait()
	dialog "[Airship Representative]"
	dialog "We promise our customers an"
	dialog "amazing travel experience"
	dialog "once the Airship is in"
	dialog "operation. In the meantime,"
	dialog "we are providing a special"
	dialog "teleport service."
	wait()
	dialog "[Airship Representative]"
	dialog "The teleport fee is 1,800 zeny, regardless of where you want to go. Please let me know your desired destination."
	wait()
	local mresulta = menu("Prontera","Izlude","Geffen","Morroc","Payon","Alberta","Comodo","Cancel")
	if mresulta == 1 then
		if getvar(VAR_MONEY) >= 1800 then
			dropgold(1800)
			moveto("prontera",116,72)
		else
			dialog "[Airship Representative]"
			dialog "I regret to say that you do not have enough zeny with you."
			dialog "Please check the amount of zeny that you have."
			close()
		end
	elseif mresulta == 2 then
		if getvar(VAR_MONEY) >= 1800 then
			dropgold(1800)
			moveto("izlude",94,103)
		else
			dialog "[Airship Representative]"
			dialog "I regret to say that you do not have enough zeny with you."
			dialog "Please check the amount of zeny that you have."
			close()
		end
	elseif mresulta == 3 then
		if getvar(VAR_MONEY) >= 1800 then
			dropgold(1800)
			moveto("geffen",120,39)
		else
			dialog "[Airship Representative]"
			dialog "I regret to say that you do not have enough zeny with you."
			dialog "Please check the amount of zeny that you have."
			close()
		end
	elseif mresulta == 4 then
		if getvar(VAR_MONEY) >= 1800 then
			dropgold(1800)
			moveto("morocc",156,46)
		else
			dialog "[Airship Representative]"
			dialog "I regret to say that you do not have enough zeny with you."
			dialog "Please check the amount of zeny that you have."
			close()
		end
	elseif mresulta == 5 then
		if getvar(VAR_MONEY) >= 1800 then
			dropgold(1800)
			moveto("payon",69,100)
		else
			dialog "[Airship Representative]"
			dialog "I regret to say that you do not have enough zeny with you."
			dialog "Please check the amount of zeny that you have."
			close()
		end
	elseif mresulta == 6 then
		if getvar(VAR_MONEY) >= 1800 then
			dropgold(1800)
			moveto("alberta",117,56)
		else
			dialog "[Airship Representative]"
			dialog "I regret to say that you do not have enough zeny with you."
			dialog "Please check the amount of zeny that you have."
			close()
		end
	elseif mresulta == 7 then
		if getvar(VAR_MONEY) >= 1800 then
			dropgold(1800)
			moveto("comodo",209,143)
		else
			dialog "[Airship Representative]"
			dialog "I regret to say that you do not have enough zeny with you."
			dialog "Please check the amount of zeny that you have."
			close()
		end
	elseif mresulta == 8 then
	end
end
