npc("new_1-1","Menu and Var",SPRITE_4_F_JOB_HUNTER,52,115,4,0,0,"new_1_1_Menu_and_Var_54115")
function new_1_1_Menu_and_Var_54115()
	dialog "Hello"
	local temp = getvar("temp")
	dialog(temp)
	local mresult = menu("I have a hat",0,"false",4)
	if mresult == 1 then
		setvar("temp","I have a hat")
	elseif mresult == 2 then
		setvar("temp",0)
	elseif mresult == 3 then
		setvar("temp","false")
	elseif mresult == 4 then
		setvar("temp",4)
	end
	close()
end