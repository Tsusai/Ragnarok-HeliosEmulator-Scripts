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
-- |       Key needed to gain access is commented                |
-- |       Untill we gain the item commands                      |
-- \____________________________________________________________/

npc("c_tower3","Gatekeeper",SPRITE_4_M_02,10,249,4,0,0,"c_tower3_Gatekeeper_10249")
function c_tower3_Gatekeeper_10249()
	dialog "[Gatekeeper Riku]"
	dialog "Welcome to "
	dialog "Kinase - Blue Gallino"
	dialog "the one of Local Speciality in Aldebaran."
	dialog "However,from the 4th Floor of this Clock Tower,"
	dialog "You may not enter."
	dialog "Please go back to where you're from."
	wait()
	local mresulta = menu("About Clock Tower","About the 4th Floor","Move to the 4th Floor","End Dialogue")
	if mresulta == 1 then
		dialog "[Gatekeeper Riku]"
		dialog "Homeland of Alchemy,Aldebaran!"
		dialog "Long Time ago, there were"
		dialog "3 Legendary Alchemists...They are"
		dialog "Bruke Seimer,"
		dialog "Philip Warisez,"
		dialog "And.."
		wait()
		dialog "[Gatekeeper Riku]"
		dialog "Romero Specialre!"
		dialog "This venerable architecture is"
		dialog "their masterpiece."
		dialog "I assume you would feel something unusual"
		dialog "While on the way to this floor,"
		dialog "Every feature of This Clocktower "
		wait()
		dialog "[Gatekeeper Riku]"
		dialog "Consists of Mysterious Ancient Magics."
		dialog "If you just wander around here"
		dialog " without any intention"
		wait()
		dialog "[Gatekeeper Riku]"
		dialog "By any means,"
		dialog "You will meet with a mishap"
		dialog "by Gatekeeper Creatures."
		dialog "Please be careful .."
		close()
	
	elseif mresulta == 2 then
		dialog "[Gatekeeper Riku]"
		dialog "Ancient Alchemists"
		dialog "Sealed the Gate of 4th Floor using an Alchemistic Device "
		dialog "To keep something"
		dialog "From Evil Creatures and Human Enemies."
		dialog "To go through this door"
		wait()
		dialog "[Gatekeeper Riku]"
		dialog "It needs a Key."
		dialog "That Key has rumored to be possessed by Gatekeeper Creatures"
		dialog "Prowling around here."
		wait()
		dialog "[Gatekeeper Riku]"
		dialog "The Key is the Intensiveness of Ancient Alchemy,"
		dialog "By hearsay When used once,"
		dialog "It will be released from being spelled"
		dialog "And be disapeared."
		wait()
		dialog "[Gatekeeper Riku]"
		dialog "If that key"
		dialog "Comes into your possession,"
		dialog "Please show it to me."
		dialog "The one who possesses the Key"
		dialog "Will have access to go through"
		dialog "This Gate with his own will!"
		wait()
		dialog "[Gatekeeper Riku]"
		dialog "I will give you a chance."
		dialog ". . . . ."
		close()

	elseif mresulta == 3 then
		--if getvar(Key_Of_Clock_Tower) > 0 then
			dialog "[Gatekeeper Riku]"
			dialog "Hmm! I already felt that you are not an Ordinary person,"
			dialog "Now it seems to be successful in Speculation."
			dialog "Please,You may enter."
			dialog "May God bless you .."
			close()
			--dropitem("Key_Of_Clock_Tower",1)
			moveto("c_tower4",185,44)
		
		--[[else
			dialog "[Gatekeeper Riku]"
			dialog ". . . . . ."
			dialog "Unfortunately you don't have a privilege"
			dialog "To enter this Gate .."
			dialog "You won't be able to go through"
			dialog "As long as Ancient Alchemists"
			dialog " Don't approve you."
			close()]]--
		
	elseif mresulta == 4 then
		dialog "[Gatekeeper Riku]"
		dialog "This Clock Tower"
		dialog "Is the place where the 3 Ancient Legendary Alchemists"
		dialog "Have left their Spirits and Skills."
		dialog "Please Do not Scribble or Damage on the Interior."
		close()
	end
end

npc("alde_dun03","Gatekeeper",SPRITE_4W_F_01,264,16,4,0,0,"alde_dun03_Gatekeeper_26416")
function alde_dun03_Gatekeeper_26416()
	dialog "[Gatekeeper Boy]"
	dialog "Welcome to"
	dialog "Kinase - Blue Gallino"
	dialog "The one of Local Speciality in Aldebaran."
	dialog "You can't go through from B4th Floor,"
	dialog "Please go back."
	wait()
	local mresulta = menu("About Clock Tower","About B4th Floor","Move to the B4th Floor","End Dialogue")
	if mresulta == 1 then
		dialog "[Gatekeeper Boy]"
		dialog "Homeland of Alchemy,Aldebaran!"
		dialog "Long Time ago, there were"
		dialog "3 Legendary Alchemists...They are"
		dialog "Bruke Seimer"
		dialog "Philip Warisez"
		dialog "And .."
		wait()
		dialog "[Gatekeeper Boy]"
		dialog "Romero Specialre!"
		dialog "This venerable architecture is"
		dialog "their masterpiece."
		dialog "I assume you would feel something unusual"
		dialog "While on the way to this floor,"
		dialog "Every feature of This Clocktower "
		wait()
		dialog "[Gatekeeper Boy]"
		dialog "Consists of Mysterious Ancient Magics."
		dialog "If you just wander around here,"
		dialog " without any intention"
		wait()
		dialog "[Gatekeeper Boy]"
		dialog "By any means,"
		dialog "You will meet with a mishap"
		dialog "by Gatekeeper Creatures."
		dialog "Please be careful .."
		close()
	elseif mresulta == 2 then
		dialog "[Gatekeeper Boy]"
		dialog "Ancient Alchemists"
		dialog "Sealed the Gate of 4th Floor using an Alchemistic Device "
		dialog "To keep something"
		dialog "From Evil Creatures and Human Enemies."
		dialog "To go through this door"
		wait()
		dialog "[Gatekeeper Boy]"
		dialog "It needs a Key."
		dialog "That Key has rumored to be possessed by Gatekeeper Creatures"
		dialog "Prowling around here."
		wait()
		dialog "[Gatekeeper Boy]"
		dialog "The Key is the Intensiveness of Ancient Alchemy,"
		dialog "By hearsay When used once,"
		dialog "It will be released from being spelled"
		dialog "And be disapeared."
		wait()
		dialog "[Gatekeeper Boy]"
		dialog "If that key"
		dialog "Comes into your porssession,"
		dialog "Please show me."
		dialog "The one who possesses the Key"
		dialog "Will have access to go through"
		dialog "This Gate with his own will!"
		wait()
		dialog "[Gatekeeper Boy]"
		dialog "I will give you a chance."
		dialog ". . . . ."
		close()
	elseif mresulta == 3 then
		--if getvar(Underground_Key) > 0 then
			dialog "[Gatekeeper Boy]"
			dialog "Hmm! I already felt that you are not an Ordinary person,"
			dialog "Now it seems to be successful in Speculation."
			dialog "Please,You may enter."
			dialog "May God bless you .."
			close()
			--dropitem("Underground_Key",1)
			moveto("alde_dun04",79,267)
		--[[else
			dialog "[Gatekeeper Boy]"
			dialog ". . . . . ."
			dialog "Unfortunately you don't have a privilege"
			dialog "To enter this Gate .."
			dialog "You won't be able to go through"
			dialog "As long as Ancient Alchemists"
			dialog " Don't grant you."
			close()]]--
		
	elseif mresulta == 4 then
		dialog "[Gatekeeper Boy]"
		dialog "This Clock Tower"
		dialog "Is the place where the 3 Ancient Legendary Alchemists"
		dialog "Has left their Spirits and Skills."
		dialog "Please Do not Scribble or Damage on the Interior."
		close()
	end
end
