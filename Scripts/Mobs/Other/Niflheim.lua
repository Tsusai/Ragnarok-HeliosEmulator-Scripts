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
--|   - First Version for Helios  [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

hiddenwarp("niflheim","summon_mob",1,1,0,0)
OnInit:()
	InitTimer()
end

OnTimer:(7980000)
	local select = math.random(1,7)
	if (select == 1) then
		callmonster("niflheim","LORD_OF_DEATH","Lord of the Dead",327,193)
		cmdothernpc("summon_mob1","summon1")
		cmdothernpc("summon_mob1","summon8")
	elseif (select == 2) then
		callmonster("niflheim","LORD_OF_DEATH","Lord of the Dead",337,252)
		cmdothernpc("summon_mob1","summon2")
		cmdothernpc("summon_mob1","summon8")
	elseif (select == 3) then
		callmonster("niflheim","LORD_OF_DEATH","Lord of the Dead",190,185)
		cmdothernpc("summon_mob1","summon3")
		cmdothernpc("summon_mob1","summon8")
	elseif (select == 4) then
		callmonster("niflheim","LORD_OF_DEATH","Lord of the Dead",131,138)
		cmdothernpc("summon_mob1","summon4")
		cmdothernpc("summon_mob1","summon8")
	elseif (select == 5) then
		callmonster("niflheim","LORD_OF_DEATH","Lord of the Dead",311,64)
		cmdothernpc("summon_mob1","summon5")
		cmdothernpc("summon_mob1","summon8")
	elseif (select == 6) then
		callmonster("niflheim","LORD_OF_DEATH","Lord of the Dead",238,131)
		cmdothernpc("summon_mob1","summon6")
		cmdothernpc("summon_mob1","summon8")
	elseif (select == 7) then
		callmonster("niflheim","LORD_OF_DEATH","Lord of the Dead",86,219)
		cmdothernpc("summon_mob1","summon7")
		cmdothernpc("summon_mob1","summon8")
	end
	disablenpc "summon_mob"
end

OnMyMobDead:()
	cmdothernpc("summon_mob1","reset")
	enablenpc "summon_mob"
	InitTimer()
end

hiddenwarp("niflheim","summon_mob1",2,2,0,0)
OnCommand: "summon1"
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",330,193)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",324,193)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",327,196)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",327,190)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",324,190)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",330,190)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",324,196)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",330,196)
	disablenpc "summon_mob1"
end

OnCommand: "summon2"
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",337,255)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",337,249)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",334,252)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",340,252)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",334,249)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",340,255)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",340,249)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",334,255)
	disablenpc "summon_mob1"
end

OnCommand: "summon3"
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",190,188)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",190,182)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",193,185)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",187,185)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",187,182)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",193,182)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",193,188)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",187,188)
	disablenpc "summon_mob1"
end

OnCommand: "summon4"
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",131,141)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",131,135)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",128,138)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",134,138)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",134,141)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",128,141)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",134,135)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",128,135)
	disablenpc "summon_mob1"
end

OnCommand: "summon5"
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",311,67)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",311,61)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",308,64)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",314,64)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",314,61)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",314,67)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",308,67)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",308,61)
	disablenpc "summon_mob1"
end

OnCommand: "summon6"
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",238,134)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",238,128)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",235,131)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",241,131)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",235,128)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",235,134)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",241,128)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",241,134)
	disablenpc "summon_mob1"
end

OnCommand: "summon7"
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",86,222)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",86,216)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",89,219)
	callmonster("niflheim","BLOODY_MURDERER","Bloody Murderer",83,219)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",89,222)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",89,216)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",83,222)
	callmonster("niflheim","LOLI_RURI","Loli Ruri",83,216)
	disablenpc "summon_mob1"
end

OnCommand: "summon8"
	callmonster("niflheim","DISGUISE","Disguise",154,95)
	callmonster("niflheim","DISGUISE","Disguise",115,65)
	callmonster("niflheim","DISGUISE","Disguise",330,195)
	callmonster("niflheim","DISGUISE","Disguise",151,83)
	callmonster("niflheim","DISGUISE","Disguise",285,245)
	callmonster("niflheim","DISGUISE","Disguise",235,135)
	callmonster("niflheim","DISGUISE","Disguise",265,48)
	callmonster("niflheim","DISGUISE","Disguise",186,139)
	callmonster("niflheim","DISGUISE","Disguise",166,267)
	callmonster("niflheim","DISGUISE","Disguise",82,202)
	callmonster("niflheim","DISGUISE","Disguise",219,44)
	callmonster("niflheim","DISGUISE","Disguise",287,44)
	callmonster("niflheim","DISGUISE","Disguise",275,165)
	callmonster("niflheim","DISGUISE","Disguise",138,204)
	callmonster("niflheim","DISGUISE","Disguise",299,39)
	callmonster("niflheim","DISGUISE","Disguise",31,154)
	callmonster("niflheim","DULLAHAN","Dullahan",154,96)
	callmonster("niflheim","DULLAHAN","Dullahan",116,65)
	callmonster("niflheim","DULLAHAN","Dullahan",151,84)
	callmonster("niflheim","DULLAHAN","Dullahan",286,245)
	callmonster("niflheim","DULLAHAN","Dullahan",330,196)
	callmonster("niflheim","DULLAHAN","Dullahan",236,135)
	callmonster("niflheim","DULLAHAN","Dullahan",165,49)
	callmonster("niflheim","DULLAHAN","Dullahan",167,267)
	callmonster("niflheim","DULLAHAN","Dullahan",882,203)
	callmonster("niflheim","DULLAHAN","Dullahan",220,44)
	callmonster("niflheim","DULLAHAN","Dullahan",287,45)
	callmonster("niflheim","DULLAHAN","Dullahan",276,166)
	callmonster("niflheim","DULLAHAN","Dullahan",139,205)
	callmonster("niflheim","DULLAHAN","Dullahan",300,39)
	callmonster("niflheim","DULLAHAN","Dullahan",31,155)
	disablenpc "summon_mob"
end

OnCommand: "reset"
	resetmymob()
end
