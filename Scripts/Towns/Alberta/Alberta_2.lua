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
-- | 01/05/2007 : Added 1st Version. [Muad_Dib]                  |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |       errors on max_max_c Needs function?                   |
-- |                                                             |
-- \____________________________________________________________/

npc("alberta_in","Pharmacist",SPRITE_1_M_PUBMASTER,16,28,4,5,5,"alberta_in_Pharmacist_1628")
function alberta_in_Pharmacist_1628()
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "- Wait a moment! -"
		dialog "- Currently you're carrying -"
		dialog "- too many items with you. -"
		dialog "- Please come back later -"
		dialog "- after you put some items into kafra storage. -"
		close()
		return
	end
	dialog "[Old Pharmacist]"
	dialog "Ummmm..."
	dialog "What brings you here...?"
	wait()
	local mresulta = menu("Make Potion","Talk","Mixing Information","Cancel")
	if mresulta == 1 then
		local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
		if now_weight < 5000 then
			dialog "[Old Pharmacist]"
			dialog "Why are you carrying these so many!"
			dialog "Don't be greedy, carry only as much you need!"
			wait()
			dialog "[Old Pharmacist]"
			dialog "You are too heavy to receive potions from me..."
			dialog "Go store some items in your storage first!"
			close()
			return
		end
		dialog "[Old Pharmacist]"
		dialog "You have all the stuff ready, right? Which one would you like?"
		wait()
		local mresultb = menu("Red Potion","Orange Potion","Yellow Potion","White Potion","Blue Potion","Green Potion","Actually, I don't want anything.")
		if mresultb == 1 then
			dialog "[Old Pharmacist]"
			if ((getvar(Red_Herb) < 2) or (getvar(Empty_Bottle) == 0)) then
				dialog "You rascal! What did you expect?! Coming here with nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			if getvar(VAR_MONEY) < 3 then
				dialog "You rascal! What did you expect?! Coming here with nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			local hub = getvar(Red_Herb)
			local bottle = getvar(Empty_Bottle)
			local money = getvar(VAR_MONEY)
			local hub_send
			local bottle_send
			local money_send
			local gap
			local total_gap
			while(1) do
				if ((hub < 2) or (bottle == 0) or (money < 3)) then
					break
				else
					gap("=","gap","+",1)
					hub("=","hub","-",2)
					hub_send("=","hub_send","+",2)
					bottle("=","bottle","-",1)
					bottle_send("=","bottle_send","+",1)
					money("=","money","-",3)
					money_send("=","money_send","+",3)
				end
			end
			dialog "How many?"
			wait()
			local mresultc = menu("Make as many as I can.","I want to choose an amount.","Actually, I don't want anything.")
			if mresultc == 1 then
				total_gap("=","gap")
			elseif mresultc == 2 then
				dialog "[Old Pharmacist]"
				dialog("Then pick a number below 100. If you don't want any, just enter '0'. With the materials you have, you can make about ","+","gap","+"," potions.")
				wait()
				while(1) do
					dlgwrite(1,100)
					if input == 0 then
						dialog "[Old Pharmacist]"
						dialog "Make up your mind, will you?!"
						close()
						return
					elseif error then
						dialog "[Old Pharmacist]"
						dialog "Are you deaf? I said less than 100!"
						wait()
					else
						break
					end
				end
				hub_send("=","input","*",2)
				bottle_send("=","input")
				money_send("=","input","*",3)
				total_gap("=","input")
			elseif mresultc == 3 then
				dialog "[Old Pharmacist]"
				dialog "What?!"
				dialog "Grrr..."
				dialog "Bleh!"
				dialog "Get lost!"
				close()
				return
			end
			if ((getvar(Red_Herb) < hub_send) or (getvar(Empty_Bottle) < bottle_send) or (getvar(VAR_MONEY) < money_send)) then
				dialog "[Old Pharmacist]"
				dialog "You rascal! You don't even have all the materials and you want me to make you potions?!"
				close()
				return
			end
			dropitem("Red_Herb","hub_send")
			dropitem("Empty_Bottle","bottle_send")
			--dropgold money_send // Errored with expecting =
			getitem("Red_Potion","total_gap")
			dialog "[Old Pharmacist]"
			dialog "Here you go. It's all done so you can take it. But remember! Abusing medicine is not good."
			close()
		elseif mresultb == 2 then
			dialog "[Old Pharmacist]"
			if ((getvar(Red_Herb) == 0) or (getvar(Yellow_Herb) == 0) or (getvar(Empty_Bottle) == 0)) then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			if getvar(VAR_MONEY) < 5 then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			local hub = getvar(Red_Herb)
			local hub2 = getvar(Yellow_Herb)
			local bottle = getvar(Empty_Bottle)
			local money = getvar(VAR_MONEY)
			local hub_send
			local hub2_send
			local bottle_send
			local money_send
			local gap
			local total_gap
			while(1) do
				if ((hub == 0) or (hub2 == 0) or (bottle == 0) or (money < 5)) then
					break
				else
					gap("=","gap","+",1)
					hub("=","hub","-",1)
					hub_send("=","hub_send","+",1)
					hub2("=","hub","-",1)
					hub2_send("=","hub2_send","+",1)
					bottle("=","bottle","-",1)
					bottle_send("=","bottle_send","+",1)
					money("=","money","-",5)
					money_send("=","money_send","+",5)
				end
			end
			dialog "How many?"
			wait()
			local mresultc = menu("Make as many as I can.","I want to choose an amount.","Actually, I don't want anything.")
			if mresultc == 1 then
				total_gap("=","gap")
			elseif mresultc == 2 then
				dialog "[Old Pharmacist]"
				dialog("Then pick a number below 100. If you don't want any, just enter '0'. With the materials you have, you can make about ","+","gap","+"," potions.")
				wait()
				while(1) do
					dlgwrite(1,100)
					if input == 0 then
						dialog "[Old Pharmacist]"
						dialog "Make up your mind, will you?!"
						close()
						return
					elseif error then
						dialog "[Old Pharmacist]"
						dialog "Are you deaf? I said less than 100!"
						wait()
					else
						break
					end
				end
				hub_send("=","input")
				hub2_send("=","input")
				bottle_send("=","input")
				money_send("=","input","*",5)
				total_gap("=","input")
			elseif mresultc == 3 then
				dialog "[Old Pharmacist]"
				dialog "What?!"
				dialog "You..."
				dialog "Grrr!"
				dialog "Get lost!"
				close()
				return
			end
			if ((getvar(Red_Herb) < hub_send) or (getvar(Yellow_Herb) < hub2_send) or (getvar(Empty_Bottle) < bottle_send) or (getvar(VAR_MONEY) < money_send)) then
				dialog "[Old Pharmacist]"
				dialog "What! You want me to make you potions without even bringing all the materials?!"
				close()
				return
			end
			dropitem("Red_Herb","hub_send")
			dropitem("Yellow_Herb","hub2_send")
			dropitem("Empty_Bottle","bottle_send")
			--dropgold money_send // Errored with Expecting =
			getitem("Orange_Potion","total_gap")
			dialog "[Old Pharmacist]"
			dialog "Here you go. It's all done so you can take it. But remember! Abusing medicine is not good."
			close()
		elseif mresultb == 3 then
			dialog "[Old Pharmacist]"
			if ((getvar(Yellow_Herb) < 2) or (getvar(Empty_Bottle) == 0)) then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			if getvar(VAR_MONEY) < 10 then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			local hub = getvar(Yellow_Herb)
			local bottle = getvar(Empty_Bottle)
			local money = getvar(VAR_MONEY)
			local hub_send
			local bottle_send
			local money_send
			local gap
			local total_gap
			while(1) do
				if ((hub < 2) or (bottle == 0) or (money < 10)) then
					break
				else
					gap("=","gap","+",1)
					hub("=","hub","-",2)
					hub_send("=","hub_send","+",2)
					bottle("=","bottle","-",1)
					bottle_send("=","bottle_send","+",1)
					money("=","money","-",10)
					money_send("=","money_send","+",10)
				end
			end
			dialog "How many?"
			wait()
			local mresultc = menu("Make as many as I can.","I want to choose an amount.","Actually, I don't want anything.")
			if mresultc == 1 then
				total_gap("=","gap")
			elseif mresultc == 2 then
				dialog "[Old Pharmacist]"
				dialog("Then pick a number below 100. If you don't want any, just enter '0'. With the materials you have, you can make about ","+","gap","+"," potions.")
				wait()
				while(1) do
					dlgwrite(1,100)
					if input == 0 then
						dialog "[Old Pharmacist]"
						dialog "Make up your mind, will you?!"
						close()
						return
					elseif error then
						dialog "[Old Pharmacist]"
						dialog "Are you deaf? I said less than 100!"
						wait()
					else
						break
					end
				end
				hub_send("=","input","*",2)
				bottle_send("=","input")
				money_send("=","input","*",10)
				total_gap("=","input")
			elseif mresultc == 3 then
				dialog "[Old Pharmacist]"
				dialog "What?!"
				dialog "You..."
				dialog "Grrr!"
				dialog "Get lost!"
				close()
				return
			end
			if ((getvar(Yellow_Herb) < hub_send) or (getvar(Empty_Bottle) < bottle_send) or (getvar(VAR_MONEY) < money_send)) then
				dialog "[Old Pharmacist]"
				dialog "What! You want me to make you potions without even bringing all the materials?!"
				close()
				return
			end
			dropitem("Yellow_Herb","hub_send")
			dropitem("Empty_Bottle","bottle_send")
			--dropgold money_send // Errored with Expecting =
			getitem("Yellow_Potion","total_gap")
			dialog "[Old Pharmacist]"
			dialog "Here you go. It's all done so you can take it. But remember! Abusing medicine is not good."
			close()
		elseif mresultb == 4 then
			dialog "[Old Pharmacist]"
			if ((getvar(White_Herb) < 2) or (getvar(Empty_Bottle) == 0)) then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			if getvar(VAR_MONEY) < 20 then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			local hub = getvar(White_Herb)
			local bottle = getvar(Empty_Bottle)
			local money = getvar(VAR_MONEY)
			local hub_send
			local bottle_send
			local money_send
			local gap
			local total_gap
			while(1) do
				if ((hub < 2) or (bottle == 0) or (money < 20)) then
					break
				else
					gap("=","gap","+",1)
					hub("=","hub","-",2)
					hub_send("=","hub_send","+",2)
					bottle("=","bottle","-",1)
					bottle_send("=","bottle_send","+",1)
					money("=","money","-",20)
					money_send("=","money_send","+",20)
				end
			end
			dialog "How many?"
			wait()
			local mresultc = menu("Make as many as I can.","I want to choose an amount.","Actually, I don't want anything.")
			if mresultc == 1 then
				total_gap("=","gap")
			elseif mresultc == 2 then
				dialog "[Old Pharmacist]"
				dialog("Then pick a number below 100. If you don't want any, just enter '0'. With the materials you have, you can make about ","+","gap","+"," potions.")
				wait()
				while(1) do
					dlgwrite(1,100)
					if input == 0 then
						dialog "[Old Pharmacist]"
						dialog "Make up your mind, will you?!"
						close()
						return
					elseif error then
						dialog "[Old Pharmacist]"
						dialog "Are you deaf? I said less than 100!"
						wait()
					else
						break
					end
				end
				hub_send("=","input","*",2)
				bottle_send("=","input")
				money_send("=","input","*",20)
				total_gap("=","input")
			elseif mresultc == 3 then
				dialog "[Old Pharmacist]"
				dialog "What?!"
				dialog "You..."
				dialog "Grrr!"
				dialog "Get lost!"
				close()
				return
			end
			if ((getvar(White_Herb) < hub_send) or (getvar(Empty_Bottle) < bottle_send) or (getvar(VAR_MONEY) < money_send)) then
				dialog "[Old Pharmacist]"
				dialog "What! You want me to make you potions without even bringing all the materials?!"
				close()
				return
			end
			dropitem("White_Herb","hub_send")
			dropitem("Empty_Bottle","bottle_send")
			--dropgold money_send //Errored with expecting =
			getitem("White_Potion","total_gap")
			dialog "[Old Pharmacist]"
			dialog "Here you go. It's all done so you can take it. But remember! Abusing medicine is not good."
			close()
		elseif mresultb == 5 then
			dialog "[Old Pharmacist]"
			if ((getvar(Blue_Herb) < 2) or (getvar(Empty_Bottle) == 0)) then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			if getvar(VAR_MONEY) < 30 then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			local hub = getvar(Blue_Herb)
			local bottle = getvar(Empty_Bottle)
			local money = getvar(VAR_MONEY)
			local hub_send
			local bottle_send
			local money_send
			local gap
			local total_gap
			while(1) do
				if ((hub < 2) or (bottle == 0) or (money < 30)) then
					break
				else
					gap("=","gap","+",1)
					hub("=","hub","-",2)
					hub_send("=","hub_send","+",2)
					bottle("=","bottle","-",1)
					bottle_send("=","bottle_send","+",1)
					money("=","money","-",30)
					money_send("=","money_send","+",30)
				end
			end
			dialog "How many?"
			wait()
			local mresultc = menu("Make as many as I can.","I want to choose an amount.","Actually, I don't want anything.")
			if mresultc == 1 then
				total_gap("=","gap")
			elseif mresultc == 2 then
				dialog "[Old Pharmacist]"
				dialog("Then pick a number below 100. If you don't want any, just enter '0'. With the materials you have, you can make about ","+","gap","+"," potions.")
				wait()
				while(1) do
					dlgwrite(1,100)
					if input == 0 then
						dialog "[Old Pharmacist]"
						dialog "Make up your mind, will you?!"
						close()
						return
					elseif error then
						dialog "[Old Pharmacist]"
						dialog "Are you deaf? I said less than 100!"
						wait()
					else
						break
					end
				end
				hub_send("=","input","*",2)
				bottle_send("=","input")
				money_send("=","input","*",30)
				total_gap("=","input")
			elseif mresultc == 3 then
				dialog "[Old Pharmacist]"
				dialog "What?!"
				dialog "You..."
				dialog "Grrr!"
				dialog "Get lost!"
				close()
				return
			end
			if ((getvar(Blue_Herb) < hub_send) or (getvar(Empty_Bottle) < bottle_send) or (getvar(VAR_MONEY) < money_send)) then
				dialog "[Old Pharmacist]"
				dialog "What! You want me to make you potions without even bringing all the materials?!"
				close()
				return
			end
			dropitem("Blue_Herb","hub_send")
			dropitem("Empty_Bottle","bottle_send")
			--dropgold money_send //Errored with expecting =
			getitem("Blue_Potion","total_gap")
			dialog "[Old Pharmacist]"
			dialog "Here you go. It's all done so you can take it. But remember! Abusing medicine is not good."
			close()
		elseif mresultb == 6 then
			dialog "[Old Pharmacist]"
			if ((getvar(Green_Herb) < 2) or (getvar(Empty_Bottle) == 0)) then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			if getvar(VAR_MONEY) < 3 then
				dialog "You rascal!"
				dialog "What did you expect?!"
				dialog "Coming here with"
				dialog "nothing. Tsk!"
				dialog "Get lost!"
				close()
				return
			end
			local hub = getvar(Green_Herb)
			local bottle = getvar(Empty_Bottle)
			local money = getvar(VAR_MONEY)
			local hub_send
			local bottle_send
			local money_send
			local gap
			local total_gap
			while(1) do
				if ((hub < 2) or (bottle == 0) or (money < 3)) then
					break
				else
					gap("=","gap","+",1)
					hub("=","hub","-",2)
					hub_send("=","hub_send","+",2)
					bottle("=","bottle","-",1)
					bottle_send("=","bottle_send","+",1)
					money("=","money","-",3)
					money_send("=","money_send","+",3)
				end
			end
			dialog "How many?"
			wait()
			local mresultc = menu("Make as many as I can.","I want to choose an amount.","Actually, I don't want anything.")
			if mresultc == 1 then
				total_gap("=","gap")
			elseif mresultc == 2 then
				dialog "[Old Pharmacist]"
				dialog("Then pick a number below 100. If you don't want any, just enter '0'. With the materials you have, you can make about ","+","gap","+"," potions.")
				wait()
				while(1) do
					dlgwrite(1,100)
					if input == 0 then
						dialog "[Old Pharmacist]"
						dialog "Make up your mind, will you?!"
						close()
						return
					elseif error then
						dialog "[Old Pharmacist]"
						dialog "Are you deaf? I said less than 100!"
						wait()
					else
						break
					end
				end
				hub_send("=","input","*",2)
				bottle_send("=","input")
				money_send("=","input","*",3)
				total_gap("=","input")
			elseif mresultc == 3 then
				dialog "[Old Pharmacist]"
				dialog "What?!"
				dialog "You..."
				dialog "Grrr!"
				dialog "Get lost!"
				close()
				return
			end
			if ((getvar(Green_Herb) < hub_send) or (getvar(Empty_Bottle) < bottle_send) or (getvar(VAR_MONEY) < money_send)) then
				dialog "[Old Pharmacist]"
				dialog "What! You want me to make you potions without even bringing all the materials?!"
				close()
				return
			end
			dropitem("Green_Herb","hub_send")
			dropitem("Empty_Bottle","bottle_send")
			--dropgold money_send //Errored with expecting =
			getitem("Green_Potion","total_gap")
			dialog "[Old Pharmacist]"
			dialog "Here you go. It's all done so you can take it. But remember! Abusing medicine is not good."
			close()
		end
	elseif mresulta == 2 then
		dialog "[Old Pharmacist]"
		dialog "With medicine, you can increase a person's ability to regenerate. But, they're only good up to a point. *Sigh* I'm starting to think of the days when I was young. I must be getting old."
		wait()
		dialog "[Old Pharmacist]"
		dialog "Anyways, a potion is merely a potion. Nothing more and nothing less."
		close()
	elseif mresulta == 3 then
		dialog "[Old Pharmacist]"
		dialog "Hrrrmm..."
		dialog "You young ones can be quite annoying. But, since you asked, I'll explain."
		wait()
		dialog "[Old Pharmacist]"
		dialog "Herbs work well by themselves, but if you use my special techniques and skills to make potions out of them, the effect is much much greater."
		wait()
		dialog "[Old Pharmacist]"
		dialog "If you ask eagerly and politely, I will make them for you. But, not for free... Don't worry though, I only charge a small fee, so it's not that expensive."
		wait()
		dialog "[Old Pharmacist]"
		dialog "Red Potion - ^0098E52 Red Herbs, 1 Empty Bottle, 2 zeny fee.^000000"
		dialog "Orange Potion - ^0098E51 Red Herb, 1 Yellow Herb, 1 Empty Bottle, 5 zeny fee.^000000"
		dialog "Yellow Potion - ^0098E52 Yellow Herbs, 1 Empty Bottle, 10 zeny.^000000"
		wait()
		dialog "[Old Pharmacist]"
		dialog "White Potion - ^0098E52 White Herbs, 1 Empty Bottle, 20 zeny fee.^000000"
		dialog "Blue Potion - ^0098E52 Blue Herbs, 1 Empty Bottle, 30 zeny fee.^000000"
		dialog "Green Potion - ^0098E52 Green Herbs, 1 Empty Bottle, 3 zeny fee.^000000"
		close()
	elseif mresulta == 4 then
		dialog "[Old Pharmacist]"
		dialog "What a boring person. If you have something to say, why don't you say it?!"
		close()
	end
end
