npc("new_1-1","Menu and Var",SPRITE_4_F_JOB_KNIGHT,54,120,4,0,0,"new_1_1_ChangeJob_54115")
function new_1_1_ChangeJob_54115()
	dialog "Hello"
	dialog "You are now a swordman!"
	JobChange(1)
	wait()
	dialog "Oh, you're a novice again, boohoo"
	JobChange(0)
	close()
end