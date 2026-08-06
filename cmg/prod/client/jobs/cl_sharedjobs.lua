-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_jobs"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetActiveScreenResolution
  SHX0_2, SHX1_2 = SHX0_2()
  if 1920 == SHX0_2 then
    SHX2_2 = 350
    return SHX2_2
  elseif 3440 == SHX0_2 and 1440 == SHX1_2 then
    SHX2_2 = math
    SHX2_2 = SHX2_2.floor
    SHX3_2 = SHX0_2 * 0.1
    return SHX2_2(SHX3_2)
  end
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX0_2 * 0.135
  return SHX2_2(SHX3_2)
end
SHX3_1 = CMG
SHX3_1 = SHX3_1.uiRegisterCallback
SHX4_1 = "questLogClosed"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "0140c9970e"
  SHX0_2(SHX1_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = AddEventHandler
SHX4_1 = "0140c9970e"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2.QuestLogXOffset = 0
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = nil
SHX4_1 = nil
SHX5_1 = {}
SHX6_1 = false
SHX7_1 = "JOB TUTORIAL"
SHX8_1 = nil
SHX9_1 = false
SHX10_1 = {}
SHX10_1["Health Service"] = true
SHX11_1 = {}
SHX11_1.Trapper = true
SHX11_1.Garbage = true
SHX11_1.Mechanic = true
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientJob
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.warn
    SHX2_2 = "getCurrentJobTheme called but player has no job"
    SHX1_2(SHX2_2)
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = SHX0_1.jobs
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2._config
  SHX1_2 = SHX1_2.theme
  return SHX1_2
end
SHX12_1.getCurrentJobTheme = SHX13_1
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX12_1.isJobTutorialRunning = SHX13_1
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "JOB_MENU_TUTORIAL_RUNNING"
  SHX3_2 = {}
  SHX4_2 = true == SHX0_2
  SHX3_2.running = SHX4_2
  SHX2_2.info = SHX3_2
  SHX1_2(SHX2_2)
end
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    return
  end
  while true do
    SHX0_2 = SHX9_1
    if not SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeMarker
    SHX1_2 = SHX4_1
    SHX0_2(SHX1_2)
    SHX0_2 = nil
    SHX4_1 = SHX0_2
  end
  SHX0_2 = pairs
  SHX1_2 = SHX5_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteCheckpoint
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX5_1 = SHX0_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "job_tutorial_step_marker"
  SHX0_2(SHX1_2)
  SHX0_2 = nil
  SHX3_1 = SHX0_2
  SHX0_2 = nil
  SHX1_1 = SHX0_2
  SHX0_2 = nil
  SHX8_1 = SHX0_2
  SHX0_2 = RageUI
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2.QuestLogXOffset = 0
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "QUEST_LOG_CLEAR_ALL"
  SHX2_2 = {}
  SHX1_2.info = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "QUEST_LOG_SET_OPEN"
  SHX2_2 = {}
  SHX2_2.isOpen = false
  SHX1_2.info = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "QUEST_LOG_SET_TITLE"
  SHX2_2 = {}
  SHX2_2.title = "QUEST LOG"
  SHX1_2.info = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = SHX12_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "ca6a8a2b4f"
  SHX0_2(SHX1_2)
end
SHX13_1.cancelJobTutorial = SHX14_1
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX1_2 = SHX4_1
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeMarker
    SHX2_2 = SHX4_1
    SHX1_2(SHX2_2)
    SHX1_2 = nil
    SHX4_1 = SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX5_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DeleteCheckpoint
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = {}
  SHX5_1 = SHX1_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.locationMarker
    if SHX1_2 then
      SHX1_2 = SHX0_2.locationMarker
      SHX1_2 = SHX1_2.x
      if nil ~= SHX1_2 then
        SHX1_2 = SHX0_2.locationMarker
        SHX1_2 = SHX1_2.y
        if nil ~= SHX1_2 then
          SHX1_2 = SHX0_2.locationMarker
          SHX1_2 = SHX1_2.z
          if nil ~= SHX1_2 then
            goto SHX_LABEL_41
          end
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
  ::SHX_LABEL_41::
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getCurrentJobTheme
  SHX1_2 = SHX1_2()
  SHX2_2 = 1.0
  SHX3_2 = 1.0
  SHX4_2 = 0.4
  SHX5_2 = 2.0
  SHX6_2 = 2.0
  SHX7_2 = 30
  SHX8_2 = SHX0_2.markerForVehicle
  if SHX8_2 then
    SHX8_2 = 4.0
    SHX3_2 = 4.0
    SHX2_2 = SHX8_2
    SHX8_2 = 8.0
    SHX6_2 = 8.0
    SHX5_2 = SHX8_2
    SHX7_2 = 150
  end
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.addMarker
  SHX9_2 = SHX0_2.locationMarker
  SHX9_2 = SHX9_2.x
  SHX10_2 = SHX0_2.locationMarker
  SHX10_2 = SHX10_2.y
  SHX11_2 = SHX0_2.locationMarker
  SHX11_2 = SHX11_2.z
  SHX11_2 = SHX11_2 - 1.0
  SHX12_2 = SHX2_2
  SHX13_2 = SHX3_2
  SHX14_2 = SHX4_2
  SHX15_2 = SHX1_2.r
  SHX16_2 = SHX1_2.g
  SHX17_2 = SHX1_2.b
  SHX18_2 = 150
  SHX19_2 = SHX7_2
  SHX20_2 = 1
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX4_1 = SHX8_2
  SHX8_2 = pairs
  SHX9_2 = SHX0_2.checkpoints
  if not SHX9_2 then
    SHX9_2 = {}
  end
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
  for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
    SHX14_2 = table
    SHX14_2 = SHX14_2.insert
    SHX15_2 = SHX5_1
    SHX16_2 = CreateCheckpoint
    SHX17_2 = 0
    SHX18_2 = SHX13_2.x
    SHX19_2 = SHX13_2.y
    SHX20_2 = SHX13_2.z
    SHX20_2 = SHX20_2 - 1.0
    SHX21_2 = SHX0_2.locationMarker
    SHX21_2 = SHX21_2.x
    SHX22_2 = SHX0_2.locationMarker
    SHX22_2 = SHX22_2.y
    SHX23_2 = SHX0_2.locationMarker
    SHX23_2 = SHX23_2.z
    SHX24_2 = SHX6_2
    SHX25_2 = SHX1_2.r
    SHX26_2 = SHX1_2.g
    SHX27_2 = SHX1_2.b
    SHX28_2 = 100
    SHX29_2 = 0
    SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
    SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  end
  SHX8_2 = SetNewWaypoint
  SHX9_2 = SHX0_2.locationMarker
  SHX9_2 = SHX9_2.x
  SHX10_2 = SHX0_2.locationMarker
  SHX10_2 = SHX10_2.y
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.removeArea
  SHX9_2 = "job_tutorial_step_marker"
  SHX8_2(SHX9_2)
  SHX8_2 = SHX0_2.ignoreAreaCheck
  if not SHX8_2 then
    SHX8_2 = SHX0_2.markerVisualOnly
  end
  if not SHX8_2 then
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "job_tutorial_step_marker"
    SHX11_2 = SHX0_2.locationMarker
    SHX12_2 = SHX5_2
    SHX13_2 = 6
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX15_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX16_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.addJobTutorialProgress
      SHX1_3 = SHX0_2.id
      SHX2_3 = 1
      SHX0_3(SHX1_3, SHX2_3)
    end
    SHX17_2 = {}
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  end
end
SHX14_1 = CMG
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX3_1
  if SHX1_2 then
    SHX1_2 = SHX1_1
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = SHX1_1
  SHX2_2 = SHX1_2 + 1
  SHX1_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX1_2.locationMarker = SHX0_2
    SHX2_2 = SHX13_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX14_1.setNextStepLocationMarker = SHX15_1
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    if SHX0_2 then
      goto SHX_LABEL_9
    end
  end
  SHX0_2 = nil
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2 = SHX1_1
  SHX0_2 = SHX3_1
  SHX0_2 = SHX0_2[SHX1_2]
  if SHX0_2 then
    SHX1_2 = SHX0_2.id
    if SHX1_2 then
      goto SHX_LABEL_18
    end
  end
  SHX1_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  return SHX1_2
end
SHX14_1.getCurrentQuestStepId = SHX15_1
SHX14_1 = CMG
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX3_1
  if SHX1_2 then
    SHX1_2 = SHX1_1
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX2_2 = SHX1_1
  SHX1_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX1_2.locationMarker = SHX0_2
    SHX2_2 = SHX13_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX14_1.setCurrentStepLocationMarker = SHX15_1
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "mp_mission_name_freemode"
  SHX0_2 = SHX0_2(SHX1_2)
  while true do
    SHX1_2 = HasScaleformMovieLoaded
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "SET_MISSION_INFO"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX7_1
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "~g~Tutorial Complete"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "0"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "0"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "0"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = ""
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.transactionType = "questcomplete"
  SHX1_2(SHX2_2)
  SHX1_2 = nil
  SHX8_1 = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "6932434e21"
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 7000
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = DrawScaleformMovie
    SHX3_2 = SHX0_2
    SHX4_2 = 0.5
    SHX5_2 = 0.35
    SHX6_2 = 0.3
    SHX7_2 = 0.4615
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SetScaleformMovieAsNoLongerNeeded
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
SHX15_1 = CMG
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  while true do
    SHX2_2 = SHX9_1
    if not SHX2_2 then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = true
  SHX9_1 = SHX2_2
  SHX2_2 = SHX3_1
  if SHX2_2 then
    SHX2_2 = SHX1_1
    if SHX2_2 then
      goto SHX_LABEL_19
    end
  end
  SHX2_2 = false
  SHX9_1 = SHX2_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX3_2 = SHX1_1
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.id
  if SHX2_2 ~= SHX0_2 then
    SHX2_2 = false
    SHX9_1 = SHX2_2
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getCurrentJobTheme
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.warn
    SHX3_2 = "currentJobTheme is nil in job tutorial start"
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = false
    SHX9_1 = SHX2_2
    return
  end
  SHX3_2 = SHX1_1
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX2_2.current
  SHX3_2 = SHX3_2 + SHX1_2
  SHX2_2.current = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.type = "QUEST_LOG_UPDATE_PROGRESS"
  SHX5_2 = {}
  SHX6_2 = SHX2_2.current
  SHX5_2.current = SHX6_2
  SHX4_2.info = SHX5_2
  SHX3_2(SHX4_2)
  SHX3_2 = Wait
  SHX4_2 = 500
  SHX3_2(SHX4_2)
  SHX3_2 = SHX2_2.current
  SHX4_2 = SHX2_2.required
  if SHX3_2 >= SHX4_2 then
    SHX3_2 = SHX1_1
    SHX3_2 = SHX3_2 + 1
    SHX1_1 = SHX3_2
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.uiSendMessage
    SHX4_2 = {}
    SHX4_2.type = "QUEST_LOG_COMPLETE_CURRENT"
    SHX5_2 = {}
    SHX5_2.completedAt = "\226\156\133"
    SHX4_2.info = SHX5_2
    SHX3_2(SHX4_2)
    SHX4_2 = SHX1_1
    SHX3_2 = SHX3_1
    SHX3_2 = SHX3_2[SHX4_2]
    if SHX3_2 then
      SHX4_2 = SHX1_1
      SHX3_2 = SHX3_1
      SHX3_2 = SHX3_2[SHX4_2]
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.uiSendMessage
      SHX5_2 = {}
      SHX5_2.type = "QUEST_LOG_SET_CURRENT"
      SHX6_2 = {}
      SHX7_2 = {}
      SHX8_2 = SHX3_2.id
      SHX7_2.id = SHX8_2
      SHX8_2 = SHX3_2.title
      SHX7_2.title = SHX8_2
      SHX8_2 = SHX3_2.description
      SHX7_2.description = SHX8_2
      SHX7_2.current = 0
      SHX8_2 = SHX3_2.required
      SHX7_2.required = SHX8_2
      SHX6_2.quest = SHX7_2
      SHX5_2.info = SHX6_2
      SHX4_2(SHX5_2)
      SHX4_2 = RageUI
      if SHX4_2 then
        SHX4_2 = RageUI
        SHX5_2 = SHX2_1
        SHX5_2 = SHX5_2()
        SHX4_2.QuestLogXOffset = SHX5_2
      end
      SHX4_2 = SHX13_1
      SHX5_2 = SHX3_2
      SHX4_2(SHX5_2)
    else
      SHX3_2 = SHX4_1
      if SHX3_2 then
        SHX3_2 = tCMG
        SHX3_2 = SHX3_2.removeMarker
        SHX4_2 = SHX4_1
        SHX3_2(SHX4_2)
        SHX3_2 = nil
        SHX4_1 = SHX3_2
      end
      SHX3_2 = pairs
      SHX4_2 = SHX5_1
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX9_2 = DeleteCheckpoint
        SHX10_2 = SHX8_2
        SHX9_2(SHX10_2)
      end
      SHX3_2 = {}
      SHX5_1 = SHX3_2
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.removeArea
      SHX4_2 = "job_tutorial_step_marker"
      SHX3_2(SHX4_2)
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.uiSendMessage
      SHX4_2 = {}
      SHX4_2.type = "QUEST_LOG_QUEST_FULLY_COMPLETE"
      SHX5_2 = {}
      SHX4_2.info = SHX5_2
      SHX3_2(SHX4_2)
      SHX3_2 = SHX14_1
      SHX3_2()
      SHX3_2 = nil
      SHX3_1 = SHX3_2
      SHX3_2 = nil
      SHX1_1 = SHX3_2
      SHX3_2 = SHX12_1
      SHX4_2 = false
      SHX3_2(SHX4_2)
    end
  end
  SHX3_2 = SHX3_1
  if SHX3_2 then
    SHX3_2 = SHX1_1
    if SHX3_2 then
      SHX3_2 = SHX8_1
      if SHX3_2 then
        SHX3_2 = TriggerServerEvent
        SHX4_2 = "75b4c18f3c"
        SHX5_2 = SHX8_1
        SHX6_2 = SHX1_1
        SHX8_2 = SHX1_1
        SHX7_2 = SHX3_1
        SHX7_2 = SHX7_2[SHX8_2]
        SHX7_2 = SHX7_2.current
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      end
    end
  end
  SHX3_2 = false
  SHX9_1 = SHX3_2
end
SHX15_1.addJobTutorialProgress = SHX16_1
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = false
  SHX6_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = ""
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = TriggerScreenblurFadeOut
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showAllDisplays
  SHX1_2 = "jobterminal"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showHud
  SHX0_2()
end
SHX16_1 = RegisterNetEvent
SHX17_1 = "08da92f592"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.addJobTutorialProgress
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2 or SHX4_2
  if not SHX1_2 then
    SHX4_2 = 1
  end
  SHX2_2(SHX3_2, SHX4_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = CMG
SHX16_1 = SHX16_1.uiRegisterCallback
SHX17_1 = "jobMenuStartTutorial"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX15_1
  SHX1_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.job
    if SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientJob
  SHX1_2 = SHX1_2()
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "e9f6f243dd"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = CMG
SHX16_1 = SHX16_1.uiRegisterCallback
SHX17_1 = "jobMenuCancelTutorial"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.cancelJobTutorial
  SHX0_2()
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "e9f6f243dd"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getCurrentJobTheme
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.warn
    SHX3_2 = "currentJobTheme is nil in job tutorial start"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "QUEST_LOG_CLEAR_ALL"
  SHX4_2 = {}
  SHX3_2.info = SHX4_2
  SHX2_2(SHX3_2)
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = SHX0_2.tutorial
    if SHX2_2 then
      SHX2_2 = SHX0_2.tutorial
      SHX3_1 = SHX2_2
      SHX2_2 = SHX0_2.title
      if not SHX2_2 then
        SHX2_2 = SHX7_1
      end
      SHX7_1 = SHX2_2
      SHX2_2 = SHX0_2.title
      if not SHX2_2 then
        SHX2_2 = "JOB TUTORIAL"
      end
      SHX8_1 = SHX2_2
  end
  else
    SHX3_1 = SHX0_2
    SHX2_2 = "TRAPPER TUTORIAL"
    SHX7_1 = SHX2_2
    SHX2_2 = "Trapper"
    SHX8_1 = SHX2_2
  end
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.stepIndex
    if SHX2_2 then
      SHX3_2 = SHX1_2.stepIndex
      SHX2_2 = SHX3_1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX2_2 = nil ~= SHX2_2
    end
  end
  if SHX2_2 then
    SHX3_2 = SHX1_2.stepIndex
    SHX1_1 = SHX3_2
    SHX4_2 = SHX1_1
    SHX3_2 = SHX3_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = SHX1_2.currentStepProgress
    if not SHX4_2 then
      SHX4_2 = 0
    end
    SHX3_2.current = SHX4_2
    SHX3_2 = 1
    SHX4_2 = SHX1_1
    SHX4_2 = SHX4_2 - 1
    SHX5_2 = 1
    for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = SHX3_1
      SHX7_2 = SHX7_2[SHX6_2]
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.uiSendMessage
      SHX9_2 = {}
      SHX9_2.type = "QUEST_LOG_SET_CURRENT"
      SHX10_2 = {}
      SHX11_2 = {}
      SHX12_2 = SHX7_2.id
      SHX11_2.id = SHX12_2
      SHX12_2 = SHX7_2.title
      SHX11_2.title = SHX12_2
      SHX12_2 = SHX7_2.description
      SHX11_2.description = SHX12_2
      SHX11_2.current = 0
      SHX12_2 = SHX7_2.required
      SHX11_2.required = SHX12_2
      SHX10_2.quest = SHX11_2
      SHX9_2.info = SHX10_2
      SHX8_2(SHX9_2)
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.uiSendMessage
      SHX9_2 = {}
      SHX9_2.type = "QUEST_LOG_COMPLETE_CURRENT"
      SHX10_2 = {}
      SHX10_2.completedAt = "\226\156\133"
      SHX9_2.info = SHX10_2
      SHX8_2(SHX9_2)
    end
    SHX4_2 = SHX1_1
    SHX3_2 = SHX3_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.uiSendMessage
    SHX5_2 = {}
    SHX5_2.type = "QUEST_LOG_SET_CURRENT"
    SHX6_2 = {}
    SHX7_2 = {}
    SHX8_2 = SHX3_2.id
    SHX7_2.id = SHX8_2
    SHX8_2 = SHX3_2.title
    SHX7_2.title = SHX8_2
    SHX8_2 = SHX3_2.description
    SHX7_2.description = SHX8_2
    SHX8_2 = SHX3_2.current
    SHX7_2.current = SHX8_2
    SHX8_2 = SHX3_2.required
    SHX7_2.required = SHX8_2
    SHX6_2.quest = SHX7_2
    SHX5_2.info = SHX6_2
    SHX4_2(SHX5_2)
    SHX4_2 = SHX3_2.current
    if SHX4_2 > 0 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.uiSendMessage
      SHX5_2 = {}
      SHX5_2.type = "QUEST_LOG_UPDATE_PROGRESS"
      SHX6_2 = {}
      SHX7_2 = SHX3_2.current
      SHX6_2.current = SHX7_2
      SHX5_2.info = SHX6_2
      SHX4_2(SHX5_2)
    end
  else
    SHX3_2 = 1
    SHX1_1 = SHX3_2
    SHX4_2 = SHX1_1
    SHX3_2 = SHX3_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.uiSendMessage
    SHX5_2 = {}
    SHX5_2.type = "QUEST_LOG_SET_CURRENT"
    SHX6_2 = {}
    SHX7_2 = {}
    SHX8_2 = SHX3_2.id
    SHX7_2.id = SHX8_2
    SHX8_2 = SHX3_2.title
    SHX7_2.title = SHX8_2
    SHX8_2 = SHX3_2.description
    SHX7_2.description = SHX8_2
    SHX7_2.current = 0
    SHX8_2 = SHX3_2.required
    SHX7_2.required = SHX8_2
    SHX6_2.quest = SHX7_2
    SHX5_2.info = SHX6_2
    SHX4_2(SHX5_2)
  end
  SHX3_2 = RageUI
  if SHX3_2 then
    SHX3_2 = RageUI
    SHX4_2 = SHX2_1
    SHX4_2 = SHX4_2()
    SHX3_2.QuestLogXOffset = SHX4_2
  end
  SHX3_2 = SHX13_1
  SHX5_2 = SHX1_1
  SHX4_2 = SHX3_1
  SHX4_2 = SHX4_2[SHX5_2]
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.type = "QUEST_LOG_SET_TITLE"
  SHX5_2 = {}
  SHX6_2 = SHX7_1
  SHX5_2.title = SHX6_2
  SHX4_2.info = SHX5_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX12_1
  SHX4_2 = true
  SHX3_2(SHX4_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = CMG
SHX16_1 = SHX16_1.uiRegisterCallback
SHX17_1 = "jobMenuClosed"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX15_1
  SHX0_2()
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = AddEventHandler
SHX17_1 = "b4fcca60d5"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX6_1 = SHX0_2
  SHX0_2 = SHX15_1
  SHX0_2()
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = CMG
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = true
  SHX6_1 = SHX1_2
  SHX1_2 = TriggerScreenblurFadeIn
  SHX2_2 = 0.0
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSetFocus
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hideAllDisplays
  SHX2_2 = "jobterminal"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hideHud
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientJob
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientFaction
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX3_2 = SHX10_1
    SHX3_2 = SHX3_2[SHX2_2]
    if SHX3_2 and SHX2_2 then
      goto SHX_LABEL_34
      SHX3_2 = SHX2_2 or SHX3_2
    end
  end
  SHX3_2 = SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
  ::SHX_LABEL_34::
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSendMessage
  SHX5_2 = {}
  SHX5_2.type = "APP_TOGGLE"
  SHX5_2.app = SHX3_2
  SHX6_2 = SHX11_1
  SHX6_2 = SHX6_2[SHX1_2]
  SHX6_2 = SHX6_2 and true == SHX0_2 or SHX6_2
  SHX5_2.atWarehouseSeller = SHX6_2
  SHX4_2(SHX5_2)
  if "Trapper" == SHX1_2 then
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "2319d6cab8"
    SHX4_2(SHX5_2)
    SHX4_2 = SHX12_1
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.isJobTutorialRunning
    SHX5_2, SHX6_2, SHX7_2 = SHX5_2()
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  if "Mechanic" == SHX1_2 then
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "5c8eb44f1a"
    SHX4_2(SHX5_2)
  end
  SHX4_2 = TriggerEvent
  SHX5_2 = "a68d3374be"
  SHX6_2 = SHX1_2
  SHX7_2 = SHX0_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
SHX16_1.openJobTerminal = SHX17_1
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHudVehicleCursorEnabled
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX6_1
  SHX0_2 = not SHX0_2
  SHX6_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientJob
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientFaction
  SHX1_2 = SHX1_2()
  SHX2_2 = nil
  if SHX0_2 and not SHX2_2 then
    SHX3_2 = SHX11_1
    SHX2_2 = SHX3_2[SHX0_2]
  end
  if SHX1_2 and not SHX2_2 then
    SHX3_2 = SHX10_1
    SHX2_2 = SHX3_2[SHX1_2]
  end
  if SHX2_2 then
    SHX3_2 = SHX6_1
    if SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.openJobTerminal
      SHX3_2()
    else
      SHX3_2 = SHX15_1
      SHX3_2()
    end
  end
end
SHX17_1 = RegisterCommand
SHX18_1 = "jobmenu"
SHX19_1 = SHX16_1
SHX20_1 = false
SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX17_1 = RegisterKeyMapping
SHX18_1 = "jobmenu"
SHX19_1 = "Open Job Menu"
SHX20_1 = "KEYBOARD"
SHX21_1 = "F6"
SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX17_1 = CMG
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  return SHX0_2
end
SHX17_1.isJobTerminalOpen = SHX18_1
SHX17_1 = 0
SHX18_1 = RegisterNetEvent
SHX19_1 = "45916a0093"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2 or nil
  if not SHX0_2 then
    SHX1_2 = 120
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2 * 1000
  SHX3_2 = SHX2_2 + SHX3_2
  SHX4_2 = SHX17_1
  if SHX3_2 <= SHX4_2 then
    return
  end
  SHX17_1 = SHX3_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSendMessage
  SHX5_2 = {}
  SHX5_2.type = "QUEST_LOG_DISPATCH_VISIBLE"
  SHX6_2 = {}
  SHX6_2.visible = true
  SHX5_2.info = SHX6_2
  SHX4_2(SHX5_2)
  SHX4_2 = SetTimeout
  SHX5_2 = SHX1_2 * 1000
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    SHX1_3 = SHX17_1
    if SHX0_3 >= SHX1_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.uiSendMessage
      SHX1_3 = {}
      SHX1_3.type = "QUEST_LOG_DISPATCH_VISIBLE"
      SHX2_3 = {}
      SHX2_3.visible = false
      SHX1_3.info = SHX2_3
      SHX0_3(SHX1_3)
    end
  end
  SHX4_2(SHX5_2, SHX6_2)
end
SHX18_1(SHX19_1, SHX20_1)
