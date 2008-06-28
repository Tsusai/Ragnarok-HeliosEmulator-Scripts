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
--| 2008/03/18                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|       Contains Functions not  yet in Helios.    |--
--|                                                 |--
--\_________________________________________________/--


npc("payon","Suhnbi",SPRITE_4_M_03,174,138,3,0,0,"payon_Suhnbi_174138")
function payon_Suhnbi_174138()
	local strPart1
	local strPart2
	local strPart3
	local strPart4
	local strPart5
	local strPart6
	local strPart7
	local strPart8
	local strPart9
	local strPart10
	local strPart11
	local strRetPart1
	local strRetPart2
	local strRetPart3
	local strRetPart4
	local strRetPart5
	local strRetPart6
	local strRetPart7
	local strRetPart8
	local strRetPart9
	local strRetPart10
	local strRetPart11
	local part
function payon_Suhnbi_174138()
		DisableItemMove()
		dialog "[Suhnbi]"
		dialog "I am a blacksmith who can refine armors and weapons."
		dialog "One of your equipped item can be refined."
		dialog "Tell me which equipment you want to refine."
		wait()
		strRetPart1("=","GetEquipName[1]")
		strRetPart2("=","GetEquipName[2]")
		strRetPart3("=","GetEquipName[3]")
		strRetPart4("=","GetEquipName[4]")
		strRetPart5("=","GetEquipName[5]")
		strRetPart6("=","GetEquipName[6]")
		strRetPart7("=","GetEquipName[7]")
		strRetPart8("=","GetEquipName[8]")
		strRetPart10("=","GetEquipName[10]")
		strRetPart11("=","GetEquipName[11]")
		if strRetPart1 == 0 then
			strPart1("=","Head-[Not Equipped]")
		else
			strPart1("=","strRetPart1")
		end
		if strRetPart2 == 0 then
			strPart2("=","Torso-[Not Equipped]")
		else
			strPart2("=","strRetPart2")
		end
		if strRetPart3 == 0 then
			strPart3("=","Left Hand-[Not Equipped]")
		else
			strPart3("=","strRetPart3")
		end
		if strRetPart4 == 0 then
			strPart4("=","Right Hand-[Not Equipped]")
		else
			strPart4("=","strRetPart4")
		end
		if strRetPart5 == 0 then
			strPart5("=","Garment-[Not Equipped]")
		else
			strPart5("=","strRetPart5")
		end
		if strRetPart6 == 0 then
			strPart6("=","Foot-[Not Equipped]")
		else
			strPart6("=","strRetPart6")
		end
		if strRetPart7 == 0 then
			strPart7("=","Accessory1-[Not Equipped]")
		else
			strPart7("=","strRetPart7")
		end
		if strRetPart8 == 0 then
			strPart8("=","Accessory2-[Not Equipped]")
		else
			strPart8("=","strRetPart8")
		end
		if strRetPart10 == 0 then
			strPart10("=","Head2-[Not Equipped]")
		else
			strPart10("=","strRetPart10")
		end
		if strRetPart11 == 0 then
			strPart11("=","Head3-[Not Equipped]")
		else
			strPart11("=","strRetPart11")
		end
		local mresulta = menu(strPart1 strPart2 strPart3 strPart4 strPart5 strPart6 strPart7 strPart8 strPart10 strPart11)
		if mresulta == 1 then
			part("=",1)
			if strRetPart1 == 0 then
				dialog "[Suhnbi]"
				dialog "Do you want me to refine your dumb brain?"
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 2 then
			part("=",2)
			if strRetPart2 == 0 then
				dialog "[Suhnbi]"
				dialog "I will melt your body with my heat."
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 3 then
			part("=",3)
			if strRetPart3 == 0 then
				dialog "[Suhnbi]"
				dialog "Want me to crush your left hand with my hammer?"
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 4 then
			part("=",4)
			if strRetPart4 == 0 then
				dialog "[Suhnbi]"
				dialog "Want me to crush your left hand with my hammer?"
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 5 then
			part("=",5)
			if strRetPart5 == 0 then
				dialog "[Suhnbi]"
				dialog "Look at you. Do you even know what a garment is?"
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 6 then
			part("=",6)
			if strRetPart6 == 0 then
				dialog "[Suhnbi]"
				dialog "I hate pranksters like you!"
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 7 then
			part("=",7)
			if strRetPart7 == 0 then
				dialog "[Suhnbi]"
				dialog "If you are not serious, SCRAM!"
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 8 then
			part("=",8)
			if strRetPart8 == 0 then
				dialog "[Suhnbi]"
				dialog "If you are not serious, SCRAM!"
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 9 then
			part("=",10)
			if strRetPart10 == 0 then
				dialog "[Suhnbi]"
				dialog "Argh, which part do you mean! Can't you see I am busy?"
				close()
				EnableItemMove()
				return
			end
		elseif mresulta == 10 then
			part("=",11)
			if strRetPart11 == 0 then
				dialog "[Suhnbi]"
				dialog "Argh, which part do you mean! Can't you see I am busy?"
				close()
				EnableItemMove()
				return
			end
		end
		if GetEquipIsEnableRef[part] == 0 then
			dialog "[Suhnbi]"
			dialog "Go find another Blacksmith. You can't refine this thing."
			close()
			EnableItemMove()
			return
		end
		if GetEquipIsIdentify[part] == 0 then
			dialog "[Suhnbi]"
			dialog "I'm not an idiot who'd identify items for you."
			close()
			EnableItemMove()
			return
		end
		if GetEquipRefineryCnt[part] >= 10 then
			dialog "[Suhnbi]"
			dialog "... Hmm someone perfected this already. I don't think I can work on it further."
			close()
			EnableItemMove()
			return
		end
		if GetEquipWeaponLgetvar(part) == 0 // 방어구? then
			dialog "[Suhnbi]"
			dialog "One ^ff9999Concentrated Elunium^000000 and 2000 Zeny. Don't even think about bargaining."
			dialog "So... Continue?!"
			wait()
			local mresulta = menu("Yes","No")
			if mresulta == 1 then
				if GetEquipPercentRefinery[part] < 100 then
					dialog "[Suhnbi]"
					dialog "Giggle. Giggle. Oh, you have guts, daring to refine this."
					dialog "You know it's pretty risky, don't you?"
					wait()
					dialog "If your defensive equipment is broken, "
					dialog "you'll never be able to use it again."
					dialog "Even your cards and your modifications will "
					dialog "^ff0000completely disappear^000000."
					dialog "Everything will disappear. As in...GONE!"
					dialog "Do you really wish to continue?"
					wait()
					local mresultb = menu("Yes","No")
					if mresultb == 1 then
					elseif mresultb == 2 then
						EnableItemMove()
						dialog "[Suhnbi]"
						dialog "What nonsense. You waste my precious time."
						dialog "Get lost, punk."
						close()
						return
					end
				end
				if ((getvar(Enriched_Elunium) > 0) and (getvar(VAR_MONEY) > 1999)) then
					dropitem("Enriched_Elunium",1)
					dropgold(2000)
				else
					EnableItemMove()
					dialog "[Suhnbi]"
					dialog "Is that all you have?"
					dialog "I told you, NO BARGAINING. Go get some money."
					close()
					return
				end
			elseif mresulta == 2 then
				EnableItemMove()
				dialog "[Suhnbi]"
				dialog "Ok... up to you....."
				close()
				return
			end
		elseif GetEquipWeaponLgetvar(part) == 1 // 무기레벨 1 then
			dialog "[Suhnbi]"
			dialog "You want to refine the level 1 weapons?"
			dialog "To refine that, you'll need to have a ^ff9999Concentrated Oridecon^000000 and 50 zeny."
			dialog "Would you like to continue?"
			wait()
			local mresulta = menu("Yes","No")
			if mresulta == 1 then
				if GetEquipPercentRefinery[part] < 100 then
					dialog "[Suhnbi]"
					dialog "Wow!!"
					dialog "This weapon, probably"
					dialog "looks like it's been refined..."
					dialog "many times..."
					dialog "It may break if"
					dialog "you refine it again."
					wait()
					dialog "And if it breaks,"
					dialog "you can't use it anymore!"
					dialog "All the cards in it and the properties"
					dialog "^ff0000will be lost^000000!"
					dialog "^ff0000 besides, the equipment will break! ^000000"
					dialog "Are you sure you still want to continue?"
					wait()
					local mresultb = menu("Yes. ","No.")
					if mresultb == 1 then
					elseif mresultb == 2 then
						EnableItemMove()
						dialog "[Suhnbi]"
						dialog "Good."
						dialog "Becuase if the weapon breaks from unreasonable refining, then I get a bad mood, too."
						close()
						return
					end
				end
				if ((getvar(Enriched_Oridecon) > 0) and (getvar(VAR_MONEY) > 49)) then
					dropitem("Enriched_Oridecon",1)
					dropgold(50)
				else
					EnableItemMove()
					dialog "[Suhnbi]"
					dialog "Are these all you have?"
					dialog "I'm very sorry, but I can't do anything without all the materials. Besides, I deserve some payments for my work, don't I?"
					close()
					return
				end
			elseif mresulta == 2 then
				EnableItemMove()
				dialog "[Suhnbi]"
				dialog "I can't help it even if you're not happy about it..."
				close()
				return
			end
		elseif GetEquipWeaponLgetvar(part) == 2 // 무기레벨 2 then
			dialog "[Suhnbi]"
			dialog "You want to refine level 2 weapons?"
			dialog "To refine that, you'll need to have a ^ff9999Concentrated Oridecon^000000 and 200 zeny."
			dialog "Would you like to continue?"
			wait()
			local mresulta = menu("Yes. ","No")
			if mresulta == 1 then
				if GetEquipPercentRefinery[part] < 100 then
					dialog "[Suhnbi]"
					dialog "Wow!!"
					dialog "This weapon, probably"
					dialog "looks like it's been refined..."
					dialog "many times..."
					dialog "It may break if"
					dialog "you refine it again."
					wait()
					dialog "And if it breaks,"
					dialog "you can't use it anymore!"
					dialog "All the cards in it and the properties"
					dialog "^ff0000will be lost^000000!"
					dialog "^ff0000 besides, the equipment will break! ^000000"
					dialog "Are you sure you still want to continue?"
					wait()
					local mresultb = menu("Yes. ","No")
					if mresultb == 1 then
					elseif mresultb == 2 then
						EnableItemMove()
						dialog "[Suhnbi]"
						dialog "Good."
						dialog "Becuase if the weapon breaks from unreasonable refining, then I get a bad mood, too."
						close()
						return
					end
				end
				if ((getvar(Enriched_Oridecon) > 0) and (getvar(VAR_MONEY) > 199)) then
					dropitem("Enriched_Oridecon",1)
					dropgold(200)
				else
					EnableItemMove()
					dialog "[Suhnbi]"
					dialog "Are these all you have?"
					dialog "I'm very sorry, but I can't do anything without all the materials. Besides, I deserve some payments for my work, don't I?"
					close()
					return
				end
			elseif mresulta == 2 then
				EnableItemMove()
				dialog "[Suhnbi]"
				dialog "I can't help it even if you're not happy about it..."
				close()
				return
			end
		elseif GetEquipWeaponLgetvar(part) == 3 // 무기레벨 3 then
			dialog "[Suhnbi]"
			dialog "You want to refine level 3 weapons?"
			dialog "To refine that, you'll need to have a ^ff9999Concentrated Oridecon^000000 and 5000 zeny."
			dialog "Would you like to continue?"
			wait()
			local mresulta = menu("Yes","No")
			if mresulta == 1 then
				if GetEquipPercentRefinery[part] < 100 then
					dialog "[Suhnbi]"
					dialog "Wow!!"
					dialog "This weapon, probably"
					dialog "looks like it's been refined..."
					dialog "many times..."
					dialog "It may break if"
					dialog "you refine it again."
					wait()
					dialog "And if it breaks,"
					dialog "you can't use it anymore!"
					dialog "All the cards in it and the properties"
					dialog "^ff0000will be lost^000000!"
					dialog "^ff0000 besides, the equipment will break! ^000000"
					dialog "Are you sure you still want to continue?"
					wait()
					local mresultb = menu("Yes","No")
					if mresultb == 1 then
					elseif mresultb == 2 then
						EnableItemMove()
						dialog "[Suhnbi]"
						dialog "Good."
						dialog "Becuase if the weapon breaks from unreasonable refining, then I get a bad mood, too?"
						close()
						return
					end
				end
				if ((getvar(Enriched_Oridecon) > 0) and (getvar(VAR_MONEY) > 4999)) then
					dropitem("Enriched_Oridecon",1)
					dropgold(5000)
				else
					EnableItemMove()
					dialog "[Suhnbi]"
					dialog "Are these all you have?"
					dialog "I'm very sorry, but I can't do anything without all the materials. Besides, I deserve some payments for my work, don't I."
					close()
					return
				end
			elseif mresulta == 2 then
				EnableItemMove()
				dialog "[Suhnbi]"
				dialog "I can't help it even if you're not happy about it..."
				close()
				return
			end
		elseif GetEquipWeaponLgetvar(part) == 4 // 무기레벨 4 then
			dialog "[Suhnbi]"
			dialog "You want to refine level 4 weapons?"
			dialog "To refine that you'll need to have a ^ff9999Concentrated Oridecon^000000 and 20000 zeny."
			dialog "Would you like to continue?"
			wait()
			local mresulta = menu("Yes","No")
			if mresulta == 1 then
				if GetEquipPercentRefinery[part] < 100 then
					dialog "[Suhnbi]"
					dialog "Wow!!"
					dialog "This weapon, probably"
					dialog "looks like it's been refined..."
					dialog "many times..."
					dialog "It may break if"
					dialog "you refine it again."
					wait()
					dialog "And if it breaks,"
					dialog "you can't use it anymore!"
					dialog "All the cards in it and the properties"
					dialog "^ff0000will be lost^000000!"
					dialog "^ff0000 besides, the equipment will break! ^000000"
					dialog "Are you sure you still want to continue?"
					wait()
					local mresultb = menu("Yes","No")
					if mresultb == 1 then
					elseif mresultb == 2 then
						EnableItemMove()
						dialog "[Suhnbi]"
						dialog "Good."
						dialog "Becuase if the weapon breaks from unreasonable refining, then I get a bad mood, too."
						close()
						return
					end
				end
				if ((getvar(Enriched_Oridecon) > 0) and (getvar(VAR_MONEY) > 19999)) then
					dropitem("Enriched_Oridecon",1)
					dropgold(20000)
				else
					EnableItemMove()
					dialog "[Suhnbi]"
					dialog "Are these all you have?"
					dialog "I'm very sorry, but I can't do anything without all the materials. Besides, I deserve some payments for my work, don't I."
					close()
					return
				end
			elseif mresulta == 2 then
				EnableItemMove()
				dialog "[Suhnbi]"
				dialog "I can't help it even if you're not happy about it..."
				close()
				return
			end
		end
		if GetAdvEquipIsSuccessRefinery[part] == 1 then
			dialog "[Suhnbi]"
			dialog "(hammering)"
			SuccessRefItem part
			wait()
			Emotion("Suhnbi","ET_BEST")
			dialog "[Suhnbi]"
			dialog "There you go! It's done."
			dialog "As your high quality weapon, also you must try to be a higher person by yourself."
			close()
		else
			dialog "[Suhnbi]"
			dialog "(hammering)"
			FailedRefItem part
			wait()
			local emo = math.random(1 5
			if emo == 1 then
				Emotion("Suhnbi","ET_MONEY")
			else
				Emotion("Suhnbi","ET_HUK")
			end
			dialog "[Suhnbi]"
			dialog "Uuuuuuuuuummmmmph!!!"
			wait()
			dialog "[Suhnbi]"
			dialog "..."
			dialog "....."
			dialog ".......Huhuhuhuhu"
			dialog "........It was your choice and my ability, no regret."
			close()
		end
		EnableIt()
	return
