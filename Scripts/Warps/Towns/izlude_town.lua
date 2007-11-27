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
-- | 26/11/2007 : izlude_town Created from izlude_link [RabidCh] |
-- | 26/11/2007 : Put iz_dun in Warps/Dungeons &                 |
-- | prt_fild08 -> izlude warp in Warps/Fields in                |
-- | prontera_fields. [RabidCh]                                  |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes: Converted to Helios by RabidCh with Tsusai's         |
-- | Aegis Script Converter                                      |
-- |                                                             |
-- \____________________________________________________________/

hiddenwarp("izlude_in","sword_out",63,165,1,1)
function sword_out()
	checkpoint("izlude_in",68,165)
	moveto("izlude_in",68,165)
end

warp("izlude","Iz_Field",30,78,3,3)
function Iz_Field()
	moveto("prt_fild08",367,212)
end

warp("izlude","Kit_Shopi",148,148,2,2)
function Kit_Shopi()
	moveto("izlude_in",116,49)
end

warp("izlude_in","Kit_Shopo",116,46,3,2)
function Kit_Shopo()
	moveto("izlude",145,145)
end

warp("izlude","Armoryi",109,151,3,3)
function Armoryi()
	moveto("izlude_in",65,87)
end

warp("izlude_in","Armoryo",65,84,5,2)
function Armoryo()
	moveto("izlude",113,147)
end

warp("izlude","Swordman_Associationi",52,140,2,2)
function Swordman_Associationi()
	moveto("izlude_in",74,161)
end

warp("izlude_in","Swordman_Associationo",74,158,3,2)
function Swordman_Associationo()
	moveto("izlude",52,136)
end

warp("izlude_in","Swordman_AssociationL__L",43,169,2,3)
function Swordman_AssociationL__L()
	moveto("izlude_in",63,169)
end

warp("izlude_in","Swordman_AssociationR_R_",87,169,2,3)
function Swordman_AssociationR_R_()
	moveto("izlude_in",111,169)
end

warp("izlude_in","Swordman_AssociationR__R",108,169,2,3)
function Swordman_AssociationR__R()
	moveto("izlude_in",84,169)
end

warp("izlude","Swordman_Associationi",216,129,3,2)
function Swordman_Associationi()
	moveto("izlude_in",151,127)
end

warp("izlude_in","Swordman_Associationo",148,127,2,5)
function Swordman_Associationo()
	moveto("izlude",212,129)
end

warp("izlude_in","Swordman_AssociationL_L_",172,139,3,2)
function Swordman_AssociationL_L_()
	moveto("izlude_in",172,161)
end

warp("izlude_in","Swordman_AssociationL__L",172,158,3,2)
function Swordman_AssociationL__L()
	moveto("izlude_in",172,136)
end

warp("izlude_in","Swordman_AssociationR_R_",172,116,3,2)
function Swordman_AssociationR_R_()
	moveto("izlude_in",172,94)
end

warp("izlude_in","Swordman_AssociationR__R",171,97,3,2)
function Swordman_AssociationR__R()
	moveto("izlude_in",172,119)
end

