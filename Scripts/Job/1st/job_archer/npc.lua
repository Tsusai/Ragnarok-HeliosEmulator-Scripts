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

npc("payon_in02","Archer Guildsman",spr_4_M_03,64,71,4,0,0,"payon_in02_Archer_Guildsman_6471")
function payon_in02_Archer_Guildsman_6471()
	local name = PcName()
	local wood_number1
	local wood_number2
	local wood_number3
	local wood_hap
	if getvar(job_karma) > 0 then
		if ((getvar(VAR_JOB) == NOVICE_H) and ((getvar(job_karma) == 5) or (getvar(job_karma) == 12) or (getvar(job_karma) == 13))) then
			dialog "[Archer Guildsman]"
			dialog "Hey, I know you."
			dialog "You took this test"
			dialog "before, didn't you?"
			wait()
			dialog "[Archer Guildsman]"
			dialog "Ah, you must have been"
			dialog "to Valhalla and been reborn."
			dialog "Wow, that's so impressive!"
			wait()
			if getvar(VAR_NV_BASIC) < 9 then
				dialog "[Archer Guildsman]"
				dialog "Err..."
				dialog "You'd better learn all the Basic Skills first before you can become an Archer."
				wait()
				dialog "[Archer Guildsman]"
				dialog "Alright, see you later."
				close()
				return
			end
			dialog "[Archer Guildsman]"
			dialog "Well then. I don't"
			dialog "need to say anything else."
			dialog "I know you'll make a great Archer..."
			wait()
			--EventDelSkill NV_TRICKDEAD
			jobchange(3)
			--EventAddSkill("AC_CHARGEARROW",1)
			--EventAddSkill("AC_MAKINGARROW",1)
			dialog "[Archer Guildsman]"
			dialog "Although there's no special"
			dialog "reward for you this time, I hope you understand. Take care of yourself."
			close()
			return
		else
			dialog "[Archer Guildsman]"
			dialog "Oh...?"
			dialog "Hey, what are"
			dialog "you doing here...?"
			wait()
			dialog "[Archer Guildsman]"
			dialog "I can tell that you're not cut out to be an Archer. It sort of feels like you're meant to do"
			dialog "something else..."
			close()
			return
		end
	end
	dialog "[Archer Guildsman]"
	dialog "Good day. How may I help you?"
	wait()
	local mresulta = menu("I want to be an Archer.","I need the requirements, please.","Nothing, thanks.")
	if mresulta == 1 then
		if getvar(VAR_JOB) == ARCHER then
			dialog "[Archer Guildsman]"
			dialog "You've already become an Archer..."
			close()
			return
		elseif ((getvar(VAR_JOB) > ARCHER) and (getvar(VAR_JOB) > NOVICE)) then
			dialog "[Archer Guildsman]"
			dialog "Hmm..."
			dialog "You don't look much like a Novice at all..."
			wait()
			dialog "[Archer Guildsman]"
			dialog "Anyway, whatever you are, you can't choose a job as an Archer because you have a job already."
			close()
			return
		end
		if getvar(job_archer_q) == 0 then
			dialog "[Archer Guildsman]"
			dialog "Do you want to be an Archer?"
			dialog "If so, you need to fill out this application form."
			wait()
			local mresultb = menu("Apply.","Cancel")
			if mresultb == 1 then
				setitem("job_archer_q",1)
				dialog "[Archer Guildsman]"
				dialog "Okay, sign here. Alright, um, I'll promote you once you meet the requirements."
				wait()
				dialog "[Archer Guildsman]"
				dialog "If you think you've met them already, we can check that now."
				dialog "Are you ready?"
				wait()
				local mresultc = menu("Yes, I am.","No, not yet.")
				if mresultc == 1 then
					dialog "[Archer Guildsman]"
					dialog "Alright, let me check."
					wait()
				elseif mresultc == 2 then
					dialog "[Archer Guildsman]"
					dialog "I understand. Be my guest if you want to look at the requirements."
					close()
					return
				end
			elseif mresultb == 2 then
				dialog "[Archer Guildsman]"
				dialog "Well, alright."
				dialog "See you next time."
				close()
				return
			end
		end
		dialog "[Archer Guildsman]"
		--dialog("Are you...""+""name""+""?")
		wait()
		if getvar(VAR_NV_BASIC) < 9 then
			dialog "[Archer Guildsman]"
			dialog "Well, you're not at the right job level. Please check the requirements again."
			wait()
			dialog "[Archer Guildsman]"
			dialog "Your job level must be at least 10, and don't forget you should learn all of the Basic Skills. Once you've done that, come back."
			close()
			return
		end
		local archer_item1 = getvar(Tree_Of_Archer_1) * 5
		local archer_item2 = getvar(Tree_Of_Archer_2) * 3
		local archer_item3 = getvar(Tree_Of_Archer_3) * 2
		local archer_item4 = getvar(Wooden_Block)
		local arc_send_item1 = getvar(Tree_Of_Archer_1)
		local arc_send_item2 = getvar(Tree_Of_Archer_2)
		local arc_send_item3 = getvar(Tree_Of_Archer_3)
		local arc_send_item4 = getvar(Wooden_Block)
		local total_archer = archer_item1 + archer_item2 + archer_item3 + archer_item4
		local total_archer2 = (((archer_item2 + archer_item3) * 2) + archer_item4)
		if getvar(job_archer_q) == 1 then
			dialog "[Archer Guildsman]"
			dialog "Excellent!"
			dialog "Now then,"
			dialog "let's see..."
			wait()
			dialog "[Archer Guildsman]"
			dialog "I will appraise the value of the various types of Trunks, needed to produce a Bow, that you've brought."
			wait()
			if ((getvar(Tree_Of_Archer_1) == 0) and (getvar(Tree_Of_Archer_2) == 0) and (getvar(Tree_Of_Archer_3) == 0) and (getvar(Wooden_Block) == 0)) then
				dialog "[Archer Guildsman]"
				dialog "Um..."
				dialog "Unfortunately you didn't bring any of the required items. There's nothing for me to appraise."
				close()
				return
			end
			dialog "[Archer Guildsman]"
			--[[if getvar(Tree_Of_Archer_1) > 0 then
				dialog(" Grade S : ","+","v[Tree_Of_Archer_1]","+"," ea, Grade: ","+","archer_item1","+"," . ")
			end
			if getvar(Tree_Of_Archer_2) > 0 then
				dialog(" Grade A : ","+","v[Tree_Of_Archer_2]","+"," ea, Grade : ","+","archer_item2","+"," . ")
			end
			if getvar(Tree_Of_Archer_3) > 0 then
				dialog(" Grade B : ","+","v[Tree_Of_Archer_3]","+"," ea, Grade : ","+","archer_item3","+"," . ")
			end
			if getvar(Wooden_Block) > 0 then
				dialog(" Grade C : ","+","v[Wooden_Block]","+"," ea, Grade : ","+","archer_item4","+"," . ")
			end--]]
			if total_archer < 25 then
				dialog("Total Grades: ^FF0000","+","total_archer","+","^000000 / 40")
				wait()
				dialog "[Archer Guildsman]"
				dialog "Less than 25!? You have to get a grade of at least 25! Come on, try harder!"
				close()
				return
			else
				dialog("Total Grades: ^0000FF","+","total_archer","+","^000000 / 40")
				wait()
				dialog "[Archer Guildsman]"
				if total_archer > 40 then
					dialog "Wow! More than 40!"
					dialog "Excellent! Congratulations!"
				elseif total_archer > 30 then
					dialog "More than 30! Nice job!"
					dialog "Congratulations!"
				elseif total_archer > 25 then
					dialog "*Sigh* Well, you just barely passed... Anyway, well done."
				end
			end
			wait()
			dialog "[Archer Guildsman]"
			dialog "I'll transfer these Trunks to our Bow Production Department. Now that you've met the requirements, let me promote you right away!"
			if getvar(Tree_Of_Archer_1) > 0 then
				dropitem("Tree_Of_Archer_1","arc_send_item1")
			end
			if getvar(Tree_Of_Archer_2) > 0 then
				dropitem("Tree_Of_Archer_2","arc_send_item2")
			end
			if getvar(Tree_Of_Archer_3) > 0 then
				dropitem("Tree_Of_Archer_3","arc_send_item3")
			end
			if getvar(Wooden_Block) > 0 then
				dropitem("Wooden_Block","arc_send_item4")
			end
		end
		wait()
		jobchange(3)
		dialog "[Archer Guildsman]"
		dialog "Congratulations!"
		dialog "You are now an Archer!"
		wait()
		dialog "[Archer Guildsman]"
		dialog "Of course, we expect that you will help contribute towards the future of the Archer Guild with your efforts."
		wait()
		dialog "[Archer Guildsman]"
		dialog "Ah, your bow has arrived from the Bow Production Department. Here, take it! It's yours~"
		getitem("Bow_",1)
		getitem("Arrow","total_archer2")
		wait()
		dialog "[Archer Guildsman]"
		dialog "Now, off you go. Hunt with pride, knowing you were trained by one of the best!"
		close()
	elseif mresulta == 2 then
		dialog "[Archer Guildsman]"
		dialog "I will explain the requirements for being an Archer."
		if getvar(VAR_JOB) > NOVICE then
			if getvar(VAR_JOB) == ARCHER then
				wait()
				dialog "[Archer Guildsman]"
				dialog "But..."
				dialog "You're already an Archer. You should know these already..."
			else
				wait()
				dialog "[Archer Guildsman]"
				dialog "Wait a second. You've chosen a different job already. You don't need to know this~"
			end
			dialog "So...Yeah...no real reason to tell you the requirements..."
		end
		wait()
		dialog "[Archer Guildsman]"
		dialog "First of all, you have to the Job Level 9 as a Novice, and know all of the Basic Skills."
		wait()
		dialog "[Archer Guildsman]"
		dialog "An Archer needs extremely high concentration and reflexes, so we do not accept those who have little patience."
		wait()
		dialog "[Archer Guildsman]"
		dialog "You also have to gather ^FF0000Trunks^000000. There are 4 different types of Trunks, each of differing quality. You'll be given different grades for your Trunks, depending on their quality."
		wait()
		dialog "[Archer Guildsman]"
		dialog "In order to become an Archer, you must receive a grade of at least ^0000FF25^000000 points out of 40. You can get Trunks from 'Willow,' the tree. Be careful, though. They can be tough monsters."
		close()
	elseif mresulta == 3 then
	end
end
