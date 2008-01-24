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
--| 24/01/2008                                      |--
--|   - First Version for Helios  [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("prt_in","Customer#SoloHan",spr_4_M_04,173,13,4,0,0,"prt_in_CustomerSoloHan_17313")
function prt_in_CustomerSoloHan_17313()
	if (getvar(VAR_ISMARRIED) == 0) then
		dialog "[SoloHan]"
		dialog "Oh man..."
		dialog "I think I'm drunk~"
		dialog "^666666*Hiccup...!*^000000"
		wait()
		dialog "[SoloHan]"
		dialog "Hey, you...!"
		dialog "You understand, don't you?!"
		dialog "Aren't you upset looking at all these happily married couples?!"
		dialog "Yeah~? Me too!"
		wait()
		dialog "[SoloHan]"
		dialog "How dare they show off their happiness in front of people like us--!! ^666666*Sniff*^000000 Just because they found everlasting love, they think they're better than we are?!"
		wait()
		dialog "[SoloHan]"
		dialog "I remember when couples were polite and were lovey dovey behind closed doors. Nowadays they hold hands, and even cuddle in public. I mean, come on! Get a room!"
		wait()
		dialog "[SoloHan]"
		dialog "I mean, ^666666*Sniff*^000000, it's not like,"
		dialog "I'm lonely or anything. I don't neeeeeeeed a woman~!"
		dialog "Right, Bachewcca!"
		wait()
		dialog "[Bachewcca]"
		dialog "...!"
		Emotion("Customer#Bachewcca","ET_BEST")
		wait()
		dialog "[SoloHan]"
		dialog "It's doesn't really matter whether you're married"
		dialog "or not, right buddy? Right?!"
		dialog "Come on! Drink with me!!"
		wait()
		dialog "^3355FFSuddenly he treated me as a close friend. It's a little embarassing, but it's not a bad idea to accept"
		dialog "a free drink...^000000"
		wait()
		dialog "^3355FF* Gulp Gulp Gulp *^000000"
		hpdrain(10)
		wait()
		local jaw_roof = 0
		dialog "[SoloHan]"
		dialog "So, what do you say?"
		dialog "Let's go somewhere"
		dialog "with some real liquor."
		while (1) do
			wait()
			local mresulta = menu("...One more drink.","...What kind of place is it?")
			if mresulta == 1 then
				dialog "[SoloHan]"
				dialog "Yeah~!"
				dialog "That's the spirit!"
				dialog "Hey, Bachewcca..."
				dialog "Let's drink!"
				wait()
				dialog "[Bachewcca]"
				dialog "^666666*Grunt!*^000000"
				ShowEffect("Customer#Bachewcca","EF_TALK_SCREAM")
				wait()
				dialog "[SoloHan]"
				dialog "To..."
				dialog "To being single!"
				dialog "F-Forever!!!"
				wait()
				dialog "^3355FF* Gulp Gulp Gulp *^000000"
				hpdrain(10)
				wait()
				jaw_roof("=","jaw_roof","+",2)
				if (jaw_roof > 8) then
					dialog "[SoloHan]"
					dialog "Whoa..."
					dialog "You alright?"
					dialog "You seem kind of drunk..."
					wait()
					dialog "[SoloHan]"
					dialog "I guess now's the perfect time to have you sign this! Don't worry, I'll send you straight to paradise!"
					wait()
					local mresultb = menu("Sign","Refuse to Sign")
					if mresultb == 1 then
						dialog "[SoloHan]"
						dialog "Alright!"
						dialog "Take care!"
						dialog "Hahaha!"
						close()
						hpheal(100)
						break
						return
					elseif mresultb == 2 then
						dialog "[SoloHan]"
						dialog "Oh..."
						dialog "Man."
						dialog "So, you spoil parties"
						dialog "like this all the time, eh?"
						close()
						return
					end
				else
				end
			elseif mresulta == 2 then
				if (jaw_roof > 6) then
					dialog "[SoloHan]"
					dialog "^666666*Hiccup!*^000000"
					dialog "So you feel like having some"
					dialog "real fun? Okay, then just sign over here. Count on me, I'll send you to paradise."
					wait()
					local mresultb = menu("Sign","Refuse to Sign")
					if mresultb == 1 then
						dialog "[SoloHan]"
						dialog "Alright~!"
						dialog "Take care and have fun!"
						dialog "Harass some couples over there for me, will you?"
						close()
						hpheal(100)
						break
						return
					elseif mresultb == 2 then
						dialog "[SoloHan]"
						dialog "Oh..."
						dialog "Man."
						dialog "No wonder you're single. You can't even recognize a good time when it's right in front of you."
						close()
						return
					end
				else
					jaw_roof("=","jaw_roof","+",3)
					dialog "[SoloHan]"
					dialog "Drink, drink!"
					dialog "That's not enough!"
					dialog "Drink more, buddy!"
					wait()
					dialog "[SoloHan]"
					dialog "To..."
					dialog "To being single!"
					dialog "FOR EVER."
					wait()
					dialog "^3355FF*Gulp Gulp Gulp*^000000"
					hpdrain(10)
					wait()
				end
			end
		end
		moveto("jawaii_in",44,124)
	elseif (getvar(VAR_ISMARRIED) == 1) then
		dialog "[SoloHan]"
		dialog "Oh man..."
		dialog "I think I'm drunk~"
		dialog "*Hiccup!*"
		wait()
		dialog "[SoloHan]"
		dialog "...Wha!?"
		dialog "Oh man!"
		dialog "Get outta my face!"
		if (getvar(VAR_SEX) == 1) then
			dialog "You smell like,"
			dialog "whupped boyfriend"
			dialog "or something!"
		else
			wait()
			dialog "[SoloHan]"
			dialog "I think I know a naggy wife"
			dialog "when I see one! Go boss your"
			dialog "hubby around or something!"
		end
		wait()
		dialog "[SoloHan]"
		dialog "Leave me alone!"
		dialog "I don't want any of your marital bliss to rub off on me. Come on, Bachewcca! Tell 'em their kind ain't welcome here!"
		wait()
		dialog "[Bachewcca]"
		dialog "^666666*Grrr...!*^000000"
		ShowEffect("Customer#Bachewcca","EF_THROWITEM")
		close()
	else
		dialog "[SoloHan]"
		dialog "Oh man..."
		dialog "I think I'm drunk~"
		dialog "^666666*Hiccup!*^000000"
		wait()
		dialog "[SoloHan]"
		dialog "What is that...?"
		dialog "Is this the third time this week I've gotten plastered? Bachewcca, help me count!"
		close()
	end
end

npc("prt_in","Customer#Bachewcca",spr_4_M_ORIENT02,170,14,0,0,0,"prt_in_Customer#Bachewcca_17014")
function prt_in_Customer#Bachewcca_17014()
	dialog "[Bachewcca]"
	dialog ".............."
	dialog "^666666*Gulp....gulp...*^000000"
	dialog "Grrrrr!! That hit the spot!"
	Emotion("Customer#Bachewcca","ET_CRY")
	close()
end

npc("jawaii_in","Employee#jaw1",spr_4_F_07,25,94,0,0,0,"jawaii_in_Employee#jaw1_2594")
function jawaii_in_Employee#jaw1_2594()
	dialog "[Employee Tryteh]"
	dialog "Welcome to Jawaii Tavern~"
	if (getvar(VAR_ISMARRIED) == 1) then
		dialog "Anyway, I am so glad that you two have gotten married. I hope you both will live happily ever after~"
		wait()
		dialog "[Employee Tryteh]"
		dialog "Try to be a little careful if you bump into any rude customers."
		dialog "They might be drunk and do something stupid. You know"
		dialog "how it is..."
		close()
	elseif (getvar(VAR_ISMARRIED) == 0) then
		dialog "I hope you enjoy your stay"
		dialog "over here. But try not"
		dialog "to drink too much~"
		close()
	else
		dialog "I hope you will have a good time."
	end
end
OnCommand: "welcome"
	Emotion("Employee#jaw1","ET_CHUP")
end
OnCommand: "solo"
	Emotion("Employee#jaw1","ET_HUK")
end

npc("jawaii_in","Employee#jaw2",spr_4_F_07,25,96,0,0,0,"jawaii_in_Employee#jaw2_2596")
function jawaii_in_Employee#jaw2_2596()
	dialog "[Employee Fey]"
	dialog "Welcome to Jawaii Tavern~"
	if (getvar(VAR_ISMARRIED) == 1) then
		wait()
		dialog "[Employee Fey]"
		dialog "We hope that you enjoy your time here with the one that you love. Isn't this place nice and cozy,"
		dialog "a perfect romantic atmosphere?"
		wait()
		dialog "[Employee Fey]"
		dialog "It would be absolutely perfect if it weren't for those 'Invincible Single Army' weirdos. Somehow,"
		dialog "a few of those dorks found their way here. To hell with them!"
		close()
	elseif (getvar(VAR_ISMARRIED) == 0) then
		dialog "Have a good time! But please,"
		dialog "try not to interrupt the happily married people here!"
		close()
	else
		dialog "I hope you will have a good time~"
	end
end
OnCommand: "welcome"
	Emotion("Employee#jaw2","ET_CHUP")
end
OnCommand: "solo"
	Emotion("Employee#jaw2","ET_HUK")
end

npc("jawaii_in","Employee#jaw3",spr_4_F_07,25,98,0,0,0,"jawaii_in_Employee#jaw3_2598")
function jawaii_in_Employee#jaw3_2598()
	dialog "[Employee Buffy]"
	dialog "Welcome to Jawaii Tavern~"
	if (getvar(VAR_ISMARRIED) == 1) then
		wait()
		dialog "[Employee Buffy]"
		dialog "Oh~"
		dialog "Look at you..."
		if (getvar(VAR_SEX) == 1) then
			dialog "You look perfect"
			dialog "for your wife~"
		else
			dialog "You look perfect"
			dialog "with your husband~"
		end
		dialog "Awwww, I want to"
		dialog "get married soon~!"
		close()
	elseif (getvar(VAR_ISMARRIED) == 0) then
		wait()
		dialog "[Employee Buffy]"
		dialog "Hmm...?"
		dialog "You don't look like"
		dialog "you're married, are you?"
		if (getvar(VAR_SEX) == 1) then
			wait()
			dialog "[Employee Buffy]"
			dialog "I'm pretty good"
			dialog "at cooking and cleaning"
			dialog "^666666*AHEM*^000000 I've got a ^FF0000nice body^000000."
			dialog "So what do you think...?"
		end
		close()
	else
		dialog "I hope you will have a good time."
	end
end
OnCommand: "welcome"
	Emotion("Employee#jaw3","ET_CHUP")
end
OnCommand: "solo"
	Emotion("Employee#jaw3","ET_HUK")
end

npc("jawaii_in","Employee#jaw4",spr_4_F_07,25,100,0,0,0,"jawaii_in_Employee#jaw4_25100")
function jawaii_in_Employee#jaw4_25100()
	dialog "[Employee Itere]"
	dialog "Welcome to"
	dialog "Jawaii Tavern~"
	if (getvar(VAR_ISMARRIED) == 1) then
		wait()
		dialog "[Employee Itere]"
		dialog "Oh~"
		dialog "You look so happy"
		dialog "to be here with your"
		dialog "partner! How precious~"
		close()
	elseif (getvar(VAR_ISMARRIED) == 0) then
		dialog "I hope you"
		dialog "enjoy your st--"
		dialog "Wait a minute...!"
		wait()
		dialog "[Employee Itere]"
		dialog "You're..."
		dialog "You better not be part of"
		dialog "the Invincible Single Army!"
		wait()
		dialog "[Employee Itere]"
		dialog "Well, whatever you do, don't despair, get drunk and then"
		dialog "bother the married couples!"
		close()
	else
		dialog "I hope you will have a good time."
	end
	return
OnCommand: "welcome"
	Emotion("Employee#jaw4","ET_CHUP")
end
OnCommand: "solo"
	Emotion("Employee#jaw4","ET_HUK")
end

npc("jawaii_in","Employee#jaw5",spr_4_F_07,30,94,4,0,0,"jawaii_in_Employee#jaw5_3094")
function jawaii_in_Employee#jaw5_3094()
	dialog "[Employee Tonia]"
	dialog "Welcome to Jawaii Tavern~"
	if (getvar(VAR_ISMARRIED) == 1) then
		wait()
		dialog "[Employee Tonia]"
		dialog "Congratulations to both of you!"
		wait()
		dialog "[Employee Tonia]"
		dialog "^666666*Sigh...*^000000"
		dialog "^333333I hope those Single Army morons don't get drunk and do something stupid again..."
		close()
	elseif (getvar(VAR_ISMARRIED) == 0) then
		dialog "Wait a sec. You're...!"
		wait()
		dialog "[Employee Tonia]"
		dialog "Hey--!"
		dialog "You're not welcome here!"
		dialog "S-Stop drinking! Right this instant!"
		close()
	else
		dialog "I hope you will have a good time."
	end
	return
OnCommand: "welcome"
	Emotion("Employee#jaw5","ET_CHUP")
end
OnCommand: "solo"
	Emotion("Employee#jaw5","ET_HUK")
end

npc("jawaii_in","Employee#jaw6",spr_4_F_07,30,96,4,0,0,"jawaii_in_Employee#jaw6_3096")
function jawaii_in_Employee#jaw6_3096()
	dialog "[Employee Kay]"
	dialog "Welcome to Jawaii Tavern~"
	if (getvar(VAR_ISMARRIED) == 1) then
		wait()
		dialog "[Employee Kay]"
		dialog "Oh gosh...!"
		dialog "Lately, I've been dealing with too many drunks in this place! It's been really hard for me to take care of it all..."
		close()
	elseif (getvar(VAR_ISMARRIED) == 0) then
		dialog "I understand that you want to relax and take a break, but please be careful and don't drink too much."
		close()
	else
		dialog "I hope you will have a good time."
	end
	return
OnCommand: "welcome"
	Emotion("Employee#jaw6","ET_CHUP")
end
OnCommand: "solo"
	Emotion("Employee#jaw6","ET_HUK")
end

npc("jawaii_in","Employee#jaw7",spr_4_F_07,30,98,4,0,0,"jawaii_in_Employee#jaw7_3098")
function jawaii_in_Employee#jaw7_3098()
	dialog "[Employee Amy]"
	dialog "Welcome to Jawaii Tavern~"
	if (getvar(VAR_ISMARRIED) == 1) then
		dialog "Oh! You and your partner look perfect for each other. Like, um,"
		dialog "a gun and a bullet! No...?"
		wait()
		dialog "[Employee Amy]"
		dialog "How about..."
		dialog "Milk and cookies?"
		dialog "Gin and tonic?"
		dialog "Jackie Tucker"
		dialog "and Chris Chan...?"
		dialog "Ummmm...."
		close()
	elseif (getvar(VAR_ISMARRIED) == 0) then
		wait()
		dialog "[Employee Amy]"
		dialog "Hmm, I don't think this place is for you. But, I see no problem in letting you drink and have a good time, so long as you don't"
		dialog "make a fuss."
		close()
	else
		dialog "I hope you will have a good time."
	end
end
OnCommand: "welcome"
	Emotion("Employee#jaw7","ET_CHUP")
end
OnCommand: "solo"
	Emotion("Employee#jaw7","ET_HUK")
end

npc("jawaii_in","Employee#jaw8",spr_4_F_07,30,100,4,0,0,"jawaii_in_Employee#jaw8_30100")
function jawaii_in_Employee#jaw8_30100()
	dialog "[Employee Yasmine]"
	dialog "Welcome to Jawaii Tavern~"
	if (getvar(VAR_ISMARRIED) == 1) then
		dialog "Just like the moon and the stars, you and your partner look perfect together. I'm really happy for you!"
		close()
	elseif (getvar(VAR_ISMARRIED) == 0) then
		wait()
		dialog "[Employee Yasmine]"
		dialog "You don't look like you belong here, but I hope you find your perfect match one of these days. Have fun!"
		close()
	else
		dialog "I hope you will have a good time."
	end
end
OnCommand: "welcome"
	Emotion("Employee#jaw8","ET_CHUP")
end
OnCommand: "solo"
	Emotion("Employee#jaw8","ET_HUK")
end

hiddenwarp("jawaii_in","jawaii_in_jaw_em_order_2896",28,96,3,3)
function jawaii_in_jaw_em_order_2896()
	if getvar(VAR_ISMARRIED) == 1 then
		cmdothernpc("Employee#jaw8","welcome")
		cmdothernpc("Employee#jaw7","welcome")
		cmdothernpc("Employee#jaw6","welcome")
		cmdothernpc("Employee#jaw5","welcome")
		cmdothernpc("Employee#jaw4","welcome")
		cmdothernpc("Employee#jaw3","welcome")
		cmdothernpc("Employee#jaw2","welcome")
		cmdothernpc("Employee#jaw1","welcome")
	else
		cmdothernpc("Employee#jaw8","solo")
		cmdothernpc("Employee#jaw7","solo")
		cmdothernpc("Employee#jaw6","solo")
		cmdothernpc("Employee#jaw5","solo")
		cmdothernpc("Employee#jaw4","solo")
		cmdothernpc("Employee#jaw3","solo")
		cmdothernpc("Employee#jaw2","solo")
		cmdothernpc("Employee#jaw1","solo")
	end
end

npc("jawaii_in","Waitress#jawaii",spr_1_F_PUBGIRL,15,104,0,0,0,"jawaii_in_Waitress#jawaii_15104")
function jawaii_in_Waitress#jawaii_15104()
	local max_max_c = CheckMaxCount 1201 1
	if max_max_c == 1 then
		dialog "^3355FF * Wait a minute! *"
		dialog "You're carrying too many items with you right now. Please store some of your things into Kafra Storage and try again.^000000"
		close()
		return
	end
	if (getvar(VAR_ISMARRIED) == 1) then
		dialog "[Waitress]"
		dialog "Hello,"
		dialog "how can I help you?"
		Emotion("Waitress#jawaii","ET_CHUP")
		wait()
		local mresulta = menu("Give me food.","Bring me drink.","Where's the bar?")
		if mresulta == 1 then
			dialog "[Waitress]"
			dialog "You can have"
			dialog "1 Meat for 1,000 zeny."
			dialog "Would you like one?"
			wait()
			local mresultb = menu("Yes.","Wha--! It's too expensive!")
			if mresultb == 1 then
				if (getvar(VAR_MONEY) > 999) then
					dropgold(1000)
					getitem("Meat",1)
					dialog "[Waitress]"
					dialog "There you go~"
					dialog "Enjoy your meal~!"
					close()
				else
					dialog "[Waitress]"
					dialog "I'm sorry but..."
					dialog "This isn't enough money..."
					close()
				end
			elseif mresultb == 2 then
				dialog "[Waitress]"
				dialog "If you"
				dialog "need anything,"
				dialog "please let me know."
				close()
			end
		elseif mresulta == 2 then
			dialog "[Waitress]"
			dialog "You can have"
			dialog "1 Yellow Potion"
			dialog "at 1,000 zeny."
			dialog "Would you like one?"
			wait()
			local mresultb = menu("Yes.","Wha--! It's too expensive!")
			if mresultb == 1 then
				if (getvar(VAR_MONEY) > 999) then
					dropgold(1000)
					getitem("Yellow_Potion",1)
					dialog "[Waitress]"
					dialog "There you go~"
					dialog "Enjoy your meal~!"
					close()
				else
					dialog "[Waitress]"
					dialog "I am sorry but you don't have enough money?!"
					close()
				end
			elseif mresultb == 2 then
				dialog "[Waitress]"
				dialog "If you"
				dialog "need anything,"
				dialog "please let me know."
				close()
			end
		elseif mresulta == 3 then
			dialog "[Waitress]"
			dialog "Oh, just go toward the center"
			dialog "of the tavern. I hope you have"
			dialog "a good time, but be careful and"
			dialog "don't drink too much! Have fun!"
			close()
		end
	else
		Emotion("Waitress#jawaii","ET_HUK")
		dialog "[Waitress]"
		dialog "Hey, hey...!"
		dialog "I have no idea"
		dialog "why you're here..."
		wait()
		dialog "[Waitress]"
		dialog "But we don't tolerate singles messing around with the happily married couples around here."
		dialog "Just have your drink"
		dialog "and then leave!"
		wait()
		local mresulta = menu("I'm a member of Single Army!!","...I just wanted to congratulate them...")
		if mresulta == 1 then
			dialog "[Employee]"
			dialog "Yeah, right."
			dialog "Knock it off already."
			dialog "Why can't you be happy"
			dialog "for other people?!"
			wait()
			dialog "[Employee]"
			dialog "^666666*Sigh*^000000"
			dialog "You will be welcome"
			dialog "here when you visit"
			dialog "with your partner, okay?"
			close()
		elseif mresulta == 2 then
			dialog "[Employee]"
			dialog "Huh? Did you just"
			dialog "say you wanted to"
			dialog "congratulate them?"
			dialog "Oh, you must be close"
			dialog "friends with one"
			dialog "of the couples..."
			wait()
			dialog "[Employee]"
			dialog "I'm sorry!"
			dialog "Let me apologize"
			dialog "for my rudeness."
			dialog "I hope you have"
			dialog "a good time."
			close()
		end
	end
end

npc("jawaii_in","Bartender#jaw",spr_1_ETC_01,28,124,0,0,0,"jawaii_in_Bartender#jaw_28124")
function jawaii_in_Bartender#jaw_28124()
	local name = PcName()
	dialog "[Bartender]"
	dialog "Welcome to the"
	dialog "Jawaii Tavern bar."
	dialog "What would you"
	dialog "like to drink?"
	wait()
	if (getvar(VAR_MONEY) < 99) then
		local r_jaw = math.random(1 100
		if (r_jaw > 29) then
			dialog "[Bartender]"
			dialog "Hm, I'm sorry"
			dialog "but you do not"
			dialog "have enough"
			dialog "money for a drink."
			close()
		else
			dialog "[Bartender]"
			dialog "....Hmm..."
			wait()
			dialog("[","+name+"]"")
			dialog "Hey...!"
			dialog "Bartender..."
			dialog "Gimmie one more."
			wait()
			dialog "[Bartender]"
			dialog "Okay..."
			dialog "It's on me."
			dialog "Have a drink."
			wait()
			dialog("[","+name+"]"")
			dialog "Thank you."
			close()
			hpdrain(100)
			return
		end
	else
		local roof_jaw = 0
		while (1) do
			local mresulta = menu("Follow Bartender's Recommendation.","I want a Gunslinger.","I want a Cobo.","I want a Bomb.","I want a Boogieman.")
			if mresulta == 1 then
				roof_jaw("=","roof_jaw","+",3)
				if (roof_jaw > 9) then
					dialog "[Bartender]"
					dialog "Hmmm..."
					dialog "You seem to have"
					dialog "had enough to drink."
					dialog "Are you sure you'll be okay?"
					wait()
					dialog("[","+name+"]"")
					dialog "Bartender,"
					dialog "I'm so depressed"
					dialog "because of..."
					dlgwritestr()
					dialog(,"+inputstr+"..."")
					wait()
					dialog "[Bartender]"
					dialog "There you go..."
					dialog "Let me make"
					dialog "a ^0000FF'Special J&Z'^000000 for you."
					dialog "And this is on me."
					wait()
					dialog("[","+name+"]"")
					dialog "Thank you..."
					dialog "So much..."
					hpdrain(100)
					break
					close()
				else
					dropgold(100)
					local chu = math.random(1 4
					choose chu
					if mresulta == 1 then
						dialog "[Bartender]"
						dialog "Hmm..."
						dialog "How about this cocktail?"
						wait()
						dialog "[Bartender]"
						dialog "I recommend"
						dialog "a '^0000FFBarcadie 150^000000.'"
						dialog "It's the drink of pirates!"
						wait()
						dialog "^3355FFYou examined"
						dialog "the small glass"
						dialog "containing a glossy"
						dialog "brown liquid...^000000"
						wait()
						dialog "^3355FFAlthough the glass is tiny and only holds a small amount, the liquid inside still smells pretty dangerous...^000000"
						wait()
						dialog "[Bartender]"
						dialog "It's strong and flammable,"
						dialog "so you might feel like your"
						dialog "throat is burning."
						wait()
						dialog "^3355FFYou gulped it down.^000000"
						ShowEffect(,"EF_VENOMDUST")
						hpdrain(20)
						wait()
					elseif mresulta == 2 then
						dialog "[Bartender]"
						dialog "Hmm..."
						dialog "How about this cocktail?"
						wait()
						dialog "[Bartender]"
						dialog "I recommend a '^0000FFBlack Russian Double^000000.' It will make you dream of lying in a vast Russian field..."
						wait()
						dialog "^3355FFYou examined the large glass holding a dark brown liquid chilled with ice cubes. There's a faint sweetness in the aroma, as well"
						dialog "a musk that reminds you of an old, mustached man.^000000"
						wait()
						dialog "[Bartender]"
						dialog "I suggest you take your time"
						dialog "drinking this since it's very strong. The Black Russian Double is rumored to be the favorite drink of the Russian mafia."
						wait()
						dialog "^3355FFYou drank it sip by sip,"
						dialog "savoring its rich,"
						dialog "robust flavor.^000000"
						ShowEffect(,"EF_FIREIVY")
						hpdrain(20)
						wait()
					elseif mresulta == 3 then
						dialog "[Bartender]"
						dialog "So..."
						dialog "How about this..?"
						wait()
						dialog "[Bartender]"
						dialog "Why don't you try"
						dialog "a '^0000FFKiss of Fire"
						dialog "the Spinbird Kick^000000?'"
						wait()
						dialog "[Bartender]"
						dialog "Don't be fooled by its sweet scent or beautiful red color. This is one of the strongest drinks around."
						wait()
						dialog "^3355FFYou receive a crystal cocktail glass with a little bit of sugar sprinkled around the rim. It has"
						dialog "a sweet fragrance that makes your mouth water. However, you can also feel that it is a dangerously strong cocktail."
						wait()
						dialog "[Bartender]"
						dialog "Lick the sugar before taking a sip. That will make it taste a little sweeter and will soften the taste."
						wait()
						dialog "^3355FFYou carefully took a sip.^000000"
						ShowEffect(,"EF_DECAGILITY")
						hpdrain(20)
						wait()
					elseif mresulta == 4 then
						dialog "[Bartender]"
						dialog "I see..."
						dialog "Let me think"
						dialog "of something"
						dialog "you might like."
						wait()
						dialog "[Bartender]"
						dialog "Okay, how about"
						dialog "a '^0000FFWhite Margarita'^000000?'"
						wait()
						dialog "[Bartender]"
						dialog "You will smell a sourish lemon scent which makes your mouth water. As you taste it, you will be filled with a pleasant, comforting warmth that spreads throughout your body."
						wait()
						dialog "^3355FFYou receive a fancy cocktail glass with salt and lemon juice sprinkled on the rim. Its sour scent does make your mouth water. How could something so appetizing be dangerous?"
						wait()
						dialog "[Bartender]"
						dialog "It has a sweet and sour taste so it's favored by female customers"
						dialog "as well. I guarantee that you will enjoy its flavor."
						wait()
						dialog "^3355FFYou gulp the delicious"
						dialog "Margarita down in one sip.^000000""
						ShowEffect(,"EF_MAGNUMBREAK")
						hpdrain(20)
						wait()
					end
				end
			elseif mresult` == 2 then
				if (roof_jaw > 8) then
					dialog "[Bartender]"
					dialog "It's on me."
					wait()
					dialog("[","+name+"]"")
					dialog "Thank you..."
					dialog "Mr. Bartender..."
					hpdrain(100)
					break
					close()
				else
					dropgold(100)
					roof_jaw("=","roof_jaw","+",2)
					dialog "[Bartender]"
					dialog "There you go."
					wait()
					dialog "[Bartender]"
					dialog "When you want to look super cool, this will be the best drink for you. It's a strong drink with a particular scent, so people who drink Gunslingers are usually seen as having impressive of taste."
					wait()
					dialog "^3355FFYou received a simple glass containing a gray liquid. Although it smells faintly sweet, it looks like industrial strength liquor. It's time to summon your courage and take a sip~"
					wait()
					dialog "[Bartender]"
					dialog "That drink is bitter and sweet, just like life. Taste it with your tongue, don't drink it all at once."
					wait()
					dialog "^3355FFYou slowly drank some"
					dialog "of your Gunslinger drink.^000000"
					wait()
					dialog("[","+name+"]"")
					dialog "Yeeehaw~!"
					dialog "I'm a cowboy hero!"
					dialog "Bang Bang Bang!"
					wait()
					ShowEffect(,"EF_STEAL")
					hpdrain(10)
					wait()
				end
			elseif mresult` == 3 then
				if (roof_jaw > 8) then
					dialog "[Bartender]"
					dialog "It's on me."
					wait()
					dialog("[","+name+"]"")
					dialog "Thank you..."
					dialog "Mr. bartender..."
					hpdrain(100)
					break
					close()
				else
					dropgold(100)
					roof_jaw("=","roof_jaw","+",2)
					dialog "[Bartender]"
					dialog "There you go."
					wait()
					dialog "[Bartender]"
					dialog "People say that the more you drink a mixed Cobo, the tastier it will be. It grows on you, kind of like the company of an old friend. This is a nice drink to have with anyone at anytime."
					wait()
					dialog "^3355FFThe Bartender brought a beautifully engraved glass holding a cobalt blue liquid and placed it in front of you. It smells pleasantly sweet and sour."
					wait()
					dialog "[Bartender]"
					dialog "Once you taste this once, you almost can't stop drinking. It tastes so smooth and goes"
					dialog "down even smoother."
					wait()
					dialog "^3355FFYou finished"
					dialog "your drink in 3 sips."
					dialog "Your mouth was filled"
					dialog "with a luxurious, sweet and"
					dialog "sour flavor.^000000"
					wait()
					dialog("[","+name+"]"")
					dialog "Aaaaaahhhhhh~!"
					dialog "This drink is really good!"
					ShowEffect(,"EF_SANCTUARY")
					hpdrain(10)
					wait()
				end
			elseif mresult` == 4 then
				if (roof_jaw > 8) then
					dialog "[Bartender]"
					dialog "It's on me."
					wait()
					dialog("[","+name+"]"")
					dialog "Thank you..."
					dialog "Mr. Bartender..."
					hpdrain(100)
					break
					close()
				else
					dropgold(100)
					roof_jaw("=","roof_jaw","+",2)
					dialog "[Bartender]"
					dialog "There you go."
					wait()
					dialog "[Bartender]"
					dialog("This is for one who wants to relive wild, youthful days, honor those who have fought for justice and liberty, or just to drink alcohol until they vomit stomach acid.","dialog","for one who wants to remember people fighting for liberty...")
					wait()
					dialog "^3355FFYou receive a tumbler filled with brown liquid. It a has a very think, machine like smell. It kind of reminds you of gunpowder.^000000"
					wait()
					dialog "[Bartender]"
					dialog "It might look too big to drink at once, but I suggest that you finish it in one gulp. If you drink it slowly, you'll pass out."
					wait()
					dialog "^3355FFYou firmly grabbed"
					dialog "the tumbler and"
					dialog "gulped it down.^000000"
					wait()
					dialog "^3355FFYou feel pretty hammered.^000000"
					ShowEffect(,"EF_BLASTMINEBOMB")
					hpdrain(10)
					wait()
				end
			elseif mresult` == 5 then
				if (roof_jaw > 8) then
					dialog "[Bartender]"
					dialog "It's on me."
					wait()
					dialog("[","+name+"]"")
					dialog "Thank you..."
					dialog "Mr. Bartender..."
					hpdrain(100)
					break
					close()
				else
					dropgold(100)
					roof_jaw("=","roof_jaw","+",1)
					dialog "[Bartender]"
					dialog "There you go."
					wait()
					dialog "[Bartender]"
					dialog "There are not many people who like this drink. But the ones that do like this drink, love it."
					wait()
					dialog "[Bartender]"
					dialog "Although it has a beautiful, appetizing color, its appearance can be misleading. Most people feel cold and empty after having some"
					dialog "of this."
					wait()
					dialog "^3355FFYou receive a crooked glass"
					dialog "filled with purple fluid. Although it smells pleasnt, you have a strange feeling of disgust as you draw it closer to your face."
					wait()
					dialog "[Bartender]"
					dialog "If you don't want to drink it, tell me now. But it might be good to try it once, just to experience it."
					wait()
					dialog "^3355FFYou took a sip of it and sighed.^000000"
					wait()
					dialog "^3355FFAnd promised yourself that you would never drink it ever again.^000000"
					ShowEffect(,"EF_HIT6")
					hpdrain(10)
					wait()
				end
			end
			dialog("[","+name+"]"")
			dialog "Master..."
			dialog "One more please..."
			wait()
		end
	end
end

npc("jawaii_in","Customer#jaw_1",spr_4W_M_01,43,115,0,0,0,"jawaii_in_Customer#jaw_1_43115")
function jawaii_in_Customer#jaw_1_43115()
	if (getvar(VAR_ISMARRIED) == 0) then
		if (getvar(VAR_MONEY) > 99) then
			dialog "[Buchi]"
			dialog "Grrrr..."
			dialog "Damn! I don't"
			dialog "like this place!"
			dialog "I don't like this at all!"
			wait()
			dialog "[Buchi]"
			dialog "I can't believe my eyes! Everyone else looks disgustingly happy! It makes me feel so miserable!"
			dialog "You agree, don't you?!"
			wait()
			dialog "[Buchi]"
			dialog "Grrrr..."
			dialog "Bartender!"
			dialog "Give me one more!"
		else
			dialog "[Buchi]"
			dialog "Hey, why aren't you drinking?"
			dialog "I guess you're all out of dough."
			dialog "But I know how you feel. Disgusted with all the lovey dovey around this place, aren't you?"
			wait()
			dialog "[Buchi]"
			dialog "Heh."
			dialog "Lemme buy"
			dialog "you a drink!"
			wait()
			dialog "[Buchi]"
			dialog "Drink this at once, and forget about your miserable life! Cheer up, you got the whole future ahead of you and a drink in front of you! Come on, now~!"
			wait()
			dialog "^3355FFHe ordered a JJ special for me.^000000"
			wait()
			local name = PcName()
			dialog("[","+","name","+"]"")
			dialog "Damn...!"
			dialog "Damn! I will be"
			dialog "the one who laughs last!"
			wait()
			dialog "^3355FFYou drank to your fill.^000000"
			close()
			hpdrain(100)
		end
	else
		dialog "[Buchi]"
		dialog "You look happy..."
		dialog "I hope you'll be"
		dialog "able to feel that"
		dialog "way forever..."
		dialog " "
		dialog "^666666*Hiccup...!*^000000"
		close()
	end
end

npc("jawaii_in","Customer#Cage",spr_4W_M_02,41,106,3,0,0,"jawaii_in_Customer#Cage_41106")
function jawaii_in_Customer#Cage_41106()
	if (getvar(VAR_ISMARRIED) == 1) then
		dialog "[Cage]"
		dialog "....Bah!"
		dialog "What are you so happy about?"
		dialog "After all, everyone knows marriage is a sham for desperate, lonely people!"
		wait()
		if (getvar(VAR_SEX) == 1) then
			dialog "[Cage]"
			dialog "I don't trust anybody!"
			dialog "You're a fool for chaining"
			dialog "yourself to some gorgeous"
			dialog "woman for life!"
			dialog "You hear me?!"
			dialog "A FOOL!"
		else
			dialog "[Cage]"
			dialog "Look at you!"
			dialog "You're a fool for"
			dialog "chaining yourself to"
			dialog "some pretty boy for life!"
			dialog "You hear me?! A FOOL!"
		end
		wait()
		dialog "[Cage]"
		dialog "The single life is"
		dialog "what it's all about!"
		dialog "Women may break my"
		dialog "spirit, but they'll never take..."
		dialog "MY FREEDOM!"
		close()
	else
		dialog "[Cage]"
		dialog "Drink, drink...!!"
		dialog "Eat, eat...!!"
		dialog "Join me,"
		dialog "my brother"
		dialog "in singlehood!"
		wait()
		dialog "[Cage]"
		dialog "We are free...!"
		dialog "We are free from"
		dialog "the hell of marriage...!"
		dialog "We are the sincere and"
		dialog "competent singles...!"
		close()
	end
end

npc("izlude","Honeymoon Helper#Izlude",spr_1_F_LIBRARYGIRL,171,185,3,0,0,"izlude_Honeymoon_Helper#Izlude_171185")
function izlude_Honeymoon_Helper#Izlude_171185()
	dialog "[Helper]"
	dialog "Newlyweds and"
	dialog "long time couples..."
	dialog "We invite you to Jawaii,"
	dialog "the honeymoon resort!"
	wait()
	local mresult` = menu("Jawaii?","Let's go to Jawaii~!","Cancel.")
	if mresult` == 1 then
		dialog "[Helper]"
		dialog "There is an island far, far away from the Rune-Midgard continent."
		dialog "It is a very quiet and beautiful island resort that only opens"
		dialog "its doors to couples."
		wait()
		dialog "[Helper]"
		dialog "This is an exclusive travel offer to the special honeymoon resort for Rune-Midgard's citizens. The price, 100,000 zeny, may be expensive, but you really get what you pay for."
		wait()
		dialog "[Helper]"
		dialog "I guarantee you that some of"
		dialog "the happiest moments you can"
		dialog "experience in your marriage will be on this island. Can you really put a price on that?"
		close()
	elseif mresult` == 2 then
		if getvar(VAR_ISMARRIED) == 0 then
			dialog "[Helper]"
			dialog "Errm..."
			dialog "Unfortunately, singles are not allowed on the island. Why don't you go forget your loneliness in the Prontera pub?"
			close()
		elseif (getvar(VAR_MONEY) > 99999) then
			dropgold(100000)
			dialog "[Helper]"
			dialog "Bon Voyage...!!"
			dialog "Let me guide"
			dialog "you to 'Jawaii!'"
			close()
			moveto("jawaii",245,125)
		else
			dialog "[Helper]"
			dialog "As I explained, you must have 100,000 zeny in order to visit Jawaii. Why don't you ask your partner for help in gathering the zeny for this trip?"
			close()
		end
	elseif mresult` == 3 then
		dialog "[Helper]"
		dialog "There's there no better way to share special, secluded moments with your beloved than through"
		dialog "a secret trip to a remote, exotic area."
		wait()
		dialog "[Helper]"
		dialog "A vacation in Jawaii could very well be the greatest gift that you could give to the one you love~"
		close()
	end
end

npc("jawaii","Mariner#toizu",spr_4W_SAILOR,239,112,7,0,0,"jawaii_Mariner#toizu_239112")
function jawaii_Mariner#toizu_239112()
	dialog "[Mariner]"
	dialog "This ship"
	dialog "is heading"
	dialog "towards ^666699Izlude^000000."
	dialog "Have you enjoyed your time in Jawaii? You should check to see"
	dialog "if you forgot anything before we go."
	wait()
	dialog "[Mariner]"
	dialog "Well, then."
	dialog "Would you like"
	dialog "to go back to Izlude?"
	wait()
	local mresult` = menu("Go back.","Cancel.")
	if mresult` == 1 then
		dialog "[Mariner]"
		dialog "Now, let me"
		dialog "guide you to"
		dialog "Izlude."
		close()
		moveto("izlude",176,182)
	elseif mresult` == 2 then
		dialog "[Mariner]"
		dialog "Take your time"
		dialog "and look around as"
		dialog "much as you like."
		dialog "Somehow,  this is not"
		dialog "a place that you can"
		dialog "visit often, you know?"
		close()
	end
end

npc("jawaii","Mariner#toalbe",spr_4W_SAILOR,122,263,5,0,0,"jawaii_Mariner#toalbe_122263")
function jawaii_Mariner#toalbe_122263()
	dialog "[Mariner]"
	dialog "This ship"
	dialog "is headed back"
	dialog "towards ^003399Alberta^000000."
	dialog "Have you enjoyed your time in Jawaii? You should check to see"
	dialog "if you forgot anything before we go."
	wait()
	dialog "[Mariner]"
	dialog "Now, are you"
	dialog "ready to go back"
	dialog "to Alberta?"
	wait()
	local mresult` = menu("Go back.","Cancel.")
	if mresult` == 1 then
		dialog "[Mariner]"
		dialog "Now, let me"
		dialog "take you back"
		dialog "to Alberta."
		close()
		moveto("alberta",192,157)
	elseif mresult` == 2 then
		dialog "[Mariner]"
		dialog "Yeah..."
		dialog "Try to enjoy your"
		dialog "vacation as much"
		dialog "as you can. We'll be"
		dialog "ready to leave when"
		dialog "you are."
		close()
	end
end

npc("jawaii","Tavern Lady",spr_1_F_PUBGIRL,188,218,7,0,0,"jawaii_Tavern_Lady_188218")
function jawaii_Tavern_Lady_188218()
	dialog "[Lady]"
	dialog "Oh, dear!"
	dialog "You're not going"
	dialog "to the tavern, are you?"
	wait()
	local mresult` = menu("No, I am not.","Hell yeah~")
	if mresult` == 1 then
		dialog "[Lady]"
		dialog "Whew~!"
		dialog "Thank goodness!"
		dialog "It's just that..."
		dialog "The tavern probably"
		dialog "isn't the best place for"
		dialog "you to enjoy yourself."
		elseif mresult` == 2 then
			dialog "[Lady]"
			dialog "Even though I work there, I still can't believe that kind of place exists! I mean, I thought alcohol was outlawed in the Rune-Midgarts Kingdom!"
			wait()
			dialog "[Lady]"
			dialog "I have no idea how singles are"
			dialog "able to find this place. But I've heard that lots of different people come here for different reasons."
			wait()
			dialog "[Lady]"
			dialog "I've even seen unmarried single people coming here just to get drunk! Oh! And for some reason, people have been disappearing"
			dialog "from the tavern!"
			wait()
			dialog "[Lady]"
			dialog "I wonder what's going on?"
			dialog "^666666*Sigh*^000000 I'm a waitress there, but still I just want to tell you not to go in there..."
			close()
	end
end

npc("jawaii","Jawaii Resident#heart",spr_4_F_07,220,235,3,0,0,"jawaii_Jawaii_Resident#heart_220235")
function jawaii_Jawaii_Resident#heart_220235()
	dialog "[Jawa Jawa]"
	dialog "You know what's"
	dialog "the most beautiful"
	dialog "place in Jawaii?"
	wait()
	dialog "[Jawa Jawa]"
	dialog "It's 'Heart Island,' which is just a little north of here. The water surrounding Heart Island is not that deep, so you can just walk across if you're careful."
	wait()
	dialog "[Jawa Jawa]"
	dialog "That's the best place to share an intimate moment with the person"
	dialog "you love. It's perfectly secluded and such a beautiful area."
	wait()
	dialog "[Jawa Jawa]"
	dialog "Of course, it's probably not"
	dialog "a good idea to go there by"
	dialog "yourself if you're single."
	dialog "You'd look like such"
	dialog "a pathetic loser!"
	close()
end

npc("jawaii","Jawaii Resident#desc1",spr_4_F_07,240,146,5,0,0,"jawaii_Jawaii_Resident#desc1_240146")
function jawaii_Jawaii_Resident#desc1_240146()
	dialog "[Waii Waii]"
	dialog "Welcome to Jawaii!"
	wait()
	dialog "[Waii Waii]"
	dialog "Here, you can enjoy your"
	dialog "honeymoon without worrying about any interruptions. You don't even have to bother with that notorious Single Army!"
	wait()
	dialog "[Waii Waii]"
	dialog "Well, there are a few monsters around, but you'll be okay as long as you don't attack them first. Think of them as the original residents of this island, another sight to enjoy."
	close()
end

npc("jawaii","Jawaii Resident#desc2",spr_4_F_07,168,247,5,0,0,"jawaii_Jawaii_Resident#desc2_168247")
function jawaii_Jawaii_Resident#desc2_168247()
	dialog "[Waja Waja]"
	dialog "Ah, you must be a tourist."
	dialog "If you're lost, just head West. Accomodations for newlyweds"
	dialog "are located in the western part of Jawaii. The lodging here is"
	dialog "pretty amazing."
	wait()
	dialog "[Waja Waja]"
	dialog "There are four different themed rooms, so you can choose one to your liking. There's a Guide around if you want to ask for more information."
	wait()
	dialog "[Waja Waja]"
	dialog "When you want to go back, please head to the NorthWest to board"
	dialog "a ship to Alberta. If you want to sail to Izlude, there's a ship waiting in the SouthEast."
	close()
end

npc("jawaii","Jawaii Resident#desc3",spr_4_F_07,165,121,1,0,0,"jawaii_Jawaii_Resident#desc3_165121")
function jawaii_Jawaii_Resident#desc3_165121()
	dialog "[Iwa Iwa]"
	dialog "Jawaii~"
	dialog "Jawa~ii~"
	dialog "Where you can"
	dialog "find happiness~"
	wait()
	dialog "[Iwa Iwa]"
	dialog "Oh, isn't it beautiful? You don't have to do anything other than relax and breathe in the peaceful atmosphere. That's one of the"
	dialog "best things about Jawaii."
	wait()
	dialog "[Iwa Iwa]"
	dialog "Ooh! Sometimes we hold"
	dialog "concerts on this stage. If you're good at singing, why don't you"
	dialog "go up on stage and sing"
	dialog "a song for us?"
	wait()
	dialog "[Iwa Iwa]"
	dialog "Jawaii~"
	dialog "Jawa~ii~"
	dialog "Where you can"
	dialog "find happiness~"
	close()
end

npc("jawaii","Employee#sroom",spr_4_M_NFMAN,141,200,3,0,0,"jawaii_Employee#sroom_141200")
function jawaii_Employee#sroom_141200()
	dialog "[Alowa]"
	dialog "W-Welcome...?"
	dialog "This is o-o-our"
	dialog "s-sweet room."
	dialog "We, we just c-cleaned"
	dialog "this r-room for you"
	dialog "o-of course."
	wait()
	dialog "[Alowa]"
	dialog "Th-The charge is is"
	dialog "1000 zeny p-p-per person?"
	dialog "P-please pay me the fee and"
	dialog "I,I'll let you in. I ssss...swear!"
	wait()
	dialog "[Alowa]"
	dialog "I, I'll also ca-carry your luggage. B-but pay me first. Otherwise, my bo-boss will be unhappy and... ^666666*Gulp*^000000"
	wait()
	dialog "[Alowa]"
	dialog "^333333Beat me to death...^000000"
	wait()
	local mresult` = menu("Use.","Cancel.")
	if mresult` == 1 then
		if (getvar(VAR_MONEY) > 999) then
			dialog "[Alowa]"
			dialog "T-Thank you ssso much!"
			dialog "L-Let open the room door"
			dialog "ffffor you. Thank y-you."
			dialog "Ha-have a good time."
			close()
			dropgold(1000)
			moveto("jawaii_in",116,64)
		else
			dialog "[Alowa]"
			dialog "Oh no! Oh no no no no no."
			dialog "Th-This isn't enough money?"
			dialog "I-I'm ssssorry, but my b-boss w-will beat me if I l-let you"
			dialog "in without paying..."
			close()
		end
	elseif mresult` == 2 then
		dialog "[Alowa]"
		dialog "^666666*Sniff*^000000"
		dialog "B-but I promise th-that this room is the nicest and cl-cleanest room! P-Please! C-come back!"
		Emotion("Employee#sroom","ET_CRY")
		close()
	end
end

npc("jawaii","Employee#antroom",spr_1_F_MERCHANT_02,108,199,5,0,0,"jawaii_Employee#antroom_108199")
function jawaii_Employee#antroom_108199()
	dialog "[Pine Oran]"
	dialog "Welcome to"
	dialog "the Antique room."
	wait()
	dialog "[Pine Oran]"
	dialog "This room provides lovers with"
	dialog "an atmosphere of plush elegance."
	dialog "Every comfort is provided for"
	dialog "young couples in this room."
	wait()
	dialog "[Pine Oran]"
	dialog "All the rooms may have the same basic structure, but each of them has their own unqiue interior to suit the tastes of different people."
	wait()
	dialog "[Pine Oran]"
	dialog "If you would like to lodge here, it is required to pay a 1,000 zeny fee for each person before entering. Since you're here to make fond memories of your honeymoon,"
	dialog "you should stay in the nicest room."
	wait()
	dialog "[Pine Oran]"
	dialog "Do not hesitate to let me know when you've decided on the Antique Room. Once you've made your choice,"
	dialog "I will guide you there."
	wait()
	local mresult` = menu("Use.","Cancel.")
	if mresult` == 1 then
		if (getvar(VAR_MONEY) > 999) then
			dialog "[Pine Oran]"
			dialog "Thank you"
			dialog "for using"
			dialog "our services."
			dialog "Please..."
			dialog "Make yourself"
			dialog "comfortable."
			close()
			dropgold(1000)
			moveto("jawaii_in",129,110)
		else
			dialog "[Pine Oran]"
			dialog "I am sorry, but you don't seem to have enough money. If it's alright, why don't you check your current funds and see what you can do"
			dialog "about this situation?"
			close()
		end
	elseif mresult` == 2 then
		dialog "[Pine Oran]"
		dialog "Please..."
		dialog "Take your time."
		dialog "There should be no rush"
		dialog "when it comes to leisure."
		close()
	end
end

npc("jawaii","Employee#horoom",spr_4_F_04,107,189,5,0,0,"jawaii_Employee#horoom_107189")
function jawaii_Employee#horoom_107189()
	dialog "[Sharkie Rania]"
	dialog "I'll take you"
	dialog "to the Honey Room."
	dialog "It costs 1,000 zeny."
	wait()
	dialog "[Sharkie Rania]"
	dialog "So you wanna go?"
	wait()
	local mresult` = menu("Use.","Cancel.")
	if mresult` == 1 then
		if (getvar(VAR_MONEY) > 999) then
			dialog "[Sharkie Rania]"
			dialog "Eh, alright."
			dialog "Let's get going."
			close()
			dropgold(1000)
			moveto("jawaii_in",86,117)
		else
			dialog "[Sharkie Rania]"
			dialog "You..."
			dialog "Don't have"
			dialog "enough money."
			dialog "C'mon, romance"
			dialog "takes zeny, got it?"
			close()
		end
	elseif mresult` == 2 then
		dialog "[Sharkie Rania]"
		dialog "No prob."
		close()
	end
end

npc("jawaii","Employee#villroom",spr_4_F_04,112,173,7,0,0,"jawaii_Employee#villroom_112173")
function jawaii_Employee#villroom_112173()
	dialog "[Larks Rania]"
	dialog "Hello dear,"
	dialog "how are you?"
	dialog "Are you looking for"
	dialog "a room to stay in?"
	wait()
	dialog "[Larks Rania]"
	dialog "This is called the Villa Room."
	dialog "I recommend this room to people"
	dialog "who prefer to stay in a place with"
	dialog "a comfortable atmosphere"
	dialog "much like home."
	wait()
	dialog "[Larks Rania]"
	dialog "Just like all the other rooms,"
	dialog "the lodging charge is 1,000 zeny."
	dialog "I can guide you to the Villa Room"
	dialog "right now, if you wish. Would you"
	dialog "like to stay?"
	wait()
	local mresult` = menu("Use.","Cancel.")
	if mresult` == 1 then
		if (getvar(VAR_MONEY) > 999) then
			dialog "[Larks Rania]"
			dialog "Thank you~"
			dialog "Enjoy your stay."
			close()
			dropgold(1000)
			moveto("jawaii_in",87,75)
		else
			dialog "[Larks Rania]"
			dialog "Oh what a shame!"
			dialog "You don't seem"
			dialog "to have enough money...?"
			dialog "Why don't you ask your"
			dialog "partner to help you"
			dialog "with the charge?"
			close()
		end
	elseif mresult` == 2 then
		dialog "[Larks Rania]"
		dialog "No problem~"
		dialog "If you like, you may wish to check the Honey Room. Although the roomkeeper, Sharkie, is a shy girl, the room is really beautiful."
		close()
	end
end

npc("jawaii","Honeymoon Helper#Jawaii",spr_1_F_LIBRARYGIRL,214,168,5,0,0,"jawaii_Honeymoon_Helper#Jawaii_214168")
function jawaii_Honeymoon_Helper#Jawaii_214168()
	dialog "[Helper]"
	dialog "There is no place"
	dialog "better for having your"
	dialog "honeymoon than Jawaii."
	wait()
	dialog "[Helper]"
	dialog "Why don't you make the best of your time here, and make a lot of sweet memories that you will cherish for years to come?"
	wait()
	dialog "[Helper]"
	dialog "Mementos that remind you of your happy times can be your most precious possessions. Like your wedding ring, for instance, or the tuxedo and wedding dress worn during your wedding ceremony..."
	wait()
	dialog "[Helper]"
	dialog "Even if the wedding ceremony"
	dialog "is over, isn't it nice to look back upon the happy memories of your marriage ceremony? With the magical photo album at a cheap price, now you can!"
	wait()
	dialog "[Helper]"
	dialog "Its name is..."
	dialog "'Sweet Memory of Marriage'!!"
	wait()
	dialog "[Helper]"
	dialog "It will instantly bring you to the wedding hall with magic power!"
	dialog "And it only costs 50,000 zeny..."
	wait()
	local mresult` = menu("I shall buy it.","No, thanks.")
	if mresult` == 1 then
		if (getvar(VAR_MONEY) > 49999) then
			dropgold(50000)
			getitem("Memory_Of_Wedding",1)
			dialog "[Helper]"
			dialog "Thank you very much~!"
			dialog "Please remember, you"
			dialog "should use this with your"
			dialog "partner in a place that is"
			dialog "special to the both of you."
			close()
		else
			dialog "[Helper]"
			dialog "'Sweet Memory of Marriage' is 50,000 zeny. But don't seem to have enough money with you right now. Maybe you and your partner could help each other to buy the Sweet Memory of Marriage?"
			close()
		end
	elseif mresult` == 2 then
		dialog "[Helper]"
		dialog "Even if your relationship ends,"
		dialog "the memories the both of you have shared will remain forever..."
		close()
	end
end

trader("jawaii","Ice Cream Guy","4_M_03",186,174,3,0,0)
OnInit:()
	sellitem Ice_Cream
	sellitem Ice_Cream
	sellitem Ice_Cream
	sellitem Ice_Cream
	sellitem Ice_Cream
	sellitem Ice_Cream
	sellitem Ice_Cream
end
