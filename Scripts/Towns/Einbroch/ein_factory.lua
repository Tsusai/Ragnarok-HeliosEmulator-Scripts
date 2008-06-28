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

hiddenwarp("einbroch","einbroch_Einbroch_Smog_Alert_11",1,1,0,0)
OnInit:()
	disablenpc "Einbroch Smog Alert"
end
OnCommand: "on"
	broadcastinmap "This is a state of emercency! Harmful smog is reaching high levels of saturation. Residents of Einbroch must find shelter immediately.""
	enablenpc "Einbroch Smog Alert"
	cmdothernpc("Centzu","off")
	cmdothernpc("Khowropher","off")
	cmdothernpc("Khetine","off")
	cmdothernpc("Sleik","off")
	cmdothernpc("Tollaf","off")
	cmdothernpc("Keneshiotz","off")
	cmdothernpc("Khashurantze","off")
	cmdothernpc("Kesunboss","off")
	cmdothernpc("Train Station Staff#ein-1","off")
	cmdothernpc("Train Station Staff#ein-2","off")
	cmdothernpc("Leslie#ein_1","off")
	cmdothernpc("Tan#ein","off")
	cmdothernpc("Little Toby#ein-1","off")
	cmdothernpc("Airship Engineer#ein-1","off")
	cmdothernpc("Kafra Employee#ein1","off")
	cmdothernpc("Kafra Employee#ein2","off")
	cmdothernpc("Kafra Employee#ein3","off")
	cmdothernpc("Morei","off")
	cmdothernpc("Mark","off")
	cmdothernpc("Khemko","off")
	cmdothernpc("Oberu","off")
	cmdothernpc("Uwe Kleine","off")
	cmdothernpc("Flu Mask Dealer#ein","off")
	cmdothernpc("Paddler#ein","off")
	cmdothernpc("Laboratory Soldier#ein-1","off")
	cmdothernpc("Laboratory Soldier#ein-2","off")
	InitTimer()
	callmonster("einbroch","VENOMOUS","Toxic Fog",82,332)
	callmonster("einbroch","VENOMOUS","Toxic Fog",99,328)
	callmonster("einbroch","VENOMOUS","Toxic Fog",122,317)
	callmonster("einbroch","VENOMOUS","Toxic Fog",138,319)
	callmonster("einbroch","NOXIOUS","Red Fog",147,312)
	callmonster("einbroch","VENOMOUS","Toxic Fog",159,316)
	callmonster("einbroch","VENOMOUS","Toxic Fog",173,315)
	callmonster("einbroch","VENOMOUS","Toxic Fog",161,311)
	callmonster("einbroch","VENOMOUS","Toxic Fog",147,296)
	callmonster("einbroch","NOXIOUS","Red Fog",168,282)
	callmonster("einbroch","VENOMOUS","Toxic Fog",175,271)
	callmonster("einbroch","VENOMOUS","Toxic Fog",146,274)
	callmonster("einbroch","VENOMOUS","Toxic Fog",160,272)
	callmonster("einbroch","VENOMOUS","Toxic Fog",155,256)
	callmonster("einbroch","NOXIOUS","Red Fog",179,262)
	callmonster("einbroch","VENOMOUS","Toxic Fog",192,248)
	callmonster("einbroch","VENOMOUS","Toxic Fog",212,255)
	callmonster("einbroch","VENOMOUS","Toxic Fog",230,250)
	callmonster("einbroch","VENOMOUS","Toxic Fog",246,251)
	callmonster("einbroch","NOXIOUS","Red Fog",262,254)
	callmonster("einbroch","VENOMOUS","Toxic Fog",253,240)
	callmonster("einbroch","VENOMOUS","Toxic Fog",202,245)
	callmonster("einbroch","VENOMOUS","Toxic Fog",181,251)
	callmonster("einbroch","VENOMOUS","Toxic Fog",172,238)
	callmonster("einbroch","NOXIOUS","Red Fog",146,242)
	callmonster("einbroch","VENOMOUS","Toxic Fog",186,226)
	callmonster("einbroch","VENOMOUS","Toxic Fog",173,239)
	callmonster("einbroch","VENOMOUS","Toxic Fog",124,248)
	callmonster("einbroch","VENOMOUS","Toxic Fog",120,234)
	callmonster("einbroch","NOXIOUS","Red Fog",98,234)
	callmonster("einbroch","VENOMOUS","Toxic Fog",101,219)
	callmonster("einbroch","VENOMOUS","Toxic Fog",89,208)
	callmonster("einbroch","VENOMOUS","Toxic Fog",96,191)
	callmonster("einbroch","VENOMOUS","Toxic Fog",76,194)
	callmonster("einbroch","NOXIOUS","Red Fog",60,196)
	callmonster("einbroch","VENOMOUS","Toxic Fog",45,194)
	callmonster("einbroch","VENOMOUS","Toxic Fog",34,201)
	callmonster("einbroch","VENOMOUS","Toxic Fog",40,184)
	callmonster("einbroch","VENOMOUS","Toxic Fog",64,173)
	callmonster("einbroch","NOXIOUS","Red Fog",96,173)
	callmonster("einbroch","VENOMOUS","Toxic Fog",41,155)
	callmonster("einbroch","VENOMOUS","Toxic Fog",46,131)
	callmonster("einbroch","VENOMOUS","Toxic Fog",46,108)
	callmonster("einbroch","VENOMOUS","Toxic Fog",38,93)
	callmonster("einbroch","NOXIOUS","Red Fog",55,86)
	callmonster("einbroch","VENOMOUS","Toxic Fog",81,81)
	callmonster("einbroch","VENOMOUS","Toxic Fog",107,82)
	callmonster("einbroch","VENOMOUS","Toxic Fog",107,104)
	callmonster("einbroch","VENOMOUS","Toxic Fog",123,73)
	callmonster("einbroch","NOXIOUS","Red Fog",132,87)
	callmonster("einbroch","VENOMOUS","Toxic Fog",125,63)
	callmonster("einbroch","VENOMOUS","Toxic Fog",142,64)
	callmonster("einbroch","VENOMOUS","Toxic Fog",150,52)
	callmonster("einbroch","VENOMOUS","Toxic Fog",157,37)
	callmonster("einbroch","NOXIOUS","Red Fog",179,39)
	callmonster("einbroch","VENOMOUS","Toxic Fog",197,46)
	callmonster("einbroch","VENOMOUS","Toxic Fog",217,67)
	callmonster("einbroch","VENOMOUS","Toxic Fog",246,54)
	callmonster("einbroch","VENOMOUS","Toxic Fog",228,110)
	callmonster("einbroch","NOXIOUS","Red Fog",250,118)
	callmonster("einbroch","VENOMOUS","Toxic Fog",273,127)
	callmonster("einbroch","VENOMOUS","Toxic Fog",288,138)
	callmonster("einbroch","VENOMOUS","Toxic Fog",281,160)
	callmonster("einbroch","VENOMOUS","Toxic Fog",281,192)
	callmonster("einbroch","NOXIOUS","Red Fog",291,201)
	callmonster("einbroch","VENOMOUS","Toxic Fog",283,218)
	callmonster("einbroch","VENOMOUS","Toxic Fog",268,216)
	callmonster("einbroch","VENOMOUS","Toxic Fog",273,196)
	callmonster("einbroch","VENOMOUS","Toxic Fog",262,164)
	callmonster("einbroch","NOXIOUS","Red Fog",241,180)
	callmonster("einbroch","VENOMOUS","Toxic Fog",216,205)
	callmonster("einbroch","VENOMOUS","Toxic Fog",209,198)
	callmonster("einbroch","VENOMOUS","Toxic Fog",224,177)
	callmonster("einbroch","VENOMOUS","Toxic Fog",227,163)
	callmonster("einbroch","NOXIOUS","Red Fog",208,166)
	callmonster("einbroch","VENOMOUS","Toxic Fog",132,87)
	callmonster("einbroch","VENOMOUS","Toxic Fog",149,119)
	callmonster("einbroch","VENOMOUS","Toxic Fog",119,36)
	callmonster("einbroch","VENOMOUS","Toxic Fog",84,155)
	callmonster("einbroch","NOXIOUS","Red Fog",82,107)
end
OnCommand: "reset"
	resetmymob()
end
OnCommand: "off"
	disablenpc "Einbroch Smog Alert"
end
OnTimer:(600000)
	resetmymob()
	broadcastinmap "Emergency status is now cancelled. Air pollution levels are now within the safety zone."
	cmdothernpc("Einbroch Smog Alert","off")
	cmdothernpc("Liotzburg","on")
	cmdothernpc("Centzu","on")
	cmdothernpc("Khowropher","on")
	cmdothernpc("Khetine","on")
	cmdothernpc("Sleik","on")
	cmdothernpc("Tollaf","on")
	cmdothernpc("Keneshiotz","on")
	cmdothernpc("Khashurantze","on")
	cmdothernpc("Kesunboss","on")
	cmdothernpc("Train Station Staff#ein-1","on")
	cmdothernpc("Train Station Staff#ein-2","on")
	cmdothernpc("Leslie#ein_1","on")
	cmdothernpc("Tan#ein","on")
	cmdothernpc("Little Toby#ein-1","on")
	cmdothernpc("Airship Engineer#ein-1","on")
	cmdothernpc("Kafra Employee#ein1","on")
	cmdothernpc("Kafra Employee#ein2","on")
	cmdothernpc("Kafra Employee#ein3","on")
	cmdothernpc("Morei","on")
	cmdothernpc("Mark","on")
	cmdothernpc("Khemko","on")
	cmdothernpc("Oberu","on")
	cmdothernpc("Uwe Kleine","on")
	cmdothernpc("Flu Mask Dealer#ein","on")
	cmdothernpc("Paddler#ein","on")
	cmdothernpc("Laboratory Soldier#ein-1","on")
	cmdothernpc("Laboratory Soldier#ein-2","on")
	SetGlobalVar("050318_ryu_ein",0)
	stoptimer()
end
OnMyMobDead:()
	if npcv "Einbroch Smog Alert" [VAR_MYMOBCOUNT] < 1 then
		broadcastinmap "Emergency status is now cancelled. Air pollution levels are now within the safety zone."
		cmdothernpc("Einbroch Smog Alert","reset")
		cmdothernpc("Einbroch Smog Alert","off")
		cmdothernpc("Liotzburg","on")
		cmdothernpc("Centzu","on")
		cmdothernpc("Khowropher","on")
		cmdothernpc("Khetine","on")
		cmdothernpc("Sleik","on")
		cmdothernpc("Tollaf","on")
		cmdothernpc("Keneshiotz","on")
		cmdothernpc("Khashurantze","on")
		cmdothernpc("Kesunboss","on")
		cmdothernpc("Train Station Staff#ein-1","on")
		cmdothernpc("Train Station Staff#ein-2","on")
		cmdothernpc("Leslie#ein_1","on")
		cmdothernpc("Tan#ein","on")
		cmdothernpc("Little Toby#ein-1","on")
		cmdothernpc("Airship Engineer#ein-1","on")
		cmdothernpc("Kafra Employee#ein1","on")
		cmdothernpc("Kafra Employee#ein2","on")
		cmdothernpc("Kafra Employee#ein3","on")
		cmdothernpc("Morei","on")
		cmdothernpc("Mark","on")
		cmdothernpc("Khemko","on")
		cmdothernpc("Oberu","on")
		cmdothernpc("Uwe Kleine","on")
		cmdothernpc("Flu Mask Dealer#ein","on")
		cmdothernpc("Paddler#ein","on")
		cmdothernpc("Laboratory Soldier#ein-1","on")
		cmdothernpc("Laboratory Soldier#ein-2","on")
		SetGlobalVar("050318_ryu_ein",0)
		stoptimer()
	end
end

npc("einbroch","Liotzburg",SPRITE_4_M_YURI,132,84,3,2,2,"einbroch_Liotzburg_13284")
OnCommand: "on"
	enablenpc "Liotzburg"
end
OnCommand: "off"
	disablenpc "Liotzburg"
end
function einbroch_Liotzburg_13284()
	local x = GetGlobalVar "050318_ryu_ein"
	if x > 9 then
		dialog "[Liotzburg]"
		dialog "What's going on?!"
		dialog "Who's responsible?!"
		dialog "God, I can't believe"
		dialog "this is happening!"
		dialog "^333333*Cough Cough!*^000000"
		wait()
		dialog "[Liotzburg]"
		dialog "I need to get out of here!"
		dialog "You! D-do something and"
		dialog "fix this! I gotta hide and find"
		dialog "someplace safe!"
		close()
		cmdothernpc("Einbroch Smog Alert","on")
		cmdothernpc("Liotzburg","off")
		return
	else
		return
	end
function einbroch_Liotzburg_13284()
	if ((getvar(ein_factory) == 13) or (getvar(ein_factory) == 14)) then
		setitem("ein_factory",14)
		dialog "[Liotzburg]"
		dialog "What...?"
		dialog "Factory Repair"
		dialog "budget? No way!"
		wait()
		dialog "[Liotzburg]"
		dialog "Why waste money?"
		dialog "We haven't had any"
		dialog "problems so far! Look,"
		dialog "everything's fine! Why"
		dialog "are you exaggerating"
		dialog "such small details?"
		wait()
		dialog "[Liotzburg]"
		dialog "The field overseer,"
		dialog "Zelmeto, just came by to"
		dialog "ask for a budget increase."
		dialog "Well, I think he's lying!"
		dialog "Everything's perfect!"
		close()
		return
	end
	dialog "[Liotzburg]"
	dialog "I'm the plant"
	dialog "superintendant of this"
	dialog "factory. Most of my employees"
	dialog "are diligent workers. I can't say that of everyone, but overall we're doing an excellent job. Ha ha ha~!"
	wait()
	dialog "[Liotzburg]"
	dialog "So long as this factory"
	dialog "is well maintained, we won't"
	dialog "have to worry about this city's"
	dialog "safety. The field overseer,"
	dialog "Zelmeto, is also very reliable."
	wait()
	dialog "[Liotzburg]"
	dialog "I can trust Zelmeto"
	dialog "to look after things,"
	dialog "so there's no need for"
	dialog "me to go inside the factory."
	dialog "Delegating work is great!"
	wait()
	dialog "[Liotzburg]"
	dialog "Our factory will"
	dialog "continue to develop"
	dialog "and everyone will be"
	dialog "proud of the progress"
	dialog "we're making. Yes, I can"
	dialog "assure you of that!"
	close()
end

npc("ein_in01","Zelmeto",SPRITE_4_M_REPAIR,67,242,3,0,0,"ein_in01_Zelmeto_67242")
function ein_in01_Zelmeto_67242()
	local x = GetGlobalVar "050318_ryu_ein"
	if x > 9 then
		dialog "[Zelmeto]"
		dialog "We've got a big problem"
		dialog "here! I appreciate that you've"
		dialog "been gathering the materials,"
		dialog "but the machines have been"
		dialog "broken for too long!"
		wait()
		dialog "[Zelmeto]"
		dialog "Right when I tried to"
		dialog "fix it, a huge shortout"
		dialog "occurred. Our town is"
		dialog "probably filled with"
		dialog "toxic fog right now!"
		wait()
		dialog "[Zelmeto]"
		dialog "I'll try my best to fix"
		dialog "this, but we really should"
		dialog "have allocated some funds"
		dialog "to fix this machine earlier!"
		wait()
		dialog "[Zelmeto]"
		dialog "The most important"
		dialog "thing is that you get"
		dialog "out of here and find"
		dialog "shelter! Right now!"
		close()
		moveto("einbroch",131,83)
		return
	end
	if getvar(ein_factory) == 16 then
		dialog "[Zelmeto]"
		dialog "We'll be putting good"
		dialog "use to the materials you"
		dialog "gave me. With your help,"
		dialog "our factory will operate"
		dialog "safely. At least, for just"
		dialog "a little while longer."
		close()
		return
	end
	if ((getvar(ein_factory) == 15) and (getvar(Tube) > 19) and (getvar(Screw) > 9) and (getvar(Old_Steel_Plate) > 9)) then
		dialog "[Zelmeto]"
		dialog "Ah, it's you again."
		dialog "It's shameful letting"
		dialog "other people know about"
		dialog "our miserable situation..."
		wait()
		dialog "[Zelmeto]"
		dialog "There's nothing"
		dialog "worth seeing here,"
		dialog "so there really isn't"
		dialog "a point in you coming to"
		dialog "visit this place anymore."
		wait()
		local mresulta = menu("Give him materials.","Huh.")
		if mresulta == 1 then
			dialog "[Zelmeto]"
			dialog "...Hm?"
			dialog "Aren't these the"
			dialog "materials we need"
			dialog "to make repairs in"
			dialog "the factory? How did"
			dialog "you find all of these?"
			wait()
			dialog "[Zelmeto]"
			dialog "I don't know how"
			dialog "I can possibly pay you"
			dialog "back for this great favor."
			dialog "I appreciate that you've"
			dialog "stepped forward to help us."
			wait()
			dialog "[Zelmeto]"
			dialog "Oh...!"
			dialog "In my years of managing,"
			dialog "I've learned the ultimate"
			dialog "motivation techniques. Let"
			dialog "me enhance your motivation"
			dialog "to show you my gratitude."
			wait()
			dialog "[Zelmeto]"
			dialog "Now..."
			dialog "Just open your mind"
			dialog "and listen to my words"
			dialog "of encouragement"
			dialog "and inspiration..."
			wait()
			dialog "[Zelmeto]"
			dialog "^236B8EWhen the going"
			dialog "gets rough, you've"
			dialog "gotta get rougher!"
			dialog "You gotta climb that"
			dialog "mountain 'cause no one's"
			dialog "gonna climb it for you!^000000"
			wait()
			dialog "[Zelmeto]"
			dialog "^236B8EDon't give it up!"
			dialog "Go for broke!"
			dialog "Losers are quitters"
			dialog "and quitters are losers!"
			local a = GetGlobalVar "050318_ryu_ein"
			local a = a + 1
			dropitem("Tube",20)
			dropitem("Screw",10)
			dropitem("Old_Steel_Plate",10)
			SetGlobalVar("050318_ryu_ein","a")
			setitem("ein_factory",16)
			if getvar(VAR_CLEVEL) < 41 then
				getexp(615)
			elseif getvar(VAR_CLEVEL) < 51 then
				getexp(3075)
			elseif getvar(VAR_CLEVEL) < 61 then
				getexp(6604)
			elseif getvar(VAR_CLEVEL) < 71 then
				getexp(18508)
			elseif getvar(VAR_CLEVEL) < 81 then
				getexp(32062)
			elseif getvar(VAR_CLEVEL) < 91 then
				getexp(76026)
			elseif getvar(VAR_CLEVEL) < 99 then
				getexp(290675)
			end
			wait()
			dialog "[Zelmeto]"
			dialog "^333333*Whew*^000000"
			dialog "I haven't given that much"
			dialog "inspriration in a while, but"
			dialog "your help was well worth it."
			dialog "I'm going to start the repairs, but once again, I'd like to thank you."
			close()
			return
		elseif mresulta == 2 then
			dialog "[Zelmeto]"
			dialog "^333333*Sigh...*^000000"
			dialog "I'm really worried"
			dialog "about this factory's"
			dialog "future. What is our"
			dialog "superintendant thinking...?"
			close()
			return
		end
	end
	if getvar(ein_factory) == 15 then
		dialog "[Zelmeto]"
		dialog "We need"
		dialog "at least"
		dialog "20 ^FF0000Flexible Tubes^000000,"
		dialog "10 ^FF0000Rusty Screw^000000 and"
		dialog "10 ^FF0000Used Iron Plate^000000"
		dialog "to repair this factory."
		wait()
		dialog "[Zelmeto]"
		dialog "^333333*Sigh...*^000000"
		dialog "But there's no way"
		dialog "we can get all of those"
		dialog "things. Our budget isn't"
		dialog "big enough to cover it..."
		close()
		return
	end
	if getvar(ein_factory) == 14 then
		dialog "[Zelmeto]"
		dialog "..."
		dialog "......"
		wait()
		dialog "[Zelmeto]"
		dialog "^333333*Sigh*^000000"
		dialog "My proposal was rejected"
		dialog "by our superintendant. But"
		dialog "maintainance and repairs"
		dialog "are crucial for peak operating"
		dialog "efficiency and worker safety!"
		wait()
		dialog "[Zelmeto]"
		dialog "I'm frustrated and worried."
		dialog "Maybe nothing will happen"
		dialog "for now, but we've got to"
		dialog "safeguard our future by"
		dialog "regularly maintaining"
		dialog "all of these machines."
		wait()
		dialog "[Zelmeto]"
		dialog "Even possible threats"
		dialog "to the safety of our workers"
		dialog "can't be ignored. Isn't there"
		dialog "something I can do? ^333333*Sigh*^000000"
		wait()
		dialog "[Zelmeto]"
		dialog "If we can"
		dialog "just get"
		dialog "20 ^FF0000Flexible Tube^000000,"
		dialog "10 ^FF0000Rusty Screw^000000 and"
		dialog "10 ^FF0000Used Iron Plate^000000,"
		dialog "we could make those repairs."
		wait()
		setitem("ein_factory",15)
		dialog "[Zelmeto]"
		dialog "But without funds, there's"
		dialog "no way we can purchase"
		dialog "those items. If something"
		dialog "happens, who's going to"
		dialog "be responsible?"
		close()
		return
	end
	if getvar(ein_factory) == 13 then
		dialog "[Zelmeto]"
		dialog "I've got to report this"
		dialog "to our superintendant"
		dialog "as soon as possible."
		wait()
		dialog "[Zelmeto]"
		dialog "With any luck, he'll approve"
		dialog "a budget increase so that we"
		dialog "can get all of the materials"
		dialog "needed for the repairs."
		close()
		return
	end
	if getvar(ein_factory) == 12 then
		dialog "[Zelmeto]"
		dialog "Well, I figured that both"
		dialog "conveyors would have"
		dialog "similar problems. We"
		dialog "can fix them at the"
		dialog "same time, but it'll"
		dialog "be a hassle."
		wait()
		dialog "[Zelmeto]"
		dialog "Thank you so much for"
		dialog "your help. Without you,"
		dialog "I'm pretty sure we wouldn't"
		dialog "know about these problems"
		dialog "until it was too late."
		wait()
		dialog "[Zelmeto]"
		dialog "Now, I've got to make sure"
		dialog "we have enough materials"
		dialog "to make the repairs so that"
		dialog "the machines will be safely"
		dialog "functioning again."
		wait()
		setitem("ein_factory",13)
		dialog "[Zelmeto]"
		dialog "First, I better"
		dialog "hurry and request"
		dialog "an increase for the"
		dialog "Factory Repair budget"
		dialog "from our superintendant."
		close()
		return
	end
	if getvar(ein_factory) == 11 then
		dialog "[Zelmeto]"
		dialog "The machine which"
		dialog "you are supposed to"
		dialog "inspect right now"
		dialog "is a large conveyor."
		wait()
		dialog "[Zelmeto]"
		dialog "Remember that we"
		dialog "also have a small sized"
		dialog "conveyor, so make sure"
		dialog "that you examine the"
		dialog "larger one, alright?"
		close()
		return
	end
	if getvar(ein_factory) == 10 then
		dialog "[Zelmeto]"
		dialog "This is"
		dialog "worse than"
		dialog "I imagined..."
		wait()
		dialog "[Zelmeto]"
		dialog "We've got to start"
		dialog "repairs as soon as we"
		dialog "can! Hopefully, we can"
		dialog "resolve this before any"
		dialog "serious problems happen..."
		wait()
		dialog "[Zelmeto]"
		dialog "Alright, the last"
		dialog "thing that you need to"
		dialog "inspect is a ^FF0000large converyor^000000."
		dialog "It's similar to the one you"
		dialog "inspected before, but it's"
		dialog "bigger and more powerful."
		wait()
		dialog "[Zelmeto]"
		dialog "We have only one of these"
		dialog "machines and it's usually"
		dialog "moved around a lot since"
		dialog "a lot of people in the factory"
		dialog "use it. I really don't know"
		dialog "where it could be now."
		wait()
		setitem("ein_factory",11)
		dialog "[Zelmeto]"
		dialog "Still, I'm sure that"
		dialog "it's inside the building,"
		dialog "so you should be able to"
		dialog "find it. I hope you can inspect"
		dialog "that conveyor for me soon."
		close()
		return
	end
	if getvar(ein_factory) == 9 then
		dialog "[Zelmeto]"
		dialog "This time, you need"
		dialog "to inspect an outdoor"
		dialog "pipe that is located far"
		dialog "outside of the factory."
		wait()
		dialog "[Zelmeto]"
		dialog "Since there aren't any"
		dialog "other machines in that"
		dialog "area, that pipe shouldn't"
		dialog "be too hard to find."
		close()
		return
	end
	if getvar(ein_factory) == 8 then
		dialog "[Zelmeto]"
		dialog "Huh?"
		dialog "I'm suprised to hear"
		dialog "that. ^333333*Sigh*^000000 There's just"
		dialog "too many things that need"
		dialog "fixing. This is terrible..."
		wait()
		dialog "[Zelmeto]"
		dialog "Well, let me worry"
		dialog "about that for now. Please"
		dialog "focus on continuing to inspect"
		dialog "some of the other machines."
		wait()
		dialog "[Zelmeto]"
		dialog "Now, there's a pipe inside"
		dialog "this factory that I want you"
		dialog "to look at. Many of our pipes"
		dialog "aren't in the best condition,"
		dialog "but this particular one might"
		dialog "be severely damaged."
		wait()
		dialog "[Zelmeto]"
		dialog "Now, the pipe I want"
		dialog "you to inspect is located"
		dialog "near those large caultrons"
		dialog "of molten metal. You should"
		dialog "be able to find it pretty easily. ^FFFFFFCoboman^000000"
		wait()
		setitem("ein_factory",9)
		dialog "[Zelmeto]"
		dialog "Thanks again"
		dialog "for your help,"
		dialog "adventurer."
		close()
		return
	end
	if getvar(ein_factory) == 7 then
		dialog "[Zelmeto]"
		dialog "The machine which"
		dialog "I want you to inspect"
		dialog "this time is a small"
		dialog "sized conveyor."
		wait()
		dialog "[Zelmeto]"
		dialog "Be sure that you"
		dialog "inspect the small"
		dialog "one, since we also"
		dialog "have a large conveyor"
		dialog "in the factory as well."
		close()
		return
	end
	if getvar(ein_factory) == 6 then
		dialog "[Zelmeto]"
		dialog "I see..."
		dialog "It's most likely that"
		dialog "there was a short"
		dialog "circuit and most"
		dialog "of the internal devices"
		dialog "were burnt out..."
		wait()
		dialog "[Zelmeto]"
		dialog "Thanks for checking"
		dialog "that out for me. Now,"
		dialog "the next machine I need"
		dialog "you to inspect is different"
		dialog "than the others I've had"
		dialog "you examine."
		wait()
		dialog "[Zelmeto]"
		dialog "It's a mechanical"
		dialog "hand that transports"
		dialog "small objects. We didn't"
		dialog "really give it a name, but"
		dialog "you should be able to find it."
		wait()
		dialog "[Zelmeto]"
		dialog "Recently, it seems"
		dialog "that there have been"
		dialog "problems in operating"
		dialog "that machine. If something's"
		dialog "broken, we need to know"
		dialog "and fix it right away."
		wait()
		setitem("ein_factory",7)
		dialog "[Zelmeto]"
		dialog "Thanks again"
		dialog "in advance."
		close()
		return
	end
	if getvar(ein_factory) == 5 then
		dialog "[Zelmeto]"
		dialog "I'd like you to inspect"
		dialog "the control panel. It's"
		dialog "fairly large and can be"
		dialog "found in the middle of the"
		dialog "factory. You shouldn't have"
		dialog "too much trouble finding it."
		close()
		return
	end
	if getvar(ein_factory) == 4 then
		dialog "[Zelmeto]"
		dialog "What...?"
		dialog "This is worse"
		dialog "than I expected. But"
		dialog "it's good that we know"
		dialog "about these problems"
		dialog "as soon as possible."
		wait()
		dialog "[Zelmeto]"
		dialog "Don't you worry,"
		dialog "we'll take care of"
		dialog "this. In the meantime,"
		dialog "I'd like you to inspect"
		dialog "the next machine for me."
		wait()
		dialog "[Zelmeto]"
		dialog "I want you to check"
		dialog "a ^FF0000control panel^000000. It's the"
		dialog "same kind as the one"
		dialog "you just inspected, but"
		dialog "bigger in size."
		wait()
		dialog "[Zelmeto]"
		dialog "It's located in the"
		dialog "middle of the factory,"
		dialog "so you should be able"
		dialog "to find it. It may be in bad"
		dialog "condition, even though it's"
		dialog "operating fine for now..."
		wait()
		setitem("ein_factory",5)
		dialog "[Zelmeto]"
		dialog "We need to ensure that"
		dialog "it's stable, reliable and"
		dialog "doesn't pose a threat to"
		dialog "our workforce. Thanks"
		dialog "again, adventurer."
		close()
		return
	end
	if getvar(ein_factory) == 3 then
		dialog "[Zelmeto]"
		dialog "You need to inspect"
		dialog "an automatic pressure"
		dialog "governor. It looks fine,"
		dialog "but sometimes it makes"
		dialog "strange noises."
		wait()
		dialog "[Zelmeto]"
		dialog "It probably will"
		dialog "be a good idea to"
		dialog "check that machine"
		dialog "more carefully this"
		dialog "time, just in case."
		wait()
		dialog "[Zelmeto]"
		dialog "Thank you"
		dialog "for helping us,"
		dialog "adventurer."
		close()
		return
	end
	if getvar(ein_factory) == 2 then
		dialog "[Zelmeto]"
		dialog "Huh, I see."
		dialog "We must do something"
		dialog "about that as soon as"
		dialog "we can. Now, let me tell"
		dialog "you what to check next."
		wait()
		dialog "[Zelmeto]"
		dialog "There are 3 automatic"
		dialog "pressure governors which"
		dialog "hammer the bent iron plates"
		dialog "from above to flatten them. It"
		dialog "seems that one of them may"
		dialog "have some kind of problem."
		wait()
		dialog "[Zelmeto]"
		dialog "Please inspect the ^FF0000automatic pressure governors^000000. Even if the"
		dialog "problem seems small, please"
		dialog "report it to me. I know it might seem fine now, but I want to prevent an accident if I can."
		wait()
		setitem("ein_factory",3)
		dialog "[Zelmeto]"
		dialog "Thank you"
		dialog "in advance,"
		dialog "adventurer."
		close()
		return
	end
	if getvar(ein_factory) == 1 then
		dialog "[Zelmeto]"
		dialog "If you would,"
		dialog "please inspect the"
		dialog "2nd control panel that"
		dialog "seems to have been"
		dialog "broken for a while..."
		close()
		return
	end
	dialog "[Zelmeto]"
	dialog "Ah, you must be a visitor."
	dialog "I'm Zelmeto Abellov, the"
	dialog "field overseer. Have you"
	dialog "been in this facility before?"
	wait()
	dialog "[Zelmeto]"
	dialog "This factory plays an"
	dialog "important role in our city"
	dialog "and generates a lot of income."
	dialog "However, our employees suffer"
	dialog "from a poor work environment."
	wait()
	dialog "[Zelmeto]"
	dialog "Our superintendant makes a lot"
	dialog "of money and seems content with"
	dialog "the current situation. However, the rest of the workforce doesn't enjoy all of the benefits he receives..."
	wait()
	dialog "[Zelmeto]"
	dialog "Many people have already"
	dialog "quit and there are only a few"
	dialog "people who continue to work"
	dialog "here. So now we're understaffed"
	dialog "and I'm in quite a bind..."
	wait()
	dialog "[Zelmeto]"
	dialog "There are some urgent"
	dialog "tasks I need done, but"
	dialog "there's no way for me"
	dialog "to recruit new workers."
	dialog "Ah, I'm sorry, I've spoken too"
	dialog "freely about my own problems..."
	wait()
	local mresulta = menu("You're understaffed?","No, it's okay.")
	if mresulta == 1 then
		dialog "[Zelmeto]"
		dialog "Yes, we are!"
		dialog "I don't have enough"
		dialog "people to inspect the"
		dialog "factory machines and"
		dialog "determine what kinds"
		dialog "of problems we have."
		wait()
		dialog "[Zelmeto]"
		dialog "It's a time consuming"
		dialog "task I'd rather do on my"
		dialog "own. However, between that"
		dialog "and managing the workforce,"
		dialog "I don't have enough time..."
		wait()
		local mresultb = menu("I can help you.","Keep up the good job.")
		if mresultb == 1 then
			dialog "[Zelmeto]"
			dialog "You can help me?"
			dialog "I know something like"
			dialog "this is too much to ask,"
			dialog "but I'll accept any help"
			dialog "anyone offers me. I'm"
			dialog "that desperate."
			wait()
			dialog "[Zelmeto]"
			dialog "Alright, I'll have you"
			dialog "inspect the machines"
			dialog "in the factory one by one."
			dialog "It's imperative that we know"
			dialog "what needs to be repaired"
			dialog "and what's working fine."
			wait()
			dialog "[Zelmeto]"
			dialog "First, find the ^FF00002nd control"
			dialog "panel^000000 and determine its"
			dialog "status. I'm fairly certain that"
			dialog "it broke a long time ago, but"
			dialog "it wouldn't hurt to make sure."
			dialog "You should find it easily."
			wait()
			setitem("ein_factory",1)
			dialog "[Zelmeto]"
			dialog "When you finish your"
			dialog "inspection, report back"
			dialog "to me so I can tell you"
			dialog "which machine to check"
			dialog "next. Thanks again for"
			dialog "offering to help."
			close()
			return
		elseif mresultb == 2 then
			dialog "[Zelmeto]"
			dialog "Well, it's a living."
			dialog "^333333*Sigh*^000000 I can put up with"
			dialog "this, but I hope the higher"
			dialog "ups will consider improving"
			dialog "the work environment here..."
			close()
			return
		end
	elseif mresulta == 2 then
		dialog "[Zelmeto]"
		dialog "Thank you for"
		dialog "your kindness."
		dialog "And please don't"
		dialog "let anyone know about"
		dialog "anything I just told you."
		close()
		return
	end
end

npc("ein_in01","2nd Control Panel #inspection1",SPRITE_HIDDEN_NPC,49,232,3,0,0,"ein_in01_2nd_Control_Panel_#inspection1_49232")
function ein_in01_2nd_Control_Panel_#inspection1_49232()
	if ((getvar(ein_factory) != 1) and (getvar(ein_factory) != 2)) then
		return
	end
end
function ein_in01_2nd_Control_Panel_#inspection1_49232()
	if ((getvar(ein_factory) == 1) or (getvar(ein_factory) == 2)) then
		setitem("ein_factory",2)
		dialog "^3355FFIt's the 2nd control panel"
		dialog "Zelmeto asked you to inspect."
		dialog "It looks totally broken: screws"
		dialog "are missing, and the iron cover"
		dialog "has been bent open, revealing"
		dialog "a tangled mess of wires inside.^000000"
		close()
		return
	end
end

npc("ein_in01","3rd Pressure Governor #inspection2",SPRITE_HIDDEN_NPC,108,217,3,0,0,"ein_in01_3rd_Pressure_Governor_#inspection2_108217")
function ein_in01_3rd_Pressure_Governor_#inspection2_108217()
	if ((getvar(ein_factory) != 3) and (getvar(ein_factory) != 4)) then
		return
	end
end
function ein_in01_3rd_Pressure_Governor_#inspection2_108217()
	if ((getvar(ein_factory) == 3) or (getvar(ein_factory) == 4)) then
		setitem("ein_factory",4)
		dialog "^3355FFAt first glance, this"
		dialog "pressure governor looks"
		dialog "perfectly fine. But after you"
		dialog "check it more carefully, you"
		dialog "find that it's making strange"
		dialog "grinding noises and a few of"
		dialog "the surface screws are loose."
		close()
		return
	end
end

npc("ein_in01","Main Control Panel #inspection3",SPRITE_HIDDEN_NPC,62,258,3,0,0,"ein_in01_Main_Control_Panel_#inspection3_62258")
function ein_in01_Main_Control_Panel_#inspection3_62258()
	if ((getvar(ein_factory) != 5) and (getvar(ein_factory) != 6)) then
		return
	end
end
function ein_in01_Main_Control_Panel_#inspection3_62258()
	if ((getvar(ein_factory) == 5) or (getvar(ein_factory) == 6)) then
		setitem("ein_factory",6)
		dialog "^3355FFThe main control panel"
		dialog "doesn't look like it has"
		dialog "any problems. But after"
		dialog "tapping on its surface,"
		dialog "you hear a disheartening"
		dialog "hollow sound. It looks like"
		dialog "it's missing some parts...^000000"
		close()
		return
	end
end

npc("ein_in01","Conveyor #inspection4",SPRITE_HIDDEN_NPC,46,197,3,0,0,"ein_in01_Conveyor_#inspection4_46197")
function ein_in01_Conveyor_#inspection4_46197()
	if ((getvar(ein_factory) != 7) and (getvar(ein_factory) != 8)) then
		return
	end
end
function ein_in01_Conveyor_#inspection4_46197()
	if ((getvar(ein_factory) == 7) or (getvar(ein_factory) == 8)) then
		setitem("ein_factory",8)
		dialog "^3355FFThe conveyor's movements"
		dialog "look jittery and clumsy. The"
		dialog "mechanical arm also doesn't"
		dialog "look powerful enough to bear"
		dialog "the loads that it's carrying. The screws in the conveyor look"
		dialog "loose and rusted over.^000000"
		close()
		return
	end
end

npc("ein_in01","Pipe #inspection5",SPRITE_HIDDEN_NPC,100,266,3,0,0,"ein_in01_Pipe_#inspection5_100266")
function ein_in01_Pipe_#inspection5_100266()
	if ((getvar(ein_factory) != 9) and (getvar(ein_factory) != 10)) then
		return
	end
end
function ein_in01_Pipe_#inspection5_100266()
	if ((getvar(ein_factory) == 9) or (getvar(ein_factory) == 10)) then
		setitem("ein_factory",10)
		dialog "^3355FFThe inspection of this"
		dialog "pipe didn't take very long."
		dialog "It's bloated and worn out"
		dialog "from long durations of "
		dialog "being overloaded with"
		dialog "pressure. It's a wonder"
		dialog "it hasn't exploded yet."
		close()
		return
	end
end

npc("ein_in01","Conveyor #inspection6",SPRITE_HIDDEN_NPC,95,239,3,0,0,"ein_in01_Conveyor_#inspection6_95239")
function ein_in01_Conveyor_#inspection6_95239()
	if ((getvar(ein_factory) != 11) and (getvar(ein_factory) != 12)) then
		return
	end
end
function ein_in01_Conveyor_#inspection6_95239()
	if ((getvar(ein_factory) == 11) or (getvar(ein_factory) == 12)) then
		setitem("ein_factory",12)
		dialog "^3355FFThis conveyor seems"
		dialog "to have similar problems"
		dialog "as its smaller version. Its"
		dialog "movements are awkward,"
		dialog "erratic and weak, and almost"
		dialog "all of its screws are rusted.^000000"
		close()
	return
	end
end

npc("sec_in02","Factory Quest Test",SPRITE_4_M_REPAIR,127,86,3,0,0,"sec_in02_Factory_Quest_Test_12786")
function sec_in02_Factory_Quest_Test_12786()
	dlgwrite(0,9000)
	if error then
		dialog "[Test1]"
		dialog "Boo~ya."
		close()
		return
	elseif input == 0 then
		dialog "[Test1]"
		dialog "Do you want"
		dialog "to cancel~?"
		close()
		return
	elseif input == 8028 then
		local z = GetGlobalVar "050318_ryu_ein"
		dialog "[Test1]"
		dialog "The current value"
		dialog "of the global variable"
		dialog "for the Factory Quest"
		dialog("is... ^3355FF","+","z","+","^000000.")
		dialog "You wanna change?"
		wait()
		local mresulta = menu("0","10")
		if mresulta == 1 then
			dialog "[Test1]"
			dialog "Okay...!"
			dialog "It's been"
			dialog "changed to ''0.''"
			SetGlobalVar("050318_ryu_ein",0)
			close()
			return
		elseif mresulta == 2 then
			dialog "[Test2]"
			dialog "Okay...!"
			dialog "It's been"
			dialog "changed to ''10.''"
			SetGlobalVar("050318_ryu_ein",10)
			close()
			return
		end
	else
		dialog "[Test1]"
		dialog "Whoa..."
		dialog "That is"
		dialog "sooo wrong!"
		close()
		return
	end
end
