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
--| 23/01/2008                                      |--
--|   - First Version for Helios [RabidCh]          |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

--[[
warp("arena_room","arena_room_onlyaco#arena_114102",114,102,1,1)
function arena_room_onlyaco#arena_114102()
if ((getvar(VAR_JOB) == ACOLYTE) or (getvar(VAR_JOB) == ACOLYTE_H) or (getvar(VAR_JOB) == ACOLYTE_B)) then
	moveto("arena_room",135,129)
elseif ((getvar(VAR_JOB) == PRIEST) or (getvar(VAR_JOB) == PRIEST_H) or (getvar(VAR_JOB) == PRIEST_B)) then
	moveto("arena_room",135,129)
elseif ((getvar(VAR_JOB) == MONK) or (getvar(VAR_JOB) == MONK_H) or (getvar(VAR_JOB) == MONK_B)) then
	moveto("arena_room",135,129)
else
	dialog "Only Acolyte class are applicable to join this mode."
	close()
end
end

warp("arena_room","arena_room_byeaco#arena_135126",135,126,1,1)
function arena_room_byeaco#arena_135126()
	moveto("arena_room",111,99)
end
]]
