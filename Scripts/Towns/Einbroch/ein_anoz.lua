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

npc("einbroch","Uwe Kleine",spr_4_M_03,215,180,6,0,0,"einbroch_Uwe_Kleine_215180")
OnCommand: "on"
	enablenpc "Uwe Kleine"
end
OnCommand: "off"
	disablenpc "Uwe Kleine"
end
function einbroch_Uwe_Kleine_215180()
	if ((getvar(VAR_JOB) == BLACKSMITH) or (getvar(VAR_JOB) == BLACKSMITH_H)) then
		if getvar(ein_cook) > 999 then
			local ccc = getvar(ein_cook) - 1000
			if ccc > 199 then
				dialog "[Uwe]"
				dialog "Oh hello hello~"
				dialog "It's been a long"
				dialog "time since we've talked,"
				dialog "you cutie adventurer~"
				wait()
				local mresulta = menu("So... You're a chef.","Yes, I tried my best.")
				if mresulta == 1 then
					local name = PcName()
					dialog("[","+","name","+"]"")
					dialog "So..."
					dialog "You're a chef."
					wait()
					dialog "[Uwe]"
					dialog "That's right, it's"
					dialog "what I do for business."
					dialog "Now, as for what I do for"
					dialog "^EEA9B8pleasure^000000, well, please don't"
					dialog "hesitate to ask, sugar honey~ "
					wait()
				elseif mresulta == 2 then
					dialog "[Uwe]"
					dialog "Only continuous effort will lead you to success. I guess that means you've learned your lesson, sugar honey~"
					wait()
				end
				local maz = CheckMaxCount 1201 1
				if maz == 1 then
					dialog "[Uwe]"
					dialog "Oh, I was going to give"
					dialog "you a little something,"
					dialog "but you've carrying too"
					dialog "many things. Why don't"
					dialog "you put some of it away"
					dialog "in your Kafra Storage?"
					close()
					return
				end
				local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
				if mmm < 2000 then
					dialog "[Uwe]"
					dialog "Oh, I was going to give"
					dialog "you a little something,"
					dialog "but you've carrying too"
					dialog "many things. Why don't"
					dialog "you put some of it away"
					dialog "in your Kafra Storage?"
					close()
					return
				end
				setitem("ein_cook",219)
				getitem("Portable_Furnace",10)
				dialog "[Uwe]"
				dialog "I had these lying"
				dialog "around, so why don't"
				dialog "you take them, sugar"
				dialog "honey? They're not very"
				dialog "pricey, but they're useful"
				dialog "in doing some smithing."
				wait()
				dialog "[Uwe]"
				dialog "Alright then~"
				dialog "Hope you enjoy"
				dialog "your Mini Furances"
				local bbb = math.random(1 3
				if bbb == 1 then
					dialog "...Buh-Bye~!"
				elseif bbb == 2 then
					dialog "*Tee Hee~*"
				else
					dialog "...Behbie~"
				end
				close()
				return
			elseif ccc > 99 then
				dialog "[Uwe]"
				dialog "Oh hello hello~"
				dialog "It's been a long"
				dialog "time since we've talked,"
				dialog "you cutie adventurer~"
				wait()
				dialog "[Uwe]"
				dialog "So, sugar honey,"
				dialog "how is it going with"
				dialog "the little favor I asked"
				dialog "you about last time?"
				dialog "Did you already forget"
				dialog "the 6 Large Jellopy?"
				wait()
				local mresulta = menu("There you go.","I want to quit.","Can I do it later?")
				if mresulta == 1 then
					if (getvar(Large_Jellopy) > 5) then
						local maz = CheckMaxCount 1201 1
						if maz == 1 then
							dialog "[Uwe]"
							dialog "Oh, I was going to give"
							dialog "you a little something,"
							dialog "but you've carrying too"
							dialog "many things. Why don't"
							dialog "you put some of it away"
							dialog "in your Kafra Storage?"
							close()
							return
						end
						local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
						if mmm < 1990 then
							dialog "[Uwe]"
							dialog "Oh, I was going to give"
							dialog "you a little something,"
							dialog "but you've carrying too"
							dialog "many things. Why don't"
							dialog "you put some of it away"
							dialog "in your Kafra Storage?"
							close()
							return
						end
						dialog "[Uwe]"
						dialog "Thank you ^EEA9B8so^000000 much!"
						dialog "Here's the Coal I promised~"
						dialog "Oh, and take these Mini Furnaces. They were just lying around, so you know, I thought, well, why don't you take them? *Tee hee hee~*"
						dropitem("Large_Jellopy",6)
						setitem("ein_cook",219)
						getitem("Coal",1)
						getitem("Portable_Furnace",10)
						wait()
						dialog "[Uwe]"
						dialog "I hope you enjoy!"
						dialog "Personally, I think the"
						dialog "best part of smithing"
						dialog "is standing over the flaming"
						dialog "heat and getting all ^EEA9B8hot and"
						dialog "sweaty^000000. Ooh, how exciting~!"
						close()
						return
					elseif (getvar(Large_Jellopy) > 0) then
						dialog "[Uwe]"
						dialog "Ooh, you're missing"
						dialog "some. I guess you can"
						dialog "still give them to me, but"
						dialog "you'd get less of a reward"
						if getvar(VAR_SEX) == 1 then
							dialog "...you ^EEA9B8naughty boy^000000."
						else
							dialog "...you ^EEA9B8naughty girl^000000."
						end
						local mresultb = menu("Give him all.","Cancel.")
						if mresultb == 1 then
							local maz = CheckMaxCount 1201 1
							if maz == 1 then
								dialog "[Uwe]"
								dialog "Oh, I was going to give"
								dialog "you a little something,"
								dialog "but you've carrying too"
								dialog "many things. Why don't"
								dialog "you put some of it away"
								dialog "in your Kafra Storage?"
								close()
								return
							end
							dialog "[Uwe]"
							dialog "Just kidding~"
							dialog "Don't be so nervous, I don't really need those anymore. But since I know you're hard working, I'll throw in a little something extra..."
							wait()
							local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
							if mmm < 2200 then
								dialog "[Uwe]"
								dialog "Oh, I was going to give"
								dialog "you a little something,"
								dialog "but you've carrying too"
								dialog "many things. Why don't"
								dialog "you put some of it away"
								dialog "in your Kafra Storage?"
								close()
								return
							end
							dialog "[Uwe]"
							if (getvar(VAR_JOB) == BLACKSMITH_H) then
								dialog "I usually give you cutie MasterSmiths 10 Mini Furnaces, but you can have ^EEA9B811^000000. There's the little something extra I was talking about."
							else
								dialog "I usually give you cutie Blacksmiths 10 Mini Furnaces, but you can have ^EEA9B811^000000. There's the little something extra I was talking about."
							end
							setitem("ein_cook",219)
							getitem("Portable_Furnace",11)
							wait()
							dialog "[Uwe]"
							dialog "I know it's not very extravagant, but these will come in handy next time you're smithing. So make the best use of them, 'kay?"
							close()
							return
						elseif mresultb == 2 then
							local maz = CheckMaxCount 1201 1
							if maz == 1 then
								dialog "[Uwe]"
								dialog "Oh, I was going to give"
								dialog "you a little something,"
								dialog "but you've carrying too"
								dialog "many things. Why don't"
								dialog "you put some of it away"
								dialog "in your Kafra Storage?"
								close()
								return
							end
							dialog "[Uwe]"
							dialog "Well... Then... Anyway,"
							dialog "Congratulation to became"
							if (getvar(VAR_JOB) == BLACKSMITH_H) then
								dialog "a Master Smith!!"
							else
								dialog "a Black Smith!!"
							end
							dialog "This is my present for it."
							if getvar(VAR_SEX) == 1 then
								dialog "...you ^EEA9B8naughty boy^000000."
							else
								dialog "...you ^EEA9B8naughty girl^000000."
							end
						end
						local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
						if mmm < 1000 then
							wait()
							dialog "Oh, I was going to give"
							dialog "you a little something,"
							dialog "but you've carrying too"
							dialog "many things. Why don't"
							dialog "you put some of it away"
							dialog "in your Kafra Storage?"
							close()
							return
						end
						setitem("ein_cook",219)
						getitem("Portable_Furnace",5)
						wait()
						dialog "[Uwe]"
						dialog "I know it's not very extravagant, but these will come in handy next time you're smithing. So make the best use of them, 'kay?"
						close()
						return
					else
						dialog "[Uwe]"
						dialog "^666666You didn't bring"
						dialog "any Large Jellopy...?^000000."
						setitem("ein_cook",219)
						wait()
						dialog "[Uwe]"
						dialog "It's fine! It's not like I feel ^EEA9B8betrayed^000000 or anything, but I don't need them anymore! Since we're both in the business of smithing, I just hope that you remember to follow through on your favors, 'kay? Buhbye~"
						close()
						return
					end
				elseif mresulta == 2 then
					local maz = CheckMaxCount 1201 1
					if maz == 1 then
						dialog "[Uwe]"
						dialog "Oh, I was going to give"
						dialog "you a little something,"
						dialog "but you've carrying too"
						dialog "many things. Why don't"
						dialog "you put some of it away"
						dialog "in your Kafra Storage?"
						close()
						return
					end
					local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
					if mmm < 2000 then
						dialog "[Uwe]"
						dialog "Oh, I was going to give"
						dialog "you a little something,"
						dialog "but you've carrying too"
						dialog "many things. Why don't"
						dialog "you put some of it away"
						dialog "in your Kafra Storage?"
						close()
						return
					end
					dialog "[Uwe]"
					dialog "Quit...?"
					dialog "Oh well, at least you're honest. But let me give you a little something, since we're both fellow smiths."
					wait()
					dialog "[Uwe]"
					dialog "Still..."
					dialog "That doesn't change"
					dialog "the fact that you've"
					dialog "been very, very bad."
					if getvar(VAR_SEX) == 1 then
						dialog "...You ^EEA9B8naughty boy^000000."
					else
						dialog "...You ^EEA9B8naughty girl^000000."
					end
					setitem("ein_cook",219)
					getitem("Portable_Furnace",10)
					wait()
					dialog "[Uwe]"
					dialog "I know it's not very extravagant, but these will come in handy next time you're smithing. So make the best use of them, 'kay?"
					close()
					return
				elseif mresulta == 3 then
					dialog "[Uwe]"
					dialog "Oooh, you came back later than I thought, so I don't need really need them anymore. Then again, just holding onto them doesn't sound right either..."
					wait()
					local mresultb = menu("Here you go~","I want to quit.")
					if mresultb == 1 then
						local maz = CheckMaxCount 1201 1
						if maz == 1 then
							dialog "[Uwe]"
							dialog "Oh, I was going to give"
							dialog "you a little something,"
							dialog "but you've carrying too"
							dialog "many things. Why don't"
							dialog "you put some of it away"
							dialog "in your Kafra Storage?"
							close()
							return
						end
						local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
						if mmm < 1990 then
							dialog "[Uwe]"
							dialog "Oh, I was going to give"
							dialog "you a little something,"
							dialog "but you've carrying too"
							dialog "many things. Why don't"
							dialog "you put some of it away"
							dialog "in your Kafra Storage?"
							close()
							return
						end
						if (getvar(Large_Jellopy) > 5) then
							dialog "[Uwe]"
							dialog "Thank you ^EEA9B8so^000000 much!"
							dialog "Here's the Coal I promised~"
							dialog "Oh, and take these Mini Furnaces. They were just lying around, so you know, I thought, well, why don't you take them? *Tee hee hee~*"
							dropitem("Large_Jellopy",6)
							setitem("ein_cook",219)
							getitem("Coal",1)
							getitem("Portable_Furnace",10)
						elseif (getvar(Large_Jellopy) > 0) then
							dialog "[Uwe]"
							dialog "Ooh, you're missing"
							dialog "some. I guess you can"
							dialog "still give them to me, but"
							dialog "you'd get less of a reward"
							if getvar(VAR_SEX) == 1 then
								dialog "...You ^EEA9B8naughty boy^000000."
							else
								dialog "...You ^EEA9B8naughty girl^000000."
							end
							local mresultc = menu("Give them all.","Cancel.")
								if mresultc == 1 then
									local maz = CheckMaxCount 1201 1
									if maz == 1 then
										dialog "[Uwe]"
										dialog "Oh, I was going to give"
										dialog "you a little something,"
										dialog "but you've carrying too"
										dialog "many things. Why don't"
										dialog "you put some of it away"
										dialog "in your Kafra Storage?"
										close()
										return
									end
									local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
									if mmm < 2200 then
										dialog "[Uwe]"
										dialog "Oh, I was going to give"
										dialog "you a little something,"
										dialog "but you've carrying too"
										dialog "many things. Why don't"
										dialog "you put some of it away"
										dialog "in your Kafra Storage?"
										close()
										return
									end
									dialog "[Uwe]"
									dialog "Just kidding~"
									dialog "Don't be so nervous, I don't really need those anymore. But since I know you're hard working, I'll throw in a little something extra..."
									wait()
									dialog "[Uwe]"
									if (getvar(VAR_JOB) == BLACKSMITH_H) then
										dialog "I usually give you cutie MasterSmiths 10 Mini Furnaces, but you can have ^EEA9B811^000000. There's the little something extra I was talking about."
									else
										dialog "I usually give you cutie Blacksmiths 10 Mini Furnaces, but you can have ^EEA9B811^000000. There's the little something extra I was talking about."
									end
									setitem("ein_cook",219)
									getitem("Portable_Furnace",11)
									wait()
									dialog "[Uwe]"
									dialog "I know it's not very extravagant, but these will come in handy next time you're smithing. So make the best use of them, 'kay?"
									close()
									return
								elseif mresultc == 2 then
									local maz = CheckMaxCount 1201 1
									if maz == 1 then
										dialog "[Uwe]"
										dialog "Oh, I was going to give"
										dialog "you a little something,"
										dialog "but you've carrying too"
										dialog "many things. Why don't"
										dialog "you put some of it away"
										dialog "in your Kafra Storage?"
										close()
										return
									end
									local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
									if mmm < 2000 then
										dialog "[Uwe]"
										dialog "Oh, I was going to give"
										dialog "you a little something,"
										dialog "but you've carrying too"
										dialog "many things. Why don't"
										dialog "you put some of it away"
										dialog "in your Kafra Storage?"
										close()
										return
									end
									dialog "[Uwe]"
									dialog "Okay."
									dialog "Anyway~!"
									dialog "When you do get all"
									dialog "that Large Jellopy,"
									dialog "just come back to me."
									if getvar(VAR_SEX) == 1 then
										dialog "...you ^EEA9B8naughty boy^000000."
									else
										dialog "...you ^EEA9B8naughty girl^000000."
									end
									setitem("ein_cook",219)
									getitem("Portable_Furnace",10)
									wait()
									dialog "[Uwe]"
									dialog "This Portable Furnace is not expensive"
									dialog "but very important item for smiths, right?"
									dialog "Use it!"
									dialog "And visit me someday again. Huhuhu.."
									close()
									return
							end
						else
							dialog "[Uwe]"
							dialog "^666666You didn't bring"
							dialog "any Large Jellopy...?^000000."
							setitem("ein_cook",219)
							wait()
							dialog "[Uwe]"
							dialog "It's fine! It's not like I feel ^EEA9B8betrayed^000000 or anything, but I don't need them anymore! Since we're both in the business of smithing, I just hope that you remember to follow through on your favors, 'kay? Buhbye~"
							close()
							return
						end
					elseif mresultb == 2 then
						local maz = CheckMaxCount 1201 1
						if maz == 1 then
							dialog "[Uwe]"
							dialog "Oh, I was going to give"
							dialog "you a little something,"
							dialog "but you've carrying too"
							dialog "many things. Why don't"
							dialog "you put some of it away"
							dialog "in your Kafra Storage?"
							close()
							return
						end
						local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
						if mmm < 2000 then
							dialog "[Uwe]"
							dialog "Oh, I was going to give"
							dialog "you a little something,"
							dialog "but you've carrying too"
							dialog "many things. Why don't"
							dialog "you put some of it away"
							dialog "in your Kafra Storage?"
							close()
							return
						end
						dialog "[Uwe]"
						dialog "Well... Then... Anyway,"
						dialog "Congratulation to became"
						if (getvar(VAR_JOB) == BLACKSMITH_H) then
							dialog "a Master Smith!!"
							dialog "This is my present for it. Huhuhu."
						else
							dialog "a Black Smith!!"
							dialog "This is my present for it. Huhuhu."
							if getvar(VAR_SEX) == 1 then
								dialog "...You ^EEA9B8naughty boy^000000."
							else
								dialog "...You ^EEA9B8naughty girl^000000."
							end
						end
						setitem("ein_cook",219)
						getitem("Portable_Furnace",10)
						wait()
						dialog "[Uwe]"
						dialog "I know it's not very extravagant, but these will come in handy next time you're smithing. So make the best use of them, 'kay?"
						close()
						return
					end
				end
			end
		end
		if getvar(ein_cook) == 0 then
			dialog "[Uwe]"
			dialog "Cooking is such a joy~!"
			dialog "The scents, the flavors, the sensation of sheer ^EEA9B8satiation^000000..."
			wait()
			local mresulta = menu("Um, isn't this a forge?","Ignore him.")
			if mresulta == 1 then
				dialog "[Uwe]"
				dialog "Is this a forge?"
				dialog "Oh, sugar honey,"
				dialog "you haven't been here"
				dialog "before, haven't you?"
				wait()
				dialog "[Uwe]"
				dialog "My name is Uwe Kleine"
				dialog "and this is my forge~! I am"
				dialog "the most elegant Blacksmith"
				dialog "and the best chef here in the"
				dialog "Schwaltzvalt Republic~"
				wait()
				dialog "[Uwe]"
				dialog "Cooking is probably one"
				dialog "of the greatest pleasures"
				dialog "a craftsman can enjoy. Ooh,"
				dialog "what do you think is the most"
				dialog "important factor in cooking,"
				if getvar(VAR_SEX) == 1 then
					dialog "you ^EEA9B8naughty little man^000000?"
				else
					dialog "you ^EEA9B8naughty, naughty girl^000000?"
				end
				wait()
				local mresultb = menu("Heart.","Ingredients.","Skills.","Tools.")
				if mresultb == 1 then
					dialog "[Uwe]"
					dialog "..."
					dialog "......"
					dialog "......Heart?"
					wait()
					dialog "[Uwe]"
					dialog "Na-na-na-na-noooo~"
					dialog "If a heart was all you"
					dialog "needed to cook or forge,"
					dialog "then anyone can make and"
					dialog "upgrade a Claymore, right?"
					wait()
					dialog "[Uwe]"
					dialog "What you really need"
					dialog "when cooking and forging"
					dialog "is ^EEA9B8desire^000000. The burning desire"
					dialog "and passion to make something"
					dialog "great! If that was what you meant, then you are absolutely right!"
					wait()
					dialog "[Uwe]"
					dialog "But any other meaning"
					dialog "to that answer would have"
					dialog "been absolutely wrooooong."
					wait()
					dialog "[Uwe]"
					dialog "Oooh, I just received"
					dialog "some Emvertarcons today,"
					dialog "so please have one, 'kay?"
					dialog "Welcome to Einbroch, cutie~"
					setitem("ein_cook",1)
					getitem("Emveretarcon",1)
					wait()
					dialog "[Uwe]"
					dialog "Oh..."
					dialog "And feel free to"
					dialog "come and see me"
					dialog "anytime, alright?"
					dialog "So don't be shy"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 2 then
					dialog "[Uwe]"
					dialog "..."
					dialog "......"
					dialog "......Ingredients?"
					wait()
					dialog "[Uwe]"
					dialog "Na-na-na-na-noooo~"
					dialog "People always blame their"
					dialog "ingredients when something"
					dialog "goes wrong! It's those people"
					dialog "who just embarrass themselves~ "
					wait()
					dialog "[Uwe]"
					dialog "Now, if you have the pride to only use the very best ingredients you can find, then that's fine. But the quality of whatever you make can't depend on the ingredients alone."
					wait()
					dialog "[Uwe]"
					dialog "Speaking of ingredients,"
					dialog "someone just gave me some"
					dialog "Steel. Why don't you have 2 of"
					dialog "them as my little way of saying, ''Welcome to Einbroch, cutie~!''"
					setitem("ein_cook",3)
					getitem("Iron",2)
					wait()
					dialog "[Uwe]"
					dialog "Oh..."
					dialog "And feel free to"
					dialog "come and see me"
					dialog "anytime, alright?"
					dialog "So don't be shy"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 3 then
					dialog "[Uwe]"
					dialog "..."
					dialog "......"
					dialog "......Skills?"
					wait()
					dialog "[Uwe]"
					dialog "Well, skill alone isn't"
					dialog "enough to make something"
					dialog "great. You also need to put in"
					dialog "the effort. You can't complain"
					dialog "about not having enough skill"
					dialog "when you slack off, right?"
					wait()
					dialog "[Uwe]"
					dialog "You always need to invest"
					dialog "time and effort to make your"
					dialog "crafts stand out. Now, if you"
					dialog "meet someone whose skill"
					dialog "makes yours seem pathetic, driving you to improve yourself..."
					wait()
					dialog "[Uwe]"
					dialog "Then by all means,"
					dialog "feel free to follow"
					dialog "your drive and improve"
					dialog "your skills! Just don't"
					dialog "fall back on your lack"
					dialog "of skills as any excuse."
					wait()
					dialog "[Uwe]"
					dialog "Oooh, I just received"
					dialog "some Emvertarcons today,"
					dialog "so please have one, 'kay?"
					dialog "Welcome to Einbroch, cutie~"
					setitem("ein_cook",5)
					getitem("Emveretarcon",1)
					wait()
					dialog "[Uwe]"
					dialog "Oh..."
					dialog "And feel free to"
					dialog "come and see me"
					dialog "anytime, alright?"
					dialog "So don't be shy"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 4 then
					dialog "[Uwe]"
					dialog "..."
					dialog "......"
					dialog "......Tools?"
					wait()
					dialog "[Uwe]"
					dialog "Well, not just anyone can"
					dialog "bake delicious cakes, even"
					dialog "if they had the best oven in"
					dialog "in the Schwaltzvalt Republic."
					dialog "And a child with all the tools"
					dialog "couldn't put a sword together."
					wait()
					dialog "[Uwe]"
					dialog "Tools are helpful, but"
					dialog "master craftsmen never blame"
					dialog "their tools for their mistakes."
					wait()
					dialog "[Uwe]"
					dialog "Oh, and speaking of"
					dialog "tools, I just received"
					dialog "some new hammers today."
					dialog "Why don't you have one as"
					dialog "my way of saying ''Welcome"
					dialog "to Einbroch, sugar honey~''"
					setitem("ein_cook",7)
					getitem("Iron_Hammer",1)
					wait()
					dialog "[Uwe]"
					dialog "Oh..."
					dialog "And feel free to"
					dialog "come and see me"
					dialog "anytime, alright?"
					dialog "So don't be shy"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				end
			elseif mresulta == 2 then
				dialog "[Uwe]"
				dialog "Hmmm...?"
				dialog "Why don't you stay and chat?"
				dialog "Oh, you adventurers are always"
				dialog "so busy with your things to do"
				dialog "and people to see. Ah well~"
				close()
				return
			end
		elseif getvar(ein_cook) < 10 then
			dialog "[Uwe]"
			dialog "Oh! Hello again,"
			dialog "you cutie adventurer."
			dialog "So tell me, what brings"
			dialog("you here, ","+PcName+"?"")
			wait()
			local mresulta = menu("Ask about Cooking.","Ask about Einbroch.","Cancel.")
			if mresulta == 1 then
				if getvar(ein_cook) == 1 then
					dialog "[Uwe]"
					dialog "Ooh, cooking!"
					dialog "So what did you"
					dialog "want to ask me...?"
					wait()
					local mresultb = menu("Ingredients","Skills","Tools","Cancel")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Now for beginners,"
						dialog "learning to select"
						dialog "and use ingredients"
						dialog "is one of the most"
						dialog "important fundamentals."
						wait()
						dialog "[Uwe]"
						dialog "Cooking is like forging"
						dialog "since specific ingredients"
						dialog "are needed to make specialty"
						dialog "items or dishes. You can't just"
						dialog "skip them if you really need"
						dialog "them, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "Once you make up your"
						dialog "mind to do something,"
						dialog "focus on finishing it, 'kay?"
						dialog "Never cut corners and always"
						dialog "dedicate yourself to make the"
						dialog "very best finished product~"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "When you're beginning to learn"
						dialog "skills, you can't let yourself be discouraged! Practice makes"
						dialog "perfect, you know? But never"
						dialog "use your lack of skills as an"
						dialog "excuse if you happen to fail..."
						wait()
						dialog "[Uwe]"
						dialog "Effort is also an essential"
						dialog "in forging and cooking! Now,"
						dialog "on the other hand, if you put"
						dialog "in all the effort but didn't learn any of the skills, you'll still get nowhere fast, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "The key is to always"
						dialog "give 100% effort and work"
						dialog "on improving your skills."
						dialog "Before you know it, you'll"
						dialog "be a respected master!"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "Hohohohoho."
						elseif bbb == 2 then
							dialog "Umhohohoho."
						else
							dialog "Umho."
						end
						close()
						return
					elseif mresultb == 3 then
						dialog "[Uwe]"
						dialog "Cooking is a little"
						dialog "easier if you have"
						dialog "nicer tools to use,"
						dialog "but that's it. Tools by"
						dialog "themselves can't make"
						dialog "just anybody a master."
						wait()
						dialog "[Uwe]"
						dialog "In the end, the best"
						dialog "tools are the ones you're"
						dialog "most comfortable with using."
						dialog "In fact, I still use the old knife I used back when I was just"
						dialog "a little novice chef~"
						wait()
						dialog "[Uwe]"
						dialog "Oh, while we're on"
						dialog "the subject of tools,"
						dialog "I just received some"
						dialog "new hammers today."
						dialog "Would you like a couple?"
						wait()
						local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
						if mmm < 500 then
							dialog "[Uwe]"
							dialog "Mmmm...?"
							dialog "You're holding too many"
							dialog "things. I can't give you any"
							dialog "hammers if you don't have"
							dialog "room. Hurry, put your extra"
							dialog "stuff in your Kafra Storage~"
							close()
							return
						end
						setitem("ein_cook",11)
						getitem("Golden_Hammer",1)
						getitem("Iron_Hammer",1)
						dialog "[Uwe]"
						dialog "Well, I hope"
						dialog "you like them~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 4 then
						dialog "[Uwe]"
						dialog "Oh...?"
						dialog "Well, feel"
						dialog "free to visit"
						dialog "me whenever"
						dialog "you want, 'kay?"
						close()
						return
					end
				elseif getvar(ein_cook) == 3 then
					dialog "[Uwe]"
					dialog "Ooh, cooking!"
					dialog "So what did you"
					dialog "want to ask me...?"
					wait()
					local mresultb = menu("Heart","Skills","Tools","Cancel.")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Ah, heart. Just like forging,"
						dialog "you need passion and desire"
						dialog "to create something special."
						dialog "Every smith and cook knows that"
						dialog "you can do anything if you have"
						dialog "the will and the commitment."
						wait()
						dialog "[Uwe]"
						dialog "Well, that's all"
						dialog "I really have to"
						dialog "say about that. But"
						dialog "come back and chat"
						dialog "whenever you please."
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "When you're beginning to learn"
						dialog "skills, you can't let yourself be discouraged! Practice makes"
						dialog "perfect, you know? But never"
						dialog "use your lack of skills as an"
						dialog "excuse if you happen to fail..."
						wait()
						dialog "[Uwe]"
						dialog "Effort is also an essential"
						dialog "in forging and cooking! Now,"
						dialog "on the other hand, if you put"
						dialog "in all the effort but didn't learn any of the skills, you'll still get nowhere fast, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "The key is to always"
						dialog "give 100% effort and work"
						dialog "on improving your skills."
						dialog "Before you know it, you'll"
						dialog "be a respected master!"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "Hohohohoho."
						elseif bbb == 2 then
							dialog "Umhohohoho."
						else
							dialog "Umho."
						end
						close()
						return
					elseif mresultb == 3 then
						dialog "[Uwe]"
						dialog "Cooking is a little"
						dialog "easier if you have"
						dialog "nicer tools to use,"
						dialog "but that's it. Tools by"
						dialog "themselves can't make"
						dialog "just anybody a master."
						wait()
						dialog "[Uwe]"
						dialog "In the end, the best"
						dialog "tools are the ones you're"
						dialog "most comfortable with using."
						dialog "In fact, I still use the old knife I used back when I was just"
						dialog "a little novice chef~"
						wait()
						dialog "[Uwe]"
						dialog "Oh, while we're on"
						dialog "the subject of tools,"
						dialog "I just received some"
						dialog "new hammers today."
						dialog "Would you like a couple?"
						wait()
						local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
						if mmm < 500 then
							dialog "[Uwe]"
							dialog "Mmmm...?"
							dialog "You're holding too many"
							dialog "things. I can't give you any"
							dialog "hammers if you don't have"
							dialog "room. Hurry, put your extra"
							dialog "stuff in your Kafra Storage~"
							close()
							return
						end
						setitem("ein_cook",13)
						getitem("Golden_Hammer",1)
						getitem("Iron_Hammer",1)
						dialog "[Uwe]"
						dialog "Well, I hope"
						dialog "you like them~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 4 then
						dialog "[Uwe]"
						dialog "Oh...?"
						dialog "Well, feel"
						dialog "free to visit"
						dialog "me whenever"
						dialog "you want, 'kay?"
						close()
						return
					end
				elseif getvar(ein_cook) == 5 then
					dialog "[Uwe]"
					dialog "Ooh, cooking!"
					dialog "So what did you"
					dialog "want to ask me...?"
					wait()
					local mresultb = menu("Heart","Ingredients","Tools","Cancel")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Ah, heart. Just like forging,"
						dialog "you need passion and desire"
						dialog "to create something special."
						dialog "Every smith and cook knows that"
						dialog "you can do anything if you have"
						dialog "the will and the commitment."
						wait()
						dialog "[Uwe]"
						dialog "Well, that's all"
						dialog "I really have to"
						dialog "say about that. But"
						dialog "come back and chat"
						dialog "whenever you please."
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "Now for beginners,"
						dialog "learning to select"
						dialog "and use ingredients"
						dialog "is one of the most"
						dialog "important fundamentals."
						wait()
						dialog "[Uwe]"
						dialog "Cooking is like forging"
						dialog "since specific ingredients"
						dialog "are needed to make specialty"
						dialog "items or dishes. You can't just"
						dialog "skip them if you really need"
						dialog "them, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "Once you make up your"
						dialog "mind to do something,"
						dialog "focus on finishing it, 'kay?"
						dialog "Never cut corners and always"
						dialog "dedicate yourself to make the"
						dialog "very best finished product~"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 3 then
						dialog "[Uwe]"
						dialog "Cooking is a little"
						dialog "easier if you have"
						dialog "nicer tools to use,"
						dialog "but that's it. Tools by"
						dialog "themselves can't make"
						dialog "just anybody a master."
						wait()
						dialog "[Uwe]"
						dialog "In the end, the best"
						dialog "tools are the ones you're"
						dialog "most comfortable with using."
						dialog "In fact, I still use the old knife I used back when I was just"
						dialog "a little novice chef~"
						wait()
						dialog "[Uwe]"
						dialog "Oh, while we're on"
						dialog "the subject of tools,"
						dialog "I just received some"
						dialog "new hammers today."
						dialog "Would you like a couple?"
						wait()
						local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
						if mmm < 500 then
							dialog "[Uwe]"
							dialog "Mmmm...?"
							dialog "You're holding too many"
							dialog "things. I can't give you any"
							dialog "hammers if you don't have"
							dialog "room. Hurry, put your extra"
							dialog "stuff in your Kafra Storage~"
							close()
							return
						end
						setitem("ein_cook",15)
						getitem("Golden_Hammer",1)
						getitem("Iron_Hammer",1)
						wait()
						dialog "[Uwe]"
						dialog "Well, I hope"
						dialog "you like them~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 4 then
						dialog "[Uwe]"
						dialog "Oh...?"
						dialog "Well, feel"
						dialog "free to visit"
						dialog "me whenever"
						dialog "you want, 'kay?"
						close()
						return
					end
				elseif getvar(ein_cook) == 7 then
					dialog "[Uwe]"
					dialog "Ooh, cooking!"
					dialog "So what did you"
					dialog "want to ask me...?"
					wait()
					local mresultb = menu("Heart","Ingredients","Skills","Cancel.")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Ah, heart. Just like forging,"
						dialog "you need passion and desire"
						dialog "to create something special."
						dialog "Every smith and cook knows that"
						dialog "you can do anything if you have"
						dialog "the will and the commitment."
						wait()
						dialog "[Uwe]"
						dialog "Well, that's all"
						dialog "I really have to"
						dialog "say about that. But"
						dialog "come back and chat"
						dialog "whenever you please."
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "Now for beginners,"
						dialog "learning to select"
						dialog "and use ingredients"
						dialog "is one of the most"
						dialog "important fundamentals."
						wait()
						dialog "[Uwe]"
						dialog "Cooking is like forging"
						dialog "since specific ingredients"
						dialog "are needed to make specialty"
						dialog "items or dishes. You can't just"
						dialog "skip them if you really need"
						dialog "them, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "Once you make up your"
						dialog "mind to do something,"
						dialog "focus on finishing it, 'kay?"
						dialog "Never cut corners and always"
						dialog "dedicate yourself to make the"
						dialog "very best finished product~"
						setitem("ein_cook",17)
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 3 then
						dialog "[Uwe]"
						dialog "'I couldn't do it cuz"
						dialog "I'm not skillful with it.'"
						dialog "It's the most foolish words in the world."
						dialog "There's only way for cooking."
						dialog "Practice, practice and try!."
						wait()
						dialog "[Uwe]"
						dialog "I know it's the easiest"
						dialog "lame excuse for a person"
						dialog "who never try hard anything."
						dialog ""
						wait()
						dialog "[Uwe]"
						dialog "It's very same for a smith job."
						dialog "If you don't try to"
						dialog "upgrade your skill,"
						dialog "your works will be poor"
						dialog "forever.."
						wait()
						dialog "[Uwe]"
						dialog "But there's different way"
						dialog "to blaim on your skill."
						dialog "When you face the higher wall,"
						dialog "you can feel that you're not enough yet."
						dialog "Then you can reproch yourself and your skills."
						dialog "It's natural."
						wait()
						dialog "[Uwe]"
						dialog "After that ordeal, if you try harder"
						dialog "and make your goal higher,"
						dialog "every people around you will"
						dialog "look up to you."
						wait()
						dialog "[Uwe]"
						dialog "Well, I hope"
						dialog "you like them~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 4 then
						dialog "[Uwe]"
						dialog "Oh...?"
						dialog "Well, feel"
						dialog "free to visit"
						dialog "me whenever"
						dialog "you want, 'kay?"
						close()
						return
					end
				elseif getvar(ein_cook) == 9 then
					dialog "[Uwe]"
					dialog "Ooh, cooking!"
					dialog "So what did you"
					dialog "want to ask me...?"
					wait()
					local mresultb = menu("Heart","Ingredients","Skills","Tools","Cancel.")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Ah, heart. Just like forging,"
						dialog "you need passion and desire"
						dialog "to create something special."
						dialog "Every smith and cook knows that"
						dialog "you can do anything if you have"
						dialog "the will and the commitment."
						wait()
						dialog "[Uwe]"
						dialog "Well, that's all"
						dialog "I really have to"
						dialog "say about that. But"
						dialog "come back and chat"
						dialog "whenever you please."
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "Now for beginners,"
						dialog "learning to select"
						dialog "and use ingredients"
						dialog "is one of the most"
						dialog "important fundamentals."
						wait()
						dialog "[Uwe]"
						dialog "Cooking is like forging"
						dialog "since specific ingredients"
						dialog "are needed to make specialty"
						dialog "items or dishes. You can't just"
						dialog "skip them if you really need"
						dialog "them, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "Once you make up your"
						dialog "mind to do something,"
						dialog "focus on finishing it, 'kay?"
						dialog "Never cut corners and always"
						dialog "dedicate yourself to make the"
						dialog "very best finished product~"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 3 then
						dialog "[Uwe]"
						dialog "When you're beginning to learn"
						dialog "skills, you can't let yourself be discouraged! Practice makes"
						dialog "perfect, you know? But never"
						dialog "use your lack of skills as an"
						dialog "excuse if you happen to fail..."
						wait()
						dialog "[Uwe]"
						dialog "Effort is also an essential"
						dialog "in forging and cooking! Now,"
						dialog "on the other hand, if you put"
						dialog "in all the effort but didn't learn any of the skills, you'll still get nowhere fast, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "The key is to always"
						dialog "give 100% effort and work"
						dialog "on improving your skills."
						dialog "Before you know it, you'll"
						dialog "be a respected master!"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "Hohohohoho."
						elseif bbb == 2 then
							dialog "Umhohohoho."
						else
							dialog "Umho."
						end
						close()
						return
					elseif mresultb == 4 then
						dialog "[Uwe]"
						dialog "Cooking is a little"
						dialog "easier if you have"
						dialog "nicer tools to use,"
						dialog "but that's it. Tools by"
						dialog "themselves can't make"
						dialog "just anybody a master."
						wait()
						dialog "[Uwe]"
						dialog "In the end, the best"
						dialog "tools are the ones you're"
						dialog "most comfortable with using."
						dialog "In fact, I still use the old knife I used back when I was just"
						dialog "a little novice chef~"
						wait()
						dialog "[Uwe]"
						dialog "Oh, while we're on"
						dialog "the subject of tools,"
						dialog "I just received some"
						dialog "new hammers today."
						dialog "Would you like a couple?"
						wait()
						local mmm = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
						if mmm < 500 then
							dialog "[Uwe]"
							dialog "Mmmm...?"
							dialog "You're holding too many"
							dialog "things. I can't give you any"
							dialog "hammers if you don't have"
							dialog "room. Hurry, put your extra"
							dialog "stuff in your Kafra Storage~"
							return
						end
						setitem("ein_cook",19)
						getitem("Golden_Hammer",1)
						getitem("Iron_Hammer",1)
						wait()
						dialog "[Uwe]"
						dialog "Well, I hope"
						dialog "you like them~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 5 then
						dialog "[Uwe]"
						dialog "Oh...?"
						dialog "Well, feel"
						dialog "free to visit"
						dialog "me whenever"
						dialog "you want, 'kay?"
						close()
						return
					end
				end
			elseif mresulta == 2 then
				dialog "[Uwe]"
				dialog "Einbroch was originally"
				dialog "built to support Einbech's"
				dialog "mining efforts. Because it's"
				dialog "small and crowded with people,"
				dialog "there's no room to build the ore refining factories over there."
				wait()
				dialog "[Uwe]"
				dialog "Since Einbroch used to be"
				dialog "an empty lot, it was perfect"
				dialog "for building factories. That's"
				dialog "what my grandfather told me a"
				dialog "long time ago. Anyway, Einbroch quickly grew into a major city."
				wait()
				dialog "[Uwe]"
				dialog "Now people think that this"
				dialog "city was never planned to be"
				dialog "just an extension of Einbech."
				dialog "See that rampart over there?"
				dialog "It doesn't connect to Einbech at all! No protection for them..."
				wait()
				dialog "[Uwe]"
				dialog "It's like the government"
				dialog "lost all interest in Einbech."
				dialog "Even the miners there have"
				dialog "been moving here to work in "
				dialog "the factories. But more people hasn't made this city more lively."
				wait()
				dialog "[Uwe]"
				dialog "Einbroch may look modern"
				dialog "and exciting now, but soon"
				dialog "you'll see that there's no sign"
				dialog "of warmth or life. So... Just don't live here in your old age."
				wait()
				local mresultb = menu("Then why are you here?","But I like the city life~")
				if mresultb == 1 then
					dialog "[Uwe]"
					dialog "Well, sugar honey,"
					dialog "I've been waiting for"
					dialog "someone. But... It looks"
					dialog "like that person won't be"
					dialog "coming back anyway."
					wait()
					dialog "[Uwe]"
					dialog "Oooh, but let's not talk"
					dialog "about that. Next time you"
					dialog "drop by, we'll talk about"
					dialog "something more fun, 'kay?"
					close()
					return
				elseif mresultb == 2 then
					dialog "[Uwe]"
					dialog "Big cities can be nice,"
					dialog "but you never get to enjoy"
					dialog "the sensation of stepping"
					dialog "barefoot through the grass,"
					dialog "or the magnificent sight of"
					dialog "the shining stars at night."
					wait()
					dialog "[Uwe]"
					dialog "And the people who live"
					dialog "in the cities can be so"
					dialog "uptight! I've known more"
					dialog "than a few who look down"
					dialog "on people from smaller towns."
					wait()
					dialog "[Uwe]"
					dialog "It's sad to see some"
					dialog "people will always be"
					dialog "that ignorant. I... I just"
					dialog "can't believe those people"
					dialog "can be sooo close minded!"
					wait()
					dialog "[Uwe]"
					dialog "Oh...!"
					dialog "I'm sorry, I guess"
					dialog "I went a little overboard."
					dialog "^666666*Titter*^000000 Next time you drop"
					dialog "by, we'll talk about something"
					dialog "more fun, 'kay? Buhbye~"
					close()
					return
				end
			elseif mresulta == 3 then
				dialog "[Uwe]"
				dialog "Oh...?"
				dialog "Well, feel"
				dialog "free to visit"
				dialog "me whenever"
				dialog "you want, 'kay?"
				close()
				return
			end
		elseif ((getvar(ein_cook) < 20) or (getvar(ein_cook) == 219)) then
			dialog "[Uwe]"
			dialog "Oh, welcome back."
			dialog "So how's the weapon"
			dialog "forging coming along?"
			wait()
			local mresulta = menu("Talk about Cooking","Talk about Einbroch","Talk about Cooking Utensils","Cancel")
			if mresulta == 1 then
				dialog "[Uwe]"
				dialog "Ooh, cooking!"
				dialog "So what did you"
				dialog "want to ask me...?"
				wait()
				local mresultb = menu("Heart","Ingredients","Skills","Tools","Cancel.")
				if mresultb == 1 then
					dialog "[Uwe]"
					dialog "Ah, heart. Just like forging,"
					dialog "you need passion and desire"
					dialog "to create something special."
					dialog "Every smith and cook knows that"
					dialog "you can do anything if you have"
					dialog "the will and the commitment."
					wait()
					dialog "[Uwe]"
					dialog "Well, that's all"
					dialog "I really have to"
					dialog "say about that. But"
					dialog "come back and chat"
					dialog "whenever you please."
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 2 then
					dialog "[Uwe]"
					dialog "Now for beginners,"
					dialog "learning to select"
					dialog "and use ingredients"
					dialog "is one of the most"
					dialog "important fundamentals."
					wait()
					dialog "[Uwe]"
					dialog "Cooking is like forging"
					dialog "since specific ingredients"
					dialog "are needed to make specialty"
					dialog "items or dishes. You can't just"
					dialog "skip them if you really need"
					dialog "them, right? Right!"
					wait()
					dialog "[Uwe]"
					dialog "Once you make up your"
					dialog "mind to do something,"
					dialog "focus on finishing it, 'kay?"
					dialog "Never cut corners and always"
					dialog "dedicate yourself to make the"
					dialog "very best finished product~"
					wait()
					dialog "[Uwe]"
					dialog "Well, that was"
					dialog "a fun talk. Come"
					dialog "back and visit, 'kay?"
					dialog "I'll miss you until"
					dialog "the next time~"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 3 then
					dialog "[Uwe]"
					dialog "When you're beginning to learn"
					dialog "skills, you can't let yourself be discouraged! Practice makes"
					dialog "perfect, you know? But never"
					dialog "use your lack of skills as an"
					dialog "excuse if you happen to fail..."
					wait()
					dialog "[Uwe]"
					dialog "Effort is also an essential"
					dialog "in forging and cooking! Now,"
					dialog "on the other hand, if you put"
					dialog "in all the effort but didn't learn any of the skills, you'll still get nowhere fast, right? Right!"
					wait()
					dialog "[Uwe]"
					dialog "The key is to always"
					dialog "give 100% effort and work"
					dialog "on improving your skills."
					dialog "Before you know it, you'll"
					dialog "be a respected master!"
					wait()
					dialog "[Uwe]"
					dialog "Well, that was"
					dialog "a fun talk. Come"
					dialog "back and visit, 'kay?"
					dialog "I'll miss you until"
					dialog "the next time~"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 4 then
					dialog "[Uwe]"
					dialog "Cooking is a little"
					dialog "easier if you have"
					dialog "nicer tools to use,"
					dialog "but that's it. Tools by"
					dialog "themselves can't make"
					dialog "just anybody a master."
					wait()
					dialog "[Uwe]"
					dialog "In the end, the best"
					dialog "tools are the ones you're"
					dialog "most comfortable with using."
					dialog "In fact, I still use the old knife I used back when I was just"
					dialog "a little novice chef~"
					wait()
					dialog "[Uwe]"
					dialog "Well, that was"
					dialog "a fun talk. Come"
					dialog "back and visit, 'kay?"
					dialog "I'll miss you until"
					dialog "the next time~"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 5 then
					dialog "[Uwe]"
					dialog "Oh...?"
					dialog "Well, feel"
					dialog "free to visit"
					dialog "me whenever"
					dialog "you want, 'kay?"
					close()
					return
				end
			elseif mresulta == 2 then
				dialog "[Uwe]"
				dialog "Einbroch was originally"
				dialog "built to support Einbech's"
				dialog "mining efforts. Because it's"
				dialog "small and crowded with people,"
				dialog "there's no room to build the ore refining factories over there."
				wait()
				dialog "[Uwe]"
				dialog "Since Einbroch used to be"
				dialog "an empty lot, it was perfect"
				dialog "for building factories. That's"
				dialog "what my grandfather told me a"
				dialog "long time ago. Anyway, Einbroch quickly grew into a major city."
				wait()
				dialog "[Uwe]"
				dialog "Now people think that this"
				dialog "city was never planned to be"
				dialog "just an extension of Einbech."
				dialog "See that rampart over there?"
				dialog "It doesn't connect to Einbech at all! No protection for them..."
				wait()
				dialog "[Uwe]"
				dialog "It's like the government"
				dialog "lost all interest in Einbech."
				dialog "Even the miners there have"
				dialog "been moving here to work in "
				dialog "the factories. But more people hasn't made this city more lively."
				wait()
				dialog "[Uwe]"
				dialog "Einbroch may look modern"
				dialog "and exciting now, but soon"
				dialog "you'll see that there's no sign"
				dialog "of warmth or life. So... Just don't live here in your old age."
				wait()
				local mresultb = menu("Then why are you here?","But I like the city life~")
				if mresultb == 1 then
					dialog "[Uwe]"
					dialog "Well, sugar honey,"
					dialog "I've been waiting for someone. But... It looks like that person won't be coming back anyway."
					wait()
					dialog "[Uwe]"
					dialog "Oooh, but let's not talk about that. Next time you drop by, we'll talk about something more fun, 'kay? Buhbye~"
					close()
					return
				elseif mresultb == 2 then
					dialog "[Uwe]"
					dialog "Well, big cities are nice, but you never get to enjoy the sensation of stepping barefoot through the grass, or the clear sight of the stars at night."
					wait()
					dialog "[Uwe]"
					dialog "And the people who live in cities can be so uptight! I've known more than a few who look down on people who live in smaller towns."
					wait()
					dialog "[Uwe]"
					dialog "It's sad to see some people will always be that ignorant. I... I just can't believe people can be sooo close minded!"
					wait()
					dialog "[Uwe]"
					dialog "Oh...!"
					dialog "I'm sorry, I guess I went a little overboard. ^666666*Titter*^000000 Next time you drop by, we'll talk about something more fun, 'kay? Buhbye~"
					close()
					return
				end
			elseif mresulta == 3 then
				dialog "[Uwe]"
				dialog "Cooking utensils?"
				dialog "Well, they're usually"
				dialog "made out of ^0000FFJubilee^000000,"
				dialog "a crystallization dropped"
				dialog "from mineral monsters."
				wait()
				dialog "[Uwe]"
				dialog "Jubilee is too soft"
				dialog "to make weapons, but"
				dialog "it conducts heat very well"
				dialog "so it's perfect for making"
				dialog "cooking utensils! *Tee hee~*"
				wait()
				dialog "[Uwe]"
				dialog "That reminds me..."
				dialog "I need to make some new cooking utensils soon. Would you do me a favor and let me have some of your materials? Pretty pleeeeeease~"
				wait()
				dialog "[Uwe]"
				dialog "If you don't mind,"
				dialog "would you please give me"
				dialog "30 ^0000FFJubilee^000000 and 4 ^0000FFLarge Jellopy^000000."
				dialog "Then, I'll trade you 1 Coal for all of those. How does it sound?"
				wait()
				local mresultb = menu("Sure.","No, thanks.")
				if mresultb == 1 then
					if ((getvar(Jubilee) > 29) and (getvar(Large_Jellopy) > 3)) then
						dropitem("Jubilee",30)
						dropitem("Large_Jellopy",4)
						getitem("Coal",1)
						dialog "[Uwe]"
						dialog "Hooray!"
						dialog "Thank you"
						dialog "^EEA9B8soooo^000000 much!"
						close()
						return
					else
						dialog "[Uwe]"
						dialog "Hmmm...?"
						dialog "You don't have"
						dialog "enough of them?"
						wait()
						dialog "[Uwe]"
						dialog "Oh well, don't"
						dialog "worry. You can take"
						dialog "your time and bring"
						dialog "that stuff whenever"
						dialog " you can, 'kay?"
						close()
						return
					end
				elseif mresultb == 2 then
					dialog "[Uwe]"
					dialog "I understand."
					dialog "You might not have all"
					dialog "that Jubilee and Large Jellopy"
					dialog "I'm asking for at the moment,"
					dialog "anyway. But if you do get them, would visit me again, cutie?"
					close()
					return
				end
			elseif mresulta == 4 then
				dialog "[Uwe]"
				dialog "Oh...?"
				dialog "Well, feel"
				dialog "free to visit"
				dialog "me whenever"
				dialog "you want, 'kay?"
				close()
				return
			end
		elseif getvar(ein_cook) > 299 then
			if (getvar(VAR_JOB) == BLACKSMITH_H) then
				dialog "[Uwe]"
				dialog "Oooh...!"
				dialog "Congratulations!"
				dialog "You finally became"
				dialog "a cutie MasterSmith!"
				wait()
				dialog "[Uwe]"
				dialog "Mmmm..."
				dialog "I know!"
				dialog "Let's celebrate!"
				dialog "Here sugar honey,"
				dialog "have some of these"
				dialog "cookies I just baked~"
				wait()
				setitem("ein_cook",9)
				getitem("Well_Baked_Cookie",5)
				dialog "[Uwe]"
				dialog "Okay, enjoy!"
				dialog "I hope you have"
				dialog "a good time smithing!"
				close()
				return
			else
				dialog "[Uwe]"
				dialog "Hmmm?"
				dialog "Oh, it's you~"
				dialog "I'm sorry, I was"
				dialog "just thinking about"
				dialog "something but now I just"
				dialog "lost my train of thought."
				setitem("ein_cook",219)
				wait()
				dialog "[Uwe]"
				dialog "What was I going"
				dialog "to say? Hmm, I can't"
				dialog "quite remember. Oh well,"
				dialog "I'll see you later, cutie~"
				close()
				return
			end
		end
	else
		local aaa = getvar(ein_cook) % 2
		if (aaa == 1) then
			local bbb = getvar(ein_cook)
			if bbb > 99 then
				local bbb = bbb - 100
				if bbb > 99 then
					local bbb = bbb - 100
					if bbb > 99 then
						local ccc = 3
					else
						local ccc = 2
					end
				else
					local ccc = 1
				end
			else
				local ccc = 0
			end
			if ccc < 3 then
				dialog "[Uwe]"
				dialog "Hm...?"
				dialog "I never forget a face,"
				dialog "but somehow I feel like"
				dialog "we've met somewhere before..."
				wait()
				if ccc == 0 then
					local ggg = getvar(ein_cook) + 300
					setitem("ein_cook","ggg")
				elseif ccc == 2 then
					local ggg = getvar(ein_cook) + 100
					setitem("ein_cook","ggg")
				end
				local name = PcName()
				dialog "[Uwe]"
				dialog "Ah...!"
				dialog "I have it!"
				dialog(,"+","name","+","!")
				dialog "Yes, now I remember you."
				dialog "Decided to transcend, eh?"
				wait()
				dialog "[Uwe]"
				dialog "What brings to"
				if getvar(VAR_SEX) == 1 then
					dialog "me, you ^EEA9B8naughty boy^000000?"
				else
					dialog "me, you ^EEA9B8naughty girl^000000?"
				end
				wait()
			elseif ccc == 3 then
				dialog "[Uwe]"
				dialog "Ah, hello again,"
				dialog "cutie adventurer."
				dialog "How can I help you?"
				wait()
			end
			local mresulta = menu("Ask about Einbroch.","Ask about Cooking.","Cancel.")
			if mresulta == 1 then
				dialog "[Uwe]"
				dialog "Einbroch was originally"
				dialog "built to support Einbech's"
				dialog "mining efforts. Because it's"
				dialog "small and crowded with people,"
				dialog "there's no room to build the ore refining factories over there."
				wait()
				dialog "[Uwe]"
				dialog "Since Einbroch used to be"
				dialog "an empty lot, it was perfect"
				dialog "for building factories. That's"
				dialog "what my grandfather told me a"
				dialog "long time ago. Anyway, Einbroch quickly grew into a major city."
				wait()
				dialog "[Uwe]"
				dialog "Now people think that this"
				dialog "city was never planned to be"
				dialog "just an extension of Einbech."
				dialog "See that rampart over there?"
				dialog "It doesn't connect to Einbech at all! No protection for them..."
				wait()
				dialog "[Uwe]"
				dialog "It's like the government"
				dialog "lost all interest in Einbech."
				dialog "Even the miners there have"
				dialog "been moving here to work in "
				dialog "the factories. But more people hasn't made this city more lively."
				wait()
				dialog "[Uwe]"
				dialog "Einbroch may look modern"
				dialog "and exciting now, but soon"
				dialog "you'll see that there's no sign"
				dialog "of warmth or life. So... Just don't live here in your old age."
				wait()
				local mresultb = menu("Then why are you here?","I won't. Thanks for the advice.")
				if mresultb == 1 then
					dialog "[Uwe]"
					dialog "Well, I have some"
					dialog "precious memories of"
					dialog "this place. Once, there was"
					dialog "a man who lived here who"
					dialog "was just like a father to me."
					wait()
					dialog "[Uwe]"
					dialog "Oh, but I'm sure that"
					dialog "you don't want to hear"
					dialog "about that. Next time you"
					dialog "drop by, we'll talk about"
					dialog "something more fun, 'kay?"
					dialog "Buhbye for now, cutie~"
					close()
					return
				elseif mresultb == 2 then
					dialog "[Uwe]"
					dialog "Oh, that is such"
					dialog "a good decision,"
					dialog "sugar honey! Oh, you"
					dialog "cutie adventurers are"
					dialog "so precious, so lovable."
					dialog "^333333*Tee hee hee~*^000000"
					wait()
					dialog "[Uwe]"
					dialog "Well, that was"
					dialog "a fun talk. Come"
					dialog "back and visit, 'kay?"
					dialog "I'll miss you until"
					dialog "the next time~"
					close()
					return
				end
			elseif mresulta == 2 then
				dialog "[Uwe]"
				dialog "Ooh, cooking!"
				dialog "So what did you"
				dialog "want to ask me...?"
				wait()
				local mresultb = menu("Heart","Ingredients","Skills","Tools","Cancel.")
				if mresultb == 1 then
					dialog "[Uwe]"
					dialog "Ah, heart. Just like forging,"
					dialog "you need passion and desire"
					dialog "to create something special."
					dialog "Every smith and cook knows that"
					dialog "you can do anything if you have"
					dialog "the will and the commitment."
					wait()
					dialog "[Uwe]"
					dialog "Well, that's all"
					dialog "I really have to"
					dialog "say about that. But"
					dialog "come back and chat"
					dialog "whenever you please."
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 2 then
					dialog "[Uwe]"
					dialog "Now for beginners,"
					dialog "learning to select"
					dialog "and use ingredients"
					dialog "is one of the most"
					dialog "important fundamentals."
					wait()
					dialog "[Uwe]"
					dialog "Cooking is like forging"
					dialog "since specific ingredients"
					dialog "are needed to make specialty"
					dialog "items or dishes. You can't just"
					dialog "skip them if you really need"
					dialog "them, right? Right!"
					wait()
					dialog "[Uwe]"
					dialog "Once you make up your"
					dialog "mind to do something,"
					dialog "focus on finishing it, 'kay?"
					dialog "Never cut corners and always"
					dialog "dedicate yourself to make the"
					dialog "very best finished product~"
					wait()
					dialog "[Uwe]"
					dialog "Well, that was"
					dialog "a fun talk. Come"
					dialog "back and visit, 'kay?"
					dialog "I'll miss you until"
					dialog "the next time~"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 3 then
					dialog "[Uwe]"
					dialog "When you're beginning to learn"
					dialog "skills, you can't let yourself be discouraged! Practice makes"
					dialog "perfect, you know? But never"
					dialog "use your lack of skills as an"
					dialog "excuse if you happen to fail..."
					wait()
					dialog "[Uwe]"
					dialog "Effort is also an essential"
					dialog "in forging and cooking! Now,"
					dialog "on the other hand, if you put"
					dialog "in all the effort but didn't learn any of the skills, you'll still get nowhere fast, right? Right!"
					wait()
					dialog "[Uwe]"
					dialog "The key is to always"
					dialog "give 100% effort and work"
					dialog "on improving your skills."
					dialog "Before you know it, you'll"
					dialog "be a respected master!"
					wait()
					dialog "[Uwe]"
					dialog "Well, that was"
					dialog "a fun talk. Come"
					dialog "back and visit, 'kay?"
					dialog "I'll miss you until"
					dialog "the next time~"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 4 then
					dialog "[Uwe]"
					dialog "Cooking is a little"
					dialog "easier if you have"
					dialog "nicer tools to use,"
					dialog "but that's it. Tools by"
					dialog "themselves can't make"
					dialog "just anybody a master."
					wait()
					dialog "[Uwe]"
					dialog "In the end, the best"
					dialog "tools are the ones you're"
					dialog "most comfortable with using."
					dialog "In fact, I still use the old knife I used back when I was just"
					dialog "a little novice chef~"
					wait()
					dialog "[Uwe]"
					dialog "Well, that was"
					dialog "a fun talk. Come"
					dialog "back and visit, 'kay?"
					dialog "I'll miss you until"
					dialog "the next time~"
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 5 then
					dialog "[Uwe]"
					dialog "Oh...?"
					dialog "Well, feel"
					dialog "free to visit"
					dialog "me whenever"
					dialog "you want, 'kay?"
					close()
					return
				end
			elseif mresulta == 3 then
				dialog "[Uwe]"
				dialog "Oh...?"
				dialog "Well, feel"
				dialog "free to visit"
				dialog "me whenever"
				dialog "you want, 'kay?"
				close()
				return
			end
		end
		if getvar(ein_cook) > 999 then
			local eee = getvar(ein_cook) - 1000
			if eee > 199 then
				dialog "[Uwe]"
				dialog "Ah, hello again,"
				dialog "cutie adventurer."
				dialog "How can I help you?"
				wait()
				local mresulta = menu("Talk about Einbroch.","Ask him to forge a Weapon.","Talk about Cooking.","Cancel.")
				if mresulta == 1 then
					dialog "[Uwe]"
					dialog "Einbroch was originally"
					dialog "built to support Einbech's"
					dialog "mining efforts. Because it's"
					dialog "small and crowded with people,"
					dialog "there's no room to build the ore refining factories over there."
					wait()
					dialog "[Uwe]"
					dialog "Since Einbroch used to be"
					dialog "an empty lot, it was perfect"
					dialog "for building factories. That's"
					dialog "what my grandfather told me a"
					dialog "long time ago. Anyway, Einbroch quickly grew into a major city."
					wait()
					dialog "[Uwe]"
					dialog "Now people think that this"
					dialog "city was never planned to be"
					dialog "just an extension of Einbech."
					dialog "See that rampart over there?"
					dialog "It doesn't connect to Einbech at all! No protection for them..."
					wait()
					dialog "[Uwe]"
					dialog "It's like the government"
					dialog "lost all interest in Einbech."
					dialog "Even the miners there have"
					dialog "been moving here to work in "
					dialog "the factories. But more people hasn't made this city more lively."
					wait()
					dialog "[Uwe]"
					dialog "Einbroch may look modern"
					dialog "and exciting now, but soon"
					dialog "you'll see that there's no sign"
					dialog "of warmth or life. So... Just don't live here in your old age."
					wait()
					local mresultb = menu("Then why are you here?","I won't. Thanks for the advice.")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Well, I have some"
						dialog "precious memories of"
						dialog "this place. Once, there was"
						dialog "a man who lived here who"
						dialog "was just like a father to me."
						wait()
						dialog "[Uwe]"
						dialog "Oh, but I'm sure that"
						dialog "you don't want to hear"
						dialog "about that. Next time you"
						dialog "drop by, we'll talk about"
						dialog "something more fun, 'kay?"
						dialog "Buhbye for now, cutie~"
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "Oh, that is such"
						dialog "a good decision,"
						dialog "sugar honey! Oh, you"
						dialog "cutie adventurers are"
						dialog "so precious, so lovable."
						dialog "^333333*Tee hee hee~*^000000"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						close()
						return
					end
				elseif mresulta == 2 then
					dialog "[Uwe]"
					dialog "Well..."
					dialog "I actually just"
					dialog "do smithing work"
					dialog "to create my own"
					dialog "cooking tools."
					wait()
					dialog "[Uwe]"
					dialog "Oh, I understand"
					dialog "that somebody needs"
					dialog "to fight the monsters,"
					dialog "but I'm the wrong person"
					dialog "to ask for forging weapons."
					dialog "I... am a strict pacifist~"
					wait()
					dialog "[Uwe]"
					dialog "Just go look"
					dialog "around for a little"
					dialog "bit, I'm sure you'll"
					dialog "find a Blacksmith"
					dialog "who's willing to forge"
					dialog "you a good weapon~"
					close()
					return
				elseif mresulta == 3 then
					dialog "[Uwe]"
					dialog "Ooh, cooking!"
					dialog "So what did you"
					dialog "want to ask me...?"
					wait()
					local mresultb = menu("Heart","Ingredients","Skills","Tools","Cancel.")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Ah, heart. Just like forging,"
						dialog "you need passion and desire"
						dialog "to create something special."
						dialog "Every smith and cook knows that"
						dialog "you can do anything if you have"
						dialog "the will and the commitment."
						wait()
						dialog "[Uwe]"
						dialog "Well, that's all"
						dialog "I really have to"
						dialog "say about that. But"
						dialog "come back and chat"
						dialog "whenever you please."
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "Now for beginners,"
						dialog "learning to select"
						dialog "and use ingredients"
						dialog "is one of the most"
						dialog "important fundamentals."
						wait()
						dialog "[Uwe]"
						dialog "Cooking is like forging"
						dialog "since specific ingredients"
						dialog "are needed to make specialty"
						dialog "items or dishes. You can't just"
						dialog "skip them if you really need"
						dialog "them, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "Once you make up your"
						dialog "mind to do something,"
						dialog "focus on finishing it, 'kay?"
						dialog "Never cut corners and always"
						dialog "dedicate yourself to make the"
						dialog "very best finished product~"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 3 then
						dialog "[Uwe]"
						dialog "When you're beginning to learn"
						dialog "skills, you can't let yourself be discouraged! Practice makes"
						dialog "perfect, you know? But never"
						dialog "use your lack of skills as an"
						dialog "excuse if you happen to fail..."
						wait()
						dialog "[Uwe]"
						dialog "Effort is also an essential"
						dialog "in forging and cooking! Now,"
						dialog "on the other hand, if you put"
						dialog "in all the effort but didn't learn any of the skills, you'll still get nowhere fast, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "The key is to always"
						dialog "give 100% effort and work"
						dialog "on improving your skills."
						dialog "Before you know it, you'll"
						dialog "be a respected master!"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 4 then
						dialog "[Uwe]"
						dialog "Cooking is a little"
						dialog "easier if you have"
						dialog "nicer tools to use,"
						dialog "but that's it. Tools by"
						dialog "themselves can't make"
						dialog "just anybody a master."
						wait()
						dialog "[Uwe]"
						dialog "In the end, the best"
						dialog "tools are the ones you're"
						dialog "most comfortable with using."
						dialog "In fact, I still use the old knife I used back when I was just"
						dialog "a little novice chef~"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 5 then
						dialog "[Uwe]"
						dialog "Oh...?"
						dialog "Well, feel"
						dialog "free to visit"
						dialog "me whenever"
						dialog "you want, 'kay?"
						close()
						return
					end
				elseif mresulta == 4 then
					dialog "[Uwe]"
					dialog "Alright then,"
					dialog "sugar honey."
					dialog "Take care~"
					dialog "Hohohohoho~"
					close()
					return
				end
			elseif eee > 99 then
				dialog "[Uwe]"
				dialog "Oh hello hello~"
				dialog "It's been a long"
				dialog "time since we've talked,"
				dialog "you cutie adventurer~"
				wait()
				dialog "[Uwe]"
				dialog "So, sugar honey,"
				dialog "how is it going with"
				dialog "the little favor I asked"
				dialog "you about last time?"
				dialog "Did you already forget"
				dialog "the 6 Large Jellopy?"
				wait()
				local mresulta = menu("Talk about Einbroch.","Ask him to forge a Weapon.","Give him the Materials.","Cancel.")
				if mresulta == 1 then
					dialog "[Uwe]"
					dialog "Einbroch was originally"
					dialog "built to support Einbech's"
					dialog "mining efforts. Because it's"
					dialog "small and crowded with people,"
					dialog "there's no room to build the ore refining factories over there."
					wait()
					dialog "[Uwe]"
					dialog "Since Einbroch used to be"
					dialog "an empty lot, it was perfect"
					dialog "for building factories. That's"
					dialog "what my grandfather told me a"
					dialog "long time ago. Anyway, Einbroch quickly grew into a major city."
					wait()
					dialog "[Uwe]"
					dialog "Now people think that this"
					dialog "city was never planned to be"
					dialog "just an extension of Einbech."
					dialog "See that rampart over there?"
					dialog "It doesn't connect to Einbech at all! No protection for them..."
					wait()
					dialog "[Uwe]"
					dialog "It's like the government"
					dialog "lost all interest in Einbech."
					dialog "Even the miners there have"
					dialog "been moving here to work in "
					dialog "the factories. But more people hasn't made this city more lively."
					wait()
					dialog "[Uwe]"
					dialog "Einbroch may look modern"
					dialog "and exciting now, but soon"
					dialog "you'll see that there's no sign"
					dialog "of warmth or life. So... Just don't live here in your old age."
					wait()
					local mresultb = menu("Then why are you here?","I won't. Thanks for the advice.")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Well, I have some"
						dialog "precious memories of"
						dialog "this place. Once, there was"
						dialog "a man who lived here who"
						dialog "was just like a father to me."
						wait()
						dialog "[Uwe]"
						dialog "Oh, but I'm sure that"
						dialog "you don't want to hear"
						dialog "about that. Next time you"
						dialog "drop by, we'll talk about"
						dialog "something more fun, 'kay?"
						dialog "Buhbye for now, cutie~"
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "Oh, that is such"
						dialog "a good decision,"
						dialog "sugar honey! Oh, you"
						dialog "cutie adventurers are"
						dialog "so precious, so lovable."
						dialog "^333333*Tee hee hee~*^000000"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						close()
						return
					end
				elseif mresulta == 2 then
					dialog "[Uwe]"
					dialog "Well..."
					dialog "I actually just"
					dialog "do smithing work"
					dialog "to create my own"
					dialog "cooking tools."
					wait()
					dialog "[Uwe]"
					dialog "Oh, I understand"
					dialog "that somebody needs"
					dialog "to fight the monsters,"
					dialog "but I'm the wrong person"
					dialog "to ask for forging weapons."
					dialog "I... am a strict pacifist~"
					wait()
					dialog "[Uwe]"
					dialog "Just go look"
					dialog "around for a little"
					dialog "bit, I'm sure you'll"
					dialog "find a Blacksmith"
					dialog "who's willing to forge"
					dialog "you a good weapon~"
					close()
					return
				elseif mresulta == 3 then
					if (getvar(Large_Jellopy) > 5) then
						dialog "[Uwe]"
						dialog "Thank you ^EEA9B8so^000000 much!"
						dialog "Here's the Coal I promised~"
						dropitem("Large_Jellopy",6)
						local ddd = getvar(ein_cook) + 100
						setitem("ein_cook","ddd")
						getitem("Coal",1)
						wait()
					else
						dialog "[Uwe]"
						dialog "Huh...?"
						if (getvar(Large_Jellopy) == 0) then
							dialog "You brought"
							dialog "none at all...?"
						else
							dialog "This isn't enough"
							dialog "Large Jellopy...!"
						end
						dialog "Next time, be sure"
						dialog "to bring 6 Large Jellopy,"
						dialog "okay? Don't forget, cutie~"
						close()
						return
					end
					dialog "[Uwe]"
					dialog "Now, I can't teach you everything about cooking, but I will give you some good advice for beginners."
					dialog "I hope you pay attention, sugar"
					dialog "honey. Now what would you like"
					dialog "to hear more about? Hmm...?"
					wait()
					local mresultb = menu("Heart","Materials","Skills","Tools","Cancel.")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Ah, heart. Just like forging,"
						dialog "you need passion and desire"
						dialog "to create something special."
						dialog "Every smith and cook knows that"
						dialog "you can do anything if you have"
						dialog "the will and the commitment."
						wait()
						dialog "[Uwe]"
						dialog "Well, that's all"
						dialog "I really have to"
						dialog "say about that. But"
						dialog "come back and chat"
						dialog "whenever you please."
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "Now for beginners,"
						dialog "learning to select"
						dialog "and use ingredients"
						dialog "is one of the most"
						dialog "important fundamentals."
						wait()
						dialog "[Uwe]"
						dialog "Cooking is like forging"
						dialog "since specific ingredients"
						dialog "are needed to make specialty"
						dialog "items or dishes. You can't just"
						dialog "skip them if you really need"
						dialog "them, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "Once you make up your"
						dialog "mind to do something,"
						dialog "focus on finishing it, 'kay?"
						dialog "Never cut corners and always"
						dialog "dedicate yourself to make the"
						dialog "very best finished product~"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 3 then
						dialog "[Uwe]"
						dialog "When you're beginning to learn"
						dialog "skills, you can't let yourself be discouraged! Practice makes"
						dialog "perfect, you know? But never"
						dialog "use your lack of skills as an"
						dialog "excuse if you happen to fail..."
						wait()
						dialog "[Uwe]"
						dialog "Effort is also an essential"
						dialog "in forging and cooking! Now,"
						dialog "on the other hand, if you put"
						dialog "in all the effort but didn't learn any of the skills, you'll still get nowhere fast, right? Right!"
						wait()
						dialog "[Uwe]"
						dialog "The key is to always"
						dialog "give 100% effort and work"
						dialog "on improving your skills."
						dialog "Before you know it, you'll"
						dialog "be a respected master!"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "Hohohohoho."
						elseif bbb == 2 then
							dialog "Umhohohoho."
						else
							dialog "Umho."
						end
						close()
						return
					elseif mresultb == 4 then
						dialog "[Uwe]"
						dialog "Cooking is a little"
						dialog "easier if you have"
						dialog "nicer tools to use,"
						dialog "but that's it. Tools by"
						dialog "themselves can't make"
						dialog "just anybody a master."
						wait()
						dialog "[Uwe]"
						dialog "In the end, the best"
						dialog "tools are the ones you're"
						dialog "most comfortable with using."
						dialog "In fact, I still use the old knife I used back when I was just"
						dialog "a little novice chef~"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						local bbb = math.random(1 3
						if bbb == 1 then
							dialog "...Ho ho~"
						elseif bbb == 2 then
							dialog "...*Tee Hee~*"
						else
							dialog "...Behbie~"
						end
						close()
						return
					elseif mresultb == 5 then
						dialog "[Uwe]"
						dialog "Alright then,"
						dialog "sugar honey."
						dialog "Take care~"
						dialog "Hohohohoho~"
						close()
						return
					end
				elseif mresulta == 4 then
					dialog "[Uwe]"
					dialog "Alright then,"
					dialog "sugar honey."
					dialog "Take care~"
					dialog "Hohohohoho~"
					close()
					return
				end
			else
				dialog "[Uwe]"
				dialog "Hello, cutie~"
				dialog "How can I help you?"
				wait()
				local mresulta = menu("Talk about Einbroch.","Ask him to forge a Weapon.","Master, I want to learn cooking.","Cancel.")
				if mresulta == 1 then
					dialog "[Uwe]"
					dialog "Einbroch was originally"
					dialog "built to support Einbech's"
					dialog "mining efforts. Because it's"
					dialog "small and crowded with people,"
					dialog "there's no room to build the ore refining factories over there."
					wait()
					dialog "[Uwe]"
					dialog "Since Einbroch used to be"
					dialog "an empty lot, it was perfect"
					dialog "for building factories. That's"
					dialog "what my grandfather told me a"
					dialog "long time ago. Anyway, Einbroch quickly grew into a major city."
					wait()
					dialog "[Uwe]"
					dialog "Now people think that this"
					dialog "city was never planned to be"
					dialog "just an extension of Einbech."
					dialog "See that rampart over there?"
					dialog "It doesn't connect to Einbech at all! No protection for them..."
					wait()
					dialog "[Uwe]"
					dialog "It's like the government"
					dialog "lost all interest in Einbech."
					dialog "Even the miners there have"
					dialog "been moving here to work in "
					dialog "the factories. But more people hasn't made this city more lively."
					wait()
					dialog "[Uwe]"
					dialog "Einbroch may look modern"
					dialog "and exciting now, but soon"
					dialog "you'll see that there's no sign"
					dialog "of warmth or life. So... Just don't live here in your old age."
					wait()
					local mresultb = menu("Then why are you here?","I won't. Thanks for the advice.")
					if mresultb == 1 then
						dialog "[Uwe]"
						dialog "Well, I have some"
						dialog "precious memories of"
						dialog "this place. Once, there was"
						dialog "a man who lived here who"
						dialog "was just like a father to me."
						wait()
						dialog "[Uwe]"
						dialog "Oh, but I'm sure that"
						dialog "you don't want to hear"
						dialog "about that. Next time you"
						dialog "drop by, we'll talk about"
						dialog "something more fun, 'kay?"
						dialog "Buhbye for now, cutie~"
						close()
						return
					elseif mresultb == 2 then
						dialog "[Uwe]"
						dialog "Oh, that is such"
						dialog "a good decision,"
						dialog "sugar honey! Oh, you"
						dialog "cutie adventurers are"
						dialog "so precious, so lovable."
						dialog "^333333*Tee hee hee~*^000000"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						close()
						return
					end
				elseif mresulta == 2 then
					dialog "[Uwe]"
					dialog "Well..."
					dialog "I actually just"
					dialog "do smithing work"
					dialog "to create my own"
					dialog "cooking tools."
					wait()
					dialog "[Uwe]"
					dialog "Oh, I understand"
					dialog "that somebody needs"
					dialog "to fight the monsters,"
					dialog "but I'm the wrong person"
					dialog "to ask for forging weapons."
					dialog "I... am a strict pacifist~"
					wait()
					dialog "[Uwe]"
					dialog "Just go look"
					dialog "around for a little"
					dialog "bit, I'm sure you'll"
					dialog "find a Blacksmith"
					dialog "who's willing to forge"
					dialog "you a good weapon~"
					close()
					return
				elseif mresulta == 3 then
					dialog "[Uwe]"
					dialog "Mm...?"
					dialog "Did you just"
					dialog "say that you"
					dialog "want to learn"
					dialog "the art of cooking?"
					wait()
					dialog "[Uwe]"
					dialog "I'm sorry, but I can't"
					dialog "really give culinary"
					dialog "lessons. But I will"
					dialog "give good advice for"
					dialog "hopeful beginners."
					wait()
					dialog "[Uwe]"
					dialog "Now..."
					dialog "For your tuition"
					dialog "I'll need-- Gosh,"
					dialog "there's just so many"
					dialog "things. Get some paper,"
					dialog "and a pen for this list..."
					wait()
					local ddd = getvar(ein_cook) + 100
					setitem("ein_cook","ddd")
					dialog "[Uwe]"
					dialog "Just kidding!"
					dialog "^333333*Titter~*^000000 I don't need"
					dialog "much to make some"
					dialog "cooking utensils. Bring"
					dialog "6 ^0000FFLarge Jellopy^000000. That's it!"
					wait()
					dialog "[Uwe]"
					dialog "In return, I will give you"
					dialog "1 Coal and some useful"
					dialog "cooking advice for novices."
					dialog "I give this advice for free to"
					dialog "my smithing colleages, though... ^FFFFFFcobo^000000"
					wait()
					dialog "[Uwe]"
					dialog "Why ^EEA9B8don't^000000 you"
					dialog "become a Blacksmith?"
					dialog "I'm much more confident"
					dialog "in that field. ^333333*Tee hee~*^000000"
					wait()
					dialog "[Uwe]"
					dialog "Well, I'll be"
					dialog "waiting right"
					dialog "here until you"
					dialog "come back."
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresulta == 4 then
					dialog "[Uwe]"
					dialog "Take care,"
					dialog "cutie adventurer!"
					dialog "Hohoho!"
					close()
					return
				end
			end
		elseif getvar(ein_cook) == 0 then
			dialog "[Uwe]"
			dialog "Cooking is such a joy~!"
			dialog "The scents, the flavors, the sensation of sheer ^EEA9B8satiation^000000..."
			wait()
			local mresulta = menu("Um, isn't this a forge?","Ignore him.")
			if mresulta == 1 then
				dialog "[Uwe]"
				setitem("ein_cook",1000)
				dialog "Is this a forge?"
				dialog "Oh, sugar honey,"
				dialog "you haven't been here"
				dialog "before, haven't you?"
				wait()
				dialog "[Uwe]"
				dialog "My name is Uwe Kleine"
				dialog "and this is my forge~! I am"
				dialog "the most elegant Blacksmith"
				dialog "and the best chef here in the"
				dialog "Schwaltzvalt Republic~"
				wait()
				dialog "[Uwe]"
				dialog "So, how can"
				dialog "I help you, you"
				dialog "adooooooooorable"
				if getvar(VAR_SEX) == 1 then
					dialog "hunk of a man?"
				else
					dialog "womanly woman?"
				end
				wait()
				local mresultb = menu("Talk about Einbroch.","Ask him to forge a Weapon.","Master, I want to learn cooking.","Cancel.")
				if mresultb == 1 then
					dialog "[Uwe]"
					dialog "Einbroch was originally"
					dialog "built to support Einbech's"
					dialog "mining efforts. Because it's"
					dialog "small and crowded with people,"
					dialog "there's no room to build the ore refining factories over there."
					wait()
					dialog "[Uwe]"
					dialog "Since Einbroch used to be"
					dialog "an empty lot, it was perfect"
					dialog "for building factories. That's"
					dialog "what my grandfather told me a"
					dialog "long time ago. Anyway, Einbroch quickly grew into a major city."
					wait()
					dialog "[Uwe]"
					dialog "Now people think that this"
					dialog "city was never planned to be"
					dialog "just an extension of Einbech."
					dialog "See that rampart over there?"
					dialog "It doesn't connect to Einbech at all! No protection for them..."
					wait()
					dialog "[Uwe]"
					dialog "It's like the government"
					dialog "lost all interest in Einbech."
					dialog "Even the miners there have"
					dialog "been moving here to work in "
					dialog "the factories. But more people hasn't made this city more lively."
					wait()
					dialog "[Uwe]"
					dialog "Einbroch may look modern"
					dialog "and exciting now, but soon"
					dialog "you'll see that there's no sign"
					dialog "of warmth or life. So... Just don't live here in your old age."
					wait()
					local mresultc = menu("Then why are you here?","I won't. Thanks for the advice.")
					if mresultc == 1 then
						dialog "[Uwe]"
						dialog "Well, I have some"
						dialog "precious memories of"
						dialog "this place. Once, there was"
						dialog "a man who lived here who"
						dialog "was just like a father to me."
						wait()
						dialog "[Uwe]"
						dialog "Oh, but I'm sure that"
						dialog "you don't want to hear"
						dialog "about that. Next time you"
						dialog "drop by, we'll talk about"
						dialog "something more fun, 'kay?"
						dialog "Buhbye for now, cutie~"
						close()
						return
					elseif mresultc == 2 then
						dialog "[Uwe]"
						dialog "Oh, that is such"
						dialog "a good decision,"
						dialog "sugar honey! Oh, you"
						dialog "cutie adventurers are"
						dialog "so precious, so lovable."
						dialog "^333333*Tee hee hee~*^000000"
						wait()
						dialog "[Uwe]"
						dialog "Well, that was"
						dialog "a fun talk. Come"
						dialog "back and visit, 'kay?"
						dialog "I'll miss you until"
						dialog "the next time~"
						close()
						return
					end
				elseif mresultb == 2 then
					dialog "[Uwe]"
					dialog "Well..."
					dialog "I actually just"
					dialog "do smithing work"
					dialog "to create my own"
					dialog "cooking tools."
					wait()
					dialog "[Uwe]"
					dialog "Oh, I understand"
					dialog "that somebody needs"
					dialog "to fight the monsters,"
					dialog "but I'm the wrong person"
					dialog "to ask for forging weapons."
					dialog "I... am a strict pacifist~"
					wait()
					dialog "[Uwe]"
					dialog "Just go look"
					dialog "around for a little"
					dialog "bit, I'm sure you'll"
					dialog "find a Blacksmith"
					dialog "who's willing to forge"
					dialog "you a good weapon~"
					close()
					return
				elseif mresultb == 3 then
					dialog "[Uwe]"
					dialog "Mm...?"
					dialog "Did you just"
					dialog "say that you"
					dialog "want to learn"
					dialog "the art of cooking?"
					wait()
					dialog "[Uwe]"
					dialog "I'm sorry, but I can't"
					dialog "really give culinary"
					dialog "lessons. But I will"
					dialog "give good advice for"
					dialog "hopeful beginners."
					wait()
					dialog "[Uwe]"
					dialog "Now..."
					dialog "For your tuition"
					dialog "I'll need-- Gosh,"
					dialog "there's just so many"
					dialog "things. Get some paper,"
					dialog "and a pen for this list..."
					wait()
					local ddd = getvar(ein_cook) + 100
					setitem("ein_cook","ddd")
					dialog "[Uwe]"
					dialog "Just kidding!"
					dialog "^333333*Titter~*^000000 I don't need"
					dialog "much to make some"
					dialog "cooking utensils. Bring"
					dialog "6 ^0000FFLarge Jellopy^000000. That's it!"
					wait()
					dialog "[Uwe]"
					dialog "In return, I will give you"
					dialog "1 Coal and some useful"
					dialog "cooking advice for novices."
					dialog "I give this advice for free to"
					dialog "my smithing colleages, though... ^FFFFFFcobo^000000"
					wait()
					dialog "[Uwe]"
					dialog "Why ^EEA9B8don't^000000 you"
					dialog "become a Blacksmith?"
					dialog "I'm much more confident"
					dialog "in that field. ^333333*Tee hee~*^000000"
					wait()
					dialog "[Uwe]"
					dialog "Well, I'll be"
					dialog "waiting right"
					dialog "here until you"
					dialog "come back."
					local bbb = math.random(1 3
					if bbb == 1 then
						dialog "...Ho ho~"
					elseif bbb == 2 then
						dialog "...*Tee Hee~*"
					else
						dialog "...Behbie~"
					end
					close()
					return
				elseif mresultb == 4 then
					dialog "[Uwe]"
					dialog "Take care,"
					dialog "sugar honey~"
					dialog "Ho ho ho!"
					close()
					return
				end
			elseif mresulta == 2 then
				dialog "[Uwe]"
				dialog "Cooking begins with"
				dialog "fire and ends with fire."
				dialog "There's a certain art to"
				dialog "creating fine, delicious"
				dialog "foods to delight the palate~"
				close()
				return
			end
		end
	end
end
