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
-- | 26/11/2007 : Created from prontera_link. [RabidCh]          |
-- | 27/11/2007 : Added warp to Payon from payon_link [RabidCh]  |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes: Converted to Helios by RabidChocobo with Tsusai's    |
-- | Aegis Script Converter                                      |
-- |                                                             |
-- \____________________________________________________________/

warp("pay_fild01","pay_South_Field",333,361,5,3)
function pay_South_Field()
	moveto("payon",122,31)
end

warp("pay_fild01","p01a_m03b",13,152,2,7)
function p01a_m03b()
	moveto("moc_fild03",299,170)
end

warp("pay_fild01","p01b_p02a",278,14,13,2)
function p01b_p02a()
	moveto("pay_fild02",83,382)
end

warp("pay_fild02","p02a_p01b",83,386,13,2)
function p02a_p01b()
	moveto("pay_fild01",278,18)
end

warp("pay_fild01","p01d_p02c",353,14,20,3)
function p01d_p02c()
	moveto("pay_fild02",160,381)
end

warp("pay_fild02","p02c_p01d",167,390,20,3)
function p02c_p01d()
	moveto("pay_fild01",354,18)
end

warp("pay_fild02","p02b_p03a",284,108,2,7)
function p02b_p03a()
	moveto("pay_fild03",20,110)
end

warp("pay_fild03","p03a_p02b",15,110,2,10)
function p03a_p02b()
	moveto("pay_fild02",280,108)
end

warp("pay_fild04","p04e_m01e",17,165,2,8)
function p04e_m01e()
	moveto("moc_fild01",376,162)
end

warp("pay_fild04","p04a_m02e",194,17,7,2)
function p04a_m02e()
	moveto("moc_fild02",350,336)
end

warp("pay_fild11","p11d_m03d",38,330,4,2)
function p11d_m03d()
	moveto("moc_fild03",179,19)
end

warp("pay_fild02","p02e_p11a",16,175,2,4)
function p02e_p11a()
	moveto("pay_fild11",294,135)
end

warp("pay_fild11","p11a_p02e",297,135,2,4)
function p11a_p02e()
	moveto("pay_fild02",19,175)
end

warp("pay_fild05","p05d_p02d",127,378,4,2)
function p05d_p02d()
	moveto("pay_fild02",134,19)
end

warp("pay_fild02","p02d_p05d",134,16,5,2)
function p02d_p05d()
	moveto("pay_fild05",127,375)
end

warp("pay_fild06","p06a_p05a",28,288,2,2)
function p06a_p05a()
	moveto("pay_fild05",268,284)
end

warp("pay_fild05","p05a_p06a",271,284,2,4)
function p05a_p06a()
	moveto("pay_fild06",31,288)
end

warp("pay_fild06","p06c_p03c",305,375,6,2)
function p06c_p03c()
	moveto("pay_fild03",313,19)
end

warp("pay_fild03","p03c_p06c",313,16,4,2)
function p03c_p06c()
	moveto("pay_fild06",305,372)
end

warp("pay_fild07","p07e_p01e",16,200,3,3)
function p07e_p01e()
	moveto("pay_fild01",371,205)
end

warp("pay_fild01","p01e_p07e",379,201,2,6)
function p01e_p07e()
	moveto("pay_fild07",23,207)
end

warp("pay_fild07","p07d_p03d",163,17,5,2)
function p07d_p03d()
	moveto("pay_fild03",177,275)
end

warp("pay_fild03","p03d_p07d",172,281,5,2)
function p03d_p07d()
	moveto("pay_fild07",167,20)
end

warp("pay_fild10","p10c_p07c",16,290,2,5)
function p10c_p07c()
	moveto("pay_fild07",379,290)
end

warp("pay_fild07","p07c_p10c",382,290,2,5)
function p07c_p10c()
	moveto("pay_fild10",19,290)
end

warp("pay_fild09","p09a_p10a",112,16,4,2)
function p09a_p10a()
	moveto("pay_fild10",112,379)
end

warp("pay_fild10","p10a_p09a",112,382,3,2)
function p10a_p09a()
	moveto("pay_fild09",112,19)
end

warp("pay_fild08","p08b_p09b",262,91,2,4)
function p08b_p09b()
	moveto("pay_fild09",19,91)
end

warp("pay_fild09","p09b_p08b",16,91,2,4)
function p09b_p08b()
	moveto("pay_fild08",259,91)
end

warp("pay_fild08","p08_Town",17,75,1,1)
function p08_Town()
	moveto("payon",265,92)
end

warp("pay_fild08","p08a_p07a",160,16,4,2)
function p08a_p07a()
	moveto("pay_fild07",280,379,4,2)
end

warp("pay_fild07","p07a_p08a",280,382,4,2)
function p07a_p08a()
	moveto("pay_fild08",160,19)
end

warp("pay_fild10","Outside_the_hunter_guild",99,13,1,1)
function Outside_the_hunter_guild()
	moveto("pay_fild10",148,252)
end

