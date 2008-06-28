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
-- | Current Version: 1.4      | Episode 11.1 File.              |
-- |-------------------------------------------------------------|
-- | 29/11/2006 : Added 1st Version. [kevloth]                   |
-- | 30/11/2006 : Updated to ep 10.4. [Muad_Dib]                 |
-- | 05/12/2006 : Updated to ep 11.1. [Muad_Dib]                 |
-- | 26/04/2007 : Updated one npc's menu. [Muad_Dib]             |
-- | 02/05/2007 : Updated some dialog to match iRO. [Muad_Dib]   |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |                                                             |
-- |                                                             |
-- \____________________________________________________________/

npc("airplane","Apple Merchant#airplane",SPRITE_4_M_04,50,66,5,0,0,"airplane_Apple_Merchant#airplane_5066")
function airplane_Apple_Merchant#airplane_5066()
	dialog "[Fruitz]"
	dialog "Welcome to Fruitz's"
	dialog "Shop where you can"
	dialog "purchase Apples or grind"
	dialog "them to make Apple Juice."
	wait()
	local mresulta = menu("Buy Apples.","Make Apple Juice.","Why are you here?","Cancel.")
	if mresulta == 1 then
		dialog "[Fruitz]"
		dialog "Please enter the amount"
		dialog "of Apples that you wish to"
		dialog "buy. Each Apple is 15 zeny"
		dialog "and you can buy a maximum"
		dialog "of 500 at a time. Please enter"
		dialog " '0' to cancel your order."
		wait()
		while(1) do
			dlgwrite(1,500)
			local pay = input * 15
			local apple_weight = input * 20
			local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
			if (input == 0) then
				dialog "[Fruitz]"
				dialog "Thanks for stopping"
				dialog "by my shop. Farewell!"
				dialog "Come by anytime when"
				dialog "you feel like having an"
				dialog "Apple to snack on~"
				close()
				return
			elseif error then
				dialog "[Fruitz]"
				dialog "You've entered a number"
				dialog "higher than the maximum"
				dialog "value of 500. Please enter"
				dialog "the number of Apples you"
				dialog "wish to purchase again."
				wait()
			else
				dialog "[Fruitz]"
				dialog("A total of ^FF0000","+","input","+","^000000 Apples")
				dialog("will cost you ^FF0000","+","pay","+"," Zeny^000000 zeny.")
				dialog "Would you like to continue?"
				wait()
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					break
				elseif mresultb == 2 then
					dialog "[Fruitz]"
					dialog "Thanks for stopping"
					dialog "by my shop. Farewell!"
					dialog "Come by anytime when"
					dialog "you feel like having an"
					dialog "Apple to snack on~"
					close()
					return
				end
			end
		end
		if (getvar(VAR_MONEY) < pay) then
			dialog "[Fruitz]"
			dialog "I'm sorry, but you don't"
			dialog "have enough money to"
			dialog "purchase that many Apples."
			dialog "Please check your zeny or"
			dialog "purchase fewer Apples."
			close()
			return
		elseif (now_weight < apple_weight) then
			dialog "[Fruitz]"
			dialog "Hmmm, I don't think"
			dialog "you've got enough room in"
			dialog "your inventory to carry this"
			dialog "many Apples. Why don't you free up some of your inventory space?"
			close()
			return
		else
			dropgold pay
			getitem("Apple","input")
			dialog "[Fruitz]"
			dialog "Thanks for stopping by"
			dialog "my shop. I hope you enjoy"
			dialog "the flavor of these Apples~!"
			close()
			return
		end
	elseif mresulta == 2 then
		dialog "[Fruitz]"
		dialog "Okay, I'll need"
		dialog "^FF00003 Apples and 1 Empty Bottle^000000"
		dialog "to make 1 Apple Juice for you."
		dialog "Would you like to proceed?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if ((getvar(Apple) < 3) or (getvar(Empty_Bottle) < 1)) then
				dialog "[Fruitz]"
				dialog "I'm sorry, but you don't"
				dialog "have enough materials to"
				dialog "create a bottle of Apple Juice."
				dialog "Remember, I need 3 Apples"
				dialog "and 1 Empty Bottle to do it."
				close()
				return
			else
				dialog "[Fruitz]"
				dialog "Thank you,"
				dialog "please wait"
				dialog "just a moment."
				wait()
				dialog "^3355FF*Grind grind*"
				dialog "*Grind grind*"
				dialog "*Clang...!*^000000"
				wait()
				dropitem("Apple",3)
				dropitem("Empty_Bottle",1)
				getitem("Apple_Juice",1)
				dialog "[Fruitz]"
				dialog "There you go~"
				dialog "I hope you enjoy!"
				dialog "Please feel free to"
				dialog "stop by for your Apple"
				dialog "and Apple Juice needs"
				dialog "at anytime, adventurer~"
				close()
				return
			end
		elseif mresultb == 2 then
			dialog "[Fruitz]"
			dialog "Thanks for stopping"
			dialog "by my shop. Farewell!"
			dialog "Come by anytime when"
			dialog "you feel like having an"
			dialog "Apple to snack on~"
			close()
			return
		end
	elseif mresulta == 3 then
		dialog "[Fruitz]"
		dialog "I used to be a wandering"
		dialog "vagabond when, one day,"
		dialog "I took a nap and something"
		dialog "struck my head and awoke"
		dialog "me from my restful slumber."
		wait()
		dialog "[Fruitz]"
		dialog "It turns out that I was"
		dialog "sleeping beneath an apple"
		dialog "tree and that an apple fell"
		dialog "and hit me on the head."
		dialog "I was dying of hunger and"
		dialog "was about to eat that Apple..."
		wait()
		dialog "[Fruitz]"
		dialog "But suddenly, Kain, my old"
		dialog "friend from the mining days,"
		dialog "asked me to help him around"
		dialog "on the Airship. So I did, and"
		dialog "it was there where I found some"
		dialog "people playing the Dice game."
		wait()
		dialog "[Fruitz]"
		dialog "I was bored and curious"
		dialog "and ended up wagering that"
		dialog "single Apple in a game of"
		dialog "dice. But for some reason,"
		dialog "I had this incredible lucky"
		dialog "streak. One apple became two... "
		wait()
		dialog "[Fruitz]"
		dialog "Two became four and"
		dialog "before I knew it, I had"
		dialog "cornered the Apple market!"
		dialog "I won so many Apples, I just"
		dialog "started my own business here"
		dialog "on the Airship. Weird, huh?"
		wait()
		dialog "[Fruitz]"
		dialog "So Apples are good"
		dialog "for you. They were"
		dialog "certainly very good"
		dialog "to me. Hahahahaah~!"
		close()
		return
	elseif mresulta == 4 then
		dialog "[Fruitz]"
		dialog "Thank you for"
		dialog "using my shop."
		dialog "Farewell~"
		close()
		return
	end
end

npc("airport","Airport Staff#airport1a",SPRITE_4_F_01,143,43,5,0,0,"airport_Airport_Staff#airport1a_14343")
function airport_Airport_Staff#airport1a_14343()
	dialog "[Airport Staff]"
	dialog "Welcome to the"
	dialog "Einbroch Airport,"
	dialog "where we offer nonstop"
	dialog "flights to the cities of"
	dialog "Juno, Lighthalzen and Hugel."
	wait()
	local mresulta = menu("Board the Airship","Cancel")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The Airship boarding fee"
		dialog "is 1,200 zeny, but if you've"
		dialog "got a Free Ticket for Airship,"
		dialog "the fee will be waived. Will"
		dialog "you board the Airship?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("airport",148,51)
					return
				else
					dialog "[Airport Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have a Free Ticket for"
					dialog "Airship and you don't have"
					dialog "enough zeny for boarding"
					dialog "the Airship. Remember, the"
					dialog "boarding fee is 1,200 zeny."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Thank you and"
			dialog "have a nice day."
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Thank you and"
		dialog "have a nice day."
		close()
	end
end

npc("airport","Airport Staff#airport1b",SPRITE_4_F_01,158,43,5,0,0,"airport_Airport_Staff#airport1b_15843")
function airport_Airport_Staff#airport1b_15843()
	dialog "[Airport Staff]"
	dialog "Welcome to the"
	dialog "Einbroch Airport,"
	dialog "where we offer nonstop"
	dialog "flights to the cities of"
	dialog "Juno, Lighthalzen and Hugel."
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The Airship boarding fee"
		dialog "is 1,200 zeny, but if you've"
		dialog "got a Free Ticket for Airship,"
		dialog "the fee will be waived. Will"
		dialog "you board the Airship?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("airport",148,51)
					return
				else
					dialog "[Airport Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have a Free Ticket for"
					dialog "Airship and you don't have"
					dialog "enough zeny for boarding"
					dialog "the Airship. Remember, the"
					dialog "boarding fee is 1,200 zeny."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Thank you and"
			dialog "have a nice day."
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Thank you and"
		dialog "have a nice day."
		close()
	end
end

npc("airport","Airport Staff#airport1c",SPRITE_4_F_01,126,43,5,0,0,"airport_Airport_Staff#airport1c_12643")
function airport_Airport_Staff#airport1c_12643()
	dialog "[Airport Staff]"
	dialog "Welcome to the"
	dialog "Einbroch Airport,"
	dialog "where we offer nonstop"
	dialog "flights to the cities of"
	dialog "Juno, Lighthalzen and Hugel."
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The Airship boarding fee"
		dialog "is 1,200 zeny, but if you've"
		dialog "got a Free Ticket for Airship,"
		dialog "the fee will be waived. Will"
		dialog "you board the Airship?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("airport",148,51)
					return
				else
					dialog "[Airport Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have a Free Ticket for"
					dialog "Airship and you don't have"
					dialog "enough zeny for boarding"
					dialog "the Airship. Remember, the"
					dialog "boarding fee is 1,200 zeny."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Thank you and"
			dialog "have a nice day."
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Thank you and"
		dialog "have a nice day."
		close()
	end
end

npc("airport","Arrival Staff#airport2a",SPRITE_4_F_01,143,49,3,0,0,"airport_Arrival_Staff#airport2a_14349")
function airport_Arrival_Staff#airport2a_14349()
	dialog "[Arrival Staff]"
	dialog "Welcome to Einbroch Airport."
	dialog "If you are arriving from your"
	dialog "flight, let me guide you to the"
	dialog "main terminal. Otherwise, please board the Airship to depart to"
	dialog "Juno, Lighthalzen or Hugel."
	wait()
	local mresulta = menu("Exit to main terminal.","Cancel.")
	if mresulta == 1 then
		dialog "[Arrival Staff]"
		dialog "Once you're in the main terminal, you will need to pay the fee again"
		dialog "to board an Airship. You should"
		dialog "only exit if the city of Einbroch"
		dialog "is your intended destination."
		dialog "Proceed to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Arrival Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Arrival Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("airport","Arrival Staff#airport2b",SPRITE_4_F_01,126,51,3,0,0,"airport_Arrival_Staff#airport2b_12651")
function airport_Arrival_Staff#airport2b_12651()
	dialog "[Arrival Staff]"
	dialog "Welcome to Einbroch Airport."
	dialog "If you are arriving from your"
	dialog "flight, let me guide you to the"
	dialog "main terminal. Otherwise, please board the Airship to depart to"
	dialog "Juno, Lighthalzen or Hugel."
	wait()
	local mresulta = menu("Exit to main terminal","Cancel")
	if mresulta == 1 then
		dialog "[Arrival Staff]"
		dialog "Once you're in the main terminal, you will need to pay the fee again"
		dialog "to board an Airship. You should"
		dialog "only exit if the city of Einbroch"
		dialog "is your intended destination."
		dialog "Proceed to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Arrival Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Arrival Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("airport","Arrival Staff#airport2c",SPRITE_4_F_01,158,50,3,0,0,"airport_Arrival_Staff#airport2c_15850")
function airport_Arrival_Staff#airport2c_15850()
	dialog "[Arrival Staff]"
	dialog "Welcome to Einbroch Airport."
	dialog "If you are arriving from your"
	dialog "flight, let me guide you to the"
	dialog "main terminal. Otherwise, please board the Airship to depart to"
	dialog "Juno, Lighthalzen or Hugel."
	wait()
	local mresulta = menu("Exit to main terminal","Cancel")
	if mresulta == 1 then
		dialog "[Arrival Staff]"
		dialog "Once you're in the main terminal, you will need to pay the fee again"
		dialog "to board an Airship. You should"
		dialog "only exit if the city of Einbroch"
		dialog "is your intended destination."
		dialog "Proceed to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Arrival Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Arrival Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("yuno","Airship Staff#yuno1",SPRITE_1_F_02,141,175,5,0,0,"yuno_Airship_Staff#yuno1_141175")
function yuno_Airship_Staff#yuno1_141175()
	dialog "[Airship Staff]"
	dialog "Welcome to"
	dialog "the Airship."
	dialog "How may I help you?"
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airship Staff]"
		dialog "The Airship ticket"
		dialog "costs 1,200 Zeny. If you have a free Airship ticket, you can use the service for free. This flight is only for traveling to ^FF0000Einbroch, Lighthalzen and Hugel^000000. Would you like to board?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				close()
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("airplane",224,64)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					close()
					dropgold(1200)
					moveto("airplane",224,64)
					return
				else
					dialog "[Airship Staff]"
					dialog "I am sorry, you don't have enough money. Please remember the Airship ticket is 1,200 zeny."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airship Staff]"
			dialog "Please come again. Thank you."
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airship Staff]"
		dialog "Please come again. Thank you."
		close()
	end
end


npc("lhz_airport","Airport Staff#lhz_airport1a",SPRITE_4_F_01,143,43,5,0,0,"lhz_airport_Airport_Staff#lhz_airport1a_14343")
function lhz_airport_Airport_Staff#lhz_airport1a_14343()
	dialog "[Airport Staff]"
	dialog "Welcome to the"
	dialog "Lighthalzen Airport,"
	dialog "where we offer nonstop"
	dialog "flights to Einbroch, Juno and Hugel."
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The boarding fee is"
		dialog "1,200 zeny, but you can"
		dialog "waive the fee if you redeem"
		dialog "a Free Ticket for Airship."
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("lhz_airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("lhz_airport",148,51)
					return
				else
					dialog "[Airship Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have 1,200 zeny to pay"
					dialog "for the boarding fee."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Thank you and"
			dialog "please come again."
			dialog "Have a good day~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Thank you and"
		dialog "please come again."
		dialog "Have a good day~"
		close()
	end
end

npc("lhz_airport","Airship Staff#lhz_airport1b",SPRITE_4_F_01,158,43,5,0,0,"lhz_airport_Airship_Staff#lhz_airport1b_15843")
function lhz_airport_Airship_Staff#lhz_airport1b_15843()
	dialog "[Airport Staff]"
	dialog "Welcome to the"
	dialog "Lighthalzen Airport,"
	dialog "where we offer nonstop"
	dialog "flights to Einbroch, Juno and Hugel."
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The boarding fee is"
		dialog "1,200 zeny, but you can"
		dialog "waive the fee if you redeem"
		dialog "a Free Ticket for Airship."
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("lhz_airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("lhz_airport",148,51)
					return
				else
					dialog "[Airport Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have 1,200 zeny to pay"
					dialog "for the boarding fee."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Thank you and"
			dialog "please come again."
			dialog "Have a good day~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Thank you and"
		dialog "please come again."
		dialog "Have a good day~"
		close()
	end
end

npc("lhz_airport","Airship Staff#lhz_airport1c",SPRITE_4_F_01,126,43,5,0,0,"lhz_airport_Airship_Staff#lhz_airport1c_12643")
function lhz_airport_Airship_Staff#lhz_airport1c_12643()
	dialog "[Airport Staff]"
	dialog "Welcome to the"
	dialog "Lighthalzen Airport,"
	dialog "where we offer nonstop"
	dialog "flights to Einbroch, Juno and Hugel."
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The boarding fee is"
		dialog "1,200 zeny, but you can"
		dialog "waive the fee if you redeem"
		dialog "a Free Ticket for Airship."
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("lhz_airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("lhz_airport",148,51)
					return
				else
					dialog "[Airport Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have 1,200 zeny to pay"
					dialog "for the boarding fee."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Thank you and"
			dialog "please come again."
			dialog "Have a good day~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Thank you and"
		dialog "please come again."
		dialog "Have a good day~"
		close()
	end
end

npc("lhz_airport","Arrival Staff#lhz_airport2a",SPRITE_4_F_01,143,49,3,0,0,"lhz_airport_Arrival_Staff#lhz_airport2a_14349")
function lhz_airport_Arrival_Staff#lhz_airport2a_14349()
	dialog "[Arrival Staff]"
	dialog "Welcome to Lighthalzen Airport."
	dialog "Please let me guide you to the"
	dialog "main terminal if you are arriving from your flight. Otherwise, please"
	dialog "board the departing Airship to reach your intended destination."
	wait()
	local mresulta = menu("Exit to main terminal.","Cancel.")
	if mresulta == 1 then
		dialog "[Arrival Staff]"
		dialog "Once you're in the main terminal, you will need to pay the fee again"
		dialog "to board an Airship. You should"
		dialog "only exit if Lighthalzen is your intended destination. Shall we"
		dialog "proceed to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("lhz_airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Arrival Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Arrival Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("lhz_airport","Arrival Staff#lhz_airport2b",SPRITE_4_F_01,126,51,3,0,0,"lhz_airport_Arrival_Staff#lhz_airport2b_12651")
function lhz_airport_Arrival_Staff#lhz_airport2b_12651()
	dialog "[Arrival Staff]"
	dialog "Welcome to Lighthalzen Airport."
	dialog "Please let me guide you to the"
	dialog "main terminal if you are arriving from your flight. Otherwise, please"
	dialog "board the departing Airship to reach your intended destination."
	wait()
	local mresulta = menu("Exit to main terminal.","Cancel.")
	if mresulta == 1 then
		dialog "[Arrival Staff]"
		dialog "Once you're in the main terminal, you will need to pay the fee again"
		dialog "to board an Airship. You should"
		dialog "only exit if Lighthalzen is your intended destination. Shall we"
		dialog "proceed to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("lhz_airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Arrival Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Arrival Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("lhz_airport","Arrival Staff#lhz_airport2c",SPRITE_4_F_01,158,50,3,0,0,"lhz_airport_Arrival_Staff#lhz_airport2c_15850")
function lhz_airport_Arrival_Staff#lhz_airport2c_15850()
	dialog "[Arrival Staff]"
	dialog "Welcome to Lighthalzen Airport."
	dialog "Please let me guide you to the"
	dialog "main terminal if you are arriving from your flight. Otherwise, please"
	dialog "board the departing Airship to reach your intended destination."
	wait()
	local mresulta = menu("Exit to main terminal.","Cancel.")
	if mresulta == 1 then
		dialog "[Arrival Staff]"
		dialog "Once you're in the main terminal, you will need to pay the fee again"
		dialog "to board an Airship. You should"
		dialog "only exit if Lighthalzen is your intended destination. Shall we"
		dialog "proceed to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("lhz_airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Arrival Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Arrival Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("y_airport","Airport Staff#y_airport1a",SPRITE_4_F_01,143,43,5,0,0,"y_airport_Airport_Staff#y_airport1a_14343")
function y_airport_Airport_Staff#y_airport1a_14343()
	dialog "[Airport Staff]"
	dialog "Welcome to Juno Airport where we offer domestic flights to Einbroch, Lighthalzen and Hugel,"
	dialog "and international flights to Izlude and Rachel."
	dialog "How may I be of service?"
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The boarding fee for all"
		dialog "flights is 1,200 zeny. If you"
		dialog "use a Free Ticket for Airship,"
		dialog "the boarding fee will be waived.So would you like to depart?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("y_airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("y_airport",148,51)
					return
				else
					dialog "[Airport Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have 1,200 zeny to pay"
					dialog "for the boarding fee."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "I'm sorry, but you don't"
			dialog "have 1,200 zeny to pay"
			dialog "for the boarding fee."
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "I'm sorry, but you don't"
		dialog "have 1,200 zeny to pay"
		dialog "for the boarding fee."
		close()
	end
end

npc("y_airport","Airport Staff#y_airport1b",SPRITE_4_F_01,158,43,5,0,0,"y_airport_Airport_Staff#y_airport1b_15843")
function y_airport_Airport_Staff#y_airport1b_15843()
	dialog "[Airport Staff]"
	dialog "Welcome to Juno Airport where we offer domestic flights to Einbroch, Lighthalzen and Hugel,"
	dialog "and international flights to Izlude and Rachel."
	dialog "How may I be of service?"
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The boarding fee for all"
		dialog "flights is 1,200 zeny. If you"
		dialog "use a Free Ticket for Airship,"
		dialog "the boarding fee will be waived. So would you like to depart?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("y_airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("y_airport",148,51)
					return
				else
					dialog "[Airport Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have 1,200 zeny to pay"
					dialog "for the boarding fee."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "I'm sorry, but you don't"
			dialog "have 1,200 zeny to pay"
			dialog "for the boarding fee."
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "I'm sorry, but you don't"
		dialog "have 1,200 zeny to pay"
		dialog "for the boarding fee."
		close()
	end
end

npc("y_airport","Airport Staff#y_airport1c",SPRITE_4_F_01,126,43,5,0,0,"y_airport_Airport_Staff#y_airport1c_12643")
function y_airport_Airport_Staff#y_airport1c_12643()
	dialog "[Airport Staff]"
	dialog "Welcome to Juno Airport where we offer domestic flights to Einbroch, Lighthalzen and Hugel,"
	dialog "and international flights to Izlude and Rachel."
	dialog "How may I be of service?"
	wait()
	local mresulta = menu("Board the Airship.","Cancel.")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "The boarding fee for all"
		dialog "flights is 1,200 zeny. If you"
		dialog "use a Free Ticket for Airship,"
		dialog "the boarding fee will be waived. So would you like to depart?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("y_airport",148,51)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("y_airport",148,51)
					return
				else
					dialog "[Airport Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have 1,200 zeny to pay"
					dialog "for the boarding fee."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "I'm sorry, but you don't"
			dialog "have 1,200 zeny to pay"
			dialog "for the boarding fee."
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "I'm sorry, but you don't"
		dialog "have 1,200 zeny to pay"
		dialog "for the boarding fee."
		close()
	end
end

npc("izlude","Airship Staff#izlude",SPRITE_4_F_01,206,55,3,0,0,"izlude_Airship_Staff#izlude_20655")
function izlude_Airship_Staff#izlude_20655()
	dialog "[Airship Staff]"
	dialog "Welcome! Would you like"
	dialog "to board the Airship tht"
	dialog "departs on the flight wich stops"
	dialog "in Juno and Rachel?"
	wait()
	local mresulta = menu("Board the Airship to Juno/Rachel.","Cancel.")
	if mresulta == 1 then
		dialog "[Airship Staff]"
		dialog "The boarding fee is"
		dialog "1,200 zeny. However, this"
		dialog "charged is waived if you use"
		dialog "a Free Ticket for Airship. Now,"
		dialog "would you still like to board?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("airplane_01",244,58)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
					moveto("airplane_01",244,58)
					return
				else
					dialog "[Airship Staff]"
					dialog "I'm sorry, but you don't"
					dialog "have 1,200 zeny to pay"
					dialog "for the boarding fee."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Airship Staff]"
			dialog "Thank you and"
			dialog "please come again."
			dialog "Have a good day~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airship Staff]"
		dialog "Thank you and"
		dialog "please come again."
		dialog "Have a good day~"
		close()
	end
end

npc("y_airport","Arrival Staff#y_airport2a",SPRITE_4_F_01,143,49,3,0,0,"y_airport_Arrival_Staff#y_airport2a_14349")
function y_airport_Arrival_Staff#y_airport2a_14349()
	dialog "[Airport Staff]"
	dialog "Welcome to Juno Airport. If you've just arrived from your"
	dialog "flight, let me guide you to the main terminal. Otherwise, please"
	dialog "board the departing Airship to reach your intended destination."
	wait()
	local mresulta = menu("Exit to main terminal","Cancel")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "Once you're in the main terminal, you must pay the fee once again"
		dialog "to board a departing Airship. You should only exit if your intended"
		dialog "destination is Juno. Proceed to"
		dialog "exit to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("y_airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("y_airport","Arrival Staff#y_airport2b",SPRITE_4_F_01,126,51,3,0,0,"y_airport_Arrival_Staff#y_airport2b_12651")
function y_airport_Arrival_Staff#y_airport2b_12651()
	dialog "[Airport Staff]"
	dialog "Welcome to Juno Airport. If you've just arrived from your"
	dialog "flight, let me guide you to the main terminal. Otherwise, please"
	dialog "board the departing Airship to reach your intended destination."
	wait()
	local mresulta = menu("Exit to main terminal","Cancel")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "Once you're in the main terminal, you must pay the fee once again"
		dialog "to board a departing Airship. You should only exit if your intended"
		dialog "destination is Juno. Proceed to"
		dialog "exit to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("y_airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("y_airport","Arrival Staff#y_airport2c",SPRITE_4_F_01,158,50,3,0,0,"y_airport_Arrival_Staff#y_airport2c_15850")
function y_airport_Arrival_Staff#y_airport2c_15850()
	dialog "[Airport Staff]"
	dialog "Welcome to Juno Airport. If you've just arrived from your"
	dialog "flight, let me guide you to the main terminal. Otherwise, please"
	dialog "board the departing Airship to reach your intended destination."
	wait()
	local mresulta = menu("Exit to main terminal","Cancel")
	if mresulta == 1 then
		dialog "[Airport Staff]"
		dialog "Once you're in the main terminal, you must pay the fee once again"
		dialog "to board a departing Airship. You should only exit if your intended"
		dialog "destination is Juno. Proceed to"
		dialog "exit to the main terminal?"
		wait()
		local mresultb = menu("Yes","No")
		if mresultb == 1 then
			moveto("y_airport",142,40)
			return
		elseif mresultb == 2 then
			dialog "[Airport Staff]"
			dialog "Alright, thank you"
			dialog "for your patronage"
			dialog "and I hope you have"
			dialog "a pleasant flight~"
			close()
		end
	elseif mresulta == 2 then
		dialog "[Airport Staff]"
		dialog "Alright, thank you"
		dialog "for your patronage"
		dialog "and I hope you have"
		dialog "a pleasant flight~"
		close()
	end
end

npc("y_airport","Domestic Boarding#y_airport2d",SPRITE_4_F_02,145,63,5,0,0,"y_airport_Domestic_Boarding#y_airport2d_14563")
function y_airport_Domestic_Boarding#y_airport2d_14563()
	dialog "[Boarding Staff]"
	dialog "Would you like to board the"
	dialog "Airship that flies to Einbroch,"
	dialog "Lighthalzen and Hugel? If so,"
	dialog "please let me guide you to that"
	dialog "Airship's boarding area."
	wait()
	local mresulta = menu("Yes","No")
	if mresulta == 1 then
		moveto("yuno",59,244)
		return
	elseif mresulta == 2 then
		dialog "[Boarding Staff]"
		dialog "Very well, then."
		dialog "Thank you for your"
		dialog "patronage, and I hope"
		dialog "you enjoy your travels~"
		close()
	end
end

npc("y_airport","International Boarding#y_airport2d",SPRITE_4_F_02,140,63,5,0,0,"y_airport_International_Boarding#y_airport2d_14063")
function y_airport_International_Boarding#y_airport2d_14063()
	dialog "[Boarding Staff]"
	dialog "Would you like to board"
	dialog "the Airship which flies to"
	dialog "Juno, Izlude and Rachel?"
	dialog "If so, let me guide"
	dialog "you to the boarding area."
	wait()
	local mresulta = menu("Yes","No")
	if mresulta == 1 then
		moveto("yuno",47,244)
		return
	elseif mresulta == 2 then
		dialog "[Boarding Staff]"
		dialog "Alright, then."
		dialog "Thank you for flying"
		dialog "with us, and I hope you"
		dialog "enjoy your travels on our"
		dialog "state of the art Airships."
		close()
	end
end

npc("airplane","Exit#airplane1a",SPRITE_4_BOARD3,240,64,5,0,0,"airplane_Exit#airplane1a_24064")
npc("airplane","Exit#airplane1b",SPRITE_4_BOARD3,247,64,5,0,0,"airplane_Exit#airplane1b_24764")
npc("airplane","Exit#airplane2a",SPRITE_4_BOARD3,240,40,1,0,0,"airplane_Exit#airplane2a_24040")
npc("airplane","Exit#airplane2b",SPRITE_4_BOARD3,247,40,1,0,0,"airplane_Exit#airplane2b_24740")

npc("airplane_01","Exit#airplane_011a",SPRITE_4_BOARD3,240,64,5,0,0,"airplane_01_Exit#airplane_011a_24064")
npc("airplane_01","Exit#airplane_011b",SPRITE_4_BOARD3,247,64,5,0,0,"airplane_01_Exit#airplane_011b_24764")
npc("airplane_01","Exit#airplane_012a",SPRITE_4_BOARD3,240,40,1,0,0,"airplane_01_Exit#airplane_012a_24040")
npc("airplane_01","Exit#airplane_012b",SPRITE_4_BOARD3,247,40,1,0,0,"airplane_01_Exit#airplane_012b_24740")

npc("airplane","Broadcast#airplane",SPRITE_HIDDEN_NPC,245,90,4,0,0,"airplane_Broadcast#airplane_24590")
OnInit:()
	disablenpc "airwarp#einbroch1"
	disablenpc "airwarp#einbroch2"
	disablenpc "airwarp#yuno1"
	disablenpc "airwarp#yuno2"
	disablenpc "airwarp#lght1"
	disablenpc "airwarp#lght2"
	disablenpc "airwarp#hugel1"
	disablenpc "airwarp#hugel2"
	InitTimer()
end
OnCommand: "on"
	InitTimer()
end
OnTimer:(20000)
	broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"We are heading to Einbroch.")
end
OnTimer:(50000)
	broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"We will arrive in Einbroch shortly.")
end
OnTimer:(60000)
	enablenpc "airwarp#einbroch1"
	enablenpc "airwarp#einbroch2"
	broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"Welcome to Einbroch. Have a safe trip.")
end
OnTimer:(70000)
	broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"Currently we are in Einbroch. The Airship will take off shortly.")
end
OnTimer:(80000)
	disablenpc "airwarp#einbroch1"
	disablenpc "airwarp#einbroch2"
	broadcastinmap2("70dbdb","FW_NORMAL",12,0,0,"The Airship is now taking off. Our next destination is Lighthalzen.")
end
OnTimer:(100000)
	broadcastinmap2("70dbdb","FW_NORMAL",12,0,0,"We are heading to Lighthalzen.")
end
OnTimer:(130000)
	broadcastinmap2("70dbdb","FW_NORMAL",12,0,0,"We will arrive in Lighthalzen shortly.")
end
OnTimer:(140000)
	enablenpc "airwarp#lght1"
	enablenpc "airwarp#lght2"
	broadcastinmap2("70dbdb","FW_NORMAL",12,0,0,"Welcome to Lighthalzen. Have a safe trip.")
end
OnTimer:(150000)
	broadcastinmap2("70dbdb","FW_NORMAL",12,0,0,"Currently we are in Lighthalzen. The Airship will leave shortly.")
end
OnTimer:(160000)
	disablenpc "airwarp#lght1"
	disablenpc "airwarp#lght2"
	broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"The Airship is leaving the ground. Our next destination is Einbroch.")
end
OnTimer:(180000)
	broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"We are heading to Einbroch..")
end
OnTimer:(210000)
	broadcastinmap2("00FF00","FW_NORMAL",12,0,0,"We will arrive in Einbroch shortly..")
end
OnTimer:(220000)
	enablenpc "airwarp#einbroch1"
	enablenpc "airwarp#einbroch2"
	broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"Welcome to Einbroch. Have a safe trip..")
end
OnTimer:(230000)
broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"Currently we are in Einbroch. The Airship will take off shortly..")
end
OnTimer:(240000)
	disablenpc "airwarp#einbroch1"
	disablenpc "airwarp#einbroch2"
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"The Airship is now taking off. Our next destination is Juno.")
end
OnTimer:(260000)
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"We are heading to Juno.")
end
OnTimer:(290000)
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"We will arrive in Juno shortly.")
end
OnTimer:(300000)
	enablenpc "airwarp#yuno1"
	enablenpc "airwarp#yuno2"
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"Welcome to Juno. Have a safe trip.")
end
OnTimer:(310000)
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"Currently we are in Juno. The Airship will leave shortly.")
end
OnTimer:(320000)
	disablenpc "airwarp#yuno1"
	disablenpc "airwarp#yuno2"
	broadcastinmap2("ca4bf3","FW_NORMAL",12,0,0,"The Airship is leaving the ground. Our next destination is Hugel.")
end
OnTimer:(340000)
	broadcastinmap2("ca4bf3","FW_NORMAL",12,0,0,"We are heading to Hugel.")
end
OnTimer:(370000)
	broadcastinmap2("ca4bf3","FW_NORMAL",12,0,0,"We will arrive in Hugel shortly.")
end
OnTimer:(380000)
	enablenpc "airwarp#hugel1"
	enablenpc "airwarp#hugel2"
	broadcastinmap2("ca4bf3","FW_NORMAL",12,0,0,"Welcome to Hugel. Have a safe trip.")
end
OnTimer:(390000)
	broadcastinmap2("ca4bf3","FW_NORMAL",12,0,0,"Currently we are in Hugel. The Airship will leave shortly.")
end
OnTimer:(400000)
	disablenpc "airwarp#hugel1"
	disablenpc "airwarp#hugel2"
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"The Airship is leaving the ground. Our next destination is Juno.")
end
OnTimer:(420000)
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"We are heading to Juno.")
end
OnTimer:(450000)
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"We will arrive in Juno shortly.")
end
OnTimer:(460000)
	enablenpc "airwarp#yuno1"
	enablenpc "airwarp#yuno2"
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"Welcome to Juno. Have a safe trip.")
end
OnTimer:(470000)
	broadcastinmap2("ff8200","FW_NORMAL",12,0,0,"Currently we are in Juno. The Airship will leave shortly.")
end
OnTimer:(480000)
	disablenpc "airwarp#yuno1"
	disablenpc "airwarp#yuno2"
	broadcastinmap2("00ff00","FW_NORMAL",12,0,0,"The Airship is leaving the ground. Our next destination is Einbroch.")
	cmdothernpc("Broadcast#airplane","on")
end
