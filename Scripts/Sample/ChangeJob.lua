npc("new_1-1","ChangeJob",SPRITE_4_F_JOB_KNIGHT,51,120,4,0,0,"new_1_1_ChangeJob_54115")
function new_1_1_ChangeJob_54115()
	dialog "Hello"
	dialog "You are now a swordman!"
	JobChange(1)
	wait()
	dialog "Oh, you're a novice again, boohoo"
	JobChange(0)
	close()
end