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

npc("alberta","Cool Event Employee_Give Goods",spr_4_M_ZONDAOYAJI,148,60,3,0,0,"alberta_Cool_Event_Employee_Give_Goods_14860")
function alberta_Cool_Event_Employee_Give_Goods_14860()
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "^3355FFHold it right there!"
		dialog "You're carrying too many items and don't have enough inventory space to receive any rewards. Please make more inventory space available and come back to take this challenge."
		close()
		return
	end
	local weight = CheckMaxWeight(5031,1)
	if weight == 0 then
	else
		dialog "^3355FFHold it right there!"
		dialog "You're carrying too many items and don't have enough inventory space to receive any rewards. Please make more inventory space available and come back to take this challenge."
		close()
		return
	end
	local titem1 = (GetMEventItemName,1)
	local titem2 = (GetMEventItemName,2)
	local titem3 = (GetMEventItemName,3)
	local titem4 = (GetMEventItemName,4)
	local titem5 = (GetMEventItemName,5)
	local titem6 = (GetMEventItemName,6)
	local titem7 = (GetMEventItemName,7)
	local titem8 = (GetMEventItemName,8)
	local titem9 = (GetMEventItemName,9)
	local titem10 = (GetMEventItemName,10)
	--Unsure why Helios errors with this.
	dialog "[Gimulet]"
	dialog "Hmmm, let's check the"
	dialog "names on the list. Eh...?"
	dialog "Oh, excuse me. If you've"
	dialog "applied for this event before,"
	dialog "please tell me your name."
	local name = PcName()
	wait()
	dialog "[Gimulet]"
	dialog(,"+name+"...?"")
	dialog "Ah, here we are."
	dialog "Please check and see"
	dialog "if there is any prize that"
	dialog "you've won from the"
	dialog "following list."
	wait()
	dialog "[Gimulet]"
	dialog "^0000FFIf the list is empty,"
	dialog "that means that you have"
	dialog "not joined the event or"
	dialog "applied for a prize.^000000"
	wait()
	local mresulta = menu("titem1"," titem2","  titem3","  titem4 "," titem5 "," titem6"," titem7 "," titem8","  titem9 "," titem10")
	if mresulta == 1 then
		GetMEventItem(1)
		dialog "[Gimulet]"
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 2 then
		GetMEventItem(2)
		dialog "[Gimulet]"
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 3 then
		GetMEventItem(3)
		dialog "[Gimulet]"
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 4 then
		GetMEventItem(4)
		dialog "[Gimulet]"
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 5 then
		GetMEventItem(5)
		dialog "[Gimulet]"
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 6 then
		GetMEventItem(6)
		dialog "[Gimulet]"
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 7 then
		GetMEventItem(7)
		dialog "[Gimulet]"
		-- dialog ""+titem7+"..."
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 8 then
		GetMEventItem(8)
		dialog "[Gimulet]"
		-- dialog ""+titem8+"..."
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 9 then
		GetMEventItem(9)
		dialog "[Gimulet]"
		-- dialog ""+titem9+"ea..."
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	elseif mresulta == 10 then
		GetMEventItem(10)
		dialog "[Gimulet]"
		-- dialog ""+titem10+"ea..."
		dialog "There you go!"
		dialog "Thank you for participating"
		dialog "and we hope that you enjoy"
		dialog "future events provided by"
		dialog "Cool Event Corp!"
		close()
	end
end

npc("alberta","Cool Event Corp_Switch",spr_4_M_ZONDAOYAJI,250,250,0,0,0,"alberta_Cool_Event_Corp_Switch_250250")
function alberta_Cool_Event_Corp_Switch_250250()
	dialog "[Raven]"
	dialog "I perform the function of"
	dialog "switching the Cool Event"
	dialog "Corp Employee, [Gimulet],"
	dialog "on or off. The default value"
	dialog "is ON. (^3355FFalberta.gat 148, 60^000000)"
	wait()
	local mresulta = menu("On","Off")
	if mresulta == 1 then
		enablenpc "Cool Event Employee_Give Goods"
	elseif mresulta == 2 then
		disablenpc "Cool Event Employee_Give Goods"
	end
end

npc("alberta","Cool Event Employee_GiveZeny",spr_4_F_ZONDAGIRL,148,53,3,0,0,"alberta_Cool_Event_Employee_GiveZeny_14853")
function alberta_Cool_Event_Employee_GiveZeny_14853()
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "^3355FFHold it right there!"
		dialog "You're carrying too many items and don't have enough inventory space to receive any rewards. Please make more inventory space available and come back to take this challenge."
		close()
		return
	end
	local weight = CheckMaxWeight(5031,1)
	if weight == 0 then
	else
		dialog "^3355FFHold it right there!"
		dialog "You're carrying too many items and don't have enough inventory space to receive any rewards. Please make more inventory space available and come back to take this challenge."
		close()
		return
	end
	
	local tzeny1 = GetMEventZenyName 1
	local tzeny2 = GetMEventZenyName 2
	local tzeny3 = GetMEventZenyName 3
	local tzeny4 = GetMEventZenyName 4
	local tzeny5 = GetMEventZenyName 5
	local tzeny6 = GetMEventZenyName 6
	local tzeny7 = GetMEventZenyName 7
	local tzeny8 = GetMEventZenyName 8
	local tzeny9 = GetMEventZenyName 9
	local tzeny10 = GetMEventZenyName 10
	
	dialog "[Ekurer]"
	dialog "Hello hello!"
	dialog "Please tell me your"
	dialog "name and I'll check if you've"
	dialog "won any Zeny prizes. If you're"
	dialog "a winner, I'll give you your"
	dialog "reward right away!"
	local name = PcName()
	wait()
	dialog "[Ekurer]"
	dialog "...Sorry?"
	dialog(,"+name+"?"")
	dialog "Is that your name?"
	dialog "Please wait a moment"
	dialog "while I check my list of"
	dialog "Zeny prize winners."
	wait()
	dialog "[Ekurer]"
	dialog "^0000FFIf the list is empty,"
	dialog "that means that you have"
	dialog "not joined the event or"
	dialog "applied for a prize.^000000"
	wait()
	local mresulta = menu("tzeny1","  tzeny2 "," tzeny3","  tzeny4","  tzeny5","  tzeny6 "," tzeny7 "," tzeny8 "," tzeny9","  tzeny10")
	if mresulta == 1 then
		GetMEventZeny(1)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny1+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 2 then
		GetMEventZeny(2)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny2+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 3 then
		GetMEventZeny(3)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny3+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 4 then
		GetMEventZeny(4)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny4+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 5 then
		GetMEventZeny(5)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny5+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 6 then
		GetMEventZeny(6)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny6+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 7 then
		GetMEventZeny(7)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny7+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 8 then
		GetMEventZeny(8)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny8+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 9 then
		GetMEventZeny(9)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny9+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	elseif mresulta == 10 then
		GetMEventZeny(10)
		dialog "[Ekurer]"
		dialog "Hooray!"
		dialog "Here's your"
		dialog(,"+tzeny10+"","Zeny","prize!"")
		dialog "Thanks for participating"
		dialog "and we hope you take part"
		dialog "in our future events!"
		close()
	end
end

npc("alberta","Cool Event Corp_Zeny_Switch",spr_4_M_ZONDAOYAJI,245,245,0,0,0,"alberta_Cool_Event_Corp_Zeny_Switch_245245")
function alberta_Cool_Event_Corp_Zeny_Switch_245245()
	dialog "[Crest]"
	dialog "I perform the function of"
	dialog "switching the Cool Event"
	dialog "Corp Employee, [Ekurer],"
	dialog "on or off. The default value"
	dialog "is ON. (^3355FFalberta.gat 148, 53^000000)"
	wait()
	local mresulta = menu("On","Off")
	if mresulta == 1 then
		enablenpc "Cool Event Employee_GiveZeny"
	elseif mresulta == 2 then
		disablenpc "Cool Event Employee_GiveZeny"
	end
end
