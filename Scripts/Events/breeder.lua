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

npc("prontera","Peco Peco Breeder",SPRITE_8W_SOLDIER,55,350,5,0,0,"prontera_Peco_Peco_Breeder_55350")
function prontera_Peco_Peco_Breeder_55350()
	dialog "[Peco Peco Breeder]"
	if ((getvar(VAR_JOB) == KNIGHT) or (getvar(VAR_JOB) == KNIGHT_H)) then
		dialog "Welcome."
		dialog "Honorable Knight,"
		dialog "would you like to rent"
		dialog "a Peco Peco? The rental"
		dialog "fee is 2,500 zeny."
		wait()
		local mresulta = menu("Rent Peco Peco","Cancel")
		if mresulta == 1 then
			if getvar(VAR_MONEY) < 2500 then
				dialog "[Peco Peco Breeder]"
				dialog "You do not"
				dialog "have enough zeny."
				dialog "Are you..."
				dialog "bankrupt?"
				close()
				return
			elseif getvar(VAR_ISRIDING) > 1 then
				dialog "[Peco Peco Breeder]"
				dialog "I'm sorry, but you're"
				dialog "not eligible for this"
				dialog "service. Please go learn"
				dialog "the Peco Peco Ride skill first."
				close()
				return
			elseif getvar(VAR_ISPECOON) < 0 then
				dialog "[Peco Peco Breeder]"
				dialog "You're already"
				dialog "mounted on a"
				dialog "Peco Peco."
				close()
				return
			end
			dropgold(2500)
			--SetEffectStatus EFFECT_STATE_CHICKEN
			--The above effect needs implementation.
		elseif mresulta == 2 then
			dialog "[Peco Peco Breeder]"
			dialog "I see."
			dialog "Well then,"
			dialog "have a good day."
			close()
		end
	else
		dialog "I'm sorry, but these"
		dialog "Peco Pecos are only"
		dialog "available for Knights"
		dialog "and Lord Knights."
		close()
	end
end

--npc "in_hunter" "Falcon Breeder" 8W_SOLDIER 146 99 3 5 5
npc("hu_in01","Falcon Breeder",SPRITE_8W_SOLDIER,381,304,5,0,0,"hu_in01_Falcon_Breeder_381304")
function hu_in01_Falcon_Breeder_381304()
	dialog "[Falcon Breeder]"
	if ((getvar(VAR_JOB) == HUNTER) or (getvar(VAR_JOB) == HUNTER_H)) then
		dialog "Do you need a Falcon?"
		dialog "You can rent your own"
		dialog "trusty bird of prey for a"
		dialog "fee of just 2,500 zeny~"
		wait()
		local mresulta = menu("Rent Falcon","Cancel")
		if mresulta == 1 then
			if getvar(VAR_MONEY) < 2500 then
				dialog "[Falcon Breeder]"
				dialog "What is this?"
				dialog "You don't have"
				dialog "enough zeny?!"
				dialog "You better start"
				dialog "hunting money"
				dialog "instead of monsters~"
				close()
				return
			elseif getvar(VAR_ISFALCON) > 1 then
				dialog "[Falcon Breeder]"
				dialog "Gosh~"
				dialog "Go learn how to"
				dialog "manage a Falcon"
				dialog "first! I can't rent one"
				dialog "to you if you can't"
				dialog "handle it, you know."
				close()
				return
			elseif getvar(VAR_ISFALCONON) < 0 then
				dialog "[Falcon Breeder]"
				dialog "Um..."
				dialog "You already have"
				dialog "a Falcon. It's right"
				dialog "there, can't you see it?"
				close()
				return
			end
			dropgold(2500)
			--SetEffectStatus EFFECT_STATE_BIRD
			--The above effect needs implementation.
		elseif mresulta == 2 then
			dialog "[Falcon Breeder]"
			dialog "W-wait, where're"
			dialog "you goin'? These"
			dialog "Falcons are top notch,"
			dialog "I guarantee it! C'mon, yo~"
			close()
		end
	else
		dialog "Young fool!"
		dialog "Falcons can only"
		dialog "be used by Hunters"
		dialog "and Snipers, capish?"
		dialog "...Heh heh, jealous?"
		close()
	end
end
