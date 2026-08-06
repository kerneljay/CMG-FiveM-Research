-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_prison"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
SHX2_1 = false
SHX3_1 = nil
SHX4_1 = 0
SHX5_1 = 0
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX2_2 = AttachEntityToEntity
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = GetPedBoneIndex
  SHX6_2 = SHX1_2
  SHX7_2 = 28422
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = -0.02
  SHX7_2 = -0.06
  SHX8_2 = -0.2
  SHX9_2 = -13.377
  SHX10_2 = 10.3568
  SHX11_2 = 17.9681
  SHX12_2 = true
  SHX13_2 = true
  SHX14_2 = false
  SHX15_2 = true
  SHX16_2 = 1
  SHX17_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = AttachEntityToEntity
  SHX2_2 = SHX4_1
  SHX3_2 = SHX0_2
  SHX4_2 = GetPedBoneIndex
  SHX5_2 = SHX0_2
  SHX6_2 = 28422
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = -0.12
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = false
  SHX14_2 = true
  SHX15_2 = 1
  SHX16_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "move_mop"
  SHX1_2(SHX2_2)
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = GetAnimDuration
  SHX3_2 = "move_mop"
  SHX4_2 = "idle_scrub_small_player"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX2_2 * 1000.0
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    if not (SHX1_2 > SHX3_2) then
      break
    end
    SHX3_2 = SHX1_1
    if not SHX3_2 then
      return
    end
    SHX3_2 = IsEntityPlayingAnim
    SHX4_2 = SHX0_2
    SHX5_2 = "move_mop"
    SHX6_2 = "idle_scrub_small_player"
    SHX7_2 = 7
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if not SHX3_2 then
      SHX3_2 = TaskPlayAnim
      SHX4_2 = SHX0_2
      SHX5_2 = "move_mop"
      SHX6_2 = "idle_scrub_small_player"
      SHX7_2 = 8.0
      SHX8_2 = 8.0
      SHX9_2 = -1
      SHX10_2 = 51
      SHX11_2 = 1.0
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = RemoveAnimDict
  SHX4_2 = "move_mop"
  SHX3_2(SHX4_2)
  SHX3_2 = SHX6_1
  SHX4_2 = SHX4_1
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = false
  SHX2_1 = SHX3_2
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlayerNearPrison
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX5_1
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = 1000
    if SHX0_2 > SHX1_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "7a9cb961f5"
      SHX0_2(SHX1_2)
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX5_1 = SHX0_2
    end
    return
  end
  SHX0_2 = 0
  SHX1_2 = 2.0
  SHX2_2 = SHX3_1
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX3_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getPlayerCoords
      SHX8_2 = SHX8_2()
      SHX8_2 = SHX8_2 - SHX7_2
      SHX8_2 = #SHX8_2
      if SHX1_2 > SHX8_2 then
        SHX0_2 = SHX6_2
        SHX1_2 = SHX8_2
      end
      if SHX8_2 < 25.0 then
        SHX9_2 = DrawMarker
        SHX10_2 = 0
        SHX11_2 = SHX7_2.x
        SHX12_2 = SHX7_2.y
        SHX13_2 = SHX7_2.z
        SHX13_2 = SHX13_2 - 0.7
        SHX14_2 = 0.0
        SHX15_2 = 0.0
        SHX16_2 = 0.0
        SHX17_2 = 0.0
        SHX18_2 = 0.0
        SHX19_2 = 0.0
        SHX20_2 = 0.2
        SHX21_2 = 0.2
        SHX22_2 = 0.2
        SHX23_2 = 255
        SHX24_2 = 255
        SHX25_2 = 0
        SHX26_2 = 255
        SHX27_2 = true
        SHX28_2 = false
        SHX29_2 = 2
        SHX30_2 = false
        SHX31_2 = nil
        SHX32_2 = nil
        SHX33_2 = false
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
      end
    end
  end
  SHX2_2 = SHX2_1
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isHandcuffed
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.isTazed
      SHX2_2 = SHX2_2()
      if not SHX2_2 then
        return
      end
    end
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = IsEntityPlayingAnim
  SHX4_2 = SHX2_2
  SHX5_2 = "missfbi4prepp1"
  SHX6_2 = "idle"
  SHX7_2 = 7
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "missfbi4prepp1"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX2_2
    SHX5_2 = "missfbi4prepp1"
    SHX6_2 = "idle"
    SHX7_2 = 8.0
    SHX8_2 = 8.0
    SHX9_2 = -1
    SHX10_2 = 51
    SHX11_2 = 1.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "missfbi4prepp1"
    SHX3_2(SHX4_2)
  end
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX4_1
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadModel
    SHX4_2 = -320848029
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerCoords
    SHX3_2 = SHX3_2()
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.requestEntitySpawn
    SHX5_2 = "prison_mop"
    SHX4_2(SHX5_2)
    SHX4_2 = CreateObject
    SHX5_2 = -320848029
    SHX6_2 = SHX3_2.x
    SHX7_2 = SHX3_2.y
    SHX8_2 = SHX3_2.z
    SHX9_2 = true
    SHX10_2 = false
    SHX11_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX4_1 = SHX4_2
    SHX4_2 = SetModelAsNoLongerNeeded
    SHX5_2 = -320848029
    SHX4_2(SHX5_2)
    SHX4_2 = SHX6_1
    SHX5_2 = SHX4_1
    SHX6_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2)
  end
  if 0 == SHX0_2 then
    SHX3_2 = drawNativeText
    SHX4_2 = "Locate the next ~y~cleaning location~w~"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = drawNativeNotification
  SHX4_2 = "Press ~INPUT_CONTEXT~ to clean the mess."
  SHX3_2(SHX4_2)
  SHX3_2 = IsControlJustPressed
  SHX4_2 = 0
  SHX5_2 = 51
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "9be829c8d9"
    SHX5_2 = SHX0_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = true
    SHX2_1 = SHX3_2
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.CreateThread
    SHX4_2 = SHX7_1
    SHX3_2(SHX4_2)
  end
end
SHX9_1 = RegisterNetEvent
SHX10_1 = "c88f69209e"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = true
  SHX1_1 = SHX0_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.copy
  SHX1_2 = SHX0_1.cleaningPositions
  SHX0_2 = SHX0_2(SHX1_2)
  SHX3_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX8_1
  SHX2_2 = "Prison Cleaning"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "7a9cb961f5"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = nil
  SHX3_1 = SHX0_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX4_1
  SHX0_2(SHX1_2)
  SHX0_2 = StopAnimTask
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "missfbi4prepp1"
  SHX3_2 = "idle"
  SHX4_2 = 7
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteThreadOnTick
  SHX1_2 = SHX8_1
  SHX0_2(SHX1_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "9be829c8d9"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX3_1
  SHX1_2[SHX0_2] = nil
end
SHX9_1(SHX10_1, SHX11_1)
