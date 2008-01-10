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
--| 09/01/2008                                      |--
--|   - First Version for Helios [RabidCh]          |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

warp("izlude","izlude_welcome_arena_128226",128,226,1,1)
function izlude_welcome_arena_128226()
	moveto("arena_room",100,30)
end

warp("arena_room","arena_room_bye_arena_9924",99,24,2,2)
function arena_room_bye_arena_9924()
	moveto("izlude",128,220)
end

warp("arena_room","arena_room_arn_room_11_1_84103",84,103,1,1)
function arena_room_arn_room_11_1_84103()
	moveto("arena_room",63,130)
end

warp("arena_room","arena_room_arn_room_11_2_63126",63,126,1,1)
function arena_room_arn_room_11_2_63126()
	moveto("arena_room",87,100)
end

warp("arena_room","arena_room_arn_room_9_1_7687",76,87,1,1)
function arena_room_arn_room_9_1_7687()
	moveto("arena_room",46,87)
end

warp("arena_room","arena_room_arn_room_9_2_4987",49,87,1,1)
function arena_room_arn_room_9_2_4987()
	moveto("arena_room",78,87)
end

warp("arena_room","arena_room_arn_room_7_1_8471",84,71,1,1)
function arena_room_arn_room_7_1_8471()
	moveto("arena_room",60,50)
end

warp("arena_room","arena_room_arn_room_7_2_6353",63,53,1,1)
function arena_room_arn_room_7_2_6353()
	moveto("arena_room",86,74)
end

warp("arena_room","arena_room_arn_room_5_1_11571",115,71,1,1)
function arena_room_arn_room_5_1_11571()
	moveto("arena_room",139,50)
end

warp("arena_room","arena_room_arn_room_5_2_13653",136,53,1,1)
function arena_room_arn_room_5_2_13653()
	moveto("arena_room",113,74)
end

warp("arena_room","arena_room_arn_room_3_1_12388",123,88,1,1)
function arena_room_arn_room_3_1_12388()
	moveto("arena_room",153,87)
end

warp("arena_room","arena_room_arn_room_3_2_15087",150,87,1,1)
function arena_room_arn_room_3_2_15087()
	moveto("arena_room",120,87)
end

warp("prt_are_in","prt_are_in_toarn_room_5413",54,13,1,1)
function prt_are_in_toarn_room_5413()
	moveto("arena_room",100,77)
end

--npc "izlude" "Bity#arena" 4_DOG01 250 250 3 0 0
--OnClick:
-- dlgwrite 0 2000
--if input == 0
--    dialog "Command has been canceled."
--    close
--  elseif input == 1357
--    wait
--      choose menu "Open the door" "No"
--      case 1
--
--          ShowEffect "Bity#arena" EF_ENHANCE
--        enablenpc "welcome_arena"
--         close
--         return
--      break
--     case 2
--      ShowEffect "Bity#arena" EF_EXIT
--        disablenpc "welcome_arena"
--        close
--        return
--      break
--      endchoose
--  else
--    dialog "Password is incorrect."
--    close
--    return
--  endif
--return
