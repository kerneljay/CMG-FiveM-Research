-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_clothingrob"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = 0
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SetPedCanRagdollFromPlayerImpact
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlockingOfNonTemporaryEvents
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetPedResetFlag
  SHX3_2 = SHX0_2
  SHX4_2 = 249
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetPedConfigFlag
  SHX3_2 = SHX0_2
  SHX4_2 = 185
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetPedConfigFlag
  SHX3_2 = SHX0_2
  SHX4_2 = 108
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetEntityCollision
  SHX3_2 = SHX0_2
  SHX4_2 = not SHX1_2
  SHX5_2 = not SHX1_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX4_1 = RegisterNetEvent
SHX5_1 = "9f0a898a2d"
function SHX6_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX3_2 = SHX0_1.locations
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2.isRobbed = SHX1_2
  SHX5_2 = DoesEntityExist
  SHX6_2 = SHX4_2.ped
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = IsEntityDead
    SHX6_2 = SHX4_2.ped
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      if SHX1_2 then
        SHX5_2 = SHX3_1
        SHX6_2 = SHX4_2.ped
        SHX7_2 = false
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = GetOffsetFromEntityInWorldCoords
        SHX6_2 = SHX4_2.ped
        SHX7_2 = 1.5
        SHX8_2 = 0.0
        SHX9_2 = 0.0
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = OpenSequenceTask
        SHX6_2 = SHX6_2()
        SHX7_2 = SHX0_1.locations
        SHX7_2 = SHX7_2[SHX0_2]
        SHX7_2 = SHX7_2.hideDirection
        if "right" == SHX7_2 then
          SHX7_2 = 1.5
          if SHX7_2 then
            goto SHX_LABEL_39
          end
        end
        SHX7_2 = -1.5
        -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
        ::SHX_LABEL_39::
        SHX8_2 = TaskGoStraightToCoord
        SHX9_2 = 0
        SHX10_2 = SHX5_2.x
        SHX11_2 = SHX5_2.y
        SHX12_2 = SHX5_2.z
        SHX13_2 = SHX7_2
        SHX14_2 = -1
        SHX15_2 = GetEntityHeading
        SHX16_2 = SHX4_2.ped
        SHX15_2 = SHX15_2(SHX16_2)
        SHX16_2 = 0.2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        SHX8_2 = TaskCower
        SHX9_2 = 0
        SHX10_2 = -1
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = CloseSequenceTask
        SHX9_2 = SHX6_2
        SHX8_2(SHX9_2)
        SHX8_2 = TaskPerformSequenceLocally
        SHX9_2 = SHX4_2.ped
        SHX10_2 = SHX6_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = ClearSequenceTask
        SHX9_2 = SHX6_2
        SHX8_2(SHX9_2)
      else
        SHX5_2 = ClearPedTasksImmediately
        SHX6_2 = SHX4_2.ped
        SHX5_2(SHX6_2)
        SHX5_2 = SetEntityCoords
        SHX6_2 = SHX4_2.ped
        SHX7_2 = SHX3_2.position
        SHX7_2 = SHX7_2.x
        SHX8_2 = SHX3_2.position
        SHX8_2 = SHX8_2.y
        SHX9_2 = SHX3_2.position
        SHX9_2 = SHX9_2.z
        SHX10_2 = false
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX5_2 = SetEntityHeading
        SHX6_2 = SHX4_2.ped
        SHX7_2 = SHX3_2.position
        SHX7_2 = SHX7_2.w
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = SHX3_1
        SHX6_2 = SHX4_2.ped
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
      end
    end
  end
  if SHX1_2 and not SHX2_2 then
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 8000
    SHX5_2(SHX6_2)
    while true do
      SHX5_2 = RequestScriptAudioBank
      SHX6_2 = "Alarms"
      SHX7_2 = false
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      if SHX5_2 then
        break
      end
      SHX5_2 = Citizen
      SHX5_2 = SHX5_2.Wait
      SHX6_2 = 0
      SHX5_2(SHX6_2)
    end
    SHX5_2 = GetSoundId
    SHX5_2 = SHX5_2()
    SHX6_2 = PlaySoundFromCoord
    SHX7_2 = SHX5_2
    SHX8_2 = "Burglar_Bell"
    SHX9_2 = SHX3_2.position
    SHX9_2 = SHX9_2.x
    SHX10_2 = SHX3_2.position
    SHX10_2 = SHX10_2.y
    SHX11_2 = SHX3_2.position
    SHX11_2 = SHX11_2.z
    SHX12_2 = "Generic_Alarms"
    SHX13_2 = false
    SHX14_2 = 0.05
    SHX15_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 120000
    SHX6_2(SHX7_2)
    SHX6_2 = StopSound
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
    SHX6_2 = ReleaseSoundId
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
end
SHX4_1(SHX5_1, SHX6_1)
function SHX4_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  if SHX2_2 then
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 2000
    SHX3_2(SHX4_2)
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = "anim@heists@prison_heiststation@cop_reactions"
  SHX4_2(SHX5_2)
  SHX4_2 = TaskPlayAnim
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = "anim@heists@prison_heiststation@cop_reactions"
  SHX7_2 = "cop_b_idle"
  SHX8_2 = 8.0
  SHX9_2 = 8.0
  SHX10_2 = -1
  SHX11_2 = 51
  SHX12_2 = 1.0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = RemoveAnimDict
  SHX5_2 = "anim@heists@prison_heiststation@cop_reactions"
  SHX4_2(SHX5_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.CreateThreadNow
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = ""
    SHX2_3 = SHX1_2
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX4_2(SHX5_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 0
  SHX4_2(SHX5_2)
  SHX4_2 = true
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  while SHX4_2 do
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - SHX5_2
    if not (SHX1_2 > SHX6_2) then
      break
    end
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerCoords
    SHX6_2 = SHX6_2()
    SHX7_2 = SHX0_2.position
    SHX7_2 = SHX7_2.xyz
    SHX6_2 = SHX6_2 - SHX7_2
    SHX6_2 = #SHX6_2
    SHX7_2 = 1.25
    if not (SHX6_2 > SHX7_2) then
      SHX7_2 = IsEntityPlayingAnim
      SHX8_2 = SHX3_2
      SHX9_2 = "anim@heists@prison_heiststation@cop_reactions"
      SHX10_2 = "cop_b_idle"
      SHX11_2 = 3
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if SHX7_2 then
        goto SHX_LABEL_79
      end
    end
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.stopCircularProgressBar
    SHX7_2()
    SHX7_2 = StopAnimTask
    SHX8_2 = SHX3_2
    SHX9_2 = "anim@heists@prison_heiststation@cop_reactions"
    SHX10_2 = "cop_b_idle"
    SHX11_2 = 1.0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX4_2 = false
    do break end
    -- [FIX IF ERROR] Move ::SHX_LABEL_79:: outside nested blocks until all 'goto SHX_LABEL_79' can see it
    ::SHX_LABEL_79::
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  if not SHX4_2 then
    SHX6_2 = notify
    SHX7_2 = "~r~Failed to break open the cash register."
    SHX6_2(SHX7_2)
  end
  return SHX4_2
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  SHX1_2 = true
  SHX2_2 = true
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX2_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_JUMP~ in the correct area break the bolts."
      SHX0_3(SHX1_3)
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.minigameCircularProgressBar
  SHX4_2 = {}
  SHX4_2.Difficulty = "Medium"
  SHX4_2.Timeout = 20000
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX1_2 = SHX0_3
    SHX1_3 = false
    SHX2_2 = SHX1_3
  end
  SHX4_2.onComplete = SHX5_2
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX1_2 = SHX0_3
    SHX0_3 = false
    SHX2_2 = SHX0_3
  end
  SHX4_2.onTimeout = SHX5_2
  SHX3_2(SHX4_2)
  while SHX2_2 do
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerCoords
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX0_2.position
    SHX4_2 = SHX4_2.xyz
    SHX3_2 = SHX3_2 - SHX4_2
    SHX3_2 = #SHX3_2
    if SHX3_2 > 2.0 then
      SHX1_2 = false
      SHX2_2 = false
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  if not SHX1_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~Failed to break the bolts."
    SHX3_2(SHX4_2)
  end
  return SHX1_2
end
SHX6_1 = RegisterNetEvent
SHX7_1 = "934da7820b"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX2_2 = SHX0_1.locations
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  while true do
    SHX4_2 = DrawMarker
    SHX5_2 = 1
    SHX6_2 = SHX2_2.position
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX2_2.position
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX2_2.position
    SHX8_2 = SHX8_2.z
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.6
    SHX16_2 = 0.6
    SHX17_2 = 0.6
    SHX18_2 = 255
    SHX19_2 = 255
    SHX20_2 = 0
    SHX21_2 = 80
    SHX22_2 = false
    SHX23_2 = false
    SHX24_2 = 2
    SHX25_2 = false
    SHX26_2 = nil
    SHX27_2 = nil
    SHX28_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX2_2.position
    SHX5_2 = SHX5_2.xyz
    SHX4_2 = SHX4_2 - SHX5_2
    SHX4_2 = #SHX4_2
    if not (SHX4_2 > 75.0) then
      SHX5_2 = IsEntityDead
      SHX6_2 = PlayerPedId
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX6_2()
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      if not SHX5_2 then
        SHX5_2 = SHX3_2.isRobbed
        if SHX5_2 then
          goto SHX_LABEL_54
        end
      end
    end
    return
    goto SHX_LABEL_101
    -- [FIX IF ERROR] Move ::SHX_LABEL_54:: outside nested blocks until all 'goto SHX_LABEL_54' can see it
    ::SHX_LABEL_54::
    if SHX4_2 < 2.0 then
      SHX5_2 = drawNativeNotification
      SHX6_2 = "Presss ~INPUT_CONTEXT~ to break open the cash register."
      SHX5_2(SHX6_2)
      SHX5_2 = IsControlJustPressed
      SHX6_2 = 0
      SHX7_2 = 51
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      if SHX5_2 then
        SHX5_2 = math
        SHX5_2 = SHX5_2.floor
        SHX6_2 = SHX1_2 / 2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX6_2 = SHX4_1
        SHX7_2 = SHX2_2
        SHX8_2 = SHX5_2
        SHX9_2 = false
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        if SHX6_2 then
          SHX6_2 = SHX5_1
          SHX7_2 = SHX2_2
          SHX6_2 = SHX6_2(SHX7_2)
          if SHX6_2 then
            SHX6_2 = SHX4_1
            SHX7_2 = SHX2_2
            SHX8_2 = SHX5_2
            SHX9_2 = true
            SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
            if SHX6_2 then
              SHX6_2 = TriggerServerEvent
              SHX7_2 = "b7f88b275b"
              SHX8_2 = SHX0_2
              SHX6_2(SHX7_2, SHX8_2)
              SHX6_2 = StopAnimTask
              SHX7_2 = PlayerPedId
              SHX7_2 = SHX7_2()
              SHX8_2 = "anim@heists@prison_heiststation@cop_reactions"
              SHX9_2 = "cop_b_idle"
              SHX10_2 = 1.0
              SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
              return
            end
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_101:: outside nested blocks until all 'goto SHX_LABEL_101' can see it
    ::SHX_LABEL_101::
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = IsPedArmed
  SHX2_2 = SHX0_2.playerPed
  SHX3_2 = 6
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = IsPlayerFreeAiming
    SHX2_2 = SHX0_2.playerId
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.isEmergencyService
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        goto SHX_LABEL_18
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX1_2 = GetEntityPlayerIsFreeAimingAt
  SHX2_2 = SHX0_2.playerId
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  if not SHX1_2 or 0 == SHX2_2 then
    return
  end
  SHX3_2 = pairs
  SHX4_2 = SHX1_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.ped
    if SHX9_2 == SHX2_2 then
      SHX9_2 = SHX8_2.isRobbed
      if not SHX9_2 then
        SHX9_2 = SHX0_1.locations
        SHX9_2 = SHX9_2[SHX7_2]
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerCoords
        SHX10_2 = SHX10_2()
        SHX11_2 = SHX9_2.position
        SHX11_2 = SHX11_2.xyz
        SHX10_2 = SHX10_2 - SHX11_2
        SHX10_2 = #SHX10_2
        if SHX10_2 < 10.0 then
          SHX10_2 = GetGameTimer
          SHX10_2 = SHX10_2()
          SHX11_2 = SHX2_1
          SHX11_2 = SHX10_2 - SHX11_2
          SHX12_2 = 2000
          if SHX11_2 > SHX12_2 then
            SHX11_2 = TriggerServerEvent
            SHX12_2 = "f9e7d5459a"
            SHX13_2 = SHX7_2
            SHX11_2(SHX12_2, SHX13_2)
            SHX2_1 = SHX10_2
          end
          break
        end
      end
    end
  end
end
SHX7_1 = Citizen
SHX7_1 = SHX7_1.CreateThread
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.locations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX1_1
    SHX7_2 = {}
    SHX7_2.ped = 0
    SHX7_2.isRobbed = false
    SHX6_2[SHX4_2] = SHX7_2
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createDynamicPed
    SHX7_2 = SHX5_2.model
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.xyz
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.w
    SHX10_2 = false
    SHX11_2 = nil
    SHX12_2 = nil
    SHX13_2 = 50.0
    SHX14_2 = nil
    function SHX15_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
      SHX2_3 = SHX4_2
      SHX1_3 = SHX1_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3.ped = SHX0_3
      SHX2_3 = SHX4_2
      SHX1_3 = SHX1_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX1_3.isRobbed
      if SHX1_3 then
        SHX1_3 = IsEntityDead
        SHX3_3 = SHX4_2
        SHX2_3 = SHX1_1
        SHX2_3 = SHX2_3[SHX3_3]
        SHX2_3 = SHX2_3.ped
        SHX1_3 = SHX1_3(SHX2_3)
        if SHX1_3 then
          goto SHX_LABEL_58
        end
        SHX1_3 = SHX3_1
        SHX2_3 = SHX0_3
        SHX3_3 = false
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SHX0_1.locations
        SHX2_3 = SHX4_2
        SHX1_3 = SHX1_3[SHX2_3]
        SHX1_3 = SHX1_3.hideDirection
        if "right" == SHX1_3 then
          SHX1_3 = 1.5
          if SHX1_3 then
            goto SHX_LABEL_33
          end
        end
        SHX1_3 = -1.5
        -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
        ::SHX_LABEL_33::
        SHX2_3 = GetOffsetFromEntityInWorldCoords
        SHX3_3 = SHX0_3
        SHX4_3 = SHX1_3
        SHX5_3 = 0.0
        SHX6_3 = 0.0
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX3_3 = SetEntityCoords
        SHX4_3 = SHX0_3
        SHX5_3 = SHX2_3.x
        SHX6_3 = SHX2_3.y
        SHX7_3 = SHX2_3.z
        SHX8_3 = false
        SHX9_3 = false
        SHX10_3 = false
        SHX11_3 = false
        SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        SHX3_3 = TaskCower
        SHX4_3 = SHX0_3
        SHX5_3 = -1
        SHX3_3(SHX4_3, SHX5_3)
      else
        SHX1_3 = SHX3_1
        SHX2_3 = SHX0_3
        SHX3_3 = true
        SHX1_3(SHX2_3, SHX3_3)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
      ::SHX_LABEL_58::
    end
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX6_1
  SHX2_2 = "Clothing Robbery"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX7_1(SHX8_1)
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SetNuiFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.openNUI = true
  SHX0_2(SHX1_2)
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SetNuiFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.openNUI = false
  SHX0_2(SHX1_2)
end
SHX9_1 = 0
SHX10_1 = RegisterNetEvent
SHX11_1 = "3ec0d43499"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  if SHX0_2 then
    SHX1_2 = DecorSetBool
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = "4ac0472477"
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.requestEntitySpawn
    SHX3_2 = "headbag_object"
    SHX2_2(SHX3_2)
    SHX2_2 = CreateObject
    SHX3_2 = 289396019
    SHX4_2 = 0
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = true
    SHX8_2 = true
    SHX9_2 = true
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX9_1 = SHX2_2
    SHX2_2 = AttachEntityToEntity
    SHX3_2 = SHX9_1
    SHX4_2 = SHX1_2
    SHX5_2 = GetPedBoneIndex
    SHX6_2 = SHX1_2
    SHX7_2 = 12844
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX6_2 = 0.2
    SHX7_2 = 0.04
    SHX8_2 = 0
    SHX9_2 = 0
    SHX10_2 = 270.0
    SHX11_2 = 60.0
    SHX12_2 = true
    SHX13_2 = true
    SHX14_2 = false
    SHX15_2 = true
    SHX16_2 = 1
    SHX17_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX2_2 = SHX7_1
    SHX2_2()
  else
    SHX1_2 = DecorSetBool
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = "4ac0472477"
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX9_1
    SHX1_2(SHX2_2)
    SHX1_2 = SHX8_1
    SHX1_2()
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = DecorRegister
SHX11_1 = "4ac0472477"
SHX12_1 = 2
SHX10_1(SHX11_1, SHX12_1)
