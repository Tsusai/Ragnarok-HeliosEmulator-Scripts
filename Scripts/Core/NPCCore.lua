----------------------------------------------------------
--NPCCore.lua                                              --
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
   require("Scripts/Core/Var_Const")

-- Emotion Const
   require("Scripts/Core/Emotion_Const")

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
  
--Events Master List
  require("Scripts/Events/Event_main")
  
--Trader Master List
  require("Scripts/Trader/Trader_Main")
  
--Jobs Master List
  require("Scripts/Job/Job_Main")
   
