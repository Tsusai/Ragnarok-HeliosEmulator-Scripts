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
--| 31/12/2007                                      |--
--|   - First Version for Helios  [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("comodo","Munak's Grandma",spr_8_F_GRANDMOTHER,112,182,0,5,5,"comodo_Munaks_Grandma_112182")
function comodo_Munaks_Grandma_112182()
	if getvar("Girl's_Diary") > 0 then
		dialog "[Munak's Grandma]"
		if getvar(VAR_SEX) == 1 then
			dialog "Oh my..."
			dialog "Have you seen my granddaughter, boy? My poor granddaughter has been missing..."
		else
			dialog "Oh my..."
			dialog "Have you seen my granddaughter, young lady? My poor granddaughter has been missing..."
		end
		wait()
		dialog "[Munak's Grandma]"
		dialog "I can't remember exactly when it was, but when I lived in Payon, I had a very cute granddaughter. She was really happy when I made her hair into a ^000077Danggie^000000..."
		wait()
		dialog "[Munak's Grandma]"
		dialog "She was always working with the village chief. She was such a sweet girl, and always got along with the chief's son."
		wait()
		dialog "[Munak's Grandma]"
		dialog "But one day our deity became angry and cursed the chief's son was cursed with sickness! The village had to offer my granddaughter to him as a companion to lift the curse..."
		wait()
		dialog "[Munak's Grandma]"
		dialog "The chief's son regained his health, but I lost my granddaughter! I can't look at him and not think of her, so I tried to leave my misery behind and came here to Comodo..."
		wait()
		local mresulta = menu("Oh come on! Cheer up!","Um, is this diary...?")
		if mresulta == 1 then
			dialog "[Munak's Grandma]"
			dialog "It seems my granddaughter haunts my dreams every night. I believe I've been trying to cheer up for years now..."
			close()
			return
		elseif mresulta == 2 then
			if getvar(Danggie) > 0 then
				dialog "[Munak's Grandma]"
				dialog "Oh god!"
				dialog "It's my granddaughter's diary! Th-This is her writing! Oh my...!"
				wait()
				dialog "[Munak's Grandma]"
				if getvar(VAR_SEX) == 1 then
					dialog "Young man, I'll read this to you if you give it to me with a Danggie, please. I no longer have anything that belonged to her now..."
				else
					dialog "Young lady, I'll read this to you if you give it to me with a Danggie, please. I no longer have anything that belonged to her now..."
				end
				wait()
				local mresultb = menu("No way.","Okay, I'll do it!")
				if mresultb == 1 then
					dialog "[Munak's Grandma]"
					if getvar(VAR_SEX) == 1 then
						dialog "Oh...?"
						dialog "Alright, young man."
						dialog "Thank you anyway."
					else
						dialog "Oh...?"
						dialog "Thank you anyway,"
						dialog "young lady."
					end
					wait()
					dialog "[Munak's Grandma]"
					dialog "It's alright..."
					dialog "I can only hope that the deity is taking good care of her!"
					close()
					return
				elseif mresultb == 2 then
					dropitem("Girl's_Diary",1)
					dropitem("Danggie",1)
					dialog "[Munak's Grandma]"
					if getvar(VAR_SEX) == 1 then
						dialog "Oh!"
						dialog "Thank you,"
						dialog "young man~!"
					else
						dialog "Goodness!"
						dialog "Thank you,"
						dialog "young lady..."
					end
					wait()
					dialog "[Munak's Grandma]"
					dialog "Alright..."
					dialog "I'll read this."
					dialog "Let me see..."
					wait()
					dialog "[Munak's Grandma]"
					dialog "It seems that my granddaughter was treated by the chief like his own child! There are so many happy memories in this book!"
					wait()
					getitem("Heart_Of_Her",1)
					dialog "[Munak's Grandma]"
					dialog "Oh, thank you. I now have a good keepsake of my granddaughter. Thank you so much! May God-Poing bless you!"
					close()
					return
				end
			else
				dialog "[Munak's Grandma]"
				dialog "What? A diary? What's that diary...? I don't... I can't remember, oh my..."
				wait()
				dialog "[Munak's Grandma]"
				dialog "I really wish I could make her hair into a ^000077Danggie^000000 again. I really wish... Oh, oh my granddaughter..."
				close()
				return
			end
		end
	else
		dialog "[Munak's Grandma]"
		dialog "My own granddaughter..."
		dialog "Why did she have to leave...?"
		close()
	end
end
