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
--| 10/01/2007                                      |--
--|   - First Version for Helios [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("nif_in","Witch",spr_4_F_NFDEADMGCIAN,188,168,3,5,5,"nif_in_Witch_188168")
function nif_in_Witch_188168()
	dialog "[Kirkena]"
	dialog "Huh? ...You're alive, aren't you?"
	dialog "I'm not sure how more of you are"
	dialog "able to get here and I don't"
	dialog "know your reasons for coming,"
	dialog "but this place is dangerous for"
	dialog "the living."
	wait()
	dialog "[Kirkena]"
	dialog "I am sending you back"
	dialog "outside of this town."
	dialog "If you can help it, you"
	dialog "better not come back to"
	dialog "this place."
	close()
	moveto("umbala",138,208)
end

npc("niflheim","Alreg",spr_4_M_NFDEADMAN,224,243,3,5,5,"niflheim_Alreg_224243")
function niflheim_Alreg_224243()
	if getvar(nif_esc) == 0 then
		local piano_root = math.random(1,2)
		dialog "[Alreg]"
		dialog "Me like meat, muhehheh~"
		dialog "You! Look tempting."
		wait()
		dialog "[Alreg]"
		dialog "Me want to taste you."
		wait()
		dialog "^FF3355*Crunch* Crunch*^000000"
		hpdrain(60)
		wait()
		local name = PcName()
		dialog("[", name , "]")
		dialog "NooOOoOOoOoO~!"
		wait()
		if piano_root == 1 then
			dialog "[Alreg]"
			dialog "It long time since I had meat"
			dialog "so... so good. You taste"
			dialog "good. Alreg give you this"
			dialog "for payback. Present!"
			dialog "*Burrrp*"
			setitem("nif_esc",1)
			getitem("Piano_Keyboard",1)
			close()
			return
		end
		if piano_root == 2 then
			dialog "[Alreg]"
			dialog "It long time since I had meat"
			dialog "so... so good. You taste"
			dialog "good. Alreg give you this"
			dialog "for payback. Present!"
			dialog "*Burrrp*"
			setitem("nif_esc",2)
			getitem("Piano_Keyboard",1)
			close()
			return
		end
	end
	dialog "[Alreg]"
	dialog "Me like meat, muheh."
	dialog "You! Look tempting."
	wait()
	dialog "[Alreg]"
	dialog "Me want to taste you."
	wait()
	dialog "^FF3355*Crunch* Crunch*^000000"
	hpdrain(30)
	wait()
	local name = PcName()
	dialog("[", name , "]")
	dialog "Ow~! What are you"
	dialog "trying to do, kill me?!"
	wait()
	dialog "[Alreg]"
	dialog "Hm? Oh, no no no."
	dialog "Me am trying to eat you."
	close()
end

npc("nif_in","Crayu",spr_4_M_NFDEADMAN2,105,81,3,5,5,"nif_in_Crayu_10581")
function nif_in_Crayu_10581()
	if getvar(nif_esc) == 1 then
		local question = math.random(1,4)
		dialog "[Crayu]"
		dialog "Living one..."
		dialog "Listen to this song..."
		dialog "It's been sung by many for a"
		dialog "long time, but nobody knows"
		dialog "when it was made or who wrote it."
		wait()
		dialog "[Crayu]"
		dialog "^FF00001. Mountain sunset to the west"
		dialog "^FF00002. Where the purple dusk falls "
		dialog "^FF00003. Surrounded by beautiful melody"
		dialog "^FF00004. You become the key that ignores its master^000000"
		wait()
		if question == 1 then
			local oneline = "Mountain sunset to the west"
			dialog "[Crayu]"
			dialog "Okay, wait! Here's a test for you!"
			dialog "Write down the first line of the song."
			wait()
			dlgwritestr()
			if inputstr == oneline then
				dialog "[Crayu]"
				dialog "Excellent...!"
				dialog "So you've been listening~!"
				dialog "That makes you one of my"
				dialog "favorite guests. Here's a"
				dialog "little reward for you."
				wait()
				setitem("nif_esc",3)
				getitem("Piano_Keyboard",1)
				dialog "[Crayu]"
				dialog "Lastly, I hope you will show your"
				dialog "respect to other Bards, just as"
				dialog "you have done for me."
				close()
				return
			else
				dialog "[Crayu]"
				dialog "*Sigh*... If you had only"
				dialog "listened to me, it would"
				dialog "have been easy to answer."
				dialog "Try to remember the line"
				dialog "and try again!"
				close()
				return
			end
		end
		if question == 2 then
			local oneline = "Where the purple dusk falls"
			dialog "[Crayu]"
			dialog "Okay, wait! Here's a test for you!"
			dialog "Write down the second line of the song."
			wait()
			dlgwritestr()
			if inputstr == oneline then
				dialog "[Crayu]"
				dialog "Excellent...!"
				dialog "So you've been listening~!"
				dialog "That makes you one of my"
				dialog "favorite guests. Here's a"
				dialog "little reward for you."
				wait()
				setitem("nif_esc",3)
				getitem("Piano_Keyboard",1)
				dialog "[Crayu]"
				dialog "Lastly, I hope you will show your"
				dialog "respect to other Bards, just as"
				dialog "you have done for me."
				close()
				return
			else
				dialog "[Crayu]"
				dialog "*Sigh*... If you had only"
				dialog "listened to me, it would"
				dialog "have been easy to answer."
				dialog "Try to remember the line"
				dialog "and try again!"
				close()
				return
			end
		end
		if question == 3 then
			local oneline = "Surrounded by beautiful melody"
			dialog "[Crayu]"
			dialog "Okay, wait! Here's a test for you!"
			dialog "Write down the third line of the song."
			wait()
			dlgwritestr()
			if inputstr == oneline then
				dialog "[Crayu]"
				dialog "Excellent...!"
				dialog "So you've been listening~!"
				dialog "That makes you one of my"
				dialog "favorite guests. Here's a"
				dialog "little reward for you."
				wait()
				setitem("nif_esc",3)
				getitem("Piano_Keyboard",1)
				dialog "[Crayu]"
				dialog "Lastly, I hope you will show your"
				dialog "respect to other Bards, just as"
				dialog "you have done for me."
				close()
				return
			else
				dialog "[Crayu]"
				dialog "*Sigh*... If you had only"
				dialog "listened to me, it would"
				dialog "have been easy to answer."
				dialog "Try to remember the line"
				dialog "and try again!"
				close()
				return
			end
		end
		if question == 4 then
			local oneline = "You become the key that ignores its master"
			dialog "[Crayu]"
			dialog "Okay, wait! Here's a test for you!"
			dialog "Write down the fourth line of the song."
			wait()
			dlgwritestr()
			if inputstr == oneline then
				dialog "[Crayu]"
				dialog "Excellent...!"
				dialog "So you've been listening~!"
				dialog "That makes you one of my"
				dialog "favorite guests. Here's a"
				dialog "little reward for you."
				wait()
				setitem("nif_esc",3)
				getitem("Piano_Keyboard",1)
				dialog "[Crayu]"
				dialog "Lastly, I hope you will show your"
				dialog "respect to other Bards, just as"
				dialog "you have done for me."
				close()
				return
			else
				dialog "[Crayu]"
				dialog "*Sigh*... If you had only"
				dialog "listened to me, it would"
				dialog "have been easy to answer."
				dialog "Try to remember the line"
				dialog "and try again!"
				close()
				return
			end
		end
	end
	if getvar(nif_esc) == 4 then
		local question = math.random(1,4)
		dialog "[Crayu]"
		dialog "Living one..."
		dialog "Listen to this song..."
		dialog "It's been sung by many for a"
		dialog "long time, but nobody knows"
		dialog "when it was made or who wrote it."
		wait()
		dialog "[Crayu]"
		dialog "^FF00001. Mountain sunset to the west"
		dialog "^FF00002. Where the purple dusk falls "
		dialog "^FF00003. Surrounded by beautiful melody"
		dialog "^FF00004. You become the key that ignores its master^000000"
		wait()
		if question == 1 then
			local oneline = "Mountain sunset to the west"
			dialog "[Crayu]"
			dialog "Okay, wait! Here's a test for you!"
			dialog "Write down the first line of the song."
			wait()
			dlgwritestr()
			if inputstr == oneline then
				dialog "[Crayu]"
				dialog "Excellent...!"
				dialog "So you've been listening~!"
				dialog "That makes you one of my"
				dialog "favorite guests. Here's a"
				dialog "little reward for you."
				wait()
				setitem("nif_esc",6)
				getitem("Piano_Keyboard",1)
				dialog "[Crayu]"
				dialog "Lastly, I hope you will show your"
				dialog "respect to other Bards, just as"
				dialog "you have done for me."
				close()
				return
			else
				dialog "[Crayu]"
				dialog "*Sigh*... If you had only"
				dialog "listened to me, it would"
				dialog "have been easy to answer."
				dialog "Try to remember the line"
				dialog "and try again!"
				close()
				return
			end
		end
		if question == 2 then
			local oneline = "Where the purple dusk falls"
			dialog "[Crayu]"
			dialog "Okay, wait! Here's a test for you!"
			dialog "Write down the second line of the song."
			wait()
			dlgwritestr()
			if inputstr == oneline then
				dialog "[Crayu]"
				dialog "Excellent...!"
				dialog "So you've been listening~!"
				dialog "That makes you one of my"
				dialog "favorite guests. Here's a"
				dialog "little reward for you."
				wait()
				setitem("nif_esc",6)
				getitem("Piano_Keyboard",1)
				dialog "[Crayu]"
				dialog "Lastly, I hope you will show your"
				dialog "respect to other Bards, just as"
				dialog "you have done for me."
				close()
				return
			else
				dialog "[Crayu]"
				dialog "*Sigh*... If you had only"
				dialog "listened to me, it would"
				dialog "have been easy to answer."
				dialog "Try to remember the line"
				dialog "and try again!"
				close()
				return
			end
		end
		if question == 3 then
			local oneline = "Surrounded by beautiful melody"
			dialog "[Crayu]"
			dialog "Okay, wait! Here's a test for you!"
			dialog "Write down the third line of the song."
			wait()
			dlgwritestr()
			if inputstr == oneline then
				dialog "[Crayu]"
				dialog "Excellent...!"
				dialog "So you've been listening~!"
				dialog "That makes you one of my"
				dialog "favorite guests. Here's a"
				dialog "little reward for you."
				wait()
				setitem("nif_esc",6)
				getitem("Piano_Keyboard",1)
				dialog "[Crayu]"
				dialog "Lastly, I hope you will show your"
				dialog "respect to other Bards, just as"
				dialog "you have done for me."
				close()
				return
			else
				dialog "[Crayu]"
				dialog "*Sigh*... If you had only"
				dialog "listened to me, it would"
				dialog "have been easy to answer."
				dialog "Try to remember the line"
				dialog "and try again!"
				close()
				return
			end
		end
		if question == 4 then
			local oneline = "You become the key that ignores its master."
			dialog "[Crayu]"
			dialog "Ok, wait! Here's a test for you!"
			dialog "Write down the fourth line of the song."
			wait()
			dlgwritestr()
			if inputstr == oneline then
				dialog "[Crayu]"
				dialog "Excellent...!"
				dialog "So you've been listening~!"
				dialog "That makes you one of my"
				dialog "favorite guests. Here's a"
				dialog "little reward for you."
				wait()
				setitem("nif_esc",6)
				getitem("Piano_Keyboard",1)
				dialog "[Crayu]"
				dialog "Lastly, I hope you will show your"
				dialog "respect to other Bards, just as"
				dialog "you have done for me."
				close()
				return
			else
				dialog "[Crayu]"
				dialog "*Sigh*... If you had only"
				dialog "listened to me, it would"
				dialog "have been easy to answer."
				dialog "Try to remember the line"
				dialog "and try again!"
				close()
				return
			end
		end
	end
	dialog "[Crayu]"
	dialog "Living one..."
	dialog "Listen to this song..."
	dialog "It's been sung by many for a"
	dialog "long time, but nobody knows"
	dialog "when it was made or who wrote it."
	wait()
	dialog "[Crayu]"
	dialog "^FF00001. Mountain sunset to the west"
	dialog "^FF00002. Where the purple dusk falls "
	dialog "^FF00003. Surrounded by beautiful melody"
	dialog "^FF00004. You become the key that ignores its master^000000"
	wait()
	dialog "[Crayu]"
	dialog "I wonder what the lyrics mean..."
	dialog "They seem quite profound..."
	dialog "I have the feeling that this song"
	dialog "carries some secret."
	close()
end

npc("nif_in","Kuzkahina",spr_4_M_NFDEADMAN2,31,20,3,5,5,"nif_in_Kuzkahina_3120")
function nif_in_Kuzkahina_3120()
	if getvar(nif_esc) == 3 then
		dialog "[Kuzkahina]"
		dialog "I don't understand"
		dialog "why I can't make any"
		dialog "money with this store..."
		dialog "Even when I was alive"
		dialog "I could never make any"
		dialog "money with my businesses..."
		wait()
		dialog "[Kuzkahina]"
		dialog "Hey you! Make yourself useful"
		dialog "and throw this away when you leave."
		setitem("nif_esc",5)
		getitem("Piano_Keyboard",1)
		wait()
		dialog "[Kuzkahina]"
		dialog "Gosh, what's with this store?"
		dialog "How did I end up hiring such useless employees...?"
		dialog "*mumble mumble*"
		dialog "*mumble mumble*"
		close()
		return
	end
	if getvar(nif_esc) == 2 then
		dialog "[Kuzkahina]"
		dialog "I don't understand"
		dialog "why I can't make any"
		dialog "money with this store..."
		dialog "Even when I was alive"
		dialog "I could never make any"
		dialog "money with my businesses..."
		wait()
		dialog "[Kuzkahina]"
		dialog "Hey you! Make yourself useful"
		dialog "and throw this away when you leave."
		setitem("nif_esc",4)
		getitem("Piano_Keyboard",1)
		wait()
		dialog "[Kuzkahina]"
		dialog "Gosh, what's with this store?"
		dialog "How did I end up hiring such useless employees..."
		dialog "*mumble mumble*"
		dialog "*mumble mumble*"
		close()
		return
	end
	dialog "[Kuzkahina]"
	dialog "I don't understand"
	dialog "why I can't make any"
	dialog "money with this store..."
	dialog "Even when I was alive"
	dialog "I could never make any"
	dialog "money with my businesses..."
	close()
end

npc("niflheim","#Graveyard1",spr_HIDDEN_NPC,208,103,1,1,1,"niflheim_Graveyard1_208103")
function niflheim_Graveyard1_208103()
	if getvar(nif_esc) == 5 then
		dialog "^3355FFYou found something"
		dialog "half-buried near a grave."
		dialog "It looks very well-shaped.^000000"
		wait()
		dialog "^3355FFWould you like to pick it up?^000000"
		local mresulta = menu("Yes","No")
		if mresulta == 1 then
			setitem("nif_esc",7)
			getitem("Piano_Keyboard",1)
			return
		elseif mresulta == 2 then
		end
	end
	if getvar(nif_esc) == 7 then
		dialog "^3355FFYou found something else"
		dialog "at the spot where you picked"
		dialog "up a piano key."
		dialog "It also looks"
		dialog "very well-shaped.^000000"
		wait()
		dialog "^3355FFWould you like to pick it up?^000000"
		local mresulta = menu("Yes","No")
		if mresulta == 1 then
			setitem("nif_esc",9)
			getitem("Piano_Keyboard",1)
			return
		elseif mresulta == 2 then
		end
	end
	if getvar(nif_esc) == 8 then
		dialog "^3355FFYou found something"
		dialog "half-buried near a grave."
		dialog "It looks very well-shaped.^000000"
		wait()
		dialog "^3355FFWould you like to pick it up?^000000"
		local mresulta = menu("Yes","No")
		if mresulta == 1 then
			setitem("nif_esc",10)
			getitem("Piano_Keyboard",1)
			return
		elseif mresulta == 2 then
		end
	end
	if getvar(nif_esc) == 10 then
		dialog "^3355FFYou found something else"
		dialog "at the spot where you picked"
		dialog "up a piano key."
		dialog "It also looks"
		dialog "very well-shaped.^000000"
		wait()
		dialog "^3355FFWould you like to pick it up?^000000"
		local mresulta = menu("Yes","No")
		if mresulta == 1 then
			setitem("nif_esc",11)
			getitem("Piano_Keyboard",1)
			return
		elseif mresulta == 2 then
		end
	end
end

npc("niflheim","#Graveyard2",spr_HIDDEN_NPC,169,71,1,1,1,"niflheim_Graveyard2_16971")
function niflheim_Graveyard2_16971()
	if getvar(nif_esc) == 9 then
		dialog "^3355FFYou found something"
		dialog "half-buried near a grave."
		dialog "It looks very well-shaped.^000000"
		wait()
		dialog "^3355FFWould you like to pick it up?^000000"
		local mresulta = menu("Yes","No")
		if mresulta == 1 then
			setitem("nif_esc",11)
			getitem("Piano_Keyboard",1)
			return
		elseif mresulta == 2 then
		end
	end
	if getvar(nif_esc) == 6 then
		dialog "^3355FFYou found something"
		dialog "half-buried near a grave."
		dialog "It looks very well-shaped.^000000"
		wait()
		dialog "^3355FFWould you like to pick it up?^000000"
		local mresulta = menu("Yes","No")
		if mresulta == 1 then
			setitem("nif_esc",8)
			getitem("Piano_Keyboard",1)
			return
		elseif mresulta == 2 then
		end
	end
end

npc("nif_in","#Piano",spr_HIDDEN_NPC,115,181,0,1,1,"nif_in_Piano_115181")
function nif_in_Piano_115181()
	if getvar(nif_esc) == 0 then
		dialog "^3355FFYou see a big, heavy piano."
		dialog "You get the feeling that"
		dialog "its music would sound magnificient.^000000"
		wait()
		dialog "^3355FFAs you examine the piano,"
		dialog "you find that 7 keys"
		dialog "are missing in the"
		dialog "middle of the keyboard."
		dialog "If you had all the keys,"
		dialog "you could play music...^000000"
		close()
		return
	end
	if getvar(nif_esc) == 11 then
		setitem("nif_esc",12)
		dropitem("Piano_Keyboard",6)
		dialog "^3355FFYou took the keys you've found"
		dialog "and inserted them into"
		dialog "each empty space.^000000"
		wait()
		dialog "^3355FFBut then you realize"
		dialog "that you're missing the last"
		dialog "key for the space on the far"
		dialog "left of the keyboard...^000000"
		close()
	end
end

npc("nif_in","#Piano3",spr_HIDDEN_NPC,114,181,0,1,1,"nif_in_Piano3_114181")
function nif_in_Piano3_114181()
	if getvar(nif_esc) == 12 then
		dialog "^3355FFAs you bend towards"
		dialog "the final empty key space"
		dialog "to take a better look at it...^000000"
		wait()
		sound("complete.wav",1,0,0)
		wait()
		setitem("nif_esc",13)
		dialog "^3355FFYou begin to feel dizzy and"
		dialog "your body feels as if it were"
		dialog "floating in air. Then, your"
		dialog "vision starts to blur...^000000"
		close()
		moveto("nif_in",179,163)
	end
	if getvar(nif_esc) == 13 then
		dialog "^3355FFAs you bend towards"
		dialog "the final empty key space...^000000"
		wait()
		sound("complete.wav",1,0,0)
		wait()
		dialog "^3355FFYou begin to feel dizzy and"
		dialog "your body feels as if it were"
		dialog "floating in air. Then, your"
		dialog "vision starts to blur...^000000"
		close()
		moveto("nif_in",179,163)
	end
end

npc("niflheim","Keedz",spr_4_M_NFDEADSWDMAN,52,147,3,5,5,"niflheim_Keedz_52147")
function niflheim_Keedz_52147()
	dialog "[Keedz]"
	dialog "I don't allow any living person"
	dialog "to come in this place!"
	close()
end
