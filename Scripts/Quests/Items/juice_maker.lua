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
npc("prt_in","Marianne",SPRITE_1_M_INNKEEPER,49,172,3,0,0,"prt_in_Marianne_49172")
function prt_in_Marianne_49172()
if getvar(morison_meat) == 15 then
	dialog "[Housewife Marianne]"
	dialog "Whew...!"
	dialog "Still, he won't eat anything unless it's Meat. But maybe he will eat fruit if it was cut so that it was easy to eat. Like, if it was blended into juice..."
	wait()
	setitem("mother_marienu",2)
	dialog "[Housewife Marianne]"
	dialog "Ah! Come to think of it, I heard they were making fruit juice somewhere. Now where was it... Payon Village, or Morroc?"
	close()
	return
end

if getvar(mother_marienu) == 1 then
	dialog "[Housewife Marianne]"
	dialog "Morrison!! Eat some fruits!! You don't want to become a slobby fat pig when you grow up, do you?"
	wait()
	local mresulta = menu("Talk","Cancel")
		if mresulta == 1 then
			dialog "[Housewife Marianne]"
			dialog "Hm? ...You!"
			dialog "You're the one who gave, my little Morrison that Meat?! Did you come here thinking I wouldn't know about it?!"
			wait()
			dialog "[Housewife Marianne]"
			dialog "Go away, get out of my house NOW!!"
			close()
		elseif mresulta == 2 then
			dialog "[Housewife Marianne]"
			dialog "Morrison!! I'm going to be very very mad if you keep doing this!"
			close()
	end
	return
end

if getvar(morison_meat) > 0 then
	setitem("mother_marienu",1)
	dialog "[Housewife Marianne]"
	dialog "Oh!!.... This..."
	dialog "what is this...??"
	dialog "How could you do something like this to my boy?!"
	wait()
	dialog "[Housewife Marianne]"
	dialog "Argh! Get out of my house right this instant!"
	close()
	return
end

dialog "[Housewife Marianne]"
dialog "Morrison!! Please eat some fruits!! Please~!"
wait()
dialog "[Housewife Marinaa]"
dialog "Sigh~!! Like father, like son..."
wait()
local mresulta = menu("Talk","Cancel")
	if mresulta == 1 then
		dialog "[Housewife Marianne]"
		dialog "*Sigh*... This is Morrison..."
		dialog "My one and only son."
		wait()
		dialog "[Housewife Marianne]"
		dialog "But these days, he just won't eat fruits. His face is so dull because he refuses to eat healthy. He just wants to eat Meat. I need to find a way to feed him fruits or vegetables...."
		close()
	elseif mresulta == 2 then
		dialog "[Housewife Marianne]"
		dialog "Morrison!! You're going to be in big trouble if you keep this up!"
		close()
end
end

npc("prt_in","Morrison",SPRITE_4W_M_01,47,173,3,0,0,"prt_in_Morrison_47173")
function prt_in_Morrison_47173()
if getvar(morison_meat) == 15 then
	dialog "[Little Morrison]"
	dialog "Bleh... Forget it."
	dialog "I'm just going to shrivel to death just eating fruits. Don't bother worrying about me ."
	close()
	return
end

if getvar(morison_meat) > 9 then
	dialog "[Little Morrison]"
	dialog "Ah... so full~"
	dialog "I think I can live now."
	dialog "You don't have to give me any more Meat. I feel like I'm going to explode if I eat any more."
	if getvar(morison_meat) == 10 then
		wait()
		getitem("morison_meat",1)
		dialog "[Little Morrison]"
		dialog "Oh... and... um."
		dialog "Take this."
		wait()
		dialog "[Little Morrison]"
		dialog "It's a little something I've been saving to eat for later, but since you gave me Meat, I think I can pass on the sweets."
		close()
		getitem("Candy",3)
		getitem("Candy_Striper",1)
	end
	close()
	return
end

dialog "[Little Morrison]"
dialog "Agh....Noooo!!!"
dialog "No, don't make me eat it! I can't bear to taste fruits!"
wait()
if getvar(Meat) > 0 then
	local mresulta = menu("Talk","Show the Meat","Cancel")
		if mresulta == 1 then
			dialog "[Little Morrison]"
			dialog "Aaaagh!! Once or twice is enough!! I refuse to eat any more fruits! You have to peel them and there's so much juice that it makes you feel icky..."
			wait()
			dialog "[Little Morrison]"
			dialog "And they're all slippery and sour... Even if I eat it, I still feel hungry. Aaaah~! Give me Meat!"
			close()
		elseif mresulta == 2 then
			dialog "[Little Morrison]"
			dialog "Ooh! M-Meaaat~"
			dialog "Ah... hu...hungry..."
			dialog "The scent of Meat..."
			dialog "Excuse me..."
			dialog "C-can I please have one?"
			wait()
			local mresultb = menu("Give Meat","Don't Give Meat")
				if mresultb == 1 then
					dropitem("Meat",1)
					getitem("morison_meat",1)
					dialog "[Little Morrison]"
					dialog "Wow~!!! Meat!!"
					dialog "So yummy!"
					dialog "Thank you,"
					dialog "I think I can"
					dialog "live now."
					dialog "*Chew chew*"
					close()
				elseif mresultb == 2 then
					setitem("morison_meat",15)
					dialog "[Little Morrison]"
					dialog "Waah...!"
					dialog "Fine, I get it now."
					dialog "Adults are all the same!"
					close()
			end
		elseif mresulta == 3 then
			dialog "[Little Morrison]"
			dialog "Aaaaah!!! No matter what, I'm not going to eat fruits and vegetables!"
			close()
	end
	return
end

local mresulta = menu("Talk","Cancel")
	if mresulta == 1 then
		dialog "[Little Morrison]"
		dialog "Aaah!! I can't eat any more fruits!"
		wait()
		dialog "[Little Morrison]"
		dialog "I refuse to eat any more fruits! You have to peel them and there's so much juice that it makes you feel icky..."
		wait()
		dialog "[Little Morrison]"
		dialog "And they're all slippery and sour... Even if I eat it, I still feel hungry."
		dialog "Aaaah~!"
		dialog "Give me Meat!"
		close()
	elseif mresulta == 2 then
		dialog "[Little Morrison]"
		dialog "Aaaaah!!! No matter what, I'm not going to eat fruits and vegetables!"
		close()
end
end

npc("payon_in03","Marx Hansen",SPRITE_4_M_04,188,146,5,0,0,"payon_in03_Marx_Hansen_188146")
function payon_in03_Marx_Hansen_188146()
-- Check if the user carries 100 items.
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
-- end check
if getvar(mother_marienu) == 2 then
	dialog "[Merchant Marx Hansen]"
	dialog "Welcome."
	dialog "Did you come to"
	dialog "process fruits as well?"
	wait()
	local mresulta = menu("Make Juice.","Talk and get information about fruit processing.","Cancel.")
		if mresulta == 1 then
			local juice
			local fruit
			local bottle = getvar(Empty_Bottle)
			local money = getvar(VAR_MONEY)
			local fruit_send
			local bottle_send

			local money_send
			local gap
			local total_gap

			dialog "[Merchant Marx Hansen]"
			dialog "What kind of fruit juice would you like to make?"
			wait()
			local mresultb = menu("Apple Juice","Banana Juice","Carrot Juice","Grape Juice","Cancel")
				if mresultb == 1 then
					juice("=",1)
					fruit("=","v[Apple]")
					if (((getvar(Apple) == 0) or (getvar(Empty_Bottle) == 0)) or (getvar(VAR_MONEY) < 3)) then
						dialog "[Merchant Marx Hansen]"
						dialog "Oh no..."
						dialog "You don't have all the necessary materials. To make Apple Juice, I need 1 Apple and an Empty Bottle. I also need a 3 zeny fee."
						wait()
						dialog "[Merchant Marx Hansen]"
						dialog "When you have prepared everything, I will blend the fruit to give you delicious juice."
						close()
						return
					end
				elseif mresultb == 2 then
					juice("=",2)
					fruit("=","v[Banana]")
					if (((getvar(Banana) == 0) or (getvar(Empty_Bottle) == 0)) or (getvar(VAR_MONEY) < 3)) then
						dialog "[Merchant Marx Hansen]"
						dialog "Oh no..."
						dialog "You don't have all the necessary materials. To make Banana Juice, 1 Banana and 1 Empty Bottle. I will also need a 3 zeny fee."
						wait()
						dialog "[Merchant Marx Hansen]"
						dialog "When you have prepared everything, I will blend the fruit to give you delicious juice."
						close()
						return
					end
				elseif mresultb == 3 then
					juice("=",3)
					fruit("=","v[Carrot]")
					if (((getvar(Carrot) == 0) or (getvar(Empty_Bottle) == 0)) or (getvar(VAR_MONEY) < 3)) then
						dialog "[Merchant Marx Hansen]"
						dialog "Oh no..."
						dialog "You don't have all the necessary materials. To make Carrot Juice, I need 1 Carrot and 1 Empty Bottle. I will also need a 3 zeny fee."
						wait()
						dialog "[Merchant Marx Hansen]"
						dialog "When you have prepared everything, I will blend the fruit to give you delicious juice."
						close()
						return
					end
				elseif mresultb == 4 then
					juice("=",4)
					fruit("=","v[Grape]")
					if (((getvar(Grape) == 0) or (getvar(Empty_Bottle) == 0)) or (getvar(VAR_MONEY) < 3)) then
						dialog "[Merchant Marx Hansen]"
						dialog "Oh no..."
						dialog "You don't have all the necessary materials. To make Grape Juice, I need 1 Grape and 1 Empty Bottle. I will also need a 3 zeny fee."
						wait()
						dialog "[Merchant Marx Hansen]"
						dialog "When you have prepared everything, I will blend the fruit to give you delicious juice."
						close()
						return
					end
				elseif mresultb == 5 then
					dialog "[Merchant Marx Hansen]"
					dialog "Well then..."
					dialog "See you next time."
					close()
					return
			end
			while(1) do
				if ((fruit == 0) or (bottle == 0) or (money < 3)) then
					break
				else
					gap("=","gap","+",1)
					fruit("=","fruit","-",1)
					fruit_send("=","fruit_send","+",1)
					bottle("=","bottle","-",1)
					bottle_send("=","bottle_send","+",1)
					money("=","money","-",3)
					money_send("=","money_send","+",3)
				end
			end

			dialog "[Merchant Marx Hansen]"
			dialog "How many would you like?"
			wait()
			local mresultb = menu("As many as I can.","I want a certain amount.","Cancel.")
				if mresultb == 1 then
					total_gap("=","gap")
				elseif mresultb == 2 then
					dialog "[Merchant Marx Hansen]"
					dialog("Choose a number less than 100. If you don't want to, put '0'. You can make up to ","+","gap","+"," bottles of juice.")
					wait()
					while(1) do
						dlgwrite(1,100)
						if input == 0 then
							dialog "[Merchant Marx Hansen]"
							dialog "Well then..."
							dialog "Come again."
							close()
							return
						elseif error then
							dialog "[Merchant Marx Hansen]"
							dialog "More than 100 bottles is impossible. Choose a different amount."
							wait()
						else
							break
						end
					end

					fruit_send("=","input")
					bottle_send("=","input")
					money_send("=","input","*",3)
					total_gap("=","input")
				elseif mresultb == 3 then
					dialog "[Merchant Marx Hansen]"
					dialog "Well then..."
					dialog "Come again."
					close()
					return
			end

			if juice == 1 then
				fruit("=","v[Apple]")
			elseif juice == 2 then
				fruit("=","v[Banana]")
			elseif juice == 3 then
				fruit("=","v[Carrot]")
			else
				fruit("=","v[Grape]")
			end

			bottle("=","v[Empty_Bottle]")
			money("=","v[VAR_MONEY]")

			if ((fruit < fruit_send) or (bottle < bottle_send) or (money < money_send)) then
				dialog "[Merchant Marx Hansen]"
				dialog "Oh no..."
				dialog "You don't have all the necessary materials. I can't help a situation like this. I guess you collect what you need."
				close()
				return
			end

			if juice == 1 then
				dropitem("Apple","fruit_send")
				dropitem("Empty_Bottle","bottle_send")
				dropgold = money_send
				getitem("Apple_Juice","total_gap")
			elseif juice == 2 then
				dropitem("Banana","fruit_send")
				dropitem("Empty_Bottle","bottle_send")
				dropgold = money_send
				getitem("Banana_Juice","total_gap")
			elseif juice == 3 then
				dropitem("Carrot","fruit_send")
				dropitem("Empty_Bottle","bottle_send")
				dropgold = money_send
				getitem("Carrot_Juice","total_gap")
			else
				dropitem("Grape","fruit_send")
				dropitem("Empty_Bottle","bottle_send")
				dropgold = money_send
				getitem("Grape_Juice","total_gap")
			end

			dialog "[Merchant Marx Hansen]"
			dialog "Here you go! Fresh and delicious juice as promised. It should be very refreshing and palatable."
			wait()
			dialog "[Merchant Marx Hansen]"
			dialog "Well then..."
			dialog "Come again."
			close()
		elseif mresulta == 2 then
			dialog "[Merchant Marx Hansen]"
			dialog "Before humans were able to develop such vast societies, they gathered fruit from trees to survive. Fruits may have been nature's blessing that allowed us to exist in the world."
			wait()
			dialog "[Merchant Marx Hansen]"
			dialog "Since life became so prosperous, the younger generation seems not to eat fruit any more. So, I started thinking of ways to make fruit easier to eat."
			wait()
			dialog "[Merchant Marx Hansen]"
			dialog "I realized that when you make fruit juice, it's more convenient to eat and has a much better taste."
wait()
			dialog "# Fruit Juice Information #"
			dialog "^CC4E5C- Apple Juice -^000000"
			dialog "Apple x 1 ea, Empty Bottle x 1 ea, 3 zeny."
			dialog ""
			dialog "^E3CF57- Banana Juice -^000000"
			dialog "Banana x 1 ea, Empty Bottle x 1 ea, 3 zeny."
			dialog ""
			dialog "^ED9121- Carrot Juice -^000000"
			dialog "Carrot x 1 ea, Empty Bottle x 1 ea, 3 zeny."
			dialog ""
			dialog "^CC00FF- Grape Juice -^000000"
			dialog "Grape x 1 ea, Empty Bottle x 1 ea, 3 zeny."
			close()
		elseif mresulta == 3 then
			dialog "[Merchant Marx Hansen]"
			dialog "Hey!"
			dialog "If you visit"
			dialog "somebody, talk to them!"
			close()
	end
else

dialog "[Merchant Marx Hansen]"
dialog "Welcome."
dialog "How may I help you?"
wait()
local mresulta = menu("Talk","Cancel")
	if mresulta == 1 then
		dialog "[Merchant Marx Hansen]"
		dialog "Before humans were able to develop such vast societies, they gathered fruit from trees to survive. Fruits may have been nature's blessing that allowed us to exist in the world."
		wait()
		dialog "[Merchant Marx Hansen]"
		dialog "Since life became so prosperous, the younger generation seems not to eat fruit any more. So, I started thinking of ways to make fruit easier to eat."
		wait()
		dialog "[Merchant Marx Hansen]"
		dialog "I realized that when you make fruit juice, it's more convenient to eat and has a much better taste."
		close()
	elseif mresulta == 2 then
		dialog "[Merchant Marx Hansen]"
		dialog "Hey!"
		dialog "If you vist"
		dialog "somebody, talk to them!"
		close()
end
end
end
