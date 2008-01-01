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
--| 31/12/2007                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("alberta","Elin",spr_4W_KID,117,135,0,5,5,"alberta_Elin_117135")
function alberta_Elin_117135()
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "^3355FFWait a second! Right now, you're carrying too many items with you. Please come back after putting some of your things into Kafra Storage.^000000"
	end
	dialog "[Elin]"
	if getvar(VAR_SEX) == 1 then
		dialog "Hello~!"
		dialog "Heh heh, you're a boy, so you probably don't like dolls, right? Well, I like dolls very very much!"
	else
		dialog "Hi hi~! Oh, oh, do you like dolls? I really really like dolls... Hee Hee~!"
	end
	wait()
	dialog "[Elin]"
	dialog "You know, I really really want a new doll! I hope my daddy will give me one on my birthday...!"
	wait()
	local mresulta = menu("Um, I hope your daddy give you one too.","How about I give you one now?")
	if mresulta == 1 then
		dialog "[Elin]"
		dialog "Yeah, I'm hoping"
		dialog "he gives me a Yoyo"
		dialog "doll. They're so cute!"
		close()
	elseif mresulta == 2 then
		local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
		if now_weight < 1000 then
			dialog "[Elin]"
			if getvar(VAR_SEX) == 1 then
				dialog "Maybe you should put some of your stuff away first, you look like you're carrying too much, hee hee~"
			else
				dialog "Do you always carry so much with you? Put some of your things away first, okay?"
			end
			close()
			return
		end
		dialog "[Elin]"
		if getvar(VAR_SEX) == 1 then
			dialog "Oh my goodness!"
			dialog "Really? You're"
			dialog "such a sweetie~!"
		else
			dialog "Will you really?"
			dialog "You're gonna give"
			dialog "me a doll? Yaaaay~"
		end
		wait()
		dialog "[Elin]"
		dialog "What kind of doll are you going to give me? Are you really gonna give me one? "
		wait()
		local mresultb = menu("Poring Doll","Chonchon Doll","Puppet","Rocker Doll","Spore Doll","Osiris Doll","Baphomet Doll","Raccoon Doll","Yoyo Doll","I'm as adorable as a doll.")
		if mresultb == 1 then
			if getvar(Poring_Doll) > 0 then
				dropitem("Poring_Doll",1)
				dialog "[Elin]"
				dialog "Aww..."
				dialog "I have a lot"
				dialog "of Poring dolls..."
				wait()
				dialog "[Elin]"
				if getvar(VAR_SEX) == 1 then
					dialog "But since a cute boy is giving it to me, I'll happily take it! Hee hee, soft and fluffy Poring doll~"
				else
					dialog "But since a nice girl is giving it to me, I'll take it! Hee he, soft and fluffy Poring doll~"
				end
				wait()
				dialog "[Elin]"
				dialog "Ooh, let me give you something as a little thank you. You see, I hid some candy so I can eat it without telling mommy."
				wait()
				getitem("Candy",1)
				dialog "[Elin]"
				if getvar(VAR_SEX) == 1 then
					dialog "I don't know if you're too old to like candy, but I guess it's okay."
				else
					dialog "So, try not to eat too much, okay? Otherwise, you might get in trouble!"
				end
				wait()
				dialog "[Elin]"
				dialog "Thank you"
				dialog "so much for"
				dialog "the Poring doll!"
				close()
			else
				dialog "[Elin]"
				if getvar(VAR_SEX) == 1 then
					dialog "Aww...?"
					dialog "Were you only teasing me?"
				else
					dialog "Aww..."
					dialog "You're not making fun of me are you?"
				end
				wait()
				dialog "[Elin]"
				dialog "I guess you forgot it somewhere..."
				close()
			end
		elseif mresultb == 2 then
			if getvar(Chonchon_Doll) > 0 then
				dropitem("Chonchon_Doll",1)
				dialog "[Elin]"
				dialog "Agh--!"
				dialog "A Ch-Ch, Chonchon doll?!"
				wait()
				dialog "[Elin]"
				if getvar(VAR_SEX) == 1 then
					dialog "But since... You're... Such a nice guy... I better take it...!"
				else
					dialog "But since... Since it's a gift... I guess I'll take it..."
				end
				wait()
				dialog "[Elin]"
				dialog "Mmm~"
				dialog "Let me give you"
				dialog "something in return..."
				wait()
				getitem("Candy_Striper",1)
				dialog "[Elin]"
				dialog "If you eat too much, your teeth will start to rot... at least, that's what Mommy says."
				wait()
				dialog "[Elin]"
				dialog "And.."
				dialog "Uh..."
				dialog "Thank you"
				dialog "for the doll?"
				close()
			else
				dialog "[Elin]"
				dialog "Chonchon dolls are ugly anyways, but you still lied to me! How can you be so mean?!"
				wait()
				dialog "[Elin]"
				dialog "Waaaaaaaaah~~"
				close()
			end
		elseif mresultb == 3 then
			if getvar(Stuffed_Doll) > 0 then
				dropitem("Stuffed_Doll",1)
				dialog "[Elin]"
				dialog "Wow...!"
				dialog "It looks like a bunny!"
				wait()
				dialog "[Elin]"
				dialog "I really like this Puppet~ Heh hehe! Thank you so much~"
				wait()
				dialog "[Elin]"
				dialog "Ooh ooh!"
				dialog "I have something"
				dialog "for you too!"
				dialog "Um, where"
				dialog "did it... Ah!"
				wait()
				getitem("Candy_Striper",1)
				dialog "[Elin]"
				dialog "Here it is! It's some of the candy Santa gave me. Go ahead and try some! Oh, and thank you so much for the doll!"
				close()
			else
				dialog "[Elin]"
				dialog "Awww, you were only kidding? W-W-Why are you teasing me like that?"
				wait()
				dialog "[Elin]"
				dialog "^666666*Sniff...*^000000"
				wait()
				dialog "[Elin]"
				dialog "Waaaaaaaaah~~"
				close()
			end
		elseif mresultb == 4 then
			if getvar(Grasshopper_Doll) > 0 then
				dropitem("Grasshopper_Doll",1)
				dialog "[Elin]"
				dialog "Ooh! Rocker Doll!"
				dialog "It's the Rocker that likes singing and dancing! I don't like grasshoppers, but I like this because it's cute~"
				wait()
				dialog "[Elin]"
				dialog "Hmmm, I should give you something too, huh? Let's see, I have what my grandpa gave me..."
				wait()
				getitem("Banana_Juice",7)
				dialog "[Elin]"
				dialog "Here you go! We have a lot of this at home, so I'll give it to you, okay? Oh, and thank you so much for the doll~ I love cute dolls!"
				close()
			else
				dialog "[Elin]"
				dialog "Awww..."
				wait()
				dialog "[Elin]"
				dialog "You don't"
				dialog "really have a doll...?"
				dialog "I was so excited about it, too..."
				close()
			end
		elseif mresultb == 5 then
			if getvar(Spore_Doll) > 0 then
				dropitem("Spore_Doll",1)
				dialog "[Elin]"
				dialog "It's a mushroom?"
				dialog "Ewwwwwwwww, yucky!"
				dialog "Mommy made me eat"
				dialog "mushrooms today, too..."
				wait()
				dialog "[Elin]"
				dialog "But this doll is cute, so I'll take it. But I'm still not gonna eat mushrooms! Heh heh~"
				wait()
				getitem("Well_Baked_Cookie",5)
				dialog "[Elin]"
				dialog "Hehe~ My mommy made this! It's really yummy. I love cookies, too. So try it, you'll like it! Hee hee!"
				wait()
				dialog "[Elin]"
				dialog "Thanks for"
				dialog "the doll! I'll"
				dialog "take good care of it!"
				close()
			else
				dialog "[Elin]"
				dialog "Eh...?"
				dialog "You don't"
				dialog "have a doll?"
				wait()
				dialog "[Elin]"
				dialog "Awww..."
				dialog "It's not nice"
				dialog "to tease people"
				dialog "like that. ^666666*Sniff, sniff*^000000"
				close()
			end
		elseif mresultb == 6 then
			if getvar(Osiris_Doll) > 0 then
				dropitem("Osiris_Doll",1)
				dialog "[Elin]"
				dialog "Ahhhhh!"
				dialog "What is this"
				dialog "thing?! It's so scary!"
				wait()
				dialog "[Elin]"
				dialog "I've never seen a doll like this before. Where it's from? Hmm? Since I've never seen this kind of doll before, I'm gonna show it to my daddy, too. Hehe~! He'll be surprised!"
				wait()
				dialog "[Elin]"
				dialog "Here, since you gave me such a nicely made doll, I better give you something good too."
				wait()
				getitem("Fruit_Of_Mastela",2)
				dialog "[Elin]"
				dialog "I found it when I secretly went to the forest. I took it because it has pretty colors!"
				if getvar(VAR_SEX) == 1 then
					dialog "Since there's two, you can share it with your girlfriend. Hee hee~!"
				else
					dialog "Since there's two, you can share it with your boyfriend. Hee hee~!"
				end
				close()
			else
				dialog "[Elin]"
				dialog "Awww..."
				dialog "Why do you have"
				dialog "to make fun of me?"
				close()
			end
		elseif mresultb == 7 then
			if getvar(Baphomet_Doll) > 0 then
				dropitem("Baphomet_Doll",1)
				dialog "[Elin]"
				dialog "Huh?"
				dialog "It's a little goat..."
				wait()
				dialog "[Elin]"
				dialog "It's so weird. It's cute but it's also scary at the same time. Well, since you gave me a pretty doll, I wanna give you something, too."
				wait()
				getitem("Panacea",5)
				dialog "[Elin]"
				dialog "My daddy gave me this when I was really sick. I'm not sick anymore so you can use it when you need to. Hehehe~"
				wait()
				dialog "[Elin]"
				dialog "Hee hee~"
				dialog "Thank you for"
				dialog "the doll. I won't lose it!"
				close()
			else
				dialog "[Elin]"
				dialog "You big liar! Why are you pretending to be nice?!"
				close()
			end
		elseif mresultb == 8 then
			if getvar(Raccoondog_Doll) > 0 then
				dropitem("Raccoondog_Doll",1)
				dialog "[Elin]"
				dialog "Hehe, it's a"
				dialog "raccoon doll."
				dialog "It's very very cute~"
				wait()
				dialog "[Elin]"
				dialog "I don't like"
				dialog "Smokies in real life,"
				dialog "but this doll is nice!"
				wait()
				getitem("Piece_Of_Cake",3)
				dialog "[Elin]"
				dialog "Here, let me give you some cake my grandma made. It's really yummy. I don't know if you like sweets or not, but it's really good! Please try some!"
				wait()
				dialog "[Elin]"
				dialog "Hee hee~"
				dialog "Thanks for the doll."
				dialog "I'm gonna keep it"
				dialog "in my room!"
				close()
			else
				dialog "[Elin]"
				dialog "Hey! How come you have to say things like that? Are you making fun of me?!"
				close()
			end
		elseif mresultb == 9 then
			if getvar(Monkey_Doll) > 0 then
				dropitem("Monkey_Doll",1)
				dialog "[Elin]"
				dialog "Woooooooow~!"
				wait()
				dialog "[Elin]"
				dialog "A Yoyo doll! It's so pretty! You're really gonna give it to me?! Yay! Thank you so much! I really like it! Hee hee!"
				wait()
				dialog "[Elin]"
				dialog "Since you gave"
				dialog "me such a pretty doll,"
				dialog "I wanna give you"
				dialog "something, too!"
				wait()
				getitem("Seed_Of_Yggdrasil",1)
				dialog "[Elin]"
				dialog "My daddy picked it up on his way to another town. It looks like some kind of seed. I tried planting it in front of our house but it won't grow. Do you want to try?"
				wait()
				dialog "[Elin]"
				dialog "Hehe~"
				dialog "Thanks for"
				dialog "the doll. I'll hug"
				dialog "it before I go"
				dialog "to sleep!"
				close()
			else
				dialog "[Elin]"
				dialog "Hey..."
				dialog "How come you're making fun of me?!"
				close()
			end
		elseif mresultb == 10 then
			local name = PcName()
			dialog("[", name , "]")
			dialog "I'm as adorable as a doll..."
			wait()
			dialog "[Elin]"
			dialog "Whaaaaaaaaaaat...?"
			wait()
			dialog "^3355FFWhat did"
			dialog "you just say?!^000000"
			close()
		end
	end
end

npc("alberta","Fabian",spr_4_M_02,97,51,0,5,5,"alberta_Fabian_9751")
function alberta_Fabian_9751()
	dialog "[Fabian]"
	dialog "Man... When you travel all around the world, you'll hear of some crazy things."
	wait()
	dialog "[Fabian]"
	dialog "Once, I heard that there are Cards which contain the power of monsters. If someone happens to get their hands on a card, they'll be able to use that monster's power."
	wait()
	dialog "[Fabian]"
	dialog "I'm guessing it's some sort of fad or scam, where they make you collect all the cards or whatever. I mean, how can a card really hold the power of a monster?!"
	wait()
	dialog "[Fabian]"
	dialog "Seriously..."
	close()
end

npc("alberta","Steiner",spr_4W_SAILOR,53,39,0,5,5,"alberta_Steiner_5339")
function alberta_Steiner_5339()
	dialog "[Steiner]"
	dialog "Oh...!"
	dialog "Welcome to Alberta,"
	dialog "young adventurer!"
	wait()
	dialog "[Steiner]"
	dialog "Pardon me if I seem distracted. I'm milling about, trying to make a plan. You see, I hear that there is a store in Geffen that sells armor that is resistant to magic."
	wait()
	dialog "[Steiner]"
	dialog "If I buy a lot of them in bulk, and then resell them here for a higher price..."
	close()
end

npc("alberta_in","Chad",spr_1_M_03,20,183,0,5,5,"alberta_in_Chad_20183")
function alberta_in_Chad_20183()
	dialog "[Chad]"
	dialog "People say the legendary weapon Gungnir never misses its target. I wonder if it's possibly true..."
	wait()
	dialog "[Chad]"
	dialog "People also say that babies are assembled by the storks before delivery, girls dig guys who act like jerks, and that Santa Claus exists! But only in Lutie."
	wait()
	dialog "[Chad]"
	dialog "I wonder..."
	dialog "If any of that"
	dialog "is possibly"
	dialog "true..."
	close()
end

npc("alberta","Drunken Old Man",spr_1_M_JOBGUIDER,131,139,2,5,5,"alberta_Drunken_Old_Man_131139")
function alberta_Drunken_Old_Man_131139()
	dialog "[Deagle]"
	dialog "^666666*Hiccup*^000000"
	dialog "Wh-what are you"
	dialog "staring at? Get lost!!"
	wait()
	local mresulta = menu("Say nothing.","Leave him alone.")
	if mresulta == 1 then
		dialog "[Deagle]"
		dialog "Hahahaha ^666666*hiccup*^000000... You've got some nerve. I may look worthless now, but I used to be a sailor on the 'Going Mary.'"
		wait()
		local mresultb = menu("Never heard of it.","Really? No kidding!")
		if mresultb == 1 then
			dialog "[Deagle]"
			dialog "Never heard of it?! Everybody knows th'notorious pirate ship 'Going Mary!' ^666666*Hiccup~*^000000"
			wait()
			dialog "[Deagle]"
			dialog "Ah~ The ol'days. If only... If only we hadn't run into that STORM...^666666*hiccup*^000000"
			wait()
			dialog "[Deagle]"
			dialog "AH~ Captain. I miss our cap'n more than anything... No foe survived before cap'n's sword."
			wait()
			close()
		elseif mresultb == 2 then
			dialog "[Deagle]"
			dialog "That's right! NOBODY meshes with the crew of the 'Going Mary!' And nobody can beat out cap'n in a sword fight!"
			wait()
			dialog "[Deagle]"
			dialog "CAPTAIN~!!! ^666666*HICCUP~*^000000 He would swing his sword like this, then... THEN!!"
			wait()
			dialog "[Deagle]"
			dialog "The bastard the captain was fighting, and anyone of his friends near him, were surrounded in flame!"
			wait()
			dialog "[Deagle]"
			dialog "Man, that sword must have had some sort of mysterious power, or the captain was just that good...!"
			wait()
			dialog "[Deagle]"
			dialog "Phew~~ ^666666*Sob* *Sob...*^000000 God, I miss everyone! Now I'm depressed! Please, go away now."
			close()
		end
		elseif mresulta == 2 then
			dialog "[Deagle]"
			dialog "That's right!"
			dialog "Go AWAY~"
			close()
	end
end

npc("alberta","Shakir",spr_4W_M_03,58,80,2,5,5,"alberta_Shakir_5880")
function alberta_Shakir_5880()
	local mresult = math.random(1,2)
	if mresult == 1 then
		dialog "[Shakir]"
		dialog "We Merchants can"
		dialog "open roadside stands"
		dialog "to do business."
		wait()
		dialog "[Shakir]"
		dialog "With the Discount skill, we can buy goods really cheap from the stores in towns and load them into the cart we rent."
		wait()
		dialog "[Shakir]"
		dialog "Then afterwards, we can travel anywhere, and sells our goods to make a profit!"
		wait()
		dialog "[Shakir]"
		dialog "This way, business is more convenient and safe. Don't fall asleep, although it's too easy to do that."
		close()
	elseif mresult == 2 then
		dialog "[Shakir]"
		dialog "We Merchants have our own negotiating skill when we sell goods. This skill can get us more money than when other people sell goods."
		wait()
		dialog "[Shakir]"
		dialog "It's more than just yelling 'You'll have to give more money please!' You need to have charisma, and master rhetoric!"
		wait()
		dialog "[Shakir]"
		dialog "We can get up to 24 % more zeny with this incredible skill. But remember to train hard to acquire it!!"
	end
end

npc("alberta","Sonya",spr_8_F,62,156,2,5,5,"alberta_Sonya_62156")
function alberta_Sonya_62156()
	local mresult = math.random(1,3)
	if mresult == 1 then
		dialog "[Sonya]"
		dialog "Hey, you know, this one time I was walking through the forest and I saw this little green stem moving around."
		wait()
		dialog "[Sonya]"
		dialog "I went to see what it was and when I went to touch it. The stem actually slapped my hand!"
		wait()
		dialog "[Sonya]"
		dialog "It startled me, so I jumped back a bit and then I realized it wasn't a stem, but a very small animal."
		wait()
		dialog "[Sonya]"
		dialog "I was lucky I didn't upset it. Even the smallest animal can be dangerous if angered."
		close()
	elseif mresult == 2 then
		dialog "[Sonya]"
		dialog "You know those lazy looking bears that live in the forest on the way to Payon? "
		wait()
		dialog "[Sonya]"
		dialog "Just for fun, I threw a rock at it and all of sudden it rushed at me! I was sooooo scared, I started to run away, then BAM!!!"
		wait()
		dialog "[Sonya]"
		dialog "It ran into a low tree branch and knocked itself out! I swear, I'll never provoke an animal for fun again!"
		close()
	elseif mresult == 3 then
		dialog "[Sonya]"
		dialog "I once saw a pack of wolves take on one of those huge, lazy bears!"
		wait()
		dialog "[Sonya]"
		dialog "Wolves are much more cooperative than they may seem. If one of them is attacked, then any nearby wolves will run to help."
		wait()
		dialog "[Sonya]"
		dialog "I'd think twice if you ever want to fight one when others of its kind are around. Be careful: don't get ganged up on!"
		close()
	end
end

npc("alberta","Grandma Alma",spr_8_F_GRANDMOTHER,93,174,2,5,5,"alberta_Grandma_Alma_93174")
function alberta_Grandma_Alma_93174()
	dialog "[Grandma Alma]"
	dialog "Some time ago,"
	dialog "a derelict ship"
	dialog "drifted into"
	dialog "Alberta harbor."
	wait()
	dialog "[Grandma Alma]"
	dialog "Hoping to save any survivors, some of the townspeople ventured into the ship. However, they all ran out terrified, saying that corpses were walking around inside the ship."
	wait()
	dialog "[Grandma Alma]"
	dialog "The ship was also packed with dangerous marine organisms, and they couldn't get inside, even if they wanted to."
	wait()
	dialog "[Grandma Alma]"
	dialog "We couldn't do anything about that ominous looking ship, and just left it as it was. Nowadays, exploration teams try to enter that ship and wipe out its monsters."
	wait()
	dialog "[Grandma Alma]"
	dialog "So it might be a good experience for a young person like yourself to be a recruit. But, it's still not worth risking your life if you're not strong enough."
	close()
end

npc("alberta","Fisk",spr_4W_SAILOR,189,151,5,5,5,"alberta_Fisk_189151")
function alberta_Fisk_189151()
	dialog "[Fisk]"
	dialog "Ahoy mate,"
	dialog "where'd ya"
	dialog "wanna go?"
	wait()
	local mresult = menu("Sunken Ship -> 250 zeny.","Izlude Marina -> 500 zeny.","Never mind.")
	if mresult == 1 then
		if getvar(VAR_MONEY) < 250 then
			dialog "[Fisk]"
			dialog "Hey now, don't try to cheat me! I said 250 zeny!"
			close()
			return
		end
		dropgold(250)
		moveto("alb2trea",43,53)
	elseif mresult == 2 then
		if getvar(VAR_MONEY) < 500 then
			dialog "[Fisk]"
			dialog "Ain't no way yer getting there without the 500 zeny first!"
			close()
			return
		end
		dropgold(500)
		moveto("izlude",176,182)
	elseif mresult == 3 then
		dialog "[Fisk]"
		dialog "Alright..."
		dialog "Landlubber."
		close()
	end
end

npc("alb2trea","Fisk",spr_4W_SAILOR,39,50,6,5,5,"alb2trea_Fisk_3950")
function alb2trea_Fisk_3950()
	dialog "[Fisk]"
	dialog "So you wanna head back to the mainland in Alberta, eh? "
	local mresult = menu("Yes please.","I changed my mind.")
	if mresult == 1 then
		moveto("alberta",192,169)
	elseif mresult_ == 2 then
	end
end

npc("alberta","Paul",spr_4_M_04,195,151,2,5,5,"alberta_Paul_195151")
function alberta_Paul_195151()
	dialog "[Paul]"
	dialog "Good day~"
	dialog "Would you like"
	dialog "to join the"
	dialog "exploration team"
	dialog "of the Sunken Ship?"
	wait()
	dialog "[Paul]"
	dialog "Oh! Before you join, I must warn you. If you're not that strong, you may not want to go."
	wait()
	dialog "[Paul]"
	dialog "So, want"
	dialog "to sign up?"
	dialog "The admission"
	dialog "fee is only"
	dialog "200 Zeny."
	wait()
	local mresult = menu("Sign me up!","Uh, no thanks.")
	if mresult == 1 then
		if getvar(VAR_MONEY) < 200 then
			dialog "[Paul]"
			dialog "It seems you don't have the money, my friend. But please come back when you're able to pay."
			close()
			return
		else
			dropgold(200)
			moveto("alb2trea",62,69)
			close()
		end
	elseif mresult_ == 2 then
		dialog "[Paul]"
		dialog "Alright, well..."
		dialog "I'll be around"
		dialog "if you change"
		dialog "your mind."
		close()
	end
end

npc("alberta","Phelix",spr_4_M_03,190,173,4,5,5,"alberta_Phelix_190173")
function alberta_Phelix_190173()
	if getvar("event_zelopy") == 0 then
		dialog "[Phelix]"
		dialog "The hell are you doing here?"
		dialog "There is nothing you can get for free on this ship, if you want somethin', work for it!!"
		wait()
		dialog "[Phelix]"
		dialog "Hmm, so why don't you bring me 10 jellopies and I will give 1 potion. How's that sound?"
		dialog "Or if that's too hard for your pansy ass, 3 jellopies for 1 Carrot."
		wait()
		dialog "[Phelix]"
		dialog "If you're interested in my offer, get me the stuff I mentioned."
		setitem("event_zelopy",1)
		close()
	elseif getvar("event_zelopy") == 1 then
		dialog "[Phelix]"
		dialog "Hmm.. you want to exchange jellopies for Red Potions or some Carrots eh? Well.. which one?"
		wait()
		local mresult = menu("Red Potions please.","Carrots please.")
		if mresult == 1 then
			dialog "[Phelix]"
			dialog "Alright..."
			dialog "Let's see"
			dialog "what'cha got.."
			wait()
			if getvar(Jellopy) < 10 then
				dialog "[Phelix]"
				dialog "Hey! Weren't you listening?. I said 10 jellopies for 1 Red Potion.. are ya deaf?"
				close()
			else
				local potion
				local zelopy = getvar(Jellopy)
				local zelopy_send
				local gap
				local total_gap
				dialog "[Phelix]"
				dialog "Hmm, not bad..."
				dialog "How many potions"
				dialog "do you want to get?"
				wait()
				while(1) do
					if zelopy < 10 then
						break
					else
						gap("=","gap","+",1)
						zelopy("=","zelopy","-",10)
						zelopy_send("=","zelopy_send","+",10)
					end
				end
				local mresult = menu("As many as I can, please.","I want this many.","Never mind, I like my jellopy.")
				if mresult == 1 then
					total_gap("=","gap")
				elseif mresult == 2 then
					dialog "[Phelix]"
					dialog "I'm not giving you more then 100 at a time so don't bother, OK? If you don't want any, just say '0'."
					dialog("Right now, the most you can get is ","+","gap","+"," but remember, 100 at most, you want to break my back?.")
					wait()
					while(1) do
						dlgwrite(1,100)
						if input == 0 then
							dialog "[Phelix]"
							dialog "Much obliged, come again anytime."
							close()
							return
						elseif error then
							dialog "[Phelix]"
							dialog "Hey, what'd I say? 100 at a time at most, you're trying to kill me aren't you!."
							wait()
						else
							break
						end
					end
					zelopy_send("=","input","*",10)
					total_gap("=","input")
					if getvar(Jellopy) < zelopy_send then
						zelopy("=","v[Jellopy]")
						dialog "[Phelix]"
						dialog "Hmm, it looks like you don't have enough. Go get more jellopies if you want anything else from me."
						close()
						return
					end
				elseif mresult == 3 then
					dialog "[Phelix]"
					dialog "No problem,"
					dialog "see you next time."
					close()
					return
				end
				if (getvar(Jellopy) < zelopy_send) then
					dialog "[Phelix]"
					dialog "It seems you don't have enough. Go get more jellopies if you want anything else from me."
					close()
					return
				end
				dropitem("Jellopy","zelopy_send")
				getitem("Red_Potion","total_gap")
				dialog "[Phelix]"
				dialog "There you go! As I promised. Don't go suckin' them all down at once."
				close()
			end
		elseif mresult == 2 then
			dialog "[Phelix]"
			dialog "Alright, let's see what ya got..."
			wait()
			if getvar(Jellopy) < 3 then
				dialog "[Phelix]"
				dialog "Hmm, look pansy ass, I said 3 jellopies for 1 Carrot.. got it?"
				close()
			else
				local goguma
				local zelopy = getvar(Jellopy)
				local zelopy_send
				local gap
				local total_gap
				dialog "[Phelix]"
				dialog "Not too bad pansy..."
				dialog "How many do you want?"
				wait()
				while(1) do
					if zelopy < 3 then
						break
					else
						gap("=","gap","+",1)
						zelopy("=","zelopy","-",3)
						zelopy_send("=","zelopy_send","+",3)
					end
				end
				local mresult = menu("As many as I can get, please","I want this many.","Never mind, I like my jellopy.")
				if mresult == 1 then
					total_gap("=","gap")
				elseif mresult == 2 then
					dialog "[Phelix]"
					dialog "Right I'm not giving you more then 100 at a time so don't bother, okay? If you don't want any, just say '0'."
					wait()
					while(1) do
						dlgwrite(1,100)
						if input == 0 then
							dialog "[Phelix]"
							dialog "Alright then, see you next time."
							close()
							return
						elseif error then
							dialog "[Phelix]"
							dialog "Hey pansy ass, I said 100 at most, no more then that! I'm not going to break my back for the likes of you!"
							wait()
						else
							break
						end
					end
					zelopy_send("=","input","*",3)
					total_gap("=","input")
					if getvar(Jellopy) < zelopy_send then
						zelopy("=","v[Jellopy]")
						dialog "[Phelix]"
						dialog "Seems you don't have enough. Go get some more if you want anything else."
						close()
						return
					end
				elseif mresult == 3 then
					dialog "[Phelix]"
					dialog "Catch'ya later."
					close()
					return
				end
				if (getvar(Jellopy) < zelopy_send) then
					dialog "[Phelix]"
					dialog "You don't seem to have what I need. Go get me jellopies."
					close()
					return
				end
				dropitem("Jellopy","zelopy_send")
				getitem("Carrot","total_gap")
				dialog "[Phelix]"
				dialog "There you go~! As I promised. Try not to stuff yer face."
				close()
			end
		end
	end
end

npc("alberta_in","Inn Employee",spr_1_M_INNKEEPER,32,142,3,0,0,"alberta_in_Inn_Employee_32142")
function alberta_in_Inn_Employee_32142()
	dialog "[Employee Jennie]"
	dialog "Welcome to"
	dialog "'Fisherman Inn!'"
	dialog "How may I help you?"
	wait()
	local mresult = menu("Save","Take Rest -> 5,000 zeny","Cancel")
	if mresult == 1 then
		dialog "[Employee Jennie]"
		dialog "Your respawn point"
		dialog "has been saved."
		dialog "Thank you,"
		dialog "please come again."
		checkpoint("alberta_in",26,142)
		close()
	elseif mresult == 2 then
		if getvar(VAR_MONEY) > 4999 then
			dialog "[Employee Jennie]"
			dialog "Thank you."
			dialog "I hope you"
			dialog "enjoy your rest~"
			close()
			dropgold(5000)
			hpheal(100)
			spheal(100)
			moveto("alberta_in",16,105)
		else
			dialog "[Employee Jennie]"
			dialog "I'm sorry, but the service charge is 5,000 zeny. Please make sure that you have enough money to check in next time, okay?"
			close()
		end
	elseif mresult == 3 then
	end
end
