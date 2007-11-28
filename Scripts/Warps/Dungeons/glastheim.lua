--  ____________________________________________________________
-- /                                                            \
-- |  ##       ##  ########  #########     ##########   ######   |
-- |   ##     ##  ##    ##  ##     ##     ##      ##   ##    ##  |
-- |    ##   ##  ##    ##  ##     ##     ##      ##   ##         |
-- |     ## ##  ##    ##  ##     ##     ##      ##   ##          |
-- |      ###  ########  #########     ##      ##   #######      |
-- |      ##  ##    ##  ##    ##      ##      ##        ##       |
-- |     ##  ##    ##  ##      ##    ##      ##  ##    ##        |
-- |    ##  ##    ##  ##        ##  ##########    ######         |
-- |   Yaros Package                                             |
-- |-------------------------------------------------------------|
-- | Current Version: 1.0      | Episode 10.3 File.              |
-- |-------------------------------------------------------------|
-- | 05/12/2006 : Added 1st Version. [Muad_Dib]                  |
-- | 27/11/2007 : glastheim Created from glastheim_link.         |
-- | [RabidCh]                                                   |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes: Converted to Helios by RabidCh with Tsusai's         |
-- | Aegis Script Converter                                      |
-- |                                                             |
-- \____________________________________________________________/

warp("gef_fild06","gef_fild06_glast_01",18,304,1,1)
function gef_fild06_glast_01()
	moveto("glast_01",376,304)
end

warp("glast_01","glast_01_gef_fild06",380,304,1,1)
function glast_01_gef_fild06()
	moveto("gef_fild06",22,304)
end

warp("glast_01","g1_2_step_1",51,108,1,1)
function g1_2_step_1()
	moveto("gl_step",12,7)
end

warp("glast_01","gl1_3_chu_1",200,137,1,1)
function gl1_3_chu_1()
	moveto("gl_church",156,7)
end

warp("glast_01","gl1_4_knt1_1",77,193,1,1)
function gl1_4_knt1_1()
	moveto("gl_knt01",150,15)
end

warp("glast_01","gl1_5_cas1_1",200,297,1,1)
function gl1_5_cas1_1()
	moveto("gl_cas01",199,29)
end

warp("glast_01","gl1_6_cas2_2",199,322,1,1)
function gl1_6_cas2_2()
	moveto("gl_cas02",104,189)
end

warp("glast_01","gl1_7_in_3",179,360,1,1)
function gl1_7_in_3()
	moveto("gl_in01",80,174)
end

warp("glast_01","gl_1_8_in_1",162,330,1,1)
function gl_1_8_in_1()
	moveto("gl_in01",77,68)
end

warp("glast_01","gl_1_9_in_4",220,360,1,1)
function gl_1_9_in_4()
	moveto("gl_in01",110,125)
end

warp("glast_01","gl_1_10_in_2",237,330,1,1)
function gl_1_10_in_2()
	moveto("gl_in01",122,59)
end

warp("gl_in01","in_1_gl_8",81,68,1,1)
function in_1_gl_8()
	moveto("glast_01",165,330)
end

warp("gl_in01","in_2_gl_10",118,59,1,1)
function in_2_gl_10()
	moveto("glast_01",234,330)
end

warp("gl_in01","in_3_gl_7",83,174,1,1)
function in_3_gl_7()
	moveto("glast_01",181,357)
end

warp("gl_in01","in_4_gl_9",106,125,1,1)
function in_4_gl_9()
	moveto("glast_01",219,357)
end

warp("gl_cas01","cas1_1_gl_5",200,18,2,2)
function cas1_1_gl_5()
	moveto("glast_01",200,294)
end

warp("gl_cas01","cas1_8_to_pri1_1",149,314,1,1)
function cas1_8_to_pri1_1()
	moveto("gl_prison",14,70)
end

warp("gl_cas01","cas1_9_to_pri1_1",371,301,1,1)
function cas1_9_to_pri1_1()
	moveto("gl_prison",14,70)
end

warp("gl_cas01","cas1_10_to_cas1_5",185,236,1,1)
function cas1_10_to_cas1_5()
	moveto("gl_cas01",163,191)
end

warp("gl_cas01","cas1_7_to_cas1_6",215,236,1,1)
function cas1_7_to_cas1_6()
	moveto("gl_cas01",238,192)
end

warp("gl_cas01","cas1_5_to_pri1_1",167,191,1,1)
function cas1_5_to_pri1_1()
	moveto("gl_prison",14,70)
end

warp("gl_cas01","cas1_6_to_pri1_1",234,192,1,1)
function cas1_6_to_pri1_1()
	moveto("gl_prison",14,70)
end

warp("gl_cas01","cas1_2_to_cas2_1",200,165,1,1)
function cas1_2_to_cas2_1()
	moveto("gl_cas02",104,25)
end

warp("gl_cas01","cas1_3_to_cas1_8",135,40,1,1)
function cas1_3_to_cas1_8()
	moveto("gl_cas01",144,314)
end

warp("gl_cas01","cas1_4_to_cas1_9",372,39,1,1)
function cas1_4_to_cas1_9()
	moveto("gl_cas01",367,301)
end

warp("gl_cas02","cas2_1_to_cas1_2",104,15,1,1)
function cas2_1_to_cas1_2()
	moveto("gl_cas01",200,160)
end

warp("gl_cas02","cas2_2_to_gl_6",104,193,1,1)
function cas2_2_to_gl_6()
	moveto("glast_01",199,325)
end

warp("gl_prison","pri1_1_cas1_5to9",11,70,1,1)
function pri1_1_cas1_5to9()
	local pri1 = math.random(1,4)
	if pri1 == 1 then
		moveto("gl_cas01",163,193)
	elseif pri1 == 2 then
		moveto("gl_cas01",238,192)
	elseif pri1 == 3 then
		moveto("gl_cas01",144,314)
	else
		moveto("gl_cas01",367,301)
	end
end

warp("gl_prison","pri1_2_to_pri2_1",149,183,1,1)
function pri1_2_to_pri2_1()
	moveto("gl_prison1",150,14)
end

warp("gl_prison1","pri2_1_to_pri1_2",150,10,1,1)
function pri2_1_to_pri1_2()
	moveto("gl_prison",149,178)
end

warp("gl_prison1","pri2_2_to_j1_1",62,187,1,1)
function pri2_2_to_j1_1()
	moveto("gl_sew01",258,255)
end

warp("gl_sew01","j1_1_to_pri2_2",258,258,1,1)
function j1_1_to_pri2_2()
	moveto("gl_prison1",61,183)
end

warp("gl_sew01","j1_2_to_j2_1",19,21,1,1)
function j1_2_to_j2_1()
	moveto("gl_sew02",108,291)
end

warp("gl_sew02","j2_1_to_j1_2",109,294,1,1)
function j2_1_to_j1_2()
	moveto("gl_sew01",19,24)
end

warp("gl_sew02","j2_2_to_chy_3",30,273,1,1)
function j2_2_to_chy_3()
	moveto("gl_chyard",15,149)
end

warp("gl_sew02","j2_3_to_pri2_2",16,26,1,1)
function j2_3_to_pri2_2()
	moveto("gl_prison1",61,183)
end

warp("gl_sew02","j2_4_to_j3_1",299,294,1,1)
function j2_4_to_j3_1()
	moveto("gl_sew03",171,283)
end

warp("gl_sew02","j2_5_to_step_2",290,156,1,1)
function j2_5_to_step_2()
	moveto("gl_step",117,124)
end

warp("gl_sew02","j2_6_to_knt1_2",296,18,1,1)
function j2_6_to_knt1_2()
	moveto("gl_knt01",231,192)
end

warp("gl_sew03","j3_1_to_j2_4",171,286,1,1)
function j3_1_to_j2_4()
	moveto("gl_sew02",295,294)
end

warp("gl_sew03","j3_2_to_j4_1",64,10,1,1)
function j3_2_to_j4_1()
	moveto("gl_sew04",68,277)
end

warp("gl_sew04","j4_1_to_j3_2",68,280,1,1)
function j4_1_to_j3_2()
	moveto("gl_sew03",64,13)
end

warp("gl_sew04","j4_2_to_dun1_1",104,78,1,1)
function j4_2_to_dun1_1()
	moveto("gl_dun01",133,271)
end

warp("gl_step","step_1_to_gl_2",8,7,1,1)
function step_1_to_gl_2()
	moveto("glast_01",54,108)
end

warp("gl_step","step_2_to_j2_5",120,124,1,1)
function step_2_to_j2_5()
	moveto("gl_sew02",285,158)
end

warp("gl_dun01","dun1_1_to_j4_2",133,277,1,1)
function dun1_1_to_j4_2()
	moveto("gl_sew04",101,78)
end

warp("gl_dun01","dun1_2_to_dun2_1",225,18,1,1)
function dun1_2_to_dun2_1()
	moveto("gl_dun02",224,274)
end

warp("gl_dun02","dun2_1_to_dun1_2",224,277,1,1)
function dun2_1_to_dun1_2()
	moveto("gl_dun01",225,22)
end

warp("gl_knt01","knt1_1_to_gl_4",150,6,2,2)
function knt1_1_to_gl_4()
	moveto("glast_01",74,193)
end

warp("gl_knt01","knt1_4_to_knt2_2",12,148,1,1)
function knt1_4_to_knt2_2()
	moveto("gl_knt02",15,140)
end

warp("gl_knt01","knt1_5_to_knt2_3",287,144,1,1)
function knt1_5_to_knt2_3()
	moveto("gl_knt02",283,140)
end

warp("gl_knt01","knt1_3_to_knt2_1",150,291,1,1)
function knt1_3_to_knt2_1()
	moveto("gl_knt02",157,287)
end

warp("gl_knt01","knt1_2_to_j2_6",231,197,1,1)
function knt1_2_to_j2_6()
	moveto("gl_sew02",296,22)
end

warp("gl_knt01","knt1_6_to_knt1_7",128,292,1,1)
function knt1_6_to_knt1_7()
	moveto("gl_knt01",104,199)
end

warp("gl_knt01","knt1_7_to_knt1_6",104,204,1,1)
function knt1_7_to_knt1_6()
	moveto("gl_knt01",123,292)
end

warp("gl_knt02","knt2_1_to_knt1_3",157,292,1,1)
function knt2_1_to_knt1_3()
	moveto("gl_knt01",150,286)
end

warp("gl_knt02","knt2_2_to_knt1_4",10,138,1,1)
function knt2_2_to_knt1_4()
	moveto("gl_knt01",7,148)
end

warp("gl_knt02","knt2_3_to_knt1_5",289,138,1,1)
function knt2_3_to_knt1_5()
	moveto("gl_knt01",292,144)
end

warp("gl_church","chu_1_to_gl_3",156,4,1,1)
function chu_1_to_gl_3()
	moveto("glast_01",200,134)
end

warp("gl_church","chu_3_to_chy_1",16,299,1,1)
function chu_3_to_chy_1()
	moveto("gl_chyard",147,284)
end

warp("gl_church","chu_2_to_chy_2",301,46,1,1)
function chu_2_to_chy_2()
	moveto("gl_chyard",147,15)
end

warp("gl_chyard","chy_1_to_chu_3",147,287,1,1)
function chy_1_to_chu_3()
	moveto("gl_church",16,295)
end

warp("gl_chyard","chy_2_to_chu_2",147,12,1,1)
function chy_2_to_chu_2()
	moveto("gl_church",295,46)
end

warp("gl_chyard","chy_3_to_j2_2",12,149,1,1)
function chy_3_to_j2_2()
	moveto("gl_sew02",29,270)
end
