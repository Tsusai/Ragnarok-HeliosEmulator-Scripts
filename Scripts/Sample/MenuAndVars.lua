npc("new_1-1","Menu and Var",spr_4_F_JOB_HUNTER,54,115,4,0,0,"new_1_1_Menu_and_Var_54115")
function new_1_1_Menu_and_Var_54115()
	dialog "Hello"
	local temp = getvar("temp")
	dialog(temp)
	local mresult = menu(1,2,3,4)
	setvar("temp",mresult)
	close()
end