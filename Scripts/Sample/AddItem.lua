npc("new_1-1","AddItem",SPRITE_4_F_JOB_KNIGHT,51,125,4,0,0,"new_1_1_AddItem_100872")
function new_1_1_AddItem_100872()
	dialog "Take this, I stole it"
	getitem("red_potion", 10)
	close()
end