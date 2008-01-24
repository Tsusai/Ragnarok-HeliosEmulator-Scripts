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

npc("jupe_area2","#hole#2-1",spr_CLEAR_NPC,74,224,0,0,0,"jupe_area2_#hole#2-1_74224")
--[[OnCommand: "on"
	enablenpc "#hole#2-1"
end

OnCommand: "off"
	disablenpc "#hole#2-1"
end

OnCommand: "stop_timer"
	stoptimer()
end
]]--
function jupe_area2_#hole#2-1_74224()
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	showimage("1.bmp",2)
	if (gameing2 == 1) then
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		close()
		showimage("1.bmp",255)
		return
	elseif ((getvar(Piece_Of_Crest1) > 0) or (getvar(Piece_Of_Crest2) > 0) or (getvar(Piece_Of_Crest3) > 0) or (getvar(Piece_Of_Crest4) > 0)) then
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		wait()
		local mresulta = menu("Insert a Crest Piece.","Cancel.")
		if mresulta == 1 then
			if (getvar(Piece_Of_Crest1) > 0) then
				dialog "^3355FFYou take out your"
				dialog "Crest Piece and place"
				dialog "it into the slot where it"
				dialog "happens to fit perfectly.^000000"
				ShowEffect("#hole#2-1","EF_TOPRANK")
				showimage("1-1.bmp",2)
				wait()
				local gameing2 = GetGlobalVar "050420_jupe_area2"
				if (gameing2 == 1) then
					dialog "^3355FFNothing happens."
					dialog "Perhaps an alarm or"
					dialog "some other safety measure"
					dialog "was activated to keep the"
					dialog "Crest Piece from activating"
					dialog "this transportation device."
					dialog "You retrieve the Crest Piece.^000000"
					close()
					showimage("1-1.bmp",255)
					return
				else
					dialog "^3355FFThe slot rotates and"
					dialog "the Crest Piece moves as"
					dialog "if it were turning a key. You"
					dialog "feel a weak tremor as a Warp"
					dialog "Portal to the other side is"
					dialog "activated. You then retrieve"
					dialog "your Crest Piece.^000000"
					InitTimer()
					cmdothernpc("Warp#2-1","on")
					cmdothernpc("Red Alarm#2-1","on")
					disablenpc "#hole#2-1"
					close()
					showimage("1-1.bmp",255)
					return
				end
			else
				dialog "^3355FFUnfortunately, you're"
				dialog "not carrying anything"
				dialog "that might be able to fit"
				dialog "into the slot and activate"
				dialog "this mechanical device.^000000"
				close()
				showimage("1.bmp",255)
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+","name","+","]")
			dialog "Hmmm..."
			dialog "Do I have anything"
			dialog "that might make this"
			dialog "weird machine work?"
			close()
			showimage("1.bmp",255)
			return
		end
		close()
	else
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		close()
		showimage("1.bmp",255)
		return
	end
end

OnTimer:(22500)
	enablenpc("#hole#2-1","on")
	cmdothernpc("Red Alarm#2-1","off")
end

hiddenwarp("jupe_area2","jupe_area2_Warp#2-1_80221",80,221,2,2)
OnInit:()
	disablenpc "Warp#2-1"
end

OnCommand: "off"
	disablenpc "Warp#2-1"
end

OnCommand: "reset"
	disablenpc "Warp#2-1"
end

OnCommand: "on"
	enablenpc "Warp#2-1"
	ShowEffect("Warp#2-1",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area2_Warp#2-1_80221()
	moveto("jupe_area2",116,259)
end

OnTimer:(22500)
	cmdothernpc("Warp#2-1","reset")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm#2-1_116259",116,259,2,2)
OnInit:()
	disablenpc "Red Alarm#2-1"
end

OnCommand: "off"
	disablenpc "Red Alarm#2-1"
end

OnCommand: "on"
	enablenpc "Red Alarm#2-1"
end

function jupe_area2_Red_Alarm#2-1_116259()
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	gameing2("=","gameing2","+",1)
	SetGlobalVar("050420_jupe_area2",1)
	cmdothernpc("Red Alarm Start#2-1","on")
	cmdothernpc("Red Alarm#2-1","off")
	cmdothernpc("#hole#2-1","stop_timer")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm_Start#2-1_27188",27,188,0,0)
OnInit:()
	disablenpc "Red Alarm Start#2-1"
end

OnCommand: "off"
	disablenpc "Red Alarm Start#2-1"
end

OnCommand: "reset"
	disablenpc "Red Alarm Start#2-1"
end

OnCommand: "on"
	enablenpc "Red Alarm Start#2-1"
	cmdothernpc("Red Alarm On#2-1","on")
end

hiddenwarp "jupe_area2" "Red Alarm On#2-1" 28 188 0 0 0
OnInit:()
	disablenpc "Red Alarm On#2-1"
end

OnCommand: "off"
	disablenpc "Red Alarm On#2-1"
end

OnCommand: "on"
	enablenpc "Red Alarm On#2-1"
	InitTimer()
end

OnTimer:(1000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Those of you who have come here...")
end

OnTimer:(3000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I do not intend to stop you.")
	sound("jupe_warning.wav",2,0,0)
	sound("jupe_warning.wav",2,0,1000)
	cmdothernpc("#hole#2-1","off")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"But I assume you are prepared for a few obstacles...")
	cmdothernpc("Monster1#2-1","on")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"After all, you are venturing through a forbidden area!")
end

OnTimer:(8000)
	cmdothernpc("Red Alarm On#2-1","off")
	sound("jupe_warning.wav",2,0,0)
	sound("jupe_warning.wav",2,0,1000)
end

hiddenwarp "jupe_area2" "Monster1#2-1" 29 188 0 0 0
OnInit:()
	disablenpc "Monster1#2-1"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#2-1"
end

OnCommand: "on"
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	InitTimer()
	enablenpc "Monster1#2-1"
	callmonster("jupe_area2","DIMIK","Security Guard",126,252)
	callmonster("jupe_area2","VENATU","Security Guard",127,252)
	callmonster("jupe_area2","DIMIK","Security Guard",128,252)
	callmonster("jupe_area2","VENATU","Security Guard",129,252)
	callmonster("jupe_area2","DIMIK","Security Guard",130,252)
	callmonster("jupe_area2","VENATU","Security Guard",131,252)
	callmonster("jupe_area2","DIMIK","Security Guard",132,252)
	callmonster("jupe_area2","VENATU","Security Guard",133,252)
	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do you realize this is a hallucination?")
		SetGlobalVar("050420_jupe_area2",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster1#2-1","reset")
		cmdothernpc("#hole#2-1","on")
	return

end

OnMyMobDead:()
	if npcv "Monster1#2-1" [VAR_MYMOBCOUNT] < 1 then
		cmdothernpc("Monster2#2-1","on")
		cmdothernpc("Monster1#2-1","reset")
		stoptimer()
	end
end

hiddenwarp("jupe_area2","jupe_area2_Monster2#2-1_30188",30,188,0,0)
OnInit:()
	disablenpc "Monster1#2-1"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#2-1"
end

OnCommand: "on"
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	InitTimer()
	OnTimer:(2000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"How about now?")
		sound("jupe_warning.wav",2,0,0)
		sound("jupe_warning.wav",2,0,1000)
	return

	OnTimer:(4000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Let me see...")
	return

	OnTimer:(7000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Just how strong you are!")
		sound("jupe_warning.wav",2,0,0)
		sound("jupe_warning.wav",2,0,1000)
		enablenpc "Monster2#2-1"
		callmonster("jupe_area2","VENATU","Security Guard",126,236)
		callmonster("jupe_area2","DIMIK","Security Guard",127,236)
		callmonster("jupe_area2","VENATU","Security Guard",128,236)
		callmonster("jupe_area2","DIMIK","Security Guard",129,236)
		callmonster("jupe_area2","VENATU","Security Guard",130,236)
		callmonster("jupe_area2","DIMIK","Security Guard",131,236)
		callmonster("jupe_area2","VENATU","Security Guard",132,236)
		callmonster("jupe_area2","DIMIK","Security Guard",133,236)
	return

	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Bwahaha! You're only good at running away!")
		cmdothernpc("Monster2#2-1","reset")
		cmdothernpc("#hole#2-1","on")
		cmdothernpc("Red Alarm#2-1","off")
		SetGlobalVar("050420_jupe_area2",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster2#2-1","reset")
	return

	OnMyMobDead:()
		if npcv "Monster2#2-1" [VAR_MYMOBCOUNT] < 1 then
			broadcastinmap2("FF0000","FW_NORMAL",12,0,0," Zzzzt. Zzzzt..... ")
			cmdothernpc("Monster2#2-1","reset")
			cmdothernpc("#hole#2-1","on")
			cmdothernpc("Red Alarm#2-1","off")
			SetGlobalVar("050420_jupe_area2",0)
			stoptimer()
		end
	return

npc("jupe_area2","#hole#2-2",spr_CLEAR_NPC,138,238,0,0,0,"jupe_area2_#hole#2-2_138238")
OnCommand: "on"
	enablenpc "#hole#2-2"
end

OnCommand: "off"
	disablenpc "#hole#2-2"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area2_#hole#2-2_138238()
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	showimage("2.bmp",2)
	if (gameing2 == 1) then
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		close()
		return
	elseif ((getvar(Piece_Of_Crest1) > 0) or (getvar(Piece_Of_Crest2) > 0) or (getvar(Piece_Of_Crest3) > 0) or (getvar(Piece_Of_Crest4) > 0)) then
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		wait()
		local mresulta = menu("Insert a Crest Piece.","Cancel.")
		if mresulta == 1 then
			if (getvar(Piece_Of_Crest2) > 0) then
				dialog "^3355FFYou take out your"
				dialog "Crest Piece and place"
				dialog "it into the slot where it"
				dialog "happens to fit perfectly.^000000"
				ShowEffect("#hole#2-2","EF_TOPRANK")
				showimage("2-1.bmp",2)
				wait()
				local gameing2 = GetGlobalVar "050420_jupe_area2"
				if (gameing2 == 1) then
					dialog "^3355FFNothing happens."
					dialog "Perhaps an alarm or"
					dialog "some other safety measure"
					dialog "was activated to keep the"
					dialog "Crest Piece from activating"
					dialog "this transportation device."
					dialog "You retrieve the Crest Piece.^000000"
					close()
					showimage("2-1.bmp",255)
					return
				else
					dialog "^3355FFThe slot rotates and"
					dialog "the Crest Piece moves as"
					dialog "if it were turning a key. You"
					dialog "feel a weak tremor as a Warp"
					dialog "Portal to the other side is"
					dialog "activated. You then retrieve"
					dialog "your Crest Piece.^000000"
					InitTimer()
					cmdothernpc("Warp#2-2","on")
					cmdothernpc("Red Alarm#2-2","on")
					disablenpc "#hole#2-2"
					close()
					showimage("2-1.bmp",255)
					return
				end
			else
				dialog "^3355FFUnfortunately, you're"
				dialog "not carrying anything"
				dialog "that might be able to fit"
				dialog "into the slot and activate"
				dialog "this mechanical device.^000000"
				close()
				showimage("2.bmp",255)
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+","name","+","]")
			dialog "Hmmm..."
			dialog "Do I have anything"
			dialog "that might make this"
			dialog "weird machine work?"
			close()
			showimage("2.bmp",255)
			return
		end
		close()
	else
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		close()
		showimage("2.bmp",255)
		return
	end
end

OnTimer:(22500)
	enablenpc("#hole#2-2","on")
	cmdothernpc("Red Alarm#2-2","off")
end

hiddenwarp("jupe_area2","jupe_area2_Warp#2-2_142225",142,225,2,2)
OnInit:()
	disablenpc "Warp#2-2"
end

OnCommand: "off"
	disablenpc "Warp#2-2"
end

OnCommand: "reset"
	disablenpc "Warp#2-2"
end

OnCommand: "on"
	enablenpc "Warp#2-2"
	ShowEffect("Warp#2-2",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area2_Warp#2-2_142225()
	moveto("jupe_area2",142,191)
end

OnTimer:(22500)
	cmdothernpc("Warp#2-2","reset")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm#2-2_142191",142,191,2,2)
OnInit:()
	disablenpc "Red Alarm#2-2"
end

OnCommand: "off"
	disablenpc "Red Alarm#2-2"
end

OnCommand: "on"
	enablenpc "Red Alarm#2-2"
end

function jupe_area2_Red_Alarm#2-2_142191()
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	gameing2("=","gameing2","+",1)
	SetGlobalVar("050420_jupe_area2",1)
	cmdothernpc("Red Alarm Start#2-2","on")
	cmdothernpc("Red Alarm#2-2","off")
	cmdothernpc("#hole#2-2","stop_timer")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm_Start#2-2_27189",27,189,0,0)
OnInit:()
	disablenpc "Red Alarm Start#2-2"
end

OnCommand: "off"
	disablenpc "Red Alarm Start#2-2"
end

OnCommand: "reset"
	disablenpc "Red Alarm Start#2-2"
end

OnCommand: "on"
	enablenpc "Red Alarm Start#2-2"
	cmdothernpc("Red Alarm On#2-2","on")
end

hiddenwarp "jupe_area2" "Red Alarm On#2-2" 28 189 0 0 0
OnInit:()
	disablenpc "Red Alarm On#2-2"
end

OnCommand: "off"
	disablenpc "Red Alarm On#2-2"
end

OnCommand: "on"
	enablenpc "Red Alarm On#2-2"
	InitTimer()
end

OnTimer:(1000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Come on, come on!")
end

OnTimer:(3000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Yes. Run... Right into my hands!")
	cmdothernpc("#hole#2-2","off")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do you want to know who I am?")
	cmdothernpc("Monster1#2-2","on")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"You will know, once you defeat all of my minions!")
end

OnTimer:(8000)
	cmdothernpc("Red Alarm On#2-2","off")
end

hiddenwarp "jupe_area2" "Monster1#2-2" 29 189 0 0 0
OnInit:()
	disablenpc "Monster1#2-2"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#2-2"
end

OnCommand: "on"
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	InitTimer()
	enablenpc "Monster1#2-2"
	callmonster("jupe_area2","DIMIK","High Guard",126,176)
	callmonster("jupe_area2","VENATU","High Guard",127,176)
	callmonster("jupe_area2","DIMIK","High Guard",128,176)
	callmonster("jupe_area2","VENATU","High Guard",129,176)
	callmonster("jupe_area2","DIMIK","High Guard",130,176)
	callmonster("jupe_area2","VENATU","High Guard",131,176)
	callmonster("jupe_area2","DIMIK","High Guard",132,176)
	callmonster("jupe_area2","VENATU","High Guard",133,176)
	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I can't believe how cowardly you really are...")
		SetGlobalVar("050420_jupe_area2",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster1#2-2","reset")
		cmdothernpc("#hole#2-2","on")
	return

end

OnMyMobDead:()
	if npcv "Monster1#2-2" [VAR_MYMOBCOUNT] < 1 then
		cmdothernpc("Monster2#2-2","on")
		cmdothernpc("Monster1#2-2","reset")
		stoptimer()
	end
end

hiddenwarp "jupe_area2" "Monster2#2-2" 30 189 0 0 0
OnInit:()
	disablenpc "Monster2#2-2"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster2#2-2"
end

OnCommand: "on"
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	InitTimer()
	OnTimer:(2000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I was the head of this underground laboratory.")
	return

	OnTimer:(4000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"But that was a long time ago, back when I was merely a human.")
	return

	OnTimer:(6000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I was called Vesper Newton. Hahah, they called me a mad man back then.")
		enablenpc "Monster2#2-2"
		callmonster("jupe_area2","VENATU","Security Guard",126,156)
		callmonster("jupe_area2","DIMIK","Security Guard",127,156)
		callmonster("jupe_area2","VENATU","Security Guard",128,156)
		callmonster("jupe_area2","DIMIK","Security Guard",129,156)
		callmonster("jupe_area2","VENATU","Security Guard",130,156)
		callmonster("jupe_area2","DIMIK","Security Guard",131,156)
		callmonster("jupe_area2","VENATU","Security Guard",132,156)
		callmonster("jupe_area2","DIMIK","Security Guard",133,156)
		callmonster("jupe_area2","VENATU","Security Guard",133,156)
		callmonster("jupe_area2","DIMIK","Security Guard",127,152)
		callmonster("jupe_area2","VENATU","Security Guard",129,152)
		callmonster("jupe_area2","DIMIK","Security Guard",130,152)
		callmonster("jupe_area2","VENATU","Security Guard",132,152)
	return

	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"...Not yet.")
		cmdothernpc("Monster2#2-2","reset")
		cmdothernpc("#hole#2-2","on")
		cmdothernpc("Red Alarm#2-2","off")
		SetGlobalVar("050420_jupe_area2",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster2#2-2","reset")
	return

	OnMyMobDead:()
		if npcv "Monster2#2-2" [VAR_MYMOBCOUNT] < 1 then
			broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Not yet!")
			cmdothernpc("Monster2#2-2","reset")
			cmdothernpc("#hole#2-2","on")
			cmdothernpc("Red Alarm#2-2","off")
			SetGlobalVar("050420_jupe_area2",0)
			stoptimer()
		end
	return


npc("jupe_area2","#hole#2-3",spr_CLEAR_NPC,127,146,0,0,0,"jupe_area2_#hole#2-3_127146")
OnCommand: "on"
	enablenpc "#hole#2-3"
end

OnCommand: "off"
	disablenpc "#hole#2-3"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area2_#hole#2-3_127146()
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	showimage("3.bmp",2)
	if (gameing2 == 1) then
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		close()
		showimage("3.bmp",255)
		return
	elseif ((getvar(Piece_Of_Crest1) > 0) or (getvar(Piece_Of_Crest2) > 0) or (getvar(Piece_Of_Crest3) > 0) or (getvar(Piece_Of_Crest4) > 0)) then
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		wait()
		local mresulta = menu("Insert a Crest Piece.","Cancel.")
		if mresulta == 1 then
			if (getvar(Piece_Of_Crest3) > 0) then
				dialog "^3355FFYou take out your"
				dialog "Crest Piece and place"
				dialog "it into the slot where it"
				dialog "happens to fit perfectly.^000000"
				ShowEffect("#hole#2-3","EF_TOPRANK")
				showimage("3-1.bmp",2)
				wait()
				local gameing2 = GetGlobalVar "050420_jupe_area2"
				if (gameing2 == 1) then
					dialog "^3355FFNothing happens."
					dialog "Perhaps an alarm or"
					dialog "some other safety measure"
					dialog "was activated to keep the"
					dialog "Crest Piece from activating"
					dialog "this transportation device."
					dialog "You retrieve the Crest Piece.^000000"
					close()
					showimage("3-1.bmp",255)
					return
				else
					dialog "^3355FFThe slot rotates and"
					dialog "the Crest Piece moves as"
					dialog "if it were turning a key. You"
					dialog "feel a weak tremor as a Warp"
					dialog "Portal to the other side is"
					dialog "activated. You then retrieve"
					dialog "your Crest Piece.^000000"
					InitTimer()
					cmdothernpc("Warp#2-3","on")
					cmdothernpc("Red Alarm#2-3","on")
					disablenpc "#hole#2-3"
					close()
					showimage("3-1.bmp",255)
					return
				end
			else
				dialog "^3355FFUnfortunately, you're"
				dialog "not carrying anything"
				dialog "that might be able to fit"
				dialog "into the slot and activate"
				dialog "this mechanical device.^000000"
				close()
				showimage("3.bmp",255)
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+","name","+","]")
			dialog "Hmmm..."
			dialog "Do I have anything"
			dialog "that might make this"
			dialog "weird machine work?"
			close()
			showimage("3.bmp",255)
			return
		end
		close()
	else
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		close()
		showimage("3.bmp",255)
		return
	end
end

OnTimer:(22500)
	enablenpc("#hole#2-3","on")
	cmdothernpc("Red Alarm#2-3","off")
end

hiddenwarp("jupe_area2","jupe_area2_Warp#2-3_130137",130,137,2,2)
OnInit:()
	disablenpc "Warp#2-3"
end

OnCommand: "off"
	disablenpc "Warp#2-3"
end

OnCommand: "reset"
	disablenpc "Warp#2-3"
end

OnCommand: "on"
	enablenpc "Warp#2-3"
	ShowEffect("Warp#2-3",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area2_Warp#2-3_130137()
	moveto("jupe_area2",130,105)
end

OnTimer:(22500)
	cmdothernpc("Warp#2-3","reset")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm#2-3_130105",130,105,0,4)
OnInit:()
	disablenpc "Red Alarm#2-3"
end

OnCommand: "off"
	disablenpc "Red Alarm#2-3"
end

OnCommand: "on"
	enablenpc "Red Alarm#2-3"
end

function jupe_area2_Red_Alarm#2-3_130105()
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	gameing2("=","gameing2","+",1)
	SetGlobalVar("050420_jupe_area2",1)
	cmdothernpc("Red Alarm Start#2-3","on")
	cmdothernpc("Red Alarm#2-3","off")
	cmdothernpc("#hole#2-3","stop_timer")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm_Start#2-3_27190",27,190,0,0)
OnInit:()
	disablenpc "Red Alarm Start#2-3"
end

OnCommand: "off"
	disablenpc "Red Alarm Start#2-3"
end

OnCommand: "reset"
	disablenpc "Red Alarm Start#2-3"
end

OnCommand: "on"
	enablenpc "Red Alarm Start#2-3"
	cmdothernpc("Red Alarm On#2-3","on")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm_On#2-3_281900",28,1900,0,0)
OnInit:()
	disablenpc "Red Alarm On#2-3"
end

OnCommand: "off"
	disablenpc "Red Alarm On#2-3"
end

OnCommand: "on"
	enablenpc "Red Alarm On#2-3"
	InitTimer()
end

OnTimer:(1000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"These security systems...")
end

OnTimer:(3000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"They're not really for protection.")
	cmdothernpc("#hole#2-3","off")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"It's sort of just a hobby to pass the time...")
	cmdothernpc("Monster1#2-3","on")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Being immortal, I have a lot of time on my hands...")
end

OnTimer:(8000)
	cmdothernpc("Red Alarm On#2-3","off")
end

hiddenwarp "jupe_area2" "Monster1#2-3" 29 190 0 0 0
OnInit:()
	disablenpc "Monster1#2-3"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#2-3"
end

OnCommand: "on"
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	InitTimer()
	enablenpc "Monster1#2-3"
	callmonster("jupe_area2","VENATU","Security Guard",126,89)
	callmonster("jupe_area2","DIMIK","Security Guard",127,89)
	callmonster("jupe_area2","VENATU","Security Guard",128,89)
	callmonster("jupe_area2","DIMIK","Security Guard",129,89)
	callmonster("jupe_area2","VENATU","Security Guard",130,89)
	callmonster("jupe_area2","DIMIK","Security Guard",131,89)
	callmonster("jupe_area2","VENATU","Security Guard",132,89)
	callmonster("jupe_area2","DIMIK","Security Guard",133,89)
	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Zzzzt... Zzzzt...")
		SetGlobalVar("050420_jupe_area2",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster1#2-3","reset")
		cmdothernpc("#hole#2-3","on")
	return

OnMyMobDead:()
	if npcv "Monster1#2-3" [VAR_MYMOBCOUNT] < 1 then
		cmdothernpc("Monster2#2-3","on")
		cmdothernpc("Monster1#2-3","reset")
		stoptimer()
	end
end

hiddenwarp "jupe_area2" "Monster2#2-3" 30 190 0 0 0
OnInit:()
	disablenpc "Monster2#2-3"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster2#2-3"
end

OnCommand: "on"
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	InitTimer()
	OnTimer:(2000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Why have you come?")
	return

	OnTimer:(5000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Were you hoping to find something wonderful? Something miraculous?")
	return

	OnTimer:(8000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"You're wrong! Welcome to Hell!")
		enablenpc "Monster2#2-3"
		callmonster("jupe_area2","VENATU","Security Guard",114,64)
		callmonster("jupe_area2","DIMIK","Security Guard",115,64)
		callmonster("jupe_area2","VENATU","Security Guard",116,64)
		callmonster("jupe_area2","DIMIK","Security Guard",117,64)
		callmonster("jupe_area2","VENATU","Security Guard",118,64)
		callmonster("jupe_area2","DIMIK","Security Guard",119,64)
		callmonster("jupe_area2","VENATU","Security Guard",120,64)
		callmonster("jupe_area2","DIMIK","Security Guard",121,64)
		callmonster("jupe_area2","VENATU","Security Guard",114,62)
		callmonster("jupe_area2","DIMIK","Security Guard",115,62)
		callmonster("jupe_area2","VENATU","Security Guard",116,62)
		callmonster("jupe_area2","DIMIK","Security Guard",117,62)
		callmonster("jupe_area2","VENATU","Security Guard",118,62)
		callmonster("jupe_area2","DIMIK","Security Guard",119,62)
		callmonster("jupe_area2","VENATU","Security Guard",120,62)
		callmonster("jupe_area2","DIMIK","Security Guard",121,62)
	return

	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do you still have your courage? Come. Prove it.")
		cmdothernpc("Monster2#2-3","reset")
		cmdothernpc("#hole#2-3","on")
		cmdothernpc("Red Alarm#2-3","off")
		SetGlobalVar("050420_jupe_area2",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster2#2-3","reset")
	return

	OnMyMobDead:()
		if npcv "Monster2#2-3" [VAR_MYMOBCOUNT] < 1 then
			broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do you still have your courage? Come. Prove it.")
			cmdothernpc("Monster2#2-3","reset")
			cmdothernpc("#hole#2-3","on")
			cmdothernpc("Red Alarm#2-3","off")
			SetGlobalVar("050420_jupe_area2",0)
			stoptimer()
		end
	return

npc("jupe_area2","#hole#2-4",spr_CLEAR_NPC,113,49,0,0,0,"jupe_area2_#hole#2-4_11349")
OnCommand: "on"
	enablenpc "#hole#2-4"
end

OnCommand: "off"
	disablenpc "#hole#2-4"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area2_#hole#2-4_11349()
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	showimage("4.bmp",2)
	if (gameing2 == 1) then
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		close()
		showimage("4.bmp",255)
		return
	elseif ((getvar(Piece_Of_Crest1) > 0) or (getvar(Piece_Of_Crest2) > 0) or (getvar(Piece_Of_Crest3) > 0) or (getvar(Piece_Of_Crest4) > 0)) then
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		wait()
		local mresulta = menu("Insert a Crest Piece.","Cancel.")
		if mresulta == 1 then
			if (getvar(Piece_Of_Crest4) > 0) then
				dialog "^3355FFYou take out your"
				dialog "Crest Piece and place"
				dialog "it into the slot where it"
				dialog "happens to fit perfectly.^000000"
				ShowEffect("#hole#2-4","EF_TOPRANK")
				showimage("4-1.bmp",2)
				wait()
				local gameing2 = GetGlobalVar "050420_jupe_area2"
				if (gameing2 == 1) then
					dialog "^3355FFNothing happens."
					dialog "Perhaps an alarm or"
					dialog "some other safety measure"
					dialog "was activated to keep the"
					dialog "Crest Piece from activating"
					dialog "this transportation device."
					dialog "You retrieve the Crest Piece.^000000"
					close()
					showimage("4-1.bmp",255)
					return
				else
					dialog "^3355FFThe slot rotates and"
					dialog "the Crest Piece moves as"
					dialog "if it were turning a key. You"
					dialog "feel a weak tremor as a Warp"
					dialog "Portal to the other side is"
					dialog "activated. You then retrieve"
					dialog "your Crest Piece.^000000"
					InitTimer()
					cmdothernpc("Warp#2-4","on")
					cmdothernpc("Red Alarm#2-4","on")
					disablenpc "#hole#2-4"
					close()
					showimage("4-1.bmp",255)
					return
				end
			else
				dialog "^3355FFUnfortunately, you're"
				dialog "not carrying anything"
				dialog "that might be able to fit"
				dialog "into the slot and activate"
				dialog "this mechanical device.^000000"
				close()
				showimage("4.bmp",255)
				return
			end
		elseif mresulta == 2 then
			local name = PcName()
			dialog("[","+","name","+","]")
			dialog "Hmmm..."
			dialog "Do I have anything"
			dialog "that might make this"
			dialog "weird machine work?"
			close()
			showimage("4.bmp",255)
			return
		end
		close()
	else
		dialog "^3355FFThis seems like"
		dialog "some kind of device"
		dialog "that will allow you to"
		dialog "pass to the other side."
		dialog "There's a slot where you"
		dialog "probably need to insert"
		dialog "some kind of object...^000000"
		close()
		showimage("4.bmp",255)
		return
	end
end

OnTimer:(22500)
	enablenpc("#hole#2-4","on")
	cmdothernpc("Red Alarm#2-4","off")
end

hiddenwarp("jupe_area2","jupe_area2_Warp#2-4_10653",106,53,2,2)
OnInit:()
	disablenpc "Warp#2-4"
end

OnCommand: "off"
	disablenpc "Warp#2-4"
end

OnCommand: "reset"
	disablenpc "Warp#2-4"
end

OnCommand: "on"
	enablenpc "Warp#2-4"
	ShowEffect("Warp#2-4",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area2_Warp#2-4_10653()
	moveto("jupe_area2",80,157)
end

OnTimer:(22500)
	cmdothernpc("Warp#2-4","reset")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm#2-4_80157",80,157,2,2)
OnInit:()
	disablenpc "Red Alarm#2-4"
end

OnCommand: "off"
	disablenpc "Red Alarm#2-4"
end

OnCommand: "on"
	enablenpc "Red Alarm#2-4"
end

function jupe_area2_Red_Alarm#2-4_80157()
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	gameing2("=","gameing2","+",1)
	SetGlobalVar("050420_jupe_area2",1)
	cmdothernpc("Red Alarm Start#2-4","on")
	cmdothernpc("Red Alarm#2-4","off")
	cmdothernpc("#hole#2-4","stop_timer")
end

hiddenwarp("jupe_area2","jupe_area2_Red_Alarm_Start#2-4_27191",27,191,0,0)
OnInit:()
	disablenpc "Red Alarm Start#2-4"
end

OnCommand: "off"
	disablenpc "Red Alarm Start#2-4"
end

OnCommand: "reset"
	disablenpc "Red Alarm Start#2-4"
end

OnCommand: "on"
	enablenpc "Red Alarm Start#2-4"
	cmdothernpc("Red Alarm On#2-4","on")
end

hiddenwarp "jupe_area2" "Red Alarm On#2-4" 28 191 0 0 0
OnInit:()
	disablenpc "Red Alarm On#2-4"
end

OnCommand: "off"
	disablenpc "Red Alarm On#2-4"
end

OnCommand: "on"
	enablenpc "Red Alarm On#2-4"
	InitTimer()
end

OnTimer:(1000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I've been waiting for someone strong enough to compete with me.")
end

OnTimer:(3000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"If you hear this, I wish you will be the one...")
	cmdothernpc("#hole#2-4","off")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Perhaps, a mere shadow of my former self...")
	cmdothernpc("Monster1#2-4","on")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Is somewhere down here, wandering...")
end

OnTimer:(8000)
	cmdothernpc("Red Alarm On#2-4","off")
end

hiddenwarp "jupe_area2" "Monster1#2-4" 29 191 0 0 0
OnInit:()
	disablenpc "Monster1#2-4"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#2-4"
end

OnCommand: "on"
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	InitTimer()
	enablenpc "Monster1#2-4"
	callmonster("jupe_area2","VENATU","Security Guard",75,161)
	callmonster("jupe_area2","DIMIK","Security Guard",72,161)
	callmonster("jupe_area2","VENATU","Security Guard",71,161)
	callmonster("jupe_area2","DIMIK","Security Guard",68,161)
	callmonster("jupe_area2","VENATU","Security Guard",75,154)
	callmonster("jupe_area2","DIMIK","Security Guard",72,154)
	callmonster("jupe_area2","VENATU","Security Guard",71,154)
	callmonster("jupe_area2","DIMIK","Security Guard",68,154)
	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Zzzzt... Zzzzt...")
		SetGlobalVar("050420_jupe_area2",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster1#2-4","reset")
		cmdothernpc("#hole#2-4","on")
	return

end

OnMyMobDead:()
	if npcv "Monster1#2-4" [VAR_MYMOBCOUNT] < 1 then
		cmdothernpc("Monster2#2-4","on")
		cmdothernpc("Monster1#2-4","reset")
		stoptimer()
	end
end

hiddenwarp "jupe_area2" "Monster2#2-4" 30 191 0 0 0
OnInit:()
	disablenpc "Monster2#2-4"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster2#2-4"
end

OnCommand: "on"
	local gameing2 = GetGlobalVar "050420_jupe_area2"
	InitTimer()
	OnTimer:(2000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I can never rest in peace...")
	return

	OnTimer:(4000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I'll wait forever or until someone can put me out of my misery...")
	return

	OnTimer:(6000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I will be waiting for you!")
		enablenpc "Monster2#2-4"
		callmonster("jupe_area2","VENATU","Security Guard",63,161)
		callmonster("jupe_area2","DIMIK","Security Guard",61,161)
		callmonster("jupe_area2","VENATU","Security Guard",59,161)
		callmonster("jupe_area2","DIMIK","Security Guard",57,161)
		callmonster("jupe_area2","VENATU","Security Guard",55,161)
		callmonster("jupe_area2","DIMIK","Security Guard",53,161)
		callmonster("jupe_area2","VENATU","Security Guard",53,154)
		callmonster("jupe_area2","DIMIK","Security Guard",55,154)
		callmonster("jupe_area2","VENATU","Security Guard",57,154)
		callmonster("jupe_area2","DIMIK","Security Guard",59,154)
		callmonster("jupe_area2","VENATU","Security Guard",61,154)
		callmonster("jupe_area2","DIMIK","Security Guard",63,154)
	return

	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"It's funny... Isn't it?")
		cmdothernpc("Monster2#2-4","reset")
		cmdothernpc("#hole#2-4","on")
		cmdothernpc("Red Alarm#2-4","off")
		SetGlobalVar("050420_jupe_area2",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster2#2-4","reset")
	return

	OnMyMobDead:()
		if npcv "Monster2#2-4" [VAR_MYMOBCOUNT] < 1 then
			broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"It's funny... Isn't it?")
			cmdothernpc("Monster2#2-4","reset")
			cmdothernpc("#hole#2-4","on")
			cmdothernpc("Red Alarm#2-4","off")
			SetGlobalVar("050420_jupe_area2",0)
			stoptimer()
		end
	return

npc("jupe_area2","Lever#ufe",spr_CLEAR_NPC,51,162,0,0,0,"jupe_area2_Lever#ufe_51162")
OnCommand: "on"
	enablenpc "Lever#ufe"
end

OnCommand: "off"
	disablenpc "Lever#ufe"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area2_Lever#ufe_51162()
	dialog "^3355FFIt's a lever"
	dialog "whose function"
	dialog "is not known to you.^000000"
	wait()
	local mresulta = menu("Pull.","Cancel.")
	if mresulta == 1 then
		InitTimer()
		cmdothernpc("LeverWarp2#ufe","on")
		disablenpc "Lever#ufe"
		close()
		return
	elseif mresulta == 2 then
		local name = PcName()
		dialog("[","+","name","+","]")
		dialog "Pull this lever?"
		dialog "I don't even know"
		dialog "what will happen..."
		close()
		return
	end
	close()
end

OnTimer:(5000)
	enablenpc "Lever#ufe"
end

hiddenwarp("jupe_area2","jupe_area2_LeverWarp2#ufe_46157",46,157,2,2)
OnInit:()
	disablenpc "LeverWarp2#ufe"
end

OnCommand: "off"
	disablenpc "LeverWarp2#ufe"
end

OnCommand: "on"
	enablenpc "LeverWarp2#ufe"
	ShowEffect("LeverWarp2#ufe",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area2_LeverWarp2#ufe_46157()
	moveto("jupe_gate",71,29)
end

OnTimer:(5000)
	disablenpc "LeverWarp2#ufe"
end
