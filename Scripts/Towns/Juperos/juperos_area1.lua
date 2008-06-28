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

hiddenwarp("juperos_01","juperos_01_jupe_goto#1_10091",100,91,2,2)
--[[OnCommand: "on"
	enablenpc "jupe_goto#1"
end

OnCommand: "off"
	disablenpc "jupe_goto#1"
end
]]--
function juperos_01_jupe_goto1_10091()
	local username = PcName()
	InitTimer()
	dialog("^777777[","+","username","+","]^000000")
	dialog "This light..."
	dialog "It feels like..."
	dialog "Its warmth is..."
	dialog "Wrapping all over me..."
	wait()
	local mresulta = menu("Ah, it's so nice...","No! This is wrong!")
	if mresulta == 1 then
		dialog("^777777[","+","username","+","]^000000")
		dialog "Ahhhh..."
		dialog "It feels like"
		dialog "I'm floating..."
		ShowEffect("EF_LIGHTSPHERE")
		wait()
		stoptimer()
		moveto("juperos_02",128,278)
		close()
		return
	elseif mresulta == 2 then
		dialog("^777777[","+","username","+","]^000000")
		dialog "N-No! This is"
		dialog "wrong! Something"
		dialog "weird's happening!"
		dialog "I gotta get away!"
		wait()
		moveto("juperos_01",96,91)
		stoptimer()
		close()
		return
	end
	close()
end
--[[
OnTimer:(10000)
	moveto("juperos_02",128,278)
	cmdothernpc("jupe_goto#2","on")
	disablenpc "jupe_goto#1"
end
]]--
hiddenwarp("juperos_01","juperos_01_jupe_goto#2_10091",100,91,2,2)
--[[
OnInit:()
	disablenpc "jupe_goto#2"
end

OnCommand: "on"
	enablenpc "jupe_goto#2"
	InitTimer()
end

OnCommand: "off"
	disablenpc "jupe_goto#2"
end
]]--
function juperos_01_jupe_goto#2_10091()
	moveto("juperos_02",128,278)
end

--OnTimer:(2000)
--	cmdothernpc("jupe_goto#1","on")
--	disablenpc "jupe_goto#2"
--end

hiddenwarp("juperos_02","juperos_02_3F_Gate_Switch#jupe_9770",97,70,0,0)
OnInit:()
	InitTimer()
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "3F Gate Switch#jupe"
end

OnCommand: "on"
	enablenpc "3F Gate Switch#jupe"
	InitTimer()
end

OnTimer:(5000)
	callmonster("juperos_02","MONEMUS","1st Gate Switch",24,275)
	callmonster("juperos_02","MONEMUS","2nd Gate Switch",240,29)
	callmonster("juperos_02","MONEMUS","3rd Gate Switch",282,183)
end

OnMyMobDead:()
	if ((npcv "3F Gate Switch#jupe" [VAR_MYMOBCOUNT] > 1) and (npcv "3F Gate Switch#jupe" [VAR_MYMOBCOUNT] < 3)) then
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Who are you to come here?")
	elseif ((npcv "3F Gate Switch#jupe" [VAR_MYMOBCOUNT] > 0) and (npcv "3F Gate Switch#jupe" [VAR_MYMOBCOUNT] < 2)) then
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Have you come seeking Juperos?! It no longer exists...")
	elseif (npcv "3F Gate Switch#jupe" [VAR_MYMOBCOUNT] < 1) then
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Have you come to see me? Fine! Find me first!")
		ShowEffect(,563)
		sound("earth_quake.wav",2,0,0)
		cmdothernpc("3F Gate Switch#jupe","off")
		cmdothernpc("3F Gate Switch2nd#jupe","on")
	end
end

hiddenwarp("juperos_02","juperos_02_3F_Gate_Switch2nd#jupe_9770",97,70,0,0)
OnCommand: "off"
	disablenpc "3F Gate Switch2nd#jupe"
end

OnCommand: "on"
	enablenpc "3F Gate Switch2nd#jupe"
	InitTimer()
end

OnTimer:(5000)
	broadcastinmap2("E559A2","FW_NORMAL",12,0,0,"Vroom! Vroom!")
end

OnTimer:(7000)
	broadcastinmap2("E559A2","FW_NORMAL",12,0,0,"Attention, visitors.")
end

OnTimer:(9000)
	broadcastinmap2("E559A2","FW_NORMAL",12,0,0,"You are allowed to enter the next zone for a short period of time. Please use the portal in the center of the map.")
end

OnTimer:(9001)
	cmdothernpc("Restricted Area Entrance#jupe","on")
end

hiddenwarp("juperos_02","juperos_02_Restricted_Area_Entrance#jupe_130149",130,149,2,2)
OnInit:()
	disablenpc "Restricted Area Entrance#jupe"
end

OnCommand: "off"
	disablenpc "Restricted Area Entrance#jupe"
end

OnCommand: "on"
	enablenpc "Restricted Area Entrance#jupe"
	ShowEffect("Restricted Area Entrance#jupe",561)
	InitTimer()
end

OnTimer:(23000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(46000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(69000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(92000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(115000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(161000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(184000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(207000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(230000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(253000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(276000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(299000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(322000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(345000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(368000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(391000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(414000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(460000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(483000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(506000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(529000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(552000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(556000)
	broadcastinmap2("E559A2","FW_NORMAL",12,0,0,"Attention, visitors. The gate to the next zone will close shortly.")
end

OnTimer:(561000)
	broadcastinmap2("E559A2","FW_NORMAL",12,0,0,"1 minute remaining until Gate Closure. ")
end

OnTimer:(598000)
	ShowEffect("Restricted Area Entrance#jupe",561)
end

OnTimer:(600000)
	broadcastinmap2("E559A2","FW_NORMAL",12,0,0,"The gate is being closed...")
end

OnTimer:(603000)
	broadcastinmap2("E559A2","FW_NORMAL",12,0,0," Switches will reactivate shortly.")
end

OnTimer:(621000)
	disablenpc "Restricted Area Entrance#jupe"
end

OnTimer:(1200000)
	cmdothernpc("3F Gate Switch#jupe","on")
end

function juperos_02_Restricted_Area_Entrance#jupe_130149()
	moveto("jupe_gate",50,167)
end

npc("jupe_area1","#hole#1-1",SPRITE_CLEAR_NPC,88,224,0,0,0,"jupe_area1_#hole#1-1_88224")
OnCommand: "on"
	enablenpc "#hole#1-1"
end

OnCommand: "off"
	disablenpc "#hole#1-1"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area1_#hole#1-1_88224()
	local gameing = GetGlobalVar "050420_jupe_area1"
	showimage("1.bmp",2)
	if (gameing == 1) then
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
				ShowEffect("#hole#1-1","EF_TOPRANK")
				showimage("1-1.bmp",2)
				wait()
				local gameing = GetGlobalVar "050420_jupe_area1"
				if (gameing == 1) then
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
					cmdothernpc("Warp#1-1","on")
					cmdothernpc("Red Alarm#1-1","on")
					disablenpc "#hole#1-1"
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
	enablenpc("#hole#1-1","on")
	cmdothernpc("Red Alarm#1-1","off")
end

hiddenwarp("jupe_area1","jupe_area1_Warp#1-1_83221",83,221,2,2)
OnInit:()
	disablenpc "Warp#1-1"
end

OnCommand: "off"
	disablenpc "Warp#1-1"
end

OnCommand: "reset"
	disablenpc "Warp#1-1"
end

OnCommand: "on"
	enablenpc "Warp#1-1"
	ShowEffect("Warp#1-1",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area1_Warp#1-1_83221()
	moveto("jupe_area1",47,259)
end

OnTimer:(22500)
	cmdothernpc("Warp#1-1","reset")
end

hiddenwarp("jupe_area1","jupe_area1_Red_Alarm#1-1_47259",47,259,2,2)
OnInit:()
	disablenpc "Red Alarm#1-1"
end

OnCommand: "off"
	disablenpc "Red Alarm#1-1"
end

OnCommand: "on"
	enablenpc "Red Alarm#1-1"
end

function jupe_area1_Red_Alarm#1-1_47259()
	local gameing = GetGlobalVar "050420_jupe_area1"
	gameing("=","gameing","+",1)
	SetGlobalVar("050420_jupe_area1",1)
	cmdothernpc("Red Alarm Start#1-1","on")
	cmdothernpc("Red Alarm#1-1","off")
	cmdothernpc("#hole#1-1","stop_timer")
end

hiddenwarp("jupe_area1","jupe_area1_Red_Alarm_Start#1-1_60230",60,230,0,0)
OnInit:()
	disablenpc "Red Alarm Start#1-1"
end

OnCommand: "off"
	disablenpc "Red Alarm Start#1-1"
end

OnCommand: "reset"
	disablenpc "Red Alarm Start#1-1"
end

OnCommand: "on"
	enablenpc "Red Alarm Start#1-1"
	cmdothernpc("Red Alarm On#1-1","on")
end

hiddenwarp "jupe_area1" "Red Alarm On#1-1" 61 230 0 0 0
OnInit:()
	disablenpc "Red Alarm On#1-1"
end

OnCommand: "off"
	disablenpc "Red Alarm On#1-1"
end

OnCommand: "on"
	enablenpc "Red Alarm On#1-1"
	InitTimer()
end

OnTimer:(1000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Those of you who have come here...")
end

OnTimer:(3000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I do not intend to stop you.")
	sound("jupe_warning.wav",2,0,0)
	sound("jupe_warning.wav",2,0,1000)
	cmdothernpc("#hole#1-1","off")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"But I assume you are prepared for a few obstacles...")
	cmdothernpc("Monster1#1-1","on")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"After all, you are venturing through a forbidden area!")
end

OnTimer:(8000)
	cmdothernpc("Red Alarm On#1-1","off")
	sound("jupe_warning.wav",2,0,0)
	sound("jupe_warning.wav",2,0,1000)
end

hiddenwarp "jupe_area1" "Monster1#1-1" 62 230 0 0 0
OnInit:()
	disablenpc "Monster1#1-1"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#1-1"
end

OnCommand: "on"
	local gameing = GetGlobalVar "050420_jupe_area1"
	InitTimer()
	enablenpc "Monster1#1-1"
	callmonster("jupe_area1","VENATU","Security Guard",30,263)
	callmonster("jupe_area1","DIMIK","Security Guard",30,262)
	callmonster("jupe_area1","VENATU","Security Guard",30,261)
	callmonster("jupe_area1","DIMIK","Security Guard",30,260)
	callmonster("jupe_area1","VENATU","Security Guard",30,259)
	callmonster("jupe_area1","DIMIK","Security Guard",30,258)
	callmonster("jupe_area1","VENATU","Security Guard",30,257)
	callmonster("jupe_area1","DIMIK","Security Guard",30,256)
OnTimer:(300000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do you realize this is a hallucination?")
	SetGlobalVar("050420_jupe_area1",0)
end

OnTimer:(300002)
	cmdothernpc("Monster1#1-1","reset")
	cmdothernpc("#hole#1-1","on")
end

OnMyMobDead:()
	if npcv "Monster1#1-1" [VAR_MYMOBCOUNT] < 1 then
		cmdothernpc("Monster2#1-1","on")
		cmdothernpc("Monster1#1-1","reset")
		stoptimer()
	end
end

hiddenwarp("jupe_area1","jupe_area1_Monster2#1-1_64230",64,230,0,0)
OnInit:()
	disablenpc "Monster2#1-1"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster2#1-1"
end

OnCommand: "on"
	local gameing = GetGlobalVar "050420_jupe_area1"
	InitTimer()
OnTimer:(2000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"How about now?")
	sound("jupe_warning.wav",2,0,0)
	sound("jupe_warning.wav",2,0,1000)
end

OnTimer:(4000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Let me see...")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Just how strong you are!")
	sound("jupe_warning.wav",2,0,0)
	sound("jupe_warning.wav",2,0,1000)
	enablenpc "Monster2#1-1"
	callmonster("jupe_area1","VENATU","Security Guard",30,238)
	callmonster("jupe_area1","DIMIK","Security Guard",31,238)
	callmonster("jupe_area1","VENATU","Security Guard",32,238)
	callmonster("jupe_area1","DIMIK","Security Guard",33,238)
	callmonster("jupe_area1","VENATU","Security Guard",34,238)
	callmonster("jupe_area1","DIMIK","Security Guard",35,238)
	callmonster("jupe_area1","VENATU","Security Guard",36,238)
	callmonster("jupe_area1","DIMIK","Security Guard",37,238)
end

OnTimer:(300000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Bwahaha! You're only good at running away!")
	cmdothernpc("Monster2#1-1","reset")
	cmdothernpc("#hole#1-1","on")
	cmdothernpc("Red Alarm#1-1","off")
	SetGlobalVar("050420_jupe_area1",0)
end

OnTimer:(300002)
	cmdothernpc("Monster2#1-1","reset")
end

OnMyMobDead:()
	if npcv "Monster2#1-1" [VAR_MYMOBCOUNT] < 1 then
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Zzzzt. Zzzzt..... ")
		cmdothernpc("Monster2#1-1","reset")
		cmdothernpc("#hole#1-1","on")
		cmdothernpc("Red Alarm#1-1","off")
		SetGlobalVar("050420_jupe_area1",0)
		stoptimer()
	end
end


npc("jupe_area1","#hole#1-2",SPRITE_CLEAR_NPC,25,238,0,0,0,"jupe_area1_#hole#1-2_25238")
OnCommand: "on"
	enablenpc "#hole#1-2"
end

OnCommand: "off"
	disablenpc "#hole#1-2"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area1_#hole#1-2_25238()
	local gameing = GetGlobalVar "050420_jupe_area1"
	showimage("2.bmp",2)
	if (gameing == 1) then
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
				ShowEffect("#hole#1-2","EF_TOPRANK")
				showimage("2-1.bmp",2)
				wait()
				local gameing = GetGlobalVar "050420_jupe_area1"
				if (gameing == 1) then
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
					cmdothernpc("Warp#1-2","on")
					cmdothernpc("Red Alarm#1-2","on")
					disablenpc "#hole#1-2"
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
	enablenpc("#hole#1-2","on")
	cmdothernpc("Red Alarm#1-2","off")
end

hiddenwarp("jupe_area1","jupe_area1_Warp#1-2_21225",21,225,2,2)
OnInit:()
	disablenpc "Warp#1-2"
end

OnCommand: "off"
	disablenpc "Warp#1-2"
end

OnCommand: "reset"
	disablenpc "Warp#1-2"
end

OnCommand: "on"
	enablenpc "Warp#1-2"
	ShowEffect("Warp#1-2",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area1_Warp#1-2_21225()
	moveto("jupe_area1",21,191)
end

OnTimer:(22500)
	cmdothernpc("Warp#1-2","reset")
end

hiddenwarp("jupe_area1","jupe_area1_Red_Alarm#1-2_21191",21,191,2,2)
OnInit:()
	disablenpc "Red Alarm#1-2"
end

OnCommand: "off"
	disablenpc "Red Alarm#1-2"
end

OnCommand: "on"
	enablenpc "Red Alarm#1-2"
end

function jupe_area1_Red_Alarm#1-2_21191()
	local gameing = GetGlobalVar "050420_jupe_area1"
	gameing("=","gameing","+",1)
	SetGlobalVar("050420_jupe_area1",1)
	cmdothernpc("Red Alarm Start#1-2","on")
	cmdothernpc("Red Alarm#1-2","off")
	cmdothernpc("#hole#1-2","stop_timer")
end

hiddenwarp("jupe_area1","jupe_area1_Red_Alarm_Start#1-2_60231",60,231,0,0)
OnInit:()
	disablenpc "Red Alarm Start#1-2"
end

OnCommand: "off"
	disablenpc "Red Alarm Start#1-2"
end

OnCommand: "reset"
	disablenpc "Red Alarm Start#1-2"
end

OnCommand: "on"
	enablenpc "Red Alarm Start#1-2"
	cmdothernpc("Red Alarm On#1-2","on")
end

hiddenwarp "jupe_area1" "Red Alarm On#1-2" 61 231 0 0 0
OnInit:()
	disablenpc "Red Alarm On#1-2"
end

OnCommand: "off"
	disablenpc "Red Alarm On#1-2"
end

OnCommand: "on"
	enablenpc "Red Alarm On#1-2"
	InitTimer()
end

OnTimer:(1000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Come on, come on!")
end

OnTimer:(3000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Yes. Run... Right into my hands!")
	cmdothernpc("#hole#1-2","off")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do you want to know who I am?")
	cmdothernpc("Monster1#1-2","on")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"You will know, once you defeat all of my minions!")
end

OnTimer:(8000)
	cmdothernpc("Red Alarm On#1-2","off")
end

hiddenwarp "jupe_area1" "Monster1#1-2" 62 231 0 0 0
OnInit:()
	disablenpc "Monster1#1-2"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#1-2"
end

OnCommand: "on"
	local gameing = GetGlobalVar "050420_jupe_area1"
	InitTimer()
	enablenpc "Monster1#1-2"
	callmonster("jupe_area1","DIMIK","High Guard",30,176)
	callmonster("jupe_area1","VENATU","High Guard",31,176)
	callmonster("jupe_area1","DIMIK","High Guard",32,176)
	callmonster("jupe_area1","VENATU","High Guard",33,176)
	callmonster("jupe_area1","DIMIK","High Guard",34,176)
	callmonster("jupe_area1","VENATU","High Guard",35,176)
	callmonster("jupe_area1","DIMIK","High Guard",36,176)
	callmonster("jupe_area1","VENATU","High Guard",37,176)
	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I can't believe how cowardly you really are...")
		SetGlobalVar("050420_jupe_area1",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster1#1-2","reset")
		cmdothernpc("#hole#1-2","on")
	return

end

OnMyMobDead:()
	if npcv "Monster1#1-2" [VAR_MYMOBCOUNT] < 1 then
		cmdothernpc("Monster2#1-2","on")
		cmdothernpc("Monster1#1-2","reset")
		stoptimer()
	end
end

hiddenwarp "jupe_area1" "Monster2#1-2" 63 231 0 0 0
OnInit:()
	disablenpc "Monster2#1-2"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster2#1-2"
end

OnCommand: "on"
	local gameing = GetGlobalVar "050420_jupe_area1"
	InitTimer()
OnTimer:(2000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I was the head of this underground laboratory.")
end

OnTimer:(4000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"But that was a long time ago, back when I was merely a human.")
end

OnTimer:(6000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I was called Vesper Newton. Hahah, they called me a mad man back then.")
	enablenpc "Monster2#1-2"
	callmonster("jupe_area1","DIMIK","Security Guard",30,152)
	callmonster("jupe_area1","VENATU","Security Guard",31,152)
	callmonster("jupe_area1","DIMIK","Security Guard",32,152)
	callmonster("jupe_area1","VENATU","Security Guard",33,152)
	callmonster("jupe_area1","DIMIK","Security Guard",34,152)
	callmonster("jupe_area1","VENATU","Security Guard",35,152)
	callmonster("jupe_area1","DIMIK","Security Guard",36,152)
	callmonster("jupe_area1","VENATU","Security Guard",37,152)
	callmonster("jupe_area1","DIMIK","Security Guard",30,150)
	callmonster("jupe_area1","VENATU","Security Guard",31,150)
	callmonster("jupe_area1","DIMIK","Security Guard",32,150)
	callmonster("jupe_area1","VENATU","Security Guard",33,150)
	callmonster("jupe_area1","DIMIK","Security Guard",34,150)
end

OnTimer:(300000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"...Not yet.")
	cmdothernpc("Monster2#1-2","reset")
	cmdothernpc("#hole#1-2","on")
	cmdothernpc("Red Alarm#1-2","off")
	SetGlobalVar("050420_jupe_area1",0)
end

OnTimer:(300002)
	cmdothernpc("Monster2#1-2","reset")
end

OnMyMobDead:()
	if npcv "Monster2#1-2" [VAR_MYMOBCOUNT] < 1 then
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Not yet!")
		cmdothernpc("Monster2#1-2","reset")
		cmdothernpc("#hole#1-2","on")
		cmdothernpc("Red Alarm#1-2","off")
		SetGlobalVar("050420_jupe_area1",0)
		stoptimer()
	end
end

npc("jupe_area1","#hole#1-3",SPRITE_CLEAR_NPC,36,146,0,0,0,"jupe_area1_#hole#1-3_36146")
OnCommand: "on"
	enablenpc "#hole#1-3"
end

OnCommand: "off"
	disablenpc "#hole#1-3"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area1_#hole#1-3_36146()
	local gameing = GetGlobalVar "050420_jupe_area1"
	showimage("3.bmp",2)
	if (gameing == 1) then
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
				ShowEffect("#hole#1-3","EF_TOPRANK")
				showimage("3-1.bmp",2)
				wait()
				local gameing = GetGlobalVar "050420_jupe_area1"
				if (gameing == 1) then
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
					cmdothernpc("Warp#1-3","on")
					cmdothernpc("Red Alarm#1-3","on")
					disablenpc "#hole#1-3"
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
	enablenpc("#hole#1-3","on")
	cmdothernpc("Red Alarm#1-3","off")
end

hiddenwarp("jupe_area1","jupe_area1_Warp#1-3_33137",33,137,2,2)
OnInit:()
	disablenpc "Warp#1-3"
end

OnCommand: "off"
	disablenpc "Warp#1-3"
end

OnCommand: "reset"
	disablenpc "Warp#1-3"
end

OnCommand: "on"
	enablenpc "Warp#1-3"
	ShowEffect("Warp#1-3",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area1_Warp#1-3_33137()
	moveto("jupe_area1",33,105)
end

OnTimer:(22500)
	cmdothernpc("Warp#1-3","reset")
end

hiddenwarp("jupe_area1","jupe_area1_Red_Alarm#1-3_33105",33,105,0,4)
OnInit:()
	disablenpc "Red Alarm#1-3"
end

OnCommand: "off"
	disablenpc "Red Alarm#1-3"
end

OnCommand: "on"
	enablenpc "Red Alarm#1-3"
end

function jupe_area1_Red_Alarm#1-3_33105()
	local gameing = GetGlobalVar "050420_jupe_area1"
	gameing("=","gameing","+",1)
	SetGlobalVar("050420_jupe_area1",1)
	cmdothernpc("Red Alarm Start#1-3","on")
	cmdothernpc("Red Alarm#1-3","off")
	cmdothernpc("#hole#1-3","stop_timer")
end

hiddenwarp("jupe_area1","jupe_area1_Red_Alarm_Start#1-3_60232",60,232,0,0)
OnInit:()
	disablenpc "Red Alarm Start#1-3"
end

OnCommand: "off"
	disablenpc "Red Alarm Start#1-3"
end

OnCommand: "reset"
	disablenpc "Red Alarm Start#1-3"
end

OnCommand: "on"
	enablenpc "Red Alarm Start#1-3"
	cmdothernpc("Red Alarm On#1-3","on")
end

hiddenwarp "jupe_area1" "Red Alarm On#1-3" 61 232 0 0 0
OnInit:()
	disablenpc "Red Alarm On#1-3"
end

OnCommand: "off"
	disablenpc "Red Alarm On#1-3"
end

OnCommand: "on"
	enablenpc "Red Alarm On#1-3"
	InitTimer()
end

OnTimer:(1000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"These security systems...")
end

OnTimer:(3000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"They're not really for protection.")
	cmdothernpc("#hole#1-3","off")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"It's sort of just a hobby to pass the time...")
	cmdothernpc("Monster1#1-3","on")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Being immortal, I have a lot of time on my hands...")
end

OnTimer:(8000)
	cmdothernpc("Red Alarm On#1-3","off")
end

hiddenwarp "jupe_area1" "Monster1#1-3" 62 232 0 0 0
OnInit:()
	disablenpc "Monster1#1-3"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#1-3"
end

OnCommand: "on"
	local gameing = GetGlobalVar "050420_jupe_area1"
	InitTimer()
	enablenpc "Monster1#1-3"
	callmonster("jupe_area1","VENATU","Security Guard",30,89)
	callmonster("jupe_area1","DIMIK","Security Guard",31,89)
	callmonster("jupe_area1","VENATU","Security Guard",32,89)
	callmonster("jupe_area1","DIMIK","Security Guard",33,89)
	callmonster("jupe_area1","VENATU","Security Guard",34,89)
	callmonster("jupe_area1","DIMIK","Security Guard",35,89)
	callmonster("jupe_area1","VENATU","Security Guard",36,89)
	callmonster("jupe_area1","DIMIK","Security Guard",37,89)
	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Zzzzt...Zzzzt....")
		SetGlobalVar("050420_jupe_area1",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster1#1-3","reset")
		cmdothernpc("#hole#1-3","on")
	return

end

OnMyMobDead:()
	if npcv "Monster1#1-3" [VAR_MYMOBCOUNT] < 1 then
		cmdothernpc("Monster2#1-3","on")
		cmdothernpc("Monster1#1-3","reset")
		stoptimer()
	end
end

hiddenwarp "jupe_area1" "Monster2#1-3" 63 232 0 0 0
OnInit:()
	disablenpc "Monster2#1-3"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster2#1-3"
end

OnCommand: "on"
	local gameing = GetGlobalVar "050420_jupe_area1"
	InitTimer()
	OnTimer:(2000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Why have you come?")
	return

	OnTimer:(5000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Were you hoping to find something wonderful? Something miraculous?")
	return

	OnTimer:(8000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"You're wrong! Welcome to Hell!")
		enablenpc "Monster2#1-3"
		callmonster("jupe_area1","DIMIK","Security Guard",42,64)
		callmonster("jupe_area1","VENATU","Security Guard",43,64)
		callmonster("jupe_area1","DIMIK","Security Guard",44,64)
		callmonster("jupe_area1","VENATU","Security Guard",45,64)
		callmonster("jupe_area1","DIMIK","Security Guard",46,64)
		callmonster("jupe_area1","VENATU","Security Guard",47,64)
		callmonster("jupe_area1","DIMIK","Security Guard",48,64)
		callmonster("jupe_area1","VENATU","Security Guard",49,64)
		callmonster("jupe_area1","DIMIK","Security Guard",42,62)
		callmonster("jupe_area1","VENATU","Security Guard",43,62)
		callmonster("jupe_area1","DIMIK","Security Guard",44,62)
		callmonster("jupe_area1","VENATU","Security Guard",45,62)
		callmonster("jupe_area1","DIMIK","Security Guard",46,62)
		callmonster("jupe_area1","VENATU","Security Guard",47,62)
		callmonster("jupe_area1","DIMIK","Security Guard",48,62)
	return

	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do you still have your courage? Come. Prove it.")
		cmdothernpc("Monster2#1-3","reset")
		cmdothernpc("#hole#1-3","on")
		cmdothernpc("Red Alarm#1-3","off")
		SetGlobalVar("050420_jupe_area1",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster2#1-3","reset")
	return

	OnMyMobDead:()
		if npcv "Monster2#1-3" [VAR_MYMOBCOUNT] < 1 then
			broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Do you still have your courage? Come. Prove it.")
			cmdothernpc("Monster2#1-3","reset")
			cmdothernpc("#hole#1-3","on")
			cmdothernpc("Red Alarm#1-3","off")
			SetGlobalVar("050420_jupe_area1",0)
			stoptimer()
		end
	return


npc("jupe_area1","#hole#1-4",SPRITE_CLEAR_NPC,50,49,0,0,0,"jupe_area1_#hole#1-4_5049")
OnCommand: "on"
	enablenpc "#hole#1-4"
end

OnCommand: "off"
	disablenpc "#hole#1-4"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area1_#hole#1-4_5049()
	local gameing = GetGlobalVar "050420_jupe_area1"
	showimage("4.bmp",2)
	if (gameing == 1) then
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
				ShowEffect("#hole#1-4","EF_TOPRANK")
				showimage("4-1.bmp",2)
				wait()
				local gameing = GetGlobalVar "050420_jupe_area1"
				if (gameing == 1) then
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
					cmdothernpc("Warp#1-4","on")
					cmdothernpc("Red Alarm#1-4","on")
					disablenpc "#hole#1-4"
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

OnTimer:(5000)
	enablenpc("#hole#1-4","on")
	cmdothernpc("Red Alarm#1-4","off")
end

hiddenwarp("jupe_area1","jupe_area1_Warp#1-4_5753",57,53,2,2)
OnInit:()
	disablenpc "Warp#1-4"
end

OnCommand: "off"
	disablenpc "Warp#1-4"
end

OnCommand: "reset"
	disablenpc "Warp#1-4"
end

OnCommand: "on"
	enablenpc "Warp#1-4"
	ShowEffect("Warp#1-4",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area1_Warp#1-4_5753()
	moveto("jupe_area1",83,157)
end

OnTimer:(5000)
	cmdothernpc("Warp#1-4","reset")
end

hiddenwarp("jupe_area1","jupe_area1_Red_Alarm#1-4_83157",83,157,2,2)
OnInit:()
	disablenpc "Red Alarm#1-4"
end

OnCommand: "off"
	disablenpc "Red Alarm#1-4"
end

OnCommand: "on"
	enablenpc "Red Alarm#1-4"
end

function jupe_area1_Red_Alarm#1-4_83157()
	local gameing = GetGlobalVar "050420_jupe_area1"
	gameing("=","gameing","+",1)
	SetGlobalVar("050420_jupe_area1",1)
	cmdothernpc("Red Alarm Start#1-4","on")
	cmdothernpc("Red Alarm#1-4","off")
	cmdothernpc("#hole#1-4","stop_timer")
end

hiddenwarp("jupe_area1","jupe_area1_Red_Alarm_Start#1-4_60233",60,233,0,0)
OnInit:()
	disablenpc "Red Alarm Start#1-4"
end

OnCommand: "off"
	disablenpc "Red Alarm Start#1-4"
end

OnCommand: "reset"
	disablenpc "Red Alarm Start#1-4"
end

OnCommand: "on"
	enablenpc "Red Alarm Start#1-4"
	cmdothernpc("Red Alarm On#1-4","on")
end

hiddenwarp "jupe_area1" "Red Alarm On#1-4" 61 233 0 0 0
OnInit:()
	disablenpc "Red Alarm On#1-4"
end

OnCommand: "off"
	disablenpc "Red Alarm On#1-4"
end

OnCommand: "on"
	enablenpc "Red Alarm On#1-4"
	InitTimer()
end

OnTimer:(1000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I've been waiting for someone strong enough to compete with me.")
end

OnTimer:(3000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"If you hear this, I wish you will be the one...")
	cmdothernpc("#hole#1-4","off")
end

OnTimer:(5000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Perhaps, a mere shadow of my former self...")
	cmdothernpc("Monster1#1-4","on")
end

OnTimer:(7000)
	broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Is somewhere down here, wandering...")
end

OnTimer:(8000)
	cmdothernpc("Red Alarm On#1-4","off")
end

hiddenwarp "jupe_area1" "Monster1#1-4" 62 233 0 0 0
OnInit:()
	disablenpc "Monster1#1-4"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster1#1-4"
end

OnCommand: "on"
	local gameing = GetGlobalVar "050420_jupe_area1"
	InitTimer()
	enablenpc "Monster1#1-4"
	callmonster("jupe_area1","DIMIK","Security Guard",92,154)
	callmonster("jupe_area1","VENATU","Security Guard",96,154)
	callmonster("jupe_area1","DIMIK","Security Guard",100,154)
	callmonster("jupe_area1","VENATU","Security Guard",104,154)
	callmonster("jupe_area1","DIMIK","Security Guard",92,161)
	callmonster("jupe_area1","VENATU","Security Guard",96,161)
	callmonster("jupe_area1","DIMIK","Security Guard",100,161)
	callmonster("jupe_area1","VENATU","Security Guard",104,161)
	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"Zzzzt...Zzzzt....")
		SetGlobalVar("050420_jupe_area1",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster1#1-4","reset")
		cmdothernpc("#hole#1-4","on")
	return

end

OnMyMobDead:()
	if npcv "Monster1#1-4" [VAR_MYMOBCOUNT] < 1 then
		cmdothernpc("Monster2#1-4","on")
		cmdothernpc("Monster1#1-4","reset")
		stoptimer()
	end
end

hiddenwarp "jupe_area1" "Monster2#1-4" 63 233 0 0 0
OnInit:()
	disablenpc "Monster2#1-4"
end

OnCommand: "reset"
	resetmymob()
end

OnCommand: "off"
	disablenpc "Monster2#1-4"
end

OnCommand: "on"
	local gameing = GetGlobalVar "050420_jupe_area1"
	InitTimer()
	OnTimer:(2000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I can never rest in peace...")
	return

	OnTimer:(4000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I'll wait forever or until someone can put me out of my misery...")
	return

	OnTimer:(6000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"I will be waiting for you!")
		enablenpc "Monster2#1-4"
		callmonster("jupe_area1","VENATU","Security Guard",104,161)
		callmonster("jupe_area1","DIMIK","Security Guard",108,161)
		callmonster("jupe_area1","VENATU","Security Guard",111,161)
		callmonster("jupe_area1","DIMIK","Security Guard",112,161)
		callmonster("jupe_area1","VENATU","Security Guard",115,161)
		callmonster("jupe_area1","DIMIK","Security Guard",104,154)
		callmonster("jupe_area1","VENATU","Security Guard",108,154)
		callmonster("jupe_area1","DIMIK","Security Guard",111,154)
		callmonster("jupe_area1","VENATU","Security Guard",112,154)
		callmonster("jupe_area1","DIMIK","Security Guard",115,154)
	return

	OnTimer:(300000)
		broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"It's funny... Isn't it?")
		cmdothernpc("Monster2#1-4","reset")
		cmdothernpc("#hole#1-4","on")
		cmdothernpc("Red Alarm#1-4","off")
		SetGlobalVar("050420_jupe_area1",0)
	return

	OnTimer:(300002)
		cmdothernpc("Monster2#1-4","reset")
	return

	OnMyMobDead:()
		if npcv "Monster2#1-4" [VAR_MYMOBCOUNT] < 1 then
			broadcastinmap2("FF0000","FW_NORMAL",12,0,0,"It's funny... Isn't it?")
			cmdothernpc("Monster2#1-4","reset")
			cmdothernpc("#hole#1-4","on")
			cmdothernpc("Red Alarm#1-4","off")
			SetGlobalVar("050420_jupe_area1",0)
			stoptimer()
		end
	return

npc("jupe_area1","Lever#ufe",SPRITE_CLEAR_NPC,112,162,0,0,0,"jupe_area1_Lever#ufe_112162")
OnCommand: "on"
	enablenpc "Lever#ufe"
end

OnCommand: "off"
	disablenpc "Lever#ufe"
end

OnCommand: "stop_timer"
	stoptimer()
end

function jupe_area1_Lever#ufe_112162()
	dialog "^3355FFIt's a lever"
	dialog "whose function"
	dialog "is not known to you.^000000"
	wait()
	local mresulta = menu("Pull.","Cancel.")
	if mresulta == 1 then
		InitTimer()
		cmdothernpc("LeverWarp#ufe","on")
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

OnTimer:(3000)
	enablenpc "Lever#ufe"
end

hiddenwarp("jupe_area1","jupe_area1_LeverWarp#ufe_117157",117,157,2,2)
OnInit:()
	disablenpc "LeverWarp#ufe"
end

OnCommand: "off"
	disablenpc "LeverWarp#ufe"
end

OnCommand: "reset"
	disablenpc(,"LeverWarp#ufe"")
end

OnCommand: "on"
	enablenpc "LeverWarp#ufe"
	ShowEffect("LeverWarp#ufe",561)
	sound("jupe_warp.wav",2,0,0)
	InitTimer()
end

function jupe_area1_LeverWarp#ufe_117157()
	moveto("jupe_gate",28,30)
end

OnTimer:(3000)
	disablenpc "LeverWarp#ufe"
end
