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
--| 29/12/2007                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Muad_Dib                               |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("new_1-1","Bulletin Board",spr_HIDDEN_NPC,66,114,4,0,0,"new_1_1_Bulletin_Board_66114")
function new_1_1_Bulletin_Board_66114()
	dialog "^FF0000=================================^000000"
	dialog "^FF0000 ==^000000 ^E40CAA[Welcome] ^CC0000to^FF9000Training ^3366FFGrounds^E40CAA [Welcome] ^FF0000==^000000"
	dialog "^FF0000=================================^000000"
	close()
end

npc("new_1-1","Guard",spr_8W_SOLDIER,144,116,2,0,0,"new_1_1_Guard_144116")
function new_1_1_Guard_144116()
	dialog "[Training Ground Guard]"
	dialog "Welcome to the Training Grounds."
	dialog "You are now in the outer court"
	dialog "yard. Please go inside the castle"
	dialog "to begin your training."
	close()
end

npc("new_1-1","Guard",spr_8W_SOLDIER,144,107,2,0,0,"new_1_1_Guard_144107")
function new_1_1_Guard_144107()
	dialog "[Training Ground Guard]"
	local temp = math.random(1,2)
	if temp == 1 then
		dialog "Come in!"
		dialog "I would like"
		dialog "to welcome you to"
		dialog "the Training Grounds!"
		wait()
		dialog "[Training Ground Guard]"
		dialog "In here, you can prepare"
		dialog "yourself for your future"
		dialog "adventures throughout the"
		dialog "Ragnarok world!"
	else
		dialog "Go, Novice, go!"
		dialog "Fight, and grow stronger! Look"
		dialog "towards a brighter tomorrow!"
	end
	close()
end

--npc("new_1-2","Receptionist",spr_4_M_04,100,29,4,0,0,"new_1_2_Receptionist_10029")
function new_1_2_Receptionist_10029()
	dialog "[Training Grounds Receptionist]"
	dialog "Welcome!"
	dialog "You are at the entrance"
	dialog "of the ^3366FFTraining Grounds^000000."
	wait()
	dialog "[Training Grounds Receptionist]"
	dialog "If you're new"
	dialog "to the Ragnarok world,"
	dialog "please choose the"
	dialog "^000099Training Grounds Introduction^000000"
	dialog "menu for more information."
	while(1) do
		wait()
		local mresult = menu("Apply for training.","Direct access to Ragnarok Online.","^0099FFTraining Grounds Introduction.^000000","I need a moment to think.")
		if mresult == 1 then
			dialog "[Training Grounds Receptionist]"
			dialog "Thank you for applying for Novice"
			dialog "training. For detailed information"
			dialog "of each training course, please"
			dialog "inquire the Guides for assistance."
			wait()
			if getitem(nov_get_item01) == 0 then
				setitem(nov_get_item01,1)
				getgold(50)
				dialog "[Training Grounds Receptionist]"
				dialog "To get you started, we will supply"
				dialog "you with a provision of 50 Zeny."
				dialog "When you have questions about the"
				dialog "training course process, please"
				dialog "feel free to ask any of the"
				dialog "Tutors."
				wait()
			end
			dialog "[Training Grounds Receptionist]"
			dialog "You will now be transferred"
			dialog "to the Training Grounds."
			moveto("new_1-2",100,70)
			break
		elseif mresult == 2 then
			setitem(nov_3_merchant,0)
			local village = math.random(1,6)
			setitem(nov_1st_cos,0)
			setitem(nov_2nd_cos,0)
			setitem(nov_3_swordman,0)
			setitem(nov_3_archer,0)
			setitem(nov_3_thief,0)
			setitem(nov_3_magician,0)
			setitem(nov_3_acolyte,0)
			setitem(nov_3_merchant,0)
			dialog "[Training Grounds Receptionist]"
			dialog "I understand."
			dialog "Please do your "
			dialog "best, and I wish you"
			dialog "the best of luck!"
			close()
			setitem(nov_1st_cos,0)
			setitem(nov_2nd_cos,0)
			setitem(nov_3_swordman,0)
			setitem(nov_3_archer,0)
			setitem(nov_3_thief,0)
			setitem(nov_3_magician,0)
			setitem(nov_3_acolyte,0)
			setitem(nov_3_merchant,0)
			if village == 1 then
				checkpoint("prontera",273,354)
				moveto("prontera",273,354)
			elseif village == 2 then
				checkpoint("morocc",160,94)
				moveto("morocc",160,94)
			elseif village == 3 then
				checkpoint("geffen",120,100)
				moveto("geffen",120,100)
			elseif village == 4 then
				checkpoint("payon",70,100)
				moveto("payon",70,100)
			elseif village == 5 then
				checkpoint("alberta",116,57)
				moveto("alberta",116,57)
			elseif village == 6 then
				checkpoint("izlude",94,103)
				moveto("izlude",94,103)
			end
			break
		elseif mresult == 3 then
			dialog "[Training Grounds Receptionist]"
			dialog "This training grounds was"
			dialog "established in order to provide"
			dialog "useful information to new players"
			dialog "of Ragnarok Online by the"
			dialog "Rune-Midgarts Kingdom's Board of"
			dialog "Education."
			wait()
			dialog "[Training Grounds Receptionist]"
			dialog "The training course is organised"
			dialog "into two parts: the Basic Knowledge"
			dialog "classes, and Field Combat"
			dialog "training."
			wait()
			dialog "[Training Grounds Receptionist]"
			dialog "Through the first course, players"
			dialog "will learn the necessary knowledge"
			dialog "for a smoother gaming experience."
			wait()
			dialog "[Training Grounds Receptionist]"
			dialog "In Field Combat Training,"
			dialog "players will engage in actual"
			dialog "battle with weak monsters so they"
			dialog "can learn the basics of fighting."
			wait()
			dialog "[Training Grounds Receptionist]"
			dialog "With this battle practice,"
			dialog "players will be able to gain more"
			dialog "experience before they enter the"
			dialog "real world."
			wait()
			dialog "[Training Grounds Receptionist]"
			dialog "At the end of the training, we will"
			dialog "provide an introduction to the 1st"
			dialog "Job Classes. This will help players"
			dialog "decide which job class is best for"
			dialog "them."
			wait()
			dialog "[Training Grounds Receptionist]"
			dialog "If you wish to participate in the"
			dialog "training grounds, please choose"
			dialog "'^3355FFApply for training^000000' in the"
			dialog "menu."
			wait()
			dialog "[Training Grounds Receptionist]"
			dialog "Otherwise, if you want to skip the"
			dialog "basic training and immediately"
			dialog "enter the world of Ragnarok Online,"
			dialog "please choose '^3355FFDirect access to^000000"
			dialog "^3355FFRagnarok Online^000000.'"
			wait()
		elseif mresult == 4 then
			dialog "[Training Grounds Receptionist]"
			dialog "I understand."
			dialog "Please, take your time."
			close()
			break
		end
	end
end

--npc("new_1-1","Shion",spr_4_F_JOB_HUNTER,53,114,4,0,0,"new_1_1_Shion_53114")
function new_1_1_Shion_53114()
	local name = PcName
	if ((getvar(nov_get_item04) > 9) or (getvar(nov_get_item05) > 9)) then
		dialog "[Shion]"
		dialog "Hm...?"
		dialog "What are you"
		dialog "still doing here?"
		dialog "Oh, you used a ^3366FFButterfly Wing^000000,"
		dialog "didn't you?"
		wait()
		dialog "[Shion]"
		dialog "No, no, no~"
		dialog "You're supposed to use the"
		dialog "Butterfly Wing when you want to go"
		dialog "back to town after completing"
		dialog "your training here, alright?"
		wait()
		dialog "[Shion]"
		dialog "Now, let me send"
		dialog "you back to the"
		dialog "Training Grounds."
		close()
		moveto("new_1-2",99,99)
		return
	elseif (getvar(nov_1st_cos) > 2) then
		dialog "[Shion]"
		dialog "The Training Grounds"
		dialog "are located just past"
		dialog "the bridge located"
		dialog "to the right."
		wait()
		dialog "[Shion]"
		dialog "Although you'll"
		dialog "be sitting through"
		dialog "some classes, you"
		dialog "won't regret it."
		close()
	elseif (getvar(nov_1st_cos) == 2) then
		dialog "[Shion]"
		dialog "Hey..."
		dialog "You little rascal!"
		wait()
		dialog "[Shion]"
		dialog "Wait..."
		dialog "Calm down Shion."
		dialog "You're a professional"
		dialog "trainer! Don't get all"
		dialog "upset at a Novice!"
		wait()
		dialog "[Shion]"
		dialog "Go and cross the bridge to the"
		dialog "right, right now! *^696969Ahem^000000* You'll see"
		dialog "a castle, and inside you can meet"
		dialog "all sorts of tutors."
		wait()
		dialog "[Shion]"
		dialog "If you can't see the entrance, just"
		dialog "change your in-game camera angle by"
		dialog "holding down the ^3366FFright Mouse^000000"
		dialog "^3366FFbutton^000000 and dragging your mouse."
		dialog "Easy, right?"
		wait()
		dialog "[Shion]"
		dialog "To reset your camera angle,"
		dialog "just double-click the right Mouse"
		dialog "button. Okay then, take care!"
		wait()
		dialog "[Shion]"
		dialog "Oh, and before you leave,"
		dialog "learn how to treat a lady nice,"
		dialog "okay? Then they might give you"
		dialog "gifts like this!"
		setitem(nov_1st_cos,3)
		getexp(9)
		close()
	elseif (getvar(nov_1st_cos) == 1) then
		dialog "[Shion]"
		dialog "Huh...?"
		dialog "Why are you"
		dialog "still here?"
		dialog "*^696969Sigh...^000000*"
		wait()
		dialog "[Shion]"
		dialog "Hey, when you enter the Training"
		dialog "Grounds, you'll learn all sorts of"
		dialog "things that will help you play the"
		dialog "game. You'll even have the chance"
		dialog "to get zeny and other rewards."
		wait()
		dialog "[Shion]"
		dialog "You can even gain"
		dialog "experience like this!"
		setitem(nov_1st_cos,3)
		getexp(9)
		wait()
		dialog "[Shion]"
		dialog "Everything you'll learn here in the"
		dialog "Training Grounds will benefit your"
		dialog "gameplay. So just think positive,"
		dialog "okay?"
		close()
	else
		dialog "[Shion]"
		dialog "Hello there~"
		dialog "Welcome to the"
		dialog "Training Grounds!"
		wait()
		dialog "[Shion]"
		dialog "Let's see."
		dialog "Your name is..."
		dialog(""..name..".")
		wait()
		dialog "[Shion]"
		dialog "My name is Shion"
		dialog "Yes, this is the first time we've"
		dialog "met, of course. Hahahahaha~!"
		wait()
		dialog "[Shion]"
		dialog "Now that we've met, is there"
		dialog "anything I can help you with?"
		dialog "I'm here for your questions~"
		wait()
		local mresult = menu("Where should I go?","About Basic Interfaces.","Who the crap are you?")
		if mresult == 1 then
			dialog "[Shion]"
			dialog "Do you see the bridge to your"
			dialog "right side? Just cross the bridge"
			dialog "and you'll arrive at a castle. All"
			dialog "you have to do is walk inside!"
			wait()
			dialog "[Shion]"
			dialog "The entrance of the castle"
			dialog "is a ^3366FFspinning white light.^000000 These"
			dialog "portals are what allow you to move"
			dialog "from one zone to another."
			wait()
			dialog "[Shion]"
			dialog "Do you know how to move?"
			dialog "Left click on a spot, and you'll"
			dialog "walk over to that spot. Piece of"
			dialog "cake, huh?"
			wait()
			dialog "[Shion]"
			dialog "So go for it!"
			dialog "Basically, you must enter the"
			dialog "castle in order to start your"
			dialog "adventures."
			wait()
			dialog "[Shion]"
			dialog "There are soldiers"
			dialog "at the entrance, so don't"
			dialog "worry about getting lost."
			dialog "Take care now~!"
			close()
			setitem(nov_1st_cos,1)
			close()
		elseif mresult == 2 then
			dialog "[Shion]"
			dialog "Basic Interfaces..."
			dialog "Do you know what Click,"
			dialog "Double-click and Drag mean?"
			wait()
			dialog "[Shion]"
			dialog "When you press the"
			dialog "left Mouse button once,"
			dialog "that is a click. When you press the"
			dialog "mouse button twice in a row, that's"
			dialog "a double-click."
			wait()
			dialog "[Shion]"
			dialog "Dragging is when you move your"
			dialog "Mouse while holding down the"
			dialog "Mouse button after clicking on"
			dialog "something."
			wait()
			dialog "[Shion]"
			dialog "Before we start talking about"
			dialog "the Basic interfaces, you should"
			dialog "remember these terms, just because"
			dialog "we'll be using them frequently."
			wait()
			dialog "[Shion]"
			dialog "Inside the castle, there is a Basic"
			dialog "Interface Tutor who can teach you"
			dialog "the basics more clearly, okay?"
			dialog "Enter the castle to start your training."
			wait()
			dialog "[Shion]"
			dialog "The entrance"
			dialog "of the castle is"
			dialog "a ^3366FFspinning white light^000000."
			wait()
			dialog "[Shion]"
			dialog "There are soldiers"
			dialog "at the entrance, so don't"
			dialog "worry about getting lost."
			dialog "Take care now~!"
			setitem(nov_1st_cos,1)
			close()
		elseif mresult == 3 then
			dialog "[Shion]"
			dialog "Me? I'm Shion!"
			dialog "But that's a rude way of asking!"
			dialog "I'm volunteering my time and effort"
			dialog "here, so you've got to show me a"
			dialog "little bit of respect at least!"
			setitem(nov_1st_cos,2)
			close()
		end
	end
end

--npc("new_1-2","Interface Tutor",spr_4_M_CRU,99,105,3,0,0,"new_1_2_Interface_Tutor_99105")
function new_1_2_Interface_Tutor_99105()
	local name = PcName
	if ((getvar(nov_get_item02) > 9) and (getvar(nov_get_item03) > 9) and (getvar(nov_get_item04) > 9)) then
		dialog "[Chris]"
		dialog "You've completed all the essential"
		dialog "courses. Have you spoken to the"
		dialog "assistant tutors already? The field"
		dialog "combat training will be your next"
		dialog "course. Woudl you like to proceed?"
		wait()
		local mresult = menu("Sure!","No, I'll come back later.","Send me to a town!")
		if mresult == 1 then
			dialog "[Chris]"
			dialog "Your next course is Field Combat"
			dialog "training. Please listen carefully"
			dialog "to your next trainer, and I hope"
			dialog "you pass the course. Godspeed."
			close()
			moveto("new_1-2",28,178)
			return
		elseif mresult == 2 then
			dialog "[Chris]"
			dialog "Alright then. In the meantime, you"
			dialog "might want to speak to the"
			dialog "assistant tutors, as the basic"
			dialog "information taught in the essential"
			dialog "courses may not be enough for new"
			dialog "adventurers."
			wait()
			dialog "[Chris]"
			dialog "Feel free to come back any time"
			dialog "when you need my assistance."
			close()
		elseif mresult == 3 then
			dialog "[Chris]"
			dialog "So, would you like to be sent to a"
			dialog "town? If you're confident that"
			dialog "you've learnt enough, head over to"
			dialog "the right and speak to the ^3366FFKafra^000000"
			dialog "^3366FFEmployee^000000."
			wait()
			dialog "[Chris]"
			dialog "The Kafra Services are very"
			dialog "convenient once you get out into"
			dialog "the real world. Their Teleport"
			dialog "Service can be used to travel from"
			dialog "town to town, and you can keep your"
			dialog "items safe in the Kafra Storage."
			wait()
			dialog "[Chris]"
			dialog "We may never meet again, but I hope"
			dialog "you grow stronger and become a"
			dialog "great adventurer. Godspeed."
			close()
		end
	elseif (getvar(nov_get_item02) < 10) then
		dialog "[Chris]"
		dialog "Hello, may I see your"
		dialog "proof of registration?"
		if (getvar(treasure_alb) > 0) then
			dialog "You were previously on the longer training course."
			dialog "I will now dismiss that for you."
			setitem(treasure_alb,0)
			setitem(nov_1_2_cos_c,0)
			setitem(nov_1st_cos,0)
			setitem(nov_3_merchant,0)
			setitem(nov_3_acolyte,0)
			setitem(nov_3_magician,0)
			setitem(nov_3_archer,0)
		end
		wait()
		dialog "[Chris]"
		dialog "Okay, now"
		dialog "you're ready to go."
		dialog "In my class, I teach the"
		dialog "use of the most basic"
		dialog "interfaces."
		wait()
		dialog "[Chris]"
		dialog(""..name..",")
		dialog "would you like to learn"
		dialog "more about interface"
		dialog "fundamentals?"
		wait()
		local mresult = menu("Yes.","Nah, I'm a pro~","Cancel.")
		if mresult == 1 then
			dialog "[Chris]"
			dialog "First, it's possible to move every"
			dialog "interface window on your screen by"
			dialog "dragging the window. Just click on"
			dialog "the window, hold down the mouse"
			dialog "button and move your mouse."
			wait()
			dialog "[Chris]"
			dialog "Now, let me explain each interface"
			dialog "window according to their default"
			dialog "positions on your screen."
			wait()
			dialog "[Chris]"
			dialog "At the upper left side of your"
			dialog "screen, you will see a window with"
			dialog "your character name and level. This"
			dialog "is the ^3366FFBasic Information Window.^000000"
			wait()
			dialog "[Chris]"
			if getvar(VAR_CLEVEL) < 8 then
				dialog "Let me give you"
				dialog "some experience points."
				dialog "Keep an eye on your Basic Info"
				dialog "Window and observe the change in"
				dialog "your Base Level experience gauge."
				wait()
				dialog "[Chris]"
				dialog "Did you see...?"
				dialog "As you gain experience,"
				dialog "the experience gauge fills up."
				dialog "Once it is 100% full, you gain an"
				dialog "experience level, and the gauge is"
				dialog "reset to 0."
				if getvar(VAR_CLEVEL) == 1 then
					setitem(nov_get_item02,10)
					getexp(10)
				elseif getvar(VAR_CLEVEL) == 2 then
					setitem(nov_get_item02,10)
					getexp(17)
				elseif getvar(VAR_CLEVEL) == 3 then
					setitem(nov_get_item02,10)
					getexp(26)
				elseif getvar(VAR_CLEVEL) == 4 then
					setitem(nov_get_item02,10)
					getexp(37)
				elseif getvar(VAR_CLEVEL) == 5 then
					setitem(nov_get_item02,10)
					getexp(78)
				elseif getvar(VAR_CLEVEL) == 6 then
					setitem(nov_get_item02,10)
					getexp(115)
				elseif getvar(VAR_CLEVEL) == 7 then
					setitem(nov_get_item02,10)
					getexp(155)
				end
			else
				dialog "But..."
				dialog "I guess you're already familiar"
				dialog "with the Base Level experience"
				dialog "gauge."
			end
			wait()
			dialog "[Chris]"
			dialog "At the bottom of the Basic Info"
			dialog "Window, you will see two different"
			dialog "experience gauge bars. The top bar"
			dialog "is for your current Base Level, and"
			dialog "the bottom one displays experience"
			dialog "for your current Job Level."
			wait()
			dialog "[Chris]"
			dialog "When the Job Level"
			dialog "Experience bar is filled, you will"
			dialog "earn a Job Level, and a ^3366FFSkill^000000"
			dialog "^3366FFPoint^000000. Skill Points are spent to"
			dialog "learn skills for your character."
			wait()
			dialog "[Chris]"
			dialog "On the right side"
			dialog "of the Basic Info window,"
			dialog "you will see various"
			dialog "Menu buttons."
			wait()
			dialog "[Chris]"
			dialog "Clicking these Menu buttons will"
			dialog "open other Interface Windows, such"
			dialog "as the Inventory Window"
			dialog "or Party Window."
			wait()
			dialog "[Chris]"
			dialog "Now..."
			dialog "The ^3366FFChat Window^000000 is"
			dialog "located at the bottom"
			dialog "of your screen."
			wait()
			dialog "[Chris]"
			dialog "At the bottom right of the Chat"
			dialog "Window, you should see 2 blue"
			dialog "buttons. The left button allows you"
			dialog "to change your chatting options."
			wait()
			dialog "[Chris]"
			dialog "The '^3366FFSend to All^000000' option"
			dialog "allows you to chat with"
			dialog "everyone on your screen."
			wait()
			dialog "[Chris]"
			dialog "The '^3366FFSend to Party^000000' and '^3366FFSent to^000000"
			dialog "^3366FFGuild^000000' option allows you to send"
			dialog "messages to only members of your"
			dialog "party or guild, regardless of how"
			dialog "far away they are."
			wait()
			dialog "[Chris]"
			dialog "You can drag the Scroll Bar"
			dialog "on the right side of the Chat"
			dialog "Window to review a conversation."
			dialog "Since the Chat Window is always"
			dialog "active, you won't have any problem"
			dialog "communicating with other players."
			wait()
			dialog "[Chris]"
			dialog "Now, one of the most important"
			dialog "interfaces is the ^3366FFMini-Map^000000, located"
			dialog "at the upper-right of your screen."
			wait()
			dialog "[Chris]"
			dialog "The red dots on the Mini-Map"
			dialog "indicate locations of ^3366FFWarp Portals^000000"
			dialog "which connect to different zones."
			wait()
			dialog "[Chris]"
			dialog "If you've joined a party or a"
			dialog "guild, the Mini-Map will also show"
			dialog "you the location of your party or"
			dialog "guild members if they are on the"
			dialog "same map."
			wait()
			dialog "[Chris]"
			dialog "Please click the Menu buttons"
			dialog "on the right side of your Basic"
			dialog "Info window with the other"
			dialog "interfaces."
			wait()
			dialog "[Chris]"
			dialog "Well, that was my brief overview on"
			dialog "in-game interfaces. It might seem"
			dialog "like a lot of information now, but"
			dialog "it will soon become second nature."
			wait()
			dialog "[Chris]"
			if getvar(VAR_JOBLEVEL) < 7 then
				dialog "Let me give you a little bit of Job"
				dialog "experience points. Open your Skill"
				dialog "Window and distribute your"
				dialog "Skill Points into ^3366FFBasic Skills^000000."
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item02,11)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item02,11)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item02,11)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item02,11)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item02,11)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item02,11)
					getJexp(151)
				end
			else
				dialog "Your Job Level is much higher than"
				dialog "I had expected. You must already"
				dialog "know the basic information by now."
			end
			wait()
			dialog "[Chris]"
			dialog "Now, why don't you speak to Edwin?"
			dialog "He will teach you more regarding"
			dialog "the basic use of Skills. Ah, and"
			dialog "let me give you a small present: a"
			dialog "Tattered Novice Ninja Suit!"
			setitem(nov_get_item02,12)
			getitem(Novice_Plate,1)
			close()
		elseif mresult == 2 then
			dialog "[Chris]"
			dialog "Let me guide you"
			dialog "to the Field Combat"
			dialog "Training Course."
			dialog "You can come back any time if you"
			dialog "feel that you need a review."
			close()
			moveto("new_1-2",28,178)
			return
		elseif mresult == 3 then
			Emotion("Interface Tutor",ET_PROFUSELY_SWAT)
		end
	elseif (getvar(nov_get_item03) < 10) then
		dialog "[Chris]"
		dialog "How may I help you?"
		dialog "Can I see your proof of"
		dialog "registration?"
		wait()
		dialog "[Chris]"
		dialog "It seems that you haven't attended"
		dialog "the Skill Information class yet."
		dialog "Please talk to a tutor to the very"
		dialog "left of this room to attend his"
		dialog "class."
		wait()
		local mresult = menu("Thank you!","I'm tired of classes~","Cancel.")
		if mresult == 1 then
			dialog "[Chris]"
			dialog "When you attend the Skill"
			dialog "Information class, you'll gain a"
			dialog "better understanding of the use of"
			dialog "skills."
			wait()
			dialog "[Chris]"
			dialog "Since the use of skills is integral"
			dialog "to survival in Rune-Midgard, I"
			dialog "strongly suggest that you attend"
			dialog "the class. Come, I shall guide you"
			dialog "there."
			close()
			moveto("new_1-2",84,107)
			return
		elseif mresult == 2 then
			dialog "[Chris]"
			dialog "I see. In that case, you must be"
			dialog "ready for the Field Combat Training"
			dialog "Course. Shall I send you there"
			dialog "right away?"
			wait()
			local mresultb = menu("No! W-wait!","Please do~!")
			if mresultb == 1 then
				dialog "[Chris]"
				dialog "...?!"
				dialog "O...kay then."
				dialog "Please come back"
				dialog "when you're ready."
				close()
			elseif mresultb == 2 then
				dialog "[Chris]"
				dialog "Godspeed,"
				dialog "young Novice."
				close()
				moveto("new_1-2",28,178)
				return
			end
		elseif mresult == 3 then
			Emotion("Interface Tutor",ET_PROFUSELY_SWAT)
		end
	elseif (getvar(nov_get_item04) < 10) then
		dialog "[Chris]"
		dialog "How may I help you?"
		dialog "Can I see your proof of"
		dialog "registration?"
		wait()
		dialog "[Chris]"
		dialog "It looks like you still haven't"
		dialog "attended the Item Information class"
		dialog "yet. Please speak to the tutor to"
		dialog "the very right of this room to"
		dialog "attend her class."
		wait()
		local mresult = menu("Thank you!","I'm tired of classes~","Cancel.")
		if mresult == 1 then
			dialog "[Chris]"
			dialog "The Item Information class is very"
			dialog "useful for you to learn how to use"
			dialog "your Hot keys and Hot key bars."
			dialog "Come, let me guide you there."
			close()
			moveto("new_1-2",115,107)
			return
		elseif mresult == 2 then
			dialog "[Chris]"
			dialog "I see. In that case, you must be"
			dialog "ready for the Field Combat Training"
			dialog "Course. Shall I send you there"
			dialog "right away?"
			wait()
			local mresultb = menu("No! W-wait!","Please do~!")
			if mresultb == 1 then
				dialog "[Chris]"
				dialog "...?!"
				dialog "O...kay then."
				dialog "Please come back"
				dialog "when you're ready."
				close()
			elseif mresultb == 2 then
				dialog "[Chris]"
				dialog "Godspeed,"
				dialog "young Novice."
				close()
				moveto("new_1-2",28,178)
				return
			end
		elseif mresult == 3 then
			Emotion("Interface Tutor",ET_PROFUSELY_SWAT)
		end
	else
		dialog "[Chris]"
		dialog "Hello, may I see your"
		dialog "proof of registration?"
		if (getvar(treasure_alb) > 0) then
			dialog "You were previously on the longer training course."
			dialog "I will now dismiss that for you."
			setitem(treasure_alb,0)
			setitem(nov_1_2_cos_c,0)
			setitem(nov_1st_cos,0)
			setitem(nov_3_merchant,0)
			setitem(nov_3_acolyte,0)
			setitem(nov_3_magician,0)
			setitem(nov_3_archer,0)
		end
		wait()
		dialog "[Chris]"
		dialog "Okay, now"
		dialog "you're ready to go."
		dialog "In my class, I teach the"
		dialog "use of the most basic"
		dialog "interfaces."
		wait()
		dialog "[Chris]"
		dialog(""..name..",")
		dialog "would you like to learn"
		dialog "more about interface"
		dialog "fundamentals?"
		wait()
		local mresult = menu("Yes.","Nah, I'm a pro~","Cancel.")
		if mresult == 1 then
			dialog "[Chris]"
			dialog "First, it's possible to move every"
			dialog "interface window on your screen by"
			dialog "dragging the window. Just click on"
			dialog "the window, hold down the mouse"
			dialog "button and move your mouse."
			wait()
			dialog "[Chris]"
			dialog "Now, let me explain each interface"
			dialog "window according to their default"
			dialog "positions on your screen."
			wait()
			dialog "[Chris]"
			dialog "At the upper left side of your"
			dialog "screen, you will see a window with"
			dialog "your character name and level. This"
			dialog "is the ^3366FFBasic Information Window.^000000"
			wait()
			dialog "[Chris]"
			if getvar(VAR_CLEVEL) < 8 then
				dialog "Let me give you"
				dialog "some experience points."
				dialog "Keep an eye on your Basic Info"
				dialog "Window and observe the change in"
				dialog "your Base Level experience gauge."
				wait()
				dialog "[Chris]"
				dialog "Did you see...?"
				dialog "As you gain experience,"
				dialog "the experience gauge fills up."
				dialog "Once it is 100% full, you gain an"
				dialog "experience level, and the gauge is"
				dialog "reset to 0."
				if getvar(VAR_CLEVEL) == 1 then
					setitem(nov_get_item02,10)
					getexp(10)
				elseif getvar(VAR_CLEVEL) == 2 then
					setitem(nov_get_item02,10)
					getexp(17)
				elseif getvar(VAR_CLEVEL) == 3 then
					setitem(nov_get_item02,10)
					getexp(26)
				elseif getvar(VAR_CLEVEL) == 4 then
					setitem(nov_get_item02,10)
					getexp(37)
				elseif getvar(VAR_CLEVEL) == 5 then
					setitem(nov_get_item02,10)
					getexp(78)
				elseif getvar(VAR_CLEVEL) == 6 then
					setitem(nov_get_item02,10)
					getexp(115)
				elseif getvar(VAR_CLEVEL) == 7 then
					setitem(nov_get_item02,10)
					getexp(155)
				end
			else
				dialog "But..."
				dialog "I guess you're already familiar"
				dialog "with the Base Level experience"
				dialog "gauge."
			end
			wait()
			dialog "[Chris]"
			dialog "At the bottom of the Basic Info"
			dialog "Window, you will see two different"
			dialog "experience gauge bars. The top bar"
			dialog "is for your current Base Level, and"
			dialog "the bottom one displays experience"
			dialog "for your current Job Level."
			wait()
			dialog "[Chris]"
			dialog "When the Job Level"
			dialog "Experience bar is filled, you will"
			dialog "earn a Job Level, and a ^3366FFSkill^000000"
			dialog "^3366FFPoint^000000. Skill Points are spent to"
			dialog "learn skills for your character."
			wait()
			dialog "[Chris]"
			dialog "On the right side"
			dialog "of the Basic Info window,"
			dialog "you will see various"
			dialog "Menu buttons."
			wait()
			dialog "[Chris]"
			dialog "Clicking these Menu buttons will"
			dialog "open other Interface Windows, such"
			dialog "as the Inventory Window"
			dialog "or Party Window."
			wait()
			dialog "[Chris]"
			dialog "Now..."
			dialog "The ^3366FFChat Window^000000 is"
			dialog "located at the bottom"
			dialog "of your screen."
			wait()
			dialog "[Chris]"
			dialog "At the bottom right of the Chat"
			dialog "Window, you should see 2 blue"
			dialog "buttons. The left button allows you"
			dialog "to change your chatting options."
			wait()
			dialog "[Chris]"
			dialog "The '^3366FFSend to All^000000' option"
			dialog "allows you to chat with"
			dialog "everyone on your screen."
			wait()
			dialog "[Chris]"
			dialog "The '^3366FFSend to Party^000000' and '^3366FFSent to^000000"
			dialog "^3366FFGuild^000000' option allows you to send"
			dialog "messages to only members of your"
			dialog "party or guild, regardless of how"
			dialog "far away they are."
			wait()
			dialog "[Chris]"
			dialog "You can drag the Scroll Bar"
			dialog "on the right side of the Chat"
			dialog "Window to review a conversation."
			dialog "Since the Chat Window is always"
			dialog "active, you won't have any problem"
			dialog "communicating with other players."
			wait()
			dialog "[Chris]"
			dialog "Now, one of the most important"
			dialog "interfaces is the ^3366FFMini-Map^000000, located"
			dialog "at the upper-right of your screen."
			wait()
			dialog "[Chris]"
			dialog "The red dots on the Mini-Map"
			dialog "indicate locations of ^3366FFWarp Portals^000000"
			dialog "which connect to different zones."
			wait()
			dialog "[Chris]"
			dialog "If you've joined a party or a"
			dialog "guild, the Mini-Map will also show"
			dialog "you the location of your party or"
			dialog "guild members if they are on the"
			dialog "same map."
			wait()
			dialog "[Chris]"
			dialog "Please click the Menu buttons"
			dialog "on the right side of your Basic"
			dialog "Info window with the other"
			dialog "interfaces."
			wait()
			dialog "[Chris]"
			dialog "Well, that was my brief overview on"
			dialog "in-game interfaces. It might seem"
			dialog "like a lot of information now, but"
			dialog "it will soon become second nature."
			wait()
			dialog "[Chris]"
			if getvar(VAR_JOBLEVEL) < 7 then
				dialog "Let me give you a little bit of Job"
				dialog "experience points. Open your Skill"
				dialog "Window and distribute your"
				dialog "Skill Points into ^3366FFBasic Skills^000000."
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item02,11)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item02,11)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item02,11)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item02,11)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item02,11)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item02,11)
					getJexp(151)
				end
			else
				dialog "Your Job Level is much higher than"
				dialog "I had expected. You must already"
				dialog "know the basic information by now."
			end
			wait()
			dialog "[Chris]"
			dialog "Now, why don't you speak to Edwin?"
			dialog "He will teach you more regarding"
			dialog "the basic use of Skills. Ah, and"
			dialog "let me give you a small present: a"
			dialog "Tattered Novice Ninja Suit!"
			setitem(nov_get_item02,12)
			getitem(Novice_Plate,1)
			close()
		elseif mresult == 2 then
			dialog "[Chris]"
			dialog "Let me guide you"
			dialog "to the Field Combat"
			dialog "Training Course."
			dialog "You can come back any time if you"
			dialog "feel that you need a review."
			close()
			moveto("new_1-2",28,178)
			return
		elseif mresult == 3 then
			Emotion("Interface Tutor",ET_PROFUSELY_SWAT)
		end
	end
end

--npc("new_1-2","Skill Tutor",spr_4_M_MONK,83,111,3,0,0,"new_1_2_Skill_Tutor_83111")
function new_1_2_Skill_Tutor_83111()
	local name = PcName
	if ((getvar(nov_get_item02) > 9) and (getvar(nov_get_item03) > 9) and (getvar(nov_get_item04) > 9)) then
		dialog "[Cecil]"
		dialog "Huh...?"
		dialog "Did you need more help?"
		dialog "I see that you've completed all the"
		dialog "essential courses. Did you speak to"
		dialog "the assistant tutors too?"
		wait()
		local mresult = menu("Send me to the next course!","Assistant tutors?","Take me to a town!")
		if mresult == 1 then
			dialog "[Cecil]"
			dialog "Ah! Right, right."
			dialog "You've got to take on the Field"
			dialog "Combat Training Course sometime, I"
			dialog "suppose"
			wait()
			dialog "[Cecil]"
			dialog "Man, I'm so jealous of the"
			dialog "instructors in the Field Combat"
			dialog "Training Course. Teaching basic"
			dialog "information is just soooo not as"
			dialog "cool as beating stuff up."
			wait()
			dialog "[Cecil]"
			dialog "Ah, right."
			dialog "Field Combat."
			dialog "I'm sending you now."
			dialog "Good luck, kid!"
			close()
			moveto("new_1-2",28,178)
			return
		elseif mresult == 2 then
			dialog "[Cecil]"
			dialog "You know about the"
			dialog "assistant tutors, don't you?"
			wait()
			dialog "[Cecil]"
			dialog "Listen. The three of tutors in this"
			dialog "room only teach the most basic"
			dialog "information. The courses we teach"
			dialog "are meant to be passed quickly."
			wait()
			dialog "[Cecil]"
			dialog "But some people might benefit a"
			dialog "little bit more if they learnt"
			dialog "some more detailed information."
			wait()
			dialog "[Cecil]"
			dialog "If you're completely new to"
			dialog "Ragnarok, it couldn't hurt to"
			dialog "attend the classes held by the"
			dialog "assistant tutors at least once."
			wait()
			dialog "[Cecil]"
			dialog "A guy named Leo Handerson seems to"
			dialog "know a lot about skills, so I think"
			dialog "his knowledge would be useful to"
			dialog "you."
			close()
		elseif mresult == 3 then
			dialog "[Cecil]"
			dialog "A town...?"
			dialog "What do I look like, your own"
			dialog "personal Peco Peco?"
			wait()
			dialog "[Cecil]"
			dialog "That's right, you might be too"
			dialog "young to know about that. Listen,"
			dialog "if you want to move to a town,"
			dialog "speak to the Kafra Lady to the"
			dialog "right, okay?"
			close()
		end
	elseif (getvar(nov_get_item03) < 10) then
		dialog "[Cecil]"
		dialog(""..name.."?")
		dialog "Heh, I like your name!"
		if (getvar(treasure_alb) > 0) then
			dialog "You were previously on the longer training course."
			dialog "I will now dismiss that for you."
			setitem(treasure_alb,0)
			setitem(nov_1_2_cos_c,0)
			setitem(nov_1st_cos,0)
			setitem(nov_3_merchant,0)
			setitem(nov_3_acolyte,0)
			setitem(nov_3_magician,0)
			setitem(nov_3_archer,0)
		end
		dialog "Then, shall we begin the class?"
		wait()
		local mresult = menu("What do you teach?","I want Field Combat Training now!","Cancel.")
		if mresult == 1 then
			dialog "[Cecil]"
			dialog "I live for power"
			dialog "and die for power!"
			dialog "I shall teach you"
			dialog "my famous fatal blow!"
			wait()
			dialog "[Cecil]"
			dialog "I'm just pulling your chain!"
			dialog "I actually just teach you how to"
			dialog "use your skills. I still live for"
			dialog "power, though."
			wait()
			dialog "[Cecil]"
			dialog "In your Basic Info Window, click"
			dialog "the ^3366FFskill^000000 button to open your Skill"
			dialog "Window. You can also press the"
			dialog "'^3366FFAlt^000000' and '^3366FFS^000000' keys at the"
			dialog "same time."
			wait()
			dialog "[Cecil]"
			dialog "When your"
			dialog "Skill Window is open,"
			dialog "you'll see an icon labeled"
			dialog "'^000099Basic Skill.^000000'"
			wait()
			dialog "[Cecil]"
			dialog "Now, at the bottom of the Skill"
			dialog "Window, the number of remaining"
			dialog "Skill Points that you have is"
			dialog "displayed."
			wait()
			dialog "[Cecil]"
			if getvar(VAR_JOBLEVEL) < 7 then
				dialog "Open your Skill Window ('Alt' +"
				dialog "'S') and click the '^000099Lv Up^000000' button"
				dialog "next to the Basic Skill icon to"
				dialog "allocate a Skill Point to your"
				dialog "Basic Skills."
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item03,10)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item03,10)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item03,10)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item03,10)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item03,10)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item03,10)
					getJexp(151)
				end
			else
				dialog "Huh. Actually, your Job Level is"
				dialog "higher than I thought. I guess you"
				dialog "already know the basics about"
				dialog "skills then."
			end
			wait()
			dialog "[Cecil]"
			dialog "So did you distribute the skill"
			dialog "points to your Basic Skills? You'll"
			dialog "need to master the Basic Skills"
			dialog "eventually, so it's a good idea."
			wait()
			dialog "[Cecil]"
			dialog "For more detailed information on"
			dialog "skills, go speak to Leo Handerson,"
			dialog "one of the assistant tutors."
			wait()
			dialog "[Cecil]"
			dialog "Oh, I almost forgot!"
			dialog "Let me teach you the ^3366FFFirst Aid^000000"
			dialog "skill. This skill will help you out"
			dialog "a lot when you're in danger."
			wait()
			dialog "^3366FFYou have learnt^000000"
			dialog "^3366FFFirst Aid Skill^000000"
			EventAddSkill(NV_FIRSTAID,1)
			setitem(skill_nov,3)
			setitem(nov_get_item03,11)
			wait()
			if getvar(VAR_JOBLEVEL) < 7 then
				dialog "^3366FFYou have gained a small^000000"
				dialog "^3366FFamount of Job experience.^00000"
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item03,12)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item03,12)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item03,12)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item03,12)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item03,12)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item03,12)
					getJexp(151)
				end
			end
			wait()
			dialog "[Cecil]"
			dialog "Now, open your Skill Window"
			dialog "and check if you have the ^3366FFFirst^000000"
			dialog "^3366FFAid^000000 skill icon. To use it, you need"
			dialog "to double-click that skill icon."
			dialog "Now, try it!"
			wait()
			hpdrain(50)
			wait()
			dialog "[Cecil]"
			dialog "Active skills, like First Aid,"
			dialog "require a certain amount of SP to"
			dialog "use them. The First Aid skill is"
			dialog "useful for Novices, since it"
			dialog "refills a little bit of HP."
			wait()
			dialog "[Cecil]"
			dialog "You've been"
			dialog "a good student,"
			dialog "so let me reward you!"
			if getvar(VAR_CLEVEL) < 8 then
				dialog "Behold: bonus experience!"
				if getvar(VAR_CLEVEL) == 1 then
					setitem(nov_get_item03,13)
					getexp(10)
				elseif getvar(VAR_CLEVEL) == 2 then
					setitem(nov_get_item03,13)
					getexp(17)
				elseif getvar(VAR_CLEVEL) == 3 then
					setitem(nov_get_item03,13)
					getexp(26)
				elseif getvar(VAR_CLEVEL) == 4 then
					setitem(nov_get_item03,13)
					getexp(37)
				elseif getvar(VAR_CLEVEL) == 5 then
					setitem(nov_get_item03,13)
					getexp(78)
				elseif getvar(VAR_CLEVEL) == 6 then
					setitem(nov_get_item03,13)
					getexp(115)
				elseif getvar(VAR_CLEVEL) == 7 then
					setitem(nov_get_item03,13)
					getexp(155)
				end
			else
				dialog "Oh wait. You're much higher in"
				dialog "level than I though. Still, I'm"
				dialog "proud of you!"
			end
			wait()
			dialog "[Cecil]"
			dialog "Well, that's it for the essential"
			dialog "fundamentals. If you want a more"
			dialog "comprehensive lesson, you gotta"
			dialog "speak to the assistant tutors."
			wait()
			local mresultb = menu("Okay.","Send me to Field Combat Training, now!","Cancel")
			if mresultb == 1 then
				dialog "[Cecil]"
				dialog "Everyone in the"
				dialog "Training Grounds is"
				dialog "more than willing to"
				dialog "help you. Good luck!"
				close()
			elseif mresultb == 2 then
				dialog "[Cecil]"
				dialog "Heh heh~!"
				dialog "Alright, practice makes perfect!"
				dialog "Let me send you to the guys at"
				dialog "Field Combat Training. Take care!"
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 3 then
				Emotion("Skill Tutor",ET_HUK)
			end
		elseif mresult == 2 then
			dialog "[Cecil]"
			dialog "Heh heh~!"
			dialog "Alright, practice makes perfect!"
			dialog "Let me send you to the guys at"
			dialog "Field Combat Training. Take care!"
			close()
			moveto("new_1-2",28,178)
			return
		elseif mresult == 3 then
			Emotion("Skill Tutor",ET_HUK)
		end
	elseif (getvar(nov_get_item02) < 10) then
		dialog "[Cecil]"
		dialog "So how may"
		dialog "I help you?"
		dialog "Whoa, you haven't attended the Item"
		dialog "Information class yet? Oh well, I"
		dialog "know that class is kind boring~"
		wait()
		local mresult = menu("Oh, I better take that class.","Send me to Field Combat Training.","Cancel.")
		if mresult == 1 then
			dialog "[Cecil]"
			dialog "Yeah, that's a good idea. After"
			dialog "all, you'll gain experience and"
			dialog "items while you take that class."
			dialog "Alright then, the item Tutor is on"
			dialog "the far right side of this room. Go"
			dialog "for it~"
			close()
		elseif mresult == 2 then
			dialog "[Cecil]"
			dialog "Heh heh~!"
			dialog "Alright, practice makes perfect!"
			dialog "Let me send you to the guys at"
			dialog "Field Combat Training. Take care!"
			close()
			moveto("new_1-2",28,178)
			return
		elseif mresult == 3 then
			Emotion("Skill Tutor",ET_HUK)
		end
	elseif (getvar(nov_get_item04) < 10) then
		dialog "[Cecil]"
		dialog "So how may"
		dialog "I help you?"
		dialog "Whoa, you haven't attended the"
		dialog "Basic Interface class yet? Oh well,"
		dialog "I know that class is kinda boring~"
		wait()
		local mresult = menu("Oh, I better take that class.","Send me to Field Combat Training.","Cancel.")
		if mresult == 1 then
			dialog "[Cecil]"
			dialog "Yeah, that's a good idea. After"
			dialog "all, you'll gain experience and"
			dialog "items while you take that class."
			dialog "Alright then, the Interfaces Tutor"
			dialog "is in the center of this room. Go"
			dialog "for it~"
			close()
			moveto("new_1-2",115,107)
			return
		elseif mresult == 2 then
			dialog "[Cecil]"
			dialog "Heh heh~!"
			dialog "Alright, practice makes perfect!"
			dialog "Let me send you to the guys at"
			dialog "Field Combat Training. Take care!"
			close()
			moveto("new_1-2",28,178)
			return
		elseif mresult == 3 then
			Emotion("Skill Tutor",ET_HUK)
		end
	else
		dialog "[Cecil]"
		dialog(""..name.."?")
		dialog "Heh, I like your name!"
		if (getvar(treasure_alb) > 0) then
			dialog "You were previously on the longer training course."
			dialog "I will now dismiss that for you."
			setitem(treasure_alb,0)
			setitem(nov_1_2_cos_c,0)
			setitem(nov_1st_cos,0)
			setitem(nov_3_merchant,0)
			setitem(nov_3_acolyte,0)
			setitem(nov_3_magician,0)
			setitem(nov_3_archer,0)
		end
		dialog "Then, shall we begin the class?"
		wait()
		local mresult = menu("What do you teach?","I want Field Combat Training now!","Cancel.")
		if mresult == 1 then
			dialog "[Cecil]"
			dialog "I live for power"
			dialog "and die for power!"
			dialog "I shall teach you"
			dialog "my famous fatal blow!"
			wait()
			dialog "[Cecil]"
			dialog "I'm just pulling your chain!"
			dialog "I actually just teach you how to"
			dialog "use your skills. I still live for"
			dialog "power, though."
			wait()
			dialog "[Cecil]"
			dialog "In your Basic Info Window, click"
			dialog "the ^3366FFskill^000000 button to open your Skill"
			dialog "Window. You can also press the"
			dialog "'^3366FFAlt^000000' and '^3366FFS^000000' keys at the"
			dialog "same time."
			wait()
			dialog "[Cecil]"
			dialog "When your"
			dialog "Skill Window is open,"
			dialog "you'll see an icon labeled"
			dialog "'^000099Basic Skill.^000000'"
			wait()
			dialog "[Cecil]"
			dialog "Now, at the bottom of the Skill"
			dialog "Window, the number of remaining"
			dialog "Skill Points that you have is"
			dialog "displayed."
			wait()
			dialog "[Cecil]"
			if getvar(VAR_JOBLEVEL) < 7 then
				dialog "Open your Skill Window ('Alt' +"
				dialog "'S') and click the '^000099Lv Up^000000' button"
				dialog "next to the Basic Skill icon to"
				dialog "allocate a Skill Point to your"
				dialog "Basic Skills."
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item03,10)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item03,10)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item03,10)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item03,10)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item03,10)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item03,10)
					getJexp(151)
				end
			else
				dialog "Huh. Actually, your Job Level is"
				dialog "higher than I thought. I guess you"
				dialog "already know the basics about"
				dialog "skills then."
			end
			wait()
			dialog "[Cecil]"
			dialog "So did you distribute the skill"
			dialog "points to your Basic Skills? You'll"
			dialog "need to master the Basic Skills"
			dialog "eventually, so it's a good idea."
			wait()
			dialog "[Cecil]"
			dialog "For more detailed information on"
			dialog "skills, go speak to Leo Handerson,"
			dialog "one of the assistant tutors."
			wait()
			dialog "[Cecil]"
			dialog "Oh, I almost forgot!"
			dialog "Let me teach you the ^3366FFFirst Aid^000000"
			dialog "skill. This skill will help you out"
			dialog "a lot when you're in danger."
			wait()
			dialog "^3366FFYou have learnt^000000"
			dialog "^3366FFFirst Aid Skill^000000"
			EventAddSkill(NV_FIRSTAID,1)
			setitem(skill_nov,3)
			setitem(nov_get_item03,11)
			wait()
			if getvar(VAR_JOBLEVEL) < 7 then
				dialog "^3366FFYou have gained a small^000000"
				dialog "^3366FFamount of Job experience.^00000"
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item03,12)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item03,12)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item03,12)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item03,12)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item03,12)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item03,12)
					getJexp(151)
				end
			end
			wait()
			dialog "[Cecil]"
			dialog "Now, open your Skill Window"
			dialog "and check if you have the ^3366FFFirst^000000"
			dialog "^3366FFAid^000000 skill icon. To use it, you need"
			dialog "to double-click that skill icon."
			dialog "Now, try it!"
			wait()
			hpdrain(50)
			wait()
			dialog "[Cecil]"
			dialog "Active skills, like First Aid,"
			dialog "require a certain amount of SP to"
			dialog "use them. The First Aid skill is"
			dialog "useful for Novices, since it"
			dialog "refills a little bit of HP."
			wait()
			dialog "[Cecil]"
			dialog "You've been"
			dialog "a good student,"
			dialog "so let me reward you!"
			if getvar(VAR_CLEVEL) < 8 then
				dialog "Behold: bonus experience!"
				if getvar(VAR_CLEVEL) == 1 then
					setitem(nov_get_item03,13)
					getexp(10)
				elseif getvar(VAR_CLEVEL) == 2 then
					setitem(nov_get_item03,13)
					getexp(17)
				elseif getvar(VAR_CLEVEL) == 3 then
					setitem(nov_get_item03,13)
					getexp(26)
				elseif getvar(VAR_CLEVEL) == 4 then
					setitem(nov_get_item03,13)
					getexp(37)
				elseif getvar(VAR_CLEVEL) == 5 then
					setitem(nov_get_item03,13)
					getexp(78)
				elseif getvar(VAR_CLEVEL) == 6 then
					setitem(nov_get_item03,13)
					getexp(115)
				elseif getvar(VAR_CLEVEL) == 7 then
					setitem(nov_get_item03,13)
					getexp(155)
				end
			else
				dialog "Oh wait. You're much higher in"
				dialog "level than I though. Still, I'm"
				dialog "proud of you!"
			end
			wait()
			dialog "[Cecil]"
			dialog "Well, that's it for the essential"
			dialog "fundamentals. If you want a more"
			dialog "comprehensive lesson, you gotta"
			dialog "speak to the assistant tutors."
			wait()
			local mresultb = menu("Okay.","Send me to Field Combat Training, now!","Cancel")
			if mresultb == 1 then
				dialog "[Cecil]"
				dialog "Everyone in the"
				dialog "Training Grounds is"
				dialog "more than willing to"
				dialog "help you. Good luck!"
				close()
			elseif mresultb == 2 then
				dialog "[Cecil]"
				dialog "Heh heh~!"
				dialog "Alright, practice makes perfect!"
				dialog "Let me send you to the guys at"
				dialog "Field Combat Training. Take care!"
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 3 then
				Emotion("Skill Tutor",ET_HUK)
			end
		elseif mresult == 2 then
			dialog "[Cecil]"
			dialog "Heh heh~!"
			dialog "Alright, practice makes perfect!"
			dialog "Let me send you to the guys at"
			dialog "Field Combat Training. Take care!"
			close()
			moveto("new_1-2",28,178)
			return
		elseif mresult == 3 then
			Emotion("Skill Tutor",ET_HUK)
		end
	end
end

--npc("new_1-2","Item Tutor",spr_4_F_JOB_BLACKSMITH,115,111,3,0,0,"new_1_2_Item_Tutor_115111")
function new_1_2_Item_Tutor_115111()
	local name = PcName
	if ((getvar(nov_get_item02) > 9) and (getvar(nov_get_item03) > 9) and (getvar(nov_get_item04) > 9)) then
		dialog "[Alice]"
		dialog "Huh...?"
		dialog "Do you need help looking for"
		dialog "someone? You seem to have completed"
		dialog "all of the essential courses. Where"
		dialog "do you need to go?"
		wait()
		local mresult = menu("I'm not sure~!","Send me to a town.","Cancel")
		if mresult == 1 then
			dialog "[Alice]"
			dialog "Hmm..."
			dialog "You've learnt everything else"
			dialog "so I guess the only thing left is"
			dialog "Field Combat Training. Did you want"
			dialog "to attend that class now?"
			wait()
			local mresultb = menu("Let me go!","wait for a moment.")
			if mresultb == 1 then
				dialog "[Alice]"
				dialog "Make sure you keep the items I've"
				dialog "given you handy, and that you equip"
				dialog "all of your armour, alright? Now,"
				dialog "take care."
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 2 then
				dialog "[Alice]"
				dialog "Okay, no problem."
				dialog "Come to me when you"
				dialog "need any help."
				close()
			end
		elseif mresult == 2 then
			dialog "[Alice]"
			dialog "Ah, I see."
			dialog "If you want to move to a town, the"
			dialog "Kafra Lady to the right of me will"
			dialog "teleport you. Take care now~"
			close()
		elseif mresult == 3 then
			dialog "[Alice]"
			dialog "Hmpf...!"
			close()
		end
	elseif (getvar(nov_get_item04) < 10) then
		dialog "[Alice]"
		dialog "*Yawn~*"
		dialog "This is so boring."
		dialog "Oh! Hello, you're new here."
		if (getvar(treasure_alb) > 0) then
			dialog "You were previously on the longer training course."
			dialog "I will now dismiss that for you."
			setitem(treasure_alb,0)
			setitem(nov_1_2_cos_c,0)
			setitem(nov_1st_cos,0)
			setitem(nov_3_merchant,0)
			setitem(nov_3_acolyte,0)
			setitem(nov_3_magician,0)
			setitem(nov_3_archer,0)
		end
		dialog "So, you have come to attend"
		dialog "my Item Information class?"
		wait()
		local mresult = menu("Yes.","No, thanks.","How do I get to a town?")
		if mresult == 1 then
			dialog "[Alice]"
			dialog "Don't worry, it'll be short."
			dialog "Open your Inventory Window"
			dialog "through either the '^3366FFItems^000000' button"
			dialog "in the Basic Info window, or by"
			dialog "pressing the '^3366FFAlt^000000' and '^3366FFE^000000' keys at"
			dialog "the same time."
			wait()
			dialog "[Alice]"
			dialog "In the Inventory Window, you'll see"
			dialog "3 tabs labeled ^3366FFitem^000000, ^3366FFequip^000000, and ^3366FFetc.^000000"
			dialog "Items that can be consumed are"
			dialog "under the ^696969item^000000 tab."
			wait()
			dialog "[Alice]"
			dialog "Now, would you click the ^696969item^000000 tab"
			dialog "in the Inventory Window? I just"
			dialog "gave you a Novice Potion. You can"
			dialog "drink it by double-clicking it. Go"
			dialog "ahead, try it!"
			setitem(nov_get_item04,10)
			getitem(Novice_Potion,1)
			hpdrain(50)
			wait()
			dialog "[Alice]"
			if getvar(Novice_Potion) < 1 then
				if getvar(VAR_CLEVEL) < 8 then
					dialog "Nice~!"
					dialog "And here's"
					dialog "a little reward"
					dialog "just for listening."
					if getvar(VAR_CLEVEL) == 1 then
						setitem(nov_get_item04,11)
						getexp(10)
					elseif getvar(VAR_CLEVEL) == 2 then
						setitem(nov_get_item04,11)
						getexp(17)
					elseif getvar(VAR_CLEVEL) == 3 then
						setitem(nov_get_item04,11)
						getexp(26)
					elseif getvar(VAR_CLEVEL) == 4 then
						setitem(nov_get_item04,11)
						getexp(37)
					elseif getvar(VAR_CLEVEL) == 5 then
						setitem(nov_get_item04,11)
						getexp(78)
					elseif getvar(VAR_CLEVEL) == 6 then
						setitem(nov_get_item04,11)
						getexp(115)
					elseif getvar(VAR_CLEVEL) == 7 then
						setitem(nov_get_item04,11)
						getexp(155)
					end
				else
				dialog "Oh wait. You're much higher in"
				dialog "level than I though. Still, I'm"
				dialog "proud of you!"
				end
			else
				dialog "[Alice]"
				dialog "Um..."
				dialog "Well, you can drink"
				dialog "it later I guess."
			end
			dialog "[Alice]"
			dialog "Let me explain about"
			dialog "items in the ^696969equip^000000 tab"
			dialog "of the Inventory Window."
			wait()
			dialog "[Alice]"
			dialog "When you click on the ^696969equip^000000 tab,"
			dialog "you can view every item in your"
			dialog "inventory that you can equip. Let"
			dialog "me give you some equipment so that"
			dialog "you can try them on."
			wait()
			dialog "[Alice]"
			dialog "Got them? Good."
			dialog "Now, double-click"
			dialog "on the Novice Slippers"
			dialog "I just gave you to"
			dialog "put them on."
			setitem(nov_get_item04,12)
			getitem(Novice_Hood,1)
			getitem(Novice_Boots,1)
			getitem(Novice_Egg_Cap,1)
			wait()
			local mango = GetEquipCount(Novice_Boots)
			dialog "[Alice]"
			if mango > 0 then
				if getvar(VAR_CLEVEL) < 8 then
					dialog "Hooray~!"
					dialog "You did it!"
					dialog "You deserve a reward!"
					if getvar(VAR_CLEVEL) == 1 then
						setitem(nov_get_item04,13)
						getexp(10)
					elseif getvar(VAR_CLEVEL) == 2 then
						setitem(nov_get_item04,13)
						getexp(17)
					elseif getvar(VAR_CLEVEL) == 3 then
						setitem(nov_get_item04,13)
						getexp(26)
					elseif getvar(VAR_CLEVEL) == 4 then
						setitem(nov_get_item04,13)
						getexp(37)
					elseif getvar(VAR_CLEVEL) == 5 then
						setitem(nov_get_item04,13)
						getexp(78)
					elseif getvar(VAR_CLEVEL) == 6 then
						setitem(nov_get_item04,13)
						getexp(115)
					elseif getvar(VAR_CLEVEL) == 7 then
						setitem(nov_get_item04,13)
						getexp(155)
					end
				else
				dialog "Oh wait. You're much higher in"
				dialog "level than I though. Still, I'm"
				dialog "proud of you!"
				end
			else
				dialog "Er..."
				dialog "You've got to"
				dialog "double-click"
				dialog "equipment to"
				dialog "wear it. Just"
				dialog "remember that, okay?"
			end
			wait()
			dialog "[Alice]"
			dialog "Would you"
			dialog "press the '^3366FFF12^000000' key?"
			dialog "This will summon your"
			dialog "Hotkey bar on your screen."
			wait()
			wait()
			dialog "[Alice]"
			dialog "You can assign hotkeys to your"
			dialog "items, skills and equipment using"
			dialog "the Hotkey bar. Just drag skill"
			dialog "icons from the Skill Window or"
			dialog "items from the Inventory Window"
			dialog "into the Hotkey bar."
			wait()
			dialog "[Alice]"
			dialog "The Hotkeys are 'F1' to 'F9'."
			dialog "If you have attended the Skill"
			dialog "Class, you must have been given the"
			dialog "First Aid skill. Drag and drop the"
			dialog "First Aid skill icon into the"
			dialog "Hotkey bar."
			wait()
			dialog "[Alice]"
			dialog "For your information, only"
			dialog "active skills can be assigned to a"
			dialog "Hotkey and dragged to the Hotkey"
			dialog "bar. Active Skills have coloured,"
			dialog "square shaped icons that can be"
			dialog "double-clicked and used."
			wait()
			dialog "[Alice]"
			dialog "Passive Skills, such as the aptly"
			dialog "named 'Basic Skill', cannot be"
			dialog "dragged into the Hotkey bar because"
			dialog "Passive Skills are always in effect"
			dialog "and don't need to be activated."
			if getvar(VAR_JOBLEVEL) < 7 then
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item04,14)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item04,14)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item04,14)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item04,14)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item04,14)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item04,14)
					getJexp(151)
				end
			end
			wait()
			dialog "[Alice]"
			dialog "Well, that's it!"
			dialog "Let me supply you with some items"
			dialog "that will help you during the Field"
			dialog "Combat Training."
			wait()
			dialog "[Alice]"
			dialog "However, ^FF0000do not use the Fly Wing or^000000"
			dialog "^FF0000Butterfly Wing^000000 in these Training"
			dialog "Grounds or you could be stuck here"
			dialog "forever. Those items are for when"
			dialog "you graduate, okay?"
			setitem(nov_get_item04,15)
			getitem(Wing_Of_Fly,10)
			getitem(Wing_Of_Butterfly,2)
			getitem(Novice_Potion,50)
			wait()
			dialog "[Alice]"
			dialog "And lastly..."
			if getvar(VAR_JOBLEVEL) < 7 then
				dialog "I will give"
				dialog "you some Job experience!"
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item04,16)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item04,16)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item04,16)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item04,16)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item04,16)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item04,16)
					getJexp(151)
				end
			else
				dialog "Huh. Actually, your Job Level is"
				dialog "higher than I thought. I guess you"
				dialog "already know the basics about"
				dialog "skills then."
			end
			wait()
			local mresultb = menu("Now what?","Send me to the actual fighting class!","Cancel")
			if mresultb == 1 then
				dialog "[Alice]"
				dialog "Why don't you walk around"
				dialog "and talk to other tutors if you"
				dialog "haven't already?"
				wait()
				dialog "[Alice]"
				dialog "Everyone in this training grounds"
				dialog "are more than willing to help you."
				dialog "Maybe you can venture around"
				dialog "this area if you're bored."
				wait()
				dialog "[Alice]"
				dialog "The assistant tutors in the room to"
				dialog "the right possess useful knowledge."
				dialog "There are also a few interesting"
				dialog "places hidden within this area."
				dialog "Good luck!"
				close()
			elseif mresultb == 2 then
				dialog "[Alice]"
				dialog "What an enthusiastic Novice you"
				dialog "are! Okay, I'll send you to the"
				dialog "folks in charge of Field Combat"
				dialog "Training. Make sure that you listen"
				dialog "carefully to the trainers."
				wait()
				dialog "[Alice]"
				dialog "After all..."
				dialog "When you're fighting monsters, it's"
				dialog "a matter of life and death! Alright"
				dialog "then, take care~"
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 3 then
				dialog "[Alice]"
				dialog "Hmpf!"
				close()
			end
		elseif mresult == 2 then
			dialog "[Alice]"
			dialog "Are you sure you really want to go"
			dialog "into Field Combat Training? Have"
			dialog "you spoken to every tutor? You"
			dialog "better do that beforehand."
			wait()
			local mresultb = menu("No, no! Send me to the actual fighting class!","Oh, wait!")
			if mresultb == 1 then
				dialog "[Alice]"
				dialog "What an enthusiastic Novice you"
				dialog "are! Okay, I'll send you to the"
				dialog "folks in charge of Field Combat"
				dialog "Training. Make sure that you listen"
				dialog "carefully to the trainers."
				wait()
				dialog "[Alice]"
				dialog "After all..."
				dialog "When you're fighting monsters, it's"
				dialog "a matter of life and death! Alright"
				dialog "then, take care~"
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 2 then
				dialog "[Alice]"
				dialog "Now, that's a good decision. You"
				dialog "won't get many chances to get"
				dialog "free stuff and experience in the"
				dialog "future. You better make the most of"
				dialog "this opportunity while you can!"
				close()
			end
		elseif mresult == 3 then
			dialog "[Alice]"
			dialog "If you want to go to a town, ask"
			dialog "the Kafra Employee to the right."
			dialog "Alright then, take care~"
			close()
		end
	elseif (getvar(nov_get_item02) < 10) then
		dialog "[Alice]"
		dialog "So how may"
		dialog "I help you?"
		dialog "Hmm, it seems that you haven't"
		dialog "attended the Basic Interfaces class"
		dialog "yet. Would you like to attend that"
		dialog "class first?"
		wait()
		local mresult = menu("I am going to attend that class.","Send me to Field Combat Training.","Cancel")
		if mresult == 1 then
			dialog "[Alice]"
			dialog "Excellent~"
			dialog "You'll learn some essential stuff"
			dialog "and gain experience and items as"
			dialog "you take that class. The tutor for"
			dialog "Basic Interfaces is in the center"
			dialog "of this room. Now, go for it~"
			close()
		elseif mresult == 2 then
			dialog "[Alice]"
			dialog "Are you sure you really want to go"
			dialog "into Field Combat Training? Have"
			dialog "you spoken to every tutor? You"
			dialog "better do that beforehand."
			wait()
			local mresultb = menu("I want Field Combat Training~!","Oh, wait!")
			if mresultb == 1 then
				dialog "[Alice]"
				dialog "What an enthusiastic Novice you"
				dialog "are! Okay, I'll send you to the"
				dialog "folks in charge of Field Combat"
				dialog "Training. Make sure that you listen"
				dialog "carefully to the trainers."
				wait()
				dialog "[Alice]"
				dialog "After all..."
				dialog "When you're fighting monsters, it's"
				dialog "a matter of life and death! Alright"
				dialog "then, take care~"
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 2 then
				dialog "[Alice]"
				dialog "Now, that's a good decision. You"
				dialog "won't get many chances to get"
				dialog "free stuff and experience in the"
				dialog "future. You better make the most of"
				dialog "this opportunity while you can!"
				close()
			end
		elseif mresult == 3 then
			dialog "[Alice]"
			dialog "If you want to go to a town, ask"
			dialog "the Kafra Employee to the right."
			dialog "Alright then, take care~"
			close()
		end
	elseif (getvar(nov_get_item03) < 10) then
		dialog "[Alice]"
		dialog "So how may"
		dialog "I help you?"
		dialog "It looks like you still haven't"
		dialog "attended the ^3366FFSkill information class^000000"
		dialog "yet. Would you like ot attend that"
		dialog "class first?"
		wait()
		local mresult = menu("I'll attend that class","Send me to Field Combat Training","Cancel")
		if mresult == 1 then
			dialog "[Alice]"
			dialog "Now, that's a good idea. Please"
			dialog "talk to Cecil, the tutor at the far"
			dialog "left side of this room, okay?"
			close()
			moveto("new_1-2",84,107)
			return
		elseif mresult == 2 then
			dialog "[Alice]"
			dialog "Are you sure you really want to go"
			dialog "into Field Combat Training? Have"
			dialog "you spoken to every tutor? You"
			dialog "better do that beforehand."
			wait()
			local mresultb = menu("I want Field Combat Training~!","Oh, wait!")
			if mresultb == 1 then
				dialog "[Alice]"
				dialog "What an enthusiastic Novice you"
				dialog "are! Okay, I'll send you to the"
				dialog "folks in charge of Field Combat"
				dialog "Training. Make sure that you listen"
				dialog "carefully to the trainers."
				wait()
				dialog "[Alice]"
				dialog "After all..."
				dialog "When you're fighting monsters, it's"
				dialog "a matter of life and death! Alright"
				dialog "then, take care~"
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 2 then
				dialog "[Alice]"
				dialog "Now, that's a good decision. You"
				dialog "won't get many chances to get"
				dialog "free stuff and experience in the"
				dialog "future. You better make the most of"
				dialog "this opportunity while you can!"
				close()
			end
		elseif mresult == 3 then
			dialog "[Alice]"
			dialog "If you want to go to a town, ask"
			dialog "the Kafra Employee to the right."
			dialog "Alright then, take care~"
			close()
		end
	else
		dialog "[Alice]"
		dialog "*Yawn~*"
		dialog "This is so boring."
		dialog "Oh! Hello, you're new here."
		if (getvar(treasure_alb) > 0) then
			dialog "You were previously on the longer training course."
			dialog "I will now dismiss that for you."
			setitem(treasure_alb,0)
			setitem(nov_1_2_cos_c,0)
			setitem(nov_1st_cos,0)
			setitem(nov_3_merchant,0)
			setitem(nov_3_acolyte,0)
			setitem(nov_3_magician,0)
			setitem(nov_3_archer,0)
		end
		dialog "So, you have come to attend"
		dialog "my Item Information class?"
		wait()
		local mresult = menu("Yes.","No, thanks.","How do I get to a town?")
		if mresult == 1 then
			dialog "[Alice]"
			dialog "Don't worry, it'll be short."
			dialog "Open your Inventory Window"
			dialog "through either the '^3366FFItems^000000' button"
			dialog "in the Basic Info window, or by"
			dialog "pressing the '^3366FFAlt^000000' and '^3366FFE^000000' keys at"
			dialog "the same time."
			wait()
			dialog "[Alice]"
			dialog "In the Inventory Window, you'll see"
			dialog "3 tabs labeled ^3366FFitem^000000, ^3366FFequip^000000, and ^3366FFetc.^000000"
			dialog "Items that can be consumed are"
			dialog "under the ^696969item^000000 tab."
			wait()
			dialog "[Alice]"
			dialog "Now, would you click the ^696969item^000000 tab"
			dialog "in the Inventory Window? I just"
			dialog "gave you a Novice Potion. You can"
			dialog "drink it by double-clicking it. Go"
			dialog "ahead, try it!"
			setitem(nov_get_item04,10)
			getitem(Novice_Potion,1)
			hpdrain(50)
			wait()
			dialog "[Alice]"
			if getvar(Novice_Potion) < 1 then
				if getvar(VAR_CLEVEL) < 8 then
					dialog "Nice~!"
					dialog "And here's"
					dialog "a little reward"
					dialog "just for listening."
					if getvar(VAR_CLEVEL) == 1 then
						setitem(nov_get_item04,11)
						getexp(10)
					elseif getvar(VAR_CLEVEL) == 2 then
						setitem(nov_get_item04,11)
						getexp(17)
					elseif getvar(VAR_CLEVEL) == 3 then
						setitem(nov_get_item04,11)
						getexp(26)
					elseif getvar(VAR_CLEVEL) == 4 then
						setitem(nov_get_item04,11)
						getexp(37)
					elseif getvar(VAR_CLEVEL) == 5 then
						setitem(nov_get_item04,11)
						getexp(78)
					elseif getvar(VAR_CLEVEL) == 6 then
						setitem(nov_get_item04,11)
						getexp(115)
					elseif getvar(VAR_CLEVEL) == 7 then
						setitem(nov_get_item04,11)
						getexp(155)
					end
				else
				dialog "Oh wait. You're much higher in"
				dialog "level than I though. Still, I'm"
				dialog "proud of you!"
				end
			else
				dialog "[Alice]"
				dialog "Um..."
				dialog "Well, you can drink"
				dialog "it later I guess."
			end
			dialog "[Alice]"
			dialog "Let me explain about"
			dialog "items in the ^696969equip^000000 tab"
			dialog "of the Inventory Window."
			wait()
			dialog "[Alice]"
			dialog "When you click on the ^696969equip^000000 tab,"
			dialog "you can view every item in your"
			dialog "inventory that you can equip. Let"
			dialog "me give you some equipment so that"
			dialog "you can try them on."
			wait()
			dialog "[Alice]"
			dialog "Got them? Good."
			dialog "Now, double-click"
			dialog "on the Novice Slippers"
			dialog "I just gave you to"
			dialog "put them on."
			setitem(nov_get_item04,12)
			getitem(Novice_Hood,1)
			getitem(Novice_Boots,1)
			getitem(Novice_Egg_Cap,1)
			wait()
			local mango = GetEquipCount(Novice_Boots)
			dialog "[Alice]"
			if mango > 0 then
				if getvar(VAR_CLEVEL) < 8 then
					dialog "Hooray~!"
					dialog "You did it!"
					dialog "You deserve a reward!"
					if getvar(VAR_CLEVEL) == 1 then
						setitem(nov_get_item04,13)
						getexp(10)
					elseif getvar(VAR_CLEVEL) == 2 then
						setitem(nov_get_item04,13)
						getexp(17)
					elseif getvar(VAR_CLEVEL) == 3 then
						setitem(nov_get_item04,13)
						getexp(26)
					elseif getvar(VAR_CLEVEL) == 4 then
						setitem(nov_get_item04,13)
						getexp(37)
					elseif getvar(VAR_CLEVEL) == 5 then
						setitem(nov_get_item04,13)
						getexp(78)
					elseif getvar(VAR_CLEVEL) == 6 then
						setitem(nov_get_item04,13)
						getexp(115)
					elseif getvar(VAR_CLEVEL) == 7 then
						setitem(nov_get_item04,13)
						getexp(155)
					end
				else
				dialog "Oh wait. You're much higher in"
				dialog "level than I though. Still, I'm"
				dialog "proud of you!"
				end
			else
				dialog "Er..."
				dialog "You've got to"
				dialog "double-click"
				dialog "equipment to"
				dialog "wear it. Just"
				dialog "remember that, okay?"
			end
			wait()
			dialog "[Alice]"
			dialog "Would you"
			dialog "press the '^3366FFF12^000000' key?"
			dialog "This will summon your"
			dialog "Hotkey bar on your screen."
			wait()
			wait()
			dialog "[Alice]"
			dialog "You can assign hotkeys to your"
			dialog "items, skills and equipment using"
			dialog "the Hotkey bar. Just drag skill"
			dialog "icons from the Skill Window or"
			dialog "items from the Inventory Window"
			dialog "into the Hotkey bar."
			wait()
			dialog "[Alice]"
			dialog "The Hotkeys are 'F1' to 'F9'."
			dialog "If you have attended the Skill"
			dialog "Class, you must have been given the"
			dialog "First Aid skill. Drag and drop the"
			dialog "First Aid skill icon into the"
			dialog "Hotkey bar."
			wait()
			dialog "[Alice]"
			dialog "For your information, only"
			dialog "active skills can be assigned to a"
			dialog "Hotkey and dragged to the Hotkey"
			dialog "bar. Active Skills have coloured,"
			dialog "square shaped icons that can be"
			dialog "double-clicked and used."
			wait()
			dialog "[Alice]"
			dialog "Passive Skills, such as the aptly"
			dialog "named 'Basic Skill', cannot be"
			dialog "dragged into the Hotkey bar because"
			dialog "Passive Skills are always in effect"
			dialog "and don't need to be activated."
			if getvar(VAR_JOBLEVEL) < 7 then
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item04,14)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item04,14)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item04,14)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item04,14)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item04,14)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item04,14)
					getJexp(151)
				end
			end
			wait()
			dialog "[Alice]"
			dialog "Well, that's it!"
			dialog "Let me supply you with some items"
			dialog "that will help you during the Field"
			dialog "Combat Training."
			wait()
			dialog "[Alice]"
			dialog "However, ^FF0000do not use the Fly Wing or^000000"
			dialog "^FF0000Butterfly Wing^000000 in these Training"
			dialog "Grounds or you could be stuck here"
			dialog "forever. Those items are for when"
			dialog "you graduate, okay?"
			setitem(nov_get_item04,15)
			getitem(Wing_Of_Fly,10)
			getitem(Wing_Of_Butterfly,2)
			getitem(Novice_Potion,50)
			wait()
			dialog "[Alice]"
			dialog "And lastly..."
			if getvar(VAR_JOBLEVEL) < 7 then
				dialog "I will give"
				dialog "you some Job experience!"
				if getvar(VAR_JOBLEVEL) == 1 then
					setitem(nov_get_item04,16)
					getJexp(10)
				elseif getvar(VAR_JOBLEVEL) == 2 then
					setitem(nov_get_item04,16)
					getJexp(18)
				elseif getvar(VAR_JOBLEVEL) == 3 then
					setitem(nov_get_item04,16)
					getJexp(28)
				elseif getvar(VAR_JOBLEVEL) == 4 then
					setitem(nov_get_item04,16)
					getJexp(40)
				elseif getvar(VAR_JOBLEVEL) == 5 then
					setitem(nov_get_item04,16)
					getJexp(91)
				elseif getvar(VAR_JOBLEVEL) == 6 then
					setitem(nov_get_item04,16)
					getJexp(151)
				end
			else
				dialog "Huh. Actually, your Job Level is"
				dialog "higher than I thought. I guess you"
				dialog "already know the basics about"
				dialog "skills then."
			end
			wait()
			local mresultb = menu("Now what?","Send me to the actual fighting class!","Cancel")
			if mresultb == 1 then
				dialog "[Alice]"
				dialog "Why don't you walk around"
				dialog "and talk to other tutors if you"
				dialog "haven't already?"
				wait()
				dialog "[Alice]"
				dialog "Everyone in this training grounds"
				dialog "are more than willing to help you."
				dialog "Maybe you can venture around"
				dialog "this area if you're bored."
				wait()
				dialog "[Alice]"
				dialog "The assistant tutors in the room to"
				dialog "the right possess useful knowledge."
				dialog "There are also a few interesting"
				dialog "places hidden within this area."
				dialog "Good luck!"
				close()
			elseif mresultb == 2 then
				dialog "[Alice]"
				dialog "What an enthusiastic Novice you"
				dialog "are! Okay, I'll send you to the"
				dialog "folks in charge of Field Combat"
				dialog "Training. Make sure that you listen"
				dialog "carefully to the trainers."
				wait()
				dialog "[Alice]"
				dialog "After all..."
				dialog "When you're fighting monsters, it's"
				dialog "a matter of life and death! Alright"
				dialog "then, take care~"
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 3 then
				dialog "[Alice]"
				dialog "Hmpf!"
				close()
			end
		elseif mresult == 2 then
			dialog "[Alice]"
			dialog "Are you sure you really want to go"
			dialog "into Field Combat Training? Have"
			dialog "you spoken to every tutor? You"
			dialog "better do that beforehand."
			wait()
			local mresultb = menu("No, no! Send me to the actual fighting class!","Oh, wait!")
			if mresultb == 1 then
				dialog "[Alice]"
				dialog "What an enthusiastic Novice you"
				dialog "are! Okay, I'll send you to the"
				dialog "folks in charge of Field Combat"
				dialog "Training. Make sure that you listen"
				dialog "carefully to the trainers."
				wait()
				dialog "[Alice]"
				dialog "After all..."
				dialog "When you're fighting monsters, it's"
				dialog "a matter of life and death! Alright"
				dialog "then, take care~"
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultb == 2 then
				dialog "[Alice]"
				dialog "Now, that's a good decision. You"
				dialog "won't get many chances to get"
				dialog "free stuff and experience in the"
				dialog "future. You better make the most of"
				dialog "this opportunity while you can!"
				close()
			end
		elseif mresult == 3 then
			dialog "[Alice]"
			dialog "If you want to go to a town, ask"
			dialog "the Kafra Employee to the right."
			dialog "Alright then, take care~"
			close()
		end
	end
end

--npc("new_1-2","Kafra Employee",spr_4_F_KAFRA1,118,108,3,0,0,"new_1_2_Kafra_Employee_118108")
function new_1_2_Kafra_Employee_118108()
	dialog "[Kafra Employee]"
	dialog "Welcome to"
	dialog "Kafra Corporation."
	dialog "The Kafra services are"
	dialog "always on your side."
	if (getvar(treasure_alb) > 0) then
		setitem(treasure_alb,0)
		setitem(nov_1_2_cos_c,0)
		setitem(nov_1st_cos,0)
		setitem(nov_3_merchant,0)
		setitem(nov_3_acolyte,0)
		setitem(nov_3_magician,0)
		setitem(nov_3_archer,0)
	end
	wait()
	dialog "[Kafra Employee]"
	dialog "I've been dispatched from Kafra"
	dialog "Corporation Headquaters to assist"
	dialog "new players such as yourself."
	wait()
	dialog "[Kafra Employee]"
	dialog "Please, take heed!"
	dialog "If you move to a town"
	dialog "^3366FFyou will be unable to return to the^000000"
	dialog "^3366FFTraining Grounds ever again.^000000"
	wait()
	local mresult = menu("Teleport Service","About Kafra Service")
	if mresult == 1 then
		if ((getvar(nov_get_item02) < 10) and (getvar(nov_get_item03) < 10) and (getvar(nov_get_item04) < 10)) then
			dialog "[Kafra Employee]"
			dialog "I see, you must want to teleport to"
			dialog "a town in Rune-Midgard immediately."
			dialog "First, let me briefly inform you"
			dialog "about the different towns and"
			dialog "cities in Ragnarok Online."
			wait()
			dialog "[Kafra Employee]"
			dialog "Prontera is the capital of the"
			dialog "Rune-Midgarts Kingdom, and its"
			dialog "satellite, Izlude, is closeby."
			wait()
			dialog "[Kafra Employee]"
			dialog "^CC9966Morroc^000000 is in the desert. It's the"
			dialog "town where you can change your job"
			dialog "to the Thief and Assassin classes."
			wait()
			dialog "[Kafra Employee]"
			dialog "^33AA33Payon is in the mountains, and is"
			dialog "famous for its Archer Village,"
			dialog "where Novices can change their jobs"
			dialog "to Archers."
			wait()
			dialog "[Kafra Employee]"
			dialog "The city of magic, ^A62A2AGeffen^000000, is where"
			dialog "people go to become Mages and"
			dialog "Wizards."
			wait()
			dialog "[Kafra Employee]"
			dialog "^3366FFAlberta, the port city, is where"
			dialog "the Merchant Guild is located. You"
			dialog "must also go to Alberta if you wish"
			dialog "to travel by sea."
			wait()
			dialog "[Kafra Employee]"
			dialog "Please choose"
			dialog "your destination"
			wait()
			local mresultb = menu("Prontera","Morroc","Payon","Alberta","Geffen")
			if mresultb == 1 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Prontera."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Novice_Potion,100)
					getitem(Novice_Knife,1)
					getitem(Novice_Boots,1)
					getitem(Novice_Hood,1)
					getitem(Novice_Plate,1)
					getitem(Novice_Guard,1)
					getitem(Wing_Of_Fly,10)
					getitem(Wing_Of_Butterfly,2)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("prontera",117,72)
				moveto("prontera",150,50)
				return
			elseif mresultb == 2 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Morroc."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Novice_Potion,100)
					getitem(Novice_Knife,1)
					getitem(Novice_Boots,1)
					getitem(Novice_Hood,1)
					getitem(Novice_Plate,1)
					getitem(Novice_Guard,1)
					getitem(Wing_Of_Fly,10)
					getitem(Wing_Of_Butterfly,2)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("morocc",150,99)
				moveto("morocc",155,110)
				return
			elseif mresultb == 3 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Payon."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Novice_Potion,100)
					getitem(Novice_Knife,1)
					getitem(Novice_Boots,1)
					getitem(Novice_Hood,1)
					getitem(Novice_Plate,1)
					getitem(Novice_Guard,1)
					getitem(Wing_Of_Fly,10)
					getitem(Wing_Of_Butterfly,2)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("payon",70,100)
				moveto("payon",166,67)
				return
			elseif mresultb == 4 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Alberta."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Novice_Potion,100)
					getitem(Novice_Knife,1)
					getitem(Novice_Boots,1)
					getitem(Novice_Hood,1)
					getitem(Novice_Plate,1)
					getitem(Novice_Guard,1)
					getitem(Wing_Of_Fly,10)
					getitem(Wing_Of_Butterfly,2)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("alberta",30,232)
				moveto("alberta",114,58)
				return
			elseif mresultb == 5 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Geffen."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Novice_Potion,100)
					getitem(Novice_Knife,1)
					getitem(Novice_Boots,1)
					getitem(Novice_Hood,1)
					getitem(Novice_Plate,1)
					getitem(Novice_Guard,1)
					getitem(Wing_Of_Fly,10)
					getitem(Wing_Of_Butterfly,2)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("geffen",119,37)
				moveto("geffen",122,65)
				return
			end
		else
			local mresultc = menu("Field Combat Course","Prontera","Morocc","Payon","Alberta","Geffen")
			if mresultc == 1 then
				dialog "[Kafra Employee]"
				dialog "Thank you, let"
				dialog "me send you to the"
				dialog "Field Combat Training Course."
				close()
				moveto("new_1-2",28,178)
				return
			elseif mresultc == 2 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Prontera."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("prontera",117,72)
				moveto("prontera",150,50)
				return
			elseif mresultc == 3 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Morroc."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("morocc",150,99)
				moveto("morocc",155,110)
				return
			elseif mresultc == 4 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Payon."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("payon",70,100)
				moveto("payon",166,67)
				return
			elseif mresultc == 5 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Alberta."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("alberta",30,232)
				moveto("alberta",114,58)
				return
			elseif mresultc == 6 then
				dialog "[Kafra Employee]"
				dialog "You have decided"
				dialog "to go to Geffen."
				dialog "May God be with you."
				close()
				if (getvar(nov_get_item05) < 11) then
					setitem(nov_get_item05,11)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
				end
				checkpoint("geffen",119,37)
				moveto("geffen",122,65)
				return
			end
		end
	elseif mresult == 2 then
		dialog "[Kafra Employee]"
		dialog "Let me introduce you"
		dialog "to the Kafra Services."
		dialog "In the menu, please choose"
		dialog "the service you'd like to"
		dialog "learn more about."
		wait()
		while(1) do
			local mresultb = menu("Save service.","Storage service.","Teleport service.","Cart rental service.","Cancel")
			if mresultb == 1 then
				dialog "[Kafra Employee]"
				dialog "When you talk to a Kafra Employee"
				dialog "and ask for the Save Service, the"
				dialog "location of where you will revive,"
				dialog "after being defeated in battle,"
				dialog "will be changed."
				wait()
				dialog "[Kafra Employee]"
				dialog "Your Respawn Point is always the"
				dialog "last place where you have saved."
				dialog "Using a Butterfly Wing will return"
				dialog "you to the place where you"
				dialog "last saved."
				wait()
				dialog "[Kafra Employee]"
				dialog "The Save Service"
				dialog "is also provided by"
				dialog "the Kafra Corporation"
				dialog "free of charge~!"
				if (getvar(nov_1st_cos) < 20) then
					if getvar(VAR_CLEVEL) < 8 then
						if getvar(VAR_CLEVEL) == 1 then
							setitem(nov_1st_cos,20)
							getexp(10)
						elseif getvar(VAR_CLEVEL) == 2 then
							setitem(nov_1st_cos,20)
							getexp(17)
						elseif getvar(VAR_CLEVEL) == 3 then
							setitem(nov_1st_cos,20)
							getexp(26)
						elseif getvar(VAR_CLEVEL) == 4 then
							setitem(nov_1st_cos,20)
							getexp(37)
						elseif getvar(VAR_CLEVEL) == 5 then
							setitem(nov_1st_cos,20)
							getexp(78)
						elseif getvar(VAR_CLEVEL) == 6 then
							setitem(nov_1st_cos,20)
							getexp(115)
						elseif getvar(VAR_CLEVEL) == 7 then
							setitem(nov_1st_cos,20)
							getexp(155)
						end
					end
				end
				wait()
			elseif mresultb == 2 then
				dialog "[Kafra Employee]"
				dialog "The Kafra Corporation is the"
				dialog "world's largest company with a long"
				dialog "and distinguished history on the"
				dialog "Rune-Midgard continent."
				wait()
				dialog "[Kafra Employee]"
				dialog "You can store and retrieve"
				dialog "your items in any town at your"
				dialog "convenience. This Storage is shared"
				dialog "by every character on one account."
				wait()
				dialog "[Kafra Employee]"
				dialog "It's unreasonable to carry all of"
				dialog "your items with you when you don't"
				dialog "need them right away. Please use"
				dialog "our Storage and keep your items"
				dialog "safe and secure."
				wait()
				dialog "[Kafra Employee]"
				dialog "Our convenient Storage Service"
				dialog "is provided to our customers for a"
				dialog "small fee which is different from"
				dialog "town to town."
				wait()
				dialog "[Kafra Employee]"
				dialog "However, you must be"
				dialog "at least ^3366FFBasic Skill Level 6^000000"
				dialog "to use the Storage."
				wait()
				dialog "[Kafra Employee]"
				dialog "There are 3 different item sections"
				dialog "of the Storage into which items are"
				dialog "organised: Consumable, Equipment"
				dialog "and Etc."
				wait()
				dialog "[Kafra Employee]"
				dialog "There are a maximum of 300"
				dialog "Inventory Slots in Kafra Storage,"
				dialog "meaning you can have up to 300"
				dialog "different kinds of items in"
				dialog "Storage."
				wait()
				dialog "[Kafra Employee]"
				dialog "Remember though, that in the case"
				dialog "of Equipment, each item takes up"
				dialog "one Inventory Slot. The maximum"
				dialog "number of items that can be placed"
				dialog "in Kafra Storage is 30,000."
				if (getvar(nov_3_archer) < 20) then
					if getvar(VAR_JOBLEVEL) < 7 then
						if getvar(VAR_JOBLEVEL) == 1 then
							setitem(nov_3_archer,20)
							getJexp(10)
						elseif getvar(VAR_JOBLEVEL) == 2 then
							setitem(nov_3_archer,20)
							getJexp(18)
						elseif getvar(VAR_JOBLEVEL) == 3 then
							setitem(nov_3_archer,20)
							getJexp(28)
						elseif getvar(VAR_JOBLEVEL) == 4 then
							setitem(nov_3_archer,20)
							getJexp(40)
						elseif getvar(VAR_JOBLEVEL) == 5 then
							setitem(nov_3_archer,20)
							getJexp(91)
						elseif getvar(VAR_JOBLEVEL) == 6 then
							setitem(nov_3_archer,20)
							getJexp(151)
						end
					end
				end
				wait()
			elseif mresultb == 3 then
				dialog "[Kafra Employee]"
				dialog "The Kafra Corporation"
				dialog "provides our valued customers with"
				dialog "a convenient Teleport Service which"
				dialog "greatly cuts down on your"
				dialog "traveling time."
				wait()
				dialog "[Kafra Employee]"
				dialog "Our Teleport Service is safe and"
				dialog "comfortable, and will allow you to"
				dialog "fully explore the various lands of"
				dialog "the Rune-Midgard continent."
				wait()
				dialog "[Kafra Employee]"
				dialog "We thank our valued customers for"
				dialog "their great support and continue to"
				dialog "provide them with the best"
				dialog "of service."
				wait()
			elseif mresultb == 4 then
				dialog "[Kafra Employee]"
				dialog "The Kafra Corporation"
				dialog "provides a Cart Rental Service to"
				dialog "Merchants, as well as Blacksmiths"
				dialog "and Alchemists."
				wait()
				dialog "[Kafra Employee]"
				dialog "The flamboyantly mysterious"
				dialog "^FF9900Super Novice^000000 can use Carts, but we"
				dialog "officially don't have a contract"
				dialog "with that class. Still, somehow..."
				wait()
				dialog "[Kafra Employee]"
				dialog "Anyway, Merchants, Blacksmiths and"
				dialog "Alchemists must also learn the ^3366FFPush^000000"
				dialog "^3366FFCart^000000 skill in order to be able to"
				dialog "rent a cart."
				wait()
				dialog "[Kafra Employee]"
				dialog "The Cart Rental service"
				dialog "charge will differ from"
				dialog "town to town."
				wait()
			elseif mresultb == 5 then
				dialog "[Kafra Employee]"
				dialog "Thank you."
				close()
				break
			end
		end
	end
end

--npc("new_1-2","Instructor#Edwin",spr_4_F_03,161,182,5,0,0,"new_1_2_InstructorEdwin_161182")
function new_1_2_InstructorEdwin_161182()
	local name = PcName
	dialog "[Edwin]"
	dialog "Welcome to my class."
	dialog "Choose the subject you"
	dialog "wish to learn more about."
	wait()
	while(1) do
		local mresult = menu("Basic Information Window","Party Window","Item Window","Option Window","Equipment Window","Cancel")
		if mresult == 1 then
			dialog "[Edwin]"
			dialog "Let's take a look at"
			dialog "the Basic Info Window,"
			dialog "shall we?"
			wait()
			dialog "[Edwin]"
			dialog "Your name, job, Basic Level,"
			dialog "and your Job Level are displayed in"
			dialog "this window. ^800FFFBase level^000000 is your"
			dialog "character's level."
			wait()
			dialog "[Edwin]"
			dialog "The ^800FFFJob Level^000000 shown under the"
			dialog "Base Level displays the Job level"
			dialog "of your character. When you just"
			dialog "start a job, you will be at"
			dialog "Job Level 1."
			wait()
			dialog "[Edwin]"
			dialog "In the Basic Info window, your"
			dialog "current experience points are"
			dialog "displayed in the Base Level"
			dialog "experience bar."
			wait()
			dialog "[Edwin]"
			dialog "Experience points in Ragnarok"
			dialog "Online are indicated by percentage."
			dialog "Base and Job experience are"
			dialog "separate from each other."
			wait()
			dialog "[Edwin]"
			dialog "When the Base Level or"
			dialog "Job Level bar reaches 100%, it"
			dialog "will be raised by one level and the"
			dialog "bar will then reset to 0 for the"
			dialog "next level."
			wait()
			dialog "[Edwin]"
			dialog "HP stands for 'health points.'"
			dialog "When your HP is reduced to 0, you"
			dialog "will faint and be unable to fight."
			dialog "You can either return to your spawn"
			dialog "point, or wait for someone to"
			dialog "revive you."
			wait()
			dialog "[Edwin]"
			dialog "If you die in the fields or"
			dialog "dungeons, you will receive"
			dialog "a ^FF0000-1% EXP penalty^000000, so be careful."
			wait()
			dialog "[Edwin]"
			dialog "SP stands for 'spell points.'"
			dialog "When you become a 1st class, you"
			dialog "will learn unique class skills of"
			dialog "the class, that will require SP to"
			dialog "use. Your skill instructor can"
			dialog "teach you more about skills."
			wait()
			dialog "[Edwin]"
			dialog "If you want to check the weight"
			dialog "limit of the items you can carry,"
			dialog "check the bottom left of the"
			dialog "Basic Info window."
			wait()
			dialog "[Edwin]"
			dialog "The current weight of the items you"
			dialog "are carrying will be displayed next"
			dialog "to your maximum weight limit."
			wait()
			dialog "[Edwin]"
			dialog "If you carry over 50% of your"
			dialog "maximum weight limit, your HP and"
			dialog "SP will not be restored by resting,"
			dialog "so be careful."
			wait()
			dialog "[Edwin]"
			dialog "The numerical value next to the"
			dialog "weight limit shows the current"
			dialog "amount of Zeny, the currency of"
			dialog "Rune-Midgard, that you possess."
			wait()
			dialog "[Edwin]"
			dialog "On the right side of the"
			dialog "Basic Info Window is a series of"
			dialog "buttons that will open other"
			dialog "interface windows. Click them one"
			dialog "by one, and check what you can do"
			dialog "with them."
			wait()
			dialog "[Edwin]"
			dialog "The shortcut for minimising and"
			dialog "maximising the Basic Info Window"
			dialog "is '^3366FFAlt^000000 + ^3366FFV^000000.'"
			wait()
		elseif mresult == 2 then
			dialog "[Edwin]"
			dialog "You can open the Party Window"
			dialog "by clicking the ^3366FFfriend^000000 button in"
			dialog "the Basic Info window. The shortcut"
			dialog "for the Party Window is '^3366FFAlt^000000+ ^3366FFZ^000000.'"
			dialog "You can use this window to check on"
			dialog "the members of your party."
			wait()
			dialog "[Edwin]"
			dialog "The Party master can determine"
			dialog "the distribution of EXP and items"
			dialog "to the party. You can also check"
			dialog "the location of your party members"
			dialog "on the Mini-Map."
			wait()
			dialog "[Edwin]"
			dialog "In the Party Window, you can click"
			dialog "on the ^3366FFFriend^000000 button to see your"
			dialog "Friend List. You can use the"
			dialog "Friend List to send whispers"
			dialog "to your friends."
			wait()
			dialog "[Edwin]"
			dialog "You can ask your skill instructor"
			dialog "to learn more about organising"
			dialog "parties. But I guess you can also"
			dialog "just try that on your own."
			wait()
		elseif mresult == 3 then
			dialog "[Edwin]"
			dialog "The item window is divided into"
			dialog "3 sections: consumable items,"
			dialog "equipment and other items."
			wait()
			dialog "[Edwin]"
			dialog "The weight limit does limit the"
			dialog "amount of items you can carry with"
			dialog "you. When you're carrying too many"
			dialog "things, place your extra stuff in"
			dialog "Kafra Storage."
			wait()
			dialog "[Edwin]"
			dialog "Also, equipment and consumable"
			dialog "items can also be assigned to a"
			dialog "Hotkey through the Hotkey bar."
			wait()
			dialog "[Edwin]"
			dialog "The Hotkey window is opened by"
			dialog "pressing ^3366FFF12^000000 key. The F1 to F9 keys"
			dialog "are the designated hotkeys."
			wait()
			dialog "[Edwin]"
			dialog "There are total of 3 sets"
			dialog "of Hotkeys. You can toggle"
			dialog "between Hotkey sets by"
			dialog "pressing the F12 button."
			wait()
		elseif mresult == 4 then
			dialog "[Edwin]"
			dialog "You can open the Option Window"
			dialog "by pressing the ^3366FFoption^000000 button in"
			dialog "the Basic Info window. You can also"
			dialog "press the '^3366FFAlt^000000 + ^3366FFO^000000' keys as well."
			wait()
			dialog "[Edwin]"
			dialog "In the Option Window, you can"
			dialog "adjust sound, GUI skin, and the"
			dialog "transparency of the skin."
			wait()
			dialog "[Edwin]"
			dialog "With the sound button, you can turn"
			dialog "the background music on or off, as"
			dialog "well as adjust the volume. The same"
			dialog "can be done for the sound effects."
			wait()
			dialog "[Edwin]"
			dialog "With the Skin option, you can"
			dialog "change the GUI skin for the in-game"
			dialog "windows. Scroll through the list of"
			dialog "the skins you have and choose"
			dialog "a skin."
			wait()
			dialog "[Edwin]"
			dialog "You can also download official"
			dialog "skins from our official website:"
			dialog "^3366FFhttp://iro.ragnarokonline.com^000000"
			wait()
			dialog "[Edwin]"
			dialog "The Snap options allows your mouse"
			dialog "cursor to automatically be placed"
			dialog "on a target once it hovers within"
			dialog "the target's vicinity."
			wait()
			dialog "[Edwin]"
			dialog "When you click to attack, your"
			dialog "mouse cursor will automatically"
			dialog "change into a sword shape. Skill"
			dialog "and item targeting also work with"
			dialog "the Snap function."
			wait()
			dialog "[Edwin]"
			dialog "It might be useful or awkward if"
			dialog "you're not used to it. But once"
			dialog "you're familiar with the Snap"
			dialog "function, you will be able to"
			dialog "adjust your own snap options."
			wait()
			dialog "[Edwin]"
			dialog "Well, it all depends on your"
			dialog "experience. That's all for the"
			dialog "Option Window."
			wait()
		elseif mresult == 5 then
			dialog "[Edwin]"
			dialog "Click the ^3366FFequip^000000 button"
			dialog "in your Basic Info Window,"
			dialog "or just press the '^3366FFAlt^000000 + ^3366FFQ^000000' keys."
			wait()
			dialog "[Edwin]"
			dialog "In the Equipment Window,"
			dialog "you will see the itmes currently"
			dialog "equipped on your character. In the"
			dialog "verry beginning, every character is"
			dialog "equipped with a Knife and"
			dialog "a Cotton Shirt."
			wait()
			dialog "[Edwin]"
			dialog "There are 2 ways to change your"
			dialog "equipment. Double-click equipment"
			dialog "in the Inventory Window or click"
			dialog "and drag an item into the"
			dialog "Equipment Window."
			wait()
			dialog "[Edwin]"
			dialog "You can also assign equipment to"
			dialog "Hotkeys. This can be done when you"
			dialog "drag equipment from the Inventory"
			dialog "into the Hotkey Window."
			dialog "('^3366FFF12^000000' key)."
			wait()
		elseif mresult == 6 then
			dialog "[Edwin]"
			dialog "If you have"
			dialog "any questions,"
			dialog "feel free to ask me~"
			close()
			break
		end
	end
end

--npc("new_1-2","Status Assistant",spr_4_M_SAGE_A,182,182,3,0,0,"new_1_2_Status_Assistant_182182")
function new_1_2_Status_Assistant_182182()
	local name = PcName
	dialog "[Jare Riotte]"
	dialog "Welcome new adventurer."
	dialog "I, Jare Riotte will help you to"
	dialog "learn about the fundamental"
	dialog "rules of your Characters Statuses."
	wait()
	dialog "[Jare Riotte]"
	dialog "Also known as 'Stats,'"
	dialog "your statuses are the fundamental"
	dialog "building blocs of your character."
	wait()
	dialog "[Jare Riotte]"
	dialog "I am willing to help you learn"
	dialog "about the statuses more than"
	dialog "anything else, so feel free to ask"
	dialog "me about character statuses you"
	dialog "may be wondering about."
	wait()
	dialog "[Jare Riotte]"
	dialog "In Ragnarok Online,"
	dialog "the Character Statuses are"
	dialog "Strength, Agility, Vitality,"
	dialog "Intelligence, Dexterity and Luck."
	wait()
	dialog "[Jare Riotte]"
	dialog "I want my class to proceed"
	dialog "according to your personal needs,"
	dialog "so ask about the Status you wish to"
	dialog "better understand. First, open your"
	dialog "Status Window by using the '^3366FFAlt^000000 +"
	dialog "^3366FFA^000000' keys."
	wait()
	while(1) do
		local mresult = menu("Strength and Agility","Vitality and Intelligence","Dexterity and Luck","I do not wish to continue.")
		if mresult == 1 then
			dialog "[Jare Riotte]"
			dialog "Let me explain Strength first."
			dialog "^3366FFStrength (STR)^000000 increases"
			dialog "^3366FFphysical attack damage (ATK)^000000"
			dialog "and your ^3366FFmaximum weight limit^000000."
			wait()
			dialog "[Jare Riotte]"
			dialog "1 STR increases your physical"
			dialog "attack damage by 1 point. A certain"
			dialog "amount of attack damage bonus is"
			dialog "given when the STR stat is"
			dialog "increased to a multiple of 10."
			wait()
			dialog "[Jare Riotte]"
			dialog "The way the attack damage bonus is"
			dialog "calculated by taking the total"
			dialog "strength value, removing the very"
			dialog "last digity, and squaring the number"
			dialog "you have left."
			wait()
			dialog "[Jare Riotte]"
			dialog "Let's say your attack is displayed"
			dialog "as '48 + 1.' That's a total of 49"
			dialog "strength. When you remove the last"
			dialog "digit, '9,' we are left with the"
			dialog "number '4.' 4 multiplied by itself"
			dialog "equals 16."
			wait()
			dialog "[Jare Riotte]"
			dialog "So the physical attack bonus is 16."
			dialog "Now, if you had a total of 50 STR,"
			dialog "the attack bonus would be 25. And"
			dialog "if your STR is 100, your attack"
			dialog "bonus would be 100."
			wait()
			dialog "[Jare Riotte]"
			dialog "Okay, now let's move"
			dialog "on to Agility (AGI)."
			dialog "Agility affects your Flee Rate and"
			dialog "Attack Speed. The higher your Flee"
			dialog "Rate, the better chance you have of"
			dialog "avoiding enemy attacks."
			wait()
			dialog "[Jare Riotte]"
			dialog "Your Flee Rate"
			dialog "is equal to the number"
			dialog "of your Base Level added"
			dialog "to your AGI."
			wait()
			dialog "[Jare Riotte]"
			dialog "So if you have 40 AGI and you're at"
			dialog "Base Level 30, your Flee Rate would"
			dialog "be 70. It's so simple! Following"
			dialog "the Flee Rate formula, your flee"
			dialog "rate will be a total of 70."
			wait()
			dialog "[Jare Riotte]"
			dialog "Now, AGI only relates to normal"
			dialog "Flee Rate. Perfect Dodge is another"
			dialog "factor that determines success in"
			dialog "dodging attacks, but we'll talk"
			dialog "about that when we discuss"
			dialog "the LUK stat."
			wait()
			dialog "[Jare Riotte]"
			dialog "Another benefit to inreasing AGI"
			dialog "is that your Attack Speed (ASPD)"
			dialog "will also increase, meaning the"
			dialog "time between your melee attacks"
			dialog "will be reduced."
			wait()
			dialog "[Jare Riotte]"
			dialog "ASPD, however,"
			dialog "differs by Job Class,"
			dialog "so please remember that."
			wait()
			dialog "[Jare Riotte]"
			dialog "*Whew!*"
			dialog "That's almost too"
			dialog "much excitement for"
			dialog "one day. Shall we move"
			dialog "on to the next subject?"
			wait()
		elseif mresult == 2 then
			dialog "[Jare Riotte]"
			dialog "Our next subject"
			dialog "will be Vitality (VIT)"
			dialog "and Intelligence (INT)."
			wait()
			dialog "[Jare Riotte]"
			dialog "^3366FFVitality^000000 affects the ^3366FFmaximum HP,^000000"
			dialog "^3366FFamount of HP restoration and^000000"
			dialog "^3366FFdefense.^000000 The amount of HP inreased"
			dialog "by VIT differs by your job"
			dialog "class."
			wait()
			dialog "[Jare Riotte]"
			dialog "Out of all the Job Classes, the"
			dialog "Swordman class benefits most"
			dialog "from increases in VIT."
			wait()
			dialog "[Jare Riotte]"
			dialog "Let's check defense."
			dialog "On your stat window, your defense"
			dialog "is displayed as DEF. Two numerical"
			dialog "values are shown, and the second"
			dialog "number reflects the addition to"
			dialog "your defense by your VIT."
			wait()
			dialog "[Jare Riotte]"
			dialog "Now, the first number"
			dialog "displayed in your Defense is the"
			dialog "defense calculated from your"
			dialog "Equipment and Armour."
			wait()
			dialog "[Jare Riotte]"
			dialog "Now, the equipment you wear reduces"
			dialog "damage from enemies by a percentage"
			dialog "of the total damage, where VIT"
			dialog "reduces by a set amount. That's why"
			dialog "Defense is displayed with two"
			dialog "numbers."
			wait()
			dialog "[Jare Riotte]"
			dialog "The next subject"
			dialog "is Intelligence (INT)."
			wait()
			dialog "[Jare Riotte]"
			dialog "INT affects your maximum amount of"
			dialog "^3366FFSP^000000, ^3366FFSP restoration^000000, the ^3366FFdamage of^000000"
			dialog "^3366FFyour magic attack (MATK)^000000 and your"
			dialog "^3366FFdefense against magic attack^000000"
			dialog "^3366FF(MDEF).^000000"
			wait()
			dialog "[Jare Riotte]"
			dialog "The SP amount and the MATK increased"
			dialog "by 1 INT is dependent on Job Class,"
			dialog "just like VIT. This means that some"
			dialog "Jobs will naturally benefit more"
			dialog "from having more INT than others."
			wait()
			dialog "[Jare Riotte]"
			dialog "Just like normal DEF, your Magic"
			dialog "Defense (MDEF) shows as 2 different"
			dialog "numerical values. The MDEF"
			dialog "contributed by INT is the second"
			dialog "MDEF value displayed."
			wait()
			dialog "[Jare Riotte]"
			dialog "In order to study manipulation of"
			dialog "the natural elements, you shuld"
			dialog "prioritise on having intelligence."
			dialog "Therefore, Sages and Wizards"
			dialog "focus on the INT stat."
			wait()
		elseif mresult == 3 then
			dialog "[Jare Riotte]"
			dialog "Our last subject"
			dialog "is Dexterity (DEX)"
			dialog "and Luck (LUK)."
			wait()
			dialog "[Jare Riotte]"
			dialog "Dexterity mainly affects your"
			dialog "accuracy, attack speed (ASPD)"
			dialog "and your average attack strength."
			wait()
			dialog "[Jare Riotte]"
			dialog "Let me explain..."
			dialog "If you have low DEX, the difference"
			dialog "between the minimum damage and"
			dialog "the maximum damage you can inflict"
			dialog "becomes huge. The damage of your"
			dialog "attacks becomes unstable."
			wait()
			dialog "[Jare Riotte]"
			dialog "If you are using a ^3366FFBow^000000 as your"
			dialog "main weapon, your attack strength"
			dialog "will be based on ^3366FFDEX^000000. So Archers"
			dialog "shoudl focus on increasing their"
			dialog "DEX."
			wait()
			dialog "[Jare Riotte]"
			dialog "The amount of DEX that you"
			dialog "have will also affect your attack"
			dialog "accuracy. Attack accuracy is"
			dialog "calculated by the number of your"
			dialog "Base Level added to your DEX."
			wait()
			dialog "[Jare Riotte]"
			dialog "For example, if you are at"
			dialog "Base Level 40 and have 20 DEX,"
			dialog "your attack accuracy would be 60."
			wait()
			dialog "[Jare Riotte]"
			dialog "Finally, DEX also reduces the"
			dialog "casting time of spells and skills."
			dialog "Therefore, having some DEX would"
			dialog "be handy for Mages and Wizards."
			wait()
			dialog "[Jare Riotte]"
			dialog "Now, let me tell"
			dialog "you about the LUK stat."
			wait()
			dialog "[Jare Riotte]"
			dialog "Luck (LUK) affects the chance"
			dialog "for a critical attack, the Flee"
			dialog "Rate and a small amount of damage"
			dialog "you deal to monsters."
			wait()
			dialog "[Jare Riotte]"
			dialog "For a critical attack, the start"
			dialog "value is 1 for everyone and it's"
			dialog "inreased by ^3366FF1^000000 for every ^3366FF3 LUK^000000."
			wait()
			dialog "[Jare Riotte]"
			dialog "With more LUK, you have an"
			dialog "increased chance of inflicting"
			dialog "^3366FFcritical attacks^000000 to you"
			dialog "enemies. Critical atacks are"
			dialog "useful to you, as they pierce your"
			dialog "enemy's defense."
			wait()
			dialog "[Jare Riotte]"
			dialog "You can tell you've performed a"
			dialog "critical attack when an attack has"
			dialog "inflicted more damage than usual to"
			dialog "an enemy, and the damage number is"
			dialog "displayed with an explosive red"
			dialog "visual effect."
			wait()
			dialog "[Jare Riotte]"
			dialog "For every 10 LUK, you add 1 point"
			dialog "to your Perfect Dodge rate. Perfect"
			dialog "Dodge is sort of like your Flee"
			dialog "Rate. When you perform a Perfect"
			dialog "Dodge, the word '^FF7F00Lucky^000000' will appear"
			dialog "over your head."
			wait()
			dialog "[Jare Riotte]"
			dialog "Although similar to your Flee Rate,"
			dialog "Perfect Dodge is a separate factor"
			dialog "in attack evasion that is"
			dialog "calculated differently."
			wait()
			dialog "[Jare Riotte]"
			dialog "Well, I must say,"
			dialog "Luck is a good thing to have, but"
			dialog "that doesn't mean you need it"
			dialog "before everything else."
			wait()
		elseif mresult == 4 then
			dialog "[Jare Riotte]"
			dialog "Do you have any"
			dialog "other questions?"
			dialog "I hope my class"
			dialog "was helpful to you."
			close()
			break
		end
	end
end

--npc("new_1-2","Understandings of Skill",spr_1_M_01,184,172,1,0,0,"new_1_2_Understandings_of_Skill_184172")
function new_1_2_Understandings_of_Skill_184172()
	dialog "[Leo Handerson]"
	dialog "Welcome~"
	dialog "Oh look at this"
	dialog "cute little Novice~!"
	wait()
	dialog "[Leo Handerson]"
	dialog "I, Leo Handerson,"
	dialog "feel so responsible for your"
	dialog "performance and will be teaching"
	dialog "you to the best of my ability. Now,"
	dialog "please select the subject you wish"
	dialog "to learn"
	wait()
	Emotion("Understandings of Skill",ET_CHUP)
	wait()
	while(1) do
		local mresult = menu("Passive and Active Skills.","Basic skills.","Use of Emoticons","Cancel")
		if mresult == 1 then
			dialog "[Leo Handerson]"
			dialog "First, let me explain"
			dialog "about the Passive Skills."
			dialog "Would you please open"
			dialog "your Skill Window?"
			dialog "('^3366FFAlt^000000' + '^3366FFS^000000')"
			wait()
			dialog "[Leo Handerson]"
			dialog "Now, you know that whenever"
			dialog "your Job Level goes up, you earn"
			dialog "a ^3366FFSkill Point^000000, right? Skill Points"
			dialog "are used to learn your skills~"
			wait()
			dialog "[Leo Handerson]"
			dialog "Do you see your Basic Skill icon?"
			dialog "It's at the very top of the Skill"
			dialog "Window. Click on the 'Lv Up' button"
			dialog "next to the Basic Skill icon to use"
			dialog "a Skill Point on Basic Skills."
			wait()
			dialog "[Leo Handerson]"
			dialog "You'll see the word 'Passive'"
			dialog "to the right of the Basic Skill"
			dialog "icon. That means this skill is"
			dialog "Passive, and doesn't use any SP."
			wait()
			dialog "[Leo Handerson]"
			dialog "Now, please right-click the Basic"
			dialog "Skill icon. You will then be able"
			dialog "to read a brief description of the"
			dialog "Basic Skills."
			wait()
			dialog "[Leo Handerson]"
			dialog "Active Skills, unlike Passive"
			dialog "Skills which don't use any SP,"
			dialog "require SP each time that"
			dialog "they are used."
			wait()
			dialog "[Leo Handerson]"
			dialog "You can use an Active Skill by"
			dialog "double-clicking its icon in your"
			dialog "Skill Window."
			wait()
			dialog "[Leo Handerson]"
			dialog "You can also drag a skill icon from"
			dialog "your Skill Window, and drop it into"
			dialog "your Hotkey bar ('^3366FFF12^000000' key) to"
			dialog "assign a Hotkey to that skill."
			wait()
			dialog "[Leo Handerson]"
			dialog "The amount of SP required"
			dialog "to use an Active Skill will be"
			dialog "displayed to the right of that"
			dialog "skill's icon."
			wait()
			dialog "[Leo Handerson]"
			dialog "Generally, Passive Skills are"
			dialog "skills related to mental or"
			dialog "physical training and conditioning."
			dialog "The use of special abilities or"
			dialog "attacks are Active Skills."
			wait()
			dialog "[Leo Handerson]"
			dialog "If you're still not"
			dialog "sure about my lesson,"
			dialog "I'm willing to go over"
			dialog "it once again."
			wait()
		elseif mresult == 2 then
			dialog "[Leo Handerson]"
			dialog "The Basic Skills are"
			dialog "purely Passive Skills"
			dialog "that you need to play"
			dialog "Ragnarok Online."
			dialog "Don't worry,"
			dialog "they're easy to learn."
			wait()
			dialog "[Leo Handerson]"
			dialog "When you right-click with your"
			dialog "mouse in your Skill Window"
			dialog "('^3366FFAlt^000000' + '^3366FFS^000000'), you can check the"
			dialog "descriptions of the skills, but"
			dialog "I've prepared this lesson for"
			dialog "your better understanding."
			wait()
			while(1) do
				local mresultb = menu("Trade and Exchange","Organising & Joining party","Opening Chat room","Storage Use","No thanks, I know already.")
				if mresultb == 1 then
					dialog "[Leo Handerson]"
					dialog "When you go visit our official"
					dialog "website at ^3366FFiro.ragnarokonline.com^000000,"
					dialog "you can find a full explanation"
					dialog "about trading, illustrated with"
					dialog "pictures."
					wait()
					dialog "[Leo Handerson]"
					dialog "In orer to trade items"
					dialog "or zeny with other people,"
					dialog "you must learn at least ^3366FFBasic Skill^000000"
					dialog "^3366FFLevel 1^000000."
					wait()
					dialog "[Leo Handerson]"
					dialog "When you trade, you must be"
					dialog "located close to the person with"
					dialog "which you wish to exchange items or"
					dialog "zeny. Otherwise, the trade will not"
					dialog "work if that person is more than 2"
					dialog "cells away."
					wait()
					dialog "[Leo Handerson]"
					dialog "Right-click on the person"
					dialog "once and a small menu will appear."
					dialog "From this menu, choose:"
					dialog "^800fffRequest a deal with.^000000"
					wait()
					dialog "[Leo Handerson]"
					dialog "Afterwards, that person will"
					dialog "choose whether or not to accept"
					dialog "your request. If your trade request"
					dialog "is accepted, the Trade Window will"
					dialog "appear."
					wait()
					dialog "[Leo Handerson]"
					dialog "To trade items, drag items from"
					dialog "your Inventory Window ('^3366FFAlt^000000' + '^3366FFE^000000')"
					dialog "and drop them into the left side of"
					dialog "the Trade Window."
					wait()
					dialog "[Leo Handerson]"
					dialog "Items given by the other person"
					dialog "will appear in the right side of"
					dialog "the Trade Window. Always check"
					dialog "if the other person is trading the"
					dialog "items you have agreed to exchange."
					wait()
					dialog "[Leo Handerson]"
					dialog "To trade Zeny, you can enter the"
					dialog "amount of Zeny you want to trade."
					dialog "After placing items or Zeny into"
					dialog "the Trade Window, press the 'OK'"
					dialog "button at the bottom of the Window"
					dialog "to confirm the trade."
					wait()
					dialog "[Leo Handerson]"
					dialog "Once the trade is confirmed,"
					dialog "press the 'Trade' button to finish"
					dialog "the trade. If either of the traders"
					dialog "do not press the 'OK' button, the"
					dialog "trade cannot be completed."
					wait()
					dialog "[Leo Handerson]"
					dialog "If either of the traders presses"
					dialog "the 'Cancel' button to the right of"
					dialog "the window, the trade will be cancelled."
					wait()
				elseif mresultb == 2 then
					dialog "[Leo Handerson]"
					dialog "Now, let me explain"
					dialog "about the Party System."
					wait()
					dialog "[Leo Handerson]"
					dialog "The party system allows"
					dialog "you to organise a small group of"
					dialog "people in order to cooperatively"
					dialog "hunt monsters, or just have fun"
					dialog "together."
					wait()
					dialog "[Leo Handerson]"
					dialog "You can organise"
					dialog "a party by typing"
					dialog "the command:"
					dialog "^3366FF/organize 'Party Name'"
					dialog "in your Chat Window."
					wait()
					dialog "[Leo Handerson]"
					dialog "Of course, you"
					dialog "must be at least"
					dialog "^3366FFBasic Skill Level 7^000000"
					dialog "or above to use the Party System."
					wait()
					dialog "[Leo Handerson]"
					dialog "I could explain more about"
					dialog "the ditsribution of items or the"
					dialog "distribution of experience which"
					dialog "party members have gained together,"
					dialog "but I'll let you try that out on"
					dialog "your own later on."
					wait()
					dialog "[Leo Handerson]"
					dialog "That's all for"
					dialog "the Party System~"
					dialog "An adorable Novice"
					dialog "like you should pick up"
					dialog "on this really quickly~"
					Emotion("Understandings of Skill",ET_CHUP)
					wait()
				elseif mresultb == 3 then
					dialog "[Leo Handerson]"
					dialog "When you have"
					dialog "^3366FFLevel 4 Basic Skill^000000"
					dialog "or above, you can open your own"
					dialog "Chat Room. You can either click"
					dialog "the ^3366FFchat^000000 button in the Basic Info"
					dialog "Window or just press '^3366FFAlt^000000' + '^3366FFC^000000.'"
					wait()
					dialog "[Leo Handerson]"
					dialog "Once you open a Chat Room,"
					dialog "you can check the chat room"
					dialog "members' information by"
					dialog "right-clicking on a character"
					dialog "name."
					wait()
					dialog "[Leo Handerson]"
					dialog "Also you can register that"
					dialog "character as your friend in the"
					dialog "same way. If you are the master"
					dialog "of the room, you can change"
					dialog "the room setup."
					wait()
					dialog "[Leo Handerson]"
					dialog "While in the Chat Room,"
					dialog "you cannot hear any chat from"
					dialog "outside of the Chat Room. Please"
					dialog "remember that, okay?"
					wait()
				elseif mresultb == 4 then
					dialog "[Leo Handerson]"
					dialog "Kafra Employees of the"
					dialog "Kafra Corporation are scattered"
					dialog "throughout the world, providing"
					dialog "their convenient services and"
					dialog "Storage."
					wait()
					dialog "[Leo Handerson]"
					dialog "In fact, there's a Kafra Employee"
					dialog "just outside this room. Talk to"
					dialog "her, and she'll be more than happy"
					dialog "to fully explain Kafra's Services."
					wait()
					dialog "[Leo Handerson]"
					dialog "Anyway, you are"
					dialog "allowed to use your"
					dialog "^3366FFpersonal Kafra Storage^000000"
					dialog "at ^3366FFBasic Skill Level 6^000000 or above."
					wait()
					dialog "[Leo Handerson]"
					dialog "When you carry too many items with"
					dialog "you, your weight becomes too heavy"
					dialog "and you won't be able to restore HP"
					dialog "or SP by resting, or even fight"
					dialog "monsters! So store what you don't"
					dialog "need into Kafra Storage."
					wait()
				elseif mresultb == 5 then
					dialog "[Leo Handerson]"
					dialog "Oh, do you?"
					dialog "As I expected,"
					dialog "you're as smart"
					dialog "as you are cute~!"
					dialog "I, Leo, am very impressed."
					wait()
					break
				end
			end
			dialog "[Leo Handerson]"
			dialog "Do you wish to"
			dialog "learn more about"
			dialog "a different subject?"
			wait()
		elseif mresult == 3 then
			dialog "[Leo Handerson]"
			dialog "^3366FFEmoticons^000000 are commonly used"
			dialog "online for ^3366FFdisplaying your"
			dialog "^3366FFfeelings^000000. It's a fun way of"
			dialog "communicating!"
			wait()
			dialog "[Leo Handerson]"
			dialog "You must first be at"
			dialog "^3366FFBasic Skill Level 2^000000"
			dialog "or above to use emoticons."
			wait()
			dialog "[Leo Handerson]"
			dialog "You can check the"
			dialog "Emotion icon List"
			dialog "('^3366FFAlt^000000' + '^3366FFL^000000') and click each icon"
			dialog "to see the command to display"
			dialog "the emoticon."
			wait()
			dialog "[Leo Handerson]"
			dialog "You can also register"
			dialog "emoticons into your Shortcut List"
			dialog "('^3366FFAlt^000000' + '^3366FFM^000000') so you can just use a"
			dialog "Shortcut to use an emoticon. This"
			dialog "is also fully explained on our"
			dialog "official website as well."
			wait()
			dialog "[Leo Handerson]"
			dialog "Ah~ I must say,"
			dialog "the honest expression"
			dialog "of one's feelings is essential"
			dialog "for a relationship."
			wait()
			dialog "[Leo Handerson]"
			dialog "You can play"
			dialog "Rock, Paper, Scissors"
			dialog "by pressing the '^3366FFCtrl^000000' and the"
			dialog "'^3366FF-^000000', '^3366FF=^000000' or '^3366FF\^000000' keys."
			wait()
			dialog "[Leo Handerson]"
			dialog "Of course, you can type ^3366FF/bawi^000000, ^3366FF/bo^000000"
			dialog "and ^3366FF/gawi^000000, which mean, rock, paper,"
			dialog "scissors in Korean, into your Chat"
			dialog "Window."
			wait()
			dialog "[Leo Handerson]"
			dialog "To check out the commands for even"
			dialog "more emoticons, type th ecommand"
			dialog "^3366FF/emotion^000000 into your Chat"
			dialog "Window to see the list~"
			Emotion("Understandings of Skill",ET_THROB)
			wait()
		elseif mresult == 4 then
			dialog "[Leo Handerson]"
			dialog "I see..."
			dialog "You don't need me"
			dialog "anymore! Oh! They"
			dialog "grow up so fast"
			dialog "nowadays!"
			close()
			break
		end
	end
end

npc("new_1-2","Guide Soldier",spr_8W_SOLDIER,121,101,2,0,0,"new_1_2_Guide_Soldier_121101")
function new_1_2_Guide_Soldier_121101()
	dialog "[Guide Soldier]"
	dialog "We Guide Soldiers provide location"
	dialog "information at the entrance of"
	dialog "every town. You can easily find us"
	dialog "by our special uniforms."
	wait()
	dialog "[Guide Soldier]"
	dialog "Whenever you visit a town"
	dialog "for the first time, we would like"
	dialog "to recommend that you check the"
	dialog "locations of notable places in town"
	dialog "with us."
	wait()
	dialog "[Guide Soldier]"
	dialog "If you wish to take an Informative"
	dialog "class, please walk around and speak"
	dialog "to the various tutors in these"
	dialog "Training Grounds. Have a good day."
	close()
end

--npc("new_1-2","Helper",spr_4_M_02,17,182,5,0,0,"new_1_2_Helper_17182")
function new_1_2_Helper_17182()
	if (getvar(nov_2nd_cos) < 11) then
		dialog "[Elmeen]"
		dialog "Congratulations!"
		dialog "You have passed the 1st training"
		dialog "course! Wow~ I guess now you"
		dialog "understand a little bit more about"
		dialog "Ragnarok Online."
		wait()
		dialog "[Elmeen]"
		dialog "You will learn the fundamentals of"
		dialog "actual battle through this class."
		dialog "If you did your best through the"
		dialog "Informative class, you are supposed"
		dialog "to have been given some starting"
		dialog "equipment."
		wait()
		dialog "[Elmeen]"
		dialog "Please check your"
		dialog "equipment before you engage in"
		dialog "battle. Are you sure you've"
		dialog "equipped all your equipment,"
		dialog "weapons and armour?"
		wait()
		local mresult = menu("Yes","No")
		if mresult == 1 then
			dialog "[Elmeen]"
			dialog "First, you place the cursor on a"
			dialog "monster. When you left click, you"
			dialog "will hit the monster once."
			wait()
			dialog "[Elmeen]"
			dialog "If you are too lazy to keep left"
			dialog "clicking, left click on the monster"
			dialog "whilst holding the '^3366FFCtrl^000000' key. You"
			dialog "will then continue attacking the"
			dialog "monster until one of you is dead,"
			dialog "or you run away."
			wait()
			dialog "[Elmeen]"
			dialog "You can also just hold down the"
			dialog "left mouse button while the cursor"
			dialog "is on the monster. Still, there are"
			dialog "some people who are even too lazy"
			dialog "to use the '^3366FFCtrl^000000' key every time"
			dialog "they attack a monster."
			wait()
			dialog "[Elmeen]"
			dialog "If you're one of them, type the"
			dialog "command ^FF9900/nc^000000 in your Chat Window."
			dialog "Then, when you left click"
			dialog "a monster, you'll just continuously"
			dialog "attack it!"
			wait()
			dialog "[Elmeen]"
			dialog "If a monster happens to have the"
			dialog "Undead property, you can use the"
			dialog "'Heal' skill to attack if you"
			dialog "happen to have it."
			wait()
			dialog "[Elmeen]"
			dialog "When you use the Heal skill while"
			dialog "holding down the '^3366FFShift^000000' key, you"
			dialog "can target the monster with the"
			dialog "Heal skill to damage it."
			wait()
			dialog "[Elmeen]"
			dialog "Of course for this skill, we do"
			dialog "have a very convenient option for"
			dialog "lazy people too. Type the command"
			dialog "^FF9900/ns^000000 in your Chat Window."
			wait()
			dialog "[Elmeen]"
			dialog "This will allow you to attack"
			dialog "monsters by using the Heal skill"
			dialog "without holding the shift key."
			dialog "Handy, huh?"
			wait()
			dialog "[Elmeen]"
			dialog "Do you understand these battle"
			dialog "commands? Now, I will teach you"
			dialog "about monster behaviours and"
			dialog "properties, experience gained"
			dialog "through battle, and items you can"
			dialog "earn from dead monsters."
			wait()
			dialog "[Elmeen]"
			dialog "Field Combat Training can actually"
			dialog "be pretty dangerous for"
			dialog "new adventurers. Let me give you"
			dialog "a little more strength through the"
			dialog "power of my magic."
			wait()
			dialog "[Elmeen]"
			dialog "Haaaaaa~!"
			if (getvar(nov_2nd_cos) < 1) then
				if (getvar(VAR_CLEVEL) == 1) then
					setitem(nov_2nd_cos,12)
					getexp(9)
				elseif (getvar(VAR_CLEVEL) == 2) then
					setitem(nov_2nd_cos,13)
					getexp(16)
				elseif (getvar(VAR_CLEVEL) == 3) then
					setitem(nov_2nd_cos,14)
					getexp(25)
				elseif (getvar(VAR_CLEVEL) == 4) then
					setitem(nov_2nd_cos,15)
					getexp(36)
				elseif (getvar(VAR_CLEVEL) == 5) then
					setitem(nov_2nd_cos,16)
					getexp(77)
				elseif (getvar(VAR_CLEVEL) == 6) then
					setitem(nov_2nd_cos,17)
					getexp(112)
				elseif (getvar(VAR_CLEVEL) == 7) then
					setitem(nov_2nd_cos,18)
					getexp(153)
				end
			end
			wait()
			dialog "[Elmeen]"
			dialog "Which subject"
			dialog "should I cover"
			dialog "first for you?"
			wait()
			while(1) do
				local mresultb = menu("Monsters","Experience","Items","Quit.")
				if mresultb == 1 then
					dialog "[Elmeen]"
					dialog "There are many aggressive monsters"
					dialog "that will attack you first before"
					dialog "you even approach them."
					wait()
					dialog "[Elmeen]"
					dialog "There are also a few monsters that"
					dialog "will cooperate with others of their"
					dialog "kind. Attack one of them, and the"
					dialog "whole pack of them will swarm"
					dialog "around you, seeking revenge."
					wait()
					dialog "[Elmeen]"
					dialog "Every monster can be specified by"
					dialog "their types, sizes and properties."
					dialog "For example, there are Demi-human,"
					dialog "Brute, Holy and Demon property"
					dialog "monsters out there."
					wait()
					dialog "[Elmeen]"
					dialog "When you're aware of what property"
					dialog "a monster is, you can use that"
					dialog "knowledge to help you in battle."
					wait()
					dialog "[Elmeen]"
					dialog "If you manage to get cards that"
					dialog "increase your damage upon certain"
					dialog "monster properties, or reduce"
					dialog "damage from specific monster"
					dialog "properties, you'll have a much"
					dialog "easier time in battle."
					wait()
					dialog "[Elmeen]"
					dialog "Monsters are separated by their"
					dialog "size: small, medium and large."
					dialog "There are a few cards that allow"
					dialog "you to do more damage to"
					dialog "a specific monster size."
					wait()
					dialog "[Elmeen]"
					dialog "Also, each weapon has its strengths"
					dialog "and weaknesses. The size of the"
					dialog "weapon will affect the damage it"
					dialog "will deal to monsters."
					wait()
					dialog "[Elmeen]"
					dialog "For example, Dagger class weapons"
					dialog "do 100% damage on small sized"
					dialog "monsters but only inflict 50% on"
					dialog "large monsters."
					wait()
					dialog "[Elmeen]"
					dialog "Common monster properties include"
					dialog "Water, Wind, Earth, Fire, Shadow"
					dialog "Ghost and Holy. If you attack a"
					dialog "monster with an opposing property,"
					dialog "you can inflict additional damage~"
					wait()
					dialog "[Elmeen]"
					dialog "But if you attack a monster with"
					dialog "a skill or weapon that inflicts"
					dialog "damage of the same property as the"
					dialog "monster, the damage will be greatly"
					dialog "reduced, or completely negated. You"
					dialog "might even heal the monster!"
					wait()
					dialog "[Elmeen]"
					dialog "In the case of Ghost property"
					dialog "monsters, normal weapons cannot do"
					dialog "any harm. However, a weapon with"
					dialog "any other property will be able to"
					dialog "deal out some damage."
					wait()
				elseif mresultb == 2 then
					dialog "[Elmeen]"
					dialog "Basically, a character who deals"
					dialog "the most damage on a monster"
					dialog "receives the most experience points"
					dialog "from the monster."
					wait()
					dialog "[Elmeen]"
					dialog "Therefore you receive a certain"
					dialog "percentage of experience points in"
					dialog "proportion to the damage you've"
					dialog "inflicted on the monster, compared"
					dialog "to its total HP."
					wait()
					dialog "[Elmeen]"
					dialog "Let's say, there is a character"
					dialog "named 'Z'. Z does 65 damage on a"
					dialog "monster that has 100 total HP and"
					dialog "gives 1000 experience points when"
					dialog "it's dead. So, Z will receive 650"
					dialog "experience points."
					wait()
					dialog "[Elmeen]"
					dialog "However, this rule applies"
					dialog "differently following certain"
					dialog "situations."
					wait()
					dialog "[Elmeen]"
					dialog "If there are two people who both"
					dialog "did 65 damage on the same monster,"
					dialog "the experience points that each"
					dialog "will receive differs, depending on"
					dialog "the monster's remaining HP."
					wait()
					dialog "[Elmeen]"
					dialog "For instance, somebody does damage"
					dialog "to a monster while you're already"
					dialog "hitting it, and he did the same"
					dialog "amount of damage you did."
					wait()
					dialog "[Elmeen]"
					dialog "In this case, you will receive 2/3"
					dialog "of the whole experience points that"
					dialog "monster can give you, the other one"
					dialog "will receive 1/3."
					wait()
					dialog "[Elmeen]"
					dialog "However, attacking a monster that"
					dialog "somebody already started to hit is"
					dialog "not suggested in Ragnarok Online."
					dialog "That action is regarded as"
					dialog "ill-mannered behaviour."
					wait()
					dialog "[Elmeen]"
					dialog "For party play, the party master"
					dialog "can set the experience distribution"
					dialog "to the equally share option."
					wait()
					dialog "[Elmeen]"
					dialog "With this method, party members can"
					dialog "share their experience according to"
					dialog "their character levels, and the"
					dialog "number of members in the party."
					wait()
					dialog "[Elmeen]"
					dialog "Also, there is the experience"
					dialog "benefit for party play which allows"
					dialog "you to gain more experience points"
					dialog "than playing solo. You can take"
					dialog "advantage of this system for faster"
					dialog "leveling."
					wait()
				elseif mresultb == 3 then
					dialog "[Elmeen]"
					dialog "When you kill monsters,"
					dialog "you can obtain items by chance."
					dialog "Furthermore, certain characters can"
					dialog "use the 'Steal' skill in order to"
					dialog "steal items from monsters."
					wait()
					dialog "[Elmeen]"
					dialog "Don't you worry about the Steal"
					dialog "skill causing you to not find any"
					dialog "items after you kill them. Using"
					dialog "the Steal skill does not at all"
					dialog "affect the item drop rate for"
					dialog "monsters once they're killed."
					wait()
					dialog "[Elmeen]"
					dialog "When a group of people kill a"
					dialog "monster, the person who did the"
					dialog "most damage receives priority in"
					dialog "picking up item drops."
					wait()
				elseif mresultb == 4 then
					dialog "[Elmeen]"
					dialog "Feel free to"
					dialog "ask me if you"
					dialog "have any questions."
					break
				end
			end
			close()
		elseif mresult == 2 then
			dialog "[Elmeen]"
			dialog "Please take care of the equipments"
			dialog "you've received through the"
			dialog "training courses. Once you lose the"
			dialog "equipments, you can never get them"
			dialog "back."
			close()
		end
		close()
	else
		dialog "[Elmeen]"
		dialog "Which subject"
		dialog "shall I explain?"
		wait()
		while(1) do
			local mresultb = menu("Monsters","Experience","Items","Quit.")
			if mresultb == 1 then
				dialog "[Elmeen]"
				dialog "There are many aggressive monsters"
				dialog "that will attack you first before"
				dialog "you even approach them."
				wait()
				dialog "[Elmeen]"
				dialog "There are also a few monsters that"
				dialog "will cooperate with others of their"
				dialog "kind. Attack one of them, and the"
				dialog "whole pack of them will swarm"
				dialog "around you, seeking revenge."
				wait()
				dialog "[Elmeen]"
				dialog "Every monster can be specified by"
				dialog "their types, sizes and properties."
				dialog "For example, there are Demi-human,"
				dialog "Brute, Holy and Demon property"
				dialog "monsters out there."
				wait()
				dialog "[Elmeen]"
				dialog "When you're aware of what property"
				dialog "a monster is, you can use that"
				dialog "knowledge to help you in battle."
				wait()
				dialog "[Elmeen]"
				dialog "If you manage to get cards that"
				dialog "increase your damage upon certain"
				dialog "monster properties, or reduce"
				dialog "damage from specific monster"
				dialog "properties, you'll have a much"
				dialog "easier time in battle."
				wait()
				dialog "[Elmeen]"
				dialog "Monsters are separated by their"
				dialog "size: small, medium and large."
				dialog "There are a few cards that allow"
				dialog "you to do more damage to"
				dialog "a specific monster size."
				wait()
				dialog "[Elmeen]"
				dialog "Also, each weapon has its strengths"
				dialog "and weaknesses. The size of the"
				dialog "weapon will affect the damage it"
				dialog "will deal to monsters."
				wait()
				dialog "[Elmeen]"
				dialog "For example, Dagger class weapons"
				dialog "do 100% damage on small sized"
				dialog "monsters but only inflict 50% on"
				dialog "large monsters."
				wait()
				dialog "[Elmeen]"
				dialog "Common monster properties include"
				dialog "Water, Wind, Earth, Fire, Shadow"
				dialog "Ghost and Holy. If you attack a"
				dialog "monster with an opposing property,"
				dialog "you can inflict additional damage~"
				wait()
				dialog "[Elmeen]"
				dialog "But if you attack a monster with"
				dialog "a skill or weapon that inflicts"
				dialog "damage of the same property as the"
				dialog "monster, the damage will be greatly"
				dialog "reduced, or completely negated. You"
				dialog "might even heal the monster!"
				wait()
				dialog "[Elmeen]"
				dialog "In the case of Ghost property"
				dialog "monsters, normal weapons cannot do"
				dialog "any harm. However, a weapon with"
				dialog "any other property will be able to"
				dialog "deal out some damage."
				wait()
			elseif mresultb == 2 then
				dialog "[Elmeen]"
				dialog "Basically, a character who deals"
				dialog "the most damage on a monster"
				dialog "receives the most experience points"
				dialog "from the monster."
				wait()
				dialog "[Elmeen]"
				dialog "Therefore you receive a certain"
				dialog "percentage of experience points in"
				dialog "proportion to the damage you've"
				dialog "inflicted on the monster, compared"
				dialog "to its total HP."
				wait()
				dialog "[Elmeen]"
				dialog "Let's say, there is a character"
				dialog "named 'Z'. Z does 65 damage on a"
				dialog "monster that has 100 total HP and"
				dialog "gives 1000 experience points when"
				dialog "it's dead. So, Z will receive 650"
				dialog "experience points."
				wait()
				dialog "[Elmeen]"
				dialog "However, this rule applies"
				dialog "differently following certain"
				dialog "situations."
				wait()
				dialog "[Elmeen]"
				dialog "If there are two people who both"
				dialog "did 65 damage on the same monster,"
				dialog "the experience points that each"
				dialog "will receive differs, depending on"
				dialog "the monster's remaining HP."
				wait()
				dialog "[Elmeen]"
				dialog "For instance, somebody does damage"
				dialog "to a monster while you're already"
				dialog "hitting it, and he did the same"
				dialog "amount of damage you did."
				wait()
				dialog "[Elmeen]"
				dialog "In this case, you will receive 2/3"
				dialog "of the whole experience points that"
				dialog "monster can give you, the other one"
				dialog "will receive 1/3."
				wait()
				dialog "[Elmeen]"
				dialog "However, attacking a monster that"
				dialog "somebody already started to hit is"
				dialog "not suggested in Ragnarok Online."
				dialog "That action is regarded as"
				dialog "ill-mannered behaviour."
				wait()
				dialog "[Elmeen]"
				dialog "For party play, the party master"
				dialog "can set the experience distribution"
				dialog "to the equally share option."
				wait()
				dialog "[Elmeen]"
				dialog "With this method, party members can"
				dialog "share their experience according to"
				dialog "their character levels, and the"
				dialog "number of members in the party."
				wait()
				dialog "[Elmeen]"
				dialog "Also, there is the experience"
				dialog "benefit for party play which allows"
				dialog "you to gain more experience points"
				dialog "than playing solo. You can take"
				dialog "advantage of this system for faster"
				dialog "leveling."
				wait()
			elseif mresultb == 3 then
				dialog "[Elmeen]"
				dialog "When you kill monsters,"
				dialog "you can obtain items by chance."
				dialog "Furthermore, certain characters can"
				dialog "use the 'Steal' skill in order to"
				dialog "steal items from monsters."
				wait()
				dialog "[Elmeen]"
				dialog "Don't you worry about the Steal"
				dialog "skill causing you to not find any"
				dialog "items after you kill them. Using"
				dialog "the Steal skill does not at all"
				dialog "affect the item drop rate for"
				dialog "monsters once they're killed."
				wait()
				dialog "[Elmeen]"
				dialog "When a group of people kill a"
				dialog "monster, the person who did the"
				dialog "most damage receives priority in"
				dialog "picking up item drops."
				wait()
			elseif mresultb == 4 then
				dialog "[Elmeen]"
				dialog "Feel free to"
				dialog "ask me if you"
				dialog "have any questions."
				break
		
			end
		close()
		end
		
	end
end

--npc("new_1-2","Entrance Guard",spr_4_F_03,38,182,3,0,0,"new_1_2_Entrance_Guard_38182")
function new_1_2_Entrance_Guard_38182()
	if (getvar(nov_2nd_cos) == 0) then
		dialog "[Muriel]"
		dialog "I'm sorry, but I can't let anybody"
		dialog "who hasn't been instructed on"
		dialog "fighting enter the Field Combat"
		dialog "Training Grounds."
		wait()
		dialog "[Muriel]"
		dialog "Why don't you speak to the Helper"
		dialog "to the left side of this room"
		dialog "first, so that you can receive some"
		dialog "battle instructions?"
		close()
	elseif ((getvar(nov_2nd_cos) > 0) and (getvar(nov_2nd_cos) < 21)) then
		dialog "[Muriel]"
		dialog "Field Combat Training is an actual"
		dialog "fighting class where you can gain"
		dialog "basic fighting skills that you can"
		dialog "use to defend yourself in"
		dialog "Rune-Midgard."
		wait()
		dialog "[Muriel]"
		dialog "Please kill as many monsters as you"
		dialog "can to increase your base level at"
		dialog "least 2 times."
		wait()
		dialog "[Muriel]"
		dialog "Gaining 2 base levels is required"
		dialog "to complete your Field Combat"
		dialog "Training. Although the monsters are"
		dialog "all weak and easy to kill, I hope"
		dialog "you will be careful."
		wait()
		dialog "[Muriel]"
		dialog "Do you wish"
		dialog "to take the test"
		dialog "right away?"
		wait()
		local mresult = menu("Yes","I need more time.")
		if mresult == 1 then
			dialog "[Muriel]"
			dialog "Please make sure you"
			dialog "talk to the staff at the North"
			dialog "after you inrease your base level"
			dialog "by 2 levels through battle."
			wait()
			dialog "[Muriel]"
			dialog "I'm going to give you some useful"
			dialog "supplies, so please use them in"
			dialog "case of an emergency."
			if (getvar(nov_2nd_cos) == 12) then
				setitem(nov_2nd_cos,22)
			elseif (getvar(nov_2nd_cos) == 13) then
				setitem(nov_2nd_cos,23)
			elseif (getvar(nov_2nd_cos) == 14) then
				setitem(nov_2nd_cos,24)
			elseif (getvar(nov_2nd_cos) == 15) then
				setitem(nov_2nd_cos,25)
			elseif (getvar(nov_2nd_cos) == 16) then
				setitem(nov_2nd_cos,26)
			elseif (getvar(nov_2nd_cos) == 17) then
				setitem(nov_2nd_cos,27)
			elseif (getvar(nov_2nd_cos) == 18) then
				setitem(nov_2nd_cos,28)
			else
				setitem(nov_2nd_cos,29)
			end
			getitem(Powder_Of_Butterfly,1)
			getitem(Wing_Of_Fly,9)
			getitem(Novice_Knife,1)
			getitem(Novice_Guard,1)
			getitem(Spectacles,2)
			getitem(Novice_Potion,300)
			wait()
			checkpoint("new_1-2",23,188)
			moveto("new_1-3",96,21)
			return
			close()
		elseif mresult == 2 then
			dialog "[Muriel]"
			dialog "No problem."
			dialog "If you're not sure if you can pass"
			dialog "the test or not, why don't you go"
			dialog "talk to the Helper to the left one"
			dialog "more time? Please come back"
			dialog "when you're ready."
			close()
		end
		close()
	elseif ((getvar(nov_2nd_cos) > 20) and (getvar(nov_2nd_cos) < 31)) then
		dialog "[Muriel]"
		dialog "Oh well, I told you to be careful."
		dialog "Cheer up! It's not a big deal."
		dialog ""
		dialog "Failure teaches success."
		dialog "You have many chances"
		dialog "to re-take the test."
		wait()
		dialog "[Muriel]"
		dialog "Do you wish"
		dialog "to try again?"
		wait()
		local mresult = menu("Yes.","Can I have more time?")
		if mresult == 1 then
			dialog "[Muriel]"
			dialog "I will give you"
			dialog "some supplies again."
			dialog "Please be careful!"
			if (getvar(nov_2nd_cos) == 22) then
				setitem(nov_2nd_cos,33)
				getexp(16)
			elseif (getvar(nov_2nd_cos) == 23) then
				setitem(nov_2nd_cos,34)
				getexp(25)
			elseif (getvar(nov_2nd_cos) == 24) then
				setitem(nov_2nd_cos,35)
				getexp(36)
			elseif (getvar(nov_2nd_cos) == 25) then
				setitem(nov_2nd_cos,36)
				getexp(77)
			elseif (getvar(nov_2nd_cos) == 26) then
				setitem(nov_2nd_cos,37)
				getexp(112)
			elseif (getvar(nov_2nd_cos) == 27) then
				setitem(nov_2nd_cos,38)
				getexp(153)
			elseif (getvar(nov_2nd_cos) == 28) then
				setitem(nov_2nd_cos,39)
				getexp(200)
			elseif (getvar(nov_2nd_cos) == 29) then
				setitem(nov_2nd_cos,40)
				getexp(200)
			end
			hpheal(100)
			getitem(Novice_Potion,50)
			wait()
			moveto("new_1-3",96,21)
			return
			close()
		elseif mresult == 2 then
			dialog "[Muriel]"
			dialog "No problem."
			dialog "If you're not sure if you can pass"
			dialog "the test or not, why don't you go"
			dialog "talk to the Helper to the left one"
			dialog "more time? Please come back"
			dialog "when you're ready."
			close()
		end
		close()
	elseif (getvar(nov_2nd_cos) > 30) then
		dialog "[Muriel]"
		dialog "Oh well, I told you to be careful."
		dialog "Cheer up! It's not a big deal."
		dialog ""
		dialog "Failure teaches success."
		dialog "You have many chances"
		dialog "to re-take the test."
		wait()
		dialog "[Muriel]"
		dialog "Do you wish to try again?"
		wait()
		local mresult = menu("Yes.","Can I have more time?")
		if mresult == 1 then
			dialog "[Muriel]"
			dialog "I will restore"
			dialog "your HP. Please"
			dialog "be careful!"
			hpheal(100)
			wait()
			moveto("new_1-3",96,21)
			return
			close()
		elseif mresult == 2 then
			dialog "[Muriel]"
			dialog "No problem."
			dialog "If you're not sure if you can pass"
			dialog "the test or not, why don't you go"
			dialog "talk to the Helper to the left one"
			dialog "more time? Please come back"
			dialog "when you're ready."
			close()
		end
		close()
	end
end

--npc("new_1-3","Trainer",spr_4_M_02,95,30,4,0,0,"new_1_3_Trainer_9530")
function new_1_3_Trainer_9530()
	local warp1 = math.random(1,2)
	dialog "[Hoffman]"
	dialog "Hey there~"
	dialog "I'm here to provide"
	dialog "you with a little instruction."
	wait()
	dialog "[Hoffman]"
	dialog "These monsters are all weak"
	dialog "and easy to kill. But be careful,"
	dialog "a lot of them are aggressive"
	dialog "and out for blood!"
	wait()
	dialog "[Hoffman]"
	dialog "If you think monsters here are too"
	dialog "weak for you, I can send you to"
	dialog "another training ground where the"
	dialog "monsters are stronger than the ones"
	dialog "over here."
	wait()
	dialog "[Hoffman]"
	dialog "But don't worry so much,"
	dialog "They're not impossible for"
	dialog "Novices. So would you"
	dialog "like to try?"
	wait()
	local mresult = menu("I do want more of a challenge~","I wanna fight tough monsters!","Cancel.")
	if mresult == 1 then
		dialog "[Hoffman]"
		dialog "I see, then let me guide"
		dialog "you to a training ground that has"
		dialog "stronger monsters. May God be with"
		dialog "you..."
		wait()
		if warp1 == 1 then
			moveto("new_2-3",96,21)
		else
			moveto("new_3-3",96,21)
		end
		return
	elseif mresult == 2 then
		dialog "[Hoffman]"
		dialog "You must like"
		dialog "rough challenges,"
		dialog "don't you? Please"
		dialog "be careful, it can get"
		dialog "pretty difficult..."
		wait()
		if warp1 == 1 then
			moveto("new_4-3",96,21)
		else
			moveto("new_5-3",96,21)
		end
		return
	elseif mresult == 3 then
		dialog "[Hoffman]"
		dialog "Hmm...?"
		dialog "Are you worried about going"
		dialog "to more challenging places? That's"
		dialog "understandable, since you're still"
		dialog "a new adventurer. Good luck~"
		close()
	end
	close()
end

--npc("new_1-3","Test Examiner",spr_4_M_03,96,174,3,0,0,"new_1_3_Test_Examiner_96174")
function new_1_3_Test_Examiner_96174()
	dialog "[Keyman]"
	dialog "Good!!"
	dialog "Now you know how to fight"
	dialog "against monsters, don't you?"
	dialog "Would you like to move"
	dialog "to the next course?"
	wait()
	local mresult = menu("Yes","No")
	if mresult == 1 then
		dialog "[Keyman]"
		dialog "I hope you will be"
		dialog "a good fighter in the"
		dialog "future. Bon voyage."
		close()
		moveto("new_1-4",99,10)
		return
	elseif mresult == 2 then
		dialog "[Keyman]"
		dialog "I see..."
		dialog "It can't hurt to practice until"
		dialog "you're more comfortable with the"
		dialog "basics of battle."
		close()
	end
	close()
end

--trader("new_1-2","Sweet,Potato,Merchant",4_F_01,28,185,3,0,0)
--OnInit:()
--	sellitem Sweet_Potato
--end

npc("new_1-4","Final Tutor",spr_1_ETC_01,100,29,1,0,0,"new_1_4_Final_Tutor_10029")
function new_1_4_Final_Tutor_10029()
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "^FF0000- !! WAH !! -^000000"
		dialog "- You have too many things -"
		dialog ""
		dialog "- After you throw several things away, -"
		dialog ""
		dialog "- Speak to me again -"
		close()
		return
	end
	local now_weight = (getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT))
	if now_weight < 4001 then
		dialog "[Hanson]"
		dialog "You have too many items,"
		dialog "Please reduce your weight."
		close()
		return
	end
	local name = PcName
	local startmap = math.random(1,6)
	local swordman_p
	local archer_p
	local thief_p
	local magician_p
	local acolyte_p
	local merchant_p
	local job_c
	if (getvar(nov_3_swordman) == 20) then
		dialog "[Hanson]"
		dialog "Good day,"
		dialog("^A62A2A"..name.."^000000,")
		dialog "You've made quite"
		dialog "an effort to come here."
		wait()
		dialog "[Hanson]"
		dialog "This final test in the Training"
		dialog "Grounds is a personality test,"
		dialog "but it's not a mandatory course."
		wait()
		dialog "[Hanson]"
		dialog "However, there are some benefits"
		dialog "to taking this test. When you take"
		dialog "this test, you'll receive many"
		dialog "health items which will help you"
		dialog "when you join the Ragnarok Online community."
		wait()
		dialog "[Hanson]"
		dialog "Secondly, after you finish the"
		dialog "course, we will suggest the job"
		dialog "class that seems best suited to"
		dialog "your personality and teleport you"
		dialog "to a town where you can change into"
		dialog "the job we suggested."
		wait()
		dialog "[Hanson]"
		dialog "Now..."
		dialog "What would"
		dialog "you like to do?"
		wait()
		dialog "[Hanson]"
		dialog "Do you wish to start Ragnarok"
		dialog "Online immediately, or take this"
		dialog "personality test course first?"
		wait()
		local mresult = menu("I'll take the course.","Let me start Ragnarok Online please.")
		if mresult == 1 then
			dialog "[Hanson]"
			dialog "Excellent choice!"
			dialog "You're supposed to take every"
			dialog "training course if you really want"
			dialog "to be a well-prepared player!"
			wait()
			dialog "[Hanson]"
			dialog "Alright, let me start the 1st"
			dialog "personality test. Please releax"
			dialog "and take it easy."
			wait()
			dialog "[Hanson]"
			dialog "Remember, this test is only to"
			dialog "check your personality, there is no"
			dialog "set standard for right and wrong."
			dialog "Now! Let's begin the test"
			wait()
			dialog "[Hanson]"
			dialog "Please choose the word"
			dialog "that best matches you from"
			dialog "among the following."
			wait()
			local mresultb = menu("Study","Exercise","Public service","Violence")
			if mresultb == 1 then
				local magician_p = magician_p + 1
			elseif mresultb == 2 then
				local thief_p = thief_p + 1
				local swordman_p = swordman_p + 1
			elseif mresultb == 3 then
				local acolyte_p = acolyte_p + 1
			elseif mresultb == 4 then
				local thief_p = thief_p + 1
			end
			local mresultb = menu("Change","Conserve")
			if mresultb == 1 then
				local magician_p = magician_p + 1
			elseif mresultb == 2 then
				local acolyte_p = acolyte_p + 1
			end
			local mresultb = menu("Consumer","Seller","Producer")
			if mresultb == 1 then
				local swordman_p = swordman_p + 1
				local thief_p = thief_p + 1
				local acolyte_p = acolyte_p + 1
			elseif mresultb == 2 then
				local merchant_p = merchant_p + 1
			elseif mresultb == 3 then
				local magician_p = magician_p + 1
			end
			local mresultb = menu("Celebrity","Prudence")
			if mresultb == 1 then
				local thief_p = thief_p + 1
			elseif mresultb == 2 then
				local archer_p = archer_p + 1
			end
			local mresultb = menu("Theory","Experience")
			if mresultb == 1 then
				local magician_p = magician_p + 1
			elseif mresultb == 2 then
				local swordman_p = swordman_p + 1
			end
			local mresultb = menu("The Past","Reality","The Future")
			if mresultb == 1 then
				local archer_p = archer_p + 1
			elseif mresultb == 2 then
				local merchant_p = merchant_p + 1
				local thief_p = thief_p + 1
			elseif mresultb == 3 then
				local magician_p = magician_p + 1
			end
			dialog "[Hanson]"
			dialog "Please answer"
			dialog "'Yes' or 'No' to"
			dialog "the following questions."
			wait()
			dialog "[Hanson]"
			dialog "I'd rather die "
			dialog "than live submissively."
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				local swordman_p = swordman_p + 1
			elseif mresultb == 2 then
				local thief_p = thief_p + 1
				local merchant_p = merchant_p + 1
			end
			dialog "[Hanson]"
			dialog "You are often upset"
			dialog "to see someone better"
			dialog "than you."
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				local merchant_p = merchant_p + 1
			elseif mresultb == 2 then
				local acolyte_p = acolyte_p + 1
			end
			dialog "[Hanson]"
			dialog "You don't mind"
			dialog "exploring dangerous"
			dialog "places."
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				local swordman_p = swordman_p + 1
			elseif mresultb == 2 then
				local magician_p = magician_p + 1
			end
			dialog "[Hanson]"
			dialog "You are"
			dialog "a leader-type"
			dialog "person."
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				local swordman_p = swordman_p + 1
			elseif mresultb == 2 then
				local archer_p = archer_p + 1
			end
			dialog "[Hanson]"
			dialog "While exploring"
			dialog "a dungeon, you run"
			dialog "into a dead end."
			wait()
			dialog "[Hanson]"
			dialog "However, there is a sign that reads"
			dialog "'Do Not Push' next to a stone that"
			dialog "looks strangely like a button on"
			dialog "the wall next to you."
			wait()
			dialog "[Hanson]"
			dialog "Do you give in"
			dialog "to the urge to push"
			dialog "this button?"
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				local thief_p = thief_p + 1
			elseif mresultb == 2 then
				local swordman_p = swordman_p + 1
			end
			dialog "[Hanson]"
			dialog "You often see "
			dialog "things that don't exist"
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				local acolyte_p = acolyte_p + 1
			elseif mresultb == 2 then
				local magician_p = magician_p + 1
			end
			dialog "[Hanson]"
			dialog "If you fell off"
			dialog "a cliff, you'd feel"
			dialog "like you were flying."
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				local acolyte_p = acolyte_p + 1
			elseif mresultb == 2 then
				local magician_p = magician_p + 1
			end
			dialog "[Hanson]"
			dialog "Money talks."
			wait()
			local mresultb = menu("Yes.","No.")
			if mresultb == 1 then
				local merchant_p = merchant_p + 1
			elseif mresultb == 2 then
				local archer_p = archer_p + 1
			end
			dialog "[Hanson]"
			dialog "Now, let me give you some different"
			dialog "questions. Please relax and take it"
			dialog "easy, and choose the answer that"
			dialog "suits you best."
			wait()
			dialog "[Hanson]"
			dialog "As you check"
			dialog "your tight schedule...."
			wait()
			local mresultb = menu("You feel like a robot.","You are proud and satisfied.","Schedule? What schedule?")
			if mresultb == 1 then
				local swordman_p = swordman_p + 1
				local thief_p = thief_p + 1
			elseif mresultb == 2 then
				local acolyte_p = acolyte_p + 1
				local magician_p = magician_p + 1
			elseif mresultb == 3 then
				local archer_p = archer_p + 1
				local merchant_p = merchant_p + 1
			end
			dialog "[Hanson]"
			dialog "As you go window shopping,"
			dialog "you find a really interesting item"
			dialog "in a store, debating whether or not"
			dialog "to buy it. Before making"
			dialog "a purchase, the first thing"
			dialog "you do is..."
			wait()
			local mresultb = menu("Consider if you need it.","Check the price.","Don't think twice, just buy it!")
			if mresultb == 1 then
				local archer_p = archer_p + 1
			elseif mresultb == 2 then
				local merchant_p = merchant_p + 1
			elseif mresultb == 3 then
				local thief_p = thief_p + 1
			end
			dialog "[Hanson]"
			dialog "Fill in the blank:"
			dialog "You ^3366FF_________^000000"
			dialog "competing with other people..."
			wait()
			local mresultb = menu("don't mind...","don't like...","don't care about...")
			if mresultb == 1 then
				local merchant_p = merchant_p + 1
			elseif mresultb == 2 then
				local thief_p = thief_p + 1
			elseif mresultb == 3 then
				local acolyte_p = acolyte_p + 1
				local swordman_p = swordman_p + 1
			end
			dialog "[Hanson]"
			dialog "You're responsible for a task that"
			dialog "requires you to cooperate with many"
			dialog "people. If you handle it alone, it"
			dialog "will take a lot of effort and"
			dialog "time."
			wait()
			dialog "[Hanson]"
			dialog "But if you cooperate with others,"
			dialog "it will be a simple and enjoyable"
			dialog "task. You would..."
			wait()
			local mresultb = menu("Handle it by myself, even if it's hard.","Ask friends to help.")
			if mresultb == 1 then
				local magician_p = magician_p + 1
			elseif mresultb == 2 then
				local merchant_p = merchant_p + 1
			end
			dialog "[Hanson]"
			dialog "You happened to "
			dialog "find a girl who"
			dialog "fainted on the street."
			dialog "What would you do?"
			wait()
			local mresultb = menu("Carry her to a hospital","Assess the situation before taking action.","Just ignore it.")
			if mresultb == 1 then
				local acolyte_p = acolyte_p + 1
			elseif mresultb == 2 then
				local swordman_p = swordman_p + 1
				local archer_p = archer_p + 1
			elseif mresultb == 3 then
				local magician_p = magician_p + 1
				local thief_p = thief_p + 1
				local merchant_p = merchant_p + 1
			end
			dialog "[Hanson]"
			dialog "You happened to "
			dialog "pick up 'Clothing.'"
			dialog "What would you do?"
			wait()
			local mresultb = menu("Check the brand.","Wonder who lost it.","Finder's keepers!","Leave it where it was.")
			if mresultb == 1 then
				local merchant_p = merchant_p + 1
			elseif mresultb == 2 then
				local acolyte_p = acolyte_p + 1
			elseif mresultb == 3 then
				local merchant_p = merchant_p + 1
				local thief_p = thief_p + 1
			elseif mresultb == 4 then
				local magician_p = magician_p + 1
			end
			dialog "[Hanson]"
			dialog "You happened to accidently slip"
			dialog "your tongue in the middle of a"
			dialog "conversation. How do you cope with"
			dialog "this situation?"
			wait()
			local mresultb = menu("Pretend it's a joke.","Change the subject.","Analyse it.","Apologise honestly.")
			if mresultb == 1 then
				local thief_p = thief_p + 1
			elseif mresultb == 2 then
				local swordman_p = swordman_p + 1
			elseif mresultb == 3 then
				local magician_p = magician_p + 1
			elseif mresultb == 4 then
				local acolyte_p = acolyte_p + 1
			end
			dialog "[Hanson]"
			dialog "You're on a trip with your beloved."
			dialog "Your significant other then asks"
			dialog "you to buy a souvenir that's not"
			dialog "particularly good. What do you do?"
			wait()
			local mresultb = menu("Buy the item for her/him.","Say 'no'.","Promise to buy it next time.")
			if mresultb == 1 then
				local swordman_p = swordman_p + 1
			elseif mresultb == 2 then
				local merchant_p = merchant_p + 1
			elseif mresultb == 3 then
				local thief_p = thief_p + 1
			end
			dialog "[Hanson]"
			dialog "Okay~! That's all for the test."
			dialog "You've finished all the Training"
			dialog "Grounds courses. Congratulations!"
			wait()
			dialog "I've prepared some items for you"
			dialog "since you passed the personality"
			dialog "test. Please take them, you've"
			dialog "earned them."
			wait()
			---------------------------------------------------------------------------------------------------------------------------------------------------
			setitem(nov_3_swordman,40)
			getitem(Red_Potion,4)
			getitem(Yellow_Potion,2)
			getitem(Green_Potion,2)
			---------------------------------------------------------------------------------------------------------------------------------------------------
			wait()
			dialog "[Hanson]"
			dialog "Now, we will recommend a suitable"
			dialog "job for you after analysing the"
			dialog "results of your personality test."
			dialog "Please wait a moment."
			wait()
			dialog "[Hanson]"
			dialog "..."
			wait()
			dialog "[Hanson]"
			dialog "..."
			dialog "......"
			wait()
			dialog "[Hanson]"
			dialog "Here's the"
			dialog "final result"
			dialog "of your test."
			wait()
			if swordman_p > magician_p then
				if swordman_p > merchant_p then
					if swordman_p > thief_p then
						if swordman_p > archer_p then
							if swordman_p > acolyte_p then
								local job_c = 1
							else
								local job_c = 6
							end
						else
							if archer_p > acolyte_p then
								local job_c = 5
							else
								local job_c = 6
							end
						end
					else
						if thief_p > archer_p then
							if thief_p > acolyte_p then
								local job_c = 4
							else
								local job_c = 6
							end
						else
							if archer_p > acolyte_p then
								local job_c = 5
							else
								local job_c = 6
							end
						end
					end
				else
					if merchant_p > thief_p then
						if merchant_p > archer_p then
							if merchant_p > acolyte_p then
								local job_c = 3
							else
								local job_c = 6
							end
						else
							if archer_p > acolyte_p then
								local job_c = 5
							else
								local job_c = 6
							end
						end
					else
						if thief_p > archer_p then
							if thief_p > acolyte_p then
								local job_c = 4
							else
								local job_c = 6
							end
						else
							if archer_p > acolyte_p then
								local job_c = 5
							else
								local job_c = 6
							end
						end
					end
				end
			else
				if magician_p > merchant_p then
					if magician_p > thief_p then
						if magician_p > archer_p then
							if magician_p > acolyte_p then
								local job_c = 2
							else
								local job_c = 6
							end
						else
							if archer_p > acolyte_p then
								local job_c = 5
							else
								local job_c = 6
							end
						end
					else
						if thief_p > archer_p then
							if thief_p > acolyte_p then
								local job_c = 4
							else
								local job_c = 6
							end
						else
							if archer_p > acolyte_p then
								local job_c = 5
							else
								local job_c = 6
							end
						end
					end
				else
					if merchant_p > thief_p then
						if merchant_p > archer_p then
							if merchant_p > acolyte_p then
								local job_c = 3
							else
								local job_c = 6
							end
						else
							if archer_p > acolyte_p then
								local job_c = 5
							else
								local job_c = 6
							end
						end
					else
						if thief_p > archer_p then
							if thief_p > acolyte_p then
								local job_c = 4
							else
								local job_c = 6
							end
						else
							if archer_p > acolyte_p then
								local job_c = 5
							else
								local job_c = 6
							end
						end
					end
				end
			end
			--=================================================================================================================================================================
			if job_c == 1 then
				dialog "[Hanson]"
				dialog "Although you're very straight"
				dialog "forward and simple minded, you"
				dialog "have a strong will and want to be"
				dialog "an important person for this"
				dialog "world."
				wait()
				dialog "[Hanson]"
				dialog "You're also always"
				dialog "trying to protect the weak."
				wait()
				dialog "[Hanson]"
				dialog "For you, who has your own will,"
				dialog "^696969Swordman^000000 class is the most"
				dialog "suitable job."
				wait()
				dialog "[Hanson]"
				dialog "So would you like to accept our"
				dialog "recommendation, or would you like"
				dialog "to choose a job on your own?"
				wait()
				local mresultb = menu("Swordman!","No, My own choice!")
				if mresultb == 1 then
					dialog "[Hanson]"
					dialog "That's a great choice!"
					dialog "After you receive all the supplies,"
					dialog "I will teleport you to the Swordman"
					dialog "Association."
					wait()
					dialog "^660000List of Supplies^000000"
					dialog "5 Free Ticket for Kafra Storage"
					dialog "5 Free Ticket for Kafra Transportation"
					dialog "^000099100 Zeny^000000"
					dialog "1 Falchion"
					dialog "7 Phracon"
					wait()
					---------------------------------------------------------------------------------------------------------------------------------------------------
					setitem(nov_3_swordman,40)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
					getitem(Falchion,1)
					getitem(Phracon,7)
					getgold(100)
					---------------------------------------------------------------------------------------------------------------------------------------------------
					dialog "[Hanson]"
					dialog "Please check your inventory to see"
					dialog "if you have received all the"
					dialog "supplies listed. Let me briefly"
					dialog "inform you about the items you've"
					dialog "received"
					wait()
					dialog "[Hanson]"
					dialog "Free tickets for Kafra storage and"
					dialog "transportation can be used for"
					dialog "Kafra storage and teleport"
					dialog "services."
					wait()
					dialog "[Hanson]"
					dialog "'Zeny' is the currency of"
					dialog "Rune-Midgard. 'Falchion' is a"
					dialog "weapon that will be very useful"
					dialog "once you become a Swordman."
					wait()
					dialog "[Hanson]"
					dialog "'Phracon' is an ore which can be"
					dialog "used to upgrade lvl 1 weapons. To"
					dialog "strengthen your Falchion with this"
					dialog "Phracon, please visit a forge in"
					dialog "one of the towns."
					wait()
					dialog "[Hanson]"
					dialog "The town you will be sent to is"
					dialog "called Izlude which is a satellite"
					dialog "of Prontera. The Swordman"
					dialog "Association is located in the West"
					dialog "of town. Please remember this."
					wait()
					dialog "[Hanson]"
					dialog "You will now"
					dialog "be teleported."
					dialog "Good luck,"
					dialog("^A62A2A"..name.."^000000,")
					dialog "and farewell."
					wait()
					checkpoint("izlude",93,104)
					moveto("izlude_in",74,167)
					return
					close()
				elseif mresultb == 2 then
					dialog "[Hanson]"
					dialog "I see. It's your choice"
					dialog "There is no obligation to change to"
					dialog "the job we recommend. Please choose"
					dialog "the job you wish to become."
					wait()
					local mresultb = menu("Mage","Merchant","Thief","Archer","Acolyte")
					if mresultb == 1 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Mage."
						dialog "You will be sent to"
						dialog "the town of Geffen."
						wait()
						dialog "[Hanson]"
						dialog "The Mage Academy is located in the"
						dialog "North-West of town. Please remember"
						dialog "this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Mage."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("geffen",119,37)
						moveto("geffen_in",163,98)
						return
						close()
					elseif mresultb == 2 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Merchant."
						dialog "You will be sent to"
						dialog "the town of Alberta."
						wait()
						dialog "[Hanson]"
						dialog "The Merchant Association is"
						dialog "located in the South-West of"
						dialog "town. Please remember this..."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Merchant."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("alberta",30,232)
						moveto("alberta_in",62,44)
						return
						close()
					elseif mresultb == 3 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Thief"
						dialog "You will be sent to"
						dialog "the town of Morroc."
						wait()
						dialog "[Hanson]"
						dialog "The Thief guild is in the"
						dialog "underground 1st floor of a pyramid"
						dialog "which is North-West of town. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "[Hanson]"
						dialog "After you receive all the"
						dialog "supplies, I will send you to"
						dialog "the associated town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Thief."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("morocc",150,99)
						moveto("moc_ruins",155,44)
						return
						close()
					elseif mresultb == 4 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Archer."
						dialog "You will be sent to"
						dialog "the town of Payon."
						wait()
						dialog "[Hanson]"
						dialog "The Archer Guild is located to the"
						dialog "North-East of Payon. Please "
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Archer."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("payon",256,242)
						moveto("payon_in02",64,65)
						return
						close()
					elseif mresultb == 5 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Acolyte."
						dialog "You will be sent to"
						dialog "the town of Prontera."
						wait()
						dialog "[Hanson]"
						dialog "The Prontera Sanctuary is located"
						dialog "to the North-East of Prontera."
						dialog "Please remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Acolyte."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("prontera",117,72)
						moveto("prt_church",172,19)
						return
						close()
					end
					close()
				end
				close()
				--=================================================================================================================================================================
			elseif job_c == 2 then
				dialog "[Hanson]"
				dialog "You enjoy analysing things around"
				dialog "you, and you're very independent."
				dialog "You have use insightful judgement"
				dialog "and you can be very shy and"
				dialog "logical."
				wait()
				dialog "[Hanson]"
				dialog "For you, the observative"
				dialog "intellectual, ^696969Mage^000000 is the most"
				dialog "suitable job."
				wait()
				dialog "[Hanson]"
				dialog "So, would you like to accept our"
				dialog "recommendation or would you like to"
				dialog "choose a job on your own?"
				wait()
				local mresultb = menu("Mage!","No, My own choice!")
				if mresultb == 1 then
					dialog "[Hanson]"
					dialog "That's a great choice!"
					dialog "After you receive all the supplies,"
					dialog "I'll teleport you to the Mage"
					dialog "town."
					wait()
					dialog "^660000List of Supplies^000000"
					dialog "5 Free Ticket for Kafra Storage"
					dialog "5 Free Ticket for Kafra Transportation"
					dialog "^000099100 Zeny^000000"
					dialog "1 Rod"
					dialog "1 Cutter"
					dialog "7 Phracon"
					wait()
					---------------------------------------------------------------------------------------------------------------------------------------------------
					setitem(nov_3_swordman,40)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
					getitem(Rod,1)
					getitem(Cutter,1)
					getitem(Phracon,7)
					getgold(100)
					---------------------------------------------------------------------------------------------------------------------------------------------------
					dialog "[Hanson]"
					dialog "Please check your inventory to see"
					dialog "if you have received all the"
					dialog "supplies listed. Let me briefly"
					dialog "inform you about the items you've"
					dialog "received."
					wait()
					dialog "[Hanson]"
					dialog "Free tickets for Kafra storage and"
					dialog "transportation can be used for"
					dialog "Kafra storage and teleport"
					dialog "services."
					wait()
					dialog "[Hanson]"
					dialog "'Zeny' is the currency of"
					dialog "Rune-Midgard. That 'Cutter' has"
					dialog "been given to you so that you can"
					dialog "fight monsters before you become a"
					dialog "Mage."
					wait()
					dialog "[Hanson]"
					dialog "Once you become a Mage, you can use"
					dialog "the 'Rod' that has been given to"
					dialog "you. It will be very useful during"
					dialog "your early days as a Mage."
					wait()
					dialog "[Hanson]"
					dialog "'Phracon' is an ore which can be"
					dialog "used to upgrade lvl 1 weapons. To"
					dialog "strengthen your Level 1 weapons"
					dialog "with this Phracon, please visit a"
					dialog "forge in one of the towns."
					wait()
					dialog "[Hanson]"
					dialog "The town you will arrive in is"
					dialog "named 'Geffen'."
					dialog "The mage academy is located in the"
					dialog "North-West part of town. Please"
					dialog "remember this."
					wait()
					dialog "[Hanson]"
					dialog "You will now"
					dialog "be teleported."
					dialog "Good luck,"
					dialog("^A62A2A"..name.."^000000,")
					dialog "and farewell."
					wait()
					checkpoint("geffen",119,37)
					moveto("geffen_in",163,98)
					return
					close()
				elseif mresultb == 2 then
					dialog "[Hanson]"
					dialog "I see. It's your choice"
					dialog "There is no obligation to change to"
					dialog "the job we recommend. Please choose"
					dialog "the job you wish to become."
					wait()
					local mresultb = menu("Swordman","Merchant","Thief","Archer","Acolyte")
					if mresultb == 1 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Swordman."
						dialog "You will be sent to"
						dialog "the town of Izlude."
						wait()
						dialog "[Hanson]"
						dialog "The Swordman Association is located"
						dialog "to the North-West in Izlude. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Swordman."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("izlude",95,104)
						moveto("izlude_in",74,167)
						return
						close()
					elseif mresultb == 2 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Merchant."
						dialog "You will be sent to"
						dialog "the town of Alberta."
						wait()
						dialog "[Hanson]"
						dialog "The Merchant Association is"
						dialog "located in the South-West of"
						dialog "town. Please remember this..."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Merchant."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("alberta",30,232)
						moveto("alberta_in",62,44)
						return
						close()
					elseif mresultb == 3 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Thief"
						dialog "You will be sent to"
						dialog "the town of Morroc."
						wait()
						dialog "[Hanson]"
						dialog "The Thief guild is in the"
						dialog "underground 1st floor of a pyramid"
						dialog "which is North-West of town. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "[Hanson]"
						dialog "After you receive all the"
						dialog "supplies, I will send you to"
						dialog "the associated town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Thief."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("morocc",150,99)
						moveto("moc_ruins",155,44)
						return
						close()
					elseif mresultb == 4 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Archer."
						dialog "You will be sent to"
						dialog "the town of Payon."
						wait()
						dialog "[Hanson]"
						dialog "The Archer Guild is located to the"
						dialog "North-East of Payon. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Archer."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("payon",256,242)
						moveto("payon_in02",64,65)
						return
						close()
					elseif mresultb == 5 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Acolyte."
						dialog "You will be sent to"
						dialog "the town of Prontera."
						wait()
						dialog "[Hanson]"
						dialog "The Prontera Sanctuary is located"
						dialog "to the North-East of Prontera."
						dialog "Please remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Acolyte."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("prontera",117,72)
						moveto("prt_church",172,19)
						return
						close()
					end
					close()
				end
				close()
				--=================================================================================================================================================================
			elseif job_c == 3 then
				dialog "[Hanson]"
				dialog "You're very willful and very well"
				dialog "organised. You've already set a"
				dialog "goal in life and have become very"
				dialog "responsible for your actions."
				wait()
				dialog "[Hanson]"
				dialog "Because of your drive and desire to"
				dialog "succeed, ^696969Merchant^000000 is the most"
				dialog "suitable job for you."
				wait()
				dialog "[Hanson]"
				dialog "So, would you like to accept our"
				dialog "recommendation or would you like to"
				dialog "choose a job on your own?"
				wait()
				local mresultb = menu("Merchant!","No, My own choice!")
				if mresultb == 1 then
					dialog "[Hanson]"
					dialog "That's a great choice!"
					dialog "After you receive all the supplies,"
					dialog "I will teleport you to the merchant"
					dialog "town."
					wait()
					dialog "^660000List of Supplies^000000"
					dialog "5 Free Ticket for Kafra Storage"
					dialog "5 Free Ticket for Kafra Transportation"
					dialog "4 Free Ticket for the Cart Service"
					dialog "^000099100 Zeny^000000"
					dialog "^000033Battle Axe x 1^000000"
					dialog "7 Phracon"
					wait()
					---------------------------------------------------------------------------------------------------------------------------------------------------
					setitem(nov_3_swordman,40)
					getitem(Cargo_Free_Ticket,4)
					getitem(Warp_Free_Ticket,4)
					getitem(Cart_Free_Ticket,4)
					getitem(Battle_Axe,1)
					getitem(Phracon,7)
					getgold(100)
					---------------------------------------------------------------------------------------------------------------------------------------------------
					dialog "[Hanson]"
					dialog "Please check your inventory to see"
					dialog "if you have received all the"
					dialog "supplies listed. Let me briefly"
					dialog "inform you about the items you've"
					dialog "received."
					wait()
					dialog "[Hanson]"
					dialog "Free tickets for Kafra storage and"
					dialog "transportation can be used for"
					dialog "Kafra storage and teleport"
					dialog "services."
					wait()
					dialog "[Hanson]"
					dialog "'Zeny' is the currency of"
					dialog "Rune-Midgard. 'Battle Axe' will"
					dialog "come in handy once you become a"
					dialog "Merchant."
					wait()
					dialog "[Hanson]"
					dialog "'Phracon' is an ore which can be"
					dialog "used to upgrade lvl 1 weapons. To"
					dialog "strengthen your Battle Axe with"
					dialog "this Phracon, please visit a forge"
					dialog "in one of the towns."
					wait()
					dialog "[Hanson]"
					dialog "The town you will be sent to is"
					dialog "named Alberta. The Merchant Guild"
					dialog "is located to the South-West within"
					dialog "Alberta. Please remember this."
					wait()
					dialog "[Hanson]"
					dialog "You will now"
					dialog "be teleported."
					dialog "Good luck,"
					dialog("^A62A2A"..name.."^000000,")
					dialog "and farewell."
					wait()
					checkpoint("alberta",30,232)
					moveto("alberta_in",62,44)
					return
					close()
				elseif mresultb == 2 then
					dialog "[Hanson]"
					dialog "I see. It's your choice"
					dialog "There is no obligation to change to"
					dialog "the job we recommend. Please choose"
					dialog "the job you wish to become."
					wait()
					local mresultb = menu("Swordman","Mage","Thief","Archer","Acolyte")
					if mresultb == 1 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Swordman."
						dialog "You will be sent to"
						dialog "the town of Izlude."
						wait()
						dialog "[Hanson]"
						dialog "The Swordman Association is located"
						dialog "to the North-West in Izlude. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Swordman."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("izlude",95,104)
						moveto("izlude_in",74,167)
						return
						close()
					elseif mresultb == 2 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Mage."
						dialog "You will be sent to"
						dialog "the town of Geffen."
						wait()
						dialog "[Hanson]"
						dialog "The Mage Academy is located in the"
						dialog "North-West of town. Please remember"
						dialog "this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Mage."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("geffen",119,37)
						moveto("geffen_in",163,98)
						return
						close()
					elseif mresultb == 3 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Thief"
						dialog "You will be sent to"
						dialog "the town of Morroc."
						wait()
						dialog "[Hanson]"
						dialog "The Thief guild is in the"
						dialog "underground 1st floor of a pyramid"
						dialog "which is North-West of town. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "[Hanson]"
						dialog "After you receive all the"
						dialog "supplies, I will send you to"
						dialog "the associated town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Thief."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("morocc",150,99)
						moveto("moc_ruins",155,44)
						return
						close()
					elseif mresultb == 4 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Archer."
						dialog "You will be sent to"
						dialog "the town of Payon."
						wait()
						dialog "[Hanson]"
						dialog "The Archer Guild is located to the"
						dialog "North-East of Payon. Please "
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						------------------------------------------------------------------------------------------------------------------------------------------------------------------------
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Archer."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("payon",256,242)
						moveto("payon_in02",64,65)
						return
						close()
					elseif mresultb == 5 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Acolyte."
						dialog "You will be sent to"
						dialog "the town of Prontera."
						wait()
						dialog "[Hanson]"
						dialog "The Prontera Sanctuary is located"
						dialog "to the North-East of Prontera."
						dialog "Please remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Acolyte."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("prontera",117,72)
						moveto("prt_church",172,19)
						return
						close()
					end
					close()
				end
				close()
				--=================================================================================================================================================================()
			elseif job_c == 4 then
				dialog "[Hanson]"
				dialog "Carpe diem:"
				dialog "Seize the day."
				dialog "That's how you live."
				wait()
				dialog "[Hanson]"
				dialog "From your natural curiosity"
				dialog "comes a happy-go-lucky sense of"
				dialog "adventure, and a desire to"
				dialog "explore."
				wait()
				dialog "[Hanson]"
				dialog "For someone like you,"
				dialog "^696969Thief^000000 is the most suitable job."
				wait()
				dialog "[Hanson]"
				dialog "So, would you like to accept our"
				dialog "recommendation or would you like to"
				dialog "choose a job on your own?"
				wait()
				local mresultb = menu("Thief!","No, My own choice!")
				if mresultb == 1 then
					dialog "[Hanson]"
					dialog "That's a great choice!"
					dialog "After you receive all the supplies,"
					dialog "I'll teleport you to the Thief"
					dialog "town."
					wait()
					dialog "^660000List of Supplies^000000"
					dialog "5 Free Ticket for Kafra Storage"
					dialog "5 Free Ticket for Kafra Transportation"
					dialog "^000099100 Zeny^000000"
					dialog "1 Main Gauche"
					dialog "7 Phracon"
					wait()
					-----------------------------------------------------------------------------------------------------------------------------------------------------()
					setitem(nov_3_swordman,40)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
					getitem(Main_Gauche,1)
					getitem(Phracon,7)
					getgold(100)
					-----------------------------------------------------------------------------------------------------------------------------------------------------()
					dialog "[Hanson]"
					dialog "Please check your inventory to see"
					dialog "if you have received all the"
					dialog "supplies listed. Let me briefly"
					dialog "inform you about the items you've"
					dialog "received."
					wait()
					dialog "[Hanson]"
					dialog "Free tickets for Kafra storage and"
					dialog "transportation can be used for"
					dialog "Kafra storage and teleport"
					dialog "services."
					wait()
					dialog "[Hanson]"
					dialog "'Zeny' is the currency of"
					dialog "Rune-Midgard. 'Main Gauche' is a"
					dialog "weapon that will be very useful"
					dialog "once you become a Thief."
					wait()
					dialog "[Hanson]"
					dialog "'Phracon' is an ore which can be"
					dialog "used to upgrade lvl 1 weapons. To"
					dialog "strengthen your Main Gauche with"
					dialog "this Phracon, please visit a forge"
					dialog "in one of the towns."
					wait()
					dialog "[Hanson]"
					dialog "The town you will be sent to is"
					dialog "named Morroc. The Thief Guild is in"
					dialog "the first underground floor of the"
					dialog "pyramid North-West of Morroc."
					dialog "Remember this."
					wait()
					dialog "[Hanson]"
					dialog "You will now"
					dialog "be teleported."
					dialog "Good luck,"
					dialog("^A62A2A"..name.."^000000,")
					dialog "and farewell."
					wait()
					checkpoint("morocc",150,99)
					moveto("moc_ruins",155,44)
					return
					close()
				elseif mresultb == 2 then
					dialog "[Hanson]"
					dialog "I see. It's your choice"
					dialog "There is no obligation to change to"
					dialog "the job we recommend. Please choose"
					dialog "the job you wish to become."
					wait()
					local mresultb = menu("Swordman","Mage","Merchant","Archer","Acolyte")
					if mresultb == 1 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Swordman."
						dialog "You will be sent to"
						dialog "the town of Izlude."
						wait()
						dialog "[Hanson]"
						dialog "The Swordman Association is located"
						dialog "to the North-West in Izlude. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Swordman."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("izlude",95,104)
						moveto("izlude_in",74,167)
						return
						close()
					elseif mresultb == 2 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Mage."
						dialog "You will be sent to"
						dialog "the town of Geffen."
						wait()
						dialog "[Hanson]"
						dialog "The Mage Academy is located in the"
						dialog "North-West of town. Please remember"
						dialog "this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Mage."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("geffen",119,37)
						moveto("geffen_in",163,98)
						return
						close()
					elseif mresultb == 3 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Merchant."
						dialog "You will be sent to"
						dialog "the town of Alberta."
						wait()
						dialog "[Hanson]"
						dialog "The Merchant Association is"
						dialog "located in the South-West of"
						dialog "town. Please remember this..."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Merchant."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("alberta",30,232)
						moveto("alberta_in",62,44)
						return
						close()
					elseif mresultb == 4 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Archer."
						dialog "You will be sent to"
						dialog "the town of Payon."
						wait()
						dialog "[Hanson]"
						dialog "The Archer Guild is located to the"
						dialog "North-East of Payon. Please "
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Archer."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("payon",256,242)
						moveto("payon_in02",64,65)
						return
						close()
					elseif mresultb == 5 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Acolyte."
						dialog "You will be sent to"
						dialog "the town of Prontera."
						wait()
						dialog "[Hanson]"
						dialog "The Prontera Sanctuary is located"
						dialog "to the North-East of Prontera."
						dialog "Please remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Acolyte."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("prontera",117,72)
						moveto("prt_church",172,19)
						return
						close()
					end
					close()
				end
				close()
				--=================================================================================================================================================================()
			elseif job_c == 5 then
				dialog "[Hanson]"
				dialog "You always try to understand other"
				dialog "people, even though they are"
				dialog "strange. You expect others to try"
				dialog "to understand you."
				wait()
				dialog "[Hanson]"
				dialog "You refuse to be an ordinary person"
				dialog "as you persue your dream. As a"
				dialog "person sensitive to nature, ^696969Archer^000000"
				dialog "is the most suitable job for you."
				wait()
				dialog "[Hanson]"
				dialog "So, would you like to accept our"
				dialog "recommendation or would you like to"
				dialog "choose a job on your own?"
				wait()
				local mresultb = menu("Archer!","No, My own choice!")
				if mresultb == 1 then
					dialog "[Hanson]"
					dialog "That's a great choice!"
					dialog "After you receive all the supplies,"
					dialog "I'll teleport you to the Archer"
					dialog "town."
					wait()
					dialog "^660000List of Supplies^000000"
					dialog "5 Free Ticket for Kafra Storage"
					dialog "5 Free Ticket for Kafra Transportation"
					dialog "^000099100 Zeny^000000"
					dialog "1 Composite Bow"
					dialog "7 Phracon"
					wait()
					-----------------------------------------------------------------------------------------------------------------------------------------------------()
					setitem(nov_3_swordman,40)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
					getitem(Composite_Bow,1)
					getitem(Phracon,7)
					getgold(100)
					-----------------------------------------------------------------------------------------------------------------------------------------------------()
					dialog "[Hanson]"
					dialog "Please check your inventory to see"
					dialog "if you have received all the"
					dialog "supplies listed. Let me briefly"
					dialog "inform you about the items you've"
					dialog "received."
					wait()
					dialog "[Hanson]"
					dialog "Free tickets for Kafra storage and"
					dialog "transportation can be used for"
					dialog "Kafra storage and teleport"
					dialog "services."
					wait()
					dialog "[Hanson]"
					dialog "'Zeny' is the currency of"
					dialog "Rune-Midgard. 'Composite Bow' is a"
					dialog "weapon that will be very useful"
					dialog "once you become an Archer."
					wait()
					dialog "[Hanson]"
					dialog "'Phracon' is an ore which can be"
					dialog "used to upgrade lvl 1 weapons. To"
					dialog "strengthen your Composite Bow with"
					dialog "this Phracon, please visit a forge"
					dialog "in one of the towns."
					wait()
					dialog "[Hanson]"
					dialog "The town you will be sent to is"
					dialog "named Payon. The Archer Guild is"
					dialog "located to the North-West of town."
					dialog "Please remember this."
					wait()
					dialog "[Hanson]"
					dialog "You will now"
					dialog "be teleported."
					dialog "Good luck,"
					dialog("^A62A2A"..name.."^000000,")
					dialog "and farewell."
					wait()
					checkpoint("payon",256,242)
					moveto("payon_in02",64,65)
					return
					close()
				elseif mresultb == 2 then
					dialog "[Hanson]"
					dialog "I see. It's your choice"
					dialog "There is no obligation to change to"
					dialog "the job we recommend. Please choose"
					dialog "the job you wish to become."
					wait()
					local mresultb = menu("Swordman","Mage","Merchant","Thief","Acolyte")
					if mresultb == 1 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Swordman."
						dialog "You will be sent to"
						dialog "the town of Izlude."
						wait()
						dialog "[Hanson]"
						dialog "The Swordman Association is located"
						dialog "to the North-West in Izlude. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Swordman."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("izlude",95,104)
						moveto("izlude_in",74,167)
						return
						close()
					elseif mresultb == 2 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Mage."
						dialog "You will be sent to"
						dialog "the town of Geffen."
						wait()
						dialog "[Hanson]"
						dialog "The Mage Academy is located in the"
						dialog "North-West of town. Please remember"
						dialog "this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Mage."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("geffen",119,37)
						moveto("geffen_in",163,98)
						return
						close()
					elseif mresultb == 3 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Merchant."
						dialog "You will be sent to"
						dialog "the town of Alberta."
						wait()
						dialog "[Hanson]"
						dialog "The Merchant Association is"
						dialog "located in the South-West of"
						dialog "town. Please remember this..."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Merchant."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("alberta",30,232)
						moveto("alberta_in",62,44)
						return
						close()
					elseif mresultb == 4 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Thief"
						dialog "You will be sent to"
						dialog "the town of Morroc."
						wait()
						dialog "[Hanson]"
						dialog "The Thief guild is in the"
						dialog "underground 1st floor of a pyramid"
						dialog "which is North-West of town. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "[Hanson]"
						dialog "After you receive all the"
						dialog "supplies, I will send you to"
						dialog "the associated town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Thief."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("morocc",150,99)
						moveto("moc_ruins",155,44)
						return
						close()
					elseif mresultb == 5 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Acolyte."
						dialog "You will be sent to"
						dialog "the town of Prontera."
						wait()
						dialog "[Hanson]"
						dialog "The Prontera Sanctuary is located"
						dialog "to the North-East of Prontera."
						dialog "Please remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Acolyte."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("prontera",117,72)
						moveto("prt_church",172,19)
						return
						close()
					end
					close()
				end
				close()
				--=================================================================================================================================================================()
			elseif job_c == 6 then
				dialog "[Hanson]"
				dialog "You are very warm hearted and"
				dialog "considerate, and you're willing to"
				dialog "sacrifice your well being for the"
				dialog "sake of others."
				wait()
				dialog "[Hanson]"
				dialog "You're always eager to help others,"
				dialog "which is why you're so well liked."
				wait()
				dialog "[Hanson]"
				dialog "For you who are kind of heart,"
				dialog "^696969Acolyte^000000 is the most suitable"
				dialog "job."
				wait()
				dialog "[Hanson]"
				dialog "So, would you like to accept our"
				dialog "recommendation or would you like to"
				dialog "choose a job on your own?"
				wait()
				local mresultb = menu("Acolyte!","No, My own choice!")
				if mresultb == 1 then
					dialog "[Hanson]"
					dialog "That's a great choice!"
					dialog "After you receive all the supplies,"
					dialog "I'll teleport you behind the"
					dialog "Sanctuary."
					wait()
					dialog "^660000List of Supplies^000000"
					dialog "5 Free Ticket for Kafra Storage"
					dialog "5 Free Ticket for Kafra Transportation"
					dialog "^000099100 Zeny^000000"
					dialog "1 Mace"
					dialog "7 Phracon"
					wait()
					-----------------------------------------------------------------------------------------------------------------------------------------------------()
					setitem(nov_3_swordman,40)
					getitem(Cargo_Free_Ticket,5)
					getitem(Warp_Free_Ticket,5)
					getitem(Mace,1)
					getitem(Phracon,7)
					getgold(100)
					-----------------------------------------------------------------------------------------------------------------------------------------------------()
					dialog "[Hanson]"
					dialog "Please check your inventory to see"
					dialog "if you have received all the"
					dialog "supplies listed. Let me briefly"
					dialog "inform you about the items you've"
					dialog "received."
					wait()
					dialog "[Hanson]"
					dialog "Free tickets for Kafra storage and"
					dialog "transportation can be used for"
					dialog "Kafra storage and teleport"
					dialog "services."
					wait()
					dialog "[Hanson]"
					dialog "'Zeny' is the currency of"
					dialog "Rune-Midgard. 'Mace' is a weapon"
					dialog "that will be very useful once you"
					dialog "become an Acolyte."
					wait()
					dialog "[Hanson]"
					dialog "'Phracon' is an ore which can be"
					dialog "used to upgrade lvl 1 weapons. To"
					dialog "strengthen your Mace with this"
					dialog "Phracon, please visit a forge in"
					dialog "one of the towns."
					wait()
					dialog "[Hanson]"
					dialog "You have chosen to be an Acolyte."
					dialog "The town you will be sent to is"
					dialog "named Prontera. The Sanctuary is"
					dialog "North-East in Prontera. Please"
					dialog "remember this."
					wait()
					dialog "[Hanson]"
					dialog "You will now"
					dialog "be teleported."
					dialog "Good luck,"
					dialog("^A62A2A"..name.."^000000,")
					dialog "and farewell."
					wait()
					checkpoint("prontera",117,72)
					moveto("prt_church",172,19)
					return
					close()
				elseif mresultb == 2 then
					dialog "[Hanson]"
					dialog "I see. It's your choice"
					dialog "There is no obligation to change to"
					dialog "the job we recommend. Please choose"
					dialog "the job you wish to become."
					wait()
					local mresultb = menu("Swordman","Mage","Merchant","Thief","Archer")
					if mresultb == 1 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Swordman."
						dialog "You will be sent to"
						dialog "the town of Izlude."
						wait()
						dialog "[Hanson]"
						dialog "The Swordman Association is located"
						dialog "to the North-West in Izlude. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Swordman."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("izlude",95,104)
						moveto("izlude_in",74,167)
						return
						close()
					elseif mresultb == 2 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Mage."
						dialog "You will be sent to"
						dialog "the town of Geffen."
						wait()
						dialog "[Hanson]"
						dialog "The Mage Academy is located in the"
						dialog "North-West of town. Please remember"
						dialog "this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Mage."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("geffen",119,37)
						moveto("geffen_in",163,98)
						return
						close()
					elseif mresultb == 3 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Merchant."
						dialog "You will be sent to"
						dialog "the town of Alberta."
						wait()
						dialog "[Hanson]"
						dialog "The Merchant Association is"
						dialog "located in the South-West of"
						dialog "town. Please remember this..."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Merchant."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("alberta",30,232)
						moveto("alberta_in",62,44)
						return
						close()
					elseif mresultb == 4 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become a Thief"
						dialog "You will be sent to"
						dialog "the town of Morroc."
						wait()
						dialog "[Hanson]"
						dialog "The Thief guild is in the"
						dialog "underground 1st floor of a pyramid"
						dialog "which is North-West of town. Please"
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "[Hanson]"
						dialog "After you receive all the"
						dialog "supplies, I will send you to"
						dialog "the associated town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become a Thief."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("morocc",150,99)
						moveto("moc_ruins",155,44)
						return
						close()
					elseif mresultb == 5 then
						dialog "[Hanson]"
						dialog "You have chosen"
						dialog "to become an Archer."
						dialog "You will be sent to"
						dialog "the town of Payon."
						wait()
						dialog "[Hanson]"
						dialog "The Archer Guild is located to the"
						dialog "North-East of Payon. Please "
						dialog "remember this."
						wait()
						dialog "[Hanson]"
						dialog "Let me give you"
						dialog "some supplies. Then"
						dialog "you will be transported"
						dialog "to the chosen town."
						wait()
						dialog "^660000List of Supplies^000000"
						dialog "5 Free Ticket for Kafra Storage"
						dialog "5 Free Ticket for Kafra Transportation"
						dialog "1 Adventurer's Suit"
						dialog "^000099100 Zeny^000000"
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						setitem(nov_3_swordman,40)
						getitem(Cargo_Free_Ticket,5)
						getitem(Warp_Free_Ticket,5)
						getitem(Adventure_Suit,1)
						getgold(100)
						--------------------------------------------------------------------------------------------------------------------------------------------------------------------------()
						wait()
						dialog "[Hanson]"
						dialog "Please check your inventory"
						dialog "to see if you have received all the"
						dialog "supplies listed. Let me briefly"
						dialog "inform you about the items you've"
						dialog "received."
						wait()
						dialog "[Hanson]"
						dialog "Free tickets for Kafra storage and"
						dialog "transportation can be used for"
						dialog "Kafra storage and teleport"
						dialog "services."
						wait()
						dialog "[Hanson]"
						dialog "'Zeny' is the currency of"
						dialog "Rune-Midgard. The 'Adventurer's"
						dialog "Suit' will come in handy once you"
						dialog "become an Archer."
						wait()
						dialog "[Hanson]"
						dialog "You will now"
						dialog "be teleported."
						dialog "Good luck,"
						dialog("^A62A2A"..name.."^000000,")
						dialog "and farewell."
						wait()
						checkpoint("payon",256,242)
						moveto("payon_in02",64,65)
						return
						close()
					end
					close()
				end
				close()
			end
			close()
		elseif mresult == 2 then
			dialog "[Hanson]"
			dialog "I understand."
			dialog "Let me transport"
			dialog "you to the world of"
			dialog "Ragnarok Online"
			dialog "immediately."
			wait()
			dialog "[Hanson]"
			dialog "For more information and knowledge,"
			dialog "I hope you will obtain your own"
			dialog "experiences in Rune-Midgard."
			wait()
			dialog "[Hanson]"
			dialog "Lastly..."
			dialog "I hope you will"
			dialog "become a nice player,"
			dialog(""..name..".")
			dialog "Fare well."
			wait()
			setitem(nov_3_swordman,40)
			if ((startmap > 0) and (startmap < 2)) then
				checkpoint("prontera",117,72)
				moveto("prt_fild08",170,371)
				return
			elseif ((startmap > 1) and (startmap < 3)) then
				checkpoint("geffen",119,37)
				moveto("gef_fild07",327,188)
				return
			elseif ((startmap > 2) and (startmap < 4)) then
				checkpoint("alberta",30,232)
				moveto("pay_fild03",388,70)
				return
			elseif ((startmap > 3) and (startmap < 5)) then
				checkpoint("morocc",150,99)
				moveto("moc_fild07",198,39)
				return
			elseif ((startmap > 4) and (startmap < 6)) then
				checkpoint("payon",256,242)
				moveto("pay_fild01",334,354)
				return
			elseif ((startmap > 5) and (startmap < 7)) then
				checkpoint("izlude",93,104)
				moveto("prt_fild08",357,212)
				return
			end
			close()
		end
		close()
	elseif (getvar(nov_3_swordman) == 40) then
		dialog "[Hanson]"
		dialog "Hmmm...?"
		dialog "Why are you"
		dialog "still here?"
		wait()
		dialog "[Hanson]"
		dialog "You didn't say anything, so"
		dialog "I assumed you were already gone."
		dialog "Since you have already finished the"
		dialog "final test and I gave you all the"
		dialog "supplies..."
		wait()
		dialog "[Hanson]"
		dialog "The only thing"
		dialog "left to do is to lead"
		dialog "you to Rune-Midgard~"
		wait()
		if ((startmap > 0) and (startmap < 2)) then
			checkpoint("prontera",117,72)
			moveto("prt_fild08",170,371)
			return
		elseif ((startmap > 1) and (startmap < 3)) then
			checkpoint("geffen",119,37)
			moveto("gef_fild07",327,188)
			return
		elseif ((startmap > 2) and (startmap < 4)) then
			checkpoint("alberta",30,232)
			moveto("pay_fild03",388,70)
			return
		elseif ((startmap > 3) and (startmap < 5)) then
			checkpoint("morocc",150,99)
			moveto("moc_fild07",198,39)
			return
		elseif ((startmap > 4) and (startmap < 6)) then
			checkpoint("payon",256,242)
			moveto("pay_fild01",334,354)
			return
		elseif ((startmap > 5) and (startmap < 7)) then
			checkpoint("izlude",93,104)
			moveto("prt_fild08",357,212)
			return
		end
		close()
	else
		dialog "[Hanson]"
		dialog "Hell, you"
		dialog("must,be,"..name..".")
		wait()
		dialog "[Hanson]"
		dialog "I am Hanson,"
		dialog "the person in"
		dialog "charge of the"
		dialog "personality test."
		wait()
		dialog "[Hanson]"
		dialog "Please speak"
		dialog "to Bruce for"
		dialog "'Class Explanation'"
		dialog "before we being your"
		dialog "test. Thank you."
		close()
	end
end

--npc("new_1-4","Bruce",spr_1_M_LIBRARYMASTER,91,22,100,4,0,0,new_1_4_Bruce_9122)
function new_1_4_Bruce_9122()
	local name = PcName
	if (getvar(VAR_JOB) == NOVICE) then
		if (getvar(nov_3_swordman) == 20) then
			dialog "[Bruce]"
			dialog "Let me explain the"
			dialog "First Job Classes"
			dialog "to you once again."
			dialog "Which job did you"
			dialog "have in mind?"
			wait()
			while(1) do
				local mresult = menu("Swordman","Mage","Archer","Merchant","Thief","Acolyte","End conversation.")
				if mresult == 1 then
					dialog "[Bruce]"
					dialog "As the name implies, the"
					dialog "Swordman is an expert in wielding"
					dialog "Swords. They can also use Spear"
					dialog "weapons, but typically you don't"
					dialog "see Spear wielding Swordmen"
					dialog "very often."
					wait()
					dialog "[Bruce]"
					dialog "Swordmen possess strong physical"
					dialog "strength, allowing them to equip"
					dialog "heavy armour and weapons. Most"
					dialog "weapon classes, except for bows and"
					dialog "rods, can be equipped by the"
					dialog "Swordman class."
					wait()
					dialog "[Bruce]"
					dialog "The only weakness of the Swordman"
					dialog "class is that they cannot use magic"
					dialog "spells. However, this can be"
					dialog "compensated by using weapons with"
					dialog "an elemental attribute."
					wait()
					dialog "[Bruce]"
					dialog "One of the greatest benefits of"
					dialog "being a Swordman is having an"
					dialog "enormous amount of HP, meaning they"
					dialog "can more easily withstand damage"
					dialog "from their enemies."
					wait()
					dialog "[Bruce]"
					dialog "After learning some strong attack"
					dialog "skills, the Swordman is almost"
					dialog "unbeatable in a melee fight."
					wait()
					dialog "[Bruce]"
					dialog "In Ragnarok Online, Swordman"
					dialog "generally takes the position of"
					dialog "tanker, protecting characters of"
					dialog "other classes from being attacked"
					dialog "or hurt."
					wait()
					dialog "[Bruce]"
					dialog "A Swordman is the ideal character"
					dialog "to take the position of party"
					dialog "leader. When advancing to the"
					dialog "Second Job Class, Swordmen can"
					dialog "change their jobs to ^A62A2AKnights^000000 or"
					dialog "^A62A2ACrusaders^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 2 then
					dialog "[Bruce]"
					dialog "The Mage class specialises in using"
					dialog "the forces of Fire, Water, Earth"
					dialog "and Lightning to attack their"
					dialog "enemies"
					wait()
					dialog "[Bruce]"
					dialog "However, due to their weak physical"
					dialog "strength, they are only allowed to"
					dialog "equip Rods and Knives as weapons,"
					dialog "and wear light armour for defense."
					wait()
					dialog "[Bruce]"
					dialog "Despite their physical weakness,"
					dialog "they are able to do massive damage"
					dialog "with their powerful spells. This"
					dialog "fact alone attracts many people to"
					dialog "join this class."
					wait()
					dialog "[Bruce]"
					dialog "In Ragnarok Online, the Mage takes"
					dialog "a heavily offensive role in parties"
					dialog "and is depended upon to deal great"
					dialog "damage to enemies"
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, Mages can change their jobs"
					dialog "to ^A62A2AWizards^000000 or ^A62A2ASages^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 3 then
					dialog "[Bruce]"
					dialog "The Archer class are experts in"
					dialog "using Bow weapons, and are useful"
					dialog "in parties for their long range"
					dialog "attacks."
					wait()
					dialog "[Bruce]"
					dialog "Despite being physically weaker,"
					dialog "Archers possess high accuracy with"
					dialog "powerful long range bows. This"
					dialog "allows them to attack and kill"
					dialog "monsters from a safe distance."
					wait()
					dialog "[Bruce]"
					dialog "In Ragnarok Online, Archers have"
					dialog "relatively little HP, but their"
					dialog "long range attacks allow them to"
					dialog "easily dispatch enemies before the"
					dialog "enemy gets close enough to hurt"
					dialog "them."
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, every Archer may advance to"
					dialog "the ^A62A2AHunter^000000 class. Alternatively,"
					dialog "male Archers may advance to become"
					dialog "^A62A2ABards^000000, and female Archers may"
					dialog "become ^A62A2ADancers^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 4 then
					dialog "[Bruce]"
					dialog "The Merchant class specialises in"
					dialog "commerce. Due to the strong"
					dialog "influence of the Merchant Guild,"
					dialog "the Merchant class is attractive to"
					dialog "those who wish to focus on earning"
					dialog "Zeny."
					wait()
					dialog "[Bruce]"
					dialog "In Ragnarok Online, the Merchant"
					dialog "class possess various economic"
					dialog "abilities. Merchants can learn to"
					dialog "sell items to NPCs for higher"
					dialog "prices, as well as receive"
					dialog "discounts from NPCs."
					wait()
					dialog "[Bruce]"
					dialog "In addition, Merchants may rent"
					dialog "a Cart that greatly expands their"
					dialog "carrying capacity and allows them"
					dialog "to open shops with their own items"
					dialog "and prices."
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, Merchants can change their"
					dialog "jobs to ^A62A2ABlacksmiths^000000 or ^A62A2AAlchemists^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 5 then
					dialog "[Bruce]"
					dialog "Thieves are experts at using Dagger"
					dialog "class weapons. They strike quickly"
					dialog "and easily evade attacks from their"
					dialog "enemies."
					wait()
					dialog "[Bruce]"
					dialog "Thieves can learn skills that allow"
					dialog "them to hide from their enemies, or"
					dialog "steal items from monsters. They are"
					dialog "also feared for their use of"
					dialog "poison, which slowly weakens"
					dialog "their enemies."
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, Thieves can change their"
					dialog "jobs to ^A62A2AAssassins^000000 or ^A62A2ARogues^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 6 then
					dialog "[Bruce]"
					dialog "In Ragnarok Online, Acolytes act as"
					dialog "messengers of God in Rune-Midgard."
					dialog "They possess skills that support"
					dialog "their allies, as well as the life"
					dialog "saving Heal ability."
					wait()
					dialog "[Bruce]"
					dialog "The Acolyte's support abilities"
					dialog "make them a welcome addition to any"
					dialog "party. In difficult situations, the"
					dialog "Acolyte's skills will ensure the"
					dialog "survival of the party, allowing"
					dialog "other members to focus on offense."
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, Acolytes can change their"
					dialog "jobs to ^A62A2APriests^000000 or ^A62A2AMonks^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 7 then
					dialog "[Bruce]"
					dialog "For more information,"
					dialog "please visit the official"
					dialog "Ragnarok Online website:"
					dialog ""
					dialog "^0000FFiro.ragnarokonline.com^000000"
					wait()
					dialog "[Bruce]"
					dialog "Hanson is waiting"
					dialog "for you now. Good luck"
					dialog "out there, young Novice."
					close()
					break
				end
			end
			close()
		elseif (getvar(nov_3_swordman) == 40) then
			dialog "[Bruce]"
			dialog "I'm sorry, but I can no longer help you."
			dialog "'Hanson' is waiting for you, please go see him."
			close()
		else
			dialog "[Bruce]"
			dialog "You've gone"
			dialog "through quite"
			dialog "a bit of trouble"
			dialog "to finish all the"
			dialog "training courses."
			wait()
			dialog "[Bruce]"
			dialog "Hello there,"
			dialog(""..name..",")
			dialog "please to meet you."
			dialog "I am Bruce of the"
			dialog "Rune-Midgarts Kingdom."
			wait()
			dialog "[Bruce]"
			dialog "My duty is to assist you by"
			dialog "teaching information about each"
			dialog "First Job Class, so that you can"
			dialog "decide which job you want to be."
			wait()
			dialog "[Bruce]"
			dialog "The First Job Classes are"
			dialog "^0000FFSwordman, Mage, Archer, Merchant,^000000"
			dialog "^0000FFThief and Acolyte.^000000"
			wait()
			dialog "[Bruce]"
			dialog "So..."
			dialog "Which job did"
			dialog "you have in mind?"
			wait()
			while(1) do
				local mresult = menu("Swordman","Mage","Archer","Merchant","Thief","Acolyte","End conversation.")
				if mresult == 1 then
					dialog "[Bruce]"
					dialog "As the name implies, the"
					dialog "Swordman is an expert in wielding"
					dialog "Swords. They can also use Spear"
					dialog "weapons, but typically you don't"
					dialog "see Spear wielding Swordmen"
					dialog "very often."
					wait()
					dialog "[Bruce]"
					dialog "Swordmen possess strong physical"
					dialog "strength, allowing them to equip"
					dialog "heavy armour and weapons. Most"
					dialog "weapon classes, except for bows and"
					dialog "rods, can be equipped by the"
					dialog "Swordman class."
					wait()
					dialog "[Bruce]"
					dialog "The only weakness of the Swordman"
					dialog "class is that they cannot use magic"
					dialog "spells. However, this can be"
					dialog "compensated by using weapons with"
					dialog "an elemental attribute."
					wait()
					dialog "[Bruce]"
					dialog "One of the greatest benefits of"
					dialog "being a Swordman is having an"
					dialog "enormous amount of HP, meaning they"
					dialog "can more easily withstand damage"
					dialog "from their enemies."
					wait()
					dialog "[Bruce]"
					dialog "After learning some strong attack"
					dialog "skills, the Swordman is almost"
					dialog "unbeatable in a melee fight."
					wait()
					dialog "[Bruce]"
					dialog "In Ragnarok Online, Swordman"
					dialog "generally takes the position of"
					dialog "tanker, protecting characters of"
					dialog "other classes from being attacked"
					dialog "or hurt."
					wait()
					dialog "[Bruce]"
					dialog "A Swordman is the ideal character"
					dialog "to take the position of party"
					dialog "leader. When advancing to the"
					dialog "Second Job Class, Swordmen can"
					dialog "change their jobs to ^A62A2AKnights^000000 or"
					dialog "^A62A2ACrusaders^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 2 then
					dialog "[Bruce]"
					dialog "The Mage class specialises in using"
					dialog "the forces of Fire, Water, Earth"
					dialog "and Lightning to attack their"
					dialog "enemies"
					wait()
					dialog "[Bruce]"
					dialog "However, due to their weak physical"
					dialog "strength, they are only allowed to"
					dialog "equip Rods and Knives as weapons,"
					dialog "and wear light armour for defense."
					wait()
					dialog "[Bruce]"
					dialog "Despite their physical weakness,"
					dialog "they are able to do massive damage"
					dialog "with their powerful spells. This"
					dialog "fact alone attracts many people to"
					dialog "join this class."
					wait()
					dialog "[Bruce]"
					dialog "In Ragnarok Online, the Mage takes"
					dialog "a heavily offensive role in parties"
					dialog "and is depended upon to deal great"
					dialog "damage to enemies"
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, Mages can change their jobs"
					dialog "to ^A62A2AWizards^000000 or ^A62A2ASages^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 3 then
					dialog "[Bruce]"
					dialog "The Archer class are experts in"
					dialog "using Bow weapons, and are useful"
					dialog "in parties for their long range"
					dialog "attacks."
					wait()
					dialog "[Bruce]"
					dialog "Despite being physically weaker,"
					dialog "Archers possess high accuracy with"
					dialog "powerful long range bows. This"
					dialog "allows them to attack and kill"
					dialog "monsters from a safe distance."
					wait()
					dialog "[Bruce]"
					dialog "In Ragnarok Online, Archers have"
					dialog "relatively little HP, but their"
					dialog "long range attacks allow them to"
					dialog "easily dispatch enemies before the"
					dialog "enemy gets close enough to hurt"
					dialog "them."
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, every Archer may advance to"
					dialog "the ^A62A2AHunter^000000 class. Alternatively,"
					dialog "male Archers may advance to become"
					dialog "^A62A2ABards^000000, and female Archers may"
					dialog "become ^A62A2ADancers^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 4 then
					dialog "[Bruce]"
					dialog "The Merchant class specialises in"
					dialog "commerce. Due to the strong"
					dialog "influence of the Merchant Guild,"
					dialog "the Merchant class is attractive to"
					dialog "those who wish to focus on earning"
					dialog "Zeny."
					wait()
					dialog "[Bruce]"
					dialog "In Ragnarok Online, the Merchant"
					dialog "class possess various economic"
					dialog "abilities. Merchants can learn to"
					dialog "sell items to NPCs for higher"
					dialog "prices, as well as receive"
					dialog "discounts from NPCs."
					wait()
					dialog "[Bruce]"
					dialog "In addition, Merchants may rent"
					dialog "a Cart that greatly expands their"
					dialog "carrying capacity and allows them"
					dialog "to open shops with their own items"
					dialog "and prices."
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, Merchants can change their"
					dialog "jobs to ^A62A2ABlacksmiths^000000 or ^A62A2AAlchemists^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 5 then
					dialog "[Bruce]"
					dialog "Thieves are experts at using Dagger"
					dialog "class weapons. They strike quickly"
					dialog "and easily evade attacks from their"
					dialog "enemies."
					wait()
					dialog "[Bruce]"
					dialog "Thieves can learn skills that allow"
					dialog "them to hide from their enemies, or"
					dialog "steal items from monsters. They are"
					dialog "also feared for their use of"
					dialog "poison, which slowly weakens"
					dialog "their enemies."
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, Thieves can change their"
					dialog "jobs to ^A62A2AAssassins^000000 or ^A62A2ARogues^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 6 then
					dialog "[Bruce]"
					dialog "In Ragnarok Online, Acolytes act as"
					dialog "messengers of God in Rune-Midgard."
					dialog "They possess skills that support"
					dialog "their allies, as well as the life"
					dialog "saving Heal ability."
					wait()
					dialog "[Bruce]"
					dialog "The Acolyte's support abilities"
					dialog "make them a welcome addition to any"
					dialog "party. In difficult situations, the"
					dialog "Acolyte's skills will ensure the"
					dialog "survival of the party, allowing"
					dialog "other members to focus on offense."
					wait()
					dialog "[Bruce]"
					dialog "When advancing to the Second Job"
					dialog "Class, Acolytes can change their"
					dialog "jobs to ^A62A2APriests^000000 or ^A62A2AMonks^000000."
					setitem(nov_3_swordman,20)
					wait()
				elseif mresult == 7 then
					dialog "[Bruce]"
					dialog "For more information,"
					dialog "please visit the official"
					dialog "Ragnarok Online website:"
					dialog ""
					dialog "^0000FFiro.ragnarokonline.com^000000"
					wait()
					dialog "[Bruce]"
					dialog "Hanson is waiting"
					dialog "for you now. Good luck"
					dialog "out there, young Novice."
					close()
					break
				end
			end
			close()
		end
	end
end
