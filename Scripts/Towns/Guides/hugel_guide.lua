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
--| 05/01/2008                                      |--
--|   - First version for helios, Loads but does    |--
--|     not fully operate. [Spre]                   |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("hugel","Hugel Guide Granny",SPRITE_4_F_LGTGRAND,98,56,3,0,0,"hugel_Hugel_Guide_Granny_9856")
function hugel_Hugel_Guide_Granny_9856()
	local compass_check = 0
	local wait_button_chk = 0
	dialog "[Hugel Guide Granny]"
	dialog "Oh, hello~ you are one energetic adventurer."
	dialog "Welcome to Hugel. I was honored to guide you to this beautiful village."
	dialog "If this is the first time for you to use the guide services, why don't you check the  Notice menu first?"
	while(1) do
		wait()
		local mresulta = menu("Village Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			dialog "[Hugel Guide Granny]"
			dialog "I can tell you any building location as long as it is in Hugel."
			dialog "So where do you want to go?"
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					compass_check = 1
				elseif mresultb == 2 then
					compass_check = 2
				end
			end
			while(1) do
				if wait_button_chk == 0 then
					wait_button_chk = 1
				else
					wait()
				end
				local mresultb = menu("Church","Inn","Pub","Airport","Weapon Shop","Tool Shop","Party Supplies Shop","^3131FFHunter Job Change Place^000000","^3131FFShrine Expedition's Place^000000","Monster Race Arena","Bingo Game Room","Cancel")
				if mresultb == 1 then
					dialog "[Hugel Guide Granny]"
					dialog "Well, to me, this Church is rather like a place for old folks like me, you know..."
					if compass_check == 1 then
						compass(2,156,116,1,"0xFFFF0000")
					else
						compass(2,156,116,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Hugel Guide Granny]"
					dialog "Pudding rather than praise."
					dialog "You'd better unpack your stuffs first before you start looking around this village."
					dialog "It is the building right next to me."
					if compass_check == 1 then
						compass(3,104,79,1,"0xFFFF00FF")
					else
						compass(3,104,79,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Hugel Guide Granny]"
					dialog "Yes, when you travel, you want to drop by a pub and make new friends."
					dialog "Go east from here, then you will arrive at the pub."
					if compass_check == 1 then
						compass(4,129,66,1,"0xFF99FFFF")
					else
						compass(4,129,66,0,"0xFF99FFFF")
					end
				elseif mresultb == 4 then
					dialog "[Hugel Guide Granny]"
					dialog "A while ago, strangers came to village and built that strange airport kind of thing..."
					dialog "What do they call it? Airship?"
					if compass_check == 1 then
						compass(5,178,146,1,"0xFF0000FF")
					else
						compass(5,178,146,0,"0xFF0000FF")
					end
				elseif mresultb == 5 then
					dialog "[Hugel Guide Granny]"
					dialog "Well, we have a weapon shop in the center of village."
					dialog "But I don't know if there is any weapon that you find useful."
					if compass_check == 1 then
						compass(6,70,158,1,"0xFF00FF00")
					else
						compass(6,70,158,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Hugel Guide Granny]"
					dialog "Yes, I love Hugel brand Red Potions. I haven't tasted Red Potions from any other brands yet...hohoho. "
					dialog "The tool shop is located in the center of village."
					if compass_check == 1 then
						compass(7,93,167,1,"0xFF00FF00")
					else
						compass(7,93,167,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Hugel Guide Granny]"
					dialog "The party supplies shop is around the center of village."
					dialog "Make sure that you will not use any firecracker stuffs near other people, because it is dangerous, you know?"
					if compass_check == 1 then
						compass(8,91,105,1,"0xFFFF99FF")
					else
						compass(8,91,105,0,"0xFFFF99FF")
					end
				elseif mresultb == 8 then
					dialog "[Hugel Guide Granny]"
					dialog "Oh, are you an aspiring Hunter?"
					dialog "Then head northeast following the beach, then you will find the Hunter job change place."
					if compass_check == 1 then
						compass(9,206,228,1,"0xFFFF9900")
					else
						compass(9,206,228,0,"0xFFFF9900")
					end
				elseif mresultb == 9 then
					dialog "[Hugel Guide Granny]"
					dialog "I heard that the shrine expedition is staying in a house at the west."
					dialog "They have put some kind of sign in the middle of village, so I guess that they are hiring people for something..."
					dialog "I wonder what they are doing in here...hmmm."
					if compass_check == 1 then
						compass(10,52,91,1,"0xFFFFFFFF")
					else
						compass(10,52,91,0,"0xFFFFFFFF")
					end
				elseif mresultb == 10 then
					dialog "[Hugel Guide Granny]"
					dialog "I also like playing Monster Race games. It is pretty fun, you know?"
					dialog "Oh, you haven't tried it yet? No~ you'd better try. Trust me, you will like it."
					if compass_check == 1 then
						compass(11,58,72,1,"0xFFFF9900")
					else
						compass(11,58,72,0,"0xFFFF9900")
					end
				elseif mresultb == 11 then
					dialog "[Hugel Guide Granny]"
					dialog "Do you like bingo games? If you do, go visit Euklan's Bingo Game Room."
					if compass_check == 1 then
						compass(12,55,209,1,"0xFF66FFFF")
					else
						compass(12,55,209,0,"0xFF66FFFF")
					end
				elseif mresultb == 12 then
					dialog "[Hugel Guide Granny]"
					dialog "If you like to get rid of all the location marks on your Mini-Map,"
					dialog "just ask me again, and choose Remove Marks from Mini-Map menu."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,156,116,1,"0xFFFF0000")
			compass(3,104,79,1,"0xFFFF00FF")
			compass(4,129,66,1,"0xFF99FFFF")
			compass(5,178,146,1,"0xFF0000FF")
			compass(6,70,158,1,"0xFF00FF00")
			compass(7,93,167,0,"0xFF00FF00")
			compass(8,91,105,0,"0xFFFF99FF")
			compass(9,206,228,1,"0xFFFF9900")
			compass(10,52,91,1,"0xFFFFFFFF")
			compass(11,58,72,1,"0xFFFF9900")
			compass(12,55,209,1,"0xFF66FFFF")
			compass_check = 0
			dialog "[Hugel Guide Granny]"
			dialog "Okay, they are gone now. If you have more locations to ask, just let me know."
		elseif mresulta == 3 then
			dialog "[Hugel Guide Granny]"
			dialog "When you are using the  Village Guide menu "
			dialog "make sure that building locations will be marked on your mini-map at the upper right side of your screen."
			dialog "If you cannot see your mini-map, use the short cut key  ctrl+tab or press the Map button on your basic information windows okay?"
			dialog "And you can also zoom out your mini-map by using the  - button in case you cannot view the entire map of the village." 
		elseif mresulta == 4 then
			dialog "[Hugel Guide Granny]"
			dialog "This guide job is pretty exciting. Hohoho~"
			close()
			break
		end
	end
end
