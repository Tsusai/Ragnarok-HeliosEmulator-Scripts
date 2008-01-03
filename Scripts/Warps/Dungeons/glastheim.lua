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
--| 03/01/2008                                      |--
--|   - Updated all function names to fix           |--
--|     function name conflicts in Lua. [RabidCh]   |--
--| 31/12/2007                                      |--
--|   - Added New header [Spre]                     |--
--| 29/12/2007                                      |--
--|   - First Version for Helios [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

warp("gef_fild06","gef_fild06_glast_01_18_3041",18,304,1,1)
function gef_fild06_glast_01_18_3041()
	moveto("glast_01",376,304)
end

warp("glast_01","glast_01_gef_fild06_380_3041",380,304,1,1)
function glast_01_gef_fild06_380_3041()
	moveto("gef_fild06",22,304)
end

warp("glast_01","g1_2_step_1_51_1081",51,108,1,1)
function g1_2_step_1_51_1081()
	moveto("gl_step",12,7)
end

warp("glast_01","gl1_3_chu_1_200_1371",200,137,1,1)
function gl1_3_chu_1_200_1371()
	moveto("gl_church",156,7)
end

warp("glast_01","gl1_4_knt1_1_77_1931",77,193,1,1)
function gl1_4_knt1_1_77_1931()
	moveto("gl_knt01",150,15)
end

warp("glast_01","gl1_5_cas1_1_200_2971",200,297,1,1)
function gl1_5_cas1_1_200_2971()
	moveto("gl_cas01",199,29)
end

warp("glast_01","gl1_6_cas2_2_199_3221",199,322,1,1)
function gl1_6_cas2_2_199_3221()
	moveto("gl_cas02",104,189)
end

warp("glast_01","gl1_7_in_3_179_3601",179,360,1,1)
function gl1_7_in_3_179_3601()
	moveto("gl_in01",80,174)
end

warp("glast_01","gl_1_8_in_1_162_3301",162,330,1,1)
function gl_1_8_in_1_162_3301()
	moveto("gl_in01",77,68)
end

warp("glast_01","gl_1_9_in_4_220_3601",220,360,1,1)
function gl_1_9_in_4_220_3601()
	moveto("gl_in01",110,125)
end

warp("glast_01","gl_1_10_in_2_237_3301",237,330,1,1)
function gl_1_10_in_2_237_3301()
	moveto("gl_in01",122,59)
end

warp("gl_in01","in_1_gl_8_81_681",81,68,1,1)
function in_1_gl_8_81_681()
	moveto("glast_01",165,330)
end

warp("gl_in01","in_2_gl_10_118_591",118,59,1,1)
function in_2_gl_10_118_591()
	moveto("glast_01",234,330)
end

warp("gl_in01","in_3_gl_7_83_1741",83,174,1,1)
function in_3_gl_7_83_1741()
	moveto("glast_01",181,357)
end

warp("gl_in01","in_4_gl_9_106_1251",106,125,1,1)
function in_4_gl_9_106_1251()
	moveto("glast_01",219,357)
end

warp("gl_cas01","cas1_1_gl_5_200_182",200,18,2,2)
function cas1_1_gl_5_200_182()
	moveto("glast_01",200,294)
end

warp("gl_cas01","cas1_8_to_pri1_1_149_3141",149,314,1,1)
function cas1_8_to_pri1_1_149_3141()
	moveto("gl_prison",14,70)
end

warp("gl_cas01","cas1_9_to_pri1_1_371_3011",371,301,1,1)
function cas1_9_to_pri1_1_371_3011()
	moveto("gl_prison",14,70)
end

warp("gl_cas01","cas1_10_to_cas1_5_185_2361",185,236,1,1)
function cas1_10_to_cas1_5_185_2361()
	moveto("gl_cas01",163,191)
end

warp("gl_cas01","cas1_7_to_cas1_6_215_2361",215,236,1,1)
function cas1_7_to_cas1_6_215_2361()
	moveto("gl_cas01",238,192)
end

warp("gl_cas01","cas1_5_to_pri1_1_167_1911",167,191,1,1)
function cas1_5_to_pri1_1_167_1911()
	moveto("gl_prison",14,70)
end

warp("gl_cas01","cas1_6_to_pri1_1_234_1921",234,192,1,1)
function cas1_6_to_pri1_1_234_1921()
	moveto("gl_prison",14,70)
end

warp("gl_cas01","cas1_2_to_cas2_1_200_1651",200,165,1,1)
function cas1_2_to_cas2_1_200_1651()
	moveto("gl_cas02",104,25)
end

warp("gl_cas01","cas1_3_to_cas1_8_135_401",135,40,1,1)
function cas1_3_to_cas1_8_135_401()
	moveto("gl_cas01",144,314)
end

warp("gl_cas01","cas1_4_to_cas1_9_372_391",372,39,1,1)
function cas1_4_to_cas1_9_372_391()
	moveto("gl_cas01",367,301)
end

warp("gl_cas02","cas2_1_to_cas1_2_104_151",104,15,1,1)
function cas2_1_to_cas1_2_104_151()
	moveto("gl_cas01",200,160)
end

warp("gl_cas02","cas2_2_to_gl_6_104_1931",104,193,1,1)
function cas2_2_to_gl_6_104_1931()
	moveto("glast_01",199,325)
end

warp("gl_prison","pri1_1_cas1_5to9_11_701",11,70,1,1)
function pri1_1_cas1_5to9_11_701()
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

warp("gl_prison","pri1_2_to_pri2_1_149_1831",149,183,1,1)
function pri1_2_to_pri2_1_149_1831()
	moveto("gl_prison1",150,14)
end

warp("gl_prison1","pri2_1_to_pri1_2_150_101",150,10,1,1)
function pri2_1_to_pri1_2_150_101()
	moveto("gl_prison",149,178)
end

warp("gl_prison1","pri2_2_to_j1_1_62_1871",62,187,1,1)
function pri2_2_to_j1_1_62_1871()
	moveto("gl_sew01",258,255)
end

warp("gl_sew01","j1_1_to_pri2_2_258_2581",258,258,1,1)
function j1_1_to_pri2_2_258_2581()
	moveto("gl_prison1",61,183)
end

warp("gl_sew01","j1_2_to_j2_1_19_211",19,21,1,1)
function j1_2_to_j2_1_19_211()
	moveto("gl_sew02",108,291)
end

warp("gl_sew02","j2_1_to_j1_2_109_2941",109,294,1,1)
function j2_1_to_j1_2_109_2941()
	moveto("gl_sew01",19,24)
end

warp("gl_sew02","j2_2_to_chy_3_30_2731",30,273,1,1)
function j2_2_to_chy_3_30_2731()
	moveto("gl_chyard",15,149)
end

warp("gl_sew02","j2_3_to_pri2_2_16_261",16,26,1,1)
function j2_3_to_pri2_2_16_261()
	moveto("gl_prison1",61,183)
end

warp("gl_sew02","j2_4_to_j3_1_299_2941",299,294,1,1)
function j2_4_to_j3_1_299_2941()
	moveto("gl_sew03",171,283)
end

warp("gl_sew02","j2_5_to_step_2_290_1561",290,156,1,1)
function j2_5_to_step_2_290_1561()
	moveto("gl_step",117,124)
end

warp("gl_sew02","j2_6_to_knt1_2_296_181",296,18,1,1)
function j2_6_to_knt1_2_296_181()
	moveto("gl_knt01",231,192)
end

warp("gl_sew03","j3_1_to_j2_4_171_2861",171,286,1,1)
function j3_1_to_j2_4_171_2861()
	moveto("gl_sew02",295,294)
end

warp("gl_sew03","j3_2_to_j4_1_64_101",64,10,1,1)
function j3_2_to_j4_1_64_101()
	moveto("gl_sew04",68,277)
end

warp("gl_sew04","j4_1_to_j3_2_68_2801",68,280,1,1)
function j4_1_to_j3_2_68_2801()
	moveto("gl_sew03",64,13)
end

warp("gl_sew04","j4_2_to_dun1_1_104_781",104,78,1,1)
function j4_2_to_dun1_1_104_781()
	moveto("gl_dun01",133,271)
end

warp("gl_step","step_1_to_gl_2_8_71",8,7,1,1)
function step_1_to_gl_2_8_71()
	moveto("glast_01",54,108)
end

warp("gl_step","step_2_to_j2_5_120_1241",120,124,1,1)
function step_2_to_j2_5_120_1241()
	moveto("gl_sew02",285,158)
end

warp("gl_dun01","dun1_1_to_j4_2_133_2771",133,277,1,1)
function dun1_1_to_j4_2_133_2771()
	moveto("gl_sew04",101,78)
end

warp("gl_dun01","dun1_2_to_dun2_1_225_181",225,18,1,1)
function dun1_2_to_dun2_1_225_181()
	moveto("gl_dun02",224,274)
end

warp("gl_dun02","dun2_1_to_dun1_2_224_2771",224,277,1,1)
function dun2_1_to_dun1_2_224_2771()
	moveto("gl_dun01",225,22)
end

warp("gl_knt01","knt1_1_to_gl_4_150_62",150,6,2,2)
function knt1_1_to_gl_4_150_62()
	moveto("glast_01",74,193)
end

warp("gl_knt01","knt1_4_to_knt2_2_12_1481",12,148,1,1)
function knt1_4_to_knt2_2_12_1481()
	moveto("gl_knt02",15,140)
end

warp("gl_knt01","knt1_5_to_knt2_3_287_1441",287,144,1,1)
function knt1_5_to_knt2_3_287_1441()
	moveto("gl_knt02",283,140)
end

warp("gl_knt01","knt1_3_to_knt2_1_150_2911",150,291,1,1)
function knt1_3_to_knt2_1_150_2911()
	moveto("gl_knt02",157,287)
end

warp("gl_knt01","knt1_2_to_j2_6_231_1971",231,197,1,1)
function knt1_2_to_j2_6_231_1971()
	moveto("gl_sew02",296,22)
end

warp("gl_knt01","knt1_6_to_knt1_7_128_2921",128,292,1,1)
function knt1_6_to_knt1_7_128_2921()
	moveto("gl_knt01",104,199)
end

warp("gl_knt01","knt1_7_to_knt1_6_104_2041",104,204,1,1)
function knt1_7_to_knt1_6_104_2041()
	moveto("gl_knt01",123,292)
end

warp("gl_knt02","knt2_1_to_knt1_3_157_2921",157,292,1,1)
function knt2_1_to_knt1_3_157_2921()
	moveto("gl_knt01",150,286)
end

warp("gl_knt02","knt2_2_to_knt1_4_10_1381",10,138,1,1)
function knt2_2_to_knt1_4_10_1381()
	moveto("gl_knt01",7,148)
end

warp("gl_knt02","knt2_3_to_knt1_5_289_1381",289,138,1,1)
function knt2_3_to_knt1_5_289_1381()
	moveto("gl_knt01",292,144)
end

warp("gl_church","chu_1_to_gl_3_156_41",156,4,1,1)
function chu_1_to_gl_3_156_41()
	moveto("glast_01",200,134)
end

warp("gl_church","chu_3_to_chy_1_16_2991",16,299,1,1)
function chu_3_to_chy_1_16_2991()
	moveto("gl_chyard",147,284)
end

warp("gl_church","chu_2_to_chy_2_301_461",301,46,1,1)
function chu_2_to_chy_2_301_461()
	moveto("gl_chyard",147,15)
end

warp("gl_chyard","chy_1_to_chu_3_147_2871",147,287,1,1)
function chy_1_to_chu_3_147_2871()
	moveto("gl_church",16,295)
end

warp("gl_chyard","chy_2_to_chu_2_147_121",147,12,1,1)
function chy_2_to_chu_2_147_121()
	moveto("gl_church",295,46)
end

warp("gl_chyard","chy_3_to_j2_2_12_1491",12,149,1,1)
function chy_3_to_j2_2_12_1491()
	moveto("gl_sew02",29,270)
end
