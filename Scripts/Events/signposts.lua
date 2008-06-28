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

npc("prontera","Sign Post",spr_HIDDEN_NPC,158,213,1,1,1,"prontera_Sign_Post_158213")
function prontera_Sign_Post_158213()

	dialog "^993300- The Sign Post Reads -^000000"
	dialog "North to Prontera Castle"
	dialog "North to Al De Baran"
	dialog "Northwest to Geffen"
	dialog "East to Prontera Fields"
	dialog "South to Prontera Fields"
	dialog "Southeast to Alberta"
	dialog "Southwest to Morroc"
	dialog "Southwest to Comodo"
	dialog "West to Prontera Fields"
	close()
end

npc("prontera","Prontera Bulletin",spr_HIDDEN_NPC,156,197,1,1,1,"prontera_Prontera_Bulletin_156197")
function prontera_Prontera_Bulletin_156197()
	dialog "^993300- The Prontera Bulletin Reads -^000000"
	dialog "Wanted: Two Clip Accessories"
	dialog "Please contact..."
	dialog "- Name appears to be worn off -"
	dialog "Selling: Used Bastard Sword"
	dialog "Will take any offer!"
	dialog "Contact Abramulious"
	dialog "Help Wanted: Buying or selling a used Peco Peco?"
	dialog "Contact Grasisium in Morroc now!"
	close()
end

npc("prontera","Sign",spr_HIDDEN_NPC,278,212,1,1,1,"prontera_Sign_278212")
function prontera_Sign_278212()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Please help keep Prontera a clean place."
	close()
end

npc("prontera","Sign",spr_HIDDEN_NPC,150,326,1,1,1,"prontera_Sign_150326")
function prontera_Sign_150326()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Citizens of Prontera are Welcomed in the Prontera Castle."
	close()
end

npc("prontera","Billboard",spr_HIDDEN_NPC,31,212,1,1,1,"prontera_Billboard_31212")
function prontera_Billboard_31212()
	dialog "^993300- The Billboard Reads -^000000"
	dialog "~WANTED~"
	dialog "iROGM01"
	dialog "DEAD or ALIVE"
	dialog "*Kill Stealing in Glast Heim*"
	dialog "~REWARD~"
	dialog "50,000 Zeny "
	dialog "Contact: iROGM02"
	close()
end

npc("prontera","Billboard",spr_HIDDEN_NPC,165,305,1,1,1,"prontera_Billboard_165305")
function prontera_Billboard_165305()
	dialog "^993300- The Billboard Reads -^000000"
	dialog "We hope you enjoy your stay in Prontera."
	close()
end

npc("prontera","Sign",spr_HIDDEN_NPC,147,305,1,1,1,"prontera_Sign_147305")
function prontera_Sign_147305()
	dialog "^993300- The Sign Reads -^000000"
	dialog "- Old, torn gibberish you can't read -"
	close()
end

npc("prontera","Sign",spr_HIDDEN_NPC,145,304,1,1,1,"prontera_Sign_145304")
function prontera_Sign_145304()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Note:"
	dialog "I lost my cart in Mt. Mjolnir, if someone finds it please tell me, my life was in that bucket of goods!"
	close()
end

npc("morocc","Sign",spr_HIDDEN_NPC,144,84,1,1,1,"morocc_Sign_14484")
function morocc_Sign_14484()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Wanted: Body guard to protect my shop from thieves"
	dialog "Please contact Butcher"
	close()
end

npc("morocc","Sign",spr_HIDDEN_NPC,145,83,1,1,1,"morocc_Sign_14583")
function morocc_Sign_14583()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Selling, well groomed Peco Peco!"
	dialog "This beautiful specimen has only been ridden by myself, comes with a saddle, a harness and..."
	close()
end

npc("morocc","Bulletin",spr_HIDDEN_NPC,32,174,1,1,1,"morocc_Bulletin_32174")
function morocc_Bulletin_32174()
	dialog "^993300- The Bulletin Reads -^000000"
	dialog "^0099FFMorroc women up in arms!^000000"
	dialog "A recent study has shown that the majority of male citizens in"
	dialog "Morroc prefer the women of Geffen. 90 of the 100 male citizens"
	dialog "of Morroc claimed that they have had numerous relationships"
	dialog "with Geffen women outside of the Morroc Region."
	wait()
	dialog "^993300- The Bulletin Continued -^000000"
	dialog "'I just prefer their company better, that's all...' said one Morroc man."
	dialog "'it's not like I'm against Morroc women or anything, so what's the problem...'"
	dialog "Besides emotional and stressful issues in regards to the daily"
	dialog "activities of these males."
	dialog "Hunting still seems to be their number one priority"
	dialog "over finding decent woman within the region...."
	close()
end

npc("morocc","Sign",spr_HIDDEN_NPC,168,266,1,1,1,"morocc_Sign_168266")
function morocc_Sign_168266()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Welcome to Morroc."
	close()
end

npc("morocc","Billboard",spr_HIDDEN_NPC,168,264,1,1,1,"morocc_Billboard_168264")
function morocc_Billboard_168264()
	dialog "^993300- The Billboard Reads -^000000"
	dialog "^CC0033Battle Royal!^000000"
	dialog "Do you have what it takes to battle someone in a no holds barred, player vs. player game of death!"
	dialog "Head to Prontera if you think you have what it takes!"
	close()
end

npc("morocc","Sign",spr_HIDDEN_NPC,298,211,1,1,1,"morocc_Sign_298211")
function morocc_Sign_298211()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Welcome to Morroc."
	close()
end

npc("geffen","Geffen Bulletin",spr_HIDDEN_NPC,116,58,1,1,1,"geffen_Geffen_Bulletin_11658")
function geffen_Geffen_Bulletin_11658()
	dialog "^993300- The Geffen Bulletin Reads -^000000"
	dialog "Remember Wizard's...It's not how many skills you know, it's the magic that counts!"
	close()
end

npc("geffen","Sign",spr_HIDDEN_NPC,61,174,1,1,1,"geffen_Sign_61174")
function geffen_Sign_61174()
	dialog "^993300- The Sign Reads -^000000"
	dialog "- Seems to be written in a language unfamiliar to you -"
	close()
end

npc("geffen","Billboard",spr_HIDDEN_NPC,113,104,1,1,1,"geffen_Billboard_113104")
function geffen_Billboard_113104()
	dialog "^993300- The Billboard Reads -^000000"
	dialog "Selling: Brand new Chon Chon Doll!"
	dialog "What a great gift to give to a loved one, contact me now!"
	dialog "- Name seems to be smeared -"
	dialog " "
	dialog "Buying: Manteau!"
	dialog "I'm freezing and I have no zeny, please help me!"
	dialog "Contact Edionyus"
	close()
end

npc("geffen","Sign Post",spr_HIDDEN_NPC,119,190,1,1,1,"geffen_Sign_Post_119190")
function geffen_Sign_Post_119190()
	dialog "^993300- The Sign Post Reads -^000000"
	dialog "North to Geffen Fields"
	dialog "Northeast to Al De Baran"
	dialog "Northwest to Glast Heim"
	dialog "East to Geffen Fields"
	dialog "South to Morroc"
	dialog "Southeast to Prontera"
	dialog "Southeast to Alberta"
	dialog "Southwest to Comodo"
	dialog "West to Geffen Fields"
	close()
end

npc("geffen","Sign",spr_HIDDEN_NPC,168,175,1,1,1,"geffen_Sign_168175")
function geffen_Sign_168175()
	dialog "^993300- The Sign Reads -^000000"
	dialog "''Your always welcomed in Geffen''"
	close()
end

npc("geffen","Sign",spr_HIDDEN_NPC,183,61,1,1,1,"geffen_Sign_18361")
function geffen_Sign_18361()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Welcome."
	close()
end

npc("aldebaran","Billboard",spr_HIDDEN_NPC,181,172,1,1,1,"aldebaran_Billboard_181172")
function aldebaran_Billboard_181172()
	dialog "^993300- The Billboard Reads -^000000"
	dialog "In Search of:"
	dialog "I lost my Bongun pet, it wasn't my fault, it just ran away..."
	dialog "If you see him, please let me know. Reward to whomever finds him!"
	close()
end

npc("aldebaran","Al De Baran Bulletin",spr_HIDDEN_NPC,133,104,1,1,1,"aldebaran_Al_De_Baran_Bulletin_133104")
function aldebaran_Al_De_Baran_Bulletin_133104()
	dialog "^993300- The Al De Baran Bulletin Reads -^000000"
	dialog "''Enjoy your stay in Al De Baran''"
	close()
end

npc("aldebaran","Billboard",spr_HIDDEN_NPC,54,223,1,1,1,"aldebaran_Billboard_54223")
function aldebaran_Billboard_54223()
	dialog "^993300- The Billboard Reads -^000000"
	dialog "Help Wanted:"
	dialog "We are looking for young, strong and athletic people who are"
	dialog "interested in a full time career as a Blacksmith. If your interested, please contact Altiregen"
	dialog "in Geffen!"
	close()
end

hiddenwarp("aldebaran","signwarp1019",134,116,1,1)
function aldebaran_Billboard_54223()
	dialog "[Home Owner]"
	dialog "Get off my roof you no good leecher!"
	close()
end

npc("aldebaran","Sign",spr_HIDDEN_NPC,217,222,1,1,1,"aldebaran_Sign_217222")
function aldebaran_Sign_217222()
	dialog "^993300- The Sign Reads -^000000"
	dialog "I saw Santa Claus in Lutie!"
	dialog "- The rest looks like scribble -"
	close()
end

npc("izlude","Sign",spr_HIDDEN_NPC,54,139,1,1,1,"izlude_Sign_54139")
function izlude_Sign_54139()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Welcome to the Swordsman Academy."
	close()
end

npc("izlude","Sign",spr_HIDDEN_NPC,144,148,1,1,1,"izlude_Sign_144148")
function izlude_Sign_144148()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Welcome."
	close()
end

npc("alberta","Billboard",spr_HIDDEN_NPC,35,241,1,1,1,"alberta_Billboard_35241")
function alberta_Billboard_35241()
	dialog "^993300- The Billboard Reads -^000000"
	dialog "Welcome to Alberta, the Merchant's paradise."
	close()
end

npc("alberta","Billboard",spr_HIDDEN_NPC,37,39,1,1,1,"alberta_Billboard_3739")
function alberta_Billboard_3739()
	dialog "^993300- The Billboard Reads -^000000"
	dialog "Welcome."
	close()
end

npc("alberta","Sign",spr_HIDDEN_NPC,99,151,1,1,1,"alberta_Sign_99151")
function alberta_Sign_99151()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Tools by the Cart full!"
	dialog "You need tools? We got'em!"
	dialog "Come on in, we never close!"
	close()
end

npc("alberta","Sign",spr_HIDDEN_NPC,196,152,1,1,1,"alberta_Sign_196152")
function alberta_Sign_196152()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Docking and Shipment times very on load. For information regarding"
	dialog "Shipping and Receiving, please..."
	dialog "- You can't make out the rest -"
	close()
end

npc("alberta","Sign",spr_HIDDEN_NPC,149,54,1,1,1,"alberta_Sign_14954")
function alberta_Sign_14954()
	dialog "^993300- The Sign Reads -^000000"
	dialog "Welcome."
	close()
end
