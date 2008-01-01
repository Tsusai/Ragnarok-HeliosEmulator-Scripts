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
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|      All item code is commented out             |--
--|      untill the code is in Helios               |--
--\_________________________________________________/--

npc("prontera","Smile Assistance",spr_4_F_03,157,187,4,4,5,"prontera_Smile_Assistance_157187")
function prontera_Smile_Assistance_157187()
	dialog "[Smile Girl]"
	dialog "Hi ~ Hi ~"
	dialog "This is Smile Assistance."
	dialog "How may I help you ?"
	wait()
	local mresulta = menu("^3355FFMr. Smile^000000 ?","Quit")
	if mresulta == 1 then
		dialog "[Smile Girl]"
		dialog "National Event held by the command of ^5577FFHis majesty Tristram the 3rd^000000,"
		dialog "that intends to encourage the nation of the Rune-Midgarts Kingdom"
		dialog " to play in more enjoyable atmosphere!"
		dialog "I am ^3355FF' Smile Assistance '^000000,"
		dialog ".. who leads the national event under the name of "
		dialog "^3355FFSmile throughout the Rune-Midgarts Kingdom~^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With simple and easy-to-get items,"
		dialog "I can provide you"
		dialog "^3355FF' Mr. Smile '^000000."
		dialog "The requirements are followings."
		wait()
		dialog "[Smile Girl]"
		dialog "^3355FF10 Jellopy^000000"
		dialog "^3355FF10 Fluff^000000"
		dialog "^3355FF10 Clover^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With this event"
		dialog "Everybody will be happy and smile,"
		dialog "getting together with other people,"
		dialog "And will try to make Ragnarok the most enjoyable game in the world."
		close()
	--elseif mresulta == 2 then
		--if ((getvar(Jellopy) > 9) and (getvar(Fluff) > 9) and (getvar(Clover) > 9)) then
			--dialog "[Smile Girl]"
			--dialog "Congratulations !"
			--dialog "Now please take this Mr.Smile."
			--wait()
			--dropitem("Jellopy",10)
			--dropitem("Fluff",10)
			--dropitem("Clover",10)
			--getitem("Mr_Smile",1)
			--dialog "[Smile Girl]"
			--dialog "His majesty,Tristram the 3rd"
			--dialog "has promised to try his best to make Ragnarok better and more enjoyable."
			--wait()
			--dialog "The fact mentioned above"
			--dialog "was announced by"
			--dialog "the Public Information Bureau of the Rune-Midgarts Kingom."
			--close()
		--else
			--dialog "[Smile Girl]"
		--	dialog "Oh - unfortunately"
			--dialog "You have not brought"
			--dialog "enough items for Mr. Smile."
			--dialog "^3355FF10 Jellopy^000000"
			--dialog "^3355FF10 Fluff^000000"
			--dialog "^3355FF10 Clover^000000"
			--dialog "Please check the requirements above."
			--close()
		--end
	elseif mresulta == 2 then
		dialog "[Smile Girl]"
		dialog "Thank you for visiting us."
		dialog "We .."
		dialog "The Rune-Midgarts Kingdom"
		dialog "always try to make Ragnarok"
		dialog "better and more enjoyable game."
		wait()
		dialog "[Smile Girl]"
		dialog "We sincerely ask you"
		dialog "to cooperate."
		dialog "The fact mentioned above"
		dialog "was announced by the Public Information Bureau of the Rune-Midgarts Kingom."
		close()
	end
end
 
npc("morocc","Smile Assistance",spr_4_F_03,158,97,4,4,5,"morocc_Smile_Assistance_15897")
function morocc_Smile_Assistance_15897()
	dialog "[Smile Girl]"
	dialog "Hi ~ Hi ~"
	dialog "This is Smile Assistance."
	dialog "How may I help you ?"
	wait()
	local mresulta = menu("^3355FFMr. Smile^000000 ?","Quit")
	if mresulta == 1 then
		dialog "[Smile Girl]"
		dialog "National Event held by the command of ^5577FFHis majesty Tristram the 3rd^000000,"
		dialog "that intends to encourage the nation of the Rune-Midgarts Kingdom"
		dialog "to play in more enjoyable atmosphere!"
		dialog "I am ^3355FF' Smile Assistance '^000000,"
		dialog ".. who leads the national event under the name of"
		dialog "^3355FFSmile throughout the Rune-Midgarts Kingdom~^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With simple and easy-to-get items,"
		dialog "I can provide you"
		dialog "^3355FF' Mr. Smile '^000000."
		dialog "The requirements are followings."
		wait()
		dialog "[Smile Girl]"
		dialog "^3355FF10 Jellopy^000000"
		dialog "^3355FF10 Fluff^000000"
		dialog "^3355FF10 Clover^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With this event"
		dialog "Everybody will be happy and smile,"
		dialog "getting together with other people,"
		dialog "And will try to make Ragnarok the most enjoyable game in the world."
		close()
	--elseif mresulta == 2 then
		--if ((getvar(Jellopy) > 9) and (getvar(Fluff) > 9) and (getvar(Clover) > 9)) then
			--dialog "[Smile Girl]"
			--dialog "Congratulations !"
			--dialog "Now please take this Mr.Smile."
			--wait()
			--dropitem("Jellopy",10)
			--dropitem("Fluff",10)
			--dropitem("Clover",10)
			--getitem("Mr_Smile",1)
			--dialog "[Smile Girl]"
			--dialog "His majesty,Tristram the 3rd"
			--dialog "has promised to try his best to make Ragnarok better and more enjoyable."
			--wait()
			--dialog "The fact mentioned above"
			--dialog "was announced by"
			--dialog "the Public Information Bureau of the Rune-Midgarts Kingom."
			--close()
		--else
			--dialog "[Smile Girl]"
		--	dialog "Oh - unfortunately"
			--dialog "You have not brought"
			--dialog "enough items for Mr. Smile."
			--dialog "^3355FF10 Jellopy^000000"
			--dialog "^3355FF10 Fluff^000000"
			--dialog "^3355FF10 Clover^000000"
			--dialog "Please check the requirements above."
			--close()
		--end
	elseif mresulta == 2 then
		dialog "[Smile Girl]"
		dialog "Thank you for visiting us."
		dialog "We .."
		dialog "The Rune-Midgarts Kingdom"
		dialog "always try to make Ragnarok"
		dialog "better and more enjoyable game."
		wait()
		dialog "[Smile Girl]"
		dialog "We sincerely ask you"
		dialog "to cooperate."
		dialog "The fact mentioned above"
		dialog "was announced by the Public Information Bureau of the Rune-Midgarts Kingom."
		close()
	end
end
 
npc("aldebaran","Smile Assistance",spr_4_F_03,136,135,4,4,5,"aldebaran_Smile_Assistance_136135")
function aldebaran_Smile_Assistance_136135()
	dialog "[Smile Girl]"
	dialog "Hi ~ Hi ~"
	dialog "This is Smile Assistance."
	dialog "How may I help you ?"
	wait()
	local mresulta = menu("^3355FFMr. Smile^000000 ?","Quit")
	if mresulta == 1 then
		dialog "[Smile Girl]"
		dialog "National Event held by the command of ^5577FFHis majesty Tristram the 3rd^000000,"
		dialog "that intends to encourage the nation of the Rune-Midgarts Kingdom"
		dialog "to play in more enjoyable atmosphere!"
		dialog "I am ^3355FF' Smile Assistance '^000000,"
		dialog ".. who leads the national event under the name of"
		dialog "^3355FFSmile throughout the Rune-Midgarts Kingdom~^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With simple and easy-to-get items,"
		dialog "I can provide you"
		dialog "^3355FF' Mr. Smile '^000000."
		dialog "The requirements are followings."
		wait()
		dialog "[Smile Girl]"
		dialog "^3355FF10 Jellopy^000000"
		dialog "^3355FF10 Fluff^000000"
		dialog "^3355FF10 Clover^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With this event"
		dialog "Everybody will be happy and smile,"
		dialog "getting together with other people,"
		dialog "And will try to make Ragnarok the most enjoyable game in the world."
		close()
		--elseif mresulta == 2 then
		--if ((getvar(Jellopy) > 9) and (getvar(Fluff) > 9) and (getvar(Clover) > 9)) then
			--dialog "[Smile Girl]"
			--dialog "Congratulations !"
			--dialog "Now please take this Mr.Smile."
			--wait()
			--dropitem("Jellopy",10)
			--dropitem("Fluff",10)
			--dropitem("Clover",10)
			--getitem("Mr_Smile",1)
			--dialog "[Smile Girl]"
			--dialog "His majesty,Tristram the 3rd"
			--dialog "has promised to try his best to make Ragnarok better and more enjoyable."
			--wait()
			--dialog "The fact mentioned above"
			--dialog "was announced by"
			--dialog "the Public Information Bureau of the Rune-Midgarts Kingom."
			--close()
		--else
			--dialog "[Smile Girl]"
		--	dialog "Oh - unfortunately"
			--dialog "You have not brought"
			--dialog "enough items for Mr. Smile."
			--dialog "^3355FF10 Jellopy^000000"
			--dialog "^3355FF10 Fluff^000000"
			--dialog "^3355FF10 Clover^000000"
			--dialog "Please check the requirements above."
			--close()
		--end
	elseif mresulta == 2 then
		dialog "[Smile Girl]"
		dialog "Thank you for visiting us."
		dialog "We .."
		dialog "The Rune-Midgarts Kingdom"
		dialog "always try to make Ragnarok"
		dialog "better and more enjoyable game."
		wait()
		dialog "[Smile Girl]"
		dialog "We sincerely ask you"
		dialog "to cooperate."
		dialog "The fact mentioned above"
		dialog "was announced by the Public Information Bureau of the Rune-Midgarts Kingom."
		close()
	end
end
 
npc("geffen","Smile Assistance",spr_4_F_03,119,107,4,4,5,"geffen_Smile_Assistance_119107")
function geffen_Smile_Assistance_119107()
	dialog "[Smile Girl]"
	dialog "Hi ~ Hi ~"
	dialog "This is Smile Assistance."
	dialog "How may I help you ?"
	wait()
	local mresulta = menu("^3355FFMr. Smile^000000 ?","Quit")
	if mresulta == 1 then
		dialog "[Smile Girl]"
		dialog "National Event held by the command of ^5577FFHis majesty Tristram the 3rd^000000,"
		dialog "that intends to encourage the nation of the Rune-Midgarts Kingdom"
		dialog "to play in more enjoyable atmosphere!"
		dialog "I am ^3355FF' Smile Assistance '^000000,"
		dialog ".. who leads the national event under the name of"
		dialog "^3355FFSmile throughout the Rune-Midgarts Kingdom~^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With simple and easy-to-get items,"
		dialog "I can provide you"
		dialog "^3355FF' Mr. Smile '^000000."
		dialog "The requirements are followings."
		wait()
		dialog "[Smile Girl]"
		dialog "^3355FF10 Jellopy^000000"
		dialog "^3355FF10 Fluff^000000"
		dialog "^3355FF10 Clover^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With this event"
		dialog "Everybody will be happy and smile,"
		dialog "getting together with other people,"
		dialog "And will try to make Ragnarok the most enjoyable game in the world."
		close()
	--elseif mresulta == 2 then
		--if ((getvar(Jellopy) > 9) and (getvar(Fluff) > 9) and (getvar(Clover) > 9)) then
			--dialog "[Smile Girl]"
			--dialog "Congratulations !"
			--dialog "Now please take this Mr.Smile."
			--wait()
			--dropitem("Jellopy",10)
			--dropitem("Fluff",10)
			--dropitem("Clover",10)
			--getitem("Mr_Smile",1)
			--dialog "[Smile Girl]"
			--dialog "His majesty,Tristram the 3rd"
			--dialog "has promised to try his best to make Ragnarok better and more enjoyable."
			--wait()
			--dialog "The fact mentioned above"
			--dialog "was announced by"
			--dialog "the Public Information Bureau of the Rune-Midgarts Kingom."
			--close()
		--else
			--dialog "[Smile Girl]"
		--	dialog "Oh - unfortunately"
			--dialog "You have not brought"
			--dialog "enough items for Mr. Smile."
			--dialog "^3355FF10 Jellopy^000000"
			--dialog "^3355FF10 Fluff^000000"
			--dialog "^3355FF10 Clover^000000"
			--dialog "Please check the requirements above."
			--close()
		--end
	elseif mresulta == 2 then
		dialog "[Smile Girl]"
		dialog "Thank you for visiting us."
		dialog "We .."
		dialog "The Rune-Midgarts Kingdom"
		dialog "always try to make Ragnarok"
		dialog "better and more enjoyable game."
		wait()
		dialog "[Smile Girl]"
		dialog "We sincerely ask you"
		dialog "to cooperate."
		dialog "The fact mentioned above"
		dialog "was announced by the Public Information Bureau of the Rune-Midgarts Kingom."
		close()
	end
end
 
npc("alberta","Smile Assistance",spr_4_F_03,113,53,4,4,5,"alberta_Smile_Assistance_11353")
function alberta_Smile_Assistance_11353()
	dialog "[Smile Girl]"
	dialog "Hi ~ Hi ~"
	dialog "This is Smile Assistance."
	dialog "How may I help you ?"
	wait()
	local mresulta = menu("^3355FFMr. Smile^000000 ?","Quit")
	if mresulta == 1 then
		dialog "[Smile Girl]"
		dialog "National Event held by the command of ^5577FFHis majesty Tristram the 3rd^000000,"
		dialog "that intends to encourage the nation of the Rune-Midgarts Kingdom"
		dialog "to play in more enjoyable atmosphere!"
		dialog "I am ^3355FF' Smile Assistance '^000000,"
		dialog ".. who leads the national event under the name of"
		dialog "^3355FFSmile throughout the Rune-Midgarts Kingdom~^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With simple and easy-to-get items,"
		dialog "I can provide you"
		dialog "^3355FF' Mr. Smile '^000000."
		dialog "The requirements are followings."
		wait()
		dialog "[Smile Girl]"
		dialog "^3355FF10 Jellopy^000000"
		dialog "^3355FF10 Fluff^000000"
		dialog "^3355FF10 Clover^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With this event"
		dialog "Everybody will be happy and smile,"
		dialog "getting together with other people,"
		dialog "And will try to make Ragnarok the most enjoyable game in the world."
		close()
	--elseif mresulta == 2 then
		--if ((getvar(Jellopy) > 9) and (getvar(Fluff) > 9) and (getvar(Clover) > 9)) then
			--dialog "[Smile Girl]"
			--dialog "Congratulations !"
			--dialog "Now please take this Mr.Smile."
			--wait()
			--dropitem("Jellopy",10)
			--dropitem("Fluff",10)
			--dropitem("Clover",10)
			--getitem("Mr_Smile",1)
			--dialog "[Smile Girl]"
			--dialog "His majesty,Tristram the 3rd"
			--dialog "has promised to try his best to make Ragnarok better and more enjoyable."
			--wait()
			--dialog "The fact mentioned above"
			--dialog "was announced by"
			--dialog "the Public Information Bureau of the Rune-Midgarts Kingom."
			--close()
		--else
			--dialog "[Smile Girl]"
		--	dialog "Oh - unfortunately"
			--dialog "You have not brought"
			--dialog "enough items for Mr. Smile."
			--dialog "^3355FF10 Jellopy^000000"
			--dialog "^3355FF10 Fluff^000000"
			--dialog "^3355FF10 Clover^000000"
			--dialog "Please check the requirements above."
			--close()
		--end
	elseif mresulta == 2 then
		dialog "[Smile Girl]"
		dialog "Thank you for visiting us."
		dialog "We .."
		dialog "The Rune-Midgarts Kingdom"
		dialog "always try to make Ragnarok"
		dialog "better and more enjoyable game."
		wait()
		dialog "[Smile Girl]"
		dialog "We sincerely ask you"
		dialog "to cooperate."
		dialog "The fact mentioned above"
		dialog "was announced by the Public Information Bureau of the Rune-Midgarts Kingom."
		close()
	end
end
 
npc("payon","Smile Assistance",spr_4_F_03,186,104,5,0,0,"payon_Smile_Assistance_186104")
function payon_Smile_Assistance_186104()
	dialog "[Smile Girl]"
	dialog "Hi ~ Hi ~"
	dialog "This is Smile Assistance."
	dialog "How may I help you ?"
	wait()
	local mresulta = menu("^3355FFMr. Smile^000000 ?","Quit")
	if mresulta == 1 then
		dialog "[Smile Girl]"
		dialog "National Event held by the command of ^5577FFHis majesty Tristram the 3rd^000000,"
		dialog "that intends to encourage the nation of the Rune-Midgarts Kingdom"
		dialog "to play in more enjoyable atmosphere!"
		dialog "I am ^3355FF' Smile Assistance '^000000,"
		dialog ".. who leads the national event under the name of"
		dialog "^3355FFSmile throughout the Rune-Midgarts Kingdom~^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With simple and easy-to-get items,"
		dialog "I can provide you"
		dialog "^3355FF' Mr. Smile '^000000."
		dialog "The requirements are followings."
		wait()
		dialog "[Smile Girl]"
		dialog "^3355FF10 Jellopy^000000"
		dialog "^3355FF10 Fluff^000000"
		dialog "^3355FF10 Clover^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With this event"
		dialog "Everybody will be happy and smile,"
		dialog "getting together with other people,"
		dialog "And will try to make Ragnarok the most enjoyable game in the world."
		close()
--elseif mresulta == 2 then
		--if ((getvar(Jellopy) > 9) and (getvar(Fluff) > 9) and (getvar(Clover) > 9)) then
			--dialog "[Smile Girl]"
			--dialog "Congratulations !"
			--dialog "Now please take this Mr.Smile."
			--wait()
			--dropitem("Jellopy",10)
			--dropitem("Fluff",10)
			--dropitem("Clover",10)
			--getitem("Mr_Smile",1)
			--dialog "[Smile Girl]"
			--dialog "His majesty,Tristram the 3rd"
			--dialog "has promised to try his best to make Ragnarok better and more enjoyable."
			--wait()
			--dialog "The fact mentioned above"
			--dialog "was announced by"
			--dialog "the Public Information Bureau of the Rune-Midgarts Kingom."
			--close()
		--else
			--dialog "[Smile Girl]"
		--	dialog "Oh - unfortunately"
			--dialog "You have not brought"
			--dialog "enough items for Mr. Smile."
			--dialog "^3355FF10 Jellopy^000000"
			--dialog "^3355FF10 Fluff^000000"
			--dialog "^3355FF10 Clover^000000"
			--dialog "Please check the requirements above."
			--close()
		--end
	elseif mresulta == 2 then
		dialog "[Smile Girl]"
		dialog "Thank you for visiting us."
		dialog "We .."
		dialog "The Rune-Midgarts Kingdom"
		dialog "always try to make Ragnarok"
		dialog "better and more enjoyable game."
		wait()
		dialog "[Smile Girl]"
		dialog "We sincerely ask you"
		dialog "to cooperate."
		dialog "The fact mentioned above"
		dialog "was announced by the Public Information Bureau of the Rune-Midgarts Kingom."
		close()
	end
end
 
npc("izlude","Smile Assistance",spr_4_F_03,129,118,4,4,5,"izlude_Smile_Assistance_129118")
function izlude_Smile_Assistance_129118()
	dialog "[Smile Girl]"
	dialog "Hi ~ Hi ~"
	dialog "This is Smile Assistance."
	dialog "How may I help you ?"
	wait()
	local mresulta = menu("^3355FFMr. Smile^000000 ?","Quit")
	if mresulta == 1 then
		dialog "[Smile Girl]"
		dialog "National Event held by the command of ^5577FFHis majesty Tristram the 3rd^000000,"
		dialog "that intends to encourage the nation of the Rune-Midgarts Kingdom"
		dialog "to play in more enjoyable atmosphere!"
		dialog "I am ^3355FF' Smile Assistance '^000000,"
		dialog ".. who leads the national event under the name of"
		dialog "^3355FFSmile throughout the Rune-Midgarts Kingdom~^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With simple and easy-to-get items,"
		dialog "I can provide you"
		dialog "^3355FF' Mr. Smile '^000000."
		dialog "The requirements are followings."
		wait()
		dialog "[Smile Girl]"
		dialog "^3355FF10 Jellopy^000000"
		dialog "^3355FF10 Fluff^000000"
		dialog "^3355FF10 Clover^000000"
		wait()
		dialog "[Smile Girl]"
		dialog "With this event"
		dialog "Everybody will be happy and smile,"
		dialog "getting together with other people,"
		dialog "And will try to make Ragnarok the most enjoyable game in the world."
		close()
	--elseif mresulta == 2 then
		--if ((getvar(Jellopy) > 9) and (getvar(Fluff) > 9) and (getvar(Clover) > 9)) then
			--dialog "[Smile Girl]"
			--dialog "Congratulations !"
			--dialog "Now please take this Mr.Smile."
			--wait()
			--dropitem("Jellopy",10)
			--dropitem("Fluff",10)
			--dropitem("Clover",10)
			--getitem("Mr_Smile",1)
			--dialog "[Smile Girl]"
			--dialog "His majesty,Tristram the 3rd"
			--dialog "has promised to try his best to make Ragnarok better and more enjoyable."
			--wait()
			--dialog "The fact mentioned above"
			--dialog "was announced by"
			--dialog "the Public Information Bureau of the Rune-Midgarts Kingom."
			--close()
		--else
			--dialog "[Smile Girl]"
		--	dialog "Oh - unfortunately"
			--dialog "You have not brought"
			--dialog "enough items for Mr. Smile."
			--dialog "^3355FF10 Jellopy^000000"
			--dialog "^3355FF10 Fluff^000000"
			--dialog "^3355FF10 Clover^000000"
			--dialog "Please check the requirements above."
			--close()
		--end
	elseif mresulta == 2 then
		dialog "[Smile Girl]"
		dialog "Thank you for visiting us."
		dialog "We .."
		dialog "The Rune-Midgarts Kingdom"
		dialog "always try to make Ragnarok"
		dialog "better and more enjoyable game."
		wait()
		dialog "[Smile Girl]"
		dialog "We sincerely ask you"
		dialog "to cooperate."
		dialog "The fact mentioned above"
		dialog "was announced by the Public Information Bureau of the Rune-Midgarts Kingom."
		close()
	end
end