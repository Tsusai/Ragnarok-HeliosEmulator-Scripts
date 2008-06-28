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

npc("einbech","Shena",SPRITE_4_F_EINOLD,46,107,6,0,0,"einbech_Shena_46107")
function einbech_Shena_46107()
	dialog "[Shena]"
	dialog "I think it's weird!"
	dialog "How do you youngsters"
	dialog "not learn all of this?"
	wait()
	dialog "[Luda]"
	dialog "Well, I'm sure the"
	dialog "generation gap has"
	dialog "something to do with it,"
	dialog "but I'm surprised that elder"
	dialog "people would know so much~"
	wait()
	local mresulta = menu("What are you guys talking about?","Pass on by")
	if mresulta == 1 then
		dialog "[Shena]"
		dialog "Oh? Well, well!"
		dialog "Aren't you the most"
		dialog "adorable little girl?"
		dialog "Hello, dearie~"
		wait()
		if getvar(VAR_SEX) == 1 then
			local mresultb = menu("Excuse me, but I'm actually a guy.")
			if mresultb == 1 then
				dialog "[Shena]"
				dialog "Oh, oh are you now?"
				dialog "Perhaps my eyes are"
				dialog "getting bad in my old"
				dialog "age. Getting harder to"
				dialog "tell the difference nowadays..."
				wait()
			end
		end
		dialog "[Shena]"
		dialog "Anyway, me and Luda"
		dialog "were just having a little"
		dialog "chat about all the monsters"
		dialog "near Einbroch. Apparently,"
		dialog "you youngsters don't know as"
		dialog "much about them as you should."
		wait()
		dialog "[Shena]"
		dialog "If adventuring is your"
		dialog "business, you should"
		dialog "know what you're up against."
		dialog "Did you have any questions"
		dialog "about the monsters around"
		dialog "here, young lady?"
		wait()
		if getvar(VAR_SEX) == 1 then
			local mresultb = menu("I told you, I'm a dude...!")
			if mresultb == 1 then
				dialog "[Shena]"
				dialog "Hmm. ''Dude.'' I think"
				dialog "I've heard that before."
				dialog "Ho ho~ You'll have to "
				dialog "forgive this old biddy. "
				dialog "I don't quite have a grasp"
				dialog "on all the words you kids use."
				wait()
				dialog "[Shena]"
				dialog "So dearie,"
				dialog "which monster"
				dialog "would you like"
				dialog "to hear about?"
				wait()
			end
		end
		while(1) do
			local mresultb = menu("Metalling","Mineral","Pit Man","Old Stove","Quit")
			if mresultb == 1 then
				dialog "[Shena]"
				dialog "Well, the Metallings"
				dialog "were created during"
				dialog "the time when the gods"
				dialog "ruled over this world."
				wait()
				dialog "[Shena]"
				dialog "I'm not sure if you knew"
				dialog "this or not, but according"
				dialog "to myth, Porings and Drops"
				dialog "were created from Odin's"
				dialog "saliva. You might not want"
				dialog "to know about Poporing..."
				wait()
				dialog "[Shena]"
				dialog "Metallings, on the"
				dialog "other hand, were made"
				dialog "from the blood of living"
				dialog "machines that I believe"
				dialog "were called ''Gigantes.''"
				wait()
				dialog "[Shena]"
				dialog "Metalling is still like"
				dialog "those other hopping"
				dialog "blobs of gelatin in that"
				dialog "they'll swallow whatever"
				dialog "might be lying on the ground."
				wait()
				dialog "[Shena]"
				dialog "If you defeat a Metalling,"
				dialog "it could drop Large Jellopy,"
				dialog "Iron Ore or even Iron. That"
				dialog "might be good to know, right?"
				wait()
				dialog "[Shena]"
				dialog "Is there"
				dialog "anything else"
				dialog "you'd like to"
				dialog "ask, dearie?"
				wait()
			elseif mresultb == 2 then
				dialog "[Shena]"
				dialog "Did you know that"
				dialog "stalactites and cave"
				dialog "crystals grow for thousands"
				dialog "and thousands of years?"
				wait()
				dialog "[Shena]"
				dialog "Now, if something's been"
				dialog "growing for thousands of"
				dialog "years, it would make sense"
				dialog "if it were actually alive. Now,"
				dialog "Mineral monsters are actually living stalactites."
				wait()
				dialog "[Shena]"
				dialog "It's rumored that they"
				dialog "are grown in a dark cave"
				dialog "in which something inside"
				dialog "has some sort of malicious"
				dialog "influence over them."
				wait()
				dialog "[Shena]"
				dialog "Minerals can defend themselves,"
				dialog "but they might drop Crystal Piece, Topaz or Emvertacon if you defeat one. There's also a slim chance that they may drop a rare jewel, but I'm not quite sure."
				wait()
				dialog "[Shena]"
				dialog "Are there any"
				dialog "other monsters"
				dialog "around here that"
				dialog "you'd want to learn"
				dialog "more about?"
				wait()
			elseif mresultb == 3 then
				dialog "[Shena]"
				dialog "Pit Men are the ghosts"
				dialog "of dead miners that haunt"
				dialog "old and rusted mine cars."
				dialog "For some reason, they can't"
				dialog "leave this world so they just"
				dialog "wander around the mines."
				wait()
				dialog "[Shena]"
				dialog "If you can defeat"
				dialog "them, they'll drop"
				dialog "Old Pick, Lantern, Iron,"
				dialog "Steel, Coal, Flashlight"
				dialog "and Old Iron Plate."
				wait()
				dialog "[Shena]"
				dialog "Did you want"
				dialog "to ask me about"
				dialog "any other of the"
				dialog "local monsters?"
				wait()
			elseif mresultb == 4 then
				dialog "[Shena]"
				dialog "It's just an evil,"
				dialog "man-eating stove."
				wait()
				local mresultc = menu("...That's it?","H-horrifying!")
				if mresultc == 1 then
					dialog "[Shena]"
					dialog "Now, you know the importance"
					dialog "of recycling and preserving our"
					dialog "natural resources, right? Now,"
					dialog "it would do my heart good if you were to recycle the scrap iron"
					dialog "from those Old Stove monsters."
					wait()
					dialog "[Shena]"
					dialog "Old Stoves will usually"
					dialog "drop Battered Pot, Burnt Tree,"
					dialog "Iron, Iron Ore and Old Iron Plate. But once in a while they might drop interesting items like Rusty Iron or even Dead Branch."
					wait()
				elseif mresultc == 2 then
					dialog "[Shena]"
					dialog "Yes. God's creation,"
					dialog "that creature is cruel"
					dialog "and merciless, perhaps"
					dialog "a symbol of purest evil"
					dialog "if I ever saw one."
					wait()
					dialog "[Shena]"
					dialog "Unlike newer appliances,"
					dialog "Old Stoves were hand made by"
					dialog "master craftsmen that, I guess,"
					dialog "developed their own souls. They"
					dialog "used to be benevolent machines, content to provide loving warmth."
					wait()
					dialog "[Shena]"
					dialog "For years they would serve"
					dialog "their owners with loyalty. But"
					dialog "as technology advanced and"
					dialog "they became obsolete, they were"
					dialog "discarded like pieces of trash. This twisted their hearts to ^FF0000evil^000000."
					wait()
					dialog "[Shena]"
					dialog "Old Stoves will usually"
					dialog "drop Battered Pot, Burnt Tree,"
					dialog "Iron, Iron Ore and Old Iron Plate. But once in a while they might drop interesting items like Rusty Iron or even Dead Branch."
					wait()
				end
				dialog "[Shena]"
				dialog "So, is there"
				dialog "anything else"
				dialog "you'd like me to"
				dialog "share with you?"
				wait()
			elseif mresultb == 5 then
				dialog "[Shena]"
				dialog "Alright then."
				dialog "Have a good"
				dialog "day, young lady."
				wait()
				dialog "[Luda]"
				dialog "I'm sorry about my"
				dialog "mother! She can be"
				dialog "overly friendly, I suppose."
				dialog "But if you're bored, please"
				dialog "feel free to visit. Be safe"
				dialog "on your travels, adventurer~"
				break
				close()
				return
			end
		end
	elseif mresulta == 2 then
		dialog "[Shena]"
		dialog "Luda..."
		dialog "You don't live"
		dialog "to be as old as"
		dialog "I am and not learn"
		dialog "a little something"
		dialog "about this world of ours~"
		close()
		return
	end
end

npc("einbech","Luda",SPRITE_4_F_EINWOMAN,48,107,4,0,0,"einbech_Luda_48107")
function einbech_Luda_48107()
	dialog "[Shena]"
	dialog "I think it's weird!"
	dialog "How do you youngsters"
	dialog "not learn all of this?"
	wait()
	dialog "[Luda]"
	dialog "Well, I'm sure the"
	dialog "generation gap has"
	dialog "something to do with it,"
	dialog "but I'm surprised that elder"
	dialog "people would know so much~"
	wait()
	local mresulta = menu("What are you guys talking about?","Pass on by")
	if mresulta == 1 then
		dialog "[Shena]"
		dialog "Oh? Well, well!"
		dialog "Aren't you the most"
		dialog "adorable little girl?"
		dialog "Hello, dearie~"
		wait()
		if getvar(VAR_SEX) == 1 then
			local mresultb = menu("Excuse me, but I'm actually a guy.")
			if mresultb == 1 then
				dialog "[Shena]"
				dialog "Oh, oh are you now?"
				dialog "Perhaps my eyes are"
				dialog "getting bad in my old"
				dialog "age. Getting harder to"
				dialog "tell the difference nowadays..."
				wait()
			end
		end
		dialog "[Shena]"
		dialog "Anyway, me and Luda"
		dialog "were just having a little"
		dialog "chat about all the monsters"
		dialog "near Einbroch. Apparently,"
		dialog "you youngsters don't know as"
		dialog "much about them as you should."
		wait()
		dialog "[Shena]"
		dialog "If adventuring is your"
		dialog "business, you should"
		dialog "know what you're up against."
		dialog "Did you have any questions"
		dialog "about the monsters around"
		dialog "here, young lady?"
		wait()
		if getvar(VAR_SEX) == 1 then
			local mresultb = menu("I told you, I'm a dude...!")
			if mresultb == 1 then
				dialog "[Shena]"
				dialog "Hmm. ''Dude.'' I think"
				dialog "I've heard that before."
				dialog "Ho ho~ You'll have to "
				dialog "forgive this old biddy. "
				dialog "I don't quite have a grasp"
				dialog "on all the words you kids use."
				wait()
				dialog "[Shena]"
				dialog "So dearie,"
				dialog "which monster"
				dialog "would you like"
				dialog "to hear about?"
				wait()
			end
		end
		while(1) do
			local mresultb = menu("Metalling","Mineral","Pit Man","Old Stove","Quit")
			if mresultb == 1 then
				dialog "[Shena]"
				dialog "Well, the Metallings"
				dialog "were created during"
				dialog "the time when the gods"
				dialog "ruled over this world."
				wait()
				dialog "[Shena]"
				dialog "I'm not sure if you knew"
				dialog "this or not, but according"
				dialog "to myth, Porings and Drops"
				dialog "were created from Odin's"
				dialog "saliva. You might not want"
				dialog "to know about Poporing..."
				wait()
				dialog "[Shena]"
				dialog "Metallings, on the"
				dialog "other hand, were made"
				dialog "from the blood of living"
				dialog "machines that I believe"
				dialog "were called ''Gigantes.''"
				wait()
				dialog "[Shena]"
				dialog "Metalling is still like"
				dialog "those other hopping"
				dialog "blobs of gelatin in that"
				dialog "they'll swallow whatever"
				dialog "might be lying on the ground."
				wait()
				dialog "[Shena]"
				dialog "If you defeat a Metalling,"
				dialog "it could drop Large Jellopy,"
				dialog "Iron Ore or even Iron. That"
				dialog "might be good to know, right?"
				wait()
				dialog "[Shena]"
				dialog "Is there"
				dialog "anything else"
				dialog "you'd like to"
				dialog "ask, dearie?"
				wait()
			elseif mresultb == 2 then
				dialog "[Shena]"
				dialog "Did you know that"
				dialog "stalactites and cave"
				dialog "crystals grow for thousands"
				dialog "and thousands of years?"
				wait()
				dialog "[Shena]"
				dialog "Now, if something's been"
				dialog "growing for thousands of"
				dialog "years, it would make sense"
				dialog "if it were actually alive. Now,"
				dialog "Mineral monsters are actually living stalactites."
				wait()
				dialog "[Shena]"
				dialog "It's rumored that they"
				dialog "are grown in a dark cave"
				dialog "in which something inside"
				dialog "has some sort of malicious"
				dialog "influence over them."
				wait()
				dialog "[Shena]"
				dialog "Minerals can defend themselves,"
				dialog "but they might drop Crystal Piece, Topaz or Emvertacon if you defeat one. There's also a slim chance that they may drop a rare jewel, but I'm not quite sure."
				wait()
				dialog "[Shena]"
				dialog "Are there any"
				dialog "other monsters"
				dialog "around here that"
				dialog "you'd want to learn"
				dialog "more about?"
				wait()
			elseif mresultb == 3 then
				dialog "[Shena]"
				dialog "Pit Men are the ghosts"
				dialog "of dead miners that haunt"
				dialog "old and rusted mine cars."
				dialog "For some reason, they can't"
				dialog "leave this world so they just"
				dialog "wander around the mines."
				wait()
				dialog "[Shena]"
				dialog "If you can defeat"
				dialog "them, they'll drop"
				dialog "Old Pick, Lantern, Iron,"
				dialog "Steel, Coal, Flashlight"
				dialog "and Old Iron Plate."
				wait()
				dialog "[Shena]"
				dialog "Did you want"
				dialog "to ask me about"
				dialog "any other of the"
				dialog "local monsters?"
				wait()
			elseif mresultb == 4 then
				dialog "[Shena]"
				dialog "The Old Stove?"
				dialog "It's just an evil,"
				dialog "man-eating stove."
				wait()
				local mresultc = menu("...That's it?","H-horrifying!")
					if mresultc == 1 then
						dialog "[Shena]"
						dialog "Now, you know the importance"
						dialog "of recycling and preserving our"
						dialog "natural resources, right? Now,"
						dialog "it would do my heart good if you were to recycle the scrap iron"
						dialog "from those Old Stove monsters."
						wait()
						dialog "[Shena]"
						dialog "Old Stoves will usually"
						dialog "drop Battered Pot, Burnt Tree,"
						dialog "Iron, Iron Ore and Old Iron Plate. But once in a while they might drop interesting items like Rusty Iron or even Dead Branch."
						wait()
					elseif mresultc == 2 then
						dialog "[Shena]"
						dialog "Yes. God's creation,"
						dialog "that creature is cruel"
						dialog "and merciless, perhaps"
						dialog "a symbol of purest evil"
						dialog "if I ever saw one."
						wait()
						dialog "[Shena]"
						dialog "Unlike newer appliances,"
						dialog "Old Stoves were hand made by"
						dialog "master craftsmen that, I guess,"
						dialog "developed their own souls. They"
						dialog "used to be benevolent machines, content to provide loving warmth."
						wait()
						dialog "[Shena]"
						dialog "For years they would serve"
						dialog "their owners with loyalty. But"
						dialog "as technology advanced and"
						dialog "they became obsolete, they were"
						dialog "discarded like pieces of trash. This twisted their hearts to ^FF0000evil^000000."
						wait()
						dialog "[Shena]"
						dialog "Old Stoves will usually"
						dialog "drop Battered Pot, Burnt Tree,"
						dialog "Iron, Iron Ore and Old Iron Plate. But once in a while they might drop interesting items like Rusty Iron or even Dead Branch."
						wait()
				end
				dialog "[Shena]"
				dialog "So, is there"
				dialog "anything else"
				dialog "you'd like me to"
				dialog "share with you?"
				wait()
			elseif mresultb == 5 then
				dialog "[Shena]"
				dialog "Alright then."
				dialog "Have a good"
				dialog "day, young lady."
				wait()
				dialog "[Luda]"
				dialog "I'm sorry about my"
				dialog "mother! She can be"
				dialog "overly friendly, I suppose."
				dialog "But if you're bored, please"
				dialog "feel free to visit. Be safe"
				dialog "on your travels, adventurer~"
				break
				close()
				return
			end
		end
	elseif mresulta == 2 then
		dialog "[Shena]"
		dialog "Luda..."
		dialog "You don't live"
		dialog "to be as old as"
		dialog "I am and not learn"
		dialog "a little something"
		dialog "about this world of ours~"
		close()
		return
	end
end

npc("einbech","Jung",SPRITE_4_M_EINMAN,148,242,5,0,0,"einbech_Jung_148242")
function einbech_Jung_148242()
	dialog "[Jung]"
	dialog "I'm one of the few"
	dialog "people who's lived"
	dialog "in both Einbech and"
	dialog "Einbrock for a long time."
	dialog "So I guess I'm one of the"
	dialog "best guides of this area."
	wait()
	dialog "[Jung]"
	dialog "Say, if you're thinking of"
	dialog "entering the Mine Dungeon,"
	dialog "I can tell you all I know about"
	dialog "the monsters in that place so"
	dialog "that you'll be better prepared."
	wait()
	local mresulta = menu("Sure, why not?","No, thanks.")
	if mresulta == 1 then
		dialog "[Jung]"
		dialog "Let's see. Ah, the monsters that are unique to the Mine Dungeon"
		dialog "are Noxious, Venomous, Pollcellio and Obsidian. Which one do you"
		dialog "want to know more about?"
		wait()
		local mresultb = menu("Noxious and Venomous","Pollcellio","Obsidian")
		if mresultb == 1 then
			dialog "[Jung]"
			dialog "You know, no one seems"
			dialog "to know where Noxious and"
			dialog "Venomous have come from."
			dialog "It's like they appeared out of"
			dialog "nowhere when Einbroch"
			dialog "started to industrialize."
			wait()
			dialog "[Jung]"
			dialog "Now that I think about it,"
			dialog "I don't think they're naturally created monsters. They have"
			dialog "this fixed look of despair and"
			dialog "suffering and tend to act like they want their enemies to kill them."
			wait()
			dialog "[Jung]"
			dialog "Still, you'd better be careful!"
			dialog "careful! Noxious and Venomous"
			dialog "are stealthy monsters that can"
			dialog "glide quietly through the air"
			dialog "and attack you before"
			dialog "you even notice..."
			wait()
			dialog "[Jung]"
			dialog "You should know that"
			dialog "Noxious is Ghost property"
			dialog "and Venomous is Poison."
			dialog "Both are medium sized,"
			dialog "formless monsters."
			wait()
			dialog "[Jung]"
			dialog "Both of them drop Apple,"
			dialog "Dust Pollutant, Toxic Gas,"
			dialog "Poisonous Powder, Bacillus,"
			dialog "Mold Powder and Anodyne."
			wait()
			dialog "[Jung]"
			dialog "That's all for now."
			dialog "Feel free to ask me"
			dialog "if you have any questions"
			dialog "about monsters in the Mine"
			dialog "Dungeon. Be safe, adventurer."
			close()
			return
		elseif mresultb == 2 then
			dialog "[Jung]"
			dialog "Pollcellio is an insect that"
			dialog "lives in caves and drinks water"
			dialog "dripped from stalactites. It's"
			dialog "different from Ungoliant since"
			dialog "it likes to be near different"
			dialog "kinds of minerals and ores."
			wait()
			dialog "[Jung]"
			dialog "Pollcellio drops Jubilee,"
			dialog "Insect Antenna, Single Cell,"
			dialog "Moss of Morning Dew, Neon"
			dialog "Liquid and a few other things"
			dialog "I can't quite remember."
			wait()
			dialog "[Jung]"
			dialog "Lastly, Pollcellio is an"
			dialog "Earth property monster."
			dialog "That's all I know about it."
			dialog "But if you want to know more"
			dialog "about some other monster in the"
			dialog "Mine Dungeon, feel free to ask."
			close()
			return
		elseif mresultb == 3 then
			dialog "[Jung]"
			dialog "Do you know about the"
			dialog "belief that underground"
			dialog "minerals that contain huge"
			dialog "amounts of energy actually"
			dialog "have souls? Obsidian is"
			dialog "one of these living rocks."
			wait()
			dialog "[Jung]"
			dialog "Supposedly, just a piece of an Obsidian in a Jung Processor has enough energy to light up the night sky. Unfortunately, it's impossible to capture one alive and hunting them isn't so easy."
			wait()
			dialog "[Jung]"
			dialog "Obsidian is a small,"
			dialog "shapeless monster that"
			dialog "drops Clear Jewel, Piece of"
			dialog "Black Crystal, Coal, Elunium,"
			dialog "Iron and Steel."
			wait()
			dialog "[Jung]"
			dialog "That's all for Obsidian."
			dialog "If you have any questions"
			dialog "about other monsters living"
			dialog "in the Mine Dungeon, feel"
			dialog "free to ask me."
			close()
			return
		end
	elseif mresulta == 2 then
		dialog "[Jung]"
		dialog "I understand if you're"
		dialog "kind of in a hurry. Still,"
		dialog "if you're pretty new around"
		dialog "here, you should learn as"
		dialog "much as you can before"
		dialog "entering any dungeons."
		wait()
		dialog "[Jung]"
		dialog "Alright then,"
		dialog "be safe on your"
		dialog "adventures, alright?"
		close()
		return
	end
	close()
end

npc("einbech","Franz",SPRITE_4_M_REPAIR,148,246,5,0,0,"einbech_Franz_148246")
function einbech_Franz_148246()
	dialog "[Franz]"
	dialog "So bored..."
	dialog "Starving for..."
	dialog "Conversation."
	dialog "S-somebody..."
	wait()
	dialog "[Franz]"
	dialog "Hey, a traveller!"
	dialog "Are you planning to explore"
	dialog "the Mine Dungeon or the fields"
	dialog "around here? Let's chat for a bit and maybe you'll learn something."
	wait()
	local mresulta = menu("Okay, fine.","No, thanks.")
	if mresulta == 1 then
		dialog "[Franz]"
		dialog "Ooh, have you heard"
		dialog "about the creature in the"
		dialog "Mine Dungeon or what's"
		dialog "happened in town recently?"
		dialog "Which would you like to"
		dialog "know more about?"
		wait()
		local mresultb = menu("Creature of Mine Dungeon","Town Incident")
		if mresultb == 1 then
			dialog "[Franz]"
			dialog "The creature I'm talking about is Ungoliant, which also called the Master of the Caves around here."
			dialog "It's said to live deep in the caves where it guards peculiar ores and minerals with strange powers."
			wait()
			dialog "[Franz]"
			dialog "At first I thought it was"
			dialog "just an old fairy tale, but it"
			dialog "actually started appearing"
			dialog "again about ten years ago"
			dialog "when the tunnel cave-ins"
			dialog "started to happen."
			wait()
			dialog "[Franz]"
			dialog "As sightings of Ungoliant"
			dialog "increased, more and more"
			dialog "tunnel cave-ins occurred."
			dialog "I guess the miners have"
			dialog "inadvertently intruded"
			dialog "into its territory."
			wait()
			dialog "[Franz]"
			dialog "According to legend,"
			dialog "ancient giants snuck into"
			dialog "a mine to steal coal from"
			dialog "humans. But they made too"
			dialog "much noise while they were"
			dialog "digging and awoke Ungoliant."
			wait()
			dialog "[Franz]"
			dialog "When the miners went to work"
			dialog "the next morning, they found the bloodied bodies of those giants."
			dialog "After that, people have feared"
			dialog "the threat that Ungoliant poses"
			dialog "to anyone entering the mines."
			wait()
			dialog "[Franz]"
			dialog "Now, an adventurer that"
			dialog "managed to kill an Ungoliant"
			dialog "has told me that it drops Ant's"
			dialog "Jaw, Colorful Shell, Very Hard"
			dialog "Shell, Long Leg, Neon Liquid"
			dialog "and Zilcon."
			close()
			return
		elseif mresultb == 2 then
			dialog "[Franz]"
			dialog "In Einbroch, there was"
			dialog "a short lived teddy bear"
			dialog "fad. However, a series of"
			dialog "mysterious accidents and"
			dialog "murders where entire familes"
			dialog "were killed also occurred."
			wait()
			dialog "[Franz]"
			dialog "It turns out that every family"
			dialog "that had been murdered had"
			dialog "bought one of these teddy bears. There were even rumors that these teddy bears were coming to life."
			wait()
			dialog "[Franz]"
			dialog "After an investigation, the"
			dialog "authorities learned that all the merchants who sold these bears"
			dialog "had purchased them from the"
			dialog "same wholesaler, an outsider"
			dialog "no one knew anything about."
			wait()
			dialog "[Franz]"
			dialog "Since the teddy bears were"
			dialog "clearly not made to be mere,"
			dialog "harmless toys, troops were"
			dialog "sent to secure all the teddy"
			dialog "bears and dispose of them"
			dialog "outside of town."
			wait()
			dialog "[Franz]"
			dialog "But as soon as the teddy"
			dialog "bears were set outside of"
			dialog "town, they sprang to life and"
			dialog "started rioting! This is clear"
			dialog "proof that these bears are"
			dialog "controlled by some evil force. "
			wait()
			dialog "[Franz]"
			dialog "Now those aggressive teddy"
			dialog "bears are scattered all over"
			dialog "the place and the government"
			dialog "	has classified them as monsters. Kill with extreme prejudice!"
			wait()
			dialog "[Franz]"
			dialog "According to adventurers"
			dialog "who have caught these bears,"
			dialog "they're small, neutral monsters"
			dialog "which drop Honey, Screw, Well-baked Cookie and Oridecon Hammer."
			wait()
			dialog "[Franz]"
			dialog "That's all I know"
			dialog "about it. Watch out"
			dialog "for those bears if you"
			dialog "go exploring, okay? They"
			dialog "may be cute, but they're"
			dialog "known to be extremely vicious!"
			close()
			return
		end
	elseif mresulta == 2 then
		dialog "[Franz]"
		dialog "Oh, okay."
		dialog "You're busy and you have"
		dialog "things to do, I understand."
		dialog "You probably have to head"
		dialog "off somewhere right away."
		dialog "Right. Got it."
		wait()
		dialog "[Franz]"
		dialog "I..."
		dialog "I've got stuff"
		dialog "I should be working"
		dialog "on. Yes. So very busy."
		close()
		return
	end
	close()
end
