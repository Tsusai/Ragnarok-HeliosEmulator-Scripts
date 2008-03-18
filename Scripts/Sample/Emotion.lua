npc("new_1-1","Emo kid",SPRITE_4_F_JOB_HUNTER,54,115,4,0,0,"new_1_1_Emo_kid_54150")
function new_1_1_Emo_kid_54150()
	dialog "Hello, please choose an emotion so I can go slit my wrists some more."
	while(1) do
		local mresult = menu("!","?","Music Note","Heart","Sweat Drop","Light Bulb","Dislike","Anger","$","...","Next","Cancel")
		if mresult == 1 then
			emotion(0)
		elseif mresult == 2 then
			emotion(1)
		elseif mresult == 3 then
			emotion(2)
		elseif mresult == 4 then
			emotion(3)
		elseif mresult == 5 then
			emotion(4)
		elseif mresult == 6 then
			emotion(5)
		elseif mresult == 7 then
			emotion(6)
		elseif mresult == 8 then
			emotion(7)
		elseif mresult == 9 then
			emotion(8)
		elseif mresult == 10 then
			emotion(9)
		elseif mresult == 11 then
			local mresult2 = menu("Scissors","Rock","Paper","Korean Flag","Big Heart","Thanks","Regret","Sorry","Laugh","Sweat","Next","Cancel")
			if mresult2 == 1 then
				emotion(10)
			elseif mresult2 == 2 then
				emotion(11)
			elseif mresult2 == 3 then
				emotion(12)
			elseif mresult2 == 4 then
				emotion(13)
			elseif mresult2 == 5 then
				emotion(14)
			elseif mresult2 == 6 then
				emotion(15)
			elseif mresult2 == 7 then
				emotion(16)
			elseif mresult2 == 8 then
				emotion(17)
			elseif mresult2 == 9 then
				emotion(18)
			elseif mresult2 == 10 then
				emotion(19)
			elseif mresult2 == 11 then
				local mresult3 = menu("Head Scratch","Good job","Shifty Eyes","Shock","O","X","Help!","Go!","Sob","Giggle","Next","Cancel")
				if mresult3 == 1 then
					emotion(20)
				elseif mresult3 == 2 then
					emotion(21)
				elseif mresult3 == 3 then
					emotion(22)
				elseif mresult3 == 4 then
					emotion(23)
				elseif mresult3 == 5 then
					emotion(24)
				elseif mresult3 == 6 then
					emotion(25)
				elseif mresult3 == 7 then
					emotion(26)
				elseif mresult3 == 8 then
					emotion(27)
				elseif mresult3 == 9 then
					emotion(28)
				elseif mresult3 == 10 then
					emotion(29)
				elseif mresult3 == 11 then
					local mresult4 = menu("Kiss","Kiss-Kiss","Sigh","Yeah!","Next","Cancel")
					if mresult4 == 1 then
						emotion(30)
					elseif mresult4 == 2 then
						emotion(31)
					elseif mresult4 == 3 then
						emotion(32)
					elseif mresult4 == 4 then
						emotion(33)
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