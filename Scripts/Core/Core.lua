----------------------------------------------------------
--Core.lua                                              --
----------------------------------------------------------

-- This file loads the common constants and functions and
-- is loaded on server startup.  They are passed on to 
-- descendant lua instances.
-- 

-- NPC Sprite values
   require("Scripts/Core/NPC_ID")

-- Job IDs
-- require("Scripts/Core/JobID")

-- Warp master list
   require("Scripts/Warps/Warp_Main")

-- Quest Master List   
   require("Scripts/Quests/Quests_Main")

-- Custom Master List   
   require("Scripts/Custom/Custom_Main")
