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
-- | 28/11/2006 : Added 1st Version. [Muad_Dib]                  |
-- | 27/11/2007 : alberta_town Created from alberta_link         |
-- | and treasure** warps moved to Dungeons [RabidCh]            |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes: Converted to Helios by RabidCh with Tsusai's         |
-- | Aegis Script Converter                                      |
-- |                                                             |
-- \____________________________________________________________/

warp("alberta","To_Albertao",15,234,2,5)
function To_Albertao()
	moveto("pay_fild03",388,63)
end

warp("pay_fild03","To_Albertai",392,63,2,7)
function To_Albertai()
	moveto("alberta",19,233)
end

warp("alberta_in","Merchant_Guild_o",78,44,2,5)
function Merchant_Guild_o()
	moveto("alberta",37,41)
end

warp("alberta","Merchant_Guild_i",33,42,2,2)
function Merchant_Guild_i()
	moveto("alberta_in",74,44)
end

warp("alberta_in","Merchant_Guild_a",64,57,3,2)
function Merchant_Guild_a()
	moveto("alberta_in",24,58)
end

warp("alberta_in","Merchant_Guild_a_",24,54,3,2)
function Merchant_Guild_a_()
	moveto("alberta_in",64,53)
end

warp("alberta_in","Merchant_Guild_b",64,31,3,2)
function Merchant_Guild_b()
	moveto("alberta_in",24,29)
end

warp("alberta_in","Merchant_Guild_b_",24,33,3,2)
function Merchant_Guild_b_()
	moveto("alberta_in",64,35)
end

warp("alberta_in","InnA_o",14,141,2,3)
function InnA_o()
	moveto("alberta",61,233)
end

warp("alberta","InnA_i",65,233,2,2)
function InnA_i()
	moveto("alberta_in",18,141)
end

warp("alberta_in","InnA_a",22,153,3,2)
function InnA_a()
	moveto("alberta_in",22,174)
end

warp("alberta_in","InnA_a_",22,170,3,2)
function InnA_a_()
	moveto("alberta_in",22,149)
end

warp("alberta_in","InnA_b",22,130,3,2)
function InnA_b()
	moveto("alberta_in",22,109)
end

warp("alberta_in","InnA_b_",22,113,3,2)
function InnA_b_()
	moveto("alberta_in",22,134)
end

warp("alberta_in","InnB_o",73,141,2,3)
function InnB_o()
	moveto("alberta",137,37)
end

warp("alberta","InnB_i",134,37,1,1)
function InnB_i()
	moveto("alberta_in",70,141)
end

warp("alberta_in","InnB_a",66,153,3,2)
function InnB_a()
	moveto("alberta_in",66,173)
end

warp("alberta_in","InnB_a_",66,170,3,2)
function InnB_a_()
	moveto("alberta_in",66,149)
end

warp("alberta_in","InnB_b",66,130,3,1)
function InnB_b()
	moveto("alberta_in",66,111)
end

warp("alberta_in","InnB_b_",66,113,3,1)
function InnB_b_()
	moveto("alberta_in",66,132)
end

warp("alberta_in","EntranceA_o",125,160,2,2)
function EntranceA_o()
	moveto("alberta",102,222)
end

warp("alberta","EntranceA_i",99,221,2,2)
function EntranceA_i()
	moveto("alberta_in",122,161)
end

warp("alberta_in","EntranceB_o",114,130,2,2)
function EntranceB_o()
	moveto("alberta",93,201)
end

warp("alberta","EntranceB_i",93,205,2,2)
function EntranceB_i()
	moveto("alberta_in",114,134)
end

warp("alberta_in","Villa2B_i",114,183,1,1)
function Villa2B_i()
	moveto("alberta_in",148,186)
end

warp("alberta_in","Villa2B_o",152,186,1,1)
function Villa2B_o()
	moveto("alberta_in",118,183)
end

warp("alberta_in","RoomA_i",159,175,2,2)
function RoomA_i()
	moveto("alberta_in",117,97)
end

warp("alberta_in","RoomA_o",114,97,2,2)
function RoomA_o()
	moveto("alberta_in",155,175)
end

warp("alberta_in","RoomB_i",159,153,2,2)
function RoomB_i()
	moveto("alberta_in",117,49)
end

warp("alberta_in","RoomB_o",114,49,2,2)
function RoomB_o()
	moveto("alberta_in",155,153)
end

warp("alberta_in","Armory_o",180,34,2,2)
function Armory_o()
	moveto("alberta",117,42)
end

warp("alberta","Armory_i",117,38,2,2)
function Armory_i()
	moveto("alberta_in",180,30)
end

warp("alberta_in","Kit_Shop_o",189,89,2,2)
function Kit_Shop_o()
	moveto("alberta",102,153)
end

warp("alberta","Kit_Shop_i",98,153,2,2)
function Kit_Shop_i()
	moveto("alberta_in",185,89)
end

warp("alb_ship","Ship2F_o",26,166,3,1)
function Ship2F_o()
	moveto("alberta",170,168)
end

warp("alberta","Ship2F_i",170,170,1,1)
function Ship2F_i()
	moveto("alb_ship",26,168)
end

warp("alb_ship","Ship1F__o",41,163,1,3)
function Ship1F__o()
	moveto("alberta",180,165)
end

warp("alberta","Ship1F__i",178,165,1,2)
function Ship1F__i()
	moveto("alb_ship",39,163)
end

warp("alb_ship","Ship1F__o",160,171,1,3)
function Ship1F__o()
	moveto("alberta",207,173)
end

warp("alberta","Ship1F__i",209,173,1,2)
function Ship1F__i()
	moveto("alb_ship",162,171)
end

warp("alb_ship","Ship__o",37,174,1,2)
function Ship__o()
	moveto("alb_ship",70,99)
end

warp("alb_ship","Ship__i",68,99,1,3)
function Ship__i()
	moveto("alb_ship",35,173)
end

