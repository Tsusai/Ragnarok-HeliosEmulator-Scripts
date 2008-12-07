npc("new_1-1","Instance",SPRITE_4_F_JOB_HUNTER,55,117,4,0,0,"new_1_1_instance_55117")
function new_1_1_instance_55117()
	local temp = createinstancemap(getvar(VAR_CHARACTERID),"new_1-1")
	dialog(temp)
	wait()
	moveto(temp,getvar(VAR_CURXPOS),getvar(VAR_CURYPOS))
	close()
end