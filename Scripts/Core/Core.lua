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

-- Lua Const
   require("Scripts/Core/Var_const")

-- Warp master list
   require("Scripts/Warps/Warp_Main")

-- Quest Master List   
   require("Scripts/Quests/Quests_Main")

-- Custom Master List   
   require("Scripts/Custom/Custom_Main")

-- Sample MasterList
   require("Scripts/Sample/Sample_Main")

--Towns NPC Master List
   require("Scripts/Towns/Town_Main")
   
 --Mob Master List
  require("Scripts/Mobs/Mob_Main")
   
