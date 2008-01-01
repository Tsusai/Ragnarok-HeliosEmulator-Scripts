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
-- | 28/11/2006 : Added 1st Version. [Muad_Dib]                  |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |        errors on dlgwrite and input lines                   |
-- |                                                             |
-- \____________________________________________________________/

npc("alberta_in","Hair Dresser",spr_4_F_02,55,142,7,0,0,"alberta_in_Hair_Dresser_55142")
function alberta_in_Hair_Dresser_55142()
	dialog "[Veronica]"
	dialog "Welcome to Veronica's hair salon."
	dialog "How can I help you?"
	wait()
	local mresulta = menu("See available hair styles.","Change hair style.","End conversation.")
	if mresulta == 1 then
		dialog "[Veronica]"
		dialog "We have a total of 19 styles, available from no.1 to no.19."
		dialog "Which one do you want to see?"
		dialog "If you wish to cancel,"
		dialog "please enter 0."
		wait()
		dlgwrite(0,19)
		if error then
			dialog "[Veronica]"
			dialog "Oops, I'm sorry, but that"
			dialog "style is not available."
			dialog "Remember to enter a number"
			dialog "from 1 to 19."
			wait()
		elseif input == 0 then
			showimage("hair_f_01.bmp",255)
			dialog "[Veronica]"
			dialog "So, how do you like the style?"
			dialog "Feel free to ask me about any"
			dialog "available hairstyle. It will"
			dialog "be my pleasure to style your"
			dialog "hair."
			close()
			return
		else
			if getvar(VAR_SEX) == 1 then
				if input < 10 then
					showimage("hair_m_0.bmp",4)
				else
					showimage("hair_m_.bmp",4)
				end
			else
				if input < 10 then
					showimage("hair_f_0.bmp",4)
				else
					showimage("hair_f_.bmp",4)
				end
			end
			--choose input // Errored with expecting =
			if mresulta == 1 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Play Dead' style!"
					dialog "It's a nice, basic haircut."
					dialog "I notice that usually the"
					dialog "cute, conversative types seem"
					dialog "to prefer this style."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'First Aid' style!"
					dialog "The shoulder length tresses"
					dialog "are straightened for those"
					dialog "no nonsense adventurers. It"
					dialog "seems to be the style of"
					dialog "choice for Novices."
					close()
				end
			elseif mresulta == 2 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's the 'Two Handed Sword"
					dialog "Mastery' style! It's perfect for"
					dialog "for Swordmen who might muss their"
					dialog "hair while swinging their swords"
					dialog "all day long."

					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Bash' style!"
					dialog "For the powerful woman that's"
					dialog "not afraid to get a little"
					dialog "blood on her hands, but knows"
					dialog "how great her hair will look"
					dialog "while wildly flailing a sword."
					close()
				end
			elseif mresulta == 3 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Napalm Beat' style!"
					dialog "It's a unique look with a hint"
					dialog "of eccentricity that's offset"
					dialog "with a helping of elegance."
					dialog ""
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Frost Diver' style!"
					dialog "The pigtails lend an innocent,"
					dialog "demure look for those Mages"
					dialog "and Wizards that usually scare"
					dialog "off the boys with their spells."
					close()
				end
			elseif mresulta == 4 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's the 'Double Strafe'"
					dialog "style! The arrangement of the"
					dialog "hair conducts ambient static"
					dialog "electricity, naturally clearing"
					dialog "the mind. At least, that's what"
					dialog "I was taught in fashion school."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Arrow Shower' style!"
					dialog "For the Bowswoman who doesn't"
					dialog "want fashion to interfere with"
					dialog "her depth perception. Much more"
					dialog "attractive than those horrid"
					dialog "granny-style hairbuns."
					close()
				end
			elseif mresulta == 5 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Angelus' style!"
					dialog "It's for calm and devout people,"
					dialog "as well as those bashful,"
					dialog "mild-mannered types."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Heal' style!"
					dialog "This is in trend among"
					dialog "Priests and Acolytes since"
					dialog "this style is appropriate"
					dialog "for formal situations, but"
					dialog "is also practical in battle."
					close()
				end
			elseif mresulta == 6 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Push Cart' style!"
					dialog "It was based on the design of a"
					dialog "cart...at least, that's what"
					dialog "I learned in beautician school."
					close()
				else
					dialog "[Veronica]"
					dialog "Ooh, that's 'Vending' style!"
					dialog "It's the hairdo of money"
					dialog "makers...and if I may say so,"
					dialog "it's also economical."
					close()
				end
			elseif mresulta == 7 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Ooh, that's 'Envenom' style!"
					dialog "It looks great on Thieves and"
					dialog "and Assassins when they're"
					dialog "out poisoning people and animals."
					dialog "It's fashion for the aggressive"
					dialog "and eclectic~!"
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Double Attack' style!"
					dialog "The adorable pigtail, paired with"
					dialog "those provacative bangs are sure"
					dialog "to help you steal the heart of"
					dialog "some cute guy."
					close()
				end
			elseif mresulta == 8 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Bowling Bash' style!"
					dialog "A popular style for Knights, its"
					dialog "manly, rugged look tends to"
					dialog "attract all of the ladies,"
					dialog "and looks great on men with"
					dialog "strong chins."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Gloria' style!"
					dialog "It's very elegant and looks"
					dialog "great on holy Priests. This"
					dialog "style is most attractive to"
					dialog "ladies who aren't that used"
					dialog "to fighting with their hands."
					close()
				end
			elseif mresulta == 9 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Venom Dust' style!"
					dialog "Definitely a look for rebels,"
					dialog "the sweeping, yet decidedly"
					dialog "luxorious locks seems to enchant"
					dialog "girls with a fatal attraction."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'SP Recovery' style!"
					dialog "To add more body to the special"
					dialog "style of these bangs, I use a"
					dialog "special conditioner that makes"
					dialog "you feel like you're regaining SP"
					dialog "...Although, it acutally doesn't."
					close()
				end
			elseif mresulta == 10 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Turn Undead' style!"
					dialog "This is popular among Priests"
					dialog "that want a serious, yet a bit"
					dialog "of a wild, agressive look."
					dialog "Definitely more attractive"
					dialog "than the 'Holy Light' mullet."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Prepare Potion' style!"
					dialog "The flared out tresses are chosen"
					dialog "by beginning Alchemists, since"
					dialog "early, explosive experiments would"
					dialog "make their hair to stick out anyway."
					close()
				end
			elseif mresulta == 11 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Dragonology' style!"
					dialog "It's neat and clean cut, perfect"
					dialog "for studious people and looks"
					dialog "great with eyeglasses. This"
					dialog "is a fashion well suited to"
					dialog "intellectual types."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Grand Cross' style!"
					dialog "It's in style among those pious"
					dialog "Crusaders that need hair that"
					dialog "won't muss during fighting, yet"
					dialog "is respectable enough to attend"
					dialog "religious services."
					close()
				end
			elseif mresulta == 12 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Mace Mastery' style!"
					dialog "A lot of care goes into making"
					dialog "that tussled hair say, 'I don't"
					dialog "care how I look at all.'"

					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Intimidate' style!"
					dialog "The Rogue women seem to like"
					dialog "this style...although I imagine"
					dialog "that more of them would prefer"
					dialog "something wilder to match those"
					dialog "stockings..."
					close()
				end
			elseif mresulta == 13 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Thunder Storm' style!"
					dialog "This hot, flamboyant hairstyle"
					dialog "flares out wildly like thunder."
					dialog "...And you will too with this new look."

					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Spiritual Sphere"
					dialog "Absorption' style! There's a"
					dialog "charismatic quality to this"
					dialog "fashion: it's tough, slightly"
					dialog "tomboyish, but not so much"
					dialog "that it can't be cute."
					close()
				end
			elseif mresulta == 14 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Encore' style!"
					dialog "The elegant, flowing locks"
					dialog "fit well with Bards, or men who "
					dialog "appreciate the value of male"
					dialog "beauty."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Gypsy's Kiss' style!"
					dialog "Dancers seem to like this style,"
					dialog "although personally, I think"
					dialog "this fashion fits very well"
					dialog "with glasses."
					close()
				end
			elseif mresulta == 15 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Grimtooth' style!"
					dialog "Spiky and unkempt, this style"
					dialog "is a popular counterculture"
					dialog "street fashion. You might"
					dialog "not want to wear your hair"
					dialog "this way at a wedding, though."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Counter Attack' style!"
					dialog "This is an intimidating look for"
					dialog "girls that want to say 'You hit"
					dialog "me, I'll hit you back!' It really"
					dialog "emphasizes strong looking"
					dialog "foreheads and cheekbones."
					close()
				end
			elseif mresulta == 16 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Blitz Beat' style!"
					dialog "A funky and lively fashion,"
					dialog "this style was developed for a"
					dialog "Hunter who liked really long"
					dialog "bangs and wanted to see"
					dialog "through them at the same time."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Anke Snare' style!"
					dialog "The style style is specially"
					dialog "made for Hunters that don't like"
					dialog "to get their hair tangled..."
					dialog "After all, what kind of Hunter"
					dialog "lets their hair get trapped?"
					close()
				end
			elseif mresulta == 17 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Find Ore' style!"
					dialog "It's a practical, economical look"
					dialog "that is popular among Blacksmiths."
					dialog "Some swear that this fashion helps"
					dialog "them in finding ores, but where's"
					dialog "the science in that??"
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Hammer Fall' style!"
					dialog "For the woman that doesn't want"
					dialog "her hair to get in the way when"
					dialog "she's savagely swinging heavy"
					dialog "objects. Of course, this is a"
					dialog "Blacksmith favorite."
					close()
				end
			elseif mresulta == 18 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Fire Pillar' style!"
					dialog "It's a trendy look, in which"
					dialog "you cover one eye for that"
					dialog "intrigue effect. The element"
					dialog "of mystery is always in"
					dialog "fashion, don't you think?"
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Jupitel Thunder'"
					dialog "style! A look that strikes"
					dialog "like lightening, without"
					dialog "any of that annoying static"
					dialog "cling or muss. This fashion"
					dialog "looks great with Mage Hats."
					close()
				end
			elseif mresulta == 19 then
				if getvar(VAR_SEX) == 1 then
					dialog "[Veronica]"
					dialog "Oh, that's 'Guillotine Fist'"
					dialog "style! The smooth, slicked back"
					dialog "pompadour shows that you're"
					dialog "serious about your passion"
					dialog "for brawling... or just your passion."
					close()
				else
					dialog "[Veronica]"
					dialog "Oh, that's 'Whirlwind' style!"
					dialog "A favorite among the studious"
					dialog "Sages, the hair is tied back"
					dialog "in a stylish braid so that"
					dialog "it doesn't fly around after"
					dialog "casting those windy spells."
					close()
				end
			end
			return
		end
	elseif mresult == 2 then
		if getvar(VAR_CLEVEL) < 60 then
			dialog "[Veronica]"
			dialog "Oh, dear, you're looking fabulous with"
			dialog "your current hairstyle. Why don't you"
			dialog "try a new hair accessory rather than changing your look?"
			close()
			return
		elseif ((getvar(Counteragent) < 3) or (getvar(Mixture) < 3) or (getvar(Danggie) < 100) or (getvar(Short_Daenggie) < 100) or (getvar(Long_Hair) < 100) or (getvar(Golden_Hair) < 100) or (getvar(Glossy_Hair) < 100) or (getvar(VAR_MONEY) < 99800)) then
			dialog "[Veronica]"
			dialog "If you wish to change your"
			dialog "hairstyle, you should meet some"
			dialog "requirements. I suggest that you"
			dialog "write down all the items that"
			dialog "you will need."
			wait()
			dialog "[Veronica]"
			dialog "3 Counteragent,"
			dialog "3 Mixture,"
			dialog "100 Danggie,"
			dialog "100 Short Danggie,"
			dialog "100 Black Hair,"
			dialog "100 Golden Hair,"
			dialog "100 Glossy Hair, and lastly..."
			wait()
			dialog "[Veronica]"
			dialog "You will need 99,800 zeny."
			dialog "Please come back when you're"
			dialog "ready. I will make you look"
			dialog "fabulous. Hohohohoho~"
			close()
			return
		end
		local headpalette
		headpalette("=","v[VAR_HEADPALETTE]")
		dialog "[Veronica]"
		dialog "Okay now, please choose the style"
		dialog "you desire from styles no.1 to"
		dialog "no.19.  I will do my best to"
		dialog "make you look your very best."
		wait()
		dlgwrite(0,19)
		if error then
			dialog "[Veronica]"
			dialog "I am sorry, you chose an unavailable style."
			dialog "Make sure you enter the correct number."
			close()
			return
		elseif input == 0 then
			dialog "[Veronica]"
			dialog "You have canceled your request."
			close()
			return
		elseif getvar(VAR_HEAD) == input then
			dialog "[Veronica]"
			dialog "I am sorry, but you are already"
			dialog "wearing the style you have"
			dialog "requested. Would you please"
			dialog "choose a different style?"
			close()
		else
			if getvar(VAR_SEX) == 1 then
				if input < 10 then
					showimage("hair_m_0.bmp",4)
				else
					showimage("hair_m_.bmp",4)
				end
			else
				if input < 10 then
					showimage("hair_f_0.bmp",4)
				else
					showimage("hair_f_.bmp",4)
				end
			end
			dialog "[Veronica]"
			dialog("You have chosen style no. (","+","input","+",").")
			dialog "I shall proceed with your request."
			dialog "Would you mind?"
			wait()
			local mresulta = menu("No, I don't mind.","Yes, let me choose another one.")
			if mresulta == 1 then
				if headpalette == 0 then
					dialog "[Veronica]"
					dialog "Oh, my, you haven't dyed your hair"
					dialog "at all. You would look even more"
					dialog "fabulous if you dyed your hair..."
					dialog "Oh well, I will do it for free."
					dialog "So what kind of color would you like?"
					wait()
					local mresultb = menu("Red.","Yellow.","Purple.","Orange.","Green.","Blue.","White.","Dark Brown.","Cancel.")
					if mresultb == 1 then
						headpalette("=",8)
					elseif mresultb == 2 then
						headpalette("=",1)
					elseif mresultb == 3 then
						headpalette("=",2)
					elseif mresultb == 4 then
						headpalette("=",3)
					elseif mresultb == 5 then
						headpalette("=",4)
					elseif mresultb == 6 then
						headpalette("=",5)
					elseif mresultb == 7 then
						headpalette("=",6)
					elseif mresultb == 8 then
						headpalette("=",7)
					elseif mresultb == 9 then
						dialog "[Veronica]"
						dialog "Oh, I was gonna do it for free."
						dialog "Well, if you change your mind, please come again."
						dialog "The color of your hair enhances your look."
						close()
						return
					end
				end
				nude()
				dialog "[Veronica]"
				dialog "Now, let's get started. Try to"
				dialog "stay still, dear. If you move,"
				dialog "it might ruin the perfect look"
				dialog "I intend to give you. Trust me,"
				dialog "I will make you look fabulous~"
				wait()
				dialog "[Veronica]"
				dialog "- *snip snip snip snip* -"
				dialog "- *bzzzzzzz bzzzzzzz bzzzzzzz bzzzzzzz* -"
				dialog "- *snip snip snip snip* -"
				dialog "- *bzzzzzzz bzzzzzzz bzzzzzzz bzzzzzzz* -"
				wait()
				dropgold(99800)
				dropitem("Counteragent",3)
				dropitem("Mixture",3)
				dropitem("Danggie",100)
				dropitem("Short_Daenggie",100)
				dropitem("Long_Hair",100)
				dropitem("Golden_Hair",100)
				dropitem("Glossy_Hair",100)
				showimage("hair_f_01.bmp",255)
				dialog "[Veronica]"
				dialog "Alright, it's done~"
				dialog "I hope you like"
				dialog("this style no.(","+","input","+",").")
				dialog "Feel free to come back anytime"
				dialog "when you want a new hairstyle. Hohohohohoho~"
				--ChangeHairStyle input //Error with expecting =
				changepallete(0,"headpalette")
				close()
			elseif mresulta == 2 then
				dialog "[Veronica]"
				dialog "Okay then, please choose one"
				dialog "a hairstyle again. I believe"
				dialog "you will find the look that's best for you."
				close()
				return
			end
		end
	elseif mresult == 3 then
		dialog "[Veronica]"
		dialog "Everybody deserves the right to"
		dialog "pursue beauty. I hope that you"
		dialog "will find the right hairstyle"
		dialog "one of these days."
		close()
	end
end

npc("alberta","Roving Hair Dresser",spr_4_M_BARBER,33,141,7,0,0,"alberta_Roving_Hair_Dresser_33141")
function alberta_Roving_Hair_Dresser_33141()
	dialog "[Rui Vishop]"
	dialog "That Veronica..."
	dialog "Hah! Best hair dresser my ass."
	dialog "She's not the best hair dresser..."
	dialog "..."
	dialog "I am!"
	wait()
	dialog "[Rui Vishop]"
	dialog "I, Rui Vishop, the man to whom"
	dialog "all scalps are canvases"
	dialog "waiting to be transformed into"
	dialog "works of magnificent art~!"
	wait()
	local mresult = menu("What are you?","Do my hair, please!",".....")
	if mresult == 1 then
		dialog "[Rui Vishop]"
		dialog "Do you not know that I, Rui"
		dialog "Vishop, maestro of the shears"
		dialog "and sculptor of hair, am an"
		dialog "artist far ahead of his time?!"
		dialog "Well, I suppose an adventurer"
		dialog "like yourself wouldn't know..."
		wait()
		dialog "[Rui Vishop]"
		dialog "As a hair sculptor, I find joy"
		dialog "in bestowing upon others the"
		dialog "supreme favour of doing their"
		dialog "hairstyle at a reasonable price."
		wait()
		dialog "[Rui Vishop]"
		dialog "Recently, however, I happened to"
		dialog "overhear that some tyro has had"
		dialog "the audacity to call herself a"
		dialog "hair dresser."
		wait()
		dialog "[Rui Vishop]"
		dialog "So one day I went there,"
		dialog "pretending to be a customer."
		dialog "I was apalled to see the boring,"
		dialog "lifeless hairstyles that she was"
		dialog "giving all of her clients..."
		wait()
		dialog "[Rui Vishop]"
		dialog "It wasn't hard to notice that her"
		dialog "skills, or lack thereof, are a"
		dialog "joke. She brings shame to the"
		dialog "great and honorable"
		dialog "profession of hair dressing."
		dialog "A complete and utter disgrace!"
		wait()
		dialog "[Rui Vishop]"
		dialog "But the worst part was..."
		dialog "she forced her customers to"
		dialog "choose a hairstyle before she"
		dialog "styled their hair!"
		wait()
		dialog "[Rui Vishop]"
		dialog "That's not how talented hair"
		dialog "dressers do their job! She"
		dialog "should know what hair style will"
		dialog "fit a customer without ever"
		dialog "asking them!"
		wait()
		dialog "[Rui Vishop]"
		dialog "If by any chance you decide to"
		dialog "do your hair, don't even think"
		dialog "about giving her patronage."
		dialog "Instead, you may ask for my"
		dialog "services. I assure you, I am"
		dialog "faaaar better than her."
		wait()
		dialog "[Rui Vishop]"
		dialog "Do you understand? I mean, don't"
		dialog "let her ruin your hair needlessly!"
		dialog "You could get a Swordman to hack"
		dialog "away at your hair if you want a"
		dialog "hairstyle that horrible~!"
		close()
	elseif mresult == 2 then
		if getvar(VAR_CLEVEL) < 60 then
			dialog "[Rui Vishop]"
			dialog "Hmm, I must say, your current"
			dialog "style fits you best. Trust me, I know what I am saying."
			close()
		elseif ((getvar(VAR_MONEY) < 199800)) then
			dialog "[Rui Vishop]"
			dialog "Ah, I see that that you can"
			dialog "recognize genius when it is"
			dialog "right before you. In light"
			dialog "of your good taste, I will"
			dialog "only require money for my"
			dialog "services."
			wait()
			dialog "[Rui Vishop]"
			dialog "Simply pay me the small"
			dialog "fee of 199,800 zeny. You must"
			dialog "know that I am doing you a"
			dialog "huge favor by charging you"
			dialog "such a small amount. My"
			dialog "art is priceless, after all."
			close()
		else
			dialog "[Rui Vishop]"
			dialog "Alright, I will be taking my"
			dialog "199,800 zeny service charge now."
			wait()
			dialog "[Rui Vishop]"
			dialog "If you don't wish to do"
			dialog "this right now, though I can't"
			dialog "imagine why, you may ask that"
			dialog "stupid hair dresser to"
			dialog "do her clumsy work on you..."
			wait()
			local mresulta = menu("No, please do my hair.","Umm, I changed my mind.")
			if mresulta == 1 then
				dialog "[Rui Vishop]"
				dialog "O~k~a~y!"
				dialog "Now, let us begin~!"
				wait()
				nude()
				dialog "[Rui Vishop]"
				dialog "Wooooo~oooohhhh!! Toohhhhh~oooohhhh!!"
				wait()
				local style_r = math.random(1,19)
				local color_r = math.random(1,8)
				dialog "[Rui Vishop]"
				dialog "Woooooo~aaaaaaahhhhh!!"
				wait()
				dialog "[Rui Vishop]"
				dialog "Voila!"
				wait()
				dialog "[Rui Vishop]"
				dialog "Oh, great~ it's awesome!"
				dialog "Another Vishop masterpiece~"
				dialog "Once more I've outdone myself."
				dialog "It's such a unique and talented"
				dialog "style! Yes, I am the best! Wooohahahahahaha!"
				dropgold(199800)
				--ChangeHairStyle style_r //Errored with expecting =
				changepallete(0,"color_r")
				close()
			elseif mresulta == 2 then
				dialog "[Rui Vishop]"
				dialog "Bah! Alright! It's your decision."
				dialog "But don't blame me later!"
				dialog "One day you'll wake up, realize"
				dialog "you're ugly and regret not"
				dialog "having my genius shape every lock"
				dialog "of hair on your head."
				close()
			end
		end
	elseif mresult == 3 then
		dialog "[Rui Vishop]"
		dialog "What? What a shame!"
		dialog "Will you let that...that"
		dialog "charlatan of a hair dresser ruin"
		dialog "your hairstyle!? I'm sure the"
		dialog "heavens are crying tears of"
		dialog "pity at mankind's ignorance..."
		close()
	end
end
