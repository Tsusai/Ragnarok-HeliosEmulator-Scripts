--  ____________________________________________________________
-- /                                                            \
-- |  ##       ##  ########  #########     ##########   ######   |
-- |   ##     ##  ##    ##  ##     ##     ##      ##   ##    ##  |
-- |    ##   ##  ##    ##  ##     ##     ##      ##   ##         |
-- |     ## ##  ##    ##  ##     ##     ##      ##   ##          |
-- |      ###  ########  #########     ##      ##   #######      |
-- |      ##  ##    ##  ##    ##      ##      ##        ##       |
-- |     ##  ##    ##  ##      ##    ##      ##  ##    ##        |
-- |    ##  ##    ##  ##        ##  ##########    ######         |
-- |   Yaros Package                                             |
-- |-------------------------------------------------------------|
-- | Current Version: 1.0      | Episode 10.3 File.              |
-- |-------------------------------------------------------------|
-- | 29/11/2006 : Added 1st Version. [kevloth]                   |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |                                                             |
-- |                                                             |
-- \____________________________________________________________/

warp("einbroch","einbroch_Security#ein_5152",51,52,1,1)
function einbroch_Security#ein_5152()
	local wordtest1 = math.random(1 7
	local name = PcName()
	if (((getvar(ein_main) == 7) or (getvar(yusa_01) == 9)) or (getvar(yusa_01) == 10)) then
		dialog "[Security System]"
		dialog "^8B0000*Beep Boop*^000000"
		dialog "Restricted Access Area."
		dialog "Please identify yourself"
		dialog "through the system."
		wait()
		local mresulta = menu("Identify.","Information","Cancel")
		if mresulta == 1 then
			dialog "[Security System]"
			dialog "Enter the following"
			dialog "password in 60 seconds."
			dialog "Failure to do so will result"
			dialog "in lockout. Please wait."
			wait()
			if (wordtest1 == 1) then
				dialog "[Security System]"
				dialog "^3CBCBCburrdingdingdilidingdingphoohudaambandoora^0000FFbambarambambamburanbamding^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab1","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab2","end_time")
				local save1 = inputstr
				local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
				local word1 = "burrdingdingdilidingdingphoohudaambandoorabambarambambamburanbamding"
				dialog "[Security System]"
				dialog "^FF1493burapaphurarlandreamduranbatuhi^800080wooikabamturubamdingding^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab3","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab4","end_time")
				local save2 = inputstr
				local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
				local word2 = "burapaphurarlandreamduranbatuhiwooikabamturubamdingding"
				local total_all = total_time1 + total_time2
				local tasoo = (1300 / total_all) * 6
				if ((save1 == word1) and (save2 == word2)) then
					if	(total_all > 60) then
						dialog "[Security System]"
						dialog "Time over."
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "lockout. Access denied."
						close()
						return
					else
						dialog "[Security System]"
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "override. Access granted."
						close()
						moveto("ein_in01",283,25)
						return
					end
				else
					dialog "[Security System]"
					dialog "You haved failed"
					dialog "the identification"
					dialog "check. Access denied."
					close()
					return
				end
			elseif (wordtest1 == 2) then
				dialog "[Security System]"
				dialog "^3cbcbc...silence. quiet benevolence... soul mate... wonder. enigma... cloud.^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab1","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab2","end_time")
				local save1 = inputstr
				local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
				local word1 = "...silence. quiet benevolence... soul mate... wonder. enigma... cloud."
				dialog "[Security System]"
				dialog "^ff1493opeN,Open!op3n.openOpen0p3nOpEn0pen`open'0Pen open?open!111OPENSESAME^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab3","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab4","end_time")
				local save2 = inputstr
				local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
				local word2 = "opeN,Open!op3n.openOpen0p3nOpEn0pen`open'0Pen open?open!111OPENSESAME"
				local total_all = total_time1 + total_time2
				local tasoo = (1250 / total_all) * 6
				if ((save1 == word1) and (save2 == word2)) then
					if	(total_all > 60) then
						dialog "[Security System]"
						dialog "Time over."
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "lockout. Access denied."
						close()
						return
					else
						dialog "[Security System]"
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "override. Access granted."
						close()
						moveto("ein_in01",283,25)
						return
					end
				else
					dialog "[Security System]"
					dialog "You haved failed"
					dialog "the identification"
					dialog "check. Access denied."
					close()
					return
				end
			elseif (wordtest1 == 3) then
				dialog "[Security System]"
				dialog "^3CBCBCCoboman no chikara-yumei na chikara-daiookii na chikara da ze! COBO ON^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab1","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab2","end_time")
				local save1 = inputstr
				local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
				local word1 = "Coboman no chikara-yumei na chikara-daiookii na chikara da ze! COBO ON"
				dialog "[Security System]"
				dialog "^ff1493hfjdkeldjsieldjs^800080hfjdjeiskdlefvbd^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab3","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab4","end_time")
				local save2 = inputstr
				local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
				local word2 = "hfjdkeldjsieldjshfjdjeiskdlefvbd"
				local total_all = total_time1 + total_time2
				local tasoo = (1180 / total_all) * 6
				if ((save1 == word1) and (save2 == word2)) then
					if	(total_all > 60) then
						dialog "[Security System]"
						dialog "Time over."
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "lockout. Access denied."
						close()
						return
					else
						dialog "[Security System]"
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "override. Access granted."
						close()
						moveto("ein_in01",283,25)
						return
					end
				else
					dialog "[Security System]"
					dialog "You haved failed"
					dialog "the identification"
					dialog "check. Access denied."
					close()
					return
				end
			elseif (wordtest1 == 4) then
				dialog "[Security System]"
				dialog "^3CBCBCbelief love luck grimace sweat rush folktale rodimus optimus bumblebee^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab1","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab2","end_time")
				local save1 = inputstr
				local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
				local word1 = "belief love luck grimace sweat rush folktale rodimus optimus bumblebee"
				dialog "[Security System]"
				dialog "^ff1493LiGhTsPeEd RiGhT SPEed LeFT TURn RiGhT BuRn OrIGInAL GaNgSteR SmACk^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab3","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab4","end_time")
				local save2 = inputstr
				local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
				local word2 = "LiGhTsPeEd RiGhT SPEed LeFT TURn RiGhT BuRn OrIGInAL GaNgSteR SmACk"
				local total_all = total_time1 + total_time2
				local tasoo = (1380 / total_all) * 6
				if ((save1 == word1) and (save2 == word2)) then
					if	(total_all > 60) then
						dialog "[Security System]"
						dialog "Time over."
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "lockout. Access denied."
						close()
						return
					else
						dialog "[Security System]"
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "override. Access granted."
						close()
						moveto("ein_in01",283,25)
						return
					end
				else
					dialog "[Security System]"
					dialog "You haved failed"
					dialog "the identification"
					dialog "check. Access denied."
					close()
					return
				end
			elseif (wordtest1 == 5) then
				dialog "[Security System]"
				dialog "^3CBCBCBy the power of p-po-poi-po-poi-poin-poing"
				dialog "GOD-POING. I NEVER LOSE!^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab1","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab2","end_time")
				local save1 = inputstr
				local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
				local word1 = "By the power of p-po-poi-po-poi-poin-poing GOD-POING. I NEVER LOSE!"
				dialog "[Security System]"
				dialog "^ff1493uNflAPPaBLe LoVaBLe SeCreTs AnD BoWLiNg aGaINST tHe KarMA of YoUtH^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab3","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab4","end_time")
				local save2 = inputstr
				local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
				local word2 = "uNflAPPaBLe LoVaBLe SeCreTs AnD BoWLiNg aGaINST tHe KarMA of YoUtH"
				local total_all = total_time1 + total_time2
				local tasoo = (1740 / total_all) * 6
				if ((save1 == word1) and (save2 == word2)) then
					if (total_all > 60) then
						dialog "[Security System]"
						dialog "Time over."
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "lockout. Access denied."
						close()
						return
					else
						dialog "[Security System]"
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "override. Access granted."
						close()
						moveto("ein_in01",283,25)
						return
					end
				else
					dialog "[Security System]"
					dialog "You haved failed"
					dialog "the identification"
					dialog "check. Access denied."
					close()
					return
				end
			elseif (wordtest1 == 6) then
				dialog "[Security System]"
				dialog "^3CBCBCYou give me no choice. I guess it's time for me to reveal my secret...^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab1","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab2","end_time")
				local save1 = inputstr
				local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
				local word1 = "You give me no choice. I guess it's time for me to reveal my secret..."
				dialog "[Security System]"
				dialog "^800080fReeDoM eCstAcy JoUrnaLiSm ArMpIt DisCoverY hEaDaChE MoonbeAmS jUsTiCE^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab3","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab4","end_time")
				local save2 = inputstr
				local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
				local word2 = "fReeDoM eCstAcy JoUrnaLiSm ArMpIt DisCoverY hEaDaChE MoonbeAmS jUsTiCE"
				local total_all = total_time1 + total_time2
				local tasoo = (1440 / total_all) * 6
				if ((save1 == word1) and (save2 == word2)) then
					if	(total_all > 60) then
						dialog "[Security System]"
						dialog "Time over."
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "lockout. Access denied."
						close()
						return
					else
						dialog "[Security System]"
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "override. Access granted."
						close()
						moveto("ein_in01",283,25)
						return
					end
				else
					dialog "[Security System]"
					dialog "You haved failed"
					dialog "the identification"
					dialog "check. Access denied."
					close()
					return
				end
			elseif (wordtest1 == 7) then
				dialog "[Security System]"
				dialog "^3CBCBCI'm the King of All Weirdos! Now you know of my true power. Obey~!^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab1","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab2","end_time")
				local save1 = inputstr
				local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
				local word1 = "I'm the King of All Weirdos! Now you know of my true power. Obey~! "
				dialog "[Security System]"
				dialog "^800080uNflAPPaBLe LoVaBLe SeCreTs AnD BoWLiNg aGaINST tHe KarMA of YoUtH^000000"
				local start_check = ServerTime
				local start_min = (start_check % 10000) / 100
				local start_sec = start_check % 100
				local start_time = ((start_min * 60) + start_sec)
				setitem("ein_lab3","start_time")
				wait()
				dlgwritestr()
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				if ((start_min == 57) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 58) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 00)) then
					local end_min = 60
				elseif ((start_min == 59) and (end_min == 01)) then
					local end_min = 61
				elseif ((start_min == 59) and (end_min == 02)) then
					local end_min = 62
				else
				end
				local end_time = ((end_min * 60) + end_sec)
				setitem("ein_lab4","end_time")
				local save2 = inputstr
				local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
				local word2 = "uNflAPPaBLe LoVaBLe SeCreTs AnD BoWLiNg aGaINST tHe KarMA of YoUtH"
				local total_all = total_time1 + total_time2
				local tasoo = (1450 / total_all) * 6
				if ((save1 == word1) and (save2 == word2)) then
					if	(total_all > 60) then
						dialog "[Security System]"
						dialog "Time over."
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "lockout. Access denied."
						close()
						return
					else
						dialog "[Security System]"
						dialog("It took ^ff0000","+","total_all","+"," seconds^000000")
						dialog "for you to enter the"
						dialog "password. Initiating"
						dialog "override. Access granted."
						close()
						moveto("ein_in01",283,25)
						return
					end
				else
					dialog "[Security System]"
					dialog "You haved failed"
					dialog "the identification"
					dialog "check. Access denied."
					close()
					return
				end
			end
		elseif mresulta == 2 then
			dialog "[Security System]"
			dialog "You must use the"
			dialog "security system in order"
			dialog "to gain access into the"
			dialog "Einbroch Laboratory."
			wait()
			dialog "[Security System]"
			dialog "You will be given"
			dialog "a password that you"
			dialog "must input correctly"
			dialog "within 60 seconds."
			dialog "Otherwise, you will"
			dialog "fail the security check."
			wait()
			dialog "[Security System]"
			dialog "If you take longer"
			dialog "than 3 minutes to"
			dialog "enter the password,"
			dialog "the security system"
			dialog "will initiate lockout."
			close()
			return
		elseif mresulta == 3 then
			dialog "[Security System]"
			dialog "You have canceled"
			dialog "the ID security check."
			close()
			return
		end
	else
		dialog "^3355FFThe door is locked."
		dialog "You cannot enter.^000000"
		close()
		return
	end
end

npc("airplane","John B.#ein",SPRITE_1_M_BARD,32,61,4,1,1,"airplane_John_B.#ein_3261")
function airplane_John_B.#ein_3261()
	local wordtest1 = math.random(1 7
	local name = PcName()
	dialog "[John B.]"
	dialog "Welcome to the"
	dialog "^ff0000RO Typing Challenge^000000."
	dialog "Would you like to play"
	dialog "a quick typing game?"
	wait()
	local mresulta = menu("Play ^ff0000RO Typing Challenge^000000","Information","View Top Records","Cancel")
	if mresulta == 1 then
		dialog "[John B.]"
		dialog "Okay, we have"
		dialog "a new challenger!"
		dialog "Enter the following"
		dialog "text as quickly as you"
		dialog "can without making any"
		dialog "mistakes! Let's start~!"
		wait()
		if (wordtest1 == 1) then
			dialog "[John B.]"
			dialog "^3cbcbcburrdingdingdilidingdingphoohudaambandoora^0000ffbambarambambamburanbamding^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab1","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab2","end_time")
			local save1 = inputstr
			local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
			local word1 = "burrdingdingdilidingdingphoohudaambandoorabambarambambamburanbamding"
			dialog "[John B.]"
			dialog "^ff1493burapaphurarlandreamduranbatuhi^800080wooikabamturubamdingding^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab3","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab4","end_time")
			local save2 = inputstr
			local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
			local word2 = "burapaphurarlandreamduranbatuhiwooikabamturubamdingding"
			local total_all = total_time1 + total_time2
			local tasoo = (1300 / total_all) * 6
			if ((save1 == word1) and (save2 == word2)) then
				dialog "[John B.]"
				dialog "Your typing time"
				dialog("was ^ff0000","+","total_all","+"," seconds^000000")
				dialog "and your letter total"
				dialog("is ","+","tasoo","+"," characters.")
				wait()
				if (tasoo >= 1300) then
					dialog "[John B.]"
					dialog "Hmm? Hey~"
					dialog "This record isn't humanly"
					dialog "possible unless you copy"
					dialog "and paste instead of type."
					dialog "Please play fairly next time."
					close()
					return
				else
				end
				local name_record = GetGlobalStr "050320_minus1_typing"
				local score_record = GetGlobalVar "050320_ein_typing"
				if (tasoo >= score_record) then
					dialog "[John B.]"
					dialog "The previous"
					dialog "record holder"
					dialog("was ^0000ff","+","name_record","+","^000000")
					dialog "with a letter total"
					dialog("of ^0000ff","+","score_record","+","^000000 characters.")
					dialog "But you've beat that..."
					wait()
					dialog "[John B.]"
					dialog("^ff0000","+","name","+","^000000,")
					dialog "you set a new record!"
					dialog "Congratulations!"
					SetGlobalStr("050320_minus1_typing","name")
					SetGlobalVar("050320_ein_typing","tasoo")
					close()
					return
				else
					dialog "[John B.]"
					dialog("^0000ff","+","name_record","+","^000000")
					dialog "is the current"
					dialog "record holder with"
					dialog("a letter total of ^0000ff","+","score_record","+","^000000")
					dialog "characters. Try to beat"
					dialog "that record next time~"
					close()
					return
				end
			else
				dialog "[John B.]"
				dialog "Oooh..."
				dialog "I'm sorry, but"
				dialog "you entered the"
				dialog "text incorrectly..."
				close()
				return
			end
		elseif (wordtest1 == 2) then
			dialog "[John B.]"
			dialog "^3CBCBCCoboman no chikara-yumei na chikara-daiookii na chikara da ze! COBO ON^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab1","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab2","end_time")
			local save1 = inputstr
			local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
			local word1 = "Coboman no chikara-yumei na chikara-daiookii na chikara da ze! COBO ON"
			dialog "[John B.]"
			dialog "^ff1493belief love luck grimace sweat rush folktale rodimus optimus bumblebee^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab3","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab4","end_time")
			local save2 = inputstr
			local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
			local word2 = "belief love luck grimace sweat rush folktale rodimus optimus bumblebee"
			local total_all = total_time1 + total_time2
			local tasoo = (1250 / total_all) * 6
			if ((save1 == word1) and (save2 == word2)) then
				dialog "[John B.]"
				dialog "Your typing time"
				dialog("was ^ff0000","+","total_all","+"," seconds^000000")
				dialog "and your letter total"
				dialog("is ","+","tasoo","+"," characters.")
				wait()
				if (tasoo >= 1300) then
					dialog "[John B.]"
					dialog "Hmm? Hey~"
					dialog "This record isn't humanly"
					dialog "possible unless you copy"
					dialog "and paste instead of type."
					dialog "Please play fairly next time."
					close()
					return
				else
				end
				local name_record = GetGlobalStr "050320_minus1_typing"
				local score_record = GetGlobalVar "050320_ein_typing"
				if (tasoo >= score_record) then
					dialog "[John B.]"
					dialog "The previous"
					dialog "record holder"
					dialog("was ^0000ff","+","name_record","+","^000000")
					dialog "with a letter total"
					dialog("of ^0000ff","+","score_record","+","^000000 characters.")
					dialog "But you've beat that..."
					wait()
					dialog "[John B.]"
					dialog("^ff0000","+","name","+","^000000,")
					dialog "you set a new record!"
					dialog "Congratulations!"
					SetGlobalStr("050320_minus1_typing","name")
					SetGlobalVar("050320_ein_typing","tasoo")
					close()
					return
				else
					dialog "[John B.]"
					dialog("^0000ff","+","name_record","+","^000000")
					dialog "is the current"
					dialog "record holder with"
					dialog("a letter total of ^0000ff","+","score_record","+","^000000")
					dialog "characters. Try to beat"
					dialog "that record next time~"
					close()
					return
				end
			else
				dialog "[John B.]"
				dialog "Oooh..."
				dialog "I'm sorry, but"
				dialog "you entered the"
				dialog "text incorrectly..."
				close()
				return
			end
		elseif (wordtest1 == 3) then
			dialog "[John B.]"
			dialog "^3cbcbcthkelfkskeldmsiejdlsle^0000ffhfndkelsheidlskemd^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab1","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab2","end_time")
			local save1 = inputstr
			local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
			local word1 = "thkelfkskeldmsiejdlslehfndkelsheidlskemd"
			dialog "[John B.]"
			dialog "^ff1493hfjdkeldjsieldjs^800080hfjdjeiskdlefvbd^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab3","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab4","end_time")
			local save2 = inputstr
			local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
			local word2 = "hfjdkeldjsieldjshfjdjeiskdlefvbd"
			local total_all = total_time1 + total_time2
			local tasoo = (1180 / total_all) * 6
			if ((save1 == word1) and (save2 == word2)) then
				dialog "[John B.]"
				dialog "Your typing time"
				dialog("was ^ff0000","+","total_all","+"," seconds^000000")
				dialog "and your letter total"
				dialog("is ","+","tasoo","+"," characters.")
				wait()
				if (tasoo >= 1300) then
					dialog "[John B.]"
					dialog "Hmm? Hey~"
					dialog "This record isn't humanly"
					dialog "possible unless you copy"
					dialog "and paste instead of type."
					dialog "Please play fairly next time."
					close()
					return
				else
				end
				local name_record = GetGlobalStr "050320_minus1_typing"
				local score_record = GetGlobalVar "050320_ein_typing"
				if (tasoo >= score_record) then
					dialog "[John B.]"
					dialog "The previous"
					dialog "record holder"
					dialog("was ^0000ff","+","name_record","+","^000000")
					dialog "with a letter total"
					dialog("of ^0000ff","+","score_record","+","^000000 characters.")
					dialog "But you've beat that..."
					wait()
					dialog "[John B.]"
					dialog("^ff0000","+","name","+","^000000,")
					dialog "you set a new record!"
					dialog "Congratulations!"
					SetGlobalStr("050320_minus1_typing","name")
					SetGlobalVar("050320_ein_typing","tasoo")
					close()
					return
				else
					dialog "[John B.]"
					dialog("^0000ff","+","name_record","+","^000000")
					dialog "is the current"
					dialog "record holder with"
					dialog("a letter total of ^0000ff","+","score_record","+","^000000")
					dialog "characters. Try to beat"
					dialog "that record next time~"
					close()
					return
				end
			else
				dialog "[John B.]"
				dialog "Oooh..."
				dialog "I'm sorry, but"
				dialog "you entered the"
				dialog "text incorrectly..."
				close()
				return
			end
		elseif (wordtest1 == 4) then
			dialog "[John B.]"
			dialog "^3CBCBCBy the power of p-po-poi-po-poi-poin-poing"
			dialog "GOD-POING. I NEVER LOSE!^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab1","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab2","end_time")
			local save1 = inputstr
			local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
			local word1 = "By the power of p-po-poi-po-poi-poin-poing GOD-POING. I NEVER LOSE!"
			dialog "[John B.]"
			dialog "^ff1493LiGhTsPeEd RiGhT SPEed LeFT TURn RiGhT BuRn OrIGInAL GaNgSteR SmACk^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab3","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab4","end_time")
			local save2 = inputstr
			local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
			local word2 = "LiGhTsPeEd RiGhT SPEed LeFT TURn RiGhT BuRn OrIGInAL GaNgSteR SmACk"
			local total_all = total_time1 + total_time2
			local tasoo = (1380 / total_all) * 6
			if ((save1 == word1) and (save2 == word2)) then
				dialog "[John B.]"
				dialog "Your typing time"
				dialog("was ^ff0000","+","total_all","+"," seconds^000000")
				dialog "and your letter total"
				dialog("is ","+","tasoo","+"," characters.")
				wait()
				if (tasoo >= 1300) then
					dialog "[John B.]"
					dialog "Hmm? Hey~"
					dialog "This record isn't humanly"
					dialog "possible unless you copy"
					dialog "and paste instead of type."
					dialog "Please play fairly next time."
					close()
					return
				else
				end
				local name_record = GetGlobalStr "050320_minus1_typing"
				local score_record = GetGlobalVar "050320_ein_typing"
				if (tasoo >= score_record) then
					dialog "[John B.]"
					dialog "The previous"
					dialog "record holder"
					dialog("was ^0000ff","+","name_record","+","^000000")
					dialog "with a letter total"
					dialog("of ^0000ff","+","score_record","+","^000000 characters.")
					dialog "But you've beat that..."
					wait()
					dialog "[John B.]"
					dialog("^ff0000","+","name","+","^000000,")
					dialog "you set a new record!"
					dialog "Congratulations!"
					SetGlobalStr("050320_minus1_typing","name")
					SetGlobalVar("050320_ein_typing","tasoo")
					close()
					return
				else
					dialog "[John B.]"
					dialog("^0000ff","+","name_record","+","^000000")
					dialog "is the current"
					dialog "record holder with"
					dialog("a letter total of ^0000ff","+","score_record","+","^000000")
					dialog "characters. Try to beat"
					dialog "that record next time~"
					close()
					return
				end
			else
				dialog "[John B.]"
				dialog "Oooh..."
				dialog "I'm sorry, but"
				dialog "you entered the"
				dialog "text incorrectly..."
				close()
				return
			end
		elseif (wordtest1 == 5) then
			dialog "[John B.]"
			dialog "^3cbcbcYou give me no choice. I guess it's time for me to reveal my secret...^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab1","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab2","end_time")
			local save1 = inputstr
			local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
			local word1 = "You give me no choice. I guess it's time for me to reveal my secret..."
			dialog "[John B.]"
			dialog "^ff1493fReeDoM eCstAcy JoUrnaLiSm ArMpIt DisCoverY hEaDaChE MoonbeAmS jUsTiCE^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab3","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab4","end_time")
			local save2 = inputstr
			local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
			local word2 = "fReeDoM eCstAcy JoUrnaLiSm ArMpIt DisCoverY hEaDaChE MoonbeAmS jUsTiCE"
			local total_all = total_time1 + total_time2
			local tasoo = (1740 / total_all) * 6
			if ((save1 == word1) and (save2 == word2)) then
				dialog "[John B.]"
				dialog "Your typing time"
				dialog("was ^ff0000","+","total_all","+"," seconds^000000")
				dialog "and your letter total"
				dialog("is ","+","tasoo","+"," characters.")
				wait()
				if (tasoo >= 1300) then
					dialog "[John B.]"
					dialog "Hmm? Hey~"
					dialog "This record isn't humanly"
					dialog "possible unless you copy"
					dialog "and paste instead of type."
					dialog "Please play fairly next time."
					close()
					return
				else
				end
				local name_record = GetGlobalStr "050320_minus1_typing"
				local score_record = GetGlobalVar "050320_ein_typing"
				if (tasoo >= score_record) then
					dialog "[John B.]"
					dialog "The previous"
					dialog "record holder"
					dialog("was ^0000ff","+","name_record","+","^000000")
					dialog "with a letter total"
					dialog("of ^0000ff","+","score_record","+","^000000 characters.")
					dialog "But you've beat that..."
					wait()
					dialog "[John B.]"
					dialog("^ff0000","+","name","+","^000000,")
					dialog "you set a new record!"
					dialog "Congratulations!"
					SetGlobalStr("050320_minus1_typing","name")
					SetGlobalVar("050320_ein_typing","tasoo")
					close()
					return
				else
					dialog "[John B.]"
					dialog("^0000ff","+","name_record","+","^000000")
					dialog "is the current"
					dialog "record holder with"
					dialog("a letter total of ^0000ff","+","score_record","+","^000000")
					dialog "characters. Try to beat"
					dialog "that record next time~"
					close()
					return
				end
			else
				dialog "[John B.]"
				dialog "Oooh..."
				dialog "I'm sorry, but"
				dialog "you entered the"
				dialog "text incorrectly..."
				close()
				return
			end
		elseif (wordtest1 == 6) then
			dialog "[John B.]"
			dialog "^3cbcbccallipygian salacious lascivious licentious prurient concupiscent^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab1","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab2","end_time")
			local save1 = inputstr
			local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
			local word1 = "callipygian salacious lascivious licentious prurient concupiscent"
			dialog "[John B.]"
			dialog "^800080uNflAPPaBLe LoVaBLe SeCreTs AnD BoWLiNg aGaINST tHe KarMA of YoUtH^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab3","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab4","end_time")
			local save2 = inputstr
			local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
			local word2 = "uNflAPPaBLe LoVaBLe SeCreTs AnD BoWLiNg aGaINST tHe KarMA of YoUtH"
			local total_all = total_time1 + total_time2
			local tasoo = (1440 / total_all) * 6
			if ((save1 == word1) and (save2 == word2)) then
				dialog "[John B.]"
				dialog "Your typing time"
				dialog("was ^ff0000","+","total_all","+"," seconds^000000")
				dialog "and your letter total"
				dialog("is ","+","tasoo","+"," characters.")
				wait()
				if (tasoo >= 1300) then
					dialog "[John B.]"
					dialog "Hmm? Hey~"
					dialog "This record isn't humanly"
					dialog "possible unless you copy"
					dialog "and paste instead of type."
					dialog "Please play fairly next time."
					close()
					return
				else
				end
				local name_record = GetGlobalStr "050320_minus1_typing"
				local score_record = GetGlobalVar "050320_ein_typing"
				if (tasoo >= score_record) then
					dialog "[John B.]"
					dialog "The previous"
					dialog "record holder"
					dialog("was ^0000ff","+","name_record","+","^000000")
					dialog "with a letter total"
					dialog("of ^0000ff","+","score_record","+","^000000 characters.")
					dialog "But you've beat that..."
					wait()
					dialog "[John B.]"
					dialog("^ff0000","+","name","+","^000000,")
					dialog "you set a new record!"
					dialog "Congratulations!"
					SetGlobalStr("050320_minus1_typing","name")
					SetGlobalVar("050320_ein_typing","tasoo")
					close()
					return
				else
					dialog "[John B.]"
					dialog("^0000ff","+","name_record","+","^000000")
					dialog "is the current"
					dialog "record holder with"
					dialog("a letter total of ^0000ff","+","score_record","+","^000000")
					dialog "characters. Try to beat"
					dialog "that record next time~"
					close()
					return
				end
			else
				dialog "[John B.]"
				dialog "Oooh..."
				dialog "I'm sorry, but"
				dialog "you entered the"
				dialog "text incorrectly..."
				close()
				return
			end
		elseif (wordtest1 == 7) then
			dialog "[John B.]"
			dialog "^3cbcbcI'm the King of All Weirdos! Now you know of my true power. Obey~!^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab1","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab2","end_time")
			local save1 = inputstr
			local total_time1 = (getvar(ein_lab2) - getvar(ein_lab1))
			local word1 = "I'm the King of All Weirdos! Now you know of my true power. Obey~!"
			dialog "[John B.]"
			dialog "^800080opeN,Open!op3n.openOpen0p3nOpEn0pen`open'0Pen open?open!111OPENSESAME ^000000"
			local start_check = ServerTime
			local start_min = (start_check % 10000) / 100
			local start_sec = start_check % 100
			local start_time = ((start_min * 60) + start_sec)
			setitem("ein_lab3","start_time")
			wait()
			dlgwritestr()
			local end_check = ServerTime
			local end_min = (end_check % 10000) / 100
			local end_sec = end_check % 100
			if ((start_min == 57) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 58) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 00)) then
				local end_min = 60
			elseif ((start_min == 59) and (end_min == 01)) then
				local end_min = 61
			elseif ((start_min == 59) and (end_min == 02)) then
				local end_min = 62
			else
			end
			local end_time = ((end_min * 60) + end_sec)
			setitem("ein_lab4","end_time")
			local save2 = inputstr
			local total_time2 = (getvar(ein_lab4) - getvar(ein_lab3))
			local word2 = "opeN,Open!op3n.openOpen0p3nOpEn0pen`open'0Pen open?open!111OPENSESAME"
			local total_all = total_time1 + total_time2
			local tasoo = (1450 / total_all) * 6
			if ((save1 == word1) and (save2 == word2)) then
				dialog "[John B.]"
				dialog "Your typing time"
				dialog("was ^ff0000","+","total_all","+"," seconds^000000")
				dialog "and your letter total"
				dialog("is ","+","tasoo","+"," characters.")
				wait()
				if (tasoo >= 1300) then
					dialog "[John B.]"
					dialog "Hmm? Hey~"
					dialog "This record isn't humanly"
					dialog "possible unless you copy"
					dialog "and paste instead of type."
					dialog "Please play fairly next time."
					close()
					return
				else
				end
				local name_record = GetGlobalStr "050320_minus1_typing"
				local score_record = GetGlobalVar "050320_ein_typing"
				if (tasoo >= score_record) then
					dialog "[John B.]"
					dialog "The previous"
					dialog "record holder"
					dialog("was ^0000ff","+","name_record","+","^000000")
					dialog "with a letter total"
					dialog("of ^0000ff","+","score_record","+","^000000 characters.")
					dialog "But you've beat that..."
					wait()
					dialog "[John B.]"
					dialog("^ff0000","+","name","+","^000000,")
					dialog "you set a new record!"
					dialog "Congratulations!"
					SetGlobalStr("050320_minus1_typing","name")
					SetGlobalVar("050320_ein_typing","tasoo")
					close()
					return
				else
					dialog "[John B.]"
					dialog("^0000ff","+","name_record","+","^000000")
					dialog "is the current"
					dialog "record holder with"
					dialog("a letter total of ^0000ff","+","score_record","+","^000000")
					dialog "characters. Try to beat"
					dialog "that record next time~"
					close()
					return
				end
			else
				dialog "[John B.]"
				dialog "Oooh..."
				dialog "I'm sorry, but"
				dialog "you entered the"
				dialog "text incorrectly..."
				close()
				return
			end
		end
	elseif mresulta == 2 then
		dialog "[John B.]"
		dialog "The RO Typing Challenge"
		dialog "is a game where you enter"
		dialog "the given text as quickly as you can. The name of the top player is recorded for posterity. If you want fame, here's your chance!"
		wait()
		dialog "[John B.]"
		dialog "I'd just like to let"
		dialog "you know that you type"
		dialog "all the text that you see"
		dialog "in the single input line that"
		dialog "you're given. So don't press"
		dialog "the enter key, just click 'OK.'"
		close()
		return
	elseif mresulta == 3 then
		local name_record = GetGlobalStr "050320_minus1_typing"
		local score_record = GetGlobalVar "050320_ein_typing"
		dialog "[John B.]"
		dialog("^0000ff","+","name_record","+","^000000")
		dialog "is the current"
		dialog "record holder with"
		dialog("a letter total of ^0000ff","+","score_record","+","^000000")
		dialog "characters. Try to beat"
		dialog "that record next time~"
	elseif mresulta == 4 then
		dialog "[John B.]"
		dialog "Feel free to take on the"
		dialog "RO Typing Challenge"
		dialog "anytime. I'll be here~"
	end
end
