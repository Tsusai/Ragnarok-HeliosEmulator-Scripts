-- _________________________________________________ --
--/                                                 \--
--|    _    _          _   _                        |--
--|   | |  | |        | | (_)                       |--
--|   | |__| |   ___  | |  _    ___    ___          |--
--|   |  __  |  / _ \ | | | |  / _ \  / __|         |--
--|   | |  | | |  __/ | | | | | (_) | \__ \         |--
--|   |_|  |_|  \___| |_| |_|  \___/  |___/         |--
--|                                                 |--
--|-------------------------------------------------|--
--| 24/01/2008                                      |--
--|   - First version for helios. [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("yuno_in03","Museum Guide",spr_1_F_02,32,15,3,0,0,"yuno_in03_Museum_Guide_3215")
function yuno_in03_Museum_Guide_3215()
	dialog "[Cenia]"
	dialog "Welcome to the Monster Museum."
	wait()
	local mresulta = menu("Monster Museum?","Tips")
	if mresulta == 1 then
		dialog "[Cenia]"
		dialog "The Monster Museum was founded by"
		dialog "the Sages of the Schweicherbil"
		dialog "Magic Academy after researching"
		dialog "every creature dwelling in the"
		dialog "Rune-Midgard continent."
		wait()
		dialog "[Cenia]"
		dialog "In this museum, you can see every"
		dialog "single monster in Rune-Midgard,"
		dialog "even the ones you hardly ever encounter."
		wait()
		dialog "[Cenia]"
		dialog "The glass tubes holding monsters"
		dialog "was developed with the latest"
		dialog "technology as a part of the"
		dialog "Schwartz Project. Rest assured,"
		dialog "you'll be well protected."
		wait()
	elseif mresulta == 2 then
		dialog "[Cenia]"
		dialog "Please check on the Opaque option"
		dialog "on your option windows by"
		dialog "pressing ALT + O, if you want to"
		dialog "see the monsters better."
		wait()
	end
	dialog "[Cenia]"
	dialog "Feel free to talk to me anytime."
	close()
end

npc("yuno_in03","Deviaceyuno",spr_DEVIACE,36,21,3,0,0,"yuno_in03_Deviaceyuno_3621")
npc("yuno_in03","DEVIACE",spr_HIDDEN_NPC,33,21,1,0,0,"yuno_in03_DEVIACE_3321")
function yuno_in03_DEVIACE_3321()
	dialog " "
	dialog "Scientific name : Deviace"
	dialog "Size : Medium"
	dialog "Attribute : Water"
	wait()
	dialog "Explanation :"
	dialog "This monster dwells under the deep"
	dialog "sea and has a round body with a"
	dialog "acetabulum on its dorsal side."
	dialog "Although its sharp teeth are"
	dialog "intimidating, it has a very mellow"
	dialog "character."
	wait()
	dialog "Therefore, it never initiates"
	dialog "attack on an undersea traveller"
	dialog "unless it's attacked first."
	dialog "However, once it becomes upset, it"
	dialog "uses high level magic skills. So"
	dialog "it's better to be careful with this monster."
	close()
end

npc("yuno_in03","Sealyuno",spr_FUR_SEAL,36,27,3,0,0,"yuno_in03_Sealyuno_3627")
npc("yuno_in03","FUR_SEAL",spr_HIDDEN_NPC,33,27,1,0,0,"yuno_in03_FUR_SEAL_3327")
function yuno_in03_FUR_SEAL_3327()
	dialog " "
	dialog "Scientific name : Seal"
	dialog "Size : Medium"
	dialog "Attribute : Water"
	wait()
	dialog "Explanation :"
	dialog "When you take a look at this"
	dialog "monster carefully, you will find"
	dialog "that it's not actually a seal but"
	dialog "an unidentified monster hiding"
	dialog "inside the seal-like leather"
	dialog "clothing."
	wait()
	dialog "It is rumored that the monster"
	dialog "wears this clothing in order"
	dialog "to protect its sensitive skin"
	dialog "from the weather. The Seal's"
	dialog "clothing is a very good material"
	dialog "for people to produce winter coats."
	close()
end

npc("yuno_in03","Sage Wormyuno",spr_SAGEWORM,36,33,3,0,0,"yuno_in03_Sage_Wormyuno_3633")
npc("yuno_in03","SAGEWORM",spr_HIDDEN_NPC,33,33,1,0,0,"yuno_in03_SAGEWORM_3333")
function yuno_in03_SAGEWORM_3333()
	dialog " "
	dialog "Scientific name : Sage Worm"
	dialog "Size : Small"
	dialog "Attribute : Neutral"
	wait()
	dialog "Explanation :"
	dialog "A strange beast with the head of"
	dialog "an old scholar and the tail of a"
	dialog "worm. Although it is physically"
	dialog "weak, it has the intelligence"
	dialog "to support its comrades with"
	dialog "magic skills."
	wait()
	dialog "As its scholarly appearance"
	dialog "indicates, it's usually seen near books or book shelves."
	close()
end

npc("yuno_in03","Penomenayuno",spr_PENOMENA,39,39,3,0,0,"yuno_in03_Penomenayuno_3939")
npc("yuno_in03","PENOMANA",spr_HIDDEN_NPC,38,39,1,0,0,"yuno_in03_PENOMANA_3839")
function yuno_in03_PENOMANA_3839()
	dialog " "
	dialog "Scientific name : Penomena"
	dialog "Size : Medium"
	dialog "Attribute : Poison"
	wait()
	dialog "Explanation :"
	dialog "This monster dwells inside the"
	dialog "deepest part of caves where there"
	dialog "is enough moisture to keep it from"
	dialog "getting dried up."
	wait()
	dialog "Unlike Hydra, a similar looking"
	dialog "creature, it can move itself"
	dialog "towards its enemy using many"
	dialog "small appendixes on its acetabulum."
	wait()
	dialog "The long, thin tentacles on the"
	dialog "body shoot deadly poison which is"
	dialog "enough to kill its enemy at once."
	close()
end

npc("yuno_in03","Galapago#yuno",spr_GALAPAGO,39,44,3,0,0,"yuno_in03_Galapagoyuno_3944")
npc("yuno_in03","GALAPAGO",spr_HIDDEN_NPC,37,44,3,0,0,"yuno_in03_GALAPAGO_3744")
function yuno_in03_GALAPAGO_3744()
	dialog " "
	dialog "Scientific name : Galapago"
	dialog "Size : Small"
	dialog "Attribute : Earth"
	wait()
	dialog "Explanation :"
	dialog "It's a kind of bird, but sadly, its body is too heavy to fly."
	dialog "It's very sensitive to sunlight so it carries a water bottle and wears sunglasses all the time."
	wait()
	dialog "Although gluttonous, it will"
	dialog "always cooperate to attack"
	dialog "prey, as well as predators."
	dialog "Otherwise, Galapago is a"
	dialog "generally laid back monster."
	close()
end

npc("yuno_in03","Raydric#yuno",spr_RAYDRIC,15,21,5,0,0,"yuno_in03_Raydricyuno_1521")
npc("yuno_in03","#RAYDRIC",spr_HIDDEN_NPC,19,21,1,0,0,"yuno_in03_RAYDRIC_1921")
function yuno_in03_RAYDRIC_1921()
	dialog " "
	dialog "Scientific name : Raydric"
	dialog "Size : Large"
	dialog "Attribute : Shadow"
	wait()
	dialog "Explanation :"
	dialog "A suit of armor animated by the"
	dialog "spirit of a castle guard. The"
	dialog "spirit is bound to this armor by"
	dialog "a powerful curse."
	wait()
	dialog "Since Raydric used to be a castle"
	dialog "guard, it possesses fast movements"
	dialog "and powerful attack strength."
	close()
end

npc("yuno_in03","Chepet#yuno",spr_CHEPET,15,27,5,0,0,"yuno_in03_Chepetyuno_1527")
npc("yuno_in03","CHEPET",spr_HIDDEN_NPC,19,27,1,0,0,"yuno_in03_CHEPET_1927")
function yuno_in03_CHEPET_1927()
	dialog " "
	dialog "  Scientific name : Chepet"
	dialog "  Size : Medium"
	dialog "  Attribute : Fire"
	wait()
	dialog "Explanation :"
	dialog "An evil creature hiding in a"
	dialog "pretty doll. It attacks passersby"
	dialog "by striking matchsticks held in"
	dialog "the doll's hand. A very rare"
	dialog "monster since it dwells in"
	dialog "only a few places."
	close()
end

npc("yuno_in03","Violy#yuno",spr_VIOLY,15,33,5,0,0,"yuno_in03_Violy#yuno_1533")
npc("yuno_in03","#VIOLY",spr_HIDDEN_NPC,19,33,1,0,0,"yuno_in03_VIOLY_1933")
function yuno_in03_VIOLY_1933()
	dialog " "
	dialog "  Scientific name : Violy"
	dialog "  Size : Medium"
	dialog "  Attribute : Neutral"
	wait()
	dialog "Explanation :"
	dialog "A pretty doll looking creature with beautiful golden hair."
	dialog "Since It plays violin all the time with a peaceful look on its face, people don't realize at first that it's a monster."
	wait()
	dialog "Exercise extreme caution upon encountering a Violy. Otherwise, it will snatch your soul in no time with its charming song."
	close()
end

npc("yuno_in03","Alice#yuno",spr_ALICE,10,39,5,0,0,"yuno_in03_Alice#yuno_1039")
npc("yuno_in03","#ALICE",spr_HIDDEN_NPC,12,39,1,0,0,"yuno_in03_ALICE_1239")
function yuno_in03_ALICE_1239()
	dialog " "
	dialog "  Scientific name : Alice "
	dialog "  Size : Medium"
	dialog "  Attribute : Neutral"
	wait()
	dialog "Explanation :"
	dialog "Alice is a robot made to assist as"
	dialog "a castle housemaid. They've been"
	dialog "known to remain and automatically"
	dialog "do their tasks long after the"
	dialog "castle has been abandoned."
	wait()
	dialog "Without any discernable power"
	dialog "source, how it moves and operates"
	dialog "is still a scientific mystery."
	close()
end

npc("yuno_in03","Assulter#yuno",spr_ASSULTER,10,45,5,0,0,"yuno_in03_Assulter#yuno_1045")
npc("yuno_in03","#ASSULTER",spr_HIDDEN_NPC,12,45,1,0,0,"yuno_in03_ASSULTER_1245")
function yuno_in03_ASSULTER_1245()
	dialog " "
	dialog "  Scientific name : Assulter"
	dialog "  Size : Medium"
	dialog "  Attribute : Wind"
	wait()
	dialog "Explanation :"
	dialog "Unlike other turtles on on Turtle"
	dialog "Island, this turtle stands on two"
	dialog "legs and attacks passersby with"
	dialog "the other two legs, wielding a"
	dialog "big shuriken from its back."
	wait()
	dialog "Interestingly, it creates a clone"
	dialog "to do more damage when it"
	dialog "encounters dangerous enemies."
	dialog "It does very powerful damage using"
	dialog "its shuriken, but its nail attack"
	dialog "is more threatening."
	close()
end

npc("yuno_in03","PecoPeco Egg#yuno",spr_PECOPECO_EGG,38,50,3,0,0,"yuno_in03_PecoPeco_Egg#yuno_3850")
npc("yuno_in03","Thief Bug Egg#yuno",spr_THIEF_BUG_EGG,34,54,3,0,0,"yuno_in03_Thief_Bug_Egg#yuno_3454")
npc("yuno_in03","Ant Egg#yuno",spr_ANT_EGG,12,50,3,0,0,"yuno_in03_Ant_Egg#yuno_1250")

npc("yuno_in03","Wanderer#yuno",spr_WANDER_MAN,18,96,5,0,0,"yuno_in03_Wanderer#yuno_1896")
npc("yuno_in03","#WANDER_MAN",spr_HIDDEN_NPC,20,96,1,0,0,"yuno_in03_WANDER_MAN_2096")
function yuno_in03_WANDER_MAN_2096()
	dialog " "
	dialog "  Scientific name : Wanderer"
	dialog "  Size : Medium"
	dialog "  Attribute : Wind"
	wait()
	dialog "Explanation :"
	dialog "Undead warrior who came back to"
	dialog "life through a curse. Considering"
	dialog "its technical fencing skill, he"
	dialog "must have been a very honorable"
	dialog "warrior as a living human."
	wait()
	dialog "Wanderer can move amazingly fast"
	dialog "and can slay enemies with a single"
	dialog "stroke of its sword."
	close()
end

npc("yuno_in03","Caterpillar#yuno",spr_CATERPILLAR,16,100,5,0,0,"yuno_in03_Caterpillar#yuno_16100")
npc("yuno_in03","#CATERPILLAR",spr_HIDDEN_NPC,18,100,1,0,0,"yuno_in03_CATERPILLAR_18100")
function yuno_in03_CATERPILLAR_18100()
	dialog " "
	dialog "  Scientific name : Caterpillar"
	dialog "  Size : Small"
	dialog "  Attribute : Earth"
	wait()
	dialog "Explanation :"
	dialog "Although the eyes of this creature"
	dialog "have atrophied due to living under"
	dialog "the earth, it uses a feeler and"
	dialog "appendices on its body to sense"
	dialog "objects in its dark surroundings."
	wait()
	dialog "Caterpillar is rumored to be the"
	dialog "larva of Creamy Fear, the advanced"
	dialog "Creamy."
	close()
end

npc("yuno_in03","Male Thiefbug#yuno",spr_THIEF_BUG__,16,104,5,0,0,"yuno_in03_Male_Thiefbug#yuno_16104")
npc("yuno_in03","#THIEF_BUG__",spr_HIDDEN_NPC,18,104,1,0,0,"yuno_in03_THIEF_BUG___18104")
function yuno_in03_THIEF_BUG___18104()
	dialog " "
	dialog "  Scientific name : Thief Bug"
	dialog "  ^FFFFFFScientific name :^000000 (Male)"
	dialog "  Size : Medium"
	dialog "  Attribute : Shadow"
	wait()
	dialog "Explanation :"
	dialog "Although it has a big blue body,"
	dialog "it's also fast and voracious, just like other Thief Bugs."
	wait()
	dialog "However, it is stronger than other Thief Bugs because it's designated to protect the females and babies from danger."
	close()
end

npc("yuno_in03","Tri Joint#yuno",spr_TRI_JOINT,16,108,5,0,0,"yuno_in03_Tri_Joint#yuno_16108")
npc("yuno_in03","#TRI_JOINT",spr_HIDDEN_NPC,18,108,1,0,0,"yuno_in03_TRI_JOINT_18108")
function yuno_in03_TRI_JOINT_18108()
	dialog " "
	dialog "  Scientific name : Tri Joint"
	dialog "  Size : Small"
	dialog "  Attribute : Earth"
	wait()
	dialog "Explanation :"
	dialog "Tri Joint is a prehistoric"
	dialog "monster that is covered with"
	dialog "a hard shell, and uses a feeler"
	dialog "instead of eyes so that it can"
	dialog "live in dark places."
	wait()
	dialog "Recently, since many Tri Joints have been discovered inside many caves, Sages are very excited to study them to learn more about the evolution of monsters in Rune-Midgard."
	close()
end

npc("yuno_in03","Arclouz#yuno",spr_ARCLOUSE,16,111,5,0,0,"yuno_in03_Arclouz#yuno_16111")
npc("yuno_in03","#ARCLOUSE",spr_HIDDEN_NPC,18,111,1,0,0,"yuno_in03_ARCLOUSE_18111")
function yuno_in03_ARCLOUSE_18111()
	dialog " "
	dialog "  Scientific name : Arclouz"
	dialog "  Size : Medium"
	dialog "  Attribute : Earth"
	wait()
	dialog "Explanation :"
	dialog "Hard shelled monster that coils"
	dialog "its body to attack its enemy."
	dialog "Arclouz tend to stay in groups"
	dialog "and are very aggressive"
	dialog "creatures."
	wait()
	dialog "They have incredibly fast"
	dialog "movement speed, contrary to"
	dialog "their looks, and are often"
	dialog "compared to PecoPecos."
	close()
end

npc("yuno_in03","Dragon Tail#yuno",spr_DRAGON_TAIL,16,117,5,0,0,"yuno_in03_Dragon_Tail#yuno_16117")
npc("yuno_in03","#DRAGON_TAIL",spr_HIDDEN_NPC,18,116,1,0,0,"yuno_in03_DRAGON_TAIL_18116")
function yuno_in03_DRAGON_TAIL_18116()
	dialog " "
	dialog "  Scientific name : Dragon Tail"
	dialog "  Size : Medium"
	dialog "  Attribute : Wind"
	wait()
	dialog "Explanation :"
	dialog "An insect which is considered as"
	dialog "a Libelluidae, or Dragon Fly. It"
	dialog "uses its strong tail to suck the"
	dialog "blood out of an enemy, or to put"
	dialog "the enemy to sleep by shooting"
	dialog "a sleeping poison."
	close()
end

npc("yuno_in03","Owl Duke#yuno",spr_OWL_DUKE,46,96,3,0,0,"yuno_in03_Owl_Duke#yuno_4696")
npc("yuno_in03","#OWL_DUKE",spr_HIDDEN_NPC,44,96,1,0,0,"yuno_in03_OWL_DUKE_4496")
function yuno_in03_OWL_DUKE_4496()
	dialog " "
	dialog "  Scientific name : Owl Duke"
	dialog "  Size : Large"
	dialog "  Attribute : Neutral "
	wait()
	dialog "Explanation:"
	dialog "An owl that wears a count costume."
	dialog "It's very intimidating looking"
	dialog "with its dark, yet suave look."
	dialog "Owl Duke is not actually an owl,"
	dialog "but a devil with very sharp claws"
	dialog "on its big feet."
	wait()
	dialog "It's skillful at using many"
	dialog "lightning magic spells. When"
	dialog "you see it attacking an enemy,"
	dialog "you can sense the Owl Duke's"
	dialog "aristocratic pompousness."
	close()
end

npc("yuno_in03","Marine Sphere#yuno",spr_MARINE_SPHERE,48,100,3,0,0,"yuno_in03_Marine_Sphere#yuno_48100")
npc("yuno_in03","#MARINE_SPHERE",spr_HIDDEN_NPC,46,101,1,0,0,"yuno_in03_MARINE_SPHERE_46101")
function yuno_in03_MARINE_SPHERE_46101()
	dialog " "
	dialog "  Scientific name : Marine Sphere"
	dialog "  Size : Small"
	dialog "  Attribute : Water"
	wait()
	dialog "Explanation :"
	dialog "A strange creature that wanders"
	dialog "in the deep oceans. It explodes"
	dialog "with great power when it's"
	dialog "touched, earning it the name"
	dialog "'The Sea Bomb.'"
	wait()
	dialog "If there is a Marine Sphere"
	dialog "caught in the explosion of"
	dialog "another, a trigger explosion"
	dialog "will result, and can lead to"
	dialog "a dangerous chain reaction."
	close()
end

npc("yuno_in03","Mandragora#yuno",spr_MANDRAGORA,48,104,3,0,0,"yuno_in03_Mandragora#yuno_48104")
npc("yuno_in03","#MANDRAGORA",spr_HIDDEN_NPC,46,105,1,0,0,"yuno_in03_MANDRAGORA_46105")
function yuno_in03_MANDRAGORA_46105()
	dialog " "
	dialog "  Scientific name : Mandragora"
	dialog "  Size : Medium"
	dialog "  Attribute : Earth"
	wait()
	dialog "Explanation :"
	dialog "An insectivore that swallows"
	dialog "anything alive. When it finds"
	dialog "its prey, it strikes it first"
	dialog "with a long tentacle to"
	dialog "to paralyze it."
	wait()
	dialog "Once paralyzed, its prey is"
	dialog "put in a large tube attached"
	dialog "to its body where it is slowly"
	dialog "digested. Although this tube"
	dialog "has a skull mark, Mandragora"
	dialog "does not actually contain any"
	dialog "poison."
	wait()
	dialog "This digestive tube"
	dialog "apparatus also has a very unique,"
	dialog "but disgusting smell that is far"
	dialog "from useful in attracting prey."
	close()
end

npc("yuno_in03","Geographer#yuno",spr_GEOGRAPHER,48,108,3,0,0,"yuno_in03_Geographer#yuno_48108")
npc("yuno_in03","#GEOGRAPHER",spr_HIDDEN_NPC,46,108,1,0,0,"yuno_in03_GEOGRAPHER_46108")
function yuno_in03_GEOGRAPHER_46108()
	dialog " "
	dialog "  Scientific name : Geographer"
	dialog "  Size : Medium"
	dialog "  Attribute : Earth"
	wait()
	dialog "Explanation :"
	dialog "An insectivore that looks like"
	dialog "a sunflower. It uses the petal"
	dialog "like tentacles around its"
	dialog "mouth to attract and snare"
	dialog "its prey."
	wait()
	dialog "Unlike Mandragora, Geographer"
	dialog "does not have a tube to"
	dialog "store its prey. So it slowly"
	dialog "eats it's prey, little by little."
	wait()
	dialog "Although Geographer has small"
	dialog "and short roots, the roots are"
	dialog "tough and strong enough to"
	dialog "bear the weight of the upper body."
	wait()
	dialog "The namesake of this monster, a"
	dialog "human geographer that was"
	dialog "promptly eaten upon discovering"
	dialog "this species of beast, will"
	dialog "never be forgotten..."
	close()
end

npc("yuno_in03","Rafflesia#yuno",spr_RAFFLESIA,48,112,3,0,0,"yuno_in03_Rafflesia#yuno_48112")
npc("yuno_in03","#RAFFLESIA",spr_HIDDEN_NPC,46,112,1,0,0,"yuno_in03_RAFFLESIA_46112")
function yuno_in03_RAFFLESIA_46112()
	dialog  " "
	dialog "  Scientific name : Rafflesia"
	dialog "  Size : Small"
	dialog "  Attribute : Earth"
	wait()
	dialog "Explanation :"
	dialog "A puffy, leafy monster"
	dialog "threatened with extinction."
	dialog "Rafflesia is the rarest"
	dialog "monster in Rune-Midgard and"
	dialog "is thus protected by law."
	wait()
	dialog "Due to this situation, most Sages"
	dialog "are having a hard time to"
	dialog "research this monster."
	dialog "However, a few Sages are"
	dialog "currently seeking methods to"
	dialog "cultivate and save the Rafflesias."
	close()
end

npc("yuno_in03","Stem Worm#yuno",spr_STEM_WORM,48,116,3,0,0,"yuno_in03_Stem_Worm#yuno_48116")
npc("yuno_in03","#STEM_WORM",spr_HIDDEN_NPC,45,116,1,0,0,"yuno_in03_STEM_WORM_45116")
function yuno_in03_STEM_WORM_45116()
	dialog " "
	dialog "  Scientific name : Stem Worm"
	dialog "  Size : Medium"
	dialog "  Attribute : Wind"
	wait()
	dialog "Explanation :"
	dialog "A mutated Worm Tail that has a"
	dialog "round, brownish grey body with"
	dialog "a small head. It is covered"
	dialog "with scales and has a long"
	dialog "stem-like tail which is used"
	dialog "as a whip in attacks."
	close()
end


npc("yuno_in03","Blazzer#yuno",spr_BLAZZER,24,124,3,0,0,"yuno_in03_Blazzer#yuno_24124")
npc("yuno_in03","#BLAZZER",spr_HIDDEN_NPC,24,122,1,0,0,"yuno_in03_BLAZZER_24122")
function yuno_in03_BLAZZER_24122()
	dialog " "
	dialog "  Scientific name : Blazzer"
	dialog "  Size : Medium"
	dialog "  Attribute : Fire"
	wait()
	dialog "Explanation :"
	dialog "This is a fire ball that has been"
	dialog "seen near volcanic zones."
	dialog "Because of this monster's sudden"
	dialog "appearance, Sages believe that"
	dialog "volcanic activity may occur"
	dialog "sooner or later near Juno."
	wait()
	dialog "Blazzer blows out noxious gas"
	dialog "which harm passersby. It is"
	dialog "unknown whether or not these"
	dialog "are attacks or the Blazzer's"
	dialog "form of communication."
	close()
end

npc("yuno_in03","Ride Word#yuno",spr_RIDEWORD,28,124,5,0,0,"yuno_in03_Ride_Word#yuno_28124")
npc("yuno_in03","#RIDEWORD",spr_HIDDEN_NPC,28,122,1,0,0,"yuno_in03_RIDEWORD_28122")
function yuno_in03_RIDEWORD_28122()
	dialog " "
	dialog "  Scientific name : Ride Word"
	dialog "  Size : Small"
	dialog "  Attribute : Neutral"
	wait()
	dialog "Explanation :"
	dialog "It's a cursed magic book with"
	dialog "sharp teeth. It exists to attack any living thing nearby."
	close()
end

npc("yuno_in03","Megalodon#yuno",spr_MEGALODON,31,124,3,0,0,"yuno_in03_Megalodon#yuno_31124")
npc("yuno_in03","#MEGALODON",spr_HIDDEN_NPC,31,122,1,0,0,"yuno_in03_MEGALODON_31122")
function yuno_in03_MEGALODON_31122()
	dialog " "
	dialog "  Scientific name : Megalodon"
	dialog "  Size : Medium"
	dialog "  Attribute : Undead"
	wait()
	dialog "Explanation :"
	dialog "A skeleton fish that was brought"
	dialog "back to life by a curse. Although"
	dialog "It looks very threatening, it's"
	dialog "benign and will not attack"
	dialog "undersea travellers outright."
	close()
end

npc("yuno_in03","Sleeper#yuno",spr_SLEEPER,35,124,3,0,0,"yuno_in03_Sleeper#yuno_35124")
npc("yuno_in03","#SLEEPER",spr_HIDDEN_NPC,35,122,1,0,0,"yuno_in03_SLEEPER_35122")
function yuno_in03_SLEEPER_35122()
	dialog " "
	dialog "  Scientific name : Sleeper"
	dialog "  Size : Medium"
	dialog "  Attribute : Earth"
	wait()
	dialog "Explanation :"
	dialog "Unidentified sand creature."
	dialog "Usually it stays under the earth,"
	dialog "but when travellers step on the"
	dialog "sand, it may abruptly"
	dialog "appear to attack them."
	wait()
	dialog "It's smaller than Sandman and can"
	dialog "cause indirect attacks by causing a sand storm."
	close()
end

npc("yuno_in03","Ancient Mummy#yuno",spr_ANCIENT_MUMMY,39,124,3,0,0,"yuno_in03_Ancient_Mummy#yuno_39124")
npc("yuno_in03","#ANCIENT_MUMMY",spr_HIDDEN_NPC,39,122,1,0,0,"yuno_in03_ANCIENT_MUMMY_39122")
function yuno_in03_ANCIENT_MUMMY_39122()
	dialog " "
	dialog "  Scientific name : Ancient Mummy"
	dialog "  Size : Medium"
	dialog "  Attribute : Undead"
	wait()
	dialog "Explanation :"
	dialog "A mummy cursed with eternal life."
	dialog "Although wrapped in decaying"
	dialog "bandages, Ancient Mummy also"
	dialog "wears a splendid hair ornament"
	dialog "adorned with a snake."
	wait()
	dialog "This kind of head ornament"
	dialog "indicates that the Ancient"
	dialog "Mummy was a person of high rank"
	dialog "while he was still alive."
	wait()
	dialog "Since Ancient Mummy has"
	dialog "been wandering the underworld"
	dialog "for a long time, it does not have"
	dialog "any consciousness and will"
	dialog "attack any living thing nearby."
	close()
end

npc("yuno_in03","Incubus#yuno",spr_INCUBUS,18,122,5,0,0,"yuno_in03_Incubus#yuno_18122")
npc("yuno_in03","#INCUBUS",spr_HIDDEN_NPC,19,120,1,0,0,"yuno_in03_INCUBUS_19120")
function yuno_in03_INCUBUS_19120()
	dialog " "
	dialog "  Scientific name : Incubus"
	dialog "  Size : Medium"
	dialog "  Attribute : Shadow"
	wait()
	dialog "Explanation :"
	dialog "This demon attracts humans"
	dialog "with its stunningly beautiful"
	dialog "appearance. When it poses as a"
	dialog "male human, we call it Incubus."
	dialog "As a female, we call it Succubus."
	wait()
	dialog "This devil targets people with"
	dialog "mental vulnerabilities so that"
	dialog "it can eventually take them to hell."
	close()
end

npc("yuno_in03","Succubus#yuno",spr_SUCCUBUS,44,120,3,0,0,"yuno_in03_Succubus#yuno_44120")
npc("yuno_in03","#SUCCUBUS",spr_HIDDEN_NPC,42,120,1,0,0,"yuno_in03_SUCCUBUS_42120")
function yuno_in03_SUCCUBUS_42120()
	dialog " "
	dialog "  Scientific name : Succubus"
	dialog "  Size : Medium"
	dialog "  Attribute : Shadow"
	wait()
	dialog "Explanation :"
	dialog "This demon attracts humans"
	dialog "with its stunningly beautiful"
	dialog "appearance. When it poses as a"
	dialog "female human, we call it Succubus."
	dialog "As a male, we call it Incubus."
	wait()
	dialog "This devil targets people with"
	dialog "mental vulnerabilities so that"
	dialog "it can eventually take them to hell."
	close()
end
