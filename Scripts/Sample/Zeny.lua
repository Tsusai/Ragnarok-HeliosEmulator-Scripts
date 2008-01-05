npc("new_1-1","Zeny NPC",SPRITE_4_F_JOB_HUNTER,53,115,4,0,0,"new_1_1_Zeny_NPC_53115")
function new_1_1_Zeny_NPC_53115()
	dialog "Hello"
	dialog "I'll attempt to eat 50z"
	wait()
	getgold(-50)
	dialog "Eaten..now to give it back"
	wait()
	getgold(50)
	dialog "Returned, bye"
	close()
end