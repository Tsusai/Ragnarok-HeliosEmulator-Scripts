npc("new_1-1","Emo kid",SPRITE_4_F_JOB_HUNTER,54,115,4,0,0,"new_1_1_Emo_kid_54150")
function new_1_1_Emo_kid_54150()
	dialog "Hello, please choose an emotion so I can go slit my wrists some more."
	while(1) do
		local mresult = menu("!","?","Music Note","Heart","Sweat Drop","Light Bulb","Dislike","Anger","$","...","Next","Cancel")
		if mresult < 11 then
			emotion(mresult-1)
		elseif mresult == 11 then
			local mresult2 = menu("Scissors","Rock","Paper","Korean Flag","Big Heart","Thanks","Regret","Sorry","Laugh","Sweat","Next","Cancel")
			if mresult2 < 11 then
				emotion(mresult2 + 9)
			elseif mresult2 == 11 then
				local mresult3 = menu("Head Scratch","Good job","Shifty Eyes","Shock","O","X","Help!","Go!","Sob","Giggle","Next","Cancel")
				if mresult3 < 11 then
					emotion(mresult3 + 19)
				elseif mresult3 == 11 then
					local mresult4 = menu("Kiss","Kiss-Kiss","Sigh","Yeah!","Next","Cancel")
					if mresult4 < 5 then
						emotion(mresult4 + 29)
					elseif mresult4 == 5 then
						
					elseif mresult4 == 6 then
						break
					end
				elseif mresult2 == 12 then
					break
				end
			elseif mresult2 == 12 then
				break
			end
		elseif mresult == 12 then
			break
		end
	end
	dialog "Thanks anyways, JERK!"
	dialog "YAY WRIST SLITTING TIME!"
	close()
end