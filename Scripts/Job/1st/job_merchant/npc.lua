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
--| 28/09/2008                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("alberta_in","Merchant",spr_4_M_04,53,43,6,0,0,"alberta_in_Merchant_5343")
function alberta_in_Merchant_5343()
	local name = PcName()
	if getvar(job_karma) < 0 then
		if ((getvar(VAR_JOB) == NOVICE_H) and ((getvar(job_karma) == 4) or (getvar(job_karma) == 10))) then
			dialog "[Chief Mahnsoo]"
			dialog "Long time no see!"
			dialog "Hey, you didn't quit"
			dialog "your business, did you?"
			dialog "What happened?"
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Whoa..."
			dialog "You've actually been to Valhalla?! Wow, you've come a long way..."
			wait()
			if getvar(VAR_NV_BASIC) < 9 then
				dialog "[Chief Mahnsoo]"
				dialog "Hmmm..."
				dialog "It seems that you're not ready to become a Merchant again. Go finish learning the Basic Novice Skills first."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "Don't worry, we'll always have a Merchant position open for you. Just come back when you're ready, okay?"
				close()
				return
			end
			dialog "[Chief Mahnsoo]"
			dialog "I guess it's destiny that we meet like this once more. Alright. Once again, let me change you into a Merchant!"
			wait()
			--EventDelSkill NV_TRICKDEAD
			jobchange(5)
			--EventAddSkill("MC_LOUD",1)
			--EventAddSkill("MC_CHANGECART",1)
			--EventAddSkill("MC_CARTREVOLUTION",1)
			dialog "[Chief Mahnsoo]"
			dialog "Ah~ How nostalgic. Just like old times! Alright, do your best!"
			close()
			return
		else
			dialog "[Chief Mahnsoo]"
			dialog "^333333*Sigh*^000000"
			dialog "I'm so bored..."
			dialog "When will I hear from my lovely Blossom?"
			close()
			return
		end
	end
	if getvar(VAR_JOB) == MERCHANT then
		dialog "[Chief Mahnsoo]"
		dialog "Hello there!"
		dialog "How do you like"
		dialog "being a Merchant?"
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "Having a way with"
		dialog "money certainly"
		dialog "has its perks,"
		dialog "does it not?"
		close()
		return
	elseif ((getvar(VAR_JOB) < MERCHANT) and (getvar(VAR_JOB) < NOVICE)) then
		dialog "[Chief Mahnsoo]"
		dialog "We Merchants hate people who are two faced. It's bad for business."
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "People who always try to take advantage of other people by selling things at a ridiculous price just so they can make money that they'll waste are the worst."
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "Well, in any case, we only accept Novices for job changes to the Merchant class. But I appreciate your interest in what we do."
		close()
		return
	elseif getvar(job_merchant_q) == 9 then
		local name = PcName()
		dialog "[Chief Mahnsoo]"
		dialog "Hello there,"
		--dialog(,"+","name","+"."")
		setitem("job_merchant_q",0)
		setitem("job_merchant_q2",0)
		setitem("quest_alb_01",0)
		dialog "Unfortunately, you failed to earn your Merchant License this time."
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "I'll erase your records, so come back anytime when you want to reapply."
		close()
		return
	elseif ((getvar(job_merchant_q) == 8) or (getvar(job_merchant_q) == 7)) then
		dialog "[Chief Mahnsoo]"
		dialog "Hello there,"
		--dialog(,"+","name","+"."")
		dialog "I'm pleased to tell you"
		dialog "that I have good news!"
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "The Merchant Guild accepted your application. You've proven that you are fully qualified to become a Merchant."
		if getvar(job_merchant_q) == 7 then
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "The only thing to take care of is your Membership Fee."
			dialog "Are you ready?"
			wait()
			local mresulta = menu("Pay the rest of the 500 Zeny","Quit")
			if mresulta == 1 then
				dialog "[Chief Mahnsoo]"
				if getvar(VAR_MONEY) < 500 then
					dialog "Hmmm..."
					dialog "I suppose you currently don't have enough zeny to pay the rest of your Membership fee right now."
					wait()
					dialog "[Chief Mahnsoo]"
					dialog "Please return when you have earned the 500 zeny that you need to become a Merchant."
					return
				end
				dropgold(500)
				dialog "Ah yes...!"
				dialog "Now your"
				dialog "membership"
				dialog "is paid in full."
			elseif mresulta == 2 then
				dialog "[Chief Mahnsoo]"
				dialog "I suppose you need some time to gather some zeny to pay your membership fee. Please come"
				dialog "back as soon as you're ready."
				close()
				return
			end
		end
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "Congratulations!"
		jobchange(5)
		dialog "I'm very pleased that you are joining the Merchant Guild and hope that you will play an active part in Rune-Midgarts' economy."
		wait()
		if getvar(quest_alb_01) == 1 then
			dialog "[Chief Mahnsoo]"
			dialog "*Ahem* Aaaaand let me give you a little bit of money for delivering that message to Blossom for me."
			dialog "I hope you'll help me again next time~"
			getgold(200)
			setitem("quest_alb_01",2)
		else
			dialog "[Chief Mahnsoo]"
			dialog "The message you were supposed to deliver as per my request? You've forgotten about that? Oh well. Good work!"
		end
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "Our goal is to control 20 % of the world's income! We're going to need young, eager people like you!"
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "But overall, we'll also be happy just to make loads of money."
		dialog "But we all know that~"
		close()
		return
	elseif ((getvar(job_merchant_q) <= 6) and (getvar(job_merchant_q) < 0)) then
		dialog "[Chief Mahnsoo]"
		if ((getvar(job_merchant_q2) == 1) or (getvar(job_merchant_q2) == 2)) then
			dialog "First, get the delivery package from the storehouse, and then take it to the former Swordman's Association in Prontera."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "When you get there, give the package to the Kafra Employee stationed near there. Her name is Blossom. Did you get all that?"
			wait()
			dialog "[Chief Mahnsoo]"
			if getvar(job_merchant_q2) == 1 then
				dialog "Remember, the Serial Number of the package is ^3355FF2485741^000000."
			else
				dialog "Remember, the Serial Number of the package is ^3355FF2328137^000000."
			end
		elseif ((getvar(job_merchant_q2) == 3) or (getvar(job_merchant_q2) == 4)) then
			dialog "First, get the delivery package from the storehouse, and then take it to the Mage Guild in Geffen."
			wait()
			if getvar(job_merchant_q2) == 3 then
				dialog "[Chief Mahnsoo]"
				dialog "When you get there, give the package to the Mage Guildsman in charge. Remember, the packages Serial Number is ^3355FF2989396^000000."
			else
				dialog "[Chief Mahnsoo]"
				dialog "When you get there, give the package to the Mage Guildsman in charge. Remember, the packages Serial Number is ^3355FF2191737^000000."
			end
		elseif ((getvar(job_merchant_q2) == 5) or (getvar(job_merchant_q2) == 6)) then
			dialog "First, get the delivery package from the storehouse, and then take it to Morroc."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "You'll have to find Java Dullihan, the Dyemaker, so that you can deliver the product he ordered."
			if getvar(job_merchant_q2) == 5 then
				dialog "[Chief Mahnsoo]"
				dialog "But he's a little forgetful, so give it to one of his students. Remember, the package's Serial Number is ^3355FF3012685^000000."
			else
				dialog "[Chief Mahnsoo]"
				dialog "But he's a little forgetful, give it to one of his students. Remember, the package's Serial Number is ^3355FF3487372^000000."
			end
		elseif ((getvar(job_merchant_q2) == 7) or (getvar(job_merchant_q2) == 8)) then
			dialog "First, get the package from the storehouse, and then give it to the Kafra Employee stationed on Byalan Island. Her name is Blossom."
			if getvar(job_merchant_q2) == 7 then
				dialog "Remember, the package's Serial Number is ^3355FF3318702^000000."
			else
				dialog "Remember, the package's Serial Number is ^3355FF3543625^000000."
			end
		end
		if ((getvar(job_merchant_q2) == 7) or (getvar(job_merchant_q2) == 8)) then
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Aaaannnnd..."
			dialog "Don't forget to deliver that message for me~"
		end
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "Don't forget your destination and the package's Serial Number."
		dialog "You'll need to tell them"
		dialog "to the storekeeper."
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "The storehouse is in the room"
		dialog "to my right. There, you can talk"
		dialog "to the storekeeper, and he'll"
		dialog "help you out."
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "After you make the delivery, return to the storehouse and give the receipt to the storekeeper."
		dialog "Then, come back"
		dialog "and see me."
		wait()
		dialog "[Chief Mahnsoo]"
		dialog "Is that clear?"
		dialog "Alright, that's"
		dialog "the spirit."
		dialog "Take care!"
		close()
		return
	elseif getvar(job_merchant_q) == 0 then
		dialog "[Chief Mahnsoo]"
		dialog "So, what brings you to"
		dialog "the Merchant Association?"
		dialog "Is there anything"
		dialog "I can help you with?"
		wait()
		local mresulta = menu("I want to be a Merchant.","Tell me about Merchants.","Tell me the requirements.","Nope.")
		if mresulta == 1 then
			dialog "[Chief Mahnsoo]"
			dialog "Do you want to"
			dialog "be a Merchant?"
			dialog "Well..."
			wait()
			if getvar(VAR_NV_BASIC) < 9 then
				dialog "[Chief Mahnsoo]"
				dialog "First, you have to be a Novice with Job Level 10. Once you do that, make sure you learn all of the Basic Skills."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "We're not just"
				dialog "simple money makers!"
				dialog "We pride ourselves on having standards and only accepting qualified applicants!"
				close()
				return
			end
			dialog "[Chief Mahnsoo]"
			dialog "Alright, you'll need to fill out this application and prepare 1,000 Zeny for your Membership Fee."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Oh...!"
			dialog "If you don't have all the money,"
			dialog "I can just take 500 Zeny now."
			dialog "You can pay the rest after you"
			dialog "pass the test and earn your"
			dialog "Merchant Guild License."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "So what do you think?"
			dialog "Are you ready to join now?"
			wait()
			local mresultb = menu("Yes, I will.","Ummm, maybe later...")
			if mresultb == 1 then
				dialog "[Chief Mahnsoo]"
				dialog "Let me check if you"
				dialog "filled out everything"
				dialog "on your application form..."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "Hmm... "
				--dialog(,"+","name","+","...")
				dialog "That's a nice name."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "This application will"
				dialog "only be registered once"
				dialog "the Membership Fee is paid."
				dialog "How do you wish to"
				dialog "handle the fee?"
				wait()
				local mresultc = menu("Pay all 1,000 Zeny now!","Two payments of 500 Zeny.","Quit")
				if mresultc == 1 then
					dialog "[Chief Mahnsoo]"
					if getvar(VAR_MONEY) >= 1000 then
						setitem("job_merchant_q",2)
						dropgold(1000)
						dialog "Alright~"
						dialog "That's 1,000 zeny."
						dialog "Excellent, excellent."
					else
						dialog "It seems don't have enough zeny to pay all of the fee right now. Why don't you just pay 500 zeny now? Think about it."
						close()
						return
					end
				elseif mresultc == 2 then
					dialog "[Chief Mahnsoo]"
					if getvar(VAR_MONEY) >= 500 then
						setitem("job_merchant_q",1)
						dropgold(500)
						dialog "Let's see..."
						dialog "That's 500 Zeny. Although I don't think splitting payment is a good idea for any Merchant, it's alright since you're still learning."
					else
						dialog "Hmm..."
						dialog "It seems you don't have the funds to pay half of the membership fee. Please come back once you collect the zeny that you need."
						close()
						return
					end
				elseif mresultc == 3 then
					dialog "[Chief Mahnsoo]"
					dialog "Feel free to return anytime"
					dialog "when you are ready, alright?"
					close()
					return
				end
			elseif mresultb == 2 then
				dialog "[Chief Mahnsoo]"
				dialog "You don't have enough zeny now? That's no problem. Take your time and come back when you're"
				dialog "ready, okay?"
				close()
				return
			end
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Alright, you're now on the list of applicants. Ah, before I get started let me say just one thing."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "There are some dumb and greedy people out there who do not know what it means to be a Merchant."
			dialog "I hope you won't turn out to be like them, will you?"
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Now, let me"
			dialog "explain what you"
			dialog "need to do for the"
			dialog "Merchant License Test."
			local merchant_job = math.random(1,4)
			wait()
			dialog "[Chief Mahnsoo]"
			if merchant_job == 1 then
				dialog "First, get the delivery package from the storehouse, then go to the former Swordman's Association in Prontera."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "When you get there, visit the Kafra Employee stationed there. Her name is Blossom. Did you get"
				dialog "all of that?"
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "Remember..."
				--if lot[1,2] then
					dialog "The package's"
					dialog "Serial Number is"
					dialog "^3355FF2485741^000000."
					setitem("job_merchant_q2",1)
				else
					dialog "The package's"
					dialog "Serial Number is"
					dialog "^3355FF2328137^000000."
					setitem("job_merchant_q2",2)
				end
			elseif merchant_job == 2 then
				dialog "First, get the delivery package from the storehouse, and then go to the Mage Guild in Geffen. When you get there, visit the Mage Guildsman in charge."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "Remember..."
				--if lot[1 2] then
					dialog "The package's"
					dialog "Serial Number is"
					dialog "^3355FF2989396^000000."
					setitem("job_merchant_q2",3)
				else
					dialog "The package's"
					dialog "Serial Number is"
					dialog "^3355FF2191737^000000."
					setitem("job_merchant_q2",4)
				end
			elseif merchant_job == 3 then
				dialog "First, get the delivery package from the storehouse, and then go to Morroc. There you must find Java Dullihan, the dyemaker."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "He's a bit forgetful, so you should probably give the package to one of his students."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "Remember..."
				--if lot[1 2] then
					dialog "The package's"
					dialog "Serial Number is"
					dialog "^3355FF3012685^000000."
					setitem("job_merchant_q2",5)
				else
					dialog "The package's"
					dialog "Serial Number is"
					dialog "^3355FF3487372^000000."
					setitem("job_merchant_q2",6)
				end
			elseif merchant_job == 4 then
				dialog "First, get the delivery package from the storehouse, and then give it to the Kafra Employee stationed on Byalan Island."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "Remember..."
				--if lot[1 2] then
					dialog "The package's"
					dialog "Serial Number is"
					dialog "^3355FF3318702^000000."
					setitem("job_merchant_q2",7)
				else
					dialog "The package's"
					dialog "Serial Number is"
					dialog "^3355FF3543625^000000."
					setitem("job_merchant_q2",8)
				end
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "Ummmm..."
				dialog "And I also have"
				dialog "a bit of a personal"
				dialog "request for you."
				wait()
				dialog "[Chief Mahnsoo]"
				dialog "Would you please give her this message when you deliver the package? Please~"
				getitem("Delivery_Message",1)
			end
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Don't forget your destination and the package's Serial Number. You will need to tell those to the storekeeper in the storehouse to the right of me."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "After the delivery, give the receipt to the storekeeper, and then come back and see me."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Is that clear?"
			dialog "Alright, that's"
			dialog "the spirit."
			dialog "Take care!"
			close()
			return
		elseif mresulta == 2 then
			dialog "[Chief Mahnsoo]"
			dialog "Merchant?"
			dialog "Well, we basically sell goods to make money. That is the way"
			dialog "of the Merchant."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "I guess we may not be the best at fighting, and we don't have many special attacks. We've got no healing skills..."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "But we can buy goods at lower prices from NPC shops and sell them at a higher price to other people~"
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Our ultimate attack skill is 'Mammonite.' The strength of Mammonite comes from the anger"
			dialog "when we're forced to throw away perfectly good zeny."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Throwing away zeny like that"
			dialog "causes a deadly rage to well up in the heart of any Merchant!"
			dialog "Just thinking about it"
			dialog "makes my blood boil!"
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Anyway, we can use most"
			dialog "weapons except Bows, Rods, and Two-Handed Swords. But we can always sell those."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Yes..."
			dialog "We Merchants generally"
			dialog "have money on our minds..."
			close()
		elseif mresulta == 3 then
			dialog "[Chief Mahnsoo]"
			dialog "There are three conditions that must be fulfilled before you can become a Merchant."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "First, You have to be a Novice with Job Level 10, and have learned all of the Basic Skills."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Second, You have to pay a 1,000 Zeny Membership Fee. I believe any Merchant candidate should be able to earn 1,000 Zeny with ease."
			wait()
			dialog "[Chief Mahnsoo]"
			dialog "Third, there is a License Test to test your physical strength and sense of direction. You will deliver a package to a specific person in a specific location."
			close()
		elseif mresulta == 4 then
			return
		end
	end
end

npc("alberta_in","Merchant Guildsman",spr_4_M_01,28,29,2,0,0,"alberta_in_Merchant_Guildsman_2829")
function alberta_in_Merchant_Guildsman_2829()
	local name = PcName()
	if getvar(VAR_JOB) == MERCHANT then
		dialog "[Union Staff Kay]"
		dialog "Heya pal."
		dialog "How ya doin'?"
		close()
		return
	elseif ((getvar(VAR_JOB) < MERCHANT) and (getvar(VAR_JOB) < NOVICE)) then
		dialog "[Union Staff Kay]"
		dialog "Hey you. We don't have any open positions for part time work. If you wanna earn some zeny, you'll hafta look elsewhere."
		close()
		return
	elseif getvar(job_merchant_q) == 9 then
		dialog "[Union Staff Kay]"
		dialog "Hey you. Yeah, you."
		dialog "If you wanna restart the test, go visit Mahnsoo in the other room. Then we can talk."
		close()
		return
	elseif ((getvar(job_merchant_q) == 8) or (getvar(job_merchant_q) == 7)) then
		dialog "[Union Staff Kay]"
		dialog "Alright! Everything looks perfect! I'll report your success to the guildmaster. Now go talk to Chief Mahnsoo, yeah?"
		return
	elseif ((getvar(job_merchant_q) == 6) or (getvar(job_merchant_q) == 5)) then
		dialog " [Union Staff Kay] "
		dialog("Oh, yeah? Okay, lemme check. Your name is ","+","name","+","? Alright, your destination was...")
		wait()
		dialog "[Union Staff Kay]"
		if ((getvar(job_merchant_q2) == 1) or (getvar(job_merchant_q2) == 2)) then
			dialog "Wow! You met the Kafra babe in Prontera?! Lucky you~ ...Receipt?"
		elseif ((getvar(job_merchant_q2) == 3) or (getvar(job_merchant_q2) == 4)) then
			dialog "Geffen Magic Academy. Okay, receipt?"
		elseif ((getvar(job_merchant_q2) == 5) or (getvar(job_merchant_q2) == 6)) then
			dialog "The dyemaker in Morroc. Not bad. Receipt?"
		elseif ((getvar(job_merchant_q2) == 7) or (getvar(job_merchant_q2) == 8)) then
			dialog "Oh hohohoho~! The Kafra Babe on Byalan Island?! Awesome! Anyway, did you bring the receipt?"
		end
		if ((getvar(job_merchant_q2) == 1) and (getvar(Merchant_Voucher_1) < 0)) then
			dropitem("Merchant_Voucher_1",1)
		elseif ((getvar(job_merchant_q2) == 2) and (getvar(Merchant_Voucher_2) < 0)) then
			dropitem("Merchant_Voucher_2",1)
		elseif ((getvar(job_merchant_q2) == 3) and (getvar(Merchant_Voucher_3) < 0)) then
			dropitem("Merchant_Voucher_3",1)
		elseif ((getvar(job_merchant_q2) == 4) and (getvar(Merchant_Voucher_4) < 0)) then
			dropitem("Merchant_Voucher_4",1)
		elseif ((getvar(job_merchant_q2) == 5) and (getvar(Merchant_Voucher_5) < 0)) then
			dropitem("Merchant_Voucher_5",1)
		elseif ((getvar(job_merchant_q2) == 6) and (getvar(Merchant_Voucher_6) < 0)) then
			dropitem("Merchant_Voucher_6",1)
		elseif ((getvar(job_merchant_q2) == 7) and (getvar(Merchant_Voucher_7) < 0)) then
			dropitem("Merchant_Voucher_7",1)
		elseif ((getvar(job_merchant_q2) == 8) and (getvar(Merchant_Voucher_8) < 0)) then
			dropitem("Merchant_Voucher_8",1)
		else
			wait()
			setitem("job_merchant_q",9)
			dialog " [Union Staff Kay] "
			dialog "Wait a sec."
			dialog "Where's the receipt?"
			dialog "What happened?"
			wait()
			dialog " [Union Staff Kay] "
			dialog "If you don't have the receipt, you fail the test! You better talk to Mahnsoo if you wanna retake it, alright? Pay attention next time!"
			close()
			return
		end
		wait()
		dialog " [Union Staff Kay] "
		dialog "...Great! Everything's perfect! I'll report your success to the Guildmaster. You should talk to Chief Mahnsoo now, alright?"
		close()
		if getvar(job_merchant_q) == 6 then
			setitem("job_merchant_q",8)
		elseif getvar(job_merchant_q) == 5 then
			setitem("job_merchant_q",7)
		end
		return
	elseif (((getvar(job_merchant_q) == 4) or (getvar(job_merchant_q) == 3)) and ((getvar(Merchant_Box_1) == 0) and (getvar(Merchant_Box_2) == 0) and (getvar(Merchant_Box_Etc) == 0))) then
		dialog " [Union Staff Kay] "
		dialog "Huh?"
		dialog "You're back?"
		dialog "So how did"
		dialog "the delivery go?"
		wait()
		local mresulta = menu("*Sob* I lost the package.","Fine.")
		if mresulta == 1 then
			setitem("job_merchant_q",9)
			dialog "[Union Staff Kay]"
			dialog "Are you kidding me? You'll fail the test if you lose the package!"
			wait()
			dialog "[Union Staff Kay]"
			dialog "Awwww man. Well, if you wanna restart the test, talk to Mahnsoo, okay? You're lucky you're getting another chance!"
			close()
			return
		elseif mresulta == 2 then
			dialog "[Union Staff Kay]"
			dialog "Huh..."
			dialog "Okay..."
			close()
			return
		end
		return
	elseif (((getvar(job_merchant_q) == 4) or (getvar(job_merchant_q) == 3)) and ((getvar(Merchant_Box_1) < 0) or (getvar(Merchant_Box_2) < 0) or (getvar(Merchant_Box_Etc) < 0))) then
		dialog "[Union Staff Kay]"
		dialog "Hey, what are you still doing here? Shouldn't you be on your way already?"
		wait()
		local mresulta = menu("I need a new package.","Oh, yeah. You're right!")
		if mresulta == 1 then
			if ((getvar(Merchant_Box_1) == 0) and (getvar(Merchant_Box_2) == 0) and (getvar(Merchant_Box_3) == 0) and (getvar(Merchant_Box_Etc) == 0)) then
				dialog "[Union Staff Kay]"
				dialog "Wha--?"
				dialog "So where did"
				dialog "the package go?"
				dialog "Where is it?!"
				wait()
				local mresultb = menu("*Sob* I lost it!","I have it right here.")
				if mresultb == 1 then
					setitem("job_merchant_q",9)
					dialog "[Union Staff Kay]"
					dialog "You..."
					dialog "Lost it?!"
					dialog "You failed the test!"
					wait()
					dialog "[Union Staff Kay]"
					dialog "*Sigh* If you want to restart the test, go visit Mahnsoo in the other room, alright?"
					close()
					return
				elseif mresultb == 2 then
					dialog "[Union Staff Kay]"
					dialog "Huh."
					dialog "I thought"
					dialog "you lost it."
					dialog "You don't"
					dialog "need a new one."
					close()
					return
				end
				return
			end
			dialog "[Union Staff Kay]"
			dialog "*Sigh* Man, you're starting to become a pain in the ass. Hold on, lemme cancel your record..."
			if getvar(Merchant_Box_1) < 0 then
				dropitem("Merchant_Box_1",1)
			elseif getvar(Merchant_Box_2) < 0 then
				dropitem("Merchant_Box_2",1)
			elseif getvar(Merchant_Box_Etc) < 0 then
				dropitem("Merchant_Box_Etc",1)
			end
			if getvar(job_merchant_q) == 4 then
				setitem("job_merchant_q",2)
			elseif getvar(job_merchant_q) == 3 then
				setitem("job_merchant_q",1)
			end
			wait()
			dialog "[Union Staff Kay]"
			dialog "I need some time to get everything in order, so come back later."
			close()
			return
		elseif mresulta == 2 then
			dialog "[Union Staff Kay]"
			dialog "What a bummer..."
			close()
			return
		end
	elseif ((getvar(job_merchant_q) == 0) or (getvar(job_merchant_q) == 1) or (getvar(job_merchant_q) == 2)) then
		local where_village
		dialog "[Union Staff Kay]"
		dialog "Hey there."
		dialog "what brings"
		dialog "you here?"
		wait()
		local mresulta = menu("My Merchant License test.","I'm looking for part time work.","Nothing.")
		if mresulta == 1 then
			dialog "[Union Staff Kay]"
			dialog "I see."
			dialog "Alright."
			dialog "So what's"
			dialog "your name?"
			dialog(,"+","name","+","...?")
			wait()
			if getvar(job_merchant_q) == 0 then
				dialog "[Union Staff Kay]"
				dialog "Huh. Your name's not on my list. Did you apply for the job change quest or what?"
				wait()
				dialog "[Union Staff Kay]"
				dialog "You gotta apply first by talking to Chief Mahnsoo in the center"
				dialog "of this building, okay?"
				close()
				return
			end
			dialog "[Union Staff Kay]"
			dialog "Alright, there you go. Lemme give you the package. Now, choose the destination of the delivery."
			wait()
			local mresultb = menu("Prontera.","Geffen.","Morocc.","Byalan Island.")
			if mresultb == 1 then
				where_village("=",1)
			elseif mresultb == 2 then
				where_village("=",2)
			elseif mresultb == 3 then
				where_village("=",3)
			elseif mresultb == 4 then
				where_village("=",4)
			end
			dialog "[Union Staff Kay]"
			dialog "Okay, now you need to give me the package's Serial Number. If you wanna cancel, just enter '0', alright?"
			wait()
			while(1) do
				while(1) do
					dlgwrite(1000000,5000000)
					if input == 0 then
						dialog "[Union Staff Kay]"
						dialog "Are you sure that you wanna cancel?"
						local mresultb = menu("Yes.","Let me try again.")
						if mresultb == 1 then
							dialog "Alright, we'll cancel for now."
							close()
							return
						elseif mresultb == 2 then
							wait()
						end
					elseif error then
						dialog "[Union Staff Kay]"
						dialog "Hey hey. That number's not valid! Enter a value from 1000000 to 5000000. got it?"
						wait()
					else
						break
					end
				end
				dialog "[Union Staff Kay]"
				if where_village == 1 then
					dialog("Destination is Prontera. The Serial Number is ","+","input","+",". Are you positive?")
				elseif where_village == 2 then
					dialog("Destination is Geffen. Phew! That's really far! The Serial Number is ","+","input","+",". Are you positive?")
				elseif where_village == 3 then
					dialog("Destination is Morocc. That's pretty far away! The Serial Number is ","+","input","+",". Are you positive?")
				else
					dialog("Lucky you! Your destination is Byalan Island. The Serial Number is ","+","input","+",". Are you positive?")
				end
				wait()
				local mresultb = menu("Positive.","Whoops! Wrong number!")
				if mresultb == 1 then
					break
				elseif mresultb == 2 then
				end
			end
			if where_village == 1 then
				if ((getvar(job_merchant_q2) == 1) and (input == 2485741)) then
					getitem("Merchant_Box_1",1)
				elseif ((getvar(job_merchant_q2) == 2) and (input == 2328137)) then
					getitem("Merchant_Box_2",1)
				else
					getitem("Merchant_Box_Etc",1)
				end
			elseif where_village == 2 then
				if ((getvar(job_merchant_q2) == 3) and (input == 2989396)) then
					getitem("Merchant_Box_1",1)
				elseif ((getvar(job_merchant_q2) == 4) and (input == 2191737)) then
					getitem("Merchant_Box_2",1)
				else
					getitem("Merchant_Box_Etc",1)
				end
			elseif where_village == 3 then
				if ((getvar(job_merchant_q2) == 5) and (input == 3012685)) then
					getitem("Merchant_Box_1",1)
				elseif ((getvar(job_merchant_q2) == 6) and (input == 3487372)) then
					getitem("Merchant_Box_2",1)
				else
					getitem("Merchant_Box_Etc",1)
				end
			else
				if ((getvar(job_merchant_q2) == 7) and (input == 3318702)) then
					getitem("Merchant_Box_1",1)
				elseif ((getvar(job_merchant_q2) == 8) and (input == 3543625)) then
					getitem("Merchant_Box_2",1)
				else
					getitem("Merchant_Box_Etc",1)
				end
			end
			if getvar(job_merchant_q) == 2 then
				setitem("job_merchant_q",4)
			elseif getvar(job_merchant_q) == 1 then
				setitem("job_merchant_q",3)
			end
			dialog "[Union Staff Kay]"
			dialog "Alright. Take this package and guard it with your life until it's safely delivered to the customer. Don't lose this thing, got it?"
			wait()
			dialog "[Union Staff Kay]"
			dialog "Well then, I wish you luck. Remember, you gotta bring me"
			dialog "a receipt once you finish the delivery, okay?"
			close()
		elseif mresulta == 2 then
			dialog "[Union Staff Kay]"
			dialog "Part time job? Sorry pal, no jobs yet. The Paymaster's department can never balance our budget..."
			close()
		elseif mresulta == 3 then
			dialog "[Union Staff Kay]"
			dialog "Nothing, eh?"
			dialog "I guess you enjoy"
			dialog "bothering people for"
			dialog "no reason then, yeah?"
			close()
		end
	end
end

npc("morocc_in","Student",spr_4_M_04,140,102,4,0,0,"morocc_in_Student_140102")
function morocc_in_Student_140102()
	if ((getvar(job_merchant_q) == 4) or (getvar(job_merchant_q) == 3)) then
		dialog "[Dyer's Student]"
		dialog "You're from"
		dialog "the Merchant Guild?"
		dialog "Yes! You've come to"
		dialog "the right place."
		wait()
		dialog "[Dyer's Student]"
		if ((getvar(Merchant_Box_1) == 1) or (getvar(Merchant_Box_2) == 1) or (getvar(Merchant_Box_Etc) == 1)) then
			dialog "Okay~"
			dialog "Please set the"
			dialog "package down"
			dialog "over there."
		else
			dialog "But..."
			dialog "Where's the"
			dialog "package I ordered?"
			dialog "That's strange..."
			close()
			return
		end
		wait()
		dialog "[Dyer's Student]"
		dialog "Let me check the Serial Number of the package so I can give you the receipt, okay?"
		wait()
		dialog "[Dyer's Student]"
		if ((getvar(job_merchant_q2) == 5) and (getvar(Merchant_Box_1) < 0)) then
			dialog "3012685..."
			dialog "That's right."
			dialog "Here's your"
			dialog "receipt."
			dropitem("Merchant_Box_1",1)
			getitem("Merchant_Voucher_5",1)
		elseif ((getvar(job_merchant_q2) == 6) and (getvar(Merchant_Box_2) < 0)) then
			dialog "3487372..."
			dialog "That's right."
			dialog "Here's your"
			dialog "receipt."
			dropitem("Merchant_Box_2",1)
			getitem("Merchant_Voucher_6",1)
		else
			dialog "Excuse me, but..."
			if getvar(job_merchant_q2) == 5 then
				dialog "I don't think this is the package we ordered. The Serial Number should be 3012685. See?"
			elseif getvar(job_merchant_q2) == 6 then
				dialog "I don't think this is the package we ordered. The Serial Number should be 3487372. See?"
			else
				dialog "I don't think this is the package we ordered. The Serial Number should be 3012685 or 3487372. Well, one of those two..."
			end
			close()
			return
		end
		if getvar(job_merchant_q) == 4 then
			setitem("job_merchant_q",6)
		elseif getvar(job_merchant_q) == 3 then
			setitem("job_merchant_q",5)
		end
		wait()
		dialog "[Dyer's Student]"
		dialog "Thanks a lot!"
		dialog "See you again"
		dialog "sometime!"
		close()
	elseif (((getvar(job_merchant_q) == 6) or (getvar(job_merchant_q) == 5)) and ((getvar(job_merchant_q2) == 6) or (getvar(job_merchant_q2) == 5))) then
		dialog "[Dyer's Student]"
		dialog "Oh..."
		dialog "You're gonna"
		dialog "go back? Okay"
		dialog "then, take care!"
		close()
		return
	else
		dialog "[Dyer's Student]"
		dialog "Mr. Java Dullihan is the one and only, the best dye maker on the Rune-Midgard continent."
		wait()
		dialog "[Dyer's Student]"
		dialog "Aaaand I'm proud to say that I'm his student! Someday, I'll be able to make really beautiful dyes too!"
		wait()
		dialog "[Dyer's Student]"
		dialog "Of course, I'm still learning the basics right now, but someday..."
		close()
	end
end

npc("geffen_in","Guild Staff",spr_1_M_01,155,122,4,0,0,"geffen_in_Guild_Staff_155122")
function geffen_in_Guild_Staff_155122()
	if ((getvar(job_merchant_q) == 4) or (getvar(job_merchant_q) == 3)) then
		dialog "[Guild Staff]"
		dialog "Ah, you must be with the Merchant Guild. Finally, my package has arrived! Alright...!"
		wait()
		dialog "[Guild Staff]"
		if ((getvar(Merchant_Box_1) == 1) or (getvar(Merchant_Box_2) == 1) or (getvar(Merchant_Box_Etc) == 1)) then
			dialog "You must be very tired"
			dialog "from having to travel"
			dialog "in this kind"
			dialog "of weather..."
		else
			dialog "Wait..."
			dialog "Where's the"
			dialog "package?"
			close()
			return
		end
		wait()
		dialog "[Guild Staff]"
		dialog "Alright, let me"
		dialog "check the Serial Number..."
		if ((getvar(job_merchant_q2) == 3) and (getvar(Merchant_Box_1) < 0)) then
			dialog "2989396. Yes, this is what we ordered. Here is your receipt."
			dropitem("Merchant_Box_1",1)
			getitem("Merchant_Voucher_3",1)
		elseif ((getvar(job_merchant_q2) == 4) and (getvar(Merchant_Box_2) < 0)) then
			dialog "2191737. Yes, this is what we ordered. Here is your receipt."
			dropitem("Merchant_Box_2",1)
			getitem("Merchant_Voucher_4",1)
		else
			dialog "Uh oh, this is the wrong number. This isn't what we ordered..."
			wait()
			dialog "[Guild Staff]"
			if getvar(job_merchant_q2) == 3 then
				dialog "The Serial Number"
				dialog "should be 2989396."
			elseif getvar(job_merchant_q2) == 4 then
				dialog "The Serial Number"
				dialog "should be 2191737."
			else
				dialog "The Serial Number"
				dialog "should be 2989396"
				dialog "or 2191737, one of"
				dialog "those two."
			end
			dialog "Look here!"
			dialog "Don't you see"
			dialog "something"
			dialog "is wrong?"
			close()
			return
		end
		if getvar(job_merchant_q) == 4 then
			setitem("job_merchant_q",6)
		elseif getvar(job_merchant_q) == 3 then
			setitem("job_merchant_q",5)
		end
		wait()
		dialog "[Guild Staff]"
		dialog "Heh heh~"
		dialog "Thank you!"
		dialog "Bye bye!"
		close()
	elseif (((getvar(job_merchant_q) == 6) or (getvar(job_merchant_q) == 5)) and ((getvar(job_merchant_q2) == 4) or (getvar(job_merchant_q2) == 3))) then
		dialog "[Guild Staff]"
		dialog "Hello,"
		dialog "Merchant Guildsman~"
		dialog "I give you my thanks."
		close()
		return
	else
		dialog "[Guild Staff]"
		dialog "My package should have arrived by now. Huh. I guess the Merchant Guild might be running a little late..."
		close()
	end
end
