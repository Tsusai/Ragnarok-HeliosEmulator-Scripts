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

npc("prontera","Mailbox",spr_2_POSTBOX,146,86,0,0,0,"prontera_Mailbox_14686")
function prontera_Mailbox_14686()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("prontera","Mailbox",spr_2_POSTBOX,275,213,0,0,0,"prontera_Mailbox_275213")
function prontera_Mailbox_275213()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("prontera","Mailbox",spr_2_POSTBOX,34,212,0,0,0,"prontera_Mailbox_34212")
function prontera_Mailbox_34212()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("izlude","Mailbox",spr_2_POSTBOX,136,94,0,0,0,"izlude_Mailbox_13694")
function izlude_Mailbox_13694()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("morocc","Mailbox",spr_2_POSTBOX,166,110,0,0,0,"morocc_Mailbox_166110")
function morocc_Mailbox_166110()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("morocc","Mailbox",spr_2_POSTBOX,168,262,0,0,0,"morocc_Mailbox_168262")
function morocc_Mailbox_168262()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("geffen","Mailbox",spr_2_POSTBOX,115,67,0,0,0,"geffen_Mailbox_11567")
function geffen_Mailbox_11567()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("geffen","Mailbox",spr_2_POSTBOX,199,125,0,0,0,"geffen_Mailbox_199125")
function geffen_Mailbox_199125()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("payon","Mailbox",spr_2_POSTBOX,191,104,0,0,0,"payon_Mailbox_191104")
function payon_Mailbox_191104()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("payon","Mailbox",spr_2_POSTBOX,171,226,0,0,0,"payon_Mailbox_171226")
function payon_Mailbox_171226()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("pay_arche","Mailbox",spr_2_POSTBOX,55,127,0,0,0,"pay_arche_Mailbox_55127")
function pay_arche_Mailbox_55127()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("alberta","Mailbox",spr_2_POSTBOX,90,60,0,0,0,"alberta_Mailbox_9060")
function alberta_Mailbox_9060()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("alberta","Mailbox",spr_2_POSTBOX,30,240,0,0,0,"alberta_Mailbox_30240")
function alberta_Mailbox_30240()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("aldebaran","Mailbox",spr_2_POSTBOX,135,122,0,0,0,"aldebaran_Mailbox_135122")
function aldebaran_Mailbox_135122()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("yuno","Mailbox",spr_2_POSTBOX,148,187,0,0,0,"yuno_Mailbox_148187")
function yuno_Mailbox_148187()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("yuno","Mailbox",spr_2_POSTBOX,332,108,0,0,0,"yuno_Mailbox_332108")
function yuno_Mailbox_332108()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("lighthalzen","Mailbox",spr_2_POSTBOX,164,85,0,0,0,"lighthalzen_Mailbox_16485")
function lighthalzen_Mailbox_16485()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("lighthalzen","Mailbox",spr_2_POSTBOX,196,320,0,0,0,"lighthalzen_Mailbox_196320")
function lighthalzen_Mailbox_196320()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("einbroch","Mailbox",spr_2_POSTBOX,231,215,0,0,0,"einbroch_Mailbox_231215")
function einbroch_Mailbox_231215()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("einbroch","Mailbox",spr_2_POSTBOX,77,202,0,0,0,"einbroch_Mailbox_77202")
function einbroch_Mailbox_77202()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("einbech","Mailbox",spr_2_POSTBOX,182,124,0,0,0,"einbech_Mailbox_182124")
function einbech_Mailbox_182124()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("comodo","Mailbox",spr_2_POSTBOX,200,150,0,0,0,"comodo_Mailbox_200150")
function comodo_Mailbox_200150()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("umbala","Mailbox",spr_2_POSTBOX,104,155,0,0,0,"umbala_Mailbox_104155")
function umbala_Mailbox_104155()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("amatsu","Mailbox",spr_2_POSTBOX,102,146,0,0,0,"amatsu_Mailbox_102146")
function amatsu_Mailbox_102146()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("gonryun","Mailbox",spr_2_POSTBOX,152,117,0,0,0,"gonryun_Mailbox_152117")
function gonryun_Mailbox_152117()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("ayothaya","Mailbox",spr_2_POSTBOX,205,169,0,0,0,"ayothaya_Mailbox_205169")
function ayothaya_Mailbox_205169()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("louyang","Mailbox",spr_2_POSTBOX,204,100,0,0,0,"louyang_Mailbox_204100")
function louyang_Mailbox_204100()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("hugel","Mailbox",spr_HIDDEN_NPC,86,168,0,0,0,"hugel_Mailbox_86168")
function hugel_Mailbox_86168()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("rachel","Mailbox",spr_2_POSTBOX,122,146,0,0,0,"rachel_Mailbox_122146")
function rachel_Mailbox_122146()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end

npc("veins","Mailbox",spr_2_POSTBOX,218,123,0,0,0,"veins_Mailbox_218123")
function veins_Mailbox_218123()
	dialog "[Mailbox]"
	dialog "To use the mailbox service, you are required"
	dialog "to pay 130 zeny."
	dialog "Would you like to use the service?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 130) then
			dialog "[Mailbox]"
			dialog "I am sorry, but you do not have enough money."
			dialog "To use the mailbox service, you are required"
			dialog "to pay 130 zeny."
			close()
		else
			dialog "[Mailbox]"
			dialog "Thank you, please come again."
			dropgold(130)
			OpenMailing()
			close()
		end
	elseif mresulta == 2 then
		dialog "[Mailbox]"
		dialog "Thank you, please come again."
		close()
	end
end
