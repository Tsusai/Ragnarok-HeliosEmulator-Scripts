-- _________________________________________________ --
--/                                                 \--
--|    _    _          _   _                        |--
--|   | |  | |        | | (_)                       |--
--|   | |__| |   ___  | |  _    ___    ___          |--
--|   |  __  |  / _ \ | | | |  / _ \  / __|         |--
--|   | |  | | |  __/ | | | | | (_) | \__ \         |--
--|   |_|  |_|  \___| |_| |_|  \___/  |___/         |--
--|                                                 |--
--|-------------------------------------------------|--
--| 31/12/2007                                      |--
--|   -Added New header [Spre]                      |--
--|                                                 |--
--|                                                 |--
--| 29/12/2007                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

warp("aldebaran","alde_to_c_tower1",140,135,1,1)
function alde_to_c_tower1()
	moveto("c_tower1",199,159)
end

warp("c_tower1","c_tower_to_alde",200,157,1,1)
function c_tower_to_alde()
	moveto("aldebaran",139,131)
end

warp("c_tower1","c_tower1_to_alde_dun1",123,22,1,1)
function c_tower1_to_alde_dun1()
	moveto("alde_dun01",297,25)
end

warp("c_tower1","c_tower1_to_c_tower2",235,226,1,1)
function c_tower1_to_c_tower2()
	moveto("c_tower2",268,26)
end

warp("c_tower2","c_tower2_to_c_tower1",273,26,1,1)
function c_tower2_to_c_tower1()
	moveto("c_tower1",235,223)
end

warp("c_tower2","c_tower2_to_c_tower3",142,283,1,1)
function c_tower2_to_c_tower3()
	moveto("c_tower3",65,147)
end

warp("c_tower2","c_tower2_to_alde_dun03",24,24,1,1)
function c_tower2_to_alde_dun03()
	moveto("alde_dun03",277,178)
end

--warp "c_tower2" "c_tower2_to_RandomB(c2_1 : RandomB)" 13 288 1 1
--OnTouch:
-- var ranc2_1 = rand 1 5
-- if ranc2_1 == 1
--  moveto "c_tower2" 13 282
-- elseif ranc2_1 == 2
--  moveto "alde_dun03" 175 131
-- elseif ranc2_1 == 3
--  moveto "c_tower3" 235 7
-- elseif ranc2_1 == 4
--  moveto "alde_dun04" 84 36
-- else
--  moveto "c_tower4" 65 77
-- endif
--return

warp("c_tower2","c_tower2_to_RandomB",13,288,1,1)
function c_tower2_to_RandomB()
	local ranc2_1 = math.random(1,3)
	if ranc2_1 == 1 then
		moveto("c_tower2",13,282)
	elseif ranc2_1 == 2 then
		moveto("alde_dun03",175,131)
	else
		moveto("c_tower3",235,7)
	end
end

--warp "c_tower2" "c_tower2_to_RandomA(c2_3 : RandomA)" 223 267 1 1
--OnTouch:
-- var ranc2_3 = rand 1 4
-- if ranc2_3 == 1
--  moveto "c_tower2" 228 267
-- elseif ranc2_3 == 2
--  moveto "alde_dun03" 130 130
-- elseif ranc2_3 == 3
--  moveto "c_tower3" 252 29
-- else
--  moveto "c_tower4" 152 95
-- endif
--return

warp("c_tower2","c_tower2_to_RandomA",223,267,1,1)
function c_tower2_to_RandomA()
	local ranc2_3 = math.random(1,3)
	if ranc2_3 == 1 then
		moveto("c_tower2",228,267)
	elseif ranc2_3 == 2 then
		moveto("alde_dun03",130,130)
	else
		moveto("c_tower3",252,29)
	end
end

--warp "c_tower3" "c_tower3_to_c_tower4(c3_2 : c4_1)" 10 249 1 1
--OnTouch:
-- moveto "c_tower4" 189 30
--return

warp("c_tower3","c_tower3_to_c_tower2",60,147,1,1)
function c_tower3_to_c_tower2()
	moveto("c_tower2",148,283)
end

warp("c_tower3","c_tower3_to_alde_dun02",42,41,1,1)
function c_tower3_to_alde_dun02()
	moveto("alde_dun02",127,169)
end

warp("c_tower3","c_tower3_to_alde_dun01",7,39,1,1)
function c_tower3_to_alde_dun01()
	moveto("alde_dun01",171,158)
end

warp("c_tower3","c_tower3_to_c_tower1",146,8,1,1)
function c_tower3_to_c_tower1()
	moveto("c_tower1",235,223)
end

warp("c_tower3","c_tower3_to_alde_dun03",212,159,1,1)
function c_tower3_to_alde_dun03()
	moveto("alde_dun03",276,53)
end

--warp "c_tower3" "c_tower3_to_RandomC(c3_9 : Randomc)" 163 252 1 1
--OnTouch:
-- var ranc3_9 = rand 1 4
-- if ranc3_9 == 1
--  moveto "c_tower3" 168 252
-- elseif ranc3_9 == 2
--  moveto "alde_dun02" 262 41
-- elseif ranc3_9 == 3
--  moveto "c_tower4" 73 154
-- else
--  moveto "c_tower4" 140 149
-- endif
--return

warp("c_tower3","c_tower3_to_RandomC",163,252,1,1)
function c_tower3_to_RandomC()
	local ranc3_9 = math.random(1,2)
	if ranc3_9 == 1 then
		moveto("c_tower3",168,252)
	else
		moveto("alde_dun02",262,41)
	end
end

--warp "c_tower3" "c_tower3_to_RandomB(c3_7 : RandomB)" 240 7 1 1
--OnTouch:
-- var ranc3_7 = rand 1 3
-- if ranc3_7 == 1
--  moveto "c_tower2" 13 282
-- elseif ranc3_7 == 2
--  moveto "alde_dun03" 175 131
-- else
--  moveto "c_tower3" 235 7
-- endif
--return

warp("c_tower3","c_tower3_to_RandomB",240,7,1,1)
function c_tower3_to_RandomB()
	local ranc3_7 = math.random(1,3)
	if ranc3_7 == 1 then
		moveto("c_tower2",13,282)
	elseif ranc3_7 == 2 then
		moveto("alde_dun03",175,131)
	else
		moveto("c_tower3",235,7)
	end
end

--warp "c_tower3" "c_tower3_to_RandomA(c3_8 : RandomA)" 252 24 1 1
--OnTouch:
-- var ranc3_8 = rand 1 4
-- if ranc3_8 == 1
--  moveto "c_tower2" 228 267
-- elseif ranc3_8 == 2
--  moveto "alde_dun03" 130 130
-- elseif ranc3_8 == 3
--  moveto "c_tower3" 252 29
-- else
--  moveto "c_tower4" 152 95
-- endif
--return

warp("c_tower3","c_tower3_to_RandomA",252,24,1,1)
function c_tower3_to_RandomA()
	local ranc3_8 = math.random(1,3)
	if ranc3_8 == 1 then
		moveto("c_tower2",228,267)
	elseif ranc3_8 == 2 then
		moveto("alde_dun03",130,130)
	else
		moveto("c_tower3",252,29)
	end
end

warp("c_tower4","c4_7_to_1_1",51,156,1,1)
function c4_7_to_1_1()
	moveto("alde_dun01",171,158)
end

warp("c_tower4","c4_8_to_3_4",37,70,1,1)
function c4_8_to_3_4()
	moveto("alde_dun03",277,54)
end

warp("c_tower4","c4_14_to_c4_6",68,46,1,1)
function c4_14_to_c4_6()
	moveto("c_tower4",73,154)
end

warp("c_tower4","c4_6_to_RandomC",75,156,0,0)
function c4_6_to_RandomC()
	local ranc4_6 = math.random(1,4)
	if ranc4_6 == 1 then
		moveto("c_tower3",168,252)
	elseif ranc4_6 == 2 then
		moveto("alde_dun02",262,41)
	elseif ranc4_6 == 3 then
		moveto("c_tower4",73,154)
	else
		moveto("c_tower4",140,149)
	end
end

warp("c_tower4","c4_12_to_RandomB",68,79,0,0)
function c4_12_to_RandomB()
	local ranc4_12 = math.random(1,5)
	if ranc4_12 == 1 then
		moveto("c_tower2",13,282)
	elseif ranc4_12 == 2 then
		moveto("alde_dun03",175,131)
	elseif ranc4_12 == 3 then
		moveto("c_tower3",235,7)
	elseif ranc4_12 == 4 then
		moveto("alde_dun04",84,36)
	else
		moveto("c_tower4",65,77)
	end
end

warp("c_tower4","c4_9_to_c4_3",79,49,2,2)
function c4_9_to_c4_3()
	moveto("c_tower4",204,60)
end

warp("c_tower4","c4_10_to_c3_6",70,19,2,2)
function c4_10_to_c3_6()
	moveto("c_tower3",151,8)
end

warp("c_tower4","c4_5_to_c4_11",133,202,1,1)
function c4_5_to_c4_11()
	moveto("c_tower4",140,149)
end

warp("c_tower4","c4_11_to_RandomC",142,151,0,0)
function c4_11_to_RandomC()
	local ranc4_11 = math.random(1,4)
	if ranc4_11 == 1 then
		moveto("c_tower3",168,252)
	elseif ranc4_11 == 2 then
		moveto("alde_dun02",262,41)
	elseif ranc4_11 == 3 then
		moveto("c_tower4",73,154)
	else
		moveto("c_tower4",140,149)
	end
end

warp("c_tower4","c4_4_to_c2_3",153,107,1,1)
function c4_4_to_c2_3()
	moveto("c_tower2",228,267)
end

warp("c_tower4","c4_13_to_RandomA",151,96,0,0)
function c4_13_to_RandomA()
	local ranc4_13 = math.random(1,4)
	if ranc4_13 == 1 then
		moveto("c_tower2",228,267)
	elseif ranc4_13 == 2 then
		moveto("alde_dun03",130,130)
	elseif ranc4_13 == 3 then
		moveto("c_tower3",252,29)
	else
		moveto("c_tower4",152,95)
	end
end

warp("c_tower4","c4_2_to_c4_13",198,59,1,1)
function c4_2_to_c4_13()
	moveto("c_tower4",152,98)
end

warp("c_tower4","c4_3_to_c4_12",204,57,1,1)
function c4_3_to_c4_12()
	moveto("c_tower4",65,77)
end

warp("c_tower4","c4_1_to_RandomA",189,40,2,2)
function c4_1_to_RandomA()
	local ranc4_1 = math.random(1,4)
	if ranc4_1 == 1 then
		moveto("c_tower2",228,267)
	elseif ranc4_1 == 2 then
		moveto("alde_dun03",130,130)
	elseif ranc4_1 == 3 then
		moveto("c_tower3",252,29)
	else
		moveto("c_tower4",152,95)
	end
end

warp("c_tower4","c4_15_3_5",171,179,1,1)
function c4_15_3_5()
	moveto("alde_dun03",276,53)
end

warp("alde_dun01","_1_2_to_c1_3",302,25,2,2)
function _1_2_to_c1_3()
	moveto("c_tower1",125,22)
end

warp("alde_dun01","_1_1_to_c2_2",167,158,2,2)
function _1_1_to_c2_2()
	moveto("c_tower2",148,283)
end

warp("alde_dun01","_1_3_to_2_0",292,306,2,1)
function _1_3_to_2_0()
	moveto("alde_dun02",43,24)
end

warp("alde_dun02","_2_0_to_1_3",43,20,1,1)
function _2_0_to_1_3()
	moveto("alde_dun01",292,300)
end

warp("alde_dun02","_2_1_to_c3_4",122,169,2,2)
function _2_1_to_c3_4()
	moveto("c_tower3",47,41)
end

warp("alde_dun02","_2_2_to_c3_1",187,234,2,2)
function _2_2_to_c3_1()
	moveto("c_tower3",65,147)
end

--warp "alde_dun02" "2_3_to_RandomC" 267 41 1 1
--OnTouch:
-- var ranb2_3 = rand 1 4
-- if ranb2_3 == 1
--  moveto "c_tower3" 168 252
-- elseif ranb2_3 == 2
--  moveto "alde_dun02" 262 41
-- elseif ranb2_3 == 3
--  moveto "c_tower4" 73 154
-- else
--  moveto "c_tower4" 140 149
-- endif
--return

warp("alde_dun02","_2_3_to_RandomC",267,41,1,1)
function _2_3_to_RandomC()
	local ranb2_3 = math.random(1,2)
	if ranb2_3 == 1 then
		moveto("c_tower3",168,252)
	else
		moveto("alde_dun02",262,41)
	end
end

warp("alde_dun02","_2_4_to_3_0",279,250,2,2)
function _2_4_to_3_0()
	moveto("alde_dun03",18,267)
end

warp("alde_dun03","_3_0_to_2_4",12,267,2,2)
function _3_0_to_2_4()
	moveto("alde_dun02",273,250)
end

--warp "alde_dun03" "3_1_to_RandomA" 130 125 1 1
--OnTouch:
-- var ranb3_1 = rand 1 4
-- if ranb3_1 == 1
--  moveto "c_tower2" 228 267
-- elseif ranb3_1 == 2
--  moveto "alde_dun03" 130 130
-- elseif ranb3_1 == 3
--  moveto "c_tower3" 252 29
-- else
--  moveto "c_tower4" 152 95
-- endif
--return

warp("alde_dun03","_3_1_to_RandomA",130,125,1,1)
function _3_1_to_RandomA()
	local ranb3_1 = math.random(1,3)
	if ranb3_1 == 1 then
		moveto("c_tower2",228,267)
	elseif ranb3_1 == 2 then
		moveto("alde_dun03",130,130)
	else
		moveto("c_tower3",252,29)
	end
end

warp("alde_dun03","_3_4_to_c3_5",191,31,2,2)
function _3_4_to_c3_5()
	moveto("c_tower3",217,159)
end

warp("alde_dun03","_3_2_to_c2_4",277,183,2,2)
function _3_2_to_c2_4()
	moveto("c_tower2",27,27)
end

--warp "alde_dun03" "3_3_to_RandomB" 171 127 1 1
--OnTouch:
-- var ranb3_3 = rand 1 5
-- if ranb3_3 == 1
--  moveto "c_tower2" 13 282
-- elseif ranb3_3 == 2
--  moveto "alde_dun03" 175 131
-- elseif ranb3_3 == 3
--  moveto "c_tower3" 235 7
-- elseif ranb3_3 == 4
--  moveto "alde_dun04" 84 36
-- else
--  moveto "c_tower4" 65 77
-- endif
--return

warp("alde_dun03","_3_3_to_RandomB",171,127,1,1)
function _3_3_to_RandomB()
	local ranb3_3 = math.random(1,3)
	if ranb3_3 == 1 then
		moveto("c_tower2",13,282)
	elseif ranb3_3 == 2 then
		moveto("alde_dun03",175,131)
	else
		moveto("c_tower3",235,7)
	end
end

warp("alde_dun03","_3_5_to_c1_2",276,48,2,2)
function _3_5_to_c1_2()
	moveto("c_tower1",235,223)
end

--warp "alde_dun03" "3_6_to_4_1" 264 16 2 2
--OnTouch:
-- moveto "alde_dun04" 80 268
--return

warp("alde_dun04","_4_1_to_3_6",80,273,2,2)
function _4_1_to_3_6()
	moveto("alde_dun03",263,26)
end

warp("alde_dun04","_4_2_to_2_2",32,74,1,1)
function _4_2_to_2_2()
	moveto("alde_dun02",187,239)
end

warp("alde_dun04","_4_4_to_4_7",208,58,2,2)
function _4_4_to_4_7()
	moveto("alde_dun04",268,74)
end

warp("alde_dun04","_4_7_to_4_4",272,74,2,2)
function _4_7_to_4_4()
	moveto("alde_dun04",204,62)
end

warp("alde_dun04","_4_5_to_c3_3",207,225,1,1)
function _4_5_to_c3_3()
	moveto("c_tower3",7,34)
end

warp("alde_dun04","_4_6_to_c2_2",215,192,1,1)
function _4_6_to_c2_2()
	moveto("c_tower2",148,283)
end

--warp "alde_dun04" "4_3_to_RandomB" 80 34 1 1
--OnTouch:
-- var ranb4_3 = rand 1 5
-- if ranb4_3 == 1
--  moveto "c_tower2" 13 282
-- elseif ranb4_3 == 2
--  moveto "alde_dun03" 175 131
-- elseif ranb4_3 == 3
--  moveto "c_tower3" 235 7
-- elseif ranb4_3 == 4
--  moveto "alde_dun04" 84 36
-- else
--  moveto "c_tower4" 65 77
-- endif
--return

warp("alde_dun04","_4_3_to_RandomB",80,34,1,1)
function _4_3_to_RandomB()
	local ranb4_3 = math.random(1,4)
	if ranb4_3 == 1 then
		moveto("c_tower2",13,282)
	elseif ranb4_3 == 2 then
		moveto("alde_dun03",175,131)
	elseif ranb4_3 == 3 then
		moveto("c_tower3",235,7)
	else
		moveto("alde_dun04",84,36)
	end
end
