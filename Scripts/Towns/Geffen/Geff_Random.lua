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
--| 10/01/2008                                      |--
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

npc("geffen","Niayagu",SPRITE_8_F_GIRL,122,77,4,0,0,"geffen_Niayagu_12277")
function geffen_Niayagu_12277()
	dialog "[Nia]"
	dialog "Hello, I'm Nia, the fifth"
	dialog "disciple of Mawong, the"
	dialog "gaming mastermind. Now,"
	dialog "how would you like to play a"
	dialog "Number Match game with me?"
	wait()
	local mresulta = menu("Number Match Game?","Practice Number Match","Play Number Match","Record Holder","Cancel")
	if mresulta == 1 then
		dialog "[Nia]"
		dialog "Ah, well, the objective of"
		dialog "the Number Match game is to"
		dialog "guess the number I'm thinking"
		dialog "of. Of course, there are a few"
		dialog "rules that limit the numbers"
		dialog "that I can choose from."
		wait()
		dialog "[Nia]"
		dialog "All the numbers that I make"
		dialog "up must be 3 digits, I can't"
		dialog "use 0 for any of the digits,"
		dialog "and I can't use the same"
		dialog "number for any of the digits"
		dialog "more than once."
		wait()
		dialog "[Nia]"
		dialog "So, for example, I can't"
		dialog "use the numbers 103, 112,"
		dialog "252, or 701. Those numbers"
		dialog "either have a 0, or they use"
		dialog "the same number in the digits"
		dialog "more than once. Got it now?"
		wait()
		dialog "[Nia]"
		dialog "Now, you only get 5 guesses,"
		dialog "and after each guess, I'll tell"
		dialog "you how many digits you guessed"
		dialog "correctly, followed by the number^FFFFFF ^000000 of correctly guessed digits in"
		dialog "the correct digit place."
		wait()
		dialog "[Nia]"
		dialog "For example, let's say the"
		dialog "number I come up with is 168."
		dialog "If your first guess is 678, then^FFFFFF  ^000000 you guessed two of the digits,"
		dialog "6 and 8, correctly. However,"
		dialog "only 8 is in the correct place."
		wait()
		dialog "[Nia]"
		dialog "You know, it'd be a good idea"
		dialog "if you try the Practice Mode"
		dialog "first. Then, when you're more"
		dialog "comfortable, play the actual"
		dialog "Number Match game. Don't forget^FFFFFF   ^000000 that speed counts for your score!"
		wait()
		dialog "[Nia]"
		dialog "Ah, if you happen to"
		dialog "make a new record in the"
		dialog "Number Match game, you'll"
		dialog "have your name recorded,"
		dialog "so don't miss this chance for"
		dialog "fame and maybe even fortune~"
		close()
		return
	elseif mresulta == 2 then
		dialog "[Nia]"
		dialog "Great, let's do a practice"
		dialog "Number Match game. Please"
		dialog "try to guess my number, okay?"
		dialog "If you want to cancel, then please enter a number greater than 1,000."
		wait()
		while(1) do
			local yagu100 = math.random(1,9)
			local yagu10 = math.random(1,9)
			local yagu1 = math.random(1,9)
			if (((yagu100 == yagu10) and (yagu100 == yagu1)) and (yagu10 == yagu1)) then
				break
			end
		end
		while(1) do
			while(1) do
				dlgwrite(100,999)
				if input == 0 then
				elseif error then
					dialog "[Nia]"
					dialog "You've canceled the"
					dialog "Number Match game."
					close()
					return
				end
				local input100 = input / 100
				local input10 = (input % 100) / 10
				local input1 = input % 10
				if (((input100 > 0) and (input10 > 0)) and (input1 > 0)) then
					if (((input100 == input10) and (input100 == input1)) and (input10 == input1)) then
						break
					end
				end
				dialog "[Nia]"
				dialog "You entered one of the"
				dialog "digits as 0, or input the"
				dialog "same numerical value in"
				dialog "the digits more than once."
				dialog "Please enter another guess."
				wait()
			end
			local yourname = PcName()
			dialog "[Nia]"
			dialog("^ff0000","+yourname+"^000000,"")
			--dialog("your guess is ^0000ff","+input100+"^000000","^0000ff"+input10+"^000000","^0000ff"+input1+"^000000."")
			dialog "Give me a moment to"
			dialog "come up with your results."
			wait()
			local strike = 0
			local ball = 0
			if (yagu100 == input100) then
				local strike = strike + 1
			end
			if (yagu10 == input10) then
				local strike = strike + 1
			end
			if (yagu1 == input1) then
				local strike = strike + 1
			end
			if (yagu100 == input10) or (yagu100 == input1) then
				local ball = ball + 1
			end
			if (yagu10 == input100) or (yagu10 == input1) then
				local ball = ball + 1
			end
			if (yagu1 == input100) or (yagu1 == input10) then
				local ball = ball + 1
			end
			if strike == 3 then
				dialog "[Nia]"
				dialog "Yes, the number that"
				--dialog("I guessed was ^ff0000","+yagu100+"^000000","^ff0000"+yagu10+"^000000","^ff0000"+yagu1+"^000000!"")
				dialog "Congratulations, you"
				dialog "just won this practice"
				dialog "game! Now you should be"
				dialog "ready for the real thing~"
				close()
				break
			else
				dialog "[Nia]"
				--dialog("Your guess has ^ff0000","+ball+"^000000","of","the"")
				--dialog("correct numbers. ^ff0000","+strike+"^000000","of","the"")
				dialog "digits in your guess have"
				dialog "the correct number in the"
				dialog "correct digit placement."
				dialog "Alright, try it again~"
				wait()
			end
		end
	elseif mresulta == 3 then
		dialog "[Nia]"
		dialog "Great, let's play Number Match!"
		dialog "You will have 5 chances to guess^FFFFFF  ^000000 the number that I'm thinking of."
		dialog "If you want to cancel, then please enter a number greater than 1,000."
		wait()
		while(1) do
			local yagu100 = math.random(1,9)
			local yagu10 = math.random(1,9)
			local yagu1 = math.random(1,9)
			if (((yagu100 == yagu10) and (yagu100 == yagu1)) and (yagu10 == yagu1)) then
				break
			end
		end
		local start_check = ServerTime
		local start_min = (start_check % 10000) / 100
		local start_sec = start_check % 100
		local start_time = ((start_min * 60) + start_sec)
		while(1) do
			while(1) do
				dlgwrite(100,999)
				if input == 0 then
				elseif error then
					dialog "[Nia]"
					dialog "You've canceled the"
					dialog "Number Match game."
					close()
					return
				end
				local input100 = input / 100
				local input10 = (input % 100) / 10
				local input1 = input % 10
				if (((input100 > 0) and (input10 > 0)) and (input1 > 0)) then
					if (((input100 == input10) and (input100 == input1)) and (input10 == input1)) then
						break
					end
				end
				dialog "[Nia]"
				dialog "You entered one of the"
				dialog "digits as 0, or input the"
				dialog "same numerical value in"
				dialog "the digits more than once."
				dialog "Please enter another guess."
				wait()
			end
			local yourname = PcName()
			local retry = retry + 1
			dialog "[Nia]"
			dialog("^ff0000","+yourname+"^000000,"")
			--dialog("your guess is ^0000ff","+input100+"^000000","^0000ff"+input10+"^000000","^0000ff"+input1+"^000000."")
			dialog "Give me a moment to"
			dialog "come up with your results."
			wait()
			local strike = 0
			local ball = 0
			if (yagu100 == input100) then
				local strike = strike + 1
			end
			if (yagu10 == input10) then
				local strike = strike + 1
			end
			if (yagu1 == input1) then
				local strike = strike + 1
			end
			if (yagu100 == input10) or (yagu100 == input1) then
				local ball = ball + 1
			end
			if (yagu10 == input100) or (yagu10 == input1) then
				local ball = ball + 1
			end
			if (yagu1 == input100) or (yagu1 == input10) then
				local ball = ball + 1
			end
			if strike == 3 then
				local end_check = ServerTime
				local end_min = (end_check % 10000) / 100
				local end_sec = end_check % 100
				local end_time = ((end_min * 60) + end_sec)
				if end_time < start_time then
					local end_time = end_time + 3600
				end
				local total_time = end_time - start_time
				local total_min = total_time / 60
				local total_sec = total_time % 60
				local name_record = GetGlobalStr "050908_minus1_yagu"
				local score_record = GetGlobalVar "050908_minus1_yagu"
				local score_min = score_record / 60
				local score_sec = score_record % 60
				local username = PcName()
				if score_record >= total_time 	then
					SetGlobalStr("050908_minus1_yagu","username")
					SetGlobalVar("050908_minus1_yagu","total_time")
					dialog "[Nia]"
					dialog "Great! You guessed"
					dialog "my number, which was"
					--dialog("^ff0000","+yagu100+"^000000","^ff0000"+yagu10+"^000000","^ff0000"+yagu1+"^000000.","You","finished","in"")
					--dialog("^ff0000","+total_min+"","minutes,","+total_sec+","seconds^000000,"")
					dialog "breaking the previous record"
					--dialog("of ^ff0000","+score_min+"","minutes,","+score_sec+","seconds^000000."")
					wait()
					dialog "[Nia]"
					dialog("^ff0000 "+name_record+"^000000")
					dialog "set that old record,"
					dialog "but now you are the"
					dialog "new person to beat in the"
					dialog "Match Game. Congratulations"
					dialog "for setting a new record!"
					close()
					return
				end
				dialog "[Nia]"
				dialog "Nice work, you guessed"
				dialog "my number! The answer, of"
				--dialog("course, was ^ff0000","+yagu100+"^000000","^ff0000"+yagu10+"^000000","^ff0000"+yagu1+"^000000.","You","managed"")
				dialog "to guess this number correctly"
				--dialog("in ^ff0000","+total_min+"","minutes,","+total_sec+","seconds^000000."")
				wait()
				dialog "[Nia]"
				--dialog("^ff0000","+name_record+"^000000","is"")
				dialog "the current Number Match"
				dialog "record holder with a time"
				--dialog("of ^ff0000","+score_min+"","minutes,","+score_sec+","seconds^000000"."")
				dialog "Good luck, and hopefully you"
				dialog "can break this record someday~"
				close()
				return
			break -- Script errors here, unknown symbol near break.
			else
				if (retry == 1) then
					dialog "[Nia]"
					--dialog("Your last guess had ^ff0000","+ball+"^000000"")
					dialog "of the correct numbers,"
					--dialog("and ^ff0000","+strike+"^000000","digits","in","your","guess"")
					dialog "had the correct number in"
					dialog "the correct digit placement."
					dialog "You have four guesses left."
				elseif (retry == 2) then
					dialog "[Nia]"
					--dialog("Your last guess had ^ff0000","+ball+"^000000"")
					dialog "of the correct numbers,"
					--dialog("and ^ff0000","+strike+"^000000","digits","in","your","guess"")
					dialog "had the correct number in"
					dialog "the correct digit placement."
					dialog "You have three guesses left."
				elseif (retry == 3) then
					dialog "[Nia]"
					--dialog("Your last guess had ^ff0000","+ball+"^000000"")
					dialog "of the correct numbers,"
					--dialog("and ^ff0000","+strike+"^000000","digits","in","your","guess"")
					dialog "had the correct number in"
					dialog "the correct digit placement."
					dialog "You have two guesses left."
				elseif (retry == 4) then
					dialog "[Nia]"
					--dialog("Your last guess had ^ff0000","+ball+"^000000"")
					dialog "of the correct numbers,"
					--dialog("and ^ff0000","+strike+"^000000","digits","in","your","guess"")
					dialog "had the correct number in"
					dialog "the correct digit placement."
					dialog "You only have one guess left..."
				else
					dialog "[Nia]"
					--dialog("Your last guess had ^ff0000","+ball+"^000000"")
					dialog "of the correct numbers,"
					--dialog("and ^ff0000","+strike+"^000000","digits","in","your","guess"")
					dialog "had the correct number in"
					dialog "the correct digit placement."
					--dialog("The answer was ^ff0000","+yagu100+"^000000","^ff0000"+yagu10+"^000000","^ff0000"+yagu1+"^000000."")
					close()
					break
					return
				end
				wait()
			end
		end
	elseif mresulta == 4 then
		local name_record = GetGlobalStr "050908_minus1_yagu"
		local score_record = GetGlobalVar "050908_minus1_yagu"
		local score_min = score_record / 60
		local score_sec = score_record % 60
		dialog "[Nia]"
		--dialog("^ff0000","+name_record+"^000000","is","the"")
		dialog "record holder for the Number"
		dialog "Match game with a time of"
		--dialog("^ff0000","+score_min+"","minutes,","+score_sec+","seconds^000000."")
		close()
		return
	elseif mresulta == 5 then
		dialog "[Nia]"
		dialog "Take care of yourself,"
		dialog "adventurer. If you ever"
		dialog "feel like playing a Number"
		dialog "Match game, come and talk"
		dialog "to me, alright? See you~"
		close()
		return
	end
end
