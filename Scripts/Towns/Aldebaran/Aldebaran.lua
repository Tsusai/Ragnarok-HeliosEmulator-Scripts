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
-- | 01/05/2007 : Added 1st Version. [Muad_Dib]                  |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |        Removd the - and # operators from function names     |
-- |        Helios doesn;t liek these fo rsome reason.  Also     |
-- |        commented out kafra pass variables, helios doesnt    |
-- |        reconize them.   [Spre]                              |
-- \_____________________________________________________________/

npc("aldebaran","Forger Munster",spr_1_M_02,113,70,4,0,0,"aldebaran_Forger_Munster_11370")
function aldebaran_Forger_Munster_11370()
	dialog "[Munster]"
	dialog "My family used to live in Geffen. So I guess it was natural that we studied forging and eventually became Blacksmiths. Then, we finally moved to this town,"
	dialog "Al De Baran."
	wait()
	local mresulta = menu("About ^3355FFItem Upgrade^000000","Quit")
	if mresulta == 1 then
		dialog "[Munster]"
		dialog "My father was a famous blacksmith in Geffen, and he taught me a lot about forging equipment."
		wait()
		dialog "[Munster]"
		dialog "One of the fundamentals is that the success probability of upgrading an item depends on the level of the weapon."
		wait()
		dialog "[Munster]"
		dialog "For level 1 weapons, you may upgrade up to + 7 without the risk of breaking the weapon. Level 2 weapons can be upgraded to +6. Level 3 weapons can be upgraded to +5 safely."
		wait()
		dialog "[Munster]"
		dialog "For level 4 weapons, you can upgrade + 4 without too much risk. As for armors, you can upgrade them to +4. But if the upgrade for the equipment fails, it will be destroyed!"
		close()
	elseif mresulta == 2 then
		dialog "[Munster]"
		dialog "Hmm..."
		dialog "If you get a chance, try to visit my father's workshop here in Al de Baran. If I may say so, he's a pretty talented Blacksmith."
		close()
	end
end

npc("aldebaran","Smithing Guy",spr_1_M_JOBTESTER,64,104,4,0,0,"aldebaran_Smithing_Guy_64104")
function aldebaran_Smithing_Guy_64104()
	dialog "[Quatro]"
	dialog "Have you heard that a famous Blacksmith moved here from Geffen?"
	wait()
	local mresulta = menu("Famous Blacksmith?","End Conversation")
	if mresulta == 1 then
		dialog "[Quatro]"
		dialog "From what I've heard, he's one of those Blacksmiths that can upgrade your weapons and armor. When you upgrade a weapon, its attack strength is increased."
		wait()
		dialog "[Quatro]"
		dialog "For each upgrade level, attack strength increases by 2 for level 1 weapons. On level 2 weapons, 3 attack strength is added."
		wait()
		dialog "[Quatro]"
		dialog "On level 3 weapons, 5 attack strength is added for each level, and for level 4 weapons, 7 attack strength is added for each level."
		close()
	elseif mresulta == 2 then
		dialog "[Quatro]"
		dialog "This Blacksmith's family lives here, since his wife is sick and weak. Because of her condition, she needs to take medicinal herbs that grow near Al de Baran."
		wait()
		dialog "[Quatro]"
		dialog "They also have a dutiful son who's always helping out with the family business. I'm sure that kid will grow up to become a good Blacksmith like his father."
		close()
	end
end

npc("aldebaran","Young Man",spr_4_M_01,49,93,4,0,0,"aldebaran_Young_Man_4993")
function aldebaran_Young_Man_4993()
	dialog "[Miller]"
	dialog "Aren't level 4 weapons cool!"
	dialog "I can't believe such powerful"
	dialog "weapons exist!"
	wait()
	dialog "[Miller]"
	dialog "Well, they're rarely seen in the open market, but boss monsters will drop them by a low chance if you happen to be able to kill them."
	close()
end

npc("aldebaran","Shell Gathering Lady",spr_4W_F_01,81,61,4,0,0,"aldebaran_Shell_Gathering_Lady_8161")
function aldebaran_Shell_Gathering_Lady_8161()
	dialog "[Joanne]"
	dialog "I enjoy gathering shells from the sea. It's really fun and relaxing~"
	wait()
	local mresulta = menu("Shell Gathering?","End Conversation")
	if mresulta == 1 then
		dialog "[Joanne]"
		dialog "When you see bubbles popping up from the sand or muddy puddles, try digging into the ground a bit. You might find some shells underneath the ground!"
		wait()
		dialog "[Joanne]"
		dialog "Have you heard"
		dialog "of Ambernite?"
		dialog "That shell monster"
		dialog "is pretty tough~"
		wait()
		dialog "[Joanne]"
		dialog "It's usually seen at the beach near the west province of Prontera. If you ever try attacking it without being prepared, you might be in trouble."
		wait()
		dialog "[Joanne]"
		dialog "Ambernite is"
		dialog "pretty strong!"
		dialog "So look out for it!"
		close()
	elseif mresulta == 2 then
		dialog "[Joanne]"
		dialog "Ambernite is"
		dialog "pretty strong!"
		dialog "So look out for it!"
		close()
	end
end

npc("aldebaran","Canal Guy",spr_4W_M_01,46,129,4,0,0,"aldebaran_Canal_Guy_46129")
function aldebaran_Canal_Guy_46129()
	dialog "[Panama]"
	dialog "Al De Baran is known world wide as the City of Canals. The waterways really add a sophisticated, romantic touch to our fair city."
	wait()
	local mresulta = menu("About the Canals","End Conversation")
	if mresulta == 1 then
		dialog "[Panama]"
		dialog "Well, a canal is an artificial waterway used for travel,"
		dialog "shipping, or irrigation."
		wait()
		dialog "[Panama]"
		dialog "However, the canals over here are just for show. If we needed to transport anything, we just use the Kafra Corporation Teleport service!"
		close()
	elseif mresulta == 2 then
		dialog "[Panama]"
		dialog "I have that you will enjoy your stay in Al De Baran."
		close()
	end
end

npc("aldebaran","Forest Guy",spr_4W_M_02,67,154,4,0,0,"aldebaran_Forest_Guy_67154")
function aldebaran_Forest_Guy_67154()
	dialog "[Isenberg]"
	dialog "Mt. Mjolnir and Payon Forest."
	dialog "Both of those places are tough"
	dialog "to travel through."
	wait()
	local mresulta = menu("Mt.Mjolnir?","Payon Forest...?","End Conversation")
	if mresulta == 1 then
		dialog "[Isenberg]"
		dialog "To arrive here from Prontera or Geffen, you've got to cross the Mjolnir Mountains."
		wait()
		dialog "[Isenberg]"
		dialog "If you've made it here by foot without using the Kafra Teleportation service,"
		dialog "then good job!"
		wait()
		dialog "[Isenberg]"
		dialog "The Mjolnir Mountains are really steep, and it's full of aggressive and hostile monsters. So it's always a risk to travel through there alone."
		close()
	elseif mresulta == 2 then
		dialog "[Isenberg]"
		dialog "If you wish to visit Alberta or the city of Payon, you must first travel through the Payon Forest."
		wait()
		dialog "[Isenberg]"
		dialog "The Payon Forest is a winding, intricate maze where it's easy to get lost. Unless you concentrate and keep track of your path, you might be stuck wandering in that dangerous place."
		wait()
		dialog "[Isenberg]"
		dialog "Payon, the Archer Village, was built deep inside this steep and rugged forest so that it may be protected from outside invaders. So I guess that a good decision on their part."
		close()
	elseif mresulta == 3 then
		dialog "[Isenberg]"
		dialog "The huge mountains surrounding this town"
		dialog "blocks people from outside to come into this town."
		dialog "That may be a part of the reason how we have been able to"
		dialog "keep this beautiful canal and mysterious alchemy"
		dialog "without any influence from outside."
	end
end

npc("aldebaran","Slot Guy",spr_1_M_01,90,170,4,0,0,"aldebaran_Slot_Guy_90170")
function aldebaran_Slot_Guy_90170()
	dialog "[Epthiel]"
	dialog "Some weapons or armor have Slots where you can insert Cards obtained from monsters."
	wait()
	local mresulta = menu("About the number of Slots","Relation between Cards and Slots","End Conversation")
	if mresulta == 1 then
		dialog "[Epthiel]"
		dialog "Items dropped by monsters possess more Slots than ordinary weapons or armor sold in NPC shops."
		wait()
		dialog "[Epthiel]"
		dialog "I guess you can assume that an item with more Slots is more valuable than the same item with fewer Slots."
		close()
	elseif mresulta == 2 then
		dialog "[Epthiel]"
		dialog "Once a Card is inserted into a Slot, it is impossible to remove it. So please be careful when you insert Cards into weapons or armor."
		wait()
		dialog "[Epthiel]"
		dialog "Also, when you mouse over equipment in the Item Window or Vending Window, the name of the item will be followed by the number of its Slots in brackets."
		wait()
		dialog "[Epthiel]"
		dialog "For example, a Shield with 1 Slot, when moused over, would display the name 'Shield [1].'"
		wait()
		dialog "[Epthiel]"
		dialog "You may also right-click an item, and check the Card Slot window below the item description window for the number of Slots."
		close()
	elseif mresulta == 3 then
		dialog "[Epithiel]"
		dialog "Have you ever obtained a card from a monster?"
		close()
	end
end

npc("aldebaran","Phracon Guy",spr_1_M_02,117,181,4,0,0,"aldebaran_Phracon_Guy_117181")
function aldebaran_Phracon_Guy_117181()
	dialog "[Joy]"
	dialog "Level 1 weapons, which are the lowest grade, need a metal named ^3355FFPhracon^000000 in order to be upgraded."
	wait()
	local mresulta = menu("About Phracon","Advice about Phracon","End Conversation")
	if mresulta == 1 then
		dialog "[Joy]"
		dialog "Phracon is a pretty common metal and can be found all over the Rune-Midgard continent."
		wait()
		dialog "[Joy]"
		dialog "Although it lacks the strength of other metals, it's easy to find and obtain. You can get Phracons by killing monsters or by buying them in Forging Shops in towns."
		wait()
		dialog "[Joy]"
		dialog "When you no longer need Phracons because you are using higher level weapons, you can sell them for some zeny!"
		close()
	elseif mresulta == 2 then
		dialog "[Joy]"
		dialog "Well, I hear lots of monsters carry Phracons and will drop them once killed. Why don't you go hunting for them?"
		wait()
		dialog "[Joy]"
		dialog "It shouldn't be too difficult. Once I found a Phracon that dropped after killing a Bebe Savage! But if you're desperate, you can always buy them at the Forging Shop."
		close()
	elseif mresulta == 3 then
		dialog "[Joy]"
		dialog "Good luck with finding Phracons!"
	end
end

npc("aldebaran","Alchemy Guy",spr_1_M_03,121,231,4,0,0,"aldebaran_Alchemy_Guy_121231")
function aldebaran_Alchemy_Guy_121231()
	dialog "[Chemirre]"
	dialog "Alchemists, one of the 2nd Jobs, are able to create items out of several materials using knowledge from the ancient age of Al De Baran."
	wait()
	local mresulta = menu("About Alchemy in Payon","Definition of Alchemy",". . . . .","End Conversation")
	if mresulta == 1 then
		dialog "[Chemirre]"
		dialog "Most people don't know that there was an oriental form of Alchemy that developed in Payon."
		wait()
		dialog "[Chemirre]"
		dialog "These Payon Alchemists were able to create Gold out of different materials. However, Payon Alchemy never advanced as much as the Alchemy in Al De Baran."
		wait()
		dialog "[Chemirre]"
		dialog "Materials for Alchemy in Payon were scarse and interest in that field eventually waned. Now, you can only study Alchemy here in Al De Baran."
		wait()
		dialog "[Chemirre]"
		dialog "Still, I can't help but wonder what secrets were lost after the Payon art of Alchemy disappeared from the face of the Earth..."
		close()
	elseif mresulta == 2 then
		dialog "[Chemirre]"
		dialog "Alchemists specialize in chemical research in order to create useful items out of various things."
		wait()
		dialog "[Chemirre]"
		dialog "I also hear that they create all sorts of Potions, and can even summon certain monsters! It seems that their studies have all sorts of nifty applications."
		close()
	elseif mresulta == 3 then
		dialog "[Chemirre]"
		dialog "You are bored, aren't you?"
		dialog "Alright then, I will tell you a story about monster cards and item slots."
		dialog "As you already know, if you ever have obtained a monster card before,"
		wait()
		dialog "[Chemirre]"
		dialog "you can only insert a monster card to an item"
		dialog "that satisfies the card's location requirement."
		dialog "For instance, let's say, you have obtained a Poring Card."
		wait()
		dialog "[Chemirre]"
		dialog "When you right click on the card, you will see"
		dialog "its ability as LUK+2 and Perfect Dodge+1"
		dialog "and its location as 'Armor'. "
		wait()
		dialog "[Chemirre]"
		dialog "If you try to insert this card to a dagger with many slots,"
		dialog "it is not going to work because the card only can be inserted to"
		dialog "armor items."
		wait()
		dialog "[Chemirre]"
		dialog "Almost every armor items that are being sold"
		dialog "in town shops do not have slots on them."
		dialog "That means, you can only obtain"
		dialog "slotted armors by hunting monsters."
		wait()
		dialog "[Chemirre]"
		dialog "Ah, let me tell you how you can insert a card to an item."
		dialog "If you want to insert a card on your equipped armor,"
		dialog "you must unequip the armor first."
		dialog "And then, double click a card that you want to use."
		dialog "Then a list of armor, that you can insert the card, will be displayed."
		wait()
		dialog "[Chemirre]"
		dialog "It is not that complicated, is it?"
		close()
	elseif mresulta == 4 then
		dialog "[Chemirre]"
		dialog "You can talk about Rune Midgard's alchemy"
		dialog "without talking about the Al De Baran Alchemist Guild!"
		dialog "Long Live Alchemists!"
		close()
	end
end

npc("aldebaran","Little Kid",spr_1_M_SIZ,86,228,4,0,0,"aldebaran_Little_Kid_86228")
function aldebaran_Little_Kid_86228()
	dialog "[Bebe]"
	dialog "A while ago I went out for a walk toward Mt. Mjolnir with my pet Savage Bebe. His name is NukNuk!"
	dialog "We got attacked, but luckily we weren't hurt."
	wait()
	local mresulta = menu("Attacked?","About Mt.Mjolnir","End Conversation")
	if mresulta == 1 then
		dialog "[Bebe]"
		dialog "I was walking up a narrow path, and out of the blue, a giant and ugly plant started to attack me and NukNuk!"
		wait()
		dialog "[Bebe]"
		dialog "I was so surprised, so me and NukNuk had to run away. I threw rocks at it, but I don't think I hurt it. It must have been really strong!"
		wait()
		dialog "[Bebe]"
		dialog "What really surprised me was the plant that attacked me was a huge flower with the face of a person! So, look out for those. They're dangerous!"
		close()
	elseif mresulta == 2 then
		dialog "[Bebe]"
		dialog "Even though people are fascinated by the scenic beauty of Mt. Mjolnir, it's full of dangerous monsters!"
		wait()
		dialog "[Bebe]"
		dialog "There are Flowers, Insects, Bees, Butterflies and Moths that are big enough to kill you if you're not careful!"
		wait()
		dialog "[Bebe]"
		dialog "Then again, most of these monsters won't hurt you if you don't attack first. But some of them will attack you once they see you!"
		close()
	elseif mresulta == 3 then
		dialog "[Bebe]"
		dialog "By the way, where is my NukNuk...?"
		dialog "NukNuk! Come out!"
		close()
	end
end

npc("aldebaran","Insect Guy",spr_2_M_SWORDMASTER,159,242,4,0,0,"aldebaran_Insect_Guy_159242")
function aldebaran_Insect_Guy_159242()
	dialog "[Stromme]"
	dialog "Even to a strong Swordman, the Insects or Mt. Mjolnir pose a considerable threat. You've got to know your enemy before engaging it in battle!"
	wait()
	local mresulta = menu("About Insects","End Conversation")
	if mresulta == 1 then
		dialog "[Stromme]"
		dialog "Honey Bees, Butterflies and Moths seem like simple creatures, but that doesn't mean you should underestimate them."
		wait()
		dialog "[Stromme]"
		dialog "These Insects have evolved over time, and can counter attacks from threats like you adventurers!"
		wait()
		dialog "[Stromme]"
		dialog "There are also carnivorous Insects, such as praying Spiders, praying Mantises, and the millipede like Argiopes."
		wait()
		dialog "[Stromme]"
		dialog "These monsters have mutated and are too strong for a person at certain levels. You should especially watch out for Argiopes."
		wait()
		dialog "[Stromme]"
		dialog "Luckily, their eyesight is pretty bad, so it won't notice you if you walk a safe distance away from it."
		close()
	elseif mresulta == 2 then
		dialog "[Stromme]"
		dialog "No matter how harmless and pretty insects are,"
		dialog "take heed to not touch them."
		dialog "They are extremely strong unlike their innocent looking."
		dialog "Don't belittle the livings in the Mt. Mjolnir."
		close()
	end
end

npc("aldeba_in","RS125",spr_1_M_02,232,241,4,0,0,"aldeba_in_RS125_232241")
function aldeba_in_RS125_232241()
	dialog "[RS125]"
	dialog "I may sound unhuman rather robotic"
	dialog "however, I hope you will not be afraid of me. I am as humane as you are."
	wait()
	dialog "[RS125]"
	dialog "I may have a machine heart and I may disturb you with loud noises from the heart,"
	dialog "that will never stop me from running for future of Al De Baran."
	wait()
	local mresulta = menu("Listen to his story.","End Conversation")
	if mresulta == 1 then
		dialog "[RS125]"
		dialog "It's been 3 years already."
		dialog "My brother 996 used to be a short track athlete in the Al De Baran city field team."
		dialog "Back then, people gave him a nickname, 'Al De Baran's Pco Peco',"
		dialog "for his amazingly fast legs..."
		wait()
		dialog "[RS125]"
		dialog "He became so popular for his exciting play,"
		dialog "so everytime when the 'Al De Baran Turbo Track' was held once every 4 years,"
		dialog "many people from all over the continent came to this city only to see my brother."
		dialog "I was his manager at the time and I was so stressed out because of his fans."
		wait()
		dialog "[RS125]"
		dialog "However, there is nothing last forever..."
		dialog "One day, a girl from Payon beat my brother from a game."
		wait()
		dialog "[RS125]"
		dialog "My brother couldn't accept the fact that he lost the game"
		dialog "so he did too much of practice and had a serious heart attack."
		dialog "He is still in bed."
		wait()
		dialog "[RS125]"
		dialog "I am my brother's only hope and the future of Al De Baran!"
		dialog "Please wish me luck, I will beat her, 'Breezy Havana' from Payon!"
		close()
	elseif mresulta == 2 then
		dialog "[RS125]"
		dialog "I want to travel around the world one of thesedays."
		dialog "If I can see the ocean from the port of Alberta, it must be so wonderful."
		dialog "After the next year's athletic competition, I will go on a round-the-world tour with my brother."
		close()
	end
end

npc("aldeba_in","ThreateningLooking Man",spr_1_M_SMITH,223,121,4,0,0,"aldeba_in_ThreateningLooking_Man_223121")
function aldeba_in_ThreateningLooking_Man_223121()
	dialog "[Threatening-Looking Man]"
	dialog "Hey, you don't come inside someone else's house without permission."
	dialog "This is ridiculous!"
	dialog "How dare you to come inside of my house and talk to me as if that is a normal thing to do?"
	wait()
	dialog "[Threatening-Looking Man]"
	dialog "Hahahaha...chill out, I was just joking."
	wait()
	local mresulta = menu("Continue","Quit")
	if mresulta == 1 then
		dialog "[Threatening-Looking Man]"
		dialog "You may know this already, but"
		dialog "we have a system called, the mercenary system in this world."
		dialog "Yes, I am a mercenary soldier."
		wait()
		dialog "[Threatening-Looking Man]"
		dialog "It is simple. You just pay for someone to aid you in fight."
		dialog "Better mercenary soldier you want, more money you have to pay, you know?"
		wait()
		dialog "[Threatening-Looking Man]"
		dialog "Let's stop talking about boring stuffs."
		dialog "I will tell you how you can find a good mercenary soldier."
		wait()
		dialog "[Threatening-Looking Man]"
		dialog "Check its nose if it is clean and wet."
		dialog "A good mercenary soldier must have the wet nose"
		dialog "because it shows that the soldier is at his best in health condition."
		dialog "If the nose is dry, that means that he caught a cold."
		wait()
		dialog "[Threatening-Looking Man]"
		dialog "And don't forget to check the soldier's ankle."
		dialog "The best mercenary soldier has thin ankles and a white neck!"
		dialog "If he has long hair, it's better! If the hair is permed and wavy, that's perfect!"
		wait()
		dialog "[Threatening-Looking Man]"
		dialog "Lastly, you have to check whether he is ready to serve you with quality service!"
		dialog "That means, he must do his best in aiding you in fight!"
		close()
	elseif mresulta == 2 then
		dialog "[Threatening-Looking Man]"
		dialog "Get out, now!"
		dialog "If you a cop, show me a warrent,"
		dialog "if you are a member of my family, prove it with your birth mark!"
		close()
	end
end

npc("aldeba_in","FriendlyLooking Man",spr_4_M_MANAGER,219,61,4,4,5,"aldeba_in_FriendlyLooking_Man_21961")
function aldeba_in_FriendlyLooking_Man_21961()
	dialog "[Friendly-Looking Man]"
	dialog "You don't have to listen to a guy right next to my room."
	dialog "Two years ago, he was in a mercenary training center and fell off from a tree"
	dialog "while trying to gather a nut from it."
	wait()
	dialog "[Friendly-Looking Man]"
	dialog "He keeps talking to himself loud and it gives me a headache..."
	dialog "Gosh!"
	close()
end

npc("aldeba_in","Fussy Man",spr_4W_M_01,152,47,4,0,0,"aldeba_in_Fussy_Man_15247")
function aldeba_in_Fussy_Man_15247()
	dialog "[Fussy Man]"
	dialog "Aaaaarrrggghhh...I AM IN TROUBLE!"
	dialog "My little chicken has left me!"
	dialog "Oh, my god! Oh, my god!"
	wait()
	local mresulta = menu("What do you call the chicken?",". . . . .")
	if mresulta == 1 then
		dialog "[Fussy Man]"
		dialog "I used to call it 'Amazing Picky'..."
		dialog "*Sob* What should I do! How could this happen!"
		dialog "Please, please help me to find my sweet little chicken!"
		wait()
		local mresultb = menu("What? That is such a boring name!",". . . . .")
		if mresultb == 1 then
			dialog "[Fussy Man]"
			dialog "Don't be so ridiculous!"
			dialog "'Amazing Picky' is the most wonderful and the most unique name"
			dialog "in this world, and my chicken deserves the name!"
			close()
		elseif mresultb == 2 then
			dialog "[Fussy Man]"
			dialog "You don't care, do you?"
			dialog "I am only child in my family, so I have been thinking of my little chicken as my brother!"
			dialog "I want my chicken back...*Sob*"
			close()
		end
		elseif mresulta == 2 then
			dialog "[Fussy Man]"
			dialog "You don't care, do you?"
			dialog "I am only child in my family, so I have been thinking of my little chicken as my brother!"
			dialog "I want my chicken back...*Sob*"
			close()
		end
	return
end

npc("aldeba_in","Master",spr_1_M_PUBMASTER,156,179,4,0,0,"aldeba_in_Master_156179")
function aldeba_in_Master_156179()
	dialog "[Master]"
	dialog "The Kafra Corporation Headquarters is located here in Al De Baran."
	dialog "Do you know"
	dialog "what that means?"
	wait()
	dialog "[Master]"
	dialog "That means those cute Kafra Employees come here for their lunch breaks! Isn't that great?!"
	wait()
	dialog "[Master]"
	dialog "Alright, then!"
	dialog "Pop Quiz Time!"
	dialog "Who's your"
	dialog "favorite Kafra girl?"
	wait()
	if getvar(VAR_SEX) == 0 then
		dialog "[Master]"
		dialog "Oh, and don't worry. I know that girls have some kind of opinion about how pretty other girls are."
		wait()
	end
	local mresulta = menu("Awesome!","No way, I ain't a perv.")
	if mresulta == 1 then
		dialog "[Master]"
		dialog "Alright, here we go!"
		dialog "Choose your favorite Kafra Lady!"
		wait()
		dialog "[Master]"
		dialog "The original Kafra Mascot, the classic blue haired lady! Candidate Number One: ^3355FFPavianne^000000!"
		wait()
		dialog "[Master]"
		dialog "Her graceful ponytail takes mens' breath away! The fan favorite amongst teen males! Candidate Number Two: ^5533FFBlossom^000000!"
		wait()
		dialog "[Master]"
		dialog "Her long, straight hair, like silk from the East, is her charm point. Direct from Payon, it's Candidate Number Three: ^555555Jasmine^000000!"
		wait()
		dialog "[Master]"
		dialog "A tomboy with bright orange, shortly cut hair. Candidate Number Four: ^1133DDRoxie^000000!"
		wait()
		dialog "[Master]"
		dialog "Intelligent, sophisticated and never seen without her luxurious glasses. It's Candidate Number Five: ^33FF55Leilah^000000!"
		wait()
		dialog "[Master]"
		dialog "Pretty, cute and fresh faced. Although She looks young and immature,She's the best staff!"
		dialog "Candidate Number (6) ^AAAA00Curly Sue^000000 !!"
		wait()
		local mresultb = menu("(1) Pavianne","(2) Blossom","(3) Jasmine","(4) Roxie","(5) Leilah","(6) Curly Sue")
		if mresultb == 1 then
			dialog "[Master]"
			dialog "Oh~"
			dialog "So you're a lover of classics. I respect that very much."
			wait()
			dialog "[Master]"
			dialog "I'll also guess that you tend to enjoy the original movie more than sequels, and dislike bad imitations. Am I right?"
			close()
		elseif mresultb == 2 then
			dialog "[Master]"
			dialog "Hmmm..."
			dialog "Blossom strikes me as the girl-next-door type. So I guess that's the type of girl you're attracted to, eh?"
			close()
		elseif mresultb == 3 then
			dialog "[Master]"
			dialog "So..."
			dialog "Long, luxurious hair is important to you, hmm? I suppose it such hair makes a woman look quite elegant."
			close()
		elseif mresultb == 4 then
			dialog "[Master]"
			dialog "Ah, so you tend to like active, spontaneous types. I can understand that..."
			wait()
			dialog "[Master]"
			dialog "Since Roxie isn't exactly the demure housewife type, you probably have an open mind when it comes to defining femininity, right?"
			close()
		elseif mresultb == 5 then
			dialog "[Master]"
			dialog "Ah, so you like the intellectual type. That's good, that's good."
			wait()
			dialog "[Master]"
			dialog "Still, that Leilah can be cold as stone sometimes. I've seen her shrug off many young men and crush even more hearts!"
			close()
		elseif mresultb == 6 then
			dialog "[Master]"
			dialog "Say whaaat?!"
			dialog "She's too young!"
			close()
		end
		return
		elseif mresulta == 2 then
			dialog "[Master]"
			dialog "But I worked so hard on this delightful survey! Come now, be a sport! Admiring a pretty woman is like appreciating fine art."
			close()
	end
end

npc("aldeba_in","Kafra Service",spr_4_F_KAFRA1,84,166,4,0,0,"aldeba_in_Kafra_Service_84166")
function aldeba_in_Kafra_Service_84166()
	showimage("kafra_01.bmp",2)
	dialog "[Kafra Pavianne]"
	dialog "Welcome! I'm Pavianne,"
	dialog "one of the senior Kafra Employees. The Kafra Corporation Service is always trying to satisfy 100 % of our customers' expectations."
	wait()
	dialog "[Kafra Pavianne]"
	dialog "Due to a change in customer support policy, we no longer accept Kafra Passes. However, we are offering refunds for our customers who still possess these passes."
	wait()
	local mresulta = menu("Sell Kafra Pass","Alright, bye~")
	if mresulta == 1 then
		if getvar("Kapra's_Pass") == 0 then
			dialog "[Kafra Pavianne]"
			dialog "I'm sorry,"
			dialog "but you don't"
			dialog "have any Kafra Passes."
			close()
			showimage("kafra_01.bmp",255)
		else
			local kafrapass = getvar("Kapra's_Pass")
			local passmoney = kafrapass * 2000
			dialog "[Kafra Pavianne]"
			dialog "Let's see..."
			if kafrapass == 1 then
				dialog "You have 1 Kafra Pass."
				dialog "You can sell that pass to us for 2000 zeny. You you like to sell this Kafra Pass back to the Kafra Corporation?"
			else
		
				--dialog("You have ","+","kafrapass","+"","Kafra","Passes."")  need to find actual function for this and the line below.
				--dialog("If you want to sell them to us, you will receive ","+","passmoney","+"","zeny.","Would","you","like","to","sell","these","back","to","the","Kafra","Corporation?"")
			end
			wait()
			local mresultb = menu("Yes","No")
			if mresultb == 1 then
				kafrapass("=","v[Kapra's_Pass]")
				if kafrapass == 0 then
					dialog "[Kafra Pavianne]"
					dialog "I'm sorry, but you don't have any Kafra Passes."
					showimage("kafra_01.bmp",255)
				else
					dropitem("Kapra's_Pass","kafrapass")
					--getgold passmoney // Actual function?
					dialog "[Kafra Pavianne]"
					dialog "Thank you."
					close()
					showimage("kafra_01.bmp",255)
				end
			elseif mresultb == 2 then
				showimage("kafra_01.bmp",255)
			end
		end
	elseif mresulta == 2 then
		dialog "[Kafra Pavianne]"
		dialog "Thank you,"
		dialog "have a good day."
		close()
		showimage("kafra_01.bmp",255)
	end
end

npc("aldeba_in","Kafra Service",spr_4_F_KAFRA2,83,245,4,0,0,"aldeba_in_Kafra_Service_83245")
function aldeba_in_Kafra_Service_83245()
	showimage("kafra_02.bmp",2)
	dialog "[Kafra Blossom]"
	dialog "Welcome to the"
	dialog "Kafra Corporation."
	dialog "The Kafra Employees are"
	dialog "always here to serve you."
	wait()
	dialog "[Kafra Blossom]"
	dialog "We appreciate your continued use of the Kafra Service. Please feel free to ask me if you have any questions."
	wait()
	local mresulta = menu("How does Kafra Storage work?","How do you teleport people?")
	if mresulta == 1 then
		dialog "[Kafra Blossom]"
		dialog "Well, adventurers like yourself can place items into Kafra Storage, so that you don't have to carry all of your stuff around."
		wait()
		dialog "[Kafra Blossom]"
		dialog "Now, the Kafra Storage Window is separated into three tabs into which items are automatically sorted."
		wait()
		dialog "[Kafra Blossom]"
		dialog "The ^3355FFItem^000000, ^3355FFEquip^000000, and ^3355FFEtc^000000 tabs work just like the tabs in your character Item Inventory."
		wait()
		dialog "[Kafra Blossom]"
		dialog "Multiple items of the same type will only take up one Slot in the Item and Etc. tabs. For example, 324 Jellopies would take up only one Slot, and 22 Red Potions would take another Slot."
		wait()
		dialog "[Kafra Blossom]"
		dialog "However, in the Equip tab, each and every single item takes up its own Slot. I guess that's because each and every single equipment can be uniquely upgraded by forging or through Cards."
		wait()
		dialog "[Kafra Blossom]"
		dialog "There's a total of 100 Slots for all three item categories in the Kafra Storage, so it might be helpful to remember that."
		wait()
		showimage("kafra_02.bmp",255)
	elseif mresulta == 2 then
		dialog "[Kafra Blossom]"
		dialog "Oh, I get that question all the time. '^CC0066Oh Blossom, how do you do it?^000000' Well..."
		wait()
		dialog "[Kafra Blossom]"
		dialog "Well, I couldn't really go too much into detail, of course. That's confidential information. But I can tell you our teleportation works through a mix of magic and technology."
		wait()
		dialog "[Kafra Blossom]"
		dialog "Also, the Kafra girls alone can't teleport our customers. We just receive and process your teleportation request."
		wait()
		dialog "[Kafra Blossom]"
		dialog "Behind the scenes, skilled professionals and technicians are working 24 hours a day to ensure that you teleport quickly and safely to your destination."
		wait()
	end
	dialog "[Kafra Blossom]"
	dialog "Anyway, I hope you enjoy your visit here in the Kafra Corporation Headquarters."
	local mansoo = math.random(1,11)
	if mansoo == 9 then
		wait()
		dialog "[Kafra Blossom]"
		dialog "..."
		wait()
		dialog "[Kafra Blossom]"
		dialog "..."
		dialog "......"
		wait()
		dialog "[Kafra Blossom]"
		dialog "Oh Mansoo..."
	end
	close()
	showimage("kafra_02.bmp",255)
end

npc("aldeba_in","Kafra Jasmine",spr_4_F_KAFRA3,24,245,4,0,0,"aldeba_in_Kafra_Jasmine_24245")
function aldeba_in_Kafra_Jasmine_24245()
	showimage("kafra_03.bmp",2)
	dialog "[Kafra Jasmine]"
	dialog "Welcome!"
	dialog "The Kafra service is"
	dialog "always on your side."
	wait()
	dialog "[Kafra Jasmine]"
	dialog "Thank you for coming all the way to visit us at the Kafra Corporation Headquarters here in Al De Baran!"
	wait()
	dialog "[Kafra Jasmine]"
	dialog "The Kafra Service is always behind our customers with a dependable reputation that has been established over five thousand, eight hundred years..."
	wait()
	local mresulta = menu("What?! I can't believe that!","Ahh~ Shut Up!","Your service is great!")
	if mresulta == 1 then
		local name = PcName()
		dialog("[", name , "]")
		dialog "What?!"
		dialog "I can't"
		dialog "believe that!"
		wait()
		dialog("[", name , "]")
		dialog "FIVE THOUSAND AND EIGHT HUNDRED YEARS?! THAT'S INSANE!"
		wait()
		dialog "[Kafra Jasmine]"
		dialog "Arrrrghh! Shut up and listen! It took me a week to memorize all this! My memory isn't as good as the other Kafra Employees...!"
		wait()
		dialog "[Kafra Jasmine]"
		dialog "Now, um..."
		dialog "As I was saying, the Kafra Corporation was founded eight thousand, five hundred years ago by, um, Emilio Alexander Kafra... Inventor of the word 'Kafra?'"
		wait()
		dialog "[Kafra Jasmine]"
		dialog "He..."
		dialog "He was a great man. He... Argh! I can't remember!"
		wait()
		dialog "[Kafra Jasmine]"
		dialog "Oh no...!"
		dialog "This can't be the right story! Five million, eight hundred years?! It's impossible!"
		close()
		showimage("kafra_03.bmp",255)
	elseif mresulta == 2 then
		dialog "[Kafra Jasmine]"
		dialog "Listen..."
		dialog "Punk."
		wait()
		dialog "[Kafra Jasmine]"
		dialog "I was a member of the Kafra Garrison before joining the Kafra Service Team. My specialty was ^990000Magnum Break^000000, so if you know what's good for you, don't mess with me."
		wait()
		dialog "[Kafra Jasmine]"
		dialog "I'm trying my best to live as quietly and as femininely as I can, so don't make me break your knuckles! You got it?!"
		close()
		showimage("kafra_03.bmp",255)
	elseif mresulta == 3 then
		dialog "[Kafra Jasmine]"
		dialog "Hooray!"
		dialog "That's great news to hear. We're always working hard to make sure that our customers are satisfied with the services that we provide."
		close()
		showimage("kafra_03.bmp",255)
	end
end

npc("aldeba_in","Kafra Service",spr_4_F_KAFRA4,142,238,4,0,0,"aldeba_in_Kafra_Service_142238")
function aldeba_in_Kafra_Service_142238()
	showimage("kafra_04.bmp",2)
	dialog "[Kafra Roxie]"
	dialog "Welcome~!"
	dialog "The Kafra Corporation will always support Rune-Midgard's adventurers with our excellent services."
	wait()
	dialog "[Kafra Roxie]"
	dialog "My name is Roxie!"
	dialog "I hope you enjoy"
	dialog "your visit here in"
	dialog "Kafra Corporation's"
	dialog "Headquarters."
	wait()
	dialog "[Kafra Roxie]"
	dialog "I'm here to answer any of your questions regarding Kafra Corporations policies, as well as take note of any of your feedback."
	wait()
	local mresulta = menu("Kafra Policies","I love Kafra!")
	if mresulta == 1 then
		dialog "[Kafra Roxie]"
		dialog "So, you'd like more details on our policies and eligibility for our services? What would you like me to explain?"
		wait()
		local mresultb = menu("Kafra Storage","Cart Rental","Actually, never mind.")
		if mresultb == 1 then
			dialog "[Kafra Roxie]"
			dialog "As you probably already know, our customers must have at least Basic Skill level 6 in order to use the Kafra Storage."
			wait()
			dialog "[Kafra Roxie]"
			dialog "As for the reason for this certain policy, we've had problems with young, fresh faced Novices that would put everything into their Storage."
			wait()
			dialog "[Kafra Roxie]"
			dialog "Now you remember your days as a Novice. Everything was new and exciting, but zeny was scarce. Well, a lot of Novices would even put their weapons and armor in Kafra Storage."
			wait()
			dialog "[Kafra Roxie]"
			dialog "However, by this time, they've already spent what little zeny they had to open their Storage. But they don't have enough to access their Storage again!"
			wait()
			dialog "[Kafra Roxie]"
			dialog "So, these weaponless, armorless Novices must fight monsters with their bare hands until they gather the zeny to open their Kafra Storage again!"
			wait()
			dialog "[Kafra Roxie]"
			dialog "It's a silly mistake, to be sure, but we here at Kafra Corporation value human life, and decided on the Basic Skill Level 6 Requirement to prevent this kind of mishap."
			close()
		elseif mresultb == 2 then
			dialog "[Kafra Roxie]"
			dialog "As you may know, the Kafra Corporation has a special relationship with the Merchant Guild, as well as the Blacksmith and Alchemist guilds in Rune-Midgard."
			wait()
			dialog "[Kafra Roxie]"
			dialog "The Kafra Corporation only rents Carts to Merchants, Blacksmiths and Alchemists since these job associations have a special contract with us."
			wait()
			dialog "[Kafra Roxie]"
			dialog "Also, it'd be really impractical to rent carts out to people who couldn't create or sell goods."
			wait()
			dialog "[Kafra Roxie]"
			dialog "As for Super Novices, well, we're really not supposed to rent carts to them since the Super Novice Society in Al De Baran doesn't have a contract with us."
			wait()
			dialog "[Kafra Roxie]"
			dialog "If a Kafra Employee rented a Cart to a Super Novice, she'd probably get in big trouble with Leilah..."
		elseif mresultb == 3 then
			dialog "[Kafra Roxie]"
			dialog "Oh, alright~!"
			dialog "If you have any questions,"
			dialog "please let me know!"
		end
	elseif mresulta == 2 then
		dialog "[Kafra Roxie]"
		dialog "Thank you!"
		dialog "It's great to know that we're appreciated by our customers! All of us are working hard to make sure that our service meets your standards of excellence~"
	end
	close()
	showimage("kafra_04.bmp",255)
end

npc("aldeba_in","Kafra Service",spr_4_F_KAFRA6,91,244,4,4,5,"aldeba_in_Kafra_Service_91244")
function aldeba_in_Kafra_Service_91244()
	showimage("kafra_06.bmp",2)
	dialog "[Kafra Curly Sue]"
	dialog "Hello, hello!!"
	dialog "I'm Curly Sue,"
	dialog "the newest member"
	dialog "of the Kafra Staff!"
	wait()
	dialog "[Kafra Curly Sue]"
	dialog "I may still need to learn more about serving our customers, but I'm always doing my best!"
	wait()
	local mresulta = menu("Where's your mommy, kid?","End conversation.")
	if mresulta == 1 then
		dialog "[Kafra Curly Sue]"
		dialog "Waaaaaaah~!"
		dialog "I'm not a kid!"
		close()
		showimage("kafra_06.bmp",255)
	elseif mresulta == 2 then
		dialog "[Kafra Curly Sue]"
		dialog "Here at Kafra Corporation, we are all doing our very best to give you the excellent service that you expect from us."
		close()
		showimage("kafra_06.bmp",255)
	end
end

npc("aldebaran","Sylvia",spr_1_F_04,60,70,4,0,0,"aldebaran_Sylvia_6070")
function aldebaran_Sylvia_6070()
	dialog "[Sylvia]"
	dialog "I came all the way here from Prontera because I heard the Kafra Main Office was somewhere here in Al De Baran."
	wait()
	dialog "[Sylvia]"
	dialog "It shouldn't be that hard to find, but I'm awful at following directions. I always get lost, no matter how hard I try!"
	wait()
	dialog "[Sylvia]"
	dialog "If that wasn't bad enough, I left my Magnifiers back in Prontera, so now I have to find someone to help me with these weapons I've got to appraise!"
	wait()
	local mresulta = menu("Appraise?","That's very nice.")
	if mresulta == 1 then
		dialog "[Sylvia]"
		dialog "Equipment that is dropped by monsters can't be equipped right away."
		wait()
		dialog "[Sylvia]"
		dialog "If you right-click the equippable item in the Item Inventory, you'll see that it is Unidentified and that Appraisal is needed. What to do?"
		wait()
		dialog "[Sylvia]"
		dialog "Well, in that case, you've gotta use ^3355FF Magnifier^000000!"
		wait()
		dialog "[Sylvia]"
		dialog "Even without a Blacksmith, Alchemist or Merchant in your party, you can appraise your equipment! Of course, a Magnifier is consumed each time you use one..."
		close()
	elseif mresulta == 2 then
		dialog "[Sylvia]"
		dialog "Hey..."
		dialog "Was that a hint of sarcasm in your voice when you said that?"
		close()
	end
end

npc("aldebaran","Issei",spr_1_M_02,93,80,4,0,0,"aldebaran_Issei_9380")
function aldebaran_Issei_9380()
	dialog "[Issei]"
	dialog "Al De Baran is such a wonderful place with its romantic canals and classic architecture. I love nothing more than to stroll through this city with my beautiful girlfriend."
	wait()
	local mresulta = menu("You have a girlfriend?","End Conversation.")
	if mresulta == 1 then
		dialog "[Issei]"
		dialog "Hey..."
		dialog "Is that so hard to believe?! Yeah, ask anyone! She really exists! Although, sometimes, just sometimes mind you, she gets too excited about weapons and armor."
		wait()
		dialog "[Issei]"
		dialog "I mean, instead of enjoying a romantic dinner, she'll just go on about how equipment dropped from monsters is higher quality than those sold in shops..."
		wait()
		dialog "[Issei]"
		dialog "I mean, why should I care if equipment dropped by monsters tend to have more Slots?! I can't even kill a Poring!"
		wait()
		dialog "[Issei]"
		dialog "As you can see,"
		dialog "I'm a lover,"
		dialog " not a fighter."
		close()
	elseif mresulta == 2 then
		dialog "[Issei]"
		dialog "So, you don't think of me stupid, do you?"
		close()
	end
end

npc("aldebaran","Joo Jahk",spr_4_M_ORIENT01,180,46,4,0,0,"aldebaran_Joo_Jahk_18046")
function aldebaran_Joo_Jahk_18046()
	dialog "[Joo Jahk]"
	dialog "I'm a tourist"
	dialog "from Payon,"
	dialog "the City of Forests."
	wait()
	dialog "[Joo Jahk]"
	dialog "The tempature here in Al De Baran is very cool, probably because of the waterways. Do you think the water in the canals is drinkable?"
	wait()
	dialog "[Joo Jahk]"
	dialog "Well, it's too late for me, since I already drank some. Still, I'm a little worried..."
	wait()
	local mresulta = menu("Continue.","End conversation.")
	if mresulta == 1 then
		dialog "[Joo Jahk]"
		dialog "On one of my travels around Rune-Midgard, I've heard from a really high level Mage that physical attacks, or magic with Neutral Property, won't damage Spiritual Property monsters."
		wait()
		dialog "[Joo Jahk]"
		dialog "Maybe that advice will come in handy, now that you know that. Always remember the importance of the Properties of your skills and weapons when battling monsters."
		close()
	elseif mresulta == 2 then
		dialog "[Joo Jahk]"
		dialog "On the other hand, the water I drank did taste pretty good. Hopefully it didn't have anything too weird in it..."
		close()
	end
end

npc("aldebaran","Citizen",spr_4W_M_01,212,122,4,0,0,"aldebaran_Citizen_212122")
function aldebaran_Citizen_212122()
	dialog "[Gavin]"
	dialog "Welcome!"
	dialog "The town of"
	dialog "Al De Baran"
	dialog "welcomes you!"
	wait()
	dialog "[Gavin]"
	dialog "Well, that might be an exaggeration. After all, it's just me that's welcoming you."
	dialog "Hey there!"
	wait()
	local mresulta = menu("Now, tell me about monsters.","End conversation.")
	if mresulta == 1 then
		dialog "[Gavin]"
		dialog "Monsters...?"
		dialog "Aren't we straying off topic a little bit? Ah, you must be one of those adventurers!"
		wait()
		dialog "[Gavin]"
		dialog "Can't get your mind off the job, eh? Alright, now there was some monster that I saw just recently..."
		wait()
		dialog "[Gavin]"
		dialog "Ah, now I remember! Just a few days ago, I saw a really interesting looking monster! It was a Poring with Angel's wings!"
		wait()
		dialog "[Gavin]"
		dialog "I swear! He was jumping around somewhere near Mt. Mjolnir with some ordinary Porings. I think he was, like, their leader."
		close()
	elseif mresulta == 2 then
		dialog "[Gavin]"
		dialog "Awww..."
		dialog "Don't be too disappointed that there's only one person in your welcome wagon!"
		close()
	end
end

npc("aldebaran","Town Girl",spr_4W_F_01,146,124,4,0,0,"aldebaran_Town_Girl_146124")
function aldebaran_Town_Girl_146124()
	dialog "[Nastasia]"
	dialog "Somewhere in the world there is an ^3355FFAssassin Guild^000000, where they teach people the subtle art of assassination."
	wait()
	dialog "[Nastasia]"
	dialog "But isn't killing illegal? And do they even collect educational tutition?"
	wait()
	local mresulta = menu("Continue conversation.","End Conversation.")
	if mresulta == 1 then
		dialog "[Nastasia]"
		dialog "Although Assassins benefit from being very quick and having lots of AGI, they should still have some DEX."
		wait()
		dialog "[Nastasia]"
		dialog "DEX is especially important if you want to hit monsters with wings. Those monsters are quick moving and fast in attacking."
		wait()
		dialog "[Nastasia]"
		dialog "In general, if you want to hit monsters that are as fast, or even faster, than you are, you're going to need some DEX."
		close()
	elseif mresulta == 2 then
		dialog "[Nastasia]"
		dialog "It's usually said that in this world, nothing is free. Still, if you don't have to pay money to learn to be an Assassin..."
		close()
	end
end

npc("aldebaran","Bell KeeperA",spr_4_M_ORIENT02,143,136,4,0,0,"aldebaran_Bell_KeeperA_143136")
function aldebaran_Bell_KeeperA_143136()
	dialog "[Bell Keeper]"
	dialog "I have been charged by the Committee of 'Heaven on Earth' to guard this entrance of the Clock Tower."
	wait()
	local mresulta = menu("About Clock Tower.","Quit.")
	if mresulta == 1 then
		dialog "[Bell Keeper]"
		dialog "Every floor of this tower is connected to each other by a certain device we like to call 'Warp Gear.'"
		wait()
		dialog "[Bell Keeper]"
		dialog "Even though there are interconnecting warps everywhere in the Clock Tower, beware the 'Random Warp.'"
		wait()
		dialog "[Bell Keeper]"
		dialog "The 'Random Warp' will transport you to an unknown spot. Be advised if you don't want to suddenly be separated from your party..."
		wait()
		dialog "[Bell Keeper]"
		dialog "Remember, Random Warps are shown in green on the mini-map. So keep your eyes peeled for that, as well as for those dangerous Clocks."
		close()
	elseif mresulta == 2 then
		dialog "[Bell Keeper]"
		dialog "Please take heed that this Clock Tower is filled with extremely dangerous monsters."
		close()
	end
end

npc("aldeba_in","Inn Maid",spr_1_M_INNKEEPER,92,58,5,0,0,"aldeba_in_Inn_Maid_9258")
function aldeba_in_Inn_Maid_9258()
	dialog "[Rilim]"
	dialog "Welcome to Al De Baran Inn."
	dialog "How may I help you?"
	wait()
	local mresulta = menu("Save Point","Rest - 5,000z","Quit")
	if mresulta == 1 then
		dialog "[Rilim]"
		dialog "Your respawn point has been saved. Thank you."
		checkpoint("aldeba_in",92,50)
		close()
	elseif mresulta == 2 then
		if getvar(VAR_MONEY) > 4999 then
			dialog "[Rilim]"
			dialog "Please enjoy your stay. Thank you."
			close()
			dropgold(5000)
			hpheal(100)
			spheal(100)
			moveto("aldeba_in",92,112)
		else
			dialog "[Rilim]"
			dialog "The service charge is 5,000 zeny."
			dialog "Please check your wallet again, thanks."
			close()
		end
	elseif mresulta == 3 then
	end
end
