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

npc("morocc","Auction Hall Manager",SPRITE_4W_M_02,300,10,0,0,0,"morocc_Auction_Hall_Manager_30010")
function morocc_Auction_Hall_Manager_30010()
	dlgwrite(1,10000)
	local temp = input
	if (temp == 1854) then
		dialog "[Manager]"
		dialog "Off? On?"
		wait()
		local mresulta = menu("On","Off.")
		if mresulta == 1 then
			enablenpc "Auction Hall Guide_moc"
			dialog "On."
			close()
		elseif mresulta == 2 then
			disablenpc "Auction Hall Guide_moc"
			dialog "Off."
			close()
		end
	end
end

npc("prontera","Auction Hall Manager",SPRITE_4W_M_02,300,10,0,0,0,"prontera_Auction_Hall_Manager_30010")
function prontera_Auction_Hall_Manager_30010()
	dlgwrite(1,10000)
	local temp = input
	if (temp == 1854) then
		dialog "[Manager]"
		dialog "Off? On?"
		wait()
		local mresulta = menu("On","Off.")
		if mresulta == 1 then
			enablenpc "Auction Hall Guide_prt"
			dialog "On."
			close()
		elseif mresulta == 2 then
			disablenpc "Auction Hall Guide_prt"
			dialog "Off."
			close()
		end
	end
end

npc("yuno","Auction Hall Manager",SPRITE_4W_M_02,300,10,0,0,0,"yuno_Auction_Hall_Manager_30010")
function yuno_Auction_Hall_Manager_30010()
	dlgwrite(1,10000)
	local temp = input
	if (temp == 1854) then
		dialog "[Manager]"
		dialog "Off? On?"
		wait()
		local mresulta = menu("On","Off.")
		if mresulta == 1 then
			enablenpc "Auction Hall Guide_yuno"
			dialog "On."
			close()
		elseif mresulta == 2 then
			disablenpc "Auction Hall Guide_yuno"
			dialog "Off."
			close()
		end
	end
end

npc("lighthalzen","Auction Hall Manager",SPRITE_4W_M_02,300,10,0,0,0,"lighthalzen_Auction_Hall_Manager_30010")
function lighthalzen_Auction_Hall_Manager_30010()
	dlgwrite(1,10000)
	local temp = input
	if (temp == 1854) then
		dialog "[Manager]"
		dialog "Off? On?"
		wait()
		local mresulta = menu("On","Off.")
		if mresulta == 1 then
			enablenpc "Auction Hall Guide_lhz"
			dialog "On."
			close()
		elseif mresulta == 2 then
			disablenpc "Auction Hall Guide_lhz"
			dialog "Off."
			close()
		end
	end
end

npc("morocc","Auction Hall Guide_moc",SPRITE_4W_M_02,182,95,6,0,0,"morocc_Auction_Hall_Guide_moc_18295")
function morocc_Auction_Hall_Guide_moc_18295()
	dialog "[Auction Hall Guide]"
	dialog "Would you like to enter the Auction Hall?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Hall Guide]"
		dialog "Enjoy your auction~"
		close()
		moveto("auction_01",179,53)
		return
	elseif mresulta == 2 then
		dialog "[Auction Hall Guide]"
		dialog "See you later."
		close()
	end
end

warp("auction_01","auction_01_Auction_Hall_Entrance_moc_18049",180,49,1,1)
function auction_01_Auction_Hall_Entrance_moc_18049()
	moveto("morocc",182,92)
end

npc("prontera","Auction Hall Guide_prt",SPRITE_4_F_KAFRA1,218,120,4,0,0,"prontera_Auction_Hall_Guide_prt_218120")
function prontera_Auction_Hall_Guide_prt_218120()
	dialog "[Auction Hall Guide]"
	dialog "Would you like to enter the Auction Hall?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Hall Guide]"
		dialog "Enjoy your auction."
		close()
		moveto("auction_01",21,43)
		return
	elseif mresulta == 2 then
		dialog "[Auction Hall Guide]"
		dialog "See you later."
		close()
	end
end

warp("auction_01","auction_01_Auction_Hall_Entrance_moc_2237",22,37,1,1)
function auction_01_Auction_Hall_Entrance_moc_2237()
	moveto("prontera",214,120)
end

npc("yuno","Auction Hall Guide_yuno",SPRITE_4_F_01,129,116,0,0,0,"yuno_Auction_Hall_Guide_yuno_129116")
function yuno_Auction_Hall_Guide_yuno_129116()
	dialog "[Auction Hall Guide]"
	dialog "Would you like to enter the Auction Hall?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Hall Guide]"
		dialog "Enjoy your auction."
		close()
		moveto("auction_02",151,23)
		return
	elseif mresulta == 2 then
		dialog "[Auction Hall Guide]"
		dialog "See you later."
		close()
	end
end

warp("auction_02","auction_02_Auction_Hall_Entrance_moc_15117",151,17,1,1)
function auction_02_Auction_Hall_Entrance_moc_15117()
	moveto("yuno",132,119)
end

npc("lighthalzen","Auction Hall Guide_lhz",SPRITE_4_M_ZONDAOYAJI,205,169,6,0,0,"lighthalzen_Auction_Hall_Guide_lhz_205169")
function lighthalzen_Auction_Hall_Guide_lhz_205169()
	dialog "[Auction Hall Guide]"
	dialog "Would you like to enter the Auction Hall?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Hall Guide]"
		dialog "Enjoy your auction~"
		close()
		moveto("auction_02",43,24)
		return
	elseif mresulta == 2 then
		dialog "[Auction Hall Guide]"
		dialog "See you later."
		close()
	end
end

warp("auction_02","auction_02_Auction_Hall_Entrance_moc_4317",43,17,1,1)
function auction_02_Auction_Hall_Entrance_moc_4317()
	moveto("lighthalzen",209,169)
end

npc("morocc","Information Post_moc",SPRITE_2_BULLETIN_BOARD,180,97,6,0,0,"morocc_Information_Post_moc_18097")
function morocc_Information_Post_moc_18097()
	dialog "[Information]"
	dialog "Auction Warp Guide"
	close()
end

npc("prontera","Information Post_prt",SPRITE_2_BULLETIN_BOARD,216,120,4,0,0,"prontera_Information_Post_prt_216120")
function prontera_Information_Post_prt_216120()
	dialog "[Information]"
	dialog "Auction Warp Guide"
	close()
end

npc("yuno","Information Post_yuno",SPRITE_2_BULLETIN_BOARD,131,116,0,0,0,"yuno_Information_Post_yuno_131116")
function yuno_Information_Post_yuno_131116()
	dialog "[Information]"
	dialog "Auction Warp Guide"
	close()
end

npc("lighthalzen","Information Post_lhz",SPRITE_2_BULLETIN_BOARD,207,169,6,0,0,"lighthalzen_Information_Post_lhz_207169")
function lighthalzen_Information_Post_lhz_207169()
	dialog "[Information]"
	dialog "Auction Warp Guide"
	close()
end

npc("auction_01","Auction Broker_moc1",SPRITE_4W_M_02,182,68,6,0,0,"auction_01_Auction_Broker_moc1_18268")
function auction_01_Auction_Broker_moc1_18268()
	dialog "[Auction Broker]"
	dialog "We have brought many good items this time."
	dialog "Would you like to take a look at them?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Be my guest!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Alright, see you later."
		close()
	end
end

npc("auction_01","Auction Broker_moc2",SPRITE_4W_M_03,182,75,0,0,0,"auction_01_Auction_Broker_moc2_18275")
function auction_01_Auction_Broker_moc2_18275()
	dialog "[Auction Broker]"
	dialog "We have brought many good items this time."
	dialog "Would you like to take a look at them?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Be my guest!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Alright, see you later."
		close()
	end
end

npc("auction_01","Auction Broker_moc3",SPRITE_4W_M_02,177,75,2,0,0,"auction_01_Auction_Broker_moc3_17775")
function auction_01_Auction_Broker_moc3_17775()
	dialog "[Auction Broker]"
	dialog "We have brought many good items this time."
	dialog "Would you like to take a look at them?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Be my guest!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Alright, see you later."
		close()
	end
end

npc("auction_01","Auction Broker_moc4",SPRITE_4W_M_03,177,68,4,0,0,"auction_01_Auction_Broker_moc4_17768")
function auction_01_Auction_Broker_moc4_17768()
	dialog "[Auction Broker]"
	dialog "We have brought many good items this time."
	dialog "Would you like to take a look at them?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Be my guest!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Alright, see you later."
		close()
	end
end

npc("auction_01","Auction Broker_prt1",SPRITE_4_F_KAFRA1,21,74,4,0,0,"auction_01_Auction_Broker_prt1_2174")
function auction_01_Auction_Broker_prt1_2174()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Would you like to view the goods?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_01","Auction Broker_prt2",SPRITE_4_F_KAFRA2,27,78,4,0,0,"auction_01_Auction_Broker_prt2_2778")
function auction_01_Auction_Broker_prt2_2778()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Would you like to view the goods?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_01","Auction Broker_prt3",SPRITE_4_F_KAFRA3,16,78,4,0,0,"auction_01_Auction_Broker_prt3_1678")
function auction_01_Auction_Broker_prt3_1678()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Would you like to view the goods?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_02","Auction Broker_yuno1",SPRITE_4_F_01,158,47,6,0,0,"auction_02_Auction_Broker_yuno1_15847")
function auction_02_Auction_Broker_yuno1_15847()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Is there any special item that you are looking for?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_02","Auction Broker_yuno2",SPRITE_4_F_01,145,47,2,0,0,"auction_02_Auction_Broker_yuno2_14547")
function auction_02_Auction_Broker_yuno2_14547()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Is there any special item that you are looking for?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_02","Auction Broker_yuno3",SPRITE_4_F_01,151,54,0,0,0,"auction_02_Auction_Broker_yuno3_15154")
function auction_02_Auction_Broker_yuno3_15154()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Is there any special item that you are looking for?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_02","Auction Broker_yuno4",SPRITE_4_F_01,152,41,4,0,0,"auction_02_Auction_Broker_yuno4_15241")
function auction_02_Auction_Broker_yuno4_15241()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Is there any special item that you are looking for?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_02","Auction Broker_lhz1",SPRITE_4_M_ZONDAMAN,57,46,2,0,0,"auction_02_Auction_Broker_lhz1_5746")
function auction_02_Auction_Broker_lhz1_5746()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Is there any special item that you are looking for?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_02","Auction Broker_lhz2",SPRITE_4_M_ZONDAMAN,31,46,6,0,0,"auction_02_Auction_Broker_lhz2_3146")
function auction_02_Auction_Broker_lhz2_3146()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Is there any special item that you are looking for?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end

npc("auction_02","Auction Broker_lhz3",SPRITE_4_M_ZONDAOYAJI,43,65,4,0,0,"auction_02_Auction_Broker_lhz3_4365")
function auction_02_Auction_Broker_lhz3_4365()
	dialog "[Auction Broker]"
	dialog "Welcome to the Auction Hall."
	dialog "Is there any special item that you are looking for?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Auction Broker]"
		dialog "Enjoy your auction!"
		OpenAuction()
		close()
	elseif mresulta == 2 then
		dialog "[Auction Broker]"
		dialog "Please come again."
		close()
	end
end
