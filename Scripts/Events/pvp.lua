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

npc("morocc_in","PVPNarrator",SPRITE_4_M_02,144,138,4,0,0,"morocc_in_PVPNarrator_144138")
function morocc_in_PVPNarrator_144138()
	dialog "[PVP Narrator]"
	dialog "Hello and welcome!"
	dialog "I am in charge of"
	dialog "explaining the PVP Mode."
	dialog "I am the PVP Narrator!"
	wait()
	local mresulta = menu("What is PVP?","What are the PVP Modes?","What are the rules for PVP?","Save Position.","End Dialog.")
	if mresulta == 1 then
		dialog "[PVP Narrator]"
		dialog "In short form"
		dialog "PVP means,"
		dialog "' Player VS Player Mode '"
		dialog "It's a unique place for people"
		dialog "To duel with each other."
		wait()
		dialog "[PVP Narrator]"
		dialog "Just tell the"
		dialog "^3355FFGate Keeper^000000"
		dialog "That you want to try. He will"
		dialog "let you into the PVP square."
		wait()
		dialog "[PVP Narrator]"
		dialog "But, You need to be at"
		dialog "least level 31. And you"
		dialog "must pay the 500 zeny"
		dialog "entrance fee in order to"
		dialog "To enter a PVP Fight Square."
		close()
	elseif mresulta == 2 then
		dialog "[PVP Narrator]"
		dialog "When you are qualified, You"
		dialog "can choose one of two Modes."
		dialog "Yoyo Mode, Or"
		dialog "Nightmare Mode."
		wait()
		dialog "[PVP Narrator]"
		dialog "Yoyo Mode is risk free."
		dialog "You can experience PVP"
		dialog "without any restriction or"
		dialog "punishment. It is recommended"
		dialog "that you practice your skills"
		dialog "here before you move on."
		wait()
		dialog "[PVP Narrator]"
		dialog "Nightmare Mode is very"
		dialog "dangerous! Please use caution."
		dialog "You will lose some of your real"
		dialog "EXP when you are defeated. And"
		dialog "There is a small chance that"
		dialog "you will drop some equipment."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, if you win, the"
		dialog "rewards can be great!"
		dialog "To avoid misunderstanding."
		dialog "You should think it over"
		dialog "twice before you go there..."
		dialog "Good Luck!"
		close()
	elseif mresulta == 3 then
		dialog "[PVP Narrator]"
		dialog "Each of the Fight squares"
		dialog "have a row of Narrators to"
		dialog "choose from based on your"
		dialog "qualifications."
		wait()
		dialog "[PVP Narrator]"
		dialog "Each Narrator will ask"
		dialog "which of the five PVP maps"
		dialog "you wish to go to."
		dialog "Choose, and go in!"
		wait()
		dialog "[PVP Narrator]"
		dialog "Each map has a limitation on"
		dialog "the number of people who can"
		dialog "participate. So you will see"
		dialog "figures in the corner showing"
		dialog "'Attendee/total'."
		wait()
		dialog "[PVP Narrator]"
		dialog "Also, there is a hidden EXP"
		dialog "value in PVP mode. This EXP"
		dialog "score will only apply inside"
		dialog "of the PVP zone, so do not"
		dialog "worry."
		wait()
		dialog "[PVP Narrator]"
		dialog "Every player's EXP at the"
		dialog "beginning is usually 5 points."
		dialog "If you win, you will"
		dialog "increse your EXP by 1 point"
		wait()
		dialog "[PVP Narrator]"
		dialog "In the same way, when you"
		dialog "lose... Your EXP will"
		dialog "drop by 5 points."
		dialog "So be careful!"
		wait()
		dialog "[PVP Narrator]"
		dialog "When you are defeated"
		dialog "And your EXP is equal"
		dialog "to or less than 0,"
		dialog "You will be removed from PVP"
		dialog "And your duel is finished!"
		wait()
		dialog "[PVP Narrator]"
		dialog "However, If your EXP is more"
		dialog "than 0. You can still get help"
		dialog "Through other players healing..."
		dialog "Do you get it?"
		wait()
		dialog "[PVP Narrator]"
		dialog "The fighting commands inside of"
		dialog "PVP Are the same as the normal."
		dialog "All the basic controls are the"
		dialog "same."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, there is one thing..."
		dialog "Within the PVP fight square,"
		dialog "And in the PVP fighting zones"
		dialog "You cannot save your position."
		dialog "Remember well... These rules"
		dialog "can help to ensure your victory."
		close()
	elseif mresulta == 4 then
		dialog "[PVP Narrator]"
		dialog "Position saved..."
		dialog "Successfully."
		dialog "Thank you very much, We"
		dialog "will see you again soon."
		close()
		checkpoint("morocc_in",141,139)
	elseif mresulta == 5 then
		dialog "[PVP Narrator]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("morocc_in","Gate Keeper",SPRITE_4_M_01,144,142,4,0,0,"morocc_in_Gate_Keeper_144142")
function morocc_in_Gate_Keeper_144142()
	dialog "[Gate Keeper]"
	dialog "Glad to be of service."
	dialog "I will open the PVP fight"
	dialog "square for you! If you have"
	dialog "any questions about the PVP"
	dialog "modes or rules, Please ask"
	dialog "the Narrator..."
	wait()
	local mresulta = menu("^FF5533' PvP Nightmare Mode'^000000","^3355FF' PvP Yoyo Mode'^000000","^3355FF' PvP Event Mode'^000000","Quit")
	if mresulta == 1 then
		dialog "[Gate Keeper]"
		dialog "I am sorry, but currently the Nightmare mode service is not available."
		dialog "Please use the Yoyo mode instead. We apologize for the inconvenience."
		close()
	elseif mresulta == 2 then
		dialog "[Gate Keeper]"
		dialog "The admission fee is 500 Zeny."
		dialog "Do you want to move"
		dialog "to the Yoyo Mode"
		dialog "fight square?"
		wait()
		local mresultb = menu("Move","Cancel")
		if mresultb == 1 then
			if ((getvar(VAR_MONEY) > 499) and (getvar(VAR_CLEVEL) > 30)) then
				dropgold(500)
				moveto("pvp_y_room",51,23)
			else
				dialog "[Gate Keeper]"
				dialog "Excuse me, but"
				dialog "did you not come prepared?"
				dialog "Double check that you have the"
				dialog "500 Zeny entrance fee, and"
				dialog "that you are at least level 31!"
				close()
			end
		elseif mresultb == 2 then
			dialog "[Gate Keeper]"
			dialog "In this war between Monsters"
			dialog "and Humans. This competition"
			dialog "between people, The PVP Mode!"
			dialog "Encourages us all to become"
			dialog "stronger. Come again."
			dialog "We welcome your challenge!"
			close()
		end
	elseif mresulta == 3 then
		dialog "[Gate Keeper]"
		dialog "Welcome"
		dialog "Please double check"
		dialog "That you have the admission or viewing ticket!"
		wait()
		if ((getvar(Invite_For_Duel) == 0) and (getvar(Admission_For_Duel) == 0)) then
			dialog "[Gate Keeper]"
			dialog "Eh? You don't have it? Then I"
			dialog "am sorry, this fight square is"
			dialog "only for people who have"
			dialog "admission or viewing tickets."
			dialog "You cannot come in without it."
			close()
			return
		end
		dialog "[Gate Keeper]"
		dialog "Yes, thank you for participating. Have fun!"
		close()
		moveto("pvp_room",51,23)
	elseif mresulta == 4 then
		dialog "[Gate Keeper]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("alberta_in","PVP Narrator",SPRITE_4_M_02,22,146,4,0,0,"alberta_in_PVP_Narrator_22146")
function alberta_in_PVP_Narrator_22146()
	dialog "[PVP Narrator]"
	dialog "Hello and welcome!"
	dialog "I am in charge of"
	dialog "explaining the PVP Mode."
	dialog "I am the PVP Narrator!"
	wait()
	local mresulta = menu("What is PVP?","What are the PVP Mode's?","What are the rules for PVP?","Save Position.","End Dialog.")
	if mresulta == 1 then
		dialog "[PVP Narrator]"
		dialog "In short form"
		dialog "PVP means,"
		dialog "' Player VS Player Mode '"
		dialog "It's a unique place for people"
		dialog "To duel with each other."
		wait()
		dialog "[PVP Narrator]"
		dialog "Just tell the"
		dialog "^3355FFGate Keeper^000000"
		dialog "That you want to try. He will"
		dialog "let you into the PVP square."
		wait()
		dialog "[PVP Narrator]"
		dialog "But, You need to be at"
		dialog "least level 31. And you"
		dialog "must pay the 500 zeny"
		dialog "entrance fee in order to"
		dialog "To enter a PVP Fight Square."
		close()
	elseif mresulta == 2 then
		dialog "[PVP Narrator]"
		dialog "When you are qualified, You"
		dialog "can choose one of two Modes."
		dialog "Yoyo Mode, Or"
		dialog "Nightmare Mode."
		wait()
		dialog "[PVP Narrator]"
		dialog "Yoyo Mode is risk free."
		dialog "You can experience PVP"
		dialog "without any restriction or"
		dialog "punishment. It is recommended"
		dialog "that you practice your skills"
		dialog "here before you move on."
		wait()
		dialog "[PVP Narrator]"
		dialog "Nightmare Mode is very"
		dialog "dangerous! Please use caution."
		dialog "You will lose some of your real"
		dialog "EXP when you are defeated. And"
		dialog "There is a small chance that"
		dialog "you will drop some equipment."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, if you win, the"
		dialog "rewards can be great!"
		dialog "To avoid misunderstanding."
		dialog "You should think it over"
		dialog "twice before you go there..."
		dialog "Good Luck!"
		close()
	elseif mresulta == 3 then
		dialog "[PVP Narrator]"
		dialog "Each of the Fight squares"
		dialog "have a row of Narrators to"
		dialog "choose from based on your"
		dialog "qualifications."
		wait()
		dialog "[PVP Narrator]"
		dialog "Each Narrator will ask"
		dialog "which of the five PVP maps"
		dialog "you wish to go to."
		dialog "Choose, and go in!"
		wait()
		dialog "[PVP Narrator]"
		dialog "Each map has a limitation on"
		dialog "the number of people who can"
		dialog "participate. So you will see"
		dialog "figures in the corner showing"
		dialog "'Attendee/total'."
		wait()
		dialog "[PVP Narrator]"
		dialog "Also, there is a hidden EXP"
		dialog "value in PVP mode. This EXP"
		dialog "score will only apply inside"
		dialog "of the PVP zone, so do not"
		dialog "worry."
		wait()
		dialog "[PVP Narrator]"
		dialog "Every player's EXP at the"
		dialog "beginning is usually 5 points."
		dialog "If you win, you will"
		dialog "increse your EXP by 1 point"
		wait()
		dialog "[PVP Narrator]"
		dialog "In the same way, when you"
		dialog "lose... Your EXP will"
		dialog "drop by 5 points."
		dialog "So be careful!"
		wait()
		dialog "[PVP Narrator]"
		dialog "When you are defeated"
		dialog "And your EXP is equal"
		dialog "to or less than 0,"
		dialog "You will be removed from PVP"
		dialog "And your duel is finished!"
		wait()
		dialog "[PVP Narrator]"
		dialog "However, If your EXP is more"
		dialog "than 0. You can still get help"
		dialog "Through other players healing..."
		dialog "Do you get it?"
		wait()
		dialog "[PVP Narrator]"
		dialog "The fighting commands inside of"
		dialog "PVP Are the same as the normal."
		dialog "All the basic controls are the"
		dialog "same."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, there is one thing..."
		dialog "Within the PVP fight square,"
		dialog "And in the PVP fighting zones"
		dialog "You cannot save your position."
		dialog "Remember well... These rules"
		dialog "can help to ensure your victory."
		close()
	elseif mresulta == 4 then
		dialog "[PVP Narrator]"
		dialog "Position saved..."
		dialog "Successfully."
		dialog "Thank you very much, We"
		dialog "will see you again soon."
		close()
		checkpoint("alberta_in",22,148)
	elseif mresulta == 5 then
		dialog "[PVP Narrator]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("alberta_in","Gate Keeper",SPRITE_4_M_01,26,146,4,0,0,"alberta_in_Gate_Keeper_26146")
function alberta_in_Gate_Keeper_26146()
	dialog "[Gate Keeper]"
	dialog "Glad to be of service."
	dialog "I will open the PVP fight"
	dialog "square for you! If you have"
	dialog "any questions about the PVP"
	dialog "modes or rules, Please ask"
	dialog "the Narrator..."
	wait()
	local mresulta = menu("^FF5533' PvP Nightmare Mode'^000000","^3355FF' PvP Yoyo Mode'^000000","^3355FF' PvP Event Mode'^000000","Quit")
	if mresulta == 1 then
		dialog "[Gate Keeper]"
		dialog "I am sorry, but currently the Nightmare mode service is not available."
		dialog "Please use the Yoyo mode instead. We apologize for the inconvenience."
		close()
	elseif mresulta == 2 then
		dialog "[Gate Keeper]"
		dialog "The admission fee is 500 Zeny."
		dialog "Do you want to move"
		dialog "to the Yoyo Mode"
		dialog "fight square?"
		wait()
		local mresultb = menu("Move","Cancel")
		if mresultb == 1 then
			if ((getvar(VAR_MONEY) > 499) and (getvar(VAR_CLEVEL) > 30)) then
				dropgold(500)
				moveto("pvp_y_room",51,23)
			else
				dialog "[Gate Keeper]"
				dialog "Excuse me, but"
				dialog "did you not come prepared?"
				dialog "Double check that you have the"
				dialog "500 Zeny entrance fee, and"
				dialog "that you are at least level 31!"
				close()
			end
		elseif mresultb == 2 then
			dialog "[Gate Keeper]"
			dialog "In this war between Monsters"
			dialog "and Humans. This competition"
			dialog "between people, The PVP Mode!"
			dialog "Encourages us all to become"
			dialog "stronger. Come again."
			dialog "We welcome your challenge!"
			close()
		end
	elseif mresulta == 3 then
		dialog "[Gate Keeper]"
		dialog "Welcome"
		dialog "Please double check"
		dialog "That you have the admission or viewing ticket!"
		wait()
		if ((getvar(Invite_For_Duel) == 0) and (getvar(Admission_For_Duel) == 0)) then
			dialog "[Gate Keeper]"
			dialog "Eh? You don't have it? Then I"
			dialog "am sorry, this fight square is"
			dialog "only for people who have"
			dialog "admission or viewing tickets."
			dialog "You cannot come in without it."
			close()
			return
		end
		dialog "[Gate Keeper]"
		dialog "Yes, thank you for participating. Have fun!"
		close()
		moveto("pvp_room",51,23)
	elseif mresulta == 4 then
		dialog "[Gate Keeper]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("prt_in","PVPNarrator",SPRITE_4_M_02,56,140,4,0,0,"prt_in_PVPNarrator_56140")
function prt_in_PVPNarrator_56140()
	dialog "[PVP Narrator]"
	dialog "Hello and welcome!"
	dialog "I am in charge of"
	dialog "explaining the PVP Mode."
	dialog "I am the PVP Narrator!"
	wait()
	local mresulta = menu("What is PVP?","What are the PVP Mode's?","What are the rules for PVP?","Save Position.","End Dialog.")
	if mresulta == 1 then
		dialog "[PVP Narrator]"
		dialog "In short form"
		dialog "PVP means,"
		dialog "' Player VS Player Mode '"
		dialog "It's a unique place for people"
		dialog "To duel with each other."
		wait()
		dialog "[PVP Narrator]"
		dialog "Just tell the"
		dialog "^3355FFGate Keeper^000000"
		dialog "That you want to try. He will"
		dialog "let you into the PVP square."
		wait()
		dialog "[PVP Narrator]"
		dialog "But, You need to be at"
		dialog "least level 31. And you"
		dialog "must pay the 500 zeny"
		dialog "entrance fee in order to"
		dialog "To enter a PVP Fight Square."
		close()
	elseif mresulta == 2 then
		dialog "[PVP Narrator]"
		dialog "When you are qualified, You"
		dialog "can choose one of two Modes."
		dialog "Yoyo Mode, Or"
		dialog "Nightmare Mode."
		wait()
		dialog "[PVP Narrator]"
		dialog "Yoyo Mode is risk free."
		dialog "You can experience PVP"
		dialog "without any restriction or"
		dialog "punishment. It is recommended"
		dialog "that you practice your skills"
		dialog "here before you move on."
		wait()
		dialog "[PVP Narrator]"
		dialog "Nightmare Mode is very"
		dialog "dangerous! Please use caution."
		dialog "You will lose some of your real"
		dialog "EXP when you are defeated. And"
		dialog "There is a small chance that"
		dialog "you will drop some equipment."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, if you win, the"
		dialog "rewards can be great!"
		dialog "To avoid misunderstanding."
		dialog "You should think it over"
		dialog "twice before you go there..."
		dialog "Good Luck!"
		close()
	elseif mresulta == 3 then
		dialog "[PVP Narrator]"
		dialog "Each of the Fight squares"
		dialog "have a row of Narrators to"
		dialog "choose from based on your"
		dialog "qualifications."
		wait()
		dialog "[PVP Narrator]"
		dialog "Each Narrator will ask"
		dialog "which of the five PVP maps"
		dialog "you wish to go to."
		dialog "Choose, and go in!"
		wait()
		dialog "[PVP Narrator]"
		dialog "Each map has a limitation on"
		dialog "the number of people who can"
		dialog "participate. So you will see"
		dialog "figures in the corner showing"
		dialog "'Attendee/total'."
		wait()
		dialog "[PVP Narrator]"
		dialog "Also, there is a hidden EXP"
		dialog "value in PVP mode. This EXP"
		dialog "score will only apply inside"
		dialog "of the PVP zone, so do not"
		dialog "worry."
		wait()
		dialog "[PVP Narrator]"
		dialog "Every player's EXP at the"
		dialog "beginning is usually 5 points."
		dialog "If you win, you will"
		dialog "increse your EXP by 1 point"
		wait()
		dialog "[PVP Narrator]"
		dialog "In the same way, when you"
		dialog "lose... Your EXP will"
		dialog "drop by 5 points."
		dialog "So be careful!"
		wait()
		dialog "[PVP Narrator]"
		dialog "When you are defeated"
		dialog "And your EXP is equal"
		dialog "to or less than 0,"
		dialog "You will be removed from PVP"
		dialog "And your duel is finished!"
		wait()
		dialog "[PVP Narrator]"
		dialog "However, If your EXP is more"
		dialog "than 0. You can still get help"
		dialog "Through other players healing..."
		dialog "Do you get it?"
		wait()
		dialog "[PVP Narrator]"
		dialog "The fighting commands inside of"
		dialog "PVP Are the same as the normal."
		dialog "All the basic controls are the"
		dialog "same."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, there is one thing..."
		dialog "Within the PVP fight square,"
		dialog "And in the PVP fighting zones"
		dialog "You cannot save your position."
		dialog "Remember well... These rules"
		dialog "can help to ensure your victory."
		close()
	elseif mresulta == 4 then
		dialog "[PVP Narrator]"
		dialog "Position saved..."
		dialog "Successfully."
		dialog "Thank you very much, We"
		dialog "will see you again soon."
		close()
		checkpoint("prt_in",54,137)
	elseif mresulta == 5 then
		dialog "[PVP Narrator]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("prt_in","Gate Keeper",SPRITE_4_M_01,52,140,4,0,0,"prt_in_Gate_Keeper_52140")
function prt_in_Gate_Keeper_52140()
	dialog "[Gate Keeper]"
	dialog "Glad to be of service."
	dialog "I will open the PVP fight"
	dialog "square for you! If you have"
	dialog "any questions about the PVP"
	dialog "modes or rules, Please ask"
	dialog "the Narrator..."
	wait()
	local mresulta = menu("^FF5533' PvP Nightmare Mode'^000000","^3355FF' PvP Yoyo Mode'^000000","^3355FF' PvP Event Mode'^000000","Quit")
	if mresulta == 1 then
		dialog "[Gate Keeper]"
		dialog "I am sorry, but currently the Nightmare mode service is not available."
		dialog "Please use the Yoyo mode instead. We apologize for the inconvenience."
		close()
	elseif mresulta == 2 then
		dialog "[Gate Keeper]"
		dialog "The admission fee is 500 Zeny."
		dialog "Do you want to move"
		dialog "to the Yoyo Mode"
		dialog "fight square?"
		wait()
		local mresultb = menu("Move","Cancel")
		if mresultb == 1 then
			if ((getvar(VAR_MONEY) > 499) and (getvar(VAR_CLEVEL) > 30)) then
				dropgold(500)
				moveto("pvp_y_room",51,23)
			else
				dialog "[Gate Keeper]"
				dialog "Excuse me, but"
				dialog "did you not come prepared?"
				dialog "Double check that you have the"
				dialog "500 Zeny entrance fee, and"
				dialog "that you are at least level 31!"
				close()
			end
		elseif mresultb == 2 then
			dialog "[Gate Keeper]"
			dialog "In this war between Monsters"
			dialog "and Humans. This competition"
			dialog "between people, The PVP Mode!"
			dialog "Encourages us all to become"
			dialog "stronger. Come again."
			dialog "We welcome your challenge!"
			close()
		end
	elseif mresulta == 3 then
		dialog "[Gate Keeper]"
		dialog "Welcome"
		dialog "Please double check"
		dialog "That you have the admission or viewing ticket!"
		wait()
		if ((getvar(Invite_For_Duel) == 0) and (getvar(Admission_For_Duel) == 0)) then
			dialog "[Gate Keeper]"
			dialog "Eh? You don't have it? Then I"
			dialog "am sorry, this fight square is"
			dialog "only for people who have"
			dialog "admission or viewing tickets."
			dialog "You cannot come in without it."
			close()
			return
		end
		dialog "[Gate Keeper]"
		dialog "Yes, thank you for participating. Have fun!"
		close()
		moveto("pvp_room",51,23)
	elseif mresulta == 4 then
		dialog "[Gate Keeper]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("geffen_in","PVPNarrator",SPRITE_4_M_02,67,63,4,0,0,"geffen_in_PVPNarrator_6763")
function geffen_in_PVPNarrator_6763()
	dialog "[PVP Narrator]"
	dialog "Hello and welcome!"
	dialog "I am in charge of"
	dialog "explaining the PVP Mode."
	dialog "I am the PVP Narrator!"
	wait()
	local mresulta = menu("What is PVP?","What are the PVP Mode's?","What are the rules for PVP?","Save Position.","End Dialog.")
	if mresulta == 1 then
		dialog "[PVP Narrator]"
		dialog "In short form"
		dialog "PVP means,"
		dialog "' Player VS Player Mode '"
		dialog "It's a unique place for people"
		dialog "To duel with each other."
		wait()
		dialog "[PVP Narrator]"
		dialog "Just tell the"
		dialog "^3355FFGate Keeper^000000"
		dialog "That you want to try. He will"
		dialog "let you into the PVP square."
		wait()
		dialog "[PVP Narrator]"
		dialog "But, You need to be at"
		dialog "least level 31. And you"
		dialog "must pay the 500 zeny"
		dialog "entrance fee in order to"
		dialog "To enter a PVP Fight Square."
		close()
	elseif mresulta == 2 then
		dialog "[PVP Narrator]"
		dialog "When you are qualified, You"
		dialog "can choose one of two Modes."
		dialog "Yoyo Mode, Or"
		dialog "Nightmare Mode."
		wait()
		dialog "[PVP Narrator]"
		dialog "Yoyo Mode is risk free."
		dialog "You can experience PVP"
		dialog "without any restriction or"
		dialog "punishment. It is recommended"
		dialog "that you practice your skills"
		dialog "here before you move on."
		wait()
		dialog "[PVP Narrator]"
		dialog "Nightmare Mode is very"
		dialog "dangerous! Please use caution."
		dialog "You will lose some of your real"
		dialog "EXP when you are defeated. And"
		dialog "There is a small chance that"
		dialog "you will drop some equipment."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, if you win, the"
		dialog "rewards can be great!"
		dialog "To avoid misunderstanding."
		dialog "You should think it over"
		dialog "twice before you go there..."
		dialog "Good Luck!"
		close()
	elseif mresulta == 3 then
		dialog "[PVP Narrator]"
		dialog "Each of the Fight squares"
		dialog "have a row of Narrators to"
		dialog "choose from based on your"
		dialog "qualifications."
		wait()
		dialog "[PVP Narrator]"
		dialog "Each Narrator will ask"
		dialog "which of the five PVP maps"
		dialog "you wish to go to."
		dialog "Choose, and go in!"
		wait()
		dialog "[PVP Narrator]"
		dialog "Each map has a limitation on"
		dialog "the number of people who can"
		dialog "participate. So you will see"
		dialog "figures in the corner showing"
		dialog "'Attendee/total'."
		wait()
		dialog "[PVP Narrator]"
		dialog "Also, there is a hidden EXP"
		dialog "value in PVP mode. This EXP"
		dialog "score will only apply inside"
		dialog "of the PVP zone, so do not"
		dialog "worry."
		wait()
		dialog "[PVP Narrator]"
		dialog "Every player's EXP at the"
		dialog "beginning is usually 5 points."
		dialog "If you win, you will"
		dialog "increse your EXP by 1 point"
		wait()
		dialog "[PVP Narrator]"
		dialog "In the same way, when you"
		dialog "lose... Your EXP will"
		dialog "drop by 5 points."
		dialog "So be careful!"
		wait()
		dialog "[PVP Narrator]"
		dialog "When you are defeated"
		dialog "And your EXP is equal"
		dialog "to or less than 0,"
		dialog "You will be removed from PVP"
		dialog "And your duel is finished!"
		wait()
		dialog "[PVP Narrator]"
		dialog "However, If your EXP is more"
		dialog "than 0. You can still get help"
		dialog "Through other players healing..."
		dialog "Do you get it?"
		wait()
		dialog "[PVP Narrator]"
		dialog "The fighting commands inside of"
		dialog "PVP Are the same as the normal."
		dialog "All the basic controls are the"
		dialog "same."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, there is one thing..."
		dialog "Within the PVP fight square,"
		dialog "And in the PVP fighting zones"
		dialog "You cannot save your position."
		dialog "Remember well... These rules"
		dialog "can help to ensure your victory."
		close()
	elseif mresulta == 4 then
		dialog "[PVP Narrator]"
		dialog "Position saved..."
		dialog "Successfully."
		dialog "Thank you very much, We"
		dialog "will see you again soon."
		close()
		checkpoint("geffen_in",70,59)
	elseif mresulta == 5 then
		dialog "[PVP Narrator]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("geffen_in","Gate Keeper",SPRITE_4_M_01,63,63,4,0,0,"geffen_in_Gate_Keeper_6363")
function geffen_in_Gate_Keeper_6363()
	dialog "[Gate Keeper]"
	dialog "Glad to be of service."
	dialog "I will open the PVP fight"
	dialog "square for you! If you have"
	dialog "any questions about the PVP"
	dialog "modes or rules, Please ask"
	dialog "the Narrator..."
	wait()
	local mresulta = menu("^FF5533' PvP Nightmare Mode'^000000","^3355FF' PvP Yoyo Mode'^000000","^3355FF' PvP Event Mode'^000000","Quit")
	if mresulta == 1 then
		dialog "[Gate Keeper]"
		dialog "I am sorry, but currently the Nightmare mode service is not available."
		dialog "Please use the Yoyo mode instead. We apologize for the inconvenience."
		close()
	elseif mresulta == 2 then
		dialog "[Gate Keeper]"
		dialog "The admission fee is 500 Zeny."
		dialog "Do you want to move"
		dialog "to the Yoyo Mode"
		dialog "fight square?"
		wait()
		local mresultb = menu("Move","Cancel")
		if mresultb == 1 then
			if ((getvar(VAR_MONEY) > 499) and (getvar(VAR_CLEVEL) > 30)) then
				dropgold(500)
				moveto("pvp_y_room",51,23)
			else
				dialog "[Gate Keeper]"
				dialog "Excuse me, but"
				dialog "did you not come prepared?"
				dialog "Double check that you have the"
				dialog "500 Zeny entrance fee, and"
				dialog "that you are at least level 31!"
				close()
			end
		elseif mresultb == 2 then
			dialog "[Gate Keeper]"
			dialog "In this war between Monsters"
			dialog "and Humans. This competition"
			dialog "between people, The PVP Mode!"
			dialog "Encourages us all to become"
			dialog "stronger. Come again."
			dialog "We welcome your challenge!"
			close()
		end
	elseif mresulta == 3 then
		dialog "[Gate Keeper]"
		dialog "Welcome"
		dialog "Please double check"
		dialog "That you have the admission or viewing ticket!"
		wait()
		if ((getvar(Invite_For_Duel) == 0) and (getvar(Admission_For_Duel) == 0)) then
			dialog "[Gate Keeper]"
			dialog "Eh? You don't have it? Then I"
			dialog "am sorry, this fight square is"
			dialog "only for people who have"
			dialog "admission or viewing tickets."
			dialog "You cannot come in without it."
			close()
			return
		end
		dialog "[Gate Keeper]"
		dialog "Yes, thank you for participating. Have fun!"
		close()
		moveto("pvp_room",51,23)
	elseif mresulta == 4 then
		dialog "[Gate Keeper]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("payon_in01","PVPNarrator",SPRITE_4_M_02,142,50,4,0,0,"payon_in01_PVPNarrator_14250")
function payon_in01_PVPNarrator_14250()
	dialog "[PVP Narrator]"
	dialog "Hello and welcome!"
	dialog "I am in charge of"
	dialog "explaining the PVP Mode."
	dialog "I am the PVP Narrator!"
	wait()
	local mresulta = menu("What is PVP?","What are the PVP Mode's?","What are the rules for PVP?","Save Position.","End Dialog.")
	if mresulta == 1 then
		dialog "[PVP Narrator]"
		dialog "In short form"
		dialog "PVP means,"
		dialog "' Player VS Player Mode '"
		dialog "It's a unique place for people"
		dialog "To duel with each other."
		wait()
		dialog "[PVP Narrator]"
		dialog "Just tell the"
		dialog "^3355FFGate Keeper^000000"
		dialog "That you want to try. He will"
		dialog "let you into the PVP square."
		wait()
		dialog "[PVP Narrator]"
		dialog "But, You need to be at"
		dialog "least level 31. And you"
		dialog "must pay the 500 zeny"
		dialog "entrance fee in order to"
		dialog "To enter a PVP Fight Square."
		close()
	elseif mresulta == 2 then
		dialog "[PVP Narrator]"
		dialog "When you are qualified, You"
		dialog "can choose one of two Modes."
		dialog "Yoyo Mode, Or"
		dialog "Nightmare Mode."
		wait()
		dialog "[PVP Narrator]"
		dialog "Yoyo Mode is risk free."
		dialog "You can experience PVP"
		dialog "without any restriction or"
		dialog "punishment. It is recommended"
		dialog "that you practice your skills"
		dialog "here before you move on."
		wait()
		dialog "[PVP Narrator]"
		dialog "Nightmare Mode is very"
		dialog "dangerous! Please use caution."
		dialog "You will lose some of your real"
		dialog "EXP when you are defeated. And"
		dialog "There is a small chance that"
		dialog "you will drop some equipment."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, if you win, the"
		dialog "rewards can be great!"
		dialog "To avoid misunderstanding."
		dialog "You should think it over"
		dialog "twice before you go there..."
		dialog "Good Luck!"
		close()
	elseif mresulta == 3 then
		dialog "[PVP Narrator]"
		dialog "Each of the Fight squares"
		dialog "have a row of Narrators to"
		dialog "choose from based on your"
		dialog "qualifications."
		wait()
		dialog "[PVP Narrator]"
		dialog "Each Narrator will ask"
		dialog "which of the five PVP maps"
		dialog "you wish to go to."
		dialog "Choose, and go in!"
		wait()
		dialog "[PVP Narrator]"
		dialog "Each map has a limitation on"
		dialog "the number of people who can"
		dialog "participate. So you will see"
		dialog "figures in the corner showing"
		dialog "'Attendee/total'."
		wait()
		dialog "[PVP Narrator]"
		dialog "Also, there is a hidden EXP"
		dialog "value in PVP mode. This EXP"
		dialog "score will only apply inside"
		dialog "of the PVP zone, so do not"
		dialog "worry."
		wait()
		dialog "[PVP Narrator]"
		dialog "Every player's EXP at the"
		dialog "beginning is usually 5 points."
		dialog "If you win, you will"
		dialog "increse your EXP by 1 point"
		wait()
		dialog "[PVP Narrator]"
		dialog "In the same way, when you"
		dialog "lose... Your EXP will"
		dialog "drop by 5 points."
		dialog "So be careful!"
		wait()
		dialog "[PVP Narrator]"
		dialog "When you are defeated"
		dialog "And your EXP is equal"
		dialog "to or less than 0,"
		dialog "You will be removed from PVP"
		dialog "And your duel is finished!"
		wait()
		dialog "[PVP Narrator]"
		dialog "However, If your EXP is more"
		dialog "than 0. You can still get help"
		dialog "Through other players healing..."
		dialog "Do you get it?"
		wait()
		dialog "[PVP Narrator]"
		dialog "The fighting commands inside of"
		dialog "PVP Are the same as the normal."
		dialog "All the basic controls are the"
		dialog "same."
		wait()
		dialog "[PVP Narrator]"
		dialog "However, there is one thing..."
		dialog "Within the PVP fight square,"
		dialog "And in the PVP fighting zones"
		dialog "You cannot save your position."
		dialog "Remember well... These rules"
		dialog "can help to ensure your victory."
		close()
	elseif mresulta == 4 then
		dialog "[PVP Narrator]"
		dialog "Position saved..."
		dialog "Successfully."
		dialog "Thank you very much, We"
		dialog "will see you again soon."
		close()
		checkpoint("payon_in01",142,46)
	elseif mresulta == 5 then
		dialog "[PVP Narrator]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("payon_in01","Gate Keeper",SPRITE_4_M_01,140,53,4,0,0,"payon_in01_Gate_Keeper_14053")
function payon_in01_Gate_Keeper_14053()
	dialog "[Gate Keeper]"
	dialog "Glad to be of service."
	dialog "I will open the PVP fight"
	dialog "square for you! If you have"
	dialog "any questions about the PVP"
	dialog "modes or rules, Please ask"
	dialog "the Narrator..."
	wait()
	local mresulta = menu("^FF5533' PvP Nightmare Mode'^000000","^3355FF' PvP Yoyo Mode'^000000","^3355FF' PvP Event Mode'^000000","Quit")
	if mresulta == 1 then
		dialog "[Gate Keeper]"
		dialog "I am sorry, but currently the Nightmare mode service is not available."
		dialog "Please use the Yoyo mode instead. We apologize for the inconvenience."
		close()
	elseif mresulta == 2 then
		dialog "[Gate Keeper]"
		dialog "The admission fee is 500 Zeny."
		dialog "Do you want to move"
		dialog "to the Yoyo Mode"
		dialog "fight square?"
		wait()
		local mresultb = menu("Move","Cancel")
		if mresultb == 1 then
			if ((getvar(VAR_MONEY) > 499) and (getvar(VAR_CLEVEL) > 30)) then
				dropgold(500)
				moveto("pvp_y_room",51,23)
			else
				dialog "[Gate Keeper]"
				dialog "Excuse me, but"
				dialog "did you not come prepared?"
				dialog "Double check that you have the"
				dialog "500 Zeny entrance fee, and"
				dialog "that you are at least level 31!"
				close()
			end
		elseif mresultb == 2 then
			dialog "[Gate Keeper]"
			dialog "In this war between Monsters"
			dialog "and Humans. This competition"
			dialog "between people, The PVP Mode!"
			dialog "Encourages us all to become"
			dialog "stronger. Come again."
			dialog "We welcome your challenge!"
			close()
		end
	elseif mresulta == 3 then
		dialog "[Gate Keeper]"
		dialog "Welcome"
		dialog "Please double check"
		dialog "That you have the admission or viewing ticket!"
		wait()
		if ((getvar(Invite_For_Duel) == 0) and (getvar(Admission_For_Duel) == 0)) then
			dialog "[Gate Keeper]"
			dialog "Eh? You don't have it? Then I"
			dialog "am sorry, this fight square is"
			dialog "only for people who have"
			dialog "admission or viewing tickets."
			dialog "You cannot come in without it."
			close()
			return
		end
		dialog "[Gate Keeper]"
		dialog "Yes, thank you for participating. Have fun!"
		close()
		moveto("pvp_room",51,23)
	elseif mresulta == 4 then
		dialog "[Gate Keeper]"
		dialog "In this war between Monsters"
		dialog "and Humans. This competition"
		dialog "between people, The PVP Mode!"
		dialog "Encourages us all to become"
		dialog "stronger. Come again."
		dialog "We welcome your challenge!"
		close()
	end
end

npc("pvp_y_room","Fight Square Reception Staff",SPRITE_8W_SOLDIER,86,85,4,0,0,"pvp_y_room_Fight_Square_Reception_Staff_8685")
--OnInit:()
--	makewaitingroom("Free for all",0)
--end
--The above function errors due to needing a name, I am still unsure the OnInit Values for helios.

function pvp_y_room_Fight_Square_Reception_Staff_8685()
	local mapcount_1
	local mapcount_2
	local mapcount_3
	local mapcount_4
	local mapcount_5
	local showcount_1
	local showcount_2
	local showcount_3
	local showcount_4
	local showcount_5
	local showcount_exit
	mapcount_1("=","GetPCCount","pvp_y_8-1.gat")
	mapcount_2("=","GetPCCount","pvp_y_8-2.gat")
	mapcount_3("=","GetPCCount","pvp_y_8-3.gat")
	mapcount_4("=","GetPCCount","pvp_y_8-4.gat")
	mapcount_5("=","GetPCCount","pvp_y_8-5.gat")
	showcount_1("=","Prontera [ ","+","mapcount_1","+"," / 128 ]")
	showcount_2("=","Izlude [ ","+","mapcount_2","+"," / 128 ]")
	showcount_3("=","Payon [ ","+","mapcount_3","+"," / 128 ]")
	showcount_4("=","Alberta [ ","+","mapcount_4","+"," / 128 ]")
	showcount_5("=","Morroc [ ","+","mapcount_5","+"," / 128 ]")
	showcount_exit("=","Cancel.")
	while(1) do
		local mresulta = menu("showcount_1"," showcount_2"," showcount_3"," showcount_4 ","showcount_5"," showcount_exit")
		if mresulta == 1 then
			if mapcount_1 >= 128 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_y_8-1",0,0)
			end
		elseif mresulta == 2 then
			if mapcount_2 >= 128 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_y_8-2",0,0)
			end
		elseif mresulta == 3 then
			if mapcount_3 >= 128 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_y_8-3",0,0)
			end
		elseif mresulta == 4 then
			if mapcount_4 >= 128 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_y_8-4",0,0)
			end
		elseif mresulta == 5 then
			if mapcount_5 >= 128 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_y_8-5",0,0)
			end
		elseif mresulta == 6 then
			break
		end
	end
end

npc("pvp_n_room","Fight Square Reception Staff",SPRITE_8W_SOLDIER,30,85,4,5,5,"pvp_n_room_Fight_Square_Reception_Staff_3085")
--OnInit:()
--	makewaitingroom("Free for all",0)
--end
--The above function errors due to needing a name, I am still unsure the OnInit Values for helios.
function pvp_n_room_Fight_Square_Reception_Staff_3085()
	local mapcount_1
	local mapcount_2
	local mapcount_3
	local mapcount_4
	local mapcount_5
	local showcount_1
	local showcount_2
	local showcount_3
	local showcount_4
	local showcount_5
	local showcount_exit
	mapcount_1("=","GetPCCount","pvp_n_8-1.gat")
	mapcount_2("=","GetPCCount","pvp_n_8-2.gat")
	mapcount_3("=","GetPCCount","pvp_n_8-3.gat")
	mapcount_4("=","GetPCCount","pvp_n_8-4.gat")
	mapcount_5("=","GetPCCount","pvp_n_8-5.gat")
	showcount_1("=","Sandwich [ ","+","mapcount_1","+"," / 64 ]")
	showcount_2("=","Lock on [ ","+","mapcount_2","+"," / 32 ]")
	showcount_3("=","Four Room [ ","+","mapcount_3","+"," / 32 ]")
	showcount_4("=","Under cross [ ","+","mapcount_4","+"," / 32 ]")
	showcount_5("=","Compass Room [ ","+","mapcount_5","+"," / 32 ]")
	showcount_exit("=","Cancel.")
	while(1) do
		local mresulta = menu("showcount_1","showcount_2"," showcount_3 ","showcount_4 ","showcount_5 ","showcount_exit")
		if mresulta == 1 then
			if mapcount_1 >= 64 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_n_8-1",0,0)
			end
		elseif mresulta == 2 then
			if mapcount_2 >= 64 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_n_8-2",0,0)
			end
		elseif mresulta == 3 then
			if mapcount_3 >= 64 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_n_8-3",0,0)
			end
		elseif mresulta == 4 then
			if mapcount_4 >= 64 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_n_8-4",0,0)
			end
		elseif mresulta == 5 then
			if mapcount_5 >= 64 then
				dialog "[PVP Fight Square Reception Staff]"
				dialog "This map is currently full."
				wait()
			else
				moveto("pvp_n_8-5",0,0)
			end
		elseif mresulta == 6 then
			break
		end
	end
end

warp("pvp_n_8-4","pvp_n_8_4_Link_pt_link_1-11_33122",33,122,0,2)
function pvp_n_8_4_Link_pt_link_1_11_33122()
	moveto("pvp_n_8_4",0,0)
end

warp("pvp_n_8-4","pvp_n_8_4_Link_pt_link_1-12_6284",62,84,1,1)
function pvp_n_8_4_Link_pt_link_1_12_6284()
	moveto("pvp_n_8-4",0,0)
end

warp("pvp_n_8-4","pvp_n_8_4_Link_pt_link_1-21_4971",49,71,1,1)
function pvp_n_8_4_Link_pt_link_1_21_4971()
	moveto("pvp_n_8-4",0,0)
end

warp("pvp_n_8-4","pvp_n_8_4_Link_pt_link_1-22_56166",56,166,1,1)
function pvp_n_8_4_Link_pt_link_1_22_56166()
	moveto("pvp_n_8-4",0,0)
end

warp("pvp_n_8-4","pvp_n_8_4_Link_pt_link_1-31_99180",99,180,2,1)
function pvp_n_8_4_Link_pt_link_1_31_99180()
	moveto("pvp_n_8-4",0,0)
end

warp("pvp_n_8-4","pvp_n_8_4_Link_pt_link_1-32_13784",137,84,1,1)
function pvp_n_8_4_Link_pt_link_1_32_13784()
	moveto("pvp_n_8-4",0,0)
end

warp("pvp_n_8-4","pvp_n_8_4_Link_pt_link_1-41_15071",150,71,1,1)
function pvp_n_8_4_Link_pt_link_1_41_15071()
	moveto("pvp_n_8-4",0,0)
end

warp("pvp_n_8-4","pvp_n_8_4_Link_pt_link_1-42_144166",144,166,1,1)
function pvp_n_8_4_Link_pt_link_1_42_144166()
	moveto("pvp_n_8-4",0,0)
end

warp("pvp_n_8-5","pvp_n_8_5__a_3030",30,30,3,3)
function pvp_n_8_5__a_3030()
	moveto("pvp_n_8-5",100,100)
end

--========== [PVP EVENT MOD ROOM] ==========
--========== This portion has no been proof read ==========
--npc "pvp_room" "Combat Square Register Staff" 8W_SOLDIER 54 85 4 5 5
-- OnInit:
-- strlocalvar 0 "pvp_close_n_room"
-- strlocalvar 1 "pvp_close_s_room"
-- strlocalvar 2 "pvp_close_w_room"
-- strlocalvar 3 "pvp_close_e_room"
-- SetLocalVar "pvp_close_n_room" 0
-- SetLocalVar "pvp_close_s_room" 0
-- SetLocalVar "pvp_close_w_room" 0
-- SetLocalVar "pvp_close_e_room" 0
-- makewaitingroom "Combat Square players entrance only" 0
-- return
--
-- OnClick:
-- if v[Invite_For_Duel] == 0
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "Eh? How did you get in here?"
-- dialog "This is the entrance for players only."
-- dialog "For details about viewers please proceed to the Register Staff on your right."
-- close
-- return
-- endif
--
-- if ((lv["pvp_close_n_room"] == 1) & (lv["pvp_close_s_room"] == 1) & (lv["pvp_close_w_room"] == 1) & (lv["pvp_close_e_room"] == 1))
-- SetLocalVar "pvp_close_n_room" 0
-- SetLocalVar "pvp_close_s_room" 0
-- SetLocalVar "pvp_close_w_room" 0
-- SetLocalVar "pvp_close_e_room" 0
-- endif
--
-- var name = PcName
-- var random_warp
--
-- choose menu "Combat Square one " "Cancel"
-- case 1
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "'+ name + '"
-- dialog "Are you ready?!"
-- wait
-- choose menu "Yes!" "No!"
-- case 1
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "OK! I will send you inside"
-- dialog "Good luck!"
-- close
-- dropitem Invite_For_Duel 1
--
-- while(1)
-- random_warp = rand 1 4
--
-- if random_warp == 1
-- if lv["pvp_close_n_room"] == 0
-- SetLocalVar "pvp_close_n_room" 1
-- moveto "pvp_2vs2" 40 59
-- exitwhile
-- endif
-- elseif random_warp == 2
-- if lv["pvp_close_s_room"] == 0
-- SetLocalVar "pvp_close_s_room" 1
-- moveto "pvp_2vs2" 59 40
-- exitwhile
-- endif
-- elseif random_warp == 3
-- if lv["pvp_close_w_room"] == 0
-- SetLocalVar "pvp_close_w_room" 1
-- moveto "pvp_2vs2" 20 40
-- exitwhile
-- endif
-- elseif random_warp == 4
-- if lv["pvp_close_e_room"] == 0
-- SetLocalVar "pvp_close_e_room" 1
-- moveto "pvp_2vs2" 40 20
-- exitwhile
-- endif
-- endif
-- endwhile
-- break
--
-- case 2
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "Come back anytime you are ready."
-- close
-- break
-- endchoose
-- break
--
-- case 2
-- break
-- endchoose
-- return
---------------------- [ pvp close room spectator NPC ] --------------------
--npc "pvp_room" "Compete Square Register Staff" 8W_SOLDIER 62 85 4 5 5
-- OnInit:
-- makewaitingroom "Compete Square viewer's entrance" 0
-- return
--
-- OnClick:
-- var name = PcName
-- if v[Admission_For_Duel] == 0
-- dialog "[PVP Compete Square Register Staff]"
-- dialog "This is the entrance for viewers."
-- dialog "For details about players entrance please proceed to the Register Staff on your left."
-- close
-- return
-- endif
--
-- var mapmove
--
-- choose menu "Compete Square one" "Cancel"
-- case 1
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "You got it, thanks for participating. Have fun!"
-- close
-- dropitem Admission_For_Duel 1
--
-- mapmove = rand 1 4
--
-- if mapmove == 1
-- moveto "pvp_2vs2" 39 7
-- elseif mapmove == 2
-- moveto "pvp_2vs2" 39 73
-- elseif mapmove == 3
-- moveto "pvp_2vs2" 7 39
-- else
-- moveto "pvp_2vs2" 73 39
-- endif
-- break
--
-- case 2
-- break
-- endchoose
-- return
--
--npc "pvp_room" "Compete Square Register Staff" 8W_SOLDIER 70 85 4 5 5
-- OnInit:
-- makewaitingroom "Compete Square viewer's entrance" 0
-- return
--
-- OnClick:
-- var name = PcName
-- if v[Admission_For_Duel] == 0
-- dialog "[PVP Compete Square Register Staff]"
-- dialog "This is the entrance for viewers' seats.."
-- dialog "For details about players entrance please proceed to the Register Staff on your left."
-- close
-- return
-- endif
--
-- var mapmove
--
-- choose menu "Compete Square one" "Cancel"
-- case 1
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "You got it, thanks for participating. Have fun!"
-- close
--
-- dropitem Admission_For_Duel 1
--
-- mapmove = rand 1 4
--
-- if mapmove == 1
-- moveto "pvp_2vs2" 39 7
-- elseif mapmove == 2
-- moveto "pvp_2vs2" 39 73
-- elseif mapmove == 3
-- moveto "pvp_2vs2" 7 39
-- else
-- moveto "pvp_2vs2" 73 39
-- endif
-- break
--
-- case 2
--
-- break
-- endchoose
-- return
--
--npc "pvp_room" "Combat Square Register Staff" 8W_SOLDIER 78 85 4 5 5
-- OnInit:
-- makewaitingroom "Compete Square viewer's entrance" 0
-- return
--
-- OnClick:
-- var name = PcName
-- if v[Admission_For_Duel] == 0
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "This is the entrance for viewers' seats.."
-- dialog "For details about players entrance please proceed to the Register Staff on your left."
-- close
-- return
-- endif
--
-- var mapmove
--
-- choose menu "Compete Square one" "Cancel"
-- case 1
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "You got it, thanks for participating. Have fun!"
-- close
--
-- dropitem Admission_For_Duel 1
--
-- mapmove = rand 1 4
--
-- if mapmove == 1
-- moveto "pvp_2vs2" 39 7
-- elseif mapmove == 2
-- moveto "pvp_2vs2" 39 73
-- elseif mapmove == 3
-- moveto "pvp_2vs2" 7 39
-- else
-- moveto "pvp_2vs2" 73 39
-- endif
-- break
--
-- case 2
-- break
-- endchoose
-- return
--
--npc "pvp_room" "Combat Square Register Staff" 8W_SOLDIER 86 85 4 5 5
-- OnInit:
-- makewaitingroom "Compete Square viewer's entrance" 0
-- return
--
-- OnClick:
-- var name = PcName
-- if v[Admission_For_Duel] == 0
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "This is the entrance for viewers' seats.."
-- dialog "For details about players entrance please proceed to the Register Staff on your left."
-- close
-- return
-- endif
--
-- var mapmove
--
-- choose menu "Compete Square one" "Cancel"
-- case 1
-- dialog "[PVP Combat Square Register Staff]"
-- dialog "You got it, thanks for participating. Have fun!"
-- close
--
-- dropitem Admission_For_Duel 1
--
-- mapmove = rand 1 4
--
-- if mapmove == 1
-- moveto "pvp_2vs2" 39 7
-- elseif mapmove == 2
-- moveto "pvp_2vs2" 39 73
-- elseif mapmove == 3
-- moveto "pvp_2vs2" 7 39
-- else
-- moveto "pvp_2vs2" 73 39
-- endif
-- break
--
-- case 2
-- break
-- endchoose
-- return
---------------------- [ pvp close room warp NPC ] --------------------
--warp "pvp_2vs2" "Combat Square Staff" 5 4 1 1
-- OnTouch:
-- dialog "[Combat Square Staff]"
-- dialog "May I help you?"
--
-- choose menu "To the center viewer seat." "Leave Combat Square."
-- case 1
-- moveto "pvp_2vs2" 38 38
-- break
--
-- case 2
-- moveto "pvp_room" 84 39
-- break
-- endchoose
-- return
--
--warp "pvp_2vs2" "Combat Square Staff" 5 74 1 1
-- OnTouch:
-- dialog "[Combat Square Staff]"
-- dialog "May I help you?"
--
-- choose menu "To the center viewer seat." "Leave Combat Square."
-- case 1
-- moveto "pvp_2vs2" 38 38
-- break
--
-- case 2
-- moveto "pvp_room" 84 39
-- break
-- endchoose
-- return
--
--warp "pvp_2vs2" "Combat Square Staff" 74 74 1 1
-- OnTouch:
-- dialog "[Combat Square Staff]"
-- dialog "May I help you?"
--
-- choose menu "To the center viewer seat." "Leave Combat Square."
-- case 1
-- moveto "pvp_2vs2" 38 38
-- break
--
-- case 2
-- moveto "pvp_room" 84 39
-- break
-- endchoose
-- return
--
--warp "pvp_2vs2" "Combat Square Staff" 74 5 1 1
-- OnTouch:
-- dialog "[Combat Square Staff]"
-- dialog "May I help you?"
--
-- choose menu "To the center viewer seat." "Leave Combat Square."
-- case 1
-- moveto "pvp_2vs2" 38 38
-- break
--
-- case 2
-- moveto "pvp_room" 84 39
-- break
-- endchoose
-- return
--
--warp "pvp_2vs2" "Combat Square Staff" 40 40 1 1
-- OnTouch:
-- var mapmove
-- dialog "[Combat Square Staff]"
-- dialog "May I help you?"
--
-- choose menu "To the side viewer seat." "Leave Combat Square."
-- case 1
-- mapmove = rand 1 4
--
-- if mapmove == 1
-- moveto "pvp_2vs2" 39 7
-- elseif mapmove == 2
-- moveto "pvp_2vs2" 39 73
-- elseif mapmove == 3
-- moveto "pvp_2vs2" 7 39
-- else
-- moveto "pvp_2vs2" 73 39
-- endif
-- break
--
-- case 2
-- moveto "pvp_c_room" 84 39
-- break
-- endchoose
-- return
---------------------- [ pvp close room out NPC ] --------------------
--warp "pvp_room" "out" 51 19 4 2
-- OnTouch:
-- dialog "[Combat Square Staff]"
-- dialog "Did you have fun in Combat Square?"
-- dialog "May I ask where you want to go?"
-- wait
-- choose menu "prontera." "morocc." "geffen." "payon." "alberta." "Cancel."
-- case 1
-- moveto "prontera" 107 60
-- break
--
-- case 2
-- moveto "morocc" 157 96
-- break
--
-- case 3
-- moveto "geffen" 120 36
-- break
--
-- case 4
-- moveto "payon" 96 100
-- break
--
-- case 5
-- moveto "alberta" 41 243
-- break
--
-- case 6
--
-- break
-- endchoose
--
-- return
