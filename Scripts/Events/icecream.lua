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

npc("morocc","Ice Cream Maker",SPRITE_4_M_03,160,143,4,0,0,"morocc_Ice_Cream_Maker_160143")
function morocc_Ice_Cream_Maker_160143()
	dialog "[Ice Cream Maker]"
	dialog "Fresh Ice Cream made with snow from Lutie!"
	dialog "Enjoy it now, it won't be on sale for long!"
	dialog "^3355FF100 Zeny^000000 Ice Cream,"
	dialog "Ice Cream!"
	wait()
	local mresulta = menu("Gimme Ice Cream!","Cancel Trade")
	if mresulta == 1 then
		local icecream_hap
		local icecream_weight
		local weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
		dialog "[Ice Cream Maker]"
		dialog "Fresh Ice Cream made with snow from Lutie!"
		dialog "Everyone wants our delicious ice cream, "
		dialog "but we have a limited amount,"
		dialog "so you can only purchase 5 at a time!!"
		wait()
		while(1) do
			dlgwrite(1,5)
			if input == 0 then
				dialog "[Ice Cream Maker]"
				dialog "If you don't want to buy any,"
				dialog "could you please let the next customer"
				dialog "make a purchase?"
				dialog "Thank you."
				close()
				return
			elseif error then
				dialog "[Ice Cream Maker]"
				dialog "Ouch"
				dialog "You expect too much."
				dialog "Dear customer,"
				dialog "If you eat more than 5 Ice creams,"
				dialog "If you might haveto make a lot of trips"
				dialog "to the bathroom tonight."
				wait()
			else
				break
			end
		end
		icecream_hap("=","input","*",100)
		if getvar(VAR_MONEY) < icecream_hap then
			dialog "[Ice Cream Maker]"
			dialog "Dear customer, your wallet seems to be light."
			dialog "Price is ^3355FF100 Zeny^000000 per ice cream."
			close()
			return
		end
		icecream_weight("=","input","*",10)
		if weight < icecream_weight then
			dialog "[Ice Cream Maker]"
			dialog "Dear customer,you look like you're carrying a lot."
			dialog "Ice Cream is fine,"
			dialog "but you must consider your weight"
			dialog "before making a purchase."
			close()
			return
		end
		dropgold = icecream_hap
		getitem("Ice_Cream","input")
	elseif mresulta == 2 then
		dialog "[Ice Cream Maker]"
		dialog "Are you sure you don't want any?"
		dialog "I won't be selling it for long,"
		dialog "and once I run out,"
		dialog "there won't be any more!!!"
		close()
	end
end

npc("moc_fild16","Ice Cream Maker",SPRITE_4_M_03,88,304,4,0,0,"moc_fild16_Ice_Cream_Maker_88304")
function moc_fild16_Ice_Cream_Maker_88304()
	dialog "[Ice Cream Maker]"
	dialog "Fresh Ice Cream made with snow from Lutie!"
	dialog "Enjoy it now, it won't be on sale for long!"
	dialog "^3355FF100 Zeny^000000 Ice Cream,"
	dialog "Ice Cream!"
	wait()
	local mresulta = menu("Gimme Ice Cream!","Cancel Trade")
	if mresulta == 1 then
		local icecream_hap
		local icecream_weight
		local weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
		dialog "[Ice Cream Maker]"
		dialog "Fresh Ice Cream made with snow from Lutie!"
		dialog "Everyone wants our delicious ice cream, "
		dialog "but we have a limited amount,"
		dialog "so you can only purchase 5 at a time!!"
		wait()
		while(1) do
			dlgwrite(1,5)
			if input == 0 then
				dialog "[Ice Cream Maker]"
				dialog "If you don't want to buy any,"
				dialog "could you please let the next customer"
				dialog "make a purchase?"
				dialog "Thank you."
				close()
				return
			elseif error then
				dialog "[Ice Cream Maker]"
				dialog "Ouch"
				dialog "You expect too much."
				dialog "Dear customer,"
				dialog "If you eat more than 5 Ice creams,"
				dialog "If you might haveto make a lot of trips"
				dialog "to the bathroom tonight."
				wait()
			else
				break
			end
		end
		icecream_hap("=","input","*",100)
		if getvar(VAR_MONEY) < icecream_hap then
			dialog "[Ice Cream Maker]"
			dialog "Dear customer, your wallet seems to be light."
			dialog "Price is ^3355FF100 Zeny^000000 per ice cream."
			close()
			return
		end
		icecream_weight("=","input","*",10)
		if weight < icecream_weight then
			dialog "[Ice Cream Maker]"
			dialog "Dear customer,you look like you're carrying a lot."
			dialog "Ice Cream is fine,"
			dialog "but you must consider your weight"
			dialog "before making a purchase."
			close()
			return
		end
		dropgold = icecream_hap
		getitem("Ice_Cream","input")
	elseif mresulta == 2 then
		dialog "[Ice Cream Maker]"
		dialog "Are you sure you don't want any?"
		dialog "I won't be selling it for long,"
		dialog "and once I run out,"
		dialog "there won't be any more!!!"
		close()
	end
end

npc("alberta","Ice Cream Maker",SPRITE_4_M_03,120,53,4,0,0,"alberta_Ice_Cream_Maker_12053")
function alberta_Ice_Cream_Maker_12053()
	dialog "[Ice Cream Maker]"
	dialog "Fresh Ice Cream made with snow from Lutie!"
	dialog "Enjoy it now, it won't be on sale for long!"
	dialog "^3355FF100 Zeny^000000 Ice Cream,"
	dialog "Ice Cream!"
	wait()
	local mresulta = menu("Gimme Ice Cream!","Cancel Trade")
	if mresulta == 1 then
		local icecream_hap
		local icecream_weight
		local weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
		dialog "[Ice Cream Maker]"
		dialog "Fresh Ice Cream made with snow from Lutie!"
		dialog "Everyone wants our delicious ice cream, "
		dialog "but we have a limited amount,"
		dialog "so you can only purchase 5 at a time!!"
		wait()
		while(1) do
			dlgwrite(1,5)
			if input == 0 then
				dialog "[Ice Cream Maker]"
				dialog "If you don't want to buy any,"
				dialog "could you please let the next customer"
				dialog "make a purchase?"
				dialog "Thank you."
				close()
				return
			elseif error then
				dialog "[Ice Cream Maker]"
				dialog "Ouch"
				dialog "You expect too much."
				dialog "Dear customer,"
				dialog "If you eat more than 5 Ice creams,"
				dialog "If you might haveto make a lot of trips"
				dialog "to the bathroom tonight."
				wait()
			else
				break
			end
		end
		icecream_hap("=","input","*",100)
		if getvar(VAR_MONEY) < icecream_hap then
			dialog "[Ice Cream Maker]"
			dialog "Dear customer, your wallet seems to be light."
			dialog "Price is ^3355FF100 Zeny^000000 per ice cream."
			close()
			return
		end
		icecream_weight("=","input","*",10)
		if weight < icecream_weight then
			dialog "[Ice Cream Maker]"
			dialog "Dear customer,you look like you're carrying a lot."
			dialog "Ice Cream is fine,"
			dialog "but you must consider your weight"
			dialog "before making a purchase."
			close()
			return
		end
		dropgold = icecream_hap
		getitem("Ice_Cream","input")
	elseif mresulta == 2 then
		dialog "[Ice Cream Maker]"
		dialog "Are you sure you don't want any?"
		dialog "I won't be selling it for long,"
		dialog "and once I run out,"
		dialog "there won't be any more!!!"
		close()
	end
end
