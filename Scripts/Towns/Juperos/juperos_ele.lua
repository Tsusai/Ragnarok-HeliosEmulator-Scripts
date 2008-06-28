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

npc("jupe_ele_r","Switch#ufe",SPRITE_CLEAR_NPC,51,98,0,0,0,"jupe_ele_r_Switch#ufe_5198")
--[[OnCommand: "off"
	disablenpc "Switch#ufe"
end

OnCommand: "on"
	enablenpc "Switch#ufe"
end
]]--
function jupe_ele_r_Switch#ufe_5198()
	local gameing2 = GetGlobalVar "050420_jupe_ele_r"
	if (gameing2 == 1) then
		dialog "^3355FFIt's some sort of"
		dialog "lever that looks like"
		dialog "it was already pulled"
		dialog "by someone else.^000000"
		close()
		return
	else
		showimage("5.bmp",2)
		dialog "^3355FFIt's some sort of"
		dialog "lever that's located"
		dialog "next to four empty slots.^000000"
		wait()
		local mresulta = menu("Pull the lever.","Leave it alone.")
		if mresulta == 1 then
			dialog "^3355FF*Snap Snap*^000000"
			wait()
			dialog "^3355FFYou pull the lever,"
			dialog "but nothing happened."
			dialog "You probably need to"
			dialog "insert the correct objects"
			dialog "into the slots in order"
			dialog "for the lever to operate.^000000"
			wait()
			if ((getvar(Piece_Of_Crest1) > 0) and (getvar(Piece_Of_Crest4) > 0) and (getvar(Piece_Of_Crest2) > 0) and (getvar(Piece_Of_Crest3) > 0)) then
				local mresultb = menu("Insert all of your Crest Pieces.")
				if mresultb == 1 then
					dialog "^3300FF*Snap!*^000000"
					dialog "^3300FFStrangely enough,"
					dialog "all four of the Crest"
					dialog "Pieces fit perfectly into"
					dialog "the slots and begin to"
					dialog "emit a strange light.^000000"
					showimage("5-1.bmp",2)
					ShowEffect("Switch#ufe","EF_SPHERE")
					dropitem("Piece_Of_Crest1",1)
					dropitem("Piece_Of_Crest4",1)
					dropitem("Piece_Of_Crest2",1)
					dropitem("Piece_Of_Crest3",1)
					wait()
					local mresultc = menu("Pull out the Crest Pieces.","Pull the lever.")
					if mresultc == 1 then
						showimage("5.bmp",2)
						dialog "^3355FFYou pull out all"
						dialog "the Crest Pieces"
						dialog "that you inserted"
						dialog "into the slots.^000000"
						getitem("Piece_Of_Crest1",1)
						getitem("Piece_Of_Crest4",1)
						getitem("Piece_Of_Crest2",1)
						getitem("Piece_Of_Crest3",1)
						close()
						showimage("5.bmp",255)
						return
					elseif mresultc == 2 then
						local gameing = GetGlobalVar "050420_jupe_ele_r"
						if (gameing == 1) then
							dialog "^3355FFIt's strange,"
							dialog "but this lever has"
							dialog "already been pulled.^000000"
							close()
							showimage("5.bmp",255)
							return
						else
							dialog "^3355FFOnce you pull the lever,"
							dialog "the Crest Piece slots are"
							dialog "suddenly covered, making"
							dialog "them irretrievable, and the"
							dialog "ground begins to shake"
							dialog "violently. This isn't normal!^000000"
							wait()
							SetGlobalVar("050420_jupe_ele_r",1)
							cmdothernpc("Switch#ufe","off","//","Switch","NPC","다운")
							cmdothernpc("Switch On#ufe","on","//","정지된","Switch","NPC","온")
							InitTimer("//Guard","몬스터","나오는","타이머","시작")
							ShowEffect(,563)
							sound("earth_quake.wav",2,0,0)
							close()
							showimage("5-1.bmp",255)
							return
						end
					end
					close()
				end
			elseif ((getvar(Piece_Of_Crest1) > 0) or (getvar(Piece_Of_Crest2) > 0) or (getvar(Piece_Of_Crest3) > 0) or (getvar(Piece_Of_Crest4) > 0)) then
				local mresultb = menu("Insert Crest Pieces.")
				if mresultb == 1 then
					dialog "^3355FFRight now, you don't"
					dialog "have enough Crest Pieces"
					dialog "to place into all four of these"
					dialog "slots. You'll need to find and^FFFFFF ^3355FF bring them all to make this work.^000000"
					close()
					showimage("5-1.bmp",255)
					return
				end
			else
				dialog "^3355FFYou need to find"
				dialog "some kind of object"
				dialog "that you can fit into"
				dialog "each of these four slots...^000000"
				close()
				showimage("5-1.bmp",255)
				return
			end
			close()
		elseif mresulta == 2 then
			dialog "^3355FFWho knows what"
			dialog "this lever may do?"
			dialog "You'll never know unless"
			dialog "you have the courage to try.^000000"
			close()
			showimage("5.bmp",255)
			return
		end
		close()
	end
end

OnTimer:(2000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"My descendents...")
end

OnTimer:(3000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"Do you want to know why this city was buried beneath the earth...?")
end

OnTimer:(7000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"If so, follow my voice...")
end

OnTimer:(10000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"I shall let you see for yourself what you desire to know...")
end

OnTimer:(17000)
	broadcastinmap2("CC6600","FW_NORMAL",12,0,0,"Overcome all the hallucinations.")
end

OnTimer:(20000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Open your eyes and see past all of the lies.")
end

OnTimer:(23000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I can only maintain this vision for you for 20 minutes.")
	cmdothernpc("Elevator Guard1#ufe","on")
end

OnTimer:(23000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Look! And remember!")
end

npc("jupe_ele_r","Switch On#ufe",SPRITE_CLEAR_NPC,51,98,0,0,0,"jupe_ele_r_Switch_On#ufe_5198")
OnInit:()
	disablenpc "Switch On#ufe"
end

OnCommand: "off"
	disablenpc "Switch On#ufe"
end

OnCommand: "on"
	enablenpc "Switch On#ufe"
end

function jupe_ele_r_Switch_On#ufe_5198()
	dialog "^3355FFIt seems like"
	dialog "someone else is"
	dialog "using this machine...^000000"
	close()
end

hiddenwarp("jupe_ele_r","jupe_ele_r_Elevator_Guard1#ufe_1050",10,50,0,0)
OnInit:()
	disablenpc "Elevator Guard1#ufe"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Elevator Guard1#ufe"
end

OnCommand: "on"
	InitTimer()
end

OnTimer:(1000)
	callmonster("jupe_ele_r","DIMIK","Guard",44,99)
	--cobonote: this return wasn't here before
end

OnTimer:(1200)
	callmonster("jupe_ele_r","VENATU","Guard",55,99)
end

OnTimer:(1400)
	callmonster("jupe_ele_r","G_POTON_CANON","Guard",45,84)
end

OnTimer:(1600)
	callmonster("jupe_ele_r","VENATU","Guard",54,84)
end

OnTimer:(1800)
	callmonster("jupe_ele_r","DIMIK","Guard",45,99)
end

OnTimer:(2000)
	callmonster("jupe_ele_r","G_POTON_CANON","Guard",54,99)
end

OnTimer:(2200)
	callmonster("jupe_ele_r","DIMIK","Guard",48,84)
end

OnTimer:(2400)
	callmonster("jupe_ele_r","G_POTON_CANON","Guard",52,84)
end

OnTimer:(2600)
	callmonster("jupe_ele_r","G_ARCHDAM","Chief Guard",50,84)
end

OnTimer:(120000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"It is disappointing to see that you are too weak to even defeat a hallucination...")
	cmdothernpc("Switch#ufe","on")
	cmdothernpc("Switch On#ufe","off")
	cmdothernpc("Annihilation#ufe","on")
	SetGlobalVar("050420_jupe_ele_r",0)
end

OnTimer:(120005,"//",1400002)
	cmdothernpc("Elevator Guard1#ufe","reset")
	stoptimer()
end

OnMyMobDead:()
	if (npcv "Elevator Guard1#ufe" [VAR_MYMOBCOUNT] < 1) then
		SetGlobalVar("050420_jupe_ele_r",0)
		cmdothernpc("Elevator Guard1#ufe","reset")
		cmdothernpc("Elevator Safety#ufe","on")
		stoptimer()
	end
end

hiddenwarp("jupe_ele_r","jupe_ele_r_Elevator_Safety#ufe_1052",10,52,0,0)
OnInit:()
	disablenpc "Elevator Safety#ufe"
end

OnCommand: "off"
	disablenpc "Elevator Safety#ufe"
end

OnCommand: "on"
	enablenpc "Elevator Safety#ufe"
	InitTimer()
end

OnTimer:(5000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"Those of you who have defeated the hallucination, step forward.")
	sound("earth_quake.wav",2,0,0)
end

OnTimer:(8000)
	cmdothernpc("Elevator On#ufe","on")
end

OnTimer:(10000)
	cmdothernpc("Elevator Safety#ufe","off")
	stoptimer()
end

hiddenwarp("jupe_ele_r","jupe_ele_r_Annihilation#ufe_5089",50,89,35,50)
OnInit:()
	disablenpc "Annihilation#ufe"
end

OnCommand: "on"
	disablenpc "Annihilation#ufe"
	InitTimer()
end

OnCommand: "off"
	disablenpc "Annihilation#ufe"
end

function jupe_ele_r_Annihilation#ufe_5089()
	hpdrain(99)
	spdrain(100)
end

OnTimer:(1000)
	warpallpcinthemap("jupe_gate",49,138)
	warpallpcinthemap("jupe_gate",49,138)
	--cmdothernpc "Annihilation#ufe" "off"
end

OnTimer:(1100)
	enablenpc "Annihilation#ufe"
end

OnTimer:(1600)
	cmdothernpc("Elevator Escape#ufe","on")
end

OnTimer:(3000)
	disablenpc "Annihilation#ufe"
	cmdothernpc("Elevator Escape#ufe","off")
end

hiddenwarp("jupe_ele_r","jupe_ele_r_Elevator_Escape#ufe_5089",50,89,35,50)
OnInit:()
	disablenpc "Elevator Escape#ufe"
end

OnCommand: "off"
	disablenpc "Elevator Escape#ufe"
end

OnCommand: "on"
	enablenpc "Elevator Escape#ufe"
end

function jupe_ele_r_Elevator_Escape#ufe_5089()
	warpallpcinthemap("jupe_gate",49,138)
end

hiddenwarp("jupe_ele_r","jupe_ele_r_Elevator_On#ufe_1054",10,54,0,0)
OnInit:()
	disablenpc "Elevator On#ufe"
end

OnCommand: "off"
	disablenpc "Elevator On#ufe"
end

OnCommand: "on"
	enablenpc "Elevator On#ufe"
	InitTimer()
end

OnTimer:(1000)
	warpallpcinthemap("jupe_ele",42,47)
	SetGlobalVar("050425_ufe_elev",0)
	cmdothernpc("TimeOut#ufe","on")
	cmdothernpc("Guard-1#ufe","on")
end

OnTimer:(10000)
	disablenpc "Elevator On#ufe"
end

npc("jupe_ele","TimeOut#ufe",SPRITE_CLEAR_NPC,14,6,1,0,0,"jupe_ele_TimeOut#ufe_146")
OnCommand: "on"
	InitTimer()
	local mapcount
end

OnCommand: "off"
	stoptimer()
end

OnTimer:(59000)
	mapcount("=","GetPCCount","jupe_ele.gat")
	if mapcount == 0 then
		SetGlobalVar("050425_ufe_elev",5)
		cmdothernpc("Guard-1#ufe","off")
		cmdothernpc("Guard-2#ufe","off")
		cmdothernpc("Guard-3#ufe","off")
		cmdothernpc("Guard-4#ufe","off")
		cmdothernpc("Guard-1#ufe","reset")
		cmdothernpc("Guard-2#ufe","reset")
		cmdothernpc("Guard-3#ufe","reset")
		cmdothernpc("Guard-4#ufe","reset")
		stoptimer()
		SetGlobalVar("050425_ufe_elev",0)
		SetGlobalVar("050420_jupe_ele_r",0)
		cmdothernpc("Switch On#ufe","off")
		cmdothernpc("Switch#ufe","on")
	end
end

OnTimer:(120000)
	cmdothernpc("Guard-1#ufe","off")
	cmdothernpc("Guard-2#ufe","off")
	cmdothernpc("Guard-3#ufe","off")
	cmdothernpc("Guard-4#ufe","off")
	cmdothernpc("Guard-1#ufe","reset")
	cmdothernpc("Guard-2#ufe","reset")
	cmdothernpc("Guard-3#ufe","reset")
	cmdothernpc("Guard-4#ufe","reset")
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"In the end, you can't even overcome your inner fear...")
end

OnTimer:(122000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"You have never encountered your inner fears, have you?")
end

OnTimer:(125000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Did you expect this would be the end of the hallucination?")
end

OnTimer:(127000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"What if the voice you're hearing is also a hallucination?")
end

OnTimer:(129000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"What if you're just dreaming all of this?")
end

OnTimer:(131000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"What if the existence of this city is a lie?")
end

OnTimer:(133000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Are you even real?")
end

OnTimer:(134000)
	warpallpcinthemap("jupe_gate",49,138)
end

OnTimer:(135000)
	warpallpcinthemap("jupe_gate",49,138)
end

OnTimer:(132000)
	cmdothernpc("GuardEnd#ufe","off")
	cmdothernpc("4F Enter#ufe","off")
	cmdothernpc("TimeOut#ufe","off")
	SetGlobalVar("050425_ufe_elev",0)
	SetGlobalVar("050420_jupe_ele_r",0)
	cmdothernpc("Switch On#ufe","off")
	cmdothernpc("Switch#ufe","on")
	stoptimer()
end

npc("jupe_ele","Guard-1#ufe",SPRITE_CLEAR_NPC,15,6,1,0,0,"jupe_ele_Guard-1#ufe_156")
OnCommand: "on"
	InitTimer()
end

OnCommand: "off"
	stoptimer()
end

OnCommand: "reset"
	resetmymob()
end

OnTimer:(2000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I admire your patience.")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Let's see if everything you have experienced")
end

OnTimer:(8000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"were traps for intruders...")
end

OnTimer:(12000)
	callmonster("jupe_ele","VENATU","Guard",48,44)
	callmonster("jupe_ele","DIMIK","Guard",45,42)
	callmonster("jupe_ele","VENATU","Guard",38,42)
	callmonster("jupe_ele","DIMIK","Guard",35,44)
	callmonster("jupe_ele","VENATU","Guard",35,51)
	callmonster("jupe_ele","DIMIK","Guard",38,53)
	callmonster("jupe_ele","VENATU","Guard",45,53)
	callmonster("jupe_ele","DIMIK","Guard",48,51)
end

OnTimer:(30000)
	local aa = GetGlobalVar "050425_ufe_elev"
	if aa == 0 then
		SetGlobalVar("050425_ufe_elev",1)
		cmdothernpc("Guard-2#ufe","on")
		stoptimer()
	end
end

OnMyMobDead:()
	if npcv "Guard-1#ufe" [VAR_MYMOBCOUNT] < 1 then
		local aa = GetGlobalVar "050425_ufe_elev"
		if aa == 0 then
			SetGlobalVar("050425_ufe_elev",1)
			cmdothernpc("Guard-2#ufe","on")
			stoptimer()
		elseif aa == 4 then
			if npcv "Guard-4#ufe" [VAR_MYMOBCOUNT] < 1 then
				if npcv "Guard-3#ufe" [VAR_MYMOBCOUNT] < 1 then
					if npcv "Guard-2#ufe" [VAR_MYMOBCOUNT] < 1 then
						cmdothernpc("GuardEnd#ufe","on")
						stoptimer()
						return
					end
				end
			end
		end
	end
end

npc("jupe_ele","Guard-2#ufe",SPRITE_CLEAR_NPC,16,6,1,0,0,"jupe_ele_Guard-2#ufe_166")
OnCommand: "on"
	InitTimer()
end

OnCommand: "off"
	stoptimer()
end

OnCommand: "reset"
	resetmymob()
end

OnTimer:(2000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"This city was not")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"as magnificient as you thought.")
end

OnTimer:(8000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"This is a place where all the fears of humans flourish.")
end

OnTimer:(11000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Yes. Nobody leaves alive!")
end

OnTimer:(12000)
	callmonster("jupe_ele","G_POTON_CANON","Guard",48,44)
	callmonster("jupe_ele","DIMIK","Guard",45,42)
	callmonster("jupe_ele","G_POTON_CANON","Guard",38,42)
	callmonster("jupe_ele","DIMIK","Guard",35,44)
	callmonster("jupe_ele","G_POTON_CANON","Guard",35,51)
	callmonster("jupe_ele","DIMIK","Guard",38,53)
	callmonster("jupe_ele","G_POTON_CANON","Guard",45,53)
	callmonster("jupe_ele","DIMIK","Guard",48,51)
end

OnTimer:(30000)
	local aa = GetGlobalVar "050425_ufe_elev"
	if aa == 1 then
		SetGlobalVar("050425_ufe_elev",2)
		cmdothernpc("Guard-3#ufe","on")
		stoptimer()
	end
end

OnMyMobDead:()
	if npcv "Guard-2#ufe" [VAR_MYMOBCOUNT] < 1 then
		local aa = GetGlobalVar "050425_ufe_elev"
		if aa == 1 then
			SetGlobalVar("050425_ufe_elev",2)
			cmdothernpc("Guard-3#ufe","on")
			stoptimer()
		elseif aa == 4 then
			if npcv "Guard-4#ufe" [VAR_MYMOBCOUNT] < 1 then
				if npcv "Guard-3#ufe" [VAR_MYMOBCOUNT] < 1 then
					if npcv "Guard-1#ufe" [VAR_MYMOBCOUNT] < 1 then
						cmdothernpc("GuardEnd#ufe","on")
						stoptimer()
						return
					end
				end
			end
		end
	end
end

npc("jupe_ele","Guard-3#ufe",SPRITE_CLEAR_NPC,17,6,1,0,0,"jupe_ele_Guard-3#ufe_176")
OnCommand: "on"
	InitTimer()
end

OnCommand: "off"
	stoptimer()
end

OnCommand: "reset"
	resetmymob()
end

OnTimer:(2000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"What do you see?")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Are your eyes actually seeing something?")
end

OnTimer:(8000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Or do you just believe you are seeing?")
end

OnTimer:(12000)
	callmonster("jupe_ele","VENATU","Guard",48,44)
	callmonster("jupe_ele","DIMIK","Guard",45,42)
	callmonster("jupe_ele","G_POTON_CANON","Guard",38,42)
	callmonster("jupe_ele","VENATU","Guard",35,44)
	callmonster("jupe_ele","DIMIK","Guard",35,51)
	callmonster("jupe_ele","G_POTON_CANON","Guard",38,53)
	callmonster("jupe_ele","VENATU","Guard",45,53)
	callmonster("jupe_ele","DIMIK","Guard",48,51)
end

OnTimer:(30000)
	local aa = GetGlobalVar "050425_ufe_elev"
	if aa == 2 then
		SetGlobalVar("050425_ufe_elev",3)
		cmdothernpc("Guard-4#ufe","on")
		stoptimer()
	end
end

OnMyMobDead:()
	if npcv "Guard-3#ufe" [VAR_MYMOBCOUNT] < 1 then
		local aa = GetGlobalVar "050425_ufe_elev"
		if aa == 2 then
			SetGlobalVar("050425_ufe_elev",3)
			cmdothernpc("Guard-4#ufe","on")
			stoptimer()
		elseif aa == 4 then
			if npcv "Guard-4#ufe" [VAR_MYMOBCOUNT] < 1 then
				if npcv "Guard-2#ufe" [VAR_MYMOBCOUNT] < 1 then
					if npcv "Guard-1#ufe" [VAR_MYMOBCOUNT] < 1 then
						cmdothernpc("GuardEnd#ufe","on")
						stoptimer()
						return
					end
				end
			end
		end
	end
end

npc("jupe_ele","Guard-4#ufe",SPRITE_CLEAR_NPC,18,6,1,0,0,"jupe_ele_Guard-4#ufe_186")
OnCommand: "on"
	InitTimer()
end

OnCommand: "off"
	stoptimer()
end

OnCommand: "reset"
	resetmymob()
end

OnTimer:(2000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do not forget. That which limits you is nothing but yourself.")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Nothing is what you fear and you have nothing to fear...")
end

OnTimer:(8000)
	SetGlobalVar("050425_ufe_elev",4)
	callmonster("jupe_ele","G_ARCHDAM","Guard",48,44)
	callmonster("jupe_ele","DIMIK","Guard",45,42)
	callmonster("jupe_ele","G_ARCHDAM","Guard",38,42)
	callmonster("jupe_ele","DIMIK","Guard",35,44)
	callmonster("jupe_ele","VENATU","Guard",35,51)
	callmonster("jupe_ele","DIMIK","Guard",38,53)
	callmonster("jupe_ele","G_POTON_CANON","Guard",45,53)
	callmonster("jupe_ele","VENATU","Guard",48,51)
end

OnMyMobDead:()
	if npcv "Guard-4#ufe" [VAR_MYMOBCOUNT] < 1 then
		if npcv "Guard-3#ufe" [VAR_MYMOBCOUNT] < 1 then
			if npcv "Guard-2#ufe" [VAR_MYMOBCOUNT] < 1 then
				if npcv "Guard-1#ufe" [VAR_MYMOBCOUNT] < 1 then
					cmdothernpc("GuardEnd#ufe","on")
					stoptimer()
				end
			end
		end
	end
end

npc("jupe_ele","GuardEnd#ufe",SPRITE_CLEAR_NPC,19,6,1,0,0,"jupe_ele_GuardEnd#ufe_196")
OnInit:()
	disablenpc "GuardEnd#ufe"
end

OnCommand: "on"
	enablenpc "GuardEnd#ufe"
	cmdothernpc("TimeOut#ufe","off")
	InitTimer()
end

OnCommand: "off"
	disablenpc "GuardEnd#ufe"
	stoptimer()
end

OnTimer:(2000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"I am not going to tell you anything.")
end

OnTimer:(5000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"My city, my people are now but a memory.")
end

OnTimer:(8000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"Everything was a mistake. We were not supposed to be here.")
end

OnTimer:(11000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"Is this a place where humans are forbidden?")
end

OnTimer:(12000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"You want to know, don't you? Go ahead... Go deeper.")
	enablenpc "4F Enter#ufe"
end

OnTimer:(22000)
	broadcastinmap2("66FF00","FW_NORMAL",12,0,0,"It's not real anyway. All of it's safe, it can't hurt you...")
	sound("earth_quake.wav",2,0,0)
	cmdothernpc("4F Enter#ufe","off")
end

OnTimer:(24000)
	warpallpcinthemap("jupe_core",150,286)
end

OnTimer:(25000)
	warpallpcinthemap("jupe_core",151,286)
end

OnTimer:(26000)
	cmdothernpc("GuardEnd#ufe","off")
	cmdothernpc("4F Enter#ufe","off")
	cmdothernpc("TimeOut#ufe","off")
	SetGlobalVar("050425_ufe_elev",0)
	SetGlobalVar("050420_jupe_ele_r",0)
	cmdothernpc("Switch On#ufe","off")
	cmdothernpc("Switch#ufe","on")
	stoptimer()
end

warp("jupe_ele","jupe_ele_4F_Enter#ufe_4133",41,33,4,4)
OnInit:()
	disablenpc "4F Enter#ufe"
end

OnCommand: "on"
	enablenpc "4F Enter#ufe"
end

OnCommand: "off"
	disablenpc "4F Enter#ufe"
end

function jupe_ele_4F_Enter#ufe_4133()
	local dochak = math.random(1 3
	if (dochak == 1) then
		moveto("jupe_core",149,286)
	elseif (dochak == 2) then
		moveto("jupe_core",150,286)
	else
		moveto("jupe_core",151,286)
	end
end

hiddenwarp("yuno_fild07","yuno_fild07_jupe_entrance_208175",208,175,2,2)
function yuno_fild07_jupe_entrance_208175()
	moveto("jupe_cave",143,52)
end

warp("jupe_cave","jupe_cave_jupe_entrance#2_2952",29,52,2,2)
function jupe_cave_jupe_entrance#2_2952()
	moveto("juperos_01",54,246)
end

hiddenwarp("jupe_cave","jupe_cave_jupe_entrance#2_14752",147,52,2,2)
function jupe_cave_jupe_entrance#2_14752()
	moveto("yuno_fild07",212,175)
end

warp("juperos_01","juperos_01_jupe_exit_51249",51,249,2,2)
function juperos_01_jupe_exit_51249()
	moveto("jupe_cave",36,51)
end

hiddenwarp("jupe_gate","jupe_gate_gate#start_50173",50,173,2,3)
OnCommand: "on"
	enablenpc "gate#start"
end

OnCommand: "off"
	disablenpc "gate#start"
end

function jupe_gate_gate#start_50173()
	local username = PcName()
	InitTimer()
	dialog "^3355FFIt's a Warp Portal"
	dialog "that will teleport you"
	dialog "to the previous floor.^000000"
	wait()
	local mresulta = menu("Use it.","Ignore it.")
	if mresulta == 1 then
		ShowEffect(,"EF_LIGHTSPHERE")
		wait()
		stoptimer()
		moveto("juperos_02",130,142)
		close()
		return
	elseif mresulta == 2 then
		dialog("[","+","username","+","]")
		dialog "Not now!"
		dialog "I can't leave yet!"
		wait()
		moveto("jupe_gate",50,168)
		stoptimer()
		close()
		return
	end
	close()
end

OnTimer:(10000)
	moveto("juperos_02",128,278)
	cmdothernpc("gate#start#2","on")
	disablenpc "gate#start"
end

hiddenwarp("jupe_gate","jupe_gate_gate#start#2_50171",50,171,2,2)
OnInit:()
	disablenpc "gate#start#2"
end

OnCommand: "on"
	enablenpc "gate#start#2"
	InitTimer()
end

OnCommand: "off"
	disablenpc "gate#start#2"
end

function jupe_gate_gate#start#2_50171()
	moveto("juperos_02",130,142)
end

OnTimer:(2000)
	cmdothernpc("gate#start","on")
	disablenpc "gate#start#2"
end

warp("jupe_gate","jupe_gate_gate#left1_28145",28,145,2,4)
function jupe_gate_gate#left1_28145()
	moveto("jupe_area1",100,222)
end

warp("jupe_area1","jupe_area1_gate#left2_103222",103,222,2,4)
function jupe_area1_gate#left2_103222()
	moveto("jupe_gate",31,145)
end

warp("jupe_gate","jupe_gate_gate#right1_71145",71,145,2,4)
function jupe_gate_gate#right1_71145()
	moveto("jupe_area2",63,222)
end

warp("jupe_area2","jupe_area2_gate#right2_60222",60,222,2,4)
function jupe_area2_gate#right2_60222()
	moveto("jupe_gate",68,145)
end

warp("jupe_gate","jupe_gate_gate#ele_4955",49,55,4,2)
function jupe_gate_gate#ele_4955()
	moveto("jupe_ele_r",49,30)
end

warp("juperos_02","juperos_02_jupe_goto2F_3359",33,59,2,2)
function juperos_02_jupe_goto2F_3359()
	local warp_jufe = math.random(1 4
	if ((warp_jufe > 0) and (warp_jufe < 2)) then
		moveto("juperos_01",120,72)
	elseif ((warp_jufe > 1) and (warp_jufe < 3)) then
		moveto("juperos_01",120,112)
	elseif ((warp_jufe > 2) and (warp_jufe < 4)) then
		moveto("juperos_01",79,112)
	else ((warp_jufe > 3) & (warp_jufe < 5))
		moveto("juperos_01",79,72)
	end
end

npc("yuno_in04","Librarian",SPRITE_4_M_01,34,67,4,0,0,"yuno_in04_Librarian_3467")
function yuno_in04_Librarian_3467()
	dialog "[Librarian]"
	dialog "Welcome to"
	dialog "the Juno Library."
	dialog "How may I help you?"
	wait()
	local mresulta = menu("What is this place?","What kind of books do you have?","Can I borrow a book?","So... Have you read everything here?","Nothing, thanks.")
	if mresulta == 1 then
		dialog "[Librarian]"
		dialog "This library was recently"
		dialog "reopened after a renovation"
		dialog "that included the addition of"
		dialog "books that are more popular"
		dialog "amongst the general public."
		wait()
		dialog "[Librarian]"
		dialog "Before we carried popular"
		dialog "literature and periodicals, we"
		dialog "only had ancient documents"
		dialog "and significantly historical"
		dialog "books. Basically, things only"
		dialog "scholars are interested in."
		wait()
		dialog "[Librarian]"
		dialog "Oh, and let me remind you"
		dialog "that some of the books on"
		dialog "the shelves are written in"
		dialog "different languages. So if"
		dialog "you see any that you can't"
		dialog "read, don't worry about it."
		wait()
		dialog "[Librarian]"
		dialog "Well, I hope you enjoy"
		dialog "your time in the library."
		dialog "And always remember"
		dialog "to keep quiet for the other"
		dialog "readers in here. Thank you~"
		close()
		return
	elseif mresulta == 2 then
		dialog "[Librarian]"
		dialog "Originally, we only had"
		dialog "books related to scientific"
		dialog "and historical research. Of"
		dialog "course, our commitment to"
		dialog "academia and search for"
		dialog "knowledge hasn't changed."
		wait()
		dialog "[Librarian]"
		dialog "But now we also have"
		dialog "books that the general public"
		dialog "can also enjoy. We also carry"
		dialog "texts that may be helpful to"
		dialog "adventurers like yourself."
		wait()
		dialog "[Librarian]"
		dialog "Well, I hope you enjoy"
		dialog "your time in the library."
		dialog "And always remember"
		dialog "to keep quiet for the other"
		dialog "readers in here. Thank you~"
		close()
		return
	elseif mresulta == 3 then
		dialog "[Librarian]"
		dialog "I'm sorry, but we"
		dialog "currently do not offer"
		dialog "a book lending service."
		dialog "We've prioritized our funding"
		dialog "on the content we provide, so"
		dialog "we can't afford extra services."
		wait()
		dialog "[Librarian]"
		dialog "However, this facility"
		dialog "is open twenty-four hours,"
		dialog "seven days a week, so feel"
		dialog "free to visit us at any time."
		dialog "Just remember that in the"
		dialog "library, silence is golden~"
		close()
		return
	elseif mresulta == 4 then
		dialog "[Librarian]"
		dialog "Read every book?"
		dialog "Sadly, yes. I've perused"
		dialog "every single scrap of text"
		dialog "in this library. It's a part of"
		dialog "my job, but I love it dearly."
		wait()
		dialog "[Librarian]"
		dialog "I originally applied for this"
		dialog "job so that I could read as"
		dialog "much as I wanted, even at"
		dialog "work! After all, librarians"
		dialog "should be familiar with the"
		dialog "books they're in charge of."
		wait()
		dialog "[Librarian]"
		dialog "I love books so much~"
		dialog "But of course, it will be"
		dialog "a while until this library"
		dialog "has the funds to purchase"
		dialog "brand new books for me to"
		dialog "immerse myself in. ^333333*Sigh*^000000"
		close()
		return
	elseif mresulta == 5 then
		dialog "[Librarian]"
		dialog "Oh, alright."
		dialog "Feel free to ask me"
		dialog "me if you have any"
		dialog "questions. Good day~"
		close()
		return
	end
end

npc("yuno_in04","Scholar",SPRITE_8_F_GIRL,190,125,4,0,0,"yuno_in04_Scholar_190125")
function yuno_in04_Scholar_190125()
	if getvar(yuno_book) == 0 then
		dialog "[Scholar]"
		dialog "...Mm? "
		dialog "...Yes?"
		wait()
		dialog "[Scholar]"
		dialog "..."
		dialog "......"
		dialog "May I help you?"
		wait()
		local mresulta = menu("Oh! N-Nothing!","Excuse me...")
		if mresulta == 1 then
			dialog "[Scholar]"
			dialog "..."
			dialog "......"
			dialog "Hmm?"
			dialog "..........."
			dialog "Hmpf."
			close()
			return
		elseif mresulta == 2 then
			dialog "[Scholar]"
			dialog "..."
			dialog "......"
			dialog "Hmm?"
			dialog "..........."
			dialog "Hmmm..."
			wait()
			dialog "[Scholar]"
			dialog "You must be lost."
			dialog "This is the scholarly"
			dialog "research section, you know,"
			dialog "content you couldn't possibly"
			dialog "fathom. The popular novels and picture books are someplace else."
			wait()
			dialog("[","+PcName+"]"")
			dialog "..."
			dialog "......"
			wait()
			dialog "[Scholar]"
			dialog "Why don't you rummage"
			dialog "through the bookshelves?"
			dialog "I'm sure you can find some"
			dialog "book there that can hold your"
			dialog "interest. Well, depending on"
			dialog "your actual attention span..."
			wait()
			dialog("[","+PcName+"]"")
			dialog "(What's her damage?!"
			dialog "Does she have an attitude^FFFFFF ^000000 problem or is she just stuck-up?)"
			close()
			return
		end
	elseif getvar(yuno_book) == 1 then
		dialog "[Scholar]"
		dialog "...Mm? "
		dialog "...Yes?"
		wait()
		dialog "[Scholar]"
		dialog "..."
		dialog "......"
		dialog "May I help you?"
		wait()
		local mresulta = menu("Oh! N-Nothing!","By any chance...")
		if mresulta == 1 then
			dialog "[Scholar]"
			dialog "..."
			dialog "......"
			dialog "Hmm?"
			dialog "..........."
			dialog "Hmpf."
			close()
			return
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+PcName+"]"")
			dialog "By any chance..."
			dialog "Are you conducting"
			dialog "research about Juperos?"
			wait()
			dialog "[Scholar]"
			dialog "Why yes, that is"
			dialog "correct. But how did"
			dialog "you come to learn about"
			dialog "my current research project?"
			wait()
			dialog("[","+PcName+"]"")
			dialog "Oh, I managed to read"
			dialog "a thesis paper entitled,"
			dialog "''The Fall of Juperos,'' and"
			dialog "I just thought that the writing"
			dialog "style and your personality"
			dialog "seem to match for some reason."
			wait()
			dialog "[Scholar]"
			dialog "Oh...! You read my"
			dialog "thesis? So what did"
			dialog "you think about it?"
			wait()
			dialog("[","+PcName+"]"")
			dialog "So far, it's alright, but"
			dialog "quite frankly it's incomplete."
			dialog "I mean, you don't have much in"
			dialog "in the way of conjecture, much"
			dialog "less any evidence to back up"
			dialog "any of your statements."
			wait()
			dialog "[Scholar]"
			dialog "...."
			dialog "Let me apologize for"
			dialog "being rude to you earlier."
			dialog "As you know, my name is"
			dialog "Fayruz Khrhiyha. May I ask"
			dialog "what your name might be?"
			wait()
			dialog("[","+PcName+"]"")
			dialog("I'm ","+PcName+","")
			dialog "a brave adventurer in the"
			dialog "service of his royal majesty,"
			dialog "the wise and benevolent"
			dialog "King Tristram III."
			setitem("yuno_book",2)
			wait()
			dialog "[Fayruz]"
			dialog("Well, ","+PcName+","")
			dialog "I understand that my thesis"
			dialog "still requires more evidence."
			dialog "But I'd need some ancient"
			dialog "documents from Juperos"
			dialog "to complete my research..."
			wait()
			dialog "[Fayruz]"
			dialog "If you happen to travel"
			dialog "through Juperos and find"
			dialog "any ancient documents, would"
			dialog "you bring them to me? Having"
			dialog "those would help my research"
			dialog "efforts immensely. Thank you..."
			close()
			return
		end
	elseif getvar(yuno_book) == 2 then
		if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
			dialog "[Fayruz]"
			dialog "Ah, it's you! Listen,"
			dialog "I just found a record of"
			dialog "an adventurer who explored"
			dialog "Juperos. There's mention"
			dialog "of a stone statue here that"
			dialog "just might be noteworthy..."
			wait()
			dialog "[Fayruz]"
			dialog "If you happen to find"
			dialog "yourself in Juperos,"
			dialog "would you find the stone"
			dialog "statue at the entrance of"
			dialog "its dungeon and read the"
			dialog "engraved message for me?"
			wait()
			dialog "[Fayruz]"
			dialog "According to my notes,"
			dialog "there's a spell that will"
			dialog "make its reader memorize"
			dialog "its message, even if they don't"
			dialog "know the language. So come"
			dialog "to me if you manage to read it."
			close()
			return
		else
			dialog "[Fayruz]"
			dialog "If you ever chance to"
			dialog "travel through Juperos,"
			dialog "would you let me know if you"
			dialog "find anything that might help"
			dialog "my research there? I'd be"
			dialog "very grateful for your help."
			close()
			return
		end
	elseif getvar(yuno_book) == 3 then
		dialog "[Fayruz]"
		dialog "Well, you look"
		dialog "quite pleased."
		dialog "May I asked what"
		dialog "happened to put that"
		dialog "expression on your face?"
		wait()
		local mresulta = menu("I found something in Juperos.","Nothing much.")
		if mresulta == 1 then
			local name = PcName()
			dialog("[","+PcName+"]"")
			dialog "I went to Juperos like"
			dialog "you asked and found that"
			dialog "stone statue you were talking"
			dialog "about. Just like you said, there^FFFFFF ^000000 was an engraved message on it."
			wait()
			dialog "[Fayruz]"
			dialog "Fascinating!"
			dialog "So is it really enchanted"
			dialog "so anyone can memorize it?"
			dialog "Wh-what does the message say?"
			wait()
			dialog "^3355FFYou recite the message"
			dialog "engraved on the stone"
			dialog "statue, unable to interpret"
			dialog "the sounds you're uttering,"
			dialog "but weirdly enough, you can"
			dialog "easily recall them from memory.^000000"
			wait()
			dialog "[Fayruz]"
			dialog "Ah, I see! Wait,"
			dialog "give me a moment to"
			dialog "properly translate this..."
			wait()
			dialog "..."
			dialog "......"
			dialog "........."
			wait()
			dialog "[Fayruz]"
			dialog "It means, ''Do you wish to"
			dialog "see the end of the madness?"
			dialog "He is waiting where the three"
			dialog "columns were destroyed, where"
			dialog "two hundred illusions wander.''"
			wait()
			setitem("yuno_book",4)
			dialog "[Fayruz]"
			dialog "''You will see him, the one"
			dialog "who was vain and extravagant,"
			dialog "with your own eyes at the place^FFFFFF ^000000 where the light passes through."
			wait()
			dialog "[Fayruz]"
			dialog "Ah, usually, descriptions"
			dialog "of the ''vain and extravagant"
			dialog "one'' refer to the mad scientist^FFFFFF ^000000 rumored to have lived in that"
			dialog "ancient era. But if this is true,^FFFFFF ^000000 I may have to rework my thesis..."
			wait()
			dialog "[Fayruz]"
			dialog "I have another favor to"
			dialog "ask of you. If you find any"
			dialog "object of historical significance^FFFFFF ^000000 in Juperos, would you bring it to"
			dialog "me? I'll reward you, of course."
			wait()
			dialog "[Fayruz]"
			dialog "It would be most helpful"
			dialog "if you could manage to find"
			dialog "documents that existed from^FFFFFF ^000000 that era. Fortunately, back then,"
			dialog "they made all their records on material more durable than paper."
			close()
			return
		elseif mresulta == 2 then
			dialog "[Fayruz]"
			dialog "Nothing, huh?"
			dialog "My life is also fairly"
			dialog "uneventful, but somehow,"
			dialog "I'm don't think I'm content."
			close()
			return
		end
	elseif getvar(yuno_book) == 4 then
		dialog "[Fayruz]"
		local name = PcName()
		dialog("Oh hello, ","+PcName+"."")
		dialog "So what brings you to"
		dialog "the Juno Library today?"
		wait()
		local mresulta = menu("Nice weather today, isn't it?","I found something in Juperos.","Nothing much.")
		if mresulta == 1 then
			dialog "[Fayruz]"
			dialog "Well, I wouldn't know."
			dialog "It's late whenever I go"
			dialog "out, so I always happen to"
			dialog "miss the sunlight. I guess"
			dialog "I really miss nice weather"
			dialog "sometimes, you know?"
			close()
			return
		elseif mresulta == 2 then
			if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
				dialog "[Fayruz]"
				dialog "Oh, really?!"
				dialog "That's great news!"
				dialog "W-what did you find?"
				wait()
				dialog "^3355FFIn her excitement,"
				dialog "Fayruz begins to"
				dialog "rummage through your"
				dialog "things before you get"
				dialog "the chance to answer her.^000000"
				wait()
				dialog "[Fayruz]"
				dialog "Oh, this must be it!"
				dialog "Would you mind if I keep"
				dialog "this Transparent Plate for"
				dialog "my research? In return, I'll"
				dialog "tell you some tales about"
				dialog "Juperos that I've learned."
				wait()
				local mresultb = menu("Please, be my guest.","No way, you can't have it.")
				if mresultb == 1 then
					if (getvar(Transparent_Plate01) > 0) then
						dialog "[Fayruz]"
						dialog "Thank you so much,"
						dialog "you don't know what"
						dialog "this means to me! Okay,"
						dialog "please relax and take a"
						dialog "seat. Close your eyes while"
						dialog "I tell you this ancient story."
						wait()
						dialog "^3355FFFayruz begins to"
						dialog "relate an ancient tale"
						dialog "about Juperos that seems"
						dialog "typical for a classic story, but^FFFFFF ^3355FF her way of storytelling subtly"
						dialog "draws you into a vicarious, yet^FFFFFF ^3355FF extremely vivid experience."
						wait()
						dialog "^3355FFYou feel the protagonist's"
						dialog "glories and tragedies as if"
						dialog "you were actually there with"
						dialog "the hero on his journeys. The"
						dialog "tale eventually comes to an end"
						dialog "and you awaken from the trance,"
						dialog "gently brought back to reality.^000000"
						dropitem("Transparent_Plate01",1)
						setitem("yuno_book",5)
						setitem("jupe_book",1)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "Everyone can relate"
						dialog "to these old, classic"
						dialog "stories. I hope this tale had"
						dialog "as meaning for you as it did"
						dialog "for me when I first heard it."
						wait()
						dialog "[Fayruz]"
						dialog "If you can find me"
						dialog "another artifact from"
						dialog "Juperos, I'll share another"
						dialog "tale like that with you. Now"
						dialog "how does that sound? Okay"
						dialog "then, I'll see you, adventurer~"
						close()
						return
					end
					if (getvar(Transparent_Plate02) > 0) then
						dialog "[Fayruz]"
						dialog "Thank you so much,"
						dialog "you don't know what"
						dialog "this means to me! Okay,"
						dialog "please relax and take a"
						dialog "seat. Close your eyes while"
						dialog "I tell you this ancient story."
						wait()
						dialog "^3355FFFayruz begins to"
						dialog "relate an ancient tale"
						dialog "about Juperos that seems"
						dialog "typical for a classic story, but^FFFFFF ^3355FF her way of storytelling subtly"
						dialog "draws you into a vicarious, yet^FFFFFF ^3355FF extremely vivid experience."
						wait()
						dialog "^3355FFYou feel the protagonist's"
						dialog "glories and tragedies as if"
						dialog "you were actually there with"
						dialog "the hero on his journeys. The"
						dialog "tale eventually comes to an end"
						dialog "and you awaken from the trance,"
						dialog "gently brought back to reality.^000000"
						dropitem("Transparent_Plate02",1)
						setitem("yuno_book",5)
						setitem("jupe_book",2)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "Everyone can relate"
						dialog "to these old, classic"
						dialog "stories. I hope this tale had"
						dialog "as meaning for you as it did"
						dialog "for me when I first heard it."
						wait()
						dialog "[Fayruz]"
						dialog "If you can find me"
						dialog "another artifact from"
						dialog "Juperos, I'll share another"
						dialog "tale like that with you. Now"
						dialog "how does that sound? Okay"
						dialog "then, I'll see you, adventurer~"
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dialog "[Fayruz]"
						dialog "Thank you so much,"
						dialog "you don't know what"
						dialog "this means to me! Okay,"
						dialog "please relax and take a"
						dialog "seat. Close your eyes while"
						dialog "I tell you this ancient story."
						wait()
						dialog "^3355FFFayruz begins to"
						dialog "relate an ancient tale"
						dialog "about Juperos that seems"
						dialog "typical for a classic story, but^FFFFFF ^3355FF her way of storytelling subtly"
						dialog "draws you into a vicarious, yet^FFFFFF ^3355FF extremely vivid experience."
						wait()
						dialog "^3355FFYou feel the protagonist's"
						dialog "glories and tragedies as if"
						dialog "you were actually there with"
						dialog "the hero on his journeys. The"
						dialog "tale eventually comes to an end"
						dialog "and you awaken from the trance,"
						dialog "gently brought back to reality.^000000"
						dropitem("Transparent_Plate03",1)
						setitem("yuno_book",5)
						setitem("jupe_book",4)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "Everyone can relate"
						dialog "to these old, classic"
						dialog "stories. I hope this tale had"
						dialog "as meaning for you as it did"
						dialog "for me when I first heard it."
						wait()
						dialog "[Fayruz]"
						dialog "If you can find me"
						dialog "another artifact from"
						dialog "Juperos, I'll share another"
						dialog "tale like that with you. Now"
						dialog "how does that sound? Okay"
						dialog "then, I'll see you, adventurer~"
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dialog "[Fayruz]"
						dialog "Thank you so much,"
						dialog "you don't know what"
						dialog "this means to me! Okay,"
						dialog "please relax and take a"
						dialog "seat. Close your eyes while"
						dialog "I tell you this ancient story."
						wait()
						dialog "^3355FFFayruz begins to"
						dialog "relate an ancient tale"
						dialog "about Juperos that seems"
						dialog "typical for a classic story, but^FFFFFF ^3355FF her way of storytelling subtly"
						dialog "draws you into a vicarious, yet^FFFFFF ^3355FF extremely vivid experience."
						wait()
						dialog "^3355FFYou feel the protagonist's"
						dialog "glories and tragedies as if"
						dialog "you were actually there with"
						dialog "the hero on his journeys. The"
						dialog "tale eventually comes to an end"
						dialog "and you awaken from the trance,"
						dialog "gently brought back to reality.^000000"
						dropitem("Transparent_Plate04",1)
						setitem("yuno_book",5)
						setitem("jupe_book",8)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "Everyone can relate"
						dialog "to these old, classic"
						dialog "stories. I hope this tale had"
						dialog "as meaning for you as it did"
						dialog "for me when I first heard it."
						wait()
						dialog "[Fayruz]"
						dialog "If you can find me"
						dialog "another artifact from"
						dialog "Juperos, I'll share another"
						dialog "tale like that with you. Now"
						dialog "how does that sound? Okay"
						dialog "then, I'll see you, adventurer~"
						close()
						return
					end
				elseif mresultb == 2 then
					dialog "[Fayruz]"
					dialog "Mm? Are you serious?"
					dialog "This object is very valuable"
					dialog "to a researcher like me, but"
					dialog "I have no idea what use it"
					dialog "would be for an adventurer."
					dialog "Well, you have your reasons..."
					close()
					return
				end
			else
				dialog "[Fayruz]"
				dialog "Oh, really?!"
				dialog "That's great news!"
				dialog "W-what did you find?"
				wait()
				dialog "^3355FFIn her excitement,"
				dialog "Fayruz begins to"
				dialog "rummage through your"
				dialog "things before you get"
				dialog "the chance to answer her.^000000"
				wait()
				dialog "[Fayruz]"
				dialog "Oh. There isn't anything"
				dialog "here that would help in my"
				dialog "research, but thank you anyway."
				dialog "If you find anything else while"
				dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
				close()
				return
			end
		elseif mresulta == 3 then
			dialog "[Fayruz]"
			dialog "Ah, I see. Well, while"
			dialog "you're here, why don't you"
			dialog "read something? There are"
			dialog "many books that cover some"
			dialog "interesting topics, like the"
			dialog "Schwaltzvalt economy..."
			wait()
			dialog "[Fayruz]"
			dialog "Oh, in any case, please"
			dialog "don't forget the favor I asked"
			dialog "of you. If you find anything"
			dialog "in Juperos that's historically"
			dialog "significant, I'd appreciate it"
			dialog "if you bring it right away."
			close()
			return
		end
	elseif getvar(yuno_book) == 5 then
		dialog "[Fayruz]"
		local name = PcName()
		dialog("Oh, ","+PcName+"!"")
		dialog "Have you come back with"
		dialog "something from Juperos?"
		dialog "I've been hoping you'd come"
		dialog "back with something that'd"
		dialog "help me in my research!"
		wait()
		local mresulta = menu("Take a look at this.","Oh, I'm sorry...")
		if mresulta == 1 then
			if getvar(jupe_book) == 1 //Transparent_Plate01 then
				if ((getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, that's unexpected."
					dialog "This Transparent Plate"
					dialog "seems to have been made"
					dialog "in a different era than the"
					dialog "one you gave me earlier."
					dialog "How intriguing..."
					wait()
					dialog "[Fayruz]"
					dialog "*Sigh* I really wish"
					dialog "that I could explore"
					dialog "Juperos on my own, but"
					dialog "I'm just not strong enough."
					dialog "In a way, I'm quite jealous^FFFFFF ^000000 of you. But it can't be helped..."
					wait()
					dialog "[Fayruz]"
					dialog "You know, that reminds"
					dialog "me of this great story of"
					dialog "a tragic hero that I'd like to"
					dialog "share with you. Let your"
					dialog "mind wander as I relate this^FFFFFF ^000000 ageless, yet bittersweet tale..."
					wait()
					dialog "^3355FFFayruz tells you a story"
					dialog "with a bright beginning, full"
					dialog "of hope that fills you with the"
					dialog "bliss of the heavens, but then"
					dialog "suddenly plummets you into all^FFFFFF ^3355FF the despair and torment of hell.^000000"
					wait()
					dialog "^3355FFThe story finally"
					dialog "reaches its ending"
					dialog "and you're surprised"
					dialog "to find yourself sitting"
					dialog "in the Juno Library.^000000"
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						setitem("yuno_book",6)
						setitem("jupe_book",3)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						setitem("yuno_book",6)
						setitem("jupe_book",5)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						setitem("yuno_book",6)
						setitem("jupe_book",9)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
				end
				if (getvar(Transparent_Plate01) > 0) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					dropitem("Transparent_Plate01",1)
					getitem("Gift_Box",1)
					wait()
					dialog "[Fayruz]"
					dialog "Now if you'll excuse"
					dialog "me, I need to go back"
					dialog "to compiling my research..."
					dialog "Thank you so much for"
					dialog("your help, ","+PcName+"."")
					close()
					return
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 2) //Transparent_Plate02 then
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, that's unexpected."
					dialog "This Transparent Plate"
					dialog "seems to have been made"
					dialog "in a different era than the"
					dialog "one you gave me earlier."
					dialog "How intriguing..."
					wait()
					dialog "[Fayruz]"
					dialog "*Sigh* I really wish"
					dialog "that I could explore"
					dialog "Juperos on my own, but"
					dialog "I'm just not strong enough."
					dialog "In a way, I'm quite jealous^FFFFFF ^000000 of you. But it can't be helped..."
					wait()
					dialog "[Fayruz]"
					dialog "You know, that reminds"
					dialog "me of this great story of"
					dialog "a tragic hero that I'd like to"
					dialog "share with you. Let your"
					dialog "mind wander as I relate this^FFFFFF ^000000 ageless, yet bittersweet tale..."
					wait()
					dialog "^3355FFFayruz tells you a story"
					dialog "with a bright beginning, full"
					dialog "of hope that fills you with the"
					dialog "bliss of the heavens, but then"
					dialog "suddenly plummets you into all^FFFFFF ^3355FF the despair and torment of hell.^000000"
					wait()
					dialog "^3355FFThe story finally"
					dialog "reaches its ending"
					dialog "and you're surprised"
					dialog "to find yourself sitting"
					dialog "in the Juno Library.^000000"
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						setitem("yuno_book",6)
						setitem("jupe_book",3)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						setitem("yuno_book",6)
						setitem("jupe_book",6)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						setitem("yuno_book",6)
						setitem("jupe_book",10)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
				end
				if (getvar(Transparent_Plate02) > 0) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					dropitem("Transparent_Plate02",1)
					getitem("Gift_Box",1)
					wait()
					dialog "[Fayruz]"
					dialog "Now if you'll excuse"
					dialog "me, I need to go back"
					dialog "to compiling my research..."
					dialog "Thank you so much for"
					dialog("your help, ","+PcName+"."")
					close()
					return
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 4) //Transparent_Plate03 then
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, that's unexpected."
					dialog "This Transparent Plate"
					dialog "seems to have been made"
					dialog "in a different era than the"
					dialog "one you gave me earlier."
					dialog "How intriguing..."
					wait()
					dialog "[Fayruz]"
					dialog "*Sigh* I really wish"
					dialog "that I could explore"
					dialog "Juperos on my own, but"
					dialog "I'm just not strong enough."
					dialog "In a way, I'm quite jealous^FFFFFF ^000000 of you. But it can't be helped..."
					wait()
					dialog "[Fayruz]"
					dialog "You know, that reminds"
					dialog "me of this great story of"
					dialog "a tragic hero that I'd like to"
					dialog "share with you. Let your"
					dialog "mind wander as I relate this^FFFFFF ^000000 ageless, yet bittersweet tale..."
					wait()
					dialog "^3355FFFayruz tells you a story"
					dialog "with a bright beginning, full"
					dialog "of hope that fills you with the"
					dialog "bliss of the heavens, but then"
					dialog "suddenly plummets you into all^FFFFFF ^3355FF the despair and torment of hell.^000000"
					wait()
					dialog "^3355FFThe story finally"
					dialog "reaches its ending"
					dialog "and you're surprised"
					dialog "to find yourself sitting"
					dialog "in the Juno Library.^000000"
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						setitem("yuno_book",6)
						setitem("jupe_book",5)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						setitem("yuno_book",6)
						setitem("jupe_book",6)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						setitem("yuno_book",6)
						setitem("jupe_book",12)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
				end
				if (getvar(Transparent_Plate03) > 0) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dropitem("Transparent_Plate03",1)
					getitem("Gift_Box",1)
					wait()
					dialog "[Fayruz]"
					dialog "Now, excuse me. I need to go back to my research."
					close()
					return
				else
					dialog "[Fayruz]"
					dialog "Now if you'll excuse"
					dialog "me, I need to go back"
					dialog "to compiling my research..."
					dialog "Thank you so much for"
					dialog("your help, ","+PcName+"."")
					close()
					return
				end
			elseif (getvar(jupe_book) == 8) //Transparent_Plate04 then
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, that's unexpected."
					dialog "This Transparent Plate"
					dialog "seems to have been made"
					dialog "in a different era than the"
					dialog "one you gave me earlier."
					dialog "How intriguing..."
					wait()
					dialog "[Fayruz]"
					dialog "*Sigh* I really wish"
					dialog "that I could explore"
					dialog "Juperos on my own, but"
					dialog "I'm just not strong enough."
					dialog "In a way, I'm quite jealous^FFFFFF ^000000 of you. But it can't be helped..."
					wait()
					dialog "[Fayruz]"
					dialog "You know, that reminds"
					dialog "me of this great story of"
					dialog "a tragic hero that I'd like to"
					dialog "share with you. Let your"
					dialog "mind wander as I relate this^FFFFFF ^000000 ageless, yet bittersweet tale..."
					wait()
					dialog "^3355FFFayruz tells you a story"
					dialog "with a bright beginning, full"
					dialog "of hope that fills you with the"
					dialog "bliss of the heavens, but then"
					dialog "suddenly plummets you into all^FFFFFF ^3355FF the despair and torment of hell.^000000"
					wait()
					dialog "^3355FFThe story finally"
					dialog "reaches its ending"
					dialog "and you're surprised"
					dialog "to find yourself sitting"
					dialog "in the Juno Library.^000000"
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						setitem("yuno_book",6)
						setitem("jupe_book",9)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						setitem("yuno_book",6)
						setitem("jupe_book",10)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						setitem("yuno_book",6)
						setitem("jupe_book",12)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "I know it's a very"
						dialog "depressing story, but"
						dialog "I hope you enjoyed it."
						dialog "I think you'd agree that"
						dialog "it contains a truth about"
						dialog "mankind that can't be ignored."
						wait()
						dialog "[Fayruz]"
						dialog "By now I'm sure you've"
						dialog "figured that these classic"
						dialog "tales are like condensed"
						dialog "experiences, refined and"
						dialog "immutable truths that we"
						dialog "can see in our own reality."
						wait()
						dialog "[Fayruz]"
						dialog "If you find more of"
						dialog "these Transparent"
						dialog "Plates in Juperos, I'd be"
						dialog "very happy to share another"
						dialog("story with you, ","+PcName+"."")
						close()
						return
					end
				end
				if (getvar(Transparent_Plate04) > 0) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					dropitem("Transparent_Plate04",1)
					getitem("Gift_Box",1)
					wait()
					dialog "[Fayruz]"
					dialog "Now if you'll excuse"
					dialog "me, I need to go back"
					dialog "to compiling my research..."
					dialog "Thank you so much for"
					dialog("your help, ","+PcName+"."")
					close()
					return
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			end
		elseif mresulta == 2 then
			dialog "[Fayruz]"
			dialog "Ah, I see. Well, while"
			dialog "you're here, why don't you"
			dialog "read something? There are"
			dialog "many books that cover some"
			dialog "interesting topics, like..."
			dialog "like... Self-Honesty (?)."
			wait()
			dialog "[Fayruz]"
			dialog "Oh, in any case, please"
			dialog "don't forget the favor I asked"
			dialog "of you. If you find anything"
			dialog "in Juperos that's historically"
			dialog "significant, I'd appreciate it"
			dialog "if you bring it right away."
			close()
			return
		end
	elseif getvar(yuno_book) == 6 then
		setitem("yuno_book",7)
		dialog "[Fayruz]"
		local name = PcName()
		dialog("Oh, ","+PcName+"!"")
		dialog "The Transparent Plate"
		dialog "that you brought for me"
		dialog "last time is really helping me"
		dialog "in my research. If you get the"
		dialog "chance, please bring me more!"
		wait()
		dialog "[Fayruz]"
		dialog "This new data is adding"
		dialog "a lot more credibility to my"
		dialog "thesis. Oh, I'll be with you"
		dialog "in a moment, let me finish"
		dialog "translating this one last"
		dialog "passage really quickly..."
		close()
		return
	elseif getvar(yuno_book) == 7 then
		dialog "[Fayruz]"
		dialog("Hello, ","+PcName+"~"")
		dialog "Oh, were you able to look"
		dialog "in Juperos for anything that"
		dialog "might help me in my research?"
		wait()
		local mresulta = menu("Yeah, take a look at this.","No, I'm sorry...")
		if mresulta == 1 then
			if (getvar(jupe_book) == 3) then
				if ((getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Is this another"
					dialog "Transparent Plate?"
					dialog "Yes, it's quite different"
					dialog "than the last one you"
					dialog "brought over to me..."
					dialog "This is so exciting!"
					wait()
					dialog "[Fayruz]"
					dialog "Oh. You must be thinking"
					dialog "that I'm a complete academia"
					dialog "addict. Well, my life might be"
					dialog "a little uneventful, but there"
					dialog "are other things I think about!"
					dialog "Like, well... It's weird but..."
					wait()
					dialog "[Fayruz]"
					dialog "You see, there's this"
					dialog "guy that I like. I'm not sure"
					dialog "where he might be now, but"
					dialog "his name is Nadim Amal. He's"
					dialog "my friend's brother who I first"
					dialog "met 10 years ago. ^333333*Sigh...*^000000"
					wait()
					dialog "[Fayruz]"
					dialog "Just recently, I saw"
					dialog "him with his sister, my"
					dialog "friend from Morroc. It's"
					dialog "weird to think that I'd have"
					dialog "these feelings for him after"
					dialog "all this time, isn't it? Oh...!"
					wait()
					dialog "[Fayruz]"
					dialog "I really should repay"
					dialog "you for this Transparent"
					dialog "Plate. Why don't I tell you"
					dialog "the scariest story that I know?"
					wait()
					dialog "^3355FFFayruz tells you a"
					dialog "creepy horror story that"
					dialog "makes you shiver with fear."
					dialog "You've heard other ghost"
					dialog "stories, but you've never been"
					dialog "so deeply immersed in one before. ^FFFFFF ^000000"
					wait()
					dialog "It is only when the"
					dialog "story ends and you return"
					dialog "to your senses that you notice^FFFFFF ^000000 that you're soaked in cold sweat.^000000"
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						setitem("yuno_book",8)
						setitem("jupe_book",7)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						setitem("yuno_book",8)
						setitem("jupe_book",11)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
				end
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 5) then
				if ((getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Is this another"
					dialog "Transparent Plate?"
					dialog "Yes, it's quite different"
					dialog "than the last one you"
					dialog "brought over to me..."
					dialog "This is so exciting!"
					wait()
					dialog "[Fayruz]"
					dialog "Oh. You must be thinking"
					dialog "that I'm a complete academia"
					dialog "addict. Well, my life might be"
					dialog "a little uneventful, but there"
					dialog "are other things I think about!"
					dialog "Like, well... It's weird but..."
					wait()
					dialog "[Fayruz]"
					dialog "You see, there's this"
					dialog "guy that I like. I'm not sure"
					dialog "where he might be now, but"
					dialog "his name is Nadim Amal. He's"
					dialog "my friend's brother who I first"
					dialog "met 10 years ago. ^333333*Sigh...*^000000"
					wait()
					dialog "[Fayruz]"
					dialog "Just recently, I saw"
					dialog "him with his sister, my"
					dialog "friend from Morroc. It's"
					dialog "weird to think that I'd have"
					dialog "these feelings for him after"
					dialog "all this time, isn't it? Oh...!"
					wait()
					dialog "[Fayruz]"
					dialog "I really should repay"
					dialog "you for this Transparent"
					dialog "Plate. Why don't I tell you"
					dialog "the scariest story that I know?"
					wait()
					dialog "^3355FFFayruz tells you a"
					dialog "creepy horror story that"
					dialog "makes you shiver with fear."
					dialog "You've heard other ghost"
					dialog "stories, but you've never been"
					dialog "so deeply immersed in one before. ^FFFFFF ^000000"
					wait()
					dialog "It is only when the"
					dialog "story ends and you return"
					dialog "to your senses that you notice^FFFFFF ^000000 that you're soaked in cold sweat.^000000"
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						setitem("yuno_book",8)
						setitem("jupe_book",7)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						setitem("yuno_book",8)
						setitem("jupe_book",13)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
				end
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate03) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 6) //Transparent_Plate03, Transparent_Plate02 then
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Is this another"
					dialog "Transparent Plate?"
					dialog "Yes, it's quite different"
					dialog "than the last one you"
					dialog "brought over to me..."
					dialog "This is so exciting!"
					wait()
					dialog "[Fayruz]"
					dialog "Oh. You must be thinking"
					dialog "that I'm a complete academia"
					dialog "addict. Well, my life might be"
					dialog "a little uneventful, but there"
					dialog "are other things I think about!"
					dialog "Like, well... It's weird but..."
					wait()
					dialog "[Fayruz]"
					dialog "You see, there's this"
					dialog "guy that I like. I'm not sure"
					dialog "where he might be now, but"
					dialog "his name is Nadim Amal. He's"
					dialog "my friend's brother who I first"
					dialog "met 10 years ago. ^333333*Sigh...*^000000"
					wait()
					dialog "[Fayruz]"
					dialog "Just recently, I saw"
					dialog "him with his sister, my"
					dialog "friend from Morroc. It's"
					dialog "weird to think that I'd have"
					dialog "these feelings for him after"
					dialog "all this time, isn't it? Oh...!"
					wait()
					dialog "[Fayruz]"
					dialog "I really should repay"
					dialog "you for this Transparent"
					dialog "Plate. Why don't I tell you"
					dialog "the scariest story that I know?"
					wait()
					dialog "^3355FFFayruz tells you a"
					dialog "creepy horror story that"
					dialog "makes you shiver with fear."
					dialog "You've heard other ghost"
					dialog "stories, but you've never been"
					dialog "so deeply immersed in one before. ^FFFFFF ^000000"
					wait()
					dialog "It is only when the"
					dialog "story ends and you return"
					dialog "to your senses that you notice^FFFFFF ^000000 that you're soaked in cold sweat.^000000"
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						setitem("yuno_book",8)
						setitem("jupe_book",7)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						setitem("yuno_book",8)
						setitem("jupe_book",14)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
				end
				if ((getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 9) //Transparent_Plate01, Transparent_Plate04 then
				if ((getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0)) then
					dialog "[Fayruz]"
					dialog "Is this another"
					dialog "Transparent Plate?"
					dialog "Yes, it's quite different"
					dialog "than the last one you"
					dialog "brought over to me..."
					dialog "This is so exciting!"
					wait()
					dialog "[Fayruz]"
					dialog "Oh. You must be thinking"
					dialog "that I'm a complete academia"
					dialog "addict. Well, my life might be"
					dialog "a little uneventful, but there"
					dialog "are other things I think about!"
					dialog "Like, well... It's weird but..."
					wait()
					dialog "[Fayruz]"
					dialog "You see, there's this"
					dialog "guy that I like. I'm not sure"
					dialog "where he might be now, but"
					dialog "his name is Nadim Amal. He's"
					dialog "my friend's brother who I first"
					dialog "met 10 years ago. ^333333*Sigh...*^000000"
					wait()
					dialog "[Fayruz]"
					dialog "Just recently, I saw"
					dialog "him with his sister, my"
					dialog "friend from Morroc. It's"
					dialog "weird to think that I'd have"
					dialog "these feelings for him after"
					dialog "all this time, isn't it? Oh...!"
					wait()
					dialog "[Fayruz]"
					dialog "I really should repay"
					dialog "you for this Transparent"
					dialog "Plate. Why don't I tell you"
					dialog "the scariest story that I know?"
					wait()
					dialog "^3355FFFayruz tells you a"
					dialog "creepy horror story that"
					dialog "makes you shiver with fear."
					dialog "You've heard other ghost"
					dialog "stories, but you've never been"
					dialog "so deeply immersed in one before. ^FFFFFF ^000000"
					wait()
					dialog "It is only when the"
					dialog "story ends and you return"
					dialog "to your senses that you notice^FFFFFF ^000000 that you're soaked in cold sweat.^000000"
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						setitem("yuno_book",8)
						setitem("jupe_book",11)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						setitem("yuno_book",8)
						setitem("jupe_book",13)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
				end
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 10) //Transparent_Plate02, Transparent_Plate04 then
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate03) > 0)) then
					dialog "[Fayruz]"
					dialog "Is this another"
					dialog "Transparent Plate?"
					dialog "Yes, it's quite different"
					dialog "than the last one you"
					dialog "brought over to me..."
					dialog "This is so exciting!"
					wait()
					dialog "[Fayruz]"
					dialog "Oh. You must be thinking"
					dialog "that I'm a complete academia"
					dialog "addict. Well, my life might be"
					dialog "a little uneventful, but there"
					dialog "are other things I think about!"
					dialog "Like, well... It's weird but..."
					wait()
					dialog "[Fayruz]"
					dialog "You see, there's this"
					dialog "guy that I like. I'm not sure"
					dialog "where he might be now, but"
					dialog "his name is Nadim Amal. He's"
					dialog "my friend's brother who I first"
					dialog "met 10 years ago. ^333333*Sigh...*^000000"
					wait()
					dialog "[Fayruz]"
					dialog "Just recently, I saw"
					dialog "him with his sister, my"
					dialog "friend from Morroc. It's"
					dialog "weird to think that I'd have"
					dialog "these feelings for him after"
					dialog "all this time, isn't it? Oh...!"
					wait()
					dialog "[Fayruz]"
					dialog "I really should repay"
					dialog "you for this Transparent"
					dialog "Plate. Why don't I tell you"
					dialog "the scariest story that I know?"
					wait()
					dialog "^3355FFFayruz tells you a"
					dialog "creepy horror story that"
					dialog "makes you shiver with fear."
					dialog "You've heard other ghost"
					dialog "stories, but you've never been"
					dialog "so deeply immersed in one before. ^FFFFFF ^000000"
					wait()
					dialog "It is only when the"
					dialog "story ends and you return"
					dialog "to your senses that you notice^FFFFFF ^000000 that you're soaked in cold sweat.^000000"
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						setitem("yuno_book",8)
						setitem("jupe_book",11)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						setitem("yuno_book",8)
						setitem("jupe_book",14)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
				end
				if ((getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 12) //Transparent_Plate03, Transparent_Plate04 then
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0)) then
					dialog "[Fayruz]"
					dialog "Is this another"
					dialog "Transparent Plate?"
					dialog "Yes, it's quite different"
					dialog "than the last one you"
					dialog "brought over to me..."
					dialog "This is so exciting!"
					wait()
					dialog "[Fayruz]"
					dialog "Oh. You must be thinking"
					dialog "that I'm a complete academia"
					dialog "addict. Well, my life might be"
					dialog "a little uneventful, but there"
					dialog "are other things I think about!"
					dialog "Like, well... It's weird but..."
					wait()
					dialog "[Fayruz]"
					dialog "You see, there's this"
					dialog "guy that I like. I'm not sure"
					dialog "where he might be now, but"
					dialog "his name is Nadim Amal. He's"
					dialog "my friend's brother who I first"
					dialog "met 10 years ago. ^333333*Sigh...*^000000"
					wait()
					dialog "[Fayruz]"
					dialog "Just recently, I saw"
					dialog "him with his sister, my"
					dialog "friend from Morroc. It's"
					dialog "weird to think that I'd have"
					dialog "these feelings for him after"
					dialog "all this time, isn't it? Oh...!"
					wait()
					dialog "[Fayruz]"
					dialog "I really should repay"
					dialog "you for this Transparent"
					dialog "Plate. Why don't I tell you"
					dialog "the scariest story that I know?"
					wait()
					dialog "^3355FFFayruz tells you a"
					dialog "creepy horror story that"
					dialog "makes you shiver with fear."
					dialog "You've heard other ghost"
					dialog "stories, but you've never been"
					dialog "so deeply immersed in one before. ^FFFFFF ^000000"
					wait()
					dialog "It is only when the"
					dialog "story ends and you return"
					dialog "to your senses that you notice^FFFFFF ^000000 that you're soaked in cold sweat.^000000"
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						setitem("yuno_book",8)
						setitem("jupe_book",13)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						setitem("yuno_book",8)
						setitem("jupe_book",14)
						getexp(100000)
						wait()
						dialog "[Fayruz]"
						dialog "It may be a natural"
						dialog "response, but all people"
						dialog "fear the unknown in one way"
						dialog "or another. Scary stories are"
						dialog "appealing because we actually"
						dialog "like the strange and grotesque."
						wait()
						dialog "[Fayruz]"
						dialog "Well... That's just my"
						dialog "opinion. Anyway, if you"
						dialog "find anything else in Juperos"
						dialog "that may help in my research,"
						dialog "please come back and show it"
						dialog "to me, alright? See you later~"
						close()
						return
					end
				end
				if ((getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			end
		elseif mresulta == 2 then
			dialog "[Fayruz]"
			dialog "Oh, that's fine."
			dialog "Besides, I don't really"
			dialog "have a deadline to complete"
			dialog "this research project. Still,"
			dialog "I just want you to know that"
			dialog "I really appreciate your help."
			close()
			return
		end
	elseif ((getvar(yuno_book) == 8) or (getvar(yuno_book) == 9)) then
		if getvar(yuno_book) ==8 then
			dialog "[Fayruz]"
			local name = PcName()
			dialog(,"PcName+"..."")
			dialog "I'm having great difficulty in"
			dialog "translating that Transparent"
			dialog "Plate you brought for me that"
			dialog "last time. I'm so frustrated..."
			wait()
			setitem("yuno_book",9)
			dialog "[Fayruz]"
			dialog "Wait a minute..."
			dialog "This here means..."
			dialog "Alright. Okay. Yes."
			dialog "Yes! Of course, how"
			dialog "could I not see it before!"
			wait()
			dialog "[Fayruz]"
			dialog "I'll be with you"
			dialog "in just a second!"
			dialog "I think I just made"
			dialog "a real breakthrough...!"
			wait()
		end
		dialog "[Fayruz]"
		dialog "Ah, I've been"
		dialog("expecting you, ","+PcName+"."")
		dialog "So did you have been to Juperos^FFFFFF ^000000 again? I'm really hoping that you"
		dialog "were able to find something new^FFFFFF ^000000 that would help in my research..."
		wait()
		local mresulta = menu("Actually, I did find this...","I'm sorry, I haven't...")
		if mresulta == 1 then
			if (getvar(jupe_book) == 7) then
				if (getvar(Transparent_Plate04) > 0) then
					dialog "[Fayruz]"
					dialog "Oooh...! This one is"
					dialog "much different than the"
					dialog "other ones you gave me"
					dialog "before. This should provide"
					dialog "a wealth of brand new insights"
					dialog "into the Juperos civilization!"
					wait()
					dialog "[Fayruz]"
					dialog "All the Transparent"
					dialog "Plates you've given me"
					dialog "should contain more than"
					dialog "enough data for me to fully"
					dialog "complete my research thesis."
					dialog "Once again, thank you so much~"
					wait()
					dialog "[Fayruz]"
					dialog "Still, that doesn't mean that"
					dialog "I will stop collecting data for"
					dialog "my research. Anyway, I have^FFFFFF ^000000 one last story to tell you, about"
					dialog "a man of pure heart chosen by the gods to serve and protect mankind."
					wait()
					dialog "[Fayruz]"
					dialog "For this purpose he was given"
					dialog "gaudy armor which contained"
					dialog "amazing powers, as well as a"
					dialog "book detailing the instructions"
					dialog "for its use. However, he promptly"
					dialog "lost these instructions..."
					wait()
					dialog "^3355FFThe story about the"
					dialog "greatest Juperosian hero"
					dialog "that Fayruz tells you is very"
					dialog "humorous at first, but then it"
					dialog "covers the entire spectrum"
					dialog "of emotion and humanity..."
					wait()
					dialog "^3355FFThe story ends and you"
					dialog "are left with a swelling"
					dialog "feeling of indefatigable"
					dialog "hope and inspiration..."
					dialog "You can make it if you try!^000000"
					dropitem("Transparent_Plate04",1)
					setitem("yuno_book",10)
					setitem("jupe_book",15)
					getexp(100000)
					wait()
					dialog "[Fayruz]"
					dialog "Well, that is the"
					dialog "last and the best story"
					dialog "that I have to share"
					dialog "with you. Perhaps next"
					dialog "time, I'll fill you in on my"
					dialog "research progress~"
					close()
					return
				end
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0)) then
					dialog "Hmm..."
					dialog "This one seems to be created in a similar time"
					dialog "as the previous one."
					wait()
					dialog "[Fayruz]"
					dialog "Don't you worry."
					dialog "This will help my research of course,"
					dialog "although I do not think this will"
					dialog "help me in advancing my research"
					dialog "with a great speed unlike this other one."
					wait()
					dialog "[Fayruz]"
					dialog "Please take this as a token of my gratitude."
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now, excuse me. I need to go back to my research."
						close()
						return
					end
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now, excuse me. I need to go back to my research."
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now, excuse me. I need to go back to my research."
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 11) //Transparent_Plate01, Transparent_Plate02, Transparent_Plate04 then
				if (getvar(Transparent_Plate03) > 0) then
					dialog "[Fayruz]"
					dialog "Oooh...! This one is"
					dialog "much different than the"
					dialog "other ones you gave me"
					dialog "before. This should provide"
					dialog "a wealth of brand new insights"
					dialog "into the Juperos civilization!"
					wait()
					dialog "[Fayruz]"
					dialog "All the Transparent"
					dialog "Plates you've given me"
					dialog "should contain more than"
					dialog "enough data for me to fully"
					dialog "complete my research thesis."
					dialog "Once again, thank you so much~"
					wait()
					dialog "[Fayruz]"
					dialog "Still, that doesn't mean that"
					dialog "I will stop collecting data for"
					dialog "my research. Anyway, I have^FFFFFF ^000000 one last story to tell you, about"
					dialog "a man of pure heart chosen by the gods to serve and protect mankind."
					wait()
					dialog "[Fayruz]"
					dialog "For this purpose he was given"
					dialog "gaudy armor which contained"
					dialog "amazing powers, as well as a"
					dialog "book detailing the instructions"
					dialog "for its use. However, he promptly"
					dialog "lost these instructions..."
					wait()
					dialog "^3355FFThe story about the"
					dialog "greatest Juperosian hero"
					dialog "that Fayruz tells you is very"
					dialog "humorous at first, but then it"
					dialog "covers the entire spectrum"
					dialog "of emotion and humanity..."
					wait()
					dialog "^3355FFThe story ends and you"
					dialog "are left with a swelling"
					dialog "feeling of indefatigable"
					dialog "hope and inspiration..."
					dialog "You can make it if you try!^000000"
					dropitem("Transparent_Plate03",1)
					setitem("yuno_book",10)
					setitem("jupe_book",15)
					getexp(100000)
					wait()
					dialog "[Fayruz]"
					dialog "Well, that is the"
					dialog "last and the best story"
					dialog "that I have to share"
					dialog "with you. Perhaps next"
					dialog "time, I'll fill you in on my"
					dialog "research progress~"
					close()
					return
				end
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 13) //Transparent_Plate01, Transparent_Plate03, Transparent_Plate04 then
				if (getvar(Transparent_Plate02) > 0) then
					dialog "[Fayruz]"
					dialog "Oooh...! This one is"
					dialog "much different than the"
					dialog "other ones you gave me"
					dialog "before. This should provide"
					dialog "a wealth of brand new insights"
					dialog "into the Juperos civilization!"
					wait()
					dialog "[Fayruz]"
					dialog "All the Transparent"
					dialog "Plates you've given me"
					dialog "should contain more than"
					dialog "enough data for me to fully"
					dialog "complete my research thesis."
					dialog "Once again, thank you so much~"
					wait()
					dialog "[Fayruz]"
					dialog "Still, that doesn't mean that"
					dialog "I will stop collecting data for"
					dialog "my research. Anyway, I have^FFFFFF ^000000 one last story to tell you, about"
					dialog "a man of pure heart chosen by the gods to serve and protect mankind."
					wait()
					dialog "[Fayruz]"
					dialog "For this purpose he was given"
					dialog "gaudy armor which contained"
					dialog "amazing powers, as well as a"
					dialog "book detailing the instructions"
					dialog "for its use. However, he promptly"
					dialog "lost these instructions..."
					wait()
					dialog "^3355FFThe story about the"
					dialog "greatest Juperosian hero"
					dialog "that Fayruz tells you is very"
					dialog "humorous at first, but then it"
					dialog "covers the entire spectrum"
					dialog "of emotion and humanity..."
					wait()
					dialog "^3355FFThe story ends and you"
					dialog "are left with a swelling"
					dialog "feeling of indefatigable"
					dialog "hope and inspiration..."
					dialog "You can make it if you try!^000000"
					dropitem("Transparent_Plate02",1)
					setitem("yuno_book",10)
					setitem("jupe_book",15)
					getexp(100000)
					wait()
					dialog "[Fayruz]"
					dialog "Well, that is the"
					dialog "last and the best story"
					dialog "that I have to share"
					dialog "with you. Perhaps next"
					dialog "time, I'll fill you in on my"
					dialog "research progress~"
					close()
					return
				end
				if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate01) > 0) then
						dropitem("Transparent_Plate01",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			elseif (getvar(jupe_book) == 14) //Transparent_Plate02, Transparent_Plate03, Transparent_Plate04 then
				if (getvar(Transparent_Plate01) > 0) then
					dialog "[Fayruz]"
					dialog "Oooh...! This one is"
					dialog "much different than the"
					dialog "other ones you gave me"
					dialog "before. This should provide"
					dialog "a wealth of brand new insights"
					dialog "into the Juperos civilization!"
					wait()
					dialog "[Fayruz]"
					dialog "All the Transparent"
					dialog "Plates you've given me"
					dialog "should contain more than"
					dialog "enough data for me to fully"
					dialog "complete my research thesis."
					dialog "Once again, thank you so much~"
					wait()
					dialog "[Fayruz]"
					dialog "Still, that doesn't mean that"
					dialog "I will stop collecting data for"
					dialog "my research. Anyway, I have^FFFFFF ^000000 one last story to tell you, about"
					dialog "a man of pure heart chosen by the gods to serve and protect mankind."
					wait()
					dialog "[Fayruz]"
					dialog "For this purpose he was given"
					dialog "gaudy armor which contained"
					dialog "amazing powers, as well as a"
					dialog "book detailing the instructions"
					dialog "for its use. However, he promptly"
					dialog "lost these instructions..."
					wait()
					dialog "^3355FFThe story about the"
					dialog "greatest Juperosian hero"
					dialog "that Fayruz tells you is very"
					dialog "humorous at first, but then it"
					dialog "covers the entire spectrum"
					dialog "of emotion and humanity..."
					wait()
					dialog "^3355FFThe story ends and you"
					dialog "are left with a swelling"
					dialog "feeling of indefatigable"
					dialog "hope and inspiration..."
					dialog "You can make it if you try!^000000"
					dropitem("Transparent_Plate01",1)
					setitem("yuno_book",10)
					setitem("jupe_book",15)
					getexp(100000)
					wait()
					dialog "[Fayruz]"
					dialog "Well, that is the"
					dialog "last and the best story"
					dialog "that I have to share"
					dialog "with you. Perhaps next"
					dialog "time, I'll fill you in on my"
					dialog "research progress~"
					close()
					return
				end
				if ((getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
					dialog "[Fayruz]"
					dialog "Oh, this one seems"
					dialog "to have been created"
					dialog "in a similar era as the"
					dialog "one you gave me earlier."
					dialog "I'm not sure how much new"
					dialog "information this may provide..."
					wait()
					dialog "[Fayruz]"
					dialog "Still, I'm sure this will"
					dialog "helpful in my research. I just"
					dialog "won't be as making progress"
					dialog "as quickly as I had projected."
					dialog "Please, I'd like you to take this^FFFFFF ^000000 as a token of my gratitude."
					if (getvar(Transparent_Plate02) > 0) then
						dropitem("Transparent_Plate02",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate03) > 0) then
						dropitem("Transparent_Plate03",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
					if (getvar(Transparent_Plate04) > 0) then
						dropitem("Transparent_Plate04",1)
						getitem("Gift_Box",1)
						wait()
						dialog "[Fayruz]"
						dialog "Now if you'll excuse"
						dialog "me, I need to go back"
						dialog "to compiling my research..."
						dialog "Thank you so much for"
						dialog("your help, ","+PcName+"."")
						close()
						return
					end
				else
					dialog "[Fayruz]"
					dialog "Oh. There isn't anything"
					dialog "here that would help in my"
					dialog "research, but thank you anyway."
					dialog "If you find anything else while"
					dialog "you're in Juperos, please come^FFFFFF ^000000 back and show it to me, alright?"
					close()
					return
				end
			end
		elseif mresulta == 2 then
			dialog "[Fayruz]"
			dialog "Ah, I see. Well, while"
			dialog "you're here, why don't you"
			dialog "read something? There are"
			dialog "many books that cover some"
			dialog "interesting topics, like"
			dialog "modern adventure history."
			wait()
			dialog "[Fayruz]"
			dialog "Oh, in any case, please"
			dialog "don't forget the favor I asked"
			dialog "of you. If you find anything"
			dialog "in Juperos that's historically"
			dialog "significant, I'd appreciate it"
			dialog "if you bring it right away."
			close()
			return
		end
	elseif getvar(yuno_book) == 10 then
		dialog "[Fayruz]"
		dialog("Oh hello, ","+PcName+"~"")
		dialog "So what exactly brings you"
		dialog "to the Juno Library this time?"
		wait()
		local mresulta = menu("I found another Transparent Plate.","Just visiting, really.")
		if mresulta == 1 then
			if ((getvar(Transparent_Plate01) > 0) or (getvar(Transparent_Plate02) > 0) or (getvar(Transparent_Plate03) > 0) or (getvar(Transparent_Plate04) > 0)) then
				dialog "[Fayruz]"
				dialog "Hmm, well, we've made as"
				dialog "much headway as we can"
				dialog "with the Transparent Plates"
				dialog "you've already given me, but"
				dialog "it can't hurt to have too much"
				dialog "evidence to back my theories."
				wait()
				if (getvar(Transparent_Plate01) > 0) then
					dropitem("Transparent_Plate01",1)
					getitem("Gift_Box",1)
					dialog "[Fayruz]"
					dialog "I really appreciate"
					dialog "your continuing efforts"
					dialog "to help me. Please, would"
					dialog "you take this as my way"
					dialog "saying ''Thanks?'' You've been"
					dialog("great, ","+PcName+"."")
					close()
					return
				end
				if (getvar(Transparent_Plate02) > 0) then
					dropitem("Transparent_Plate02",1)
					getitem("Gift_Box",1)
					dialog "[Fayruz]"
					dialog "I really appreciate"
					dialog "your continuing efforts"
					dialog "to help me. Please, would"
					dialog "you take this as my way"
					dialog "saying ''Thanks?'' You've been"
					dialog("great, ","+PcName+"."")
					close()
					return
				end
				if (getvar(Transparent_Plate03) > 0) then
					dropitem("Transparent_Plate03",1)
					getitem("Gift_Box",1)
					dialog "[Fayruz]"
					dialog "I really appreciate"
					dialog "your continuing efforts"
					dialog "to help me. Please, would"
					dialog "you take this as my way"
					dialog "saying ''Thanks?'' You've been"
					dialog("great, ","+PcName+"."")
					close()
					return
				end
				if (getvar(Transparent_Plate04) > 0) then
					dropitem("Transparent_Plate04",1)
					getitem("Gift_Box",1)
					dialog "[Fayruz]"
					dialog "I really appreciate"
					dialog "your continuing efforts"
					dialog "to help me. Please, would"
					dialog "you take this as my way"
					dialog "saying ''Thanks?'' You've been"
					dialog("great, ","+PcName+"."")
					close()
					return
				end
			else
				dialog "[Fayruz]"
				dialog "Mmm...?"
				dialog "It doesn't look like"
				dialog "you brought another"
				dialog "Transparent Plate."
				dialog "Are you sure that you"
				dialog "didn't misplace it?"
				close()
				return
			end
		elseif mresulta == 2 then
			dialog "[Fayruz]"
			dialog "Ah, I see. Well,"
			dialog "thanks to your help,"
			dialog "I've made a great deal"
			dialog "of progress on my thesis."
			dialog "I really appreciate what you"
			dialog "have done for me, adventurer."
			close()
			return
		end
	end
end

npc("yuno_in04","How to Travel Alone#yuno01",SPRITE_HIDDEN_NPC,118,17,0,0,0,"yuno_in04_How_to_Travel_Alone#yuno01_11817")
function yuno_in04_How_to_Travel_Alone#yuno01_11817()
	dialog "^8B6914*Traveling Alone*"
	dialog "''The Guide to Mastering"
	dialog "Every Skill You Need to"
	dialog "Travel By Your Lonesome.''^000000"
	wait()
	local name = PcName()
	dialog("[","+PcName+"]"")
	dialog "I don't need to"
	dialog "read this. I'm"
	dialog "already the master!"
	close()
end

npc("yuno_in04","Jellopy Soup#yuno02",SPRITE_HIDDEN_NPC,116,106,0,0,0,"yuno_in04_Jellopy_Soup#yuno02_116106")
function yuno_in04_Jellopy_Soup#yuno02_116106()
	dialog "^8B6914*Jellopy Soup*"
	dialog "By Kim Crawford^000000^000000"
	dialog " "
	dialog " "
	dialog " "
	dialog "Publisher:"
	dialog "Muha Books, Co.^000000"
	wait()
	local mresulta = menu("Read.","Close.")
	if mresulta == 1 then
		dialog "^8B6914Once upon a time, three"
		dialog "gentle Sages wandered into"
		dialog "a village recently ravaged by"
		dialog "plague and drought. Tired from"
		dialog "their long journey, they begged"
		dialog "the villagers there for food and"
		dialog "lodging, but Alas, there was none.^000000"
		wait()
		dialog "^8B6914''This village was just"
		dialog "ravaged by plague and"
		dialog "drought! There is no food"
		dialog "here!'' said the butcher. ''Of"
		dialog "lodgings, we have none,'' said"
		dialog "the Dancer. But the Sages were"
		dialog "not discouraged by this talk.^000000"
		wait()
		dialog "^8B6914''If we can have but"
		dialog "1 Jellopy, we shall be"
		dialog "on our way,'' the Sages"
		dialog "bargained. ''1 Jellopy,"
		dialog "what can you do with just"
		dialog "1 Jellopy?!'' asked the"
		dialog "stupefied Super Novice.^000000"
		wait()
		dialog "^8B6914''Why, make Jellopy"
		dialog "Soup!'' replied the Sages."
		dialog "''Is it good?'' asked the Baby"
		dialog "Crusader. ''Kind of,'' said"
		dialog "the Sages. ''But we need the"
		dialog "freshest Jellopy we can find.''^000000"
		wait()
		dialog "^8B6914And so, the entire village"
		dialog "went hunting for Porings to"
		dialog "get their Jellopy. While they"
		dialog "were gone, the Sages took"
		dialog "this chance to plunder the"
		dialog "villagers' homes and then"
		dialog "they lived happily ever after.^000000"
		close()
		return
	elseif mresulta == 2 then
		dialog("[","+PcName+"]"")
		dialog "I don't know..."
		dialog "Isn't this one a"
		dialog "children's book?"
		close()
		return
	end
end

npc("yuno_in04","Aragham Caul Biography#yuno03",SPRITE_HIDDEN_NPC,118,6,0,0,0,"yuno_in04_Aragham_Caul_Biography#yuno03_1186")
function yuno_in04_Aragham_Caul_Biography#yuno03_1186()
	dialog "^8B6914*The Spectacle that is"
	dialog "the Life of Aragham Caul*"
	dialog "By Aragham Caul"
	dialog " "
	dialog " "
	dialog "Publisher:"
	dialog "Caul Books, Co.^000000"
	wait()
	local name = PcName()
	dialog("[","+PcName+"]"")
	dialog "I don't know if this"
	dialog "one is worth opening,"
	dialog "much less actually read..."
	close()
end

npc("yuno_in04","Schwaltzvalt Adventurer#yuno04",SPRITE_HIDDEN_NPC,118,15,0,0,0,"yuno_in04_Schwaltzvalt_Adventurer#yuno04_11815")
function yuno_in04_Schwaltzvalt_Adventurer#yuno04_11815()
	dialog "^8B6914*The Schwaltzvalt Adventurer*"
	dialog "Edited by the Sage Historical"
	dialog "Research Community"
	dialog "''The latest in modern"
	dialog "adventure history of the S.R.''"
	dialog "Publisher:"
	dialog "Academia Press, Co."
	wait()
	local mresulta = menu("Preface","Table of Contents","Close the book.")
	if mresulta == 1 then
		dialog "^8B6914It's the golden age"
		dialog "of adventuring. Now,"
		dialog "more than ever, men and"
		dialog "women around the world"
		dialog "are bravely setting off to"
		dialog "new lands for the sake of"
		dialog "excitement and ''do good-ing.''^000000"
		wait()
		dialog "^8B6914But first, we need to cover"
		dialog "all of the technical jargon"
		dialog "that will appear later in this"
		dialog "book. A ''dungeon'' is a place"
		dialog "where creatures that we call"
		dialog "''monsters'' live. A ''weapon''"
		dialog "is a tool that adventurers...^000000"
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Wait a second..."
		dialog "Why I even reading this?"
		dialog "I'm already a certified"
		dialog "adventuring master!"
		close()
		return
	elseif mresulta == 2 then
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Huh...?"
		wait()
		dialog "^8B6914Ch.1: Jellopy Dos and Don'ts"
		dialog "Ch.2: Learning to Sit"
		dialog "Ch.3: What Does a Weapon Do?"
		dialog "Ch.4: Yes, Knives Are Used"
		dialog "for More than Just Cooking"
		dialog "Ch.5: Potions and When"
		dialog "to Drink Them...^000000"
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "This is a like"
		dialog "the complete idiot's"
		dialog "guide to adventuring."
		dialog "Who did they write"
		dialog "this book for?!"
		close()
		return
	elseif mresulta == 3 then
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Nah. Ironically,"
		dialog "I don't feel like"
		dialog "reading right now."
		close()
		return
	end
end

npc("yuno_in04","Stack of Books#yuno05",SPRITE_HIDDEN_NPC,178,111,0,0,0,"yuno_in04_Stack_of_Books#yuno05_178111")
function yuno_in04_Stack_of_Books#yuno05_178111()
	dialog "^3355FFYou find a series"
	dialog "of paperback books"
	dialog "with titles, printed"
	dialog "on the binding in an"
	dialog "elegantly decorative"
	dialog "cursive style font."
	dialog "The titles include...^000000"
	wait()
	dialog "^8B6914*Volcanic Passion*"
	dialog "*Midnight Crescendo*"
	dialog "*A Paris Affair*"
	dialog "*Fever Pitch*"
	dialog "*The Cowboy Next Door*"
	dialog "*Platonic Romance*"
	dialog "*How Lara Got Her Groove Back*^000000"
	wait()
	local name = PcName()
	dialog("[","+PcName+"]"")
	dialog "What the...?!"
	dialog "This place even has"
	dialog "a romance novel section?"
	close()
end

npc("yuno_in04","Stack of Books#yuno06",SPRITE_HIDDEN_NPC,188,127,0,0,0,"yuno_in04_Stack_of_Books#yuno06_188127")
function yuno_in04_Stack_of_Books#yuno06_188127()
	dialog "^3355FFYou find a series"
	dialog "of heavy, hardbound"
	dialog "books with impressive"
	dialog "sounding titles like...^000000"
	wait()
	dialog "^8B6914*Schwaltzvalt Republic History*"
	dialog "*History of Ancient Economics*"
	dialog "*Secrets of the Forgotten Tombs* *Juno Economy Report A.W. 792*"
	dialog "*Juno Economy Report A.W. 802*"
	dialog "*Juno Economy Report A.W. 822*"
	dialog "*Linguistical Procedural Data*^000000"
	wait()
	local name = PcName()
	dialog("[","+PcName+"]"")
	dialog "..."
	dialog "Everything here just"
	dialog "looks so academic..."
	Emotion(,"ET_SWEAT")
	close()
end

npc("yuno_in04","Paper#yuno07",SPRITE_HIDDEN_NPC,188,116,0,0,0,"yuno_in04_Paper#yuno07_188116")
function yuno_in04_Paper#yuno07_188116()
	dialog "^3355FFIt's a piece of"
	dialog "paper that looks"
	dialog "like a personal letter.^000000"
	wait()
	local mresulta = menu("Read it.","Leave it alone.")
	if mresulta == 1 then
		if getvar(yuno_book) > 7 then
			dialog "^8B6914P.S."
			dialog "Please..."
			dialog "Come back to me."
			dialog " "
			dialog " "
			dialog "Love,"
			dialog "Fayruz^000000"
			close()
			return
		else
			dialog "^8B6914..."
			dialog "I can't forget your smile."
			dialog "No matter what, even if you"
			dialog "hate me, I'll always have these"
			dialog "feelings just for you. You are"
			dialog "the one who is most special,"
			dialog "who means the most to my heart.^000000"
			wait()
			dialog "^8B6914I know we've had our"
			dialog "differences, but please"
			dialog "don't refuse my love. By"
			dialog "your hands, I hope that"
			dialog "you can forgive me for us."
			dialog "- Love, Fayruz^000000"
			wait()
			if (getvar(VAR_ISMARRIED) == 1) then
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Ahhhhhh~"
				dialog "Love sure is nice!"
				close()
				return
			else
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "What th--?!"
				dialog "Booooooooo!"
				dialog "Love stinks!"
				close()
				return
			end
		end
	elseif mresulta == 2 then
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "I guess I better"
		dialog "not look at this."
		dialog "I mean, I might"
		dialog "regret reading it."
		close()
		return
	end
	close()
end

npc("yuno_in04","Book#yuno08",SPRITE_HIDDEN_NPC,188,118,0,0,0,"yuno_in04_Book#yuno08_188118")
function yuno_in04_Book#yuno08_188118()
	if getvar(yuno_book) > 7 then
		dialog "^8B6914*Self-Honesty*"
		dialog "*'Benefits Fo' Life!'*"
		dialog "By Stephen Oyoung"
		dialog " "
		dialog " "
		dialog "Publisher:"
		dialog "Wushu Publishing, Co.^000000"
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "W-whoa!"
		dialog "This book wasn't"
		dialog "here before! It looks"
		dialog "pretty interesting..."
		close()
		return
	else
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "You know what?"
		dialog "I think I'll just flip"
		dialog "through some pages"
		dialog "from a random book."
		dialog "Hmmm, let's see..."
		wait()
		dialog "^8B6914''Admiral, the Kylorians are"
		dialog "still advancing!'' Commander"
		dialog "McKenrick announced without"
		dialog "his usual swagger. ''They're..."
		dialog "They're not stopping!'' But"
		dialog "Admiral Leh's eyes were a cold,"
		dialog "unfeeling shade of sternness.^000000"
		wait()
		dialog "^8B6914''Let the goddamned space"
		dialog "aliens come,'' hissed Leh."
		dialog "''We don't stand a chance"
		dialog "without the Zenoi Sword"
		dialog "to summon the power of"
		dialog "GOD-POING. It's... It's"
		dialog "all over. Damn it all...''^000000"
		wait()
		dialog "^8B6914The doors burst open as"
		dialog "Bucky flew into the room."
		dialog "''The Zenoi Sword! The"
		dialog "Zenoi Sword! Someone's"
		dialog "found it!'' the boy yelled."
		dialog "''Really?! We better hurry:"
		dialog "Earth doesn't have much time!''^000000"
		wait()
		dialog("[","+PcName+"]"")
		dialog "..."
		dialog "......"
		dialog "Whoa. I really"
		dialog "should have read"
		dialog "this masterpiece"
		dialog "from the beginning..."
		close()
		return
	end
end

npc("yuno_in04","Book#yuno09",SPRITE_HIDDEN_NPC,186,104,0,0,0,"yuno_in04_Book#yuno09_186104")
function yuno_in04_Book#yuno09_186104()
	dialog "^3355FFYou find a book"
	dialog "without a title"
	dialog "on its cover.^000000"
	wait()
	local mresulta = menu("Table of Contents","Close the Book.")
	if mresulta == 1 then
		dialog "^8B6914Ch.1: The King of Profit"
		dialog "Ch.2: Mystery of the Wealthy Woman Ch.3: Strange Real Estate Adventure"
		dialog "Ch.4: Investment Apocalypse"
		dialog "Ch.5: Final Attack! Money Clips^000000"
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "What's this"
		dialog "supposed to be?"
		dialog "Some kind of economic"
		dialog "action thriller romance?"
		close()
		return
	elseif mresulta == 2 then
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Maybe I should"
		dialog "just put this book"
		dialog "back where I found it..."
		close()
		return
	end
end

npc("yuno_in04","Book#yuno10",SPRITE_HIDDEN_NPC,188,109,0,0,0,"yuno_in04_Book#yuno10_188109")
function yuno_in04_Book#yuno10_188109()
	dialog "^3355FFYou find a book and"
	dialog "find that the all of the"
	dialog "pages are smudged"
	dialog "with ink once you open it.^000000"
	wait()
	local mresulta = menu("Turn the page.","Put the book away.")
	if mresulta == 1 then
		dialog "^3355FFThe pages are stuck"
		dialog "together, probably because"
		dialog "of the ink that was spilled"
		dialog "and then dried on them."
		dialog "Upon closer examination,"
		dialog "the ink seems to have a"
		dialog "suspiciously dark red color...^000000"
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Huh...?"
		dialog "N-no way!"
		dialog "This is just...!"
		close()
		return
	elseif mresulta == 2 then
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "I shouldn't even"
		dialog "bother trying to read"
		dialog "this. Why would the library"
		dialog "keep such a damaged book?"
		close()
		return
	end
end

npc("yuno_in04","Bundle of Files#yuno11",SPRITE_HIDDEN_NPC,186,125,0,0,0,"yuno_in04_Bundle_of_Files#yuno11_186125")
function yuno_in04_Bundle_of_Files#yuno11_186125()
	if getvar(yuno_book) < 5 then
		dialog "^8B6914*Thesis: The Fall of Juperos*"
		dialog "By Fayruz Khrhiyha"
		dialog "Sage Castle Researcher^000000"
		wait()
		local mresulta = menu("Table of Contents.","Leave it alone.")
		if mresulta == 1 then
			local mresultb = menu("Preface","Close the file.")
			if mresultb == 1 then
				dialog "^8B6914Scholars are certain"
				dialog "that the Juperos civilization"
				dialog "used to be located above the"
				dialog "ground, but it is now buried"
				dialog "beneath the El Mes Plateau."
				dialog "The reasons for the city's"
				dialog "ruin are still nebulous...^000000"
				wait()
				dialog "^8B6914There is much speculation"
				dialog "about the reasons for Jupero's"
				dialog "downfall, but any documentation"
				dialog "from that time period has been"
				dialog "difficult to find. As for now, any evidence we have regarding"
				dialog "Juperos is inconclusive.^000000"
				wait()
				dialog "^8B6914In spite of this lack"
				dialog "of empirical or concrete"
				dialog "data on the civilization of"
				dialog "Juperos, our modern world"
				dialog "may be able to learn much"
				dialog "from that ancient city's ruins."
				dialog "..................^000000"
				if getvar(yuno_book) == 0 then
					setitem("yuno_book",1)
				end
				wait()
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "This..."
				dialog "This is supposed to"
				dialog "be a research thesis?"
				dialog "There's barely any"
				dialog "research in it..."
				close()
				return
			elseif mresultb == 2 then
				dialog("[","+PcName+"]"")
				dialog "Hmm..."
				dialog "This isn't heavy"
				dialog "enough to be a real"
				dialog "academic work. It must"
				dialog "not even be finished yet."
				close()
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+PcName+"]"")
			dialog "Nah..."
			dialog "I'm tired of reading."
			dialog "Ironically enough."
			close()
			return
		end
	elseif getvar(yuno_book) == 5 then
		dialog "^8B6914*Thesis: The Fall of Juperos*"
		dialog "By Fayruz Khrhiyha"
		dialog "Sage Castle Researcher^000000"
		wait()
		local mresulta = menu("Check the Table of Contents.","Leave it alone.")
		if mresulta == 1 then
			dialog "^8B6914 1. Preface"
			dialog " 2. Juperos Background"
			dialog " 3. Theory Behind Its Fall^000000"
			wait()
			local mresultb = menu("Preface","Juperos Background","Theory Behind Its Fall","Leave it alone.")
			if mresultb == 1 then
				dialog "^8B6914Scholars are certain"
				dialog "that the Juperos civilization"
				dialog "used to be located above the"
				dialog "ground, but it is now buried"
				dialog "beneath the El Mes Plateau."
				dialog "The reasons for the city's"
				dialog "ruin are still nebulous...^000000"
				wait()
				dialog "^8B6914There is much speculation"
				dialog "about the reasons for Jupero's"
				dialog "downfall, but any documentation"
				dialog "from that time period has been"
				dialog "difficult to find. As for now, any evidence we have regarding"
				dialog "Juperos is inconclusive.^000000"
				wait()
				dialog "^8B6914In spite of this lack"
				dialog "of empirical or concrete"
				dialog "data on the civilization of"
				dialog "Juperos, our modern world"
				dialog "may be able to learn much"
				dialog "from that ancient city's ruins."
				dialog "..................^000000"
				wait()
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Hmmm..."
				dialog "A whole chapter"
				dialog "dedicated to saying,"
				dialog "''We know absolutely"
				dialog "nothing about something.''"
				dialog "I should write a book~"
				close()
				return
			elseif mresultb == 2 then
				dialog "^8B6914..."
				dialog "......"
				dialog "..........^000000"
				wait()
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "This is all just idle"
				dialog "conjecture! This paper"
				dialog "isn't developed enough"
				dialog "yet to be a real thesis..."
				close()
				return
			elseif mresultb == 3 then
				dialog "^8B6914..."
				dialog "......"
				dialog "..........^000000"
				wait()
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Huh. This writer keeps"
				dialog "talking about theories,"
				dialog "but the more I read, the"
				dialog "less clear I am on what"
				dialog "the theory actually is."
				dialog "I don't think there is one..."
				Emotion(,"ET_SWEAT")
				close()
				return
			elseif mresultb == 4 then
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Ugh... My head hurts"
				dialog "too much from reading"
				dialog "a book for smarty people."
				dialog "I know! I'll play videogames!"
				close()
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+PcName+"]"")
			dialog "I don't feel like"
			dialog "reading this. Not"
			dialog "enough pictures..."
			close()
			return
		end
	elseif getvar(yuno_book) == 7 then
		dialog "^8B6914*Thesis: The Fall of Juperos*"
		dialog "By Fayruz Khrhiyha"
		dialog "Sage Castle Researcher^000000"
		wait()
		local mresulta = menu("Check the Table of Contents.","Leave it alone.")
		if mresulta == 1 then
			dialog "^8B6914 1. Preface"
			dialog " 2. Juperos Background"
			dialog " 3. Theory Behind Its Fall^000000"
			wait()
			local mresultb = menu("Preface","Juperos Background","Theory Behind Its Fall","Leave it alone.")
			if mresultb == 1 then
				dialog "^8B6914Scholars are certain"
				dialog "that the Juperos civilization"
				dialog "used to be located above the"
				dialog "ground, but it is now buried"
				dialog "beneath the El Mes Plateau."
				dialog "The reasons for the city's"
				dialog "ruin are still nebulous...^000000"
				wait()
				dialog "^8B6914There is much speculation"
				dialog "about the reasons for Jupero's"
				dialog "downfall, but any documentation"
				dialog "from that time period has been"
				dialog "difficult to find. As for now, any evidence we have regarding"
				dialog "Juperos is inconclusive.^000000"
				wait()
				dialog "^8B6914In spite of this lack"
				dialog "of empirical or concrete"
				dialog "data on the civilization of"
				dialog "Juperos, our modern world"
				dialog "may be able to learn much"
				dialog "from that ancient city's ruins."
				dialog "..................^000000"
				close()
				return
			elseif mresultb == 2 then
				dialog "^8B6914..."
				dialog "......"
				dialog "..........^000000"
				wait()
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "This is all just idle"
				dialog "conjecture! This paper"
				dialog "isn't developed enough"
				dialog "yet to be a real thesis..."
				close()
				return
			elseif mresultb == 3 then
				dialog "^8B6914..."
				dialog "......"
				dialog "..........^000000"
				wait()
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Huh. This writer keeps"
				dialog "talking about theories,"
				dialog "but the more I read, the"
				dialog "less clear I am on what"
				dialog "the theory actually is."
				dialog "I don't think there is one..."
				Emotion(,"ET_SWEAT")
				close()
				return
			elseif mresultb == 4 then
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Ugh... My head hurts"
				dialog "too much from reading"
				dialog "a book for smarty people."
				dialog "I know! I'll play videogames!"
				close()
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+PcName+"]"")
			dialog "It looks very sophisticated..."
			close()
			return
		end
	elseif getvar(yuno_book) == 9 then
		dialog "^8B6914*Thesis: The Fall of Juperos*"
		dialog "By Fayruz Khrhiyha"
		dialog "Sage Castle Researcher^000000"
		wait()
		local mresulta = menu("Table of Contents.","Leave it alone.")
		if mresulta == 1 then
			dialog "^8B6914 1. Preface"
			dialog " 2. Juperos Background"
			dialog " 3. Theory Behind Its Fall^000000"
			wait()
			local mresultb = menu("Preface","Juperos Background","Theory Behind Its Fall","Leave it alone.")
			if mresultb == 1 then
				dialog "^8B6914Scholars are certain"
				dialog "that the Juperos civilization"
				dialog "used to be located above the"
				dialog "ground, but it is now buried"
				dialog "beneath the El Mes Plateau."
				dialog "The reasons for the city's"
				dialog "ruin are still in debate...^000000"
				wait()
				dialog "^8B6914However, new findings"
				dialog "regarding the history"
				dialog "of Juperos have allowed"
				dialog "us to make a few conclusions.^000000"
				close()
				return
			elseif mresultb == 2 then
				dialog "^8B6914Juperos was built over"
				dialog "a thousand years ago in"
				dialog "an era of peace just after"
				dialog "a major war. Contrary to"
				dialog "popular belief, there isn't any"
				dialog "evidence proving that Juno may"
				dialog "have descended from Juperos.^000000"
				wait()
				dialog "^8B6914In fact, there is a"
				dialog "strong possibility that"
				dialog "another war, between Juno"
				dialog "and Juperos, resulted in Juno's"
				dialog "independence from Juperos and"
				dialog "the destruction of any existing"
				dialog "documentation from that era.^000000"
				wait()
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Yes... Of course!"
				dialog "It all makes sense now!"
				close()
				return
			elseif mresultb == 3 then
				dialog "^8B6914..."
				dialog "......"
				dialog "..........^000000"
				wait()
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Huh. This writer keeps"
				dialog "talking about theories,"
				dialog "but the more I read, the"
				dialog "less clear I am on what"
				dialog "the theory actually is."
				dialog "I don't think there is one..."
				Emotion(,"ET_SWEAT")
				close()
				return
			elseif mresultb == 4 then
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Ugh... My head hurts"
				dialog "too much from reading"
				dialog "a book for smarty people."
				dialog "I know! I'll play videogames!"
				close()
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+PcName+"]"")
			dialog "I know this book..."
			dialog "But I don't feel like"
			dialog "reading it right now."
			close()
			return
		end
	elseif getvar(yuno_book) == 10 then
		dialog "^8B6914*Thesis: The Fall of Juperos*"
		dialog "By Fayruz Khrhiyha"
		dialog "Sage Castle Researcher^000000"
		wait()
		local mresulta = menu("Check the Table of Contents.","Leave it alone.")
		if mresulta == 1 then
			dialog "^8B6914 1. Preface"
			dialog " 2. Juperos Background"
			dialog " 3. Theory Behind Its Fall^000000"
			wait()
			local mresultb = menu("Preface","Juperos Background","Theory Behind Its Fall","Leave it alone.")
			if mresultb == 1 then
				dialog "^8B6914Scholars are certain"
				dialog "that the Juperos civilization"
				dialog "used to be located above the"
				dialog "ground, but it is now buried"
				dialog "beneath the El Mes Plateau."
				dialog "The reasons for the city's"
				dialog "ruin are still in debate...^000000"
				wait()
				dialog "^8B6914However, new findings"
				dialog "regarding the history"
				dialog "of Juperos have allowed"
				dialog "us to make a few conclusions.^000000"
				close()
				return
			elseif mresultb == 2 then
				dialog "^8B6914Juperos was built over"
				dialog "a thousand years ago in"
				dialog "an era of peace just after"
				dialog "a major war. There is now"
				dialog "direct evidence linking Juno"
				dialog "to Juperos proving that Juno"
				dialog "was but a part of Juperos.^000000"
				wait()
				dialog "^8B6914Just like Juno, Juperos"
				dialog "was a society that prided"
				dialog "itself on its advancement"
				dialog "in the sciences which played"
				dialog "a permeating role in civilized"
				dialog "life. Science was reponsible^FFFFFF ^8B6914 for Juperos's rise and downfall."
				close()
				return
			elseif mresultb == 3 then
				dialog "^8B6914What is most unsettling"
				dialog "is recent evidence, including"
				dialog "a first hand written account,"
				dialog "regarding the role of one of"
				dialog "Jupero's foremost scientists"
				dialog "in that city's rise and fall."
				wait()
				dialog "^8B6914If these writings are"
				dialog "authentic, then what actually"
				dialog "happened was that a scientific"
				dialog "revolution occurred as a direct"
				dialog "result of one scientist's effort to manipulate the energies of the"
				dialog "artifact known as Ymir's heart."
				wait()
				dialog "^8B6914This one man and Ymir's"
				dialog "Heart are credited with"
				dialog "the success and prosperity"
				dialog "of the Jupero's civilization."
				dialog "However, there are various accounts prior to Jupero's fall detailing his work with chimera...^000000"
				wait()
				dialog "^8B6914This scientist, supposedly"
				dialog "in his passion to benefit his"
				dialog "people by finding a scientific"
				dialog "method for immortality by using"
				dialog "chimera for testing, was driven"
				dialog "insane. He experimented on"
				dialog "himself with disatrous results.^000000"
				wait()
				dialog "^8B6914There was an error in the"
				dialog "energy calibration of Ymir's"
				dialog "Heart and the scientist was"
				dialog "transformed into the monster"
				dialog "we now know as Chimera. He"
				dialog "and his test subjects were set"
				dialog "loose into the city of Juperos.^000000"
				wait()
				dialog "^8B6914These immortal Chimeras"
				dialog "razed the entire city, killing"
				dialog "countless people. Apparently,"
				dialog "a team of scientists were able"
				dialog "to salvage a fragment of Ymir's"
				dialog "Heart, and use it to lauch part"
				dialog "of Juperos into the sky.^000000"
				wait()
				dialog "^8B6914That section of Juperos"
				dialog "eventually developed into"
				dialog "the city of Juno. Since the"
				dialog "scientists who launched Juno^FFFFFF ^8B6914 into the sky all immediately died"
				dialog "afterwards from an unknown cause, they left no documentation.^000000"
				wait()
				dialog "^8B6914The Chimera, and the"
				dialog "laboratory in which it"
				dialog "was created, is rumored to"
				dialog "remain beneath the ruins of"
				dialog "the once great city of Juperos.^000000"
				close()
				return
			elseif mresultb == 4 then
				local name = PcName()
				dialog("[","+PcName+"]"")
				dialog "Ugh... My head hurts"
				dialog "too much from reading"
				dialog "a book for smarty people."
				dialog "I know! I'll play videogames!"
				close()
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+PcName+"]"")
			dialog "This thesis is"
			dialog "looking pretty good~"
			dialog "Of course, I did have"
			dialog "a hand in making it..."
			close()
			return
		end
	else
		dialog "^8B6914*Thesis: The Fall of Juperos*"
		dialog "By Fayruz Khrhiyha"
		dialog "Sage Castle Researcher^000000"
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Looks pretty..."
		dialog "Historical."
		close()
		return
	end
end

npc("yuno_in04","Penniless Hollgrehenn#yuno20",SPRITE_HIDDEN_NPC,174,111,0,0,0,"yuno_in04_Penniless_Hollgrehenn#yuno20_174111")
function yuno_in04_Penniless_Hollgrehenn#yuno20_174111()
	dialog "^8B6914*Penniless Hollgrehenn*"
	dialog " * Pennyless Hollgrehenn * "
	dialog "By Hollgrehenn"
	dialog " "
	dialog " "
	dialog "Publisher:"
	dialog "Muha Books, Co.^000000"
	wait()
	local name = PcName()
	dialog("[","+PcName+"]"")
	dialog "This book looks"
	dialog "like a total piece of"
	dialog "crap. I'd have more"
	dialog "fun getting my teeth"
	dialog "drilled by a blindfolded"
	dialog "dentist. Or would I...?"
	close()
end

npc("yuno_in04","Ambitious Hollgrehenn#yuno20",SPRITE_HIDDEN_NPC,168,109,0,0,0,"yuno_in04_Ambitious_Hollgrehenn#yuno20_168109")
function yuno_in04_Ambitious_Hollgrehenn#yuno20_168109()
	dialog "^8B6914*Hollgrehenn: The Ambition* "
	dialog "By Aragham Caul* "
	dialog " "
	dialog " "
	dialog " "
	dialog "Publisher:"
	dialog "Muha Books, Co.^000000"
	wait()
	dialog "^8B6914..."
	dialog "He would stop at nothing"
	dialog "to have the greatest weapon"
	dialog "in the world in his possession.^FFFFFF ^8B6914 He became a smith so that he"
	dialog "could discern which weapons"
	dialog "were the most powerful...^000000"
	wait()
	local name = PcName()
	dialog("[","+PcName+"]"")
	dialog "That's strange..."
	dialog "The next page"
	dialog "has been torn out."
	close()
end

npc("yuno_in04","Popular Feasts#yuno20",SPRITE_HIDDEN_NPC,102,106,0,0,0,"yuno_in04_Popular_Feasts#yuno20_102106")
function yuno_in04_Popular_Feasts#yuno20_102106()
	dialog "^8B6914*Popular Feasts*"
	dialog "By Cabbage Pickle Community"
	dialog " "
	dialog " "
	dialog " "
	dialog "Publisher:"
	dialog "Muha Books, Co.^000000"
	wait()
	local mresulta = menu(" 1. Fried Yoyo Tails"," 14. Poring Salad"," 252. Beak Soup")
	if mresulta == 1 then
		dialog "^8B6914..."
		dialog "If possible, try"
		dialog "to use tails cut"
		dialog "from live Yoyos."
		dialog "Now, as for skinning...^000000"
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Um..."
		dialog "Barf?"
	elseif mresulta == 2 then
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Hey, this page is gone!"
		dialog "I guess Poring Salad is"
		dialog "the most popular feast"
		dialog "in this entire book."
	elseif mresulta == 3 then
		dialog "^8B6914..."
		dialog "Fry the cut beaks"
		dialog "using herbal oil until"
		dialog "crisp. Then, pour the"
		dialog "feathers into a blender...^000000"
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Hmm..."
		dialog "Sounds a little"
		dialog "too gourmet for my"
		dialog "taste. And by ''gourmet,''"
		dialog "I mean, ''totally gross.''"
	end
	close()
end

npc("yuno_in04","Hamerun, Rat Hunter#yuno20",SPRITE_HIDDEN_NPC,111,108,0,0,0,"yuno_in04_Hamerun,_Rat_Hunter#yuno20_111108")
function yuno_in04_Hamerun,_Rat_Hunter#yuno20_111108()
	local name = PcName()
	dialog("[","+PcName+"]"")
	dialog "I can't..."
	dialog "reach it...!"
	close()
end

npc("yuno_in04","Red Book#yuno20",SPRITE_HIDDEN_NPC,167,127,0,0,0,"yuno_in04_Red_Book#yuno20_167127")
function yuno_in04_Red_Book#yuno20_167127()
	dialog "^3355FFYou find a book"
	dialog "with red binding.^000000"
	wait()
	local mresulta = menu("Read.","Leave it alone.")
	if mresulta == 1 then
		dialog "^8B6914...^000000"
		wait()
		dialog "^8B6914..."
		dialog "......^000000"
		wait()
		dialog "^8B6914..."
		dialog "......"
		dialog ".........^000000"
		wait()
		dialog "^8B6914..."
		dialog "......"
		dialog "........."
		dialog "............^000000"
		wait()
		Emotion(,"ET_PROFUSELY_SWAT")
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "This is..."
		dialog "A compilation of"
		dialog "Shakespeare in "
		dialog "coloring book format?"
		wait()
		dialog("[","+PcName+"]"")
		dialog "Wait..."
		dialog "Why would fans of"
		dialog "Shakespeare even"
		dialog "want a coloring book?"
		wait()
		dialog("[","+PcName+"]"")
		dialog "Hmm... Well..."
		dialog "I suppose little kids who"
		dialog "read Shakespeare would"
		dialog "appreciate something like that."
		wait()
		dialog("[","+PcName+"]"")
		dialog "Hold on..."
		dialog "Do little kids who"
		dialog "are able to read the"
		dialog "works of Shakespeare"
		dialog "even exist? I hope not..."
	elseif mresulta == 2 then
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "What a strange"
		dialog "and mysterious book."
		dialog "I'll never know what's"
		dialog "inside unless I read it!"
		dialog "Come on! Doesn't the red"
		dialog "binding mean something?"
	end
	close()
end

npc("yuno_in04","Scroll#yuno20",SPRITE_HIDDEN_NPC,121,109,0,0,0,"yuno_in04_Scroll#yuno20_121109")
function yuno_in04_Scroll#yuno20_121109()
	dialog "^3355FFYou've found an"
	dialog "antiquated scroll"
	dialog "that's collected a"
	dialog "layer of fine dust.^000000"
	wait()
	local mresulta = menu("Peruse","Leave it alone")
	if mresulta == 1 then
		dialog "^8B6914Item Upgrade Introduction"
		dialog " "
		dialog " "
		dialog " "
		dialog "1. Item Upgrade Definition"
		dialog " "
		dialog "The key to success when"
		dialog "upgrading items comes from"
		dialog "only one place: Your ''Mind.''"
		dialog " "
		dialog " "
		dialog " "
		dialog "2. Power of a Positive Attitude"
		dialog "Before trying to upgrade"
		dialog "an item, plan out how high"
		dialog "you want to upgrade and how"
		dialog "much you'll spend beforehand."
		dialog "But like all ladies, Lady Luck"
		dialog "smiles when you fully splurge.^000000"
		dialog " "
		dialog " "
		wait()
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "Wait, wait..."
		dialog "This thing IS old."
		dialog "I mean, it's obviously"
		dialog "written from a patriarchal"
		dialog "standpoint that promotes"
		dialog "bipartisan gender roles."
		wait()
		dialog("[","+PcName+"]"")
		dialog "I'm..."
		dialog "I'm so offended."
	elseif mresulta == 2 then
		local name = PcName()
		dialog("[","+PcName+"]"")
		dialog "This scroll is far too"
		dialog "primitive. There's been"
		dialog "all sorts of technological"
		dialog "reading advances that I can't"
		dialog "live without... Like pages."
	end
	close()
end

npc("juperos_01","Bronze Statue#jupe01",SPRITE_CLEAR_NPC,99,112,0,0,0,"juperos_01_Bronze_Statue#jupe01_99112")
function juperos_01_Bronze_Statue#jupe01_99112()
	if (getvar(yuno_book) > 3) then
		dialog "^3355FF''Do you wish to see"
		dialog "the end of the madness?"
		dialog "He is waiting where the three"
		dialog "columns were destroyed, where"
		dialog "two hundred illusions wander.''^000000"
		close()
		return
	elseif (getvar(yuno_book) == 3) then
		dialog("[","+PcName+"]"")
		dialog "I better go and"
		dialog "see Feyruz in the"
		dialog "Juno Library and tell"
		dialog "her about the inscription."
		close()
		return
	else
		dialog "^3355FFThere's a peculiar"
		dialog "engraving on the"
		dialog "Bronze Statue's rod.^000000"
		wait()
		local mresulta = menu("Investigate","Ignore it")
		if mresulta == 1 then
			dialog "^3355FFIt's an inscription that's"
			dialog "written in an old language"
			dialog "that you can't understand,"
			dialog "but have no problem reading"
			dialog "and making out the sounds"
			dialog "for some weird reason.^000000"
			wait()
			local name = PcName()
			dialog("[","+PcName+"]"")
			dialog "This is creepy!"
			dialog "I know that I'm not"
			dialog "supposed to be able"
			dialog "to read this, but here"
			dialog "I am. I know what sounds"
			dialog "all of these letters make..."
			wait()
			if (getvar(yuno_book) == 2) then
				setitem("yuno_book",3)
				dialog("[","+PcName+"]"")
				dialog "Then again, Fayruz did"
				dialog "say this was enchanted."
				dialog "Okay, I guess I'll go back"
				dialog "to the Juno Library and"
				dialog "tell her what I found."
				close()
				return
			end
			dialog("[","+PcName+"]"")
			dialog "Huh. Only a scholar,"
			dialog "maybe someone even in"
			dialog "Juno, could make sense"
			dialog "of what this stuff says."
			close()
			return
		elseif mresulta == 2 then
		end
	end
end

npc("juperos_01","Stone Statue#jupe02",SPRITE_CLEAR_NPC,123,92,0,0,0,"juperos_01_Stone_Statue#jupe02_12392")
function juperos_01_Stone_Statue#jupe02_12392()
	if (getvar(yuno_book) > 0) then
		dialog "^3355FFIt's a stone statue"
		dialog "that looks exactly like"
		dialog "the one in the Juno Library."
		dialog "However, it has sculptures"
		dialog "of books instead of real ones.^000000"
		wait()
		dialog "^3355FFIt's possible that the"
		dialog "statue in the Juno Library"
		dialog "was made after this one."
		dialog "But who can be sure?^000000"
		close()
		return
	else
		dialog "^3355FFIt's an old"
		dialog "statue sculpted"
		dialog "out of stone.^000000"
		close()
		return
	end
end

npc("juperos_01","Bronze Statue#jupe03",SPRITE_CLEAR_NPC,99,71,0,0,0,"juperos_01_Bronze_Statue#jupe03_9971")
function juperos_01_Bronze_Statue#jupe03_9971()
	dialog "^3355FFIt's an elaborate"
	dialog "bronze statue that"
	dialog "is twice the height of"
	dialog "a normal human being.^000000"
	close()
end

npc("juperos_01","Sculpture#jupe05",SPRITE_CLEAR_NPC,79,92,0,0,0,"juperos_01_Sculpture#jupe05_7992")
function juperos_01_Sculpture#jupe05_7992()
	dialog "^3355FFIt's a sculpture that"
	dialog "looks familiar to you.^000000"
	close()
end

npc("juperos_01","Machine Statue#jupe04",SPRITE_CLEAR_NPC,215,127,0,0,0,"juperos_01_Machine_Statue#jupe04_215127")
function juperos_01_Machine_Statue#jupe04_215127()
	dialog "^3355FFThis is the bust of a"
	dialog "humanoid machine with"
	dialog "a familiar Crest Piece"
	dialog "carved into the middle.^000000"
	wait()
	dialog "^3355FFThe statue's entire"
	dialog "form is mind boggling,"
	dialog "but you manage to note"
	dialog "that its outstretched"
	dialog "arm points westward.^000000"
	close()
end
