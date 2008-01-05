function Kafra_Warp()
	dialog "[Kafra]"
	dialog "I'm a Warping NPC."
	dialog "I can warp you to almost all towns and dungeons."
	dialog "Please choose a destination:"
	wait()
	local Done = 0
	while(Done == 0) do
		local MainMenuResult = menu("Towns","Dungeons","Cancel")
		if MainMenuResult == 1 then
			Done = Kafra_Warp_Towns()
		elseif MainMenuResult == 2 then
			Done = Kafra_Warp_Dungeons()
		elseif MainMenuResult == 3 then
			Done = 1
		end
	end
	
	if Done ~= 1 then
		dialog "[Kafra]"
		dialog("We hope you enjoy your stay in " .. Done .. ".")
		close()
	end
end

function Kafra_Warp_Towns()
	local TownMenuResult = menu("Alberta","Aldebaran","Amatsu","Arunafeltz","Ayothaya","Comodo","Einbech","Einbroch","Geffen","Gonryun","Hugel","Izlude","Jawaii","Lighthalzen","Louyang","Lutie","Morroc","Niflheim","Payon","Prontera","Umbala","Yuno","Cancel")
	if TownMenuResult == 1 then
		moveto("alberta",19,233)
		return("Alberta")
	elseif TownMenuResult == 2 then
		moveto("aldebaran",40,123)
		return("Aldebaran")
	elseif TownMenuResult == 3 then
		moveto("amatsu",198,84)
		return("Amatsu")
	elseif TownMenuResult == 4 then
		moveto("rachel",130,137)
		return("Arunafeltz")
	elseif TownMenuResult == 5 then
		moveto("ayothaya",150,163)
		return("Ayothaya")
	elseif TownMenuResult == 6 then
		moveto("comodo",188,158)
		return("Comodo")
	elseif TownMenuResult == 7 then
		moveto("einbech",70,95)
		return("Einbech")
	elseif TownMenuResult == 8 then
		moveto("einbroch",64,200)
		return("Einbroch")
	elseif TownMenuResult == 9 then
		moveto("geffen",120,64)
		return("Geffen")
	elseif TownMenuResult == 10 then
		moveto("gonryun",160,121)
		return("Gonryun")
	elseif TownMenuResult == 11 then
		moveto("hugel",96,145)
		return("Hugel")
	elseif TownMenuResult == 12 then
		moveto("izlude",35,78)
		return("Izlude")
	elseif TownMenuResult == 13 then
		moveto("jawaii",213,230)
		return("Jawaii")
	elseif TownMenuResult == 14 then
		moveto("lighthalzen",158,92)
		return("Lighthalzen")
	elseif TownMenuResult == 15 then
		moveto("louyang",210,108)
		return("Louyang")
	elseif TownMenuResult == 16 then
		moveto("xmas_fild01",91,63)
		return("Lutie")
	elseif TownMenuResult == 17 then
		moveto("morocc",160,294)
		return("Morocc")
	elseif TownMenuResult == 18 then
		moveto("niflheim",85,154)
		return("Niflheim")
	elseif TownMenuResult == 19 then
		moveto("payon",107,118)
		return("Payon")
	elseif TownMenuResult == 20 then
		moveto("prontera",156,180)
		return("Prontera")
	elseif TownMenuResult == 21 then
		moveto("umbala",145,155)
		return("Umbala")
	elseif TownMenuResult == 22 then
		moveto("yuno",157,51)
		return("Yuno")
	elseif TownMenuResult == 23 then
		return(0)
	end
end

function Kafra_Warp_Dungeons()
local DungeonMenuResult = menu("Orc Dungeon","Pyra Dungeon","Sphinx Dungeon","Payon Dungeon","Bibalan Dungeon","Treasure Island","Cancel")
	if DungeonMenuResult == 1 then
		moveto("in_orcs01",28,157)
		return("the Orc Dungeon")
	elseif DungeonMenuResult == 2 then
		moveto("moc_ruins",58,161)
		return("the Pyramids")
	elseif DungeonMenuResult == 3 then
		moveto("moc_fild19",96,99)
		return("the Sphinx")
	elseif DungeonMenuResult == 4 then
		moveto("pay_arche",45,132)
		return("the Payon Caves")
	elseif DungeonMenuResult == 5 then
		moveto("iz_dun00",168,168)
		return("Bibalan")
	elseif DungeonMenuResult == 6 then
		moveto("alb2trea",91,63)
		return("Treasure Island")
	elseif DungeonMenuResult == 7 then
		return(0)
	end
end


--Warper Copies
--Towns
npc("alberta"," Kapra",SPRITE_4_F_KAFRA2,25,241,3,0,0,"Kafra_Warp")
npc("aldebaran"," Kapra",SPRITE_4_F_KAFRA2,136,120,3,0,0,"Kafra_Warp")
npc("amatsu"," Kapra",SPRITE_4_F_KAFRA2,200,79,1,0,0,"Kafra_Warp")
npc("rachel"," Kapra",SPRITE_4_F_KAFRA2,122,148,4,0,0,"Kafra_Warp")
npc("ayothaya"," Kapra",SPRITE_4_F_KAFRA2,143,162,4,0,0,"Kafra_Warp")
npc("comodo"," Kapra",SPRITE_4_F_KAFRA2,194,158,4,0,0,"Kafra_Warp")
npc("einbech"," Kapra",SPRITE_4_F_KAFRA2,142,246,4,0,0,"Kafra_Warp")
npc("einbroch"," Kapra",SPRITE_4_F_KAFRA2,69,202,4,0,0,"Kafra_Warp")
npc("geffen"," Kapra",SPRITE_4_F_KAFRA2,118,66,3,0,0,"Kafra_Warp")
npc("gonryun"," Kapra",SPRITE_4_F_KAFRA2,151,130,4,0,0,"Kafra_Warp")
npc("hugel"," Kapra",SPRITE_4_F_KAFRA2,90,159,4,0,0,"Kafra_Warp")
npc("izlude"," Kapra",SPRITE_4_F_KAFRA2,134,97,3,0,0,"Kafra_Warp")
npc("lighthalzen"," Kapra",SPRITE_4_F_KAFRA2,154,199,4,0,0,"Kafra_Warp")
npc("louyang"," Kapra",SPRITE_4_F_KAFRA2,159,117,4,0,0,"Kafra_Warp")
npc("xmas"," Kapra",SPRITE_4_F_KAFRA2,150,136,4,0,0,"Kafra_Warp")
npc("morocc"," Kapra",SPRITE_4_F_KAFRA2,156,293,4,0,0,"Kafra_Warp")
npc("niflheim"," Kapra",SPRITE_4_F_KAFRA2,86,157,4,0,0,"Kafra_Warp")
npc("payon"," Kapra",SPRITE_4_F_KAFRA2,99,118,3,0,0,"Kafra_Warp")
npc("prontera"," Kapra",SPRITE_4_F_KAFRA2,146,204,4,0,0,"Kafra_Warp")
npc("umbala"," Kapra",SPRITE_4_F_KAFRA2,132,130,4,0,0,"Kafra_Warp")
npc("yuno"," Kapra",SPRITE_4_F_KAFRA2,137,162,4,0,0,"Kafra_Warp")

--Dungeons
npc("gef_fild10"," Kapra",SPRITE_4_F_KAFRA2,62,335,3,0,0,"Kafra_Warp")
npc("moc_ruins"," Kapra",SPRITE_4_F_KAFRA2,64,167,3,0,0,"Kafra_Warp")
npc("pay_arche"," Kapra",SPRITE_4_F_KAFRA2,39,138,3,0,0,"Kafra_Warp")
npc("moc_fild19"," Kapra",SPRITE_4_F_KAFRA2,108,102,3,0,0,"Kafra_Warp")
npc("izlu2dun"," Kapra",SPRITE_4_F_KAFRA2,109,58,3,0,0,"Kafra_Warp")
npc("alb2trea"," Kapra",SPRITE_4_F_KAFRA2,57,69,3,0,0,"Kafra_Warp")

