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
-- | 27/11/2007 : Created xmas_town from xmas_link.              |
-- |            : Moved xmas_fild warps to Fields.               |
-- |            : Moved xmas_dun warps to Dungeons. [RabidCh]    |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes: Converted to Helios by RabidCh with Tsusai's         |
-- | Aegis Script Converter                                      |
-- |                                                             |
-- \____________________________________________________________/

warp("xmas","x_fild_out",149,41,8,1)
function x_fild_out()
	moveto("xmas_fild01",80,248)
end

warp("xmas","xmas_01",120,131,1,1)
function xmas_01()
	moveto("xmas_in",43,33)
end

warp("xmas_in","xmas_02",46,33,1,1)
function xmas_02()
	moveto("xmas",123,131)
end

warp("xmas","xmas_03",174,131,1,1)
function xmas_03()
	moveto("xmas_in",155,32)
end

warp("xmas_in","xmas_04",153,32,1,1)
function xmas_04()
	moveto("xmas",172,131)
end

warp("xmas","xmas_05",119,162,1,1)
function xmas_05()
	moveto("xmas_in",36,91)
end

warp("xmas_in","xmas_06",38,89,1,1)
function xmas_06()
	moveto("xmas",122,159)
end

warp("xmas","xmas_07",173,160,1,1)
function xmas_07()
	moveto("xmas_in",165,95)
end

warp("xmas_in","xmas_08",163,93,1,1)
function xmas_08()
	moveto("xmas",172,158)
end

warp("xmas","xmas_09",181,169,1,1)
function xmas_09()
	moveto("xmas_in",177,107)
end

warp("xmas_in","xmas_10",179,109,1,1)
function xmas_10()
	moveto("xmas",184,168)
end

warp("xmas","xmas_11",142,239,1,1)
function xmas_11()
	moveto("xmas_in",94,85)
end

warp("xmas_in","xmas_12",94,83,1,1)
function xmas_12()
	moveto("xmas",142,237)
end

warp("xmas","xmas_13",149,239,1,1)
function xmas_13()
	moveto("xmas_in",104,85)
end

warp("xmas_in","xmas_14",104,83,1,1)
function xmas_14()
	moveto("xmas",149,237)
end

warp("xmas","xmas_15",142,258,1,1)
function xmas_15()
	moveto("xmas_in",94,115)
end

warp("xmas_in","xmas_16",94,117,1,1)
function xmas_16()
	moveto("xmas",142,260)
end

warp("xmas","xmas_17",149,258,1,1)
function xmas_17()
	moveto("xmas_in",104,115)
end

warp("xmas_in","xmas_18",104,117,1,1)
function xmas_18()
	moveto("xmas",149,260)
end

warp("xmas","xmas_19",104,289,1,1)
function xmas_19()
	moveto("xmas_in",30,163)
end

warp("xmas_in","xmas_20",30,161,1,1)
function xmas_20()
	moveto("xmas",104,286)
end

warp("xmas","xmas_21",189,278,1,1)
function xmas_21()
	moveto("xmas_in",168,164)
end

warp("xmas_in","xmas_22",168,160,1,1)
function xmas_22()
	moveto("xmas",189,275)
end

warp("xmas","xmas_23",143,314,1,1)
function xmas_23()
	moveto("xmas_dun01",205,16)
end
