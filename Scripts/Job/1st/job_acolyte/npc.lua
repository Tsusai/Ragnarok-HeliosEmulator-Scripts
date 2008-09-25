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
--| 24/09/2008                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("prt_church","Cleric",spr_1_M_PASTOR,184,41,4,0,0,"prt_church_Cleric_18441")
function prt_church_Cleric_18441()
	local name = PcName()
	if getvar(job_karma) > 0 then
		if ((getvar(job_karma) == 2) or (getvar(job_karma) == 8)) then
			if getvar(VAR_JOB) == NOVICE_H then
				dialog "[Father Mareusis]"
				dialog "Ah, I sense you have endured"
				dialog "a past life experience. You must have learned many things before entering Valhalla."
				wait()
				if getvar(VAR_NV_BASIC) < 9 then
					dialog "[Father Mareusis]"
					dialog "Unfortunately, I don't think you're ready to become an Acolyte yet. Please finish learning all of the Basic Skills first."
					wait()
					dialog "[Father Mareusis]"
					dialog "In the meantime,"
					dialog "I will wait until"
					dialog "you are ready."
					dialog "May God be"
					dialog "with you."
					close()
					return
				end
				dialog "[Father Mareusis]"
				dialog "Well, I welcome you"
				dialog "back from Valhalla and"
				dialog "wish you luck on your"
				dialog "new life's journey."
				wait()
				--EventDelSkill NV_TRICKDEAD
				jobchange(4)
				--EventAddSkill("AL_HOLYLIGHT",1)
				dialog "[Father Mareusis]"
				dialog "Now, venture forth and seek those who need your help. May God light your path."
				close()
				return
			else
				dialog "[Father Mareusis]"
				dialog "Now, venture forth to seek people who need your help. May God enlighten your way."
				close()
				return
			end
		else
			dialog "[Father Mareusis]"
			dialog "I sense that you have endured a past life experience. You must have learned many things before entering Valhalla."
			wait()
			dialog "[Father Mareusis]"
			dialog "However, I can tell that you are not suited to be an Acolyte. Please remember who you were in your past life and find your path."
			close()
			return
		end
	end
	dialog "[Father Mareusis]"
	dialog "What is it that you seek?"
	wait()
	local mresulta = menu("Father, I want to be a Acolyte.","Acolyte Requirements.","Just looking around.")
	if mresulta == 1 then
		if getvar(VAR_JOB) == ACOLYTE then
			dialog "[Father Mareusis]"
			dialog "Are you feeling okay today? I can tell by your attire that you are already an Acolyte. You're not joking around, are you?"
			close()
			return
		end
		if getvar(VAR_JOB) > NOVICE then
			dialog "[Father Mareusis]"
			dialog "I'm sorry, but we can only accept Novices as applicants for the job change to Acolyte."
			close()
			return
		end
		if getvar(job_acolyte_q) == 0 then
			dialog "[Father Mareusis]"
			dialog "Do you truly"
			dialog "wish to become"
			dialog "a servant of God?"
			wait()
			local mresultb = menu("Yes Father, I do.","Nope, I lied.")
			if mresultb == 1 then
				dialog "[Father Mareusis]"
				dialog("Good. I accept ","+","name","+","'s will to become an Acolyte. You understand that you must do penance before you can become a servant of God, right?")
				wait()
				local acolyte_cho = math.random(1,3)
				dialog "[Father Mareusis]"
				dialog "Well, I will"
				dialog "give you a mission..."
				if acolyte_cho == 1 then
					setitem("job_acolyte_q",2)
					dialog "Please visit ^000077Father Rubalkabara^000000, a member of the Prontera Parish, and return here. He has been practicing asceticism in the ^000077Relics NorthEast of Prontera City^000000."
				elseif acolyte_cho == 2 then
					setitem("job_acolyte_q",3)
					dialog "Please visit ^000077Mother Mathilda^000000 and then return to me. She has been practicing asceticism near ^000077Morroc Town, SouthWest of Prontera City^000000."
				else
					setitem("job_acolyte_q",4)
					dialog "Please visit ^000077Father Yosuke^000000 and return here. He has been practicing asceticism around ^000077a bridge somewhere NorthWest of Prontera^000000."
				end
				wait()
				dialog "[Father Mareusis]"
				dialog "May the grace of God light your path and guide you during your journey of penance."
				close()
				return
			elseif mresultb == 2 then
				dialog "[Father Mareusis]"
				dialog "You lied?"
				dialog "It is good that you"
				dialog "have confessed your"
				dialog "wrongdoing. Go in"
				dialog "peace, my son."
				close()
				return
			end
		end
		dialog "[Father Mareusis]"
		dialog "Oh, you've come back. Let me check and see if you are ready to serve God. Let's see..."
		wait()
		dialog "[Father Mareusis]"
		if getvar(VAR_NV_BASIC) < 9 then
			dialog "Good Lord! Haven't you accomplished the Basic Training yet?! It's important that you finish that!"
			wait()
			dialog "[Father Mareusis]"
			dialog "You should have trained more! Go back and make sure you reach Novice Job Level 9 and learn all of the Basic Skills!"
			close()
			return
		end
		if getvar(job_acolyte_q) < 5 then
			dialog "Oh? I can't find your name on the Registration List."
			wait()
			if getvar(job_acolyte_q) == 2 then
				dialog "[Father Mareusis]"
				dialog "Please visit ^000077Father Rubalkabara^000000, a member of the Prontera Parish, and return here."
				wait()
				dialog "[Father Mareusis]"
				dialog "He has been practicing asceticism in the ^000077Relics at the NorthEast of Prontera City^000000."
			elseif getvar(job_acolyte_q) == 3 then
				dialog "[Father Mareusis]"
				dialog "Please Visit ^000077Mother Mathilda^000000 and return here to me."
				wait()
				dialog "[Father Mareusis]"
				dialog "She has been practicing asceticism near ^000077Morroc Town, located SouthWest of Prontera City^000000."
			elseif getvar(job_acolyte_q) == 4 then
				dialog "[Father Mareusis]"
				dialog "Please visit ^000077 Father Yosuke ^000000 and return here to me."
				wait()
				dialog "[Father Mareusis]"
				dialog "He has been practicing asceticism near a ^000077bridge somewhere to the NorthWest of Prontera^000000."
			end
			wait()
			dialog "[Father Mareusis]"
			dialog "May the grace of God brighten your path and guide you on your journey of penance."
			close()
			return
		end
		dialog "Hmm..."
		dialog "Your name is on the list and you've proven your qualification."
		wait()
		dialog "[Father Mareusis]"
		dialog "I am proud to say that you are now ready to become an Acolyte!"
		wait()
		setitem("job_acolyte_q",0)
		--EventDelSkill NV_TRICKDEAD
		jobchange(4)
		dialog "[Father Mareusis]"
		dialog "Always remember to be thankful to God, who is taking care of us all the time."
		wait()
		dialog "[Father Mareusis]"
		dialog "Always use your gifts to serve Him by helping others. In chaos and times of difficulty, face your hardships with unwavering faith."
		wait()
		dialog "[Father Mareusis]"
		dialog "Lastly, I want to sincerely congratulate you on persevering through your trial of penance."
		close()
		return
	elseif mresulta == 2 then
		dialog "[Father Mareusis]"
		dialog "Do you wish to become an Acolyte? You must fulfill two requirements."
		wait()
		dialog "[Father Mareusis]"
		dialog "First, you have to reach at least Novice Job Level 9 and learn all of the Basic Skills. Second, you will be given a trial of penance to overcome."
		if getvar(job_acolyte_q) > 0 then
			if getvar(job_acolyte_q) == 2 then
				wait()
				dialog "[Father Mareusis]"
				dialog "For your trial, please visit ^000077Father Rubalkabara ^000000 and then return here to me."
				wait()
				dialog "[Father Mareusis]"
				dialog "He is practicing asceticism in the ^000077Relics at the NorthEast of Prontera City^000000."
			elseif getvar(job_acolyte_q) == 3 then
				wait()
				dialog "[Father Mareusis]"
				dialog "For your trial, please visit ^000077Mother Mathilda^000000 and return here to me."
				wait()
				dialog "[Father Mareusis]"
				dialog "She has been practicing asceticism near ^000077Morroc, located to the SouthWest of Prontera City^000000."
			else
				wait()
				dialog "[Father Mareusis]"
				dialog "For your trial, please visit ^000077Father Yosuke^000000 and return here to me."
				wait()
				dialog "[Father Mareusis]"
				dialog "He has been practicing asceticism around a bridge somewhere ^000077NorthWest of Prontera^000000."
			end
			wait()
			dialog "[Father Mareusis]"
			dialog "May the grace of God light your path and guide you on your journey of penance."
		else
			wait()
			dialog "[Father Mareusis]"
			dialog "The destination for this trial will be decided once you fill the application form."
		end
		wait()
		dialog "[Father Mareusis]"
		dialog "Please come back after fulfilling the two requirements I've asked of you. As long as your desire to serve God and others is sincere, you will be able to make it."
		close()
	elseif mresulta == 3 then
		return
	end
end

npc("prt_fild03","Ascetic",spr_4_M_ORIENT02,365,255,2,0,0,"prt_fild03_Ascetic_365255")
function prt_fild03_Ascetic_365255()
	local name = PcName()
	if getvar(VAR_JOB) == NOVICE then
		if getvar(job_acolyte_q) == 6 then
			dialog "[Father Rubalkabara]"
			dialog "Please take care. They should know that you've met me by the time you arrive at the Prontera Sanctuary."
			wait()
			dialog "[Father Rubalkabara]"
			dialog "I've sent a carrier pigeon with a message. I hope it will arrive there safely..."
			close()
			return
		end
		if getvar(job_acolyte_q) > 0 then
			if getvar(job_acolyte_q) == 2 then
				dialog "[Father Rubalkabara]"
				dialog "Oh...? You must be the one who aspires to become an Acolyte. I've already received news from the Sanctuary that you might be coming."
				wait()
				dialog "[Father Rubalkabara]"
				dialog("Now, your name was ","+","name","+",", right? Excellent, thank you for visiting me.")
				wait()
				dialog "[Father Rubalkabara]"
				dialog "I believe you've been told much about Acolytes from Friar Mareusis. Plus, there's plenty of helpful people in the Prontera Sanctuary."
				wait()
				dialog "[Father Rubalkabara]"
				dialog "I guess there's really no need for me to teach you much. Besides, I'm sure your someone from your generation may have trouble listening to an old man like me. Hahaha~"
				wait()
				dialog "[Father Rubalkabara]"
				dialog "Still, lessons may come from the places you'd least expect. God loves to teach his children in strange ways. You'll see."
				wait()
				dialog "[Father Rubalkabara]"
				dialog "Well, I'll send the message telling them that you've come to visit me. So, you may now return to the Prontera Sanctuary."
				wait()
				dialog "[Father Rubalkabara]"
				dialog "Farewell."
				close()
				checkpoint("prt_fild03",361,255)
				setitem("job_acolyte_q",6)
				return
			else
				dialog "[Father Rubalkabara]"
				dialog "Oh..."
				dialog "Are you one of the"
				dialog "Acolyte applicants...?"
				dialog "Let's see..."
				wait()
				dialog "[Father Rubalkabara]"
				dialog("Your name is ","+","name","+","?")
				dialog "I don't think your name"
				dialog "is on my list. Hmmm..."
				wait()
				dialog "[Father Rubalkabara]"
				dialog "Why don't you go back to the Prontera Sanctuary and check again?"
				close()
				return
			end
		else
			dialog "[Father Rubalkabara]"
			dialog "Huh? What brings you here? This is a very dangerous place for a Novice like yourself!"
		end
		close()
		return
	elseif getvar(VAR_JOB) == ACOLYTE then
		if getvar(job_priest_q) > 0 then
			if getvar(job_priest_q) == 1 then
				dialog "[Father Rubalkabara]"
				dialog "Ah yes, so you're the young Acolyte who wishes to become a Priest."
				wait()
				dialog "[Father Rubalkabara]"
				dialog "I've received the message from Bishop Paul. Since you made the pilgrimage, I hope you accomplish your goal of becoming a Priest."
				wait()
				dialog "[Father Rubalkabara]"
				dialog "Also, if you have a chance, please visit this abbey again. It's a sacred place for our Church."
				wait()
				dialog "[Father Rubalkabara]"
				dialog "Well then, please head to your next destination for your pilgrimage. Be safe in your travels."
				close()
				checkpoint("prt_fild03",361,255)
				setitem("job_priest_q",2)
				return
			elseif getvar(job_priest_q) == 2 then
				dialog "[Father Rubalkabara]"
				dialog "Please be hurry to the next destination for your pilgrimage. I hope you become a Priest soon."
				close()
				return
			else
				dialog "[Father Rubalkabara]"
				dialog "May I ask why you have returned? Please go back and continue your religious practice."
				close()
				return
			end
		else
			dialog "[Father Rubalkabara]"
			dialog "I have no idea what brought you here, but please excuse me."
			close()
			return
		end
	else
		if getvar(VAR_JOB) == PRIEST then
			dialog "[Father Rubalkabara]"
			dialog "Greetings."
			wait()
			dialog "[Father Rubalkabara]"
			dialog "Welcome to the Deep. Feel free to sit and contemplate God's message with me. This place is beautiful, even if danger accompanies its sense of serenity..."
			close()
			return
		else
			dialog "[Father Rubalkabara]"
			dialog "Oh ho..."
			dialog "Have you come into the Deep here for training? Or are you just a Wanderer?"
			wait()
			dialog "[Father Rubalkabara]"
			dialog "Whoever you are, please take care of yourself. The monsters in here are shockingly strong, contrary to their cute appearance."
			close()
			return
		end
	end
end

npc("moc_fild07","Ascetic",spr_4_F_SISTER,41,355,4,0,0,"moc_fild07_Ascetic_41355")
function moc_fild07_Ascetic_41355()
	local name = PcName()
	if getvar(VAR_JOB) == NOVICE then
		if getvar(job_acolyte_q) == 7 then
			dialog "[Mother Marthilda]"
			dialog "I will send a carrier pigeon to the Prontera Sanctuary. When you return, the Priest there should already have received my message."
			wait()
			dialog "[Mother Marthilda]"
			dialog "I will pray to God, and hope that you become an Acolyte soon."
			close()
			return
		end
		if getvar(job_acolyte_q) > 0 then
			if getvar(job_acolyte_q) == 3 then
				dialog "[Mother Marthilda]"
				dialog "Ah, you must be one of the Acolyte applicants. I sincerely welcome you."
				wait()
				dialog "[Mother Marthilda]"
				dialog("What is your name? ","+","name","+","? Let's see... Ah, you're on my list.")
				wait()
				dialog "[Mother Marthilda]"
				dialog("I will send a message to the Sanctuary confirming that you, ","+","name","+"," visited me and completed your penance.")
				wait()
				dialog "[Mother Marthilda]"
				dialog "Please return to the Prontera Sanctuary and speak to the Priest in charge."
				close()
				checkpoint("moc_fild07",35,355)
				setitem("job_acolyte_q",7)
				return
			else
				dialog "[Mother Marthilda]"
				dialog "Ah...!"
				dialog "You must be one"
				dialog "of the Acolyte applicants."
				dialog "I sincerely welcome you."
				wait()
				dialog "[Mother Marthilda]"
				dialog "Now, what is your name?"
				--dialog("+""name""+""? Let's see...")
				wait()
				dialog "[Mother Marthilda]"
				dialog "Hmm..."
				dialog "It seems your name"
				dialog "is not on my list..."
				wait()
				dialog "[Mother Marthilda]"
				dialog "Perhaps you should return to the Prontera Sanctuary and check the destination for your penance trial once again."
				close()
				return
			end
		else
			dialog "[Mother Marthilda]"
			dialog "..."
			close()
			return
		end
	elseif getvar(VAR_JOB) == ACOLYTE then
		if getvar(job_priest_q) > 0 then
			if getvar(job_priest_q) == 1 then
				dialog "[Mother Marthilda]"
				dialog "Hmm..."
				dialog "It seems you're"
				dialog "training to become"
				dialog "a Priest."
				wait()
				dialog "[Mother Marthilda]"
				dialog "However, at this point in your pilgrimage, I am not the person that you should be visiting."
				wait()
				dialog "[Mother Marthilda]"
				dialog "Perhaps you should ask Bishop Paul or Sister Cecilia once again. Well, may God be with you..."
				close()
				return
			elseif getvar(job_priest_q) == 2 then
				dialog "[Mother Marthilda]"
				dialog "Ah, are you"
				dialog "a Priest trainee...?"
				dialog "Welcome!"
				wait()
				dialog "[Mother Marthilda]"
				dialog "We Priests are obliged to spread the message of God to"
				dialog "the peoples of the Earth."
				wait()
				dialog "[Mother Marthilda]"
				dialog "After you become a Priest, your travels may take you to the Morroc Pyramids. I hope that you may release the Undead there from the evil to which they are bound."
				wait()
				dialog "[Mother Marthilda]"
				dialog "Well then..."
				dialog "I shall pray to"
				dialog "God for safety"
				dialog "on your journey."
				close()
				checkpoint("moc_fild07",35,355)
				setitem("job_priest_q",3)
				return
			elseif getvar(job_priest_q) == 3 then
				dialog "[Mother Marthilda]"
				dialog "Please leave soon, and"
				dialog "continue your training."
				close()
				return
			else
				dialog "[Mother Marthilda]"
				dialog "May I ask you the reason you came back? Please continue your training."
				close()
				return
			end
		else
			dialog "[Mother Marthilda]"
			dialog "May God"
			dialog "be with you..."
			close()
			return
		end
	else
		if getvar(VAR_JOB) == PRIEST then
			dialog "[Mother Marthilda]"
			dialog "Hello there~"
			wait()
			dialog "[Mother Marthilda]"
			dialog "How is your practice coming along? I certainly hope you're enjoying living in the grace of God."
			close()
			return
		else
			dialog "[Mother Marthilda]"
			dialog "May God"
			dialog "be with you..."
			close()
			return
		end
	end
end

npc("prt_fild00","Ascetic",spr_4W_M_02,208,218,6,0,0,"prt_fild00_Ascetic_208218")
function prt_fild00_Ascetic_208218()
	local name = PcName()
	if getvar(VAR_JOB) == NOVICE then
		if getvar(job_acolyte_q) == 8 then
			dialog "[Father Yosuke]"
			dialog "What?"
			wait()
			dialog "[Father Yosuke]"
			dialog "Have you any more business with me?! You don't! Go back to the Sanctuary now!"
			close()
			return
		end
		if getvar(job_acolyte_q) > 0 then
			if getvar(job_acolyte_q) == 4 then
				dialog "[Father Yosuke]"
				dialog "Hey."
				dialog "Whatever you are,"
				dialog "you look like an"
				dialog "Acolyte applicant."
				dialog "Right?"
				wait()
				dialog "[Father Yosuke]"
				dialog "Not bad, not bad. You withstood the penance trial pretty well."
				dialog "So what's your name?"
				wait()
				dialog "[Father Yosuke]"
				--dialog(,"+","name","+",", huh?")
				wait()
				dialog "[Father Yosuke]"
				dialog("Okay. I'll send a message to the Sanctuary that you, ","+","name","+",", came to visit me.")
				wait()
				dialog "[Father Yosuke]"
				dialog "Now go back to the Santuary and finish becoming an Acolyte, kid."
				close()
				checkpoint("prt_fild00",206,230)
				setitem("job_acolyte_q",8)
				return
			else
				dialog "[Father Yosuke]"
				dialog "Hey."
				dialog "You look like an Acolyte Applicant. Am I right?"
				wait()
				dialog "[Father Yosuke]"
				dialog "Not bad at all, you've made it all the way here from Prontera. So what's your name, kid?"
				wait()
				dialog "[Father Yosuke]"
				--dialog(,"+","name","+",", huh? Why isn't your name on my list?")
				wait()
				dialog "[Father Yosuke]"
				dialog "You probably made a mistake. Go back to the Santuary, and check with the Bishop."
				close()
				return
			end
		else
			dialog "[Father Yosuke]"
			dialog "You..."
			dialog "Novice."
			dialog "There something"
			dialog "you wanna tell me?"
			close()
			return
		end
	elseif getvar(VAR_JOB) == ACOLYTE then
		if getvar(job_priest_q) > 0 then
			if getvar(job_priest_q) == 1 then
				dialog "[Father Yosuke]"
				dialog "Hmm..."
				dialog "A Priest trainee, eh?"
				wait()
				dialog "[Father Yosuke]"
				dialog "Well, you got the wrong person. If you're supposed to meet up with me at all, it'd be later."
				wait()
				dialog "[Father Yosuke]"
				dialog "But that's your own fault."
				dialog "Now, go back to Church, kid."
				close()
				return
			elseif getvar(job_priest_q) == 2 then
				dialog "[Father Yosuke]"
				dialog "Hmm..."
				dialog "A Priest trainee, eh?"
				wait()
				dialog "[Father Yosuke]"
				dialog "Well, you got the wrong person. If you're supposed to meet up with me at all, it'd be later."
				wait()
				dialog "[Father Yosuke]"
				dialog "But that's your own fault. Go back to Church."
				close()
				return
			elseif getvar(job_priest_q) == 3 then
				dialog "[Father Yosuke]"
				dialog "Hmm."
				dialog "A Priest"
				dialog "trainee, eh? "
				dialog "Welcome."
				wait()
				dialog "[Father Yosuke]"
				dialog "I won't say"
				dialog "anything more."
				dialog "Just devote your"
				dialog "life to God."
				wait()
				dialog "[Father Yosuke]"
				dialog "Now go back to church."
				dialog "Hereby, the first of"
				dialog "your trials is now"
				dialog "completed."
				close()
				checkpoint("prt_fild00",206,230)
				setitem("job_priest_q",4)
				return
			elseif getvar(job_priest_q) == 4 then
				dialog "[Father Yosuke]"
				dialog "I told you to go back to church."
				dialog "Or do you want to live with me here for the rest of your life...?"
				close()
				return
			else
				dialog "[Father Yosuke]"
				dialog "Just go be a Priest. This isn't a playground for kids."
				close()
				return
			end
		else
			dialog "[Father Yosuke]"
			dialog "...Acolyte, you don't have any business with me here."
			close()
			return
		end
	else
		if getvar(VAR_JOB) == PRIEST then
			dialog "[Father Yosuke]"
			dialog "Hey..."
			wait()
			dialog "[Father Yosuke]"
			dialog "If you like, come sit here with me and meditate the great truths. God's majesty is truly inspiring..."
			close()
			return
		else
			dialog "[Father Yosuke]"
			dialog "Do you have anything to say? Because unfortunately for you,"
			dialog "I don't any replies."
			close()
			return
		end
	end
end
