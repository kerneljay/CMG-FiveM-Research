-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = 0
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    SHX0_3 = SHX0_2.areaName
    SHX1_3 = SHX0_2.doorName
    SHX0_3 = SHX0_3 .. SHX1_3
    SHX1_3 = SHX2_1
    SHX2_3 = SHX1_2
    SHX1_3[SHX0_3] = SHX2_3
    SHX1_3 = true
    SHX2_3 = SHX1_2
    if 4 == SHX2_3 then
      SHX1_3 = false
      SHX2_3 = GetGameTimer
      SHX2_3 = SHX2_3()
      SHX3_3 = SHX2_3
      SHX4_3 = GetGamePool
      SHX5_3 = "CPed"
      SHX4_3 = SHX4_3(SHX5_3)
      while true do
        SHX5_3 = GetGameTimer
        SHX5_3 = SHX5_3()
        SHX6_3 = SHX5_3 - SHX2_3
        SHX7_3 = 5000
        if SHX6_3 > SHX7_3 then
          break
        end
        SHX6_3 = SHX5_3 - SHX3_3
        SHX7_3 = 2000
        if SHX6_3 > SHX7_3 then
          SHX1_3 = true
          break
        else
          SHX7_3 = SHX0_2.areaName
          SHX6_3 = SHX0_1
          SHX6_3 = SHX6_3[SHX7_3]
          SHX7_3 = SHX0_2.doorName
          SHX6_3 = SHX6_3[SHX7_3]
          SHX7_3 = SHX1_2
          if SHX6_3 == SHX7_3 then
            break
          end
          SHX6_3 = SHX2_1
          SHX6_3 = SHX6_3[SHX0_3]
          SHX7_3 = SHX1_2
          if SHX6_3 ~= SHX7_3 then
            break
          end
        end
        SHX6_3 = pairs
        SHX7_3 = SHX4_3
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3)
        for SHX10_3, SHX11_3 in SHX6_3, SHX7_3, SHX8_3, SHX9_3 do
          SHX12_3 = GetEntityCoords
          SHX13_3 = SHX11_3
          SHX14_3 = true
          SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
          SHX13_3 = SHX0_2.doorInfo
          SHX13_3 = SHX13_3.position
          SHX12_3 = SHX12_3 - SHX13_3
          SHX12_3 = #SHX12_3
          SHX13_3 = 0.75
          if SHX12_3 < SHX13_3 then
            SHX3_3 = SHX5_3
            break
          end
        end
        SHX6_3 = Citizen
        SHX6_3 = SHX6_3.Wait
        SHX7_3 = 0
        SHX6_3(SHX7_3)
      end
    end
    SHX2_3 = SHX2_1
    SHX2_3[SHX0_3] = nil
    if SHX1_3 then
      SHX2_3 = SHX2_2
      SHX2_3()
    end
  end
  SHX3_2(SHX4_2)
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = PlayerPedId
    SHX0_3 = SHX0_3()
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.loadAnimDict
    SHX2_3 = "anim@heists@keycard@"
    SHX1_3(SHX2_3)
    SHX1_3 = TaskPlayAnim
    SHX2_3 = SHX0_3
    SHX3_3 = "anim@heists@keycard@"
    SHX4_3 = "exit"
    SHX5_3 = 5.0
    SHX6_3 = 1.0
    SHX7_3 = -1
    SHX8_3 = 48
    SHX9_3 = 0
    SHX10_3 = false
    SHX11_3 = false
    SHX12_3 = false
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    SHX1_3 = RemoveAnimDict
    SHX2_3 = "anim@heists@keycard@"
    SHX1_3(SHX2_3)
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.Wait
    SHX2_3 = 1200
    SHX1_3(SHX2_3)
    SHX1_3 = ClearPedTasks
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
  end
  SHX0_2(SHX1_2)
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX0_2.linkedToHouses
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isInHouse
  SHX1_2, SHX2_2 = SHX1_2()
  if SHX1_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX0_2.linkedToHouses
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      if SHX8_2 == SHX2_2 then
        SHX9_2 = true
        return SHX9_2
      end
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.linkedToHouses
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.clientHasOutsideHouseDoorAccess
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      SHX9_2 = true
      return SHX9_2
    end
  end
  SHX3_2 = false
  return SHX3_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = SHX0_2.areaName
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2[2]
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = SHX0_2.doorInfo
  SHX1_2 = SHX1_2.otherPermission
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = SHX0_2.doorInfo
    SHX2_2 = SHX2_2.otherPermission
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = true
      return SHX1_2
    end
  end
  SHX2_2 = SHX0_2.areaName
  SHX1_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX7_2
      SHX8_2 = SHX8_2()
      if SHX8_2 then
        SHX8_2 = true
        return SHX8_2
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX8_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isStaffedOnClient
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = SHX7_1
      SHX2_2 = SHX0_2.areaInfo
      SHX1_2 = SHX1_2(SHX2_2)
    end
  end
  return SHX1_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX9_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX0_2.doorInfo
    SHX1_2 = SHX1_2.automaticGate
    if SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX2_2 = SHX0_2.areaName
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX0_2.doorName
  SHX2_2 = SHX1_2[SHX2_2]
  if 5 == SHX2_2 then
    SHX3_2 = SHX5_1
    SHX4_2 = SHX0_2
    SHX5_2 = 4
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = TriggerServerEvent
      SHX1_3 = "580c03ccaf"
      SHX2_3 = SHX0_2.areaName
      SHX3_3 = SHX0_2.doorName
      SHX4_3 = 4
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    end
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = SHX0_2.areaName
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX0_2.doorName
  SHX2_2 = SHX1_2[SHX2_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX0_2.areaName
  SHX4_2 = SHX0_2.doorName
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX4_2 = SHX2_1
  SHX4_2 = SHX4_2[SHX3_2]
  SHX5_2 = SHX9_1
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX6_2 = SHX0_2.doorInfo
    SHX6_2 = SHX6_2.automaticGate
    if SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getPlayerVehicle
      SHX6_2 = SHX6_2()
      if 0 ~= SHX6_2 then
        SHX7_2 = SHX4_2 or SHX7_2
        if not SHX4_2 then
          SHX7_2 = SHX2_2
        end
        if 4 == SHX7_2 then
          SHX8_2 = GetGameTimer
          SHX8_2 = SHX8_2()
          SHX9_2 = SHX4_1
          SHX9_2 = SHX8_2 - SHX9_2
          SHX10_2 = 200
          if SHX9_2 > SHX10_2 then
            SHX9_2 = TriggerServerEvent
            SHX10_2 = "580c03ccaf"
            SHX11_2 = SHX0_2.areaName
            SHX12_2 = SHX0_2.doorName
            SHX13_2 = 5
            SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
            SHX4_1 = SHX8_2
          end
        end
      end
    end
  end
  SHX6_2 = SHX0_2.distance
  SHX7_2 = 1.5
  if SHX6_2 > SHX7_2 then
    return
  end
  SHX6_2 = ""
  if SHX5_2 then
    SHX6_2 = " (E to toggle lock)"
  end
  SHX7_2 = SHX0_2.doorInfo
  SHX7_2 = SHX7_2.hidden
  if not SHX7_2 then
    if SHX4_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.DrawText3D
      SHX8_2 = SHX0_2.doorInfo
      SHX8_2 = SHX8_2.position
      SHX9_2 = "\226\143\179"
      SHX10_2 = SHX6_2
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX10_2 = 0.45
      SHX11_2 = 4
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    elseif 5 == SHX2_2 or 0 == SHX2_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.DrawText3D
      SHX8_2 = SHX0_2.doorInfo
      SHX8_2 = SHX8_2.position
      SHX9_2 = "\240\159\148\147"
      SHX10_2 = SHX6_2
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX10_2 = 0.45
      SHX11_2 = 4
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    else
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.DrawText3D
      SHX8_2 = SHX0_2.doorInfo
      SHX8_2 = SHX8_2.position
      SHX9_2 = "\240\159\148\146"
      SHX10_2 = SHX6_2
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX10_2 = 0.45
      SHX11_2 = 4
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
  end
  SHX7_2 = IsControlJustPressed
  SHX8_2 = 0
  SHX9_2 = 38
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  if SHX7_2 and SHX5_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.setIgnoreRadialInputThisFrame
    SHX7_2()
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getSelectedEntity
    SHX7_2, SHX8_2 = SHX7_2()
    if not SHX7_2 or 1 ~= SHX8_2 then
      SHX9_2 = SHX4_2 or SHX9_2
      if not SHX4_2 then
        SHX9_2 = SHX2_2
      end
      if 4 == SHX9_2 then
        SHX9_2 = 5
        if SHX9_2 then
          goto SHX_LABEL_129
        end
      end
      SHX9_2 = 4
      -- [FIX IF ERROR] Move ::SHX_LABEL_129:: outside nested blocks until all 'goto SHX_LABEL_129' can see it
      ::SHX_LABEL_129::
      SHX10_2 = SHX5_1
      SHX11_2 = SHX0_2
      SHX12_2 = SHX9_2
      function SHX13_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "580c03ccaf"
        SHX2_3 = SHX0_2.areaName
        SHX3_3 = SHX0_2.doorName
        SHX4_3 = SHX9_2
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      end
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX10_2 = SHX6_1
      SHX10_2()
    end
  end
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "977dcc3a52"
  SHX3_2 = SHX0_2.areaName
  SHX1_2(SHX2_2, SHX3_2)
end
SHX13_1 = RegisterNetEvent
SHX14_1 = "ff4be674af"
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_1 = SHX1_2
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX0_1
    SHX9_2 = {}
    SHX8_2[SHX6_2] = SHX9_2
    SHX8_2 = pairs
    SHX9_2 = SHX7_2.locations
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = SHX13_2.position
      SHX15_2 = SHX13_2.modelPosition
      if SHX15_2 then
        SHX14_2 = SHX13_2.modelPosition
      end
      SHX15_2 = SHX0_1
      SHX15_2 = SHX15_2[SHX6_2]
      SHX15_2[SHX12_2] = 4
      SHX15_2 = AddDoorToSystem
      SHX16_2 = SHX12_2
      SHX17_2 = SHX13_2.model
      SHX18_2 = SHX14_2.x
      SHX19_2 = SHX14_2.y
      SHX20_2 = SHX14_2.z
      SHX21_2 = false
      SHX22_2 = false
      SHX23_2 = false
      SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      SHX15_2 = DoorSystemSetDoorState
      SHX16_2 = SHX12_2
      SHX17_2 = 4
      SHX18_2 = false
      SHX19_2 = false
      SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX15_2 = SHX13_2.automaticGate
      if SHX15_2 then
        SHX15_2 = 10.0
        if SHX15_2 then
          goto SHX_LABEL_45
        end
      end
      SHX15_2 = 1.5
      -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
      ::SHX_LABEL_45::
      SHX16_2 = CMG
      SHX16_2 = SHX16_2.createArea
      SHX17_2 = "gangDoor_"
      SHX18_2 = SHX12_2
      SHX17_2 = SHX17_2 .. SHX18_2
      SHX18_2 = SHX13_2.position
      SHX19_2 = SHX15_2
      SHX20_2 = 5.0
      function SHX21_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX22_2 = SHX10_1
      SHX23_2 = SHX11_1
      SHX24_2 = {}
      SHX24_2.areaName = SHX6_2
      SHX24_2.doorName = SHX12_2
      SHX24_2.doorInfo = SHX13_2
      SHX24_2.areaInfo = SHX7_2
      SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    end
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.createArea
    SHX9_2 = "gangDoorsEnterArea_"
    SHX10_2 = SHX6_2
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = SHX7_2.centerLocation
    SHX11_2 = SHX7_2.eventRadius
    SHX12_2 = 100.0
    SHX13_2 = SHX12_1
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
    SHX16_2 = {}
    SHX16_2.areaName = SHX6_2
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  end
end
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = DoorSystemSetDoorState
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if 0 == SHX1_2 or 5 == SHX1_2 then
    SHX2_2 = DoorSystemSetHoldOpen
    SHX3_2 = SHX0_2
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = DoorSystemSetHoldOpen
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX14_1 = RegisterNetEvent
SHX15_1 = "b5e4a21f88"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX13_1
    SHX9_2 = SHX6_2
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX2_2 = SHX0_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "580c03ccaf"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX13_1
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX0_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2[SHX1_2] = SHX2_2
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = {}
SHX15_1 = 0
SHX16_1 = RegisterCommand
SHX17_1 = "dooreditor"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isStaffedOnClient
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = notify
    SHX1_2 = "~r~You must have staff'd on to use this command."
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dooreditor"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = false
  return SHX1_2
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = 0
  SHX1_2 = 1.5
  SHX2_2 = vector3
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = pairs
  SHX4_2 = GetGamePool
  SHX5_2 = "CObject"
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX4_2(SHX5_2)
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX8_2
    SHX11_2 = true
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = SHX16_1
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    if not SHX10_2 then
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.getPlayerCoords
      SHX10_2 = SHX10_2()
      SHX10_2 = SHX10_2 - SHX9_2
      SHX10_2 = #SHX10_2
      if SHX1_2 > SHX10_2 then
        SHX11_2 = GetEntityAttachedTo
        SHX12_2 = SHX8_2
        SHX11_2 = SHX11_2(SHX12_2)
        if 0 == SHX11_2 then
          SHX0_2 = SHX8_2
          SHX1_2 = SHX10_2
          SHX2_2 = SHX9_2
        end
      end
    else
      SHX10_2 = notify
      SHX11_2 = "~r~Door already exists here"
      SHX10_2(SHX11_2)
    end
  end
  if 0 == SHX0_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~There is not a door nearby."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = pairs
  SHX4_2 = SHX14_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.modelPosition
    SHX9_2 = SHX9_2 - SHX2_2
    SHX9_2 = #SHX9_2
    SHX10_2 = 0.1
    if SHX9_2 < SHX10_2 then
      SHX9_2 = notify
      SHX10_2 = "~r~The closest door has already been edited."
      SHX9_2(SHX10_2)
      return
    end
  end
  SHX3_2 = DoorSystemGetActive
  SHX3_2 = SHX3_2()
  SHX3_2 = #SHX3_2
  SHX4_2 = GetHashKey
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "DOOR_EDITOR_%s"
  SHX7_2 = SHX15_1
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX5_2 = SHX15_1
  SHX5_2 = SHX5_2 + 1
  SHX15_1 = SHX5_2
  SHX5_2 = GetEntityModel
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = AddDoorToSystem
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2
  SHX9_2 = SHX2_2.x
  SHX10_2 = SHX2_2.y
  SHX11_2 = SHX2_2.z
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = DoorSystemGetActive
  SHX6_2 = SHX6_2()
  SHX6_2 = #SHX6_2
  if SHX6_2 == SHX3_2 then
    SHX6_2 = notify
    SHX7_2 = "~r~The door you selected is not a valid door."
    SHX6_2(SHX7_2)
    SHX6_2 = RemoveDoorFromSystem
    SHX7_2 = SHX4_2
    SHX6_2(SHX7_2)
    return
  end
  SHX6_2 = DoorSystemSetDoorState
  SHX7_2 = SHX4_2
  SHX8_2 = 4
  SHX9_2 = false
  SHX10_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = DoorSystemSetHoldOpen
  SHX7_2 = SHX4_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = GetModelDimensions
  SHX7_2 = SHX5_2
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  SHX8_2 = SHX7_2 + SHX6_2
  SHX8_2 = SHX8_2 / 2.0
  SHX9_2 = GetOffsetFromEntityInWorldCoords
  SHX10_2 = SHX0_2
  SHX11_2 = SHX8_2.x
  SHX12_2 = SHX8_2.y
  SHX13_2 = SHX8_2.z
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = RemoveDoorFromSystem
  SHX11_2 = SHX4_2
  SHX10_2(SHX11_2)
  SHX10_2 = SetEntityDrawOutline
  SHX11_2 = SHX0_2
  SHX12_2 = true
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = AddTextEntry
  SHX11_2 = "DOOR_EDITOR_CONFIRM"
  SHX12_2 = [[
Is the highlighted object the door you want?
~INPUT_FRONTEND_ACCEPT~ Accept
~INPUT_FRONTEND_CANCEL~ Deny]]
  SHX10_2(SHX11_2, SHX12_2)
  while true do
    SHX10_2 = DisableControlAction
    SHX11_2 = 0
    SHX12_2 = 201
    SHX13_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = DisableControlAction
    SHX11_2 = 0
    SHX12_2 = 202
    SHX13_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = IsDisabledControlJustPressed
    SHX11_2 = 0
    SHX12_2 = 201
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if SHX10_2 then
      break
    end
    SHX10_2 = IsDisabledControlJustPressed
    SHX11_2 = 0
    SHX12_2 = 202
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if SHX10_2 then
      SHX10_2 = SetEntityDrawOutline
      SHX11_2 = SHX0_2
      SHX12_2 = false
      SHX10_2(SHX11_2, SHX12_2)
      SHX10_2 = notify
      SHX11_2 = "~r~Door editing cancelled by user."
      SHX10_2(SHX11_2)
      return
    end
    SHX10_2 = DisplayHelpTextThisFrame
    SHX11_2 = "DOOR_EDITOR_CONFIRM"
    SHX12_2 = false
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = Citizen
    SHX10_2 = SHX10_2.Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  SHX10_2 = notify
  SHX11_2 = "~g~Door added successfully to the list!"
  SHX10_2(SHX11_2)
  SHX10_2 = table
  SHX10_2 = SHX10_2.insert
  SHX11_2 = SHX14_1
  SHX12_2 = {}
  SHX13_2 = GetEntityArchetypeName
  SHX14_2 = SHX0_2
  SHX13_2 = SHX13_2(SHX14_2)
  if not SHX13_2 then
    SHX13_2 = tostring
    SHX14_2 = GetEntityModel
    SHX15_2 = SHX0_2
    SHX14_2, SHX15_2 = SHX14_2(SHX15_2)
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  end
  SHX12_2.model = SHX13_2
  SHX12_2.position = SHX9_2
  SHX13_2 = GetEntityCoords
  SHX14_2 = SHX0_2
  SHX15_2 = true
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  SHX12_2.modelPosition = SHX13_2
  SHX10_2(SHX11_2, SHX12_2)
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = ""
  SHX1_2 = pairs
  SHX2_2 = SHX14_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_2
    SHX8_2 = "{position = vector3("
    SHX9_2 = tostring
    SHX10_2 = SHX6_2.position
    SHX10_2 = SHX10_2.x
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = ","
    SHX11_2 = tostring
    SHX12_2 = SHX6_2.position
    SHX12_2 = SHX12_2.y
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = ", "
    SHX13_2 = tostring
    SHX14_2 = SHX6_2.position
    SHX14_2 = SHX14_2.z
    SHX13_2 = SHX13_2(SHX14_2)
    SHX14_2 = "), modelPosition = vector3("
    SHX15_2 = tostring
    SHX16_2 = SHX6_2.modelPosition
    SHX16_2 = SHX16_2.x
    SHX15_2 = SHX15_2(SHX16_2)
    SHX16_2 = ","
    SHX17_2 = tostring
    SHX18_2 = SHX6_2.modelPosition
    SHX18_2 = SHX18_2.y
    SHX17_2 = SHX17_2(SHX18_2)
    SHX18_2 = ", "
    SHX19_2 = tostring
    SHX20_2 = SHX6_2.modelPosition
    SHX20_2 = SHX20_2.z
    SHX19_2 = SHX19_2(SHX20_2)
    SHX20_2 = "), model = `"
    SHX21_2 = SHX6_2.model
    SHX22_2 = "`},\n"
    SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2 .. SHX18_2 .. SHX19_2 .. SHX20_2 .. SHX21_2 .. SHX22_2
    SHX0_2 = SHX7_2
  end
  return SHX0_2
end
SHX19_1 = RMenu
SHX19_1 = SHX19_1.Add
SHX20_1 = "dooreditor"
SHX21_1 = "mainmenu"
SHX22_1 = RageUI
SHX22_1 = SHX22_1.CreateMenu
SHX23_1 = "Door Editor"
SHX24_1 = ""
SHX25_1 = CMG
SHX25_1 = SHX25_1.getRageUIMenuWidth
SHX25_1 = SHX25_1()
SHX26_1 = CMG
SHX26_1 = SHX26_1.getRageUIMenuHeight
SHX26_1 = SHX26_1()
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX19_1 = RageUI
SHX19_1 = SHX19_1.CreateWhile
SHX20_1 = 1.0
SHX21_1 = RMenu
SHX22_1 = SHX21_1
SHX21_1 = SHX21_1.Get
SHX23_1 = "dooreditor"
SHX24_1 = "mainmenu"
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX22_1 = nil
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dooreditor"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "You have edited "
    SHX2_3 = tostring
    SHX3_3 = SHX14_1
    SHX3_3 = #SHX3_3
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = " doors!"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~Add Door"
    SHX2_3 = [[
Adds a door position to the list.
For double doors this will have to be done twice (left hand side & right hand side).

Try stand in the middle of the door when you do this as it will also be the location that the lock icon displays at.]]
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = SHX17_1
        SHX3_4()
        SHX3_4 = Citizen
        SHX3_4 = SHX3_4.Wait
        SHX4_4 = 0
        SHX3_4(SHX4_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.Visible
        SHX4_4 = RMenu
        SHX5_4 = SHX4_4
        SHX4_4 = SHX4_4.Get
        SHX6_4 = "dooreditor"
        SHX7_4 = "mainmenu"
        SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        SHX5_4 = true
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Export Doors"
    SHX2_3 = "Outputs a door list which should be sent to someone who can forward this to a CMG Developer."
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Exported (CTRL+A then CTRL+C)"
        SHX5_4 = SHX18_1
        SHX5_4 = SHX5_4()
        function SHX6_4()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_5, SHX1_5
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~r~Remove All Doors"
    SHX2_3 = "This doesn't have a confirmation button so don't press unless you mean it!"
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
      if SHX2_4 then
        SHX3_4 = {}
        SHX14_1 = SHX3_4
        SHX3_4 = pairs
        SHX4_4 = GetGamePool
        SHX5_4 = "CObject"
        SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX4_4(SHX5_4)
        SHX3_4, SHX4_4, SHX5_4, SHX6_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
        for SHX7_4, SHX8_4 in SHX3_4, SHX4_4, SHX5_4, SHX6_4 do
          SHX9_4 = SetEntityDrawOutline
          SHX10_4 = SHX8_4
          SHX11_4 = false
          SHX9_4(SHX10_4, SHX11_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = pairs
    SHX1_3 = SHX14_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = DrawMarker
      SHX7_3 = 28
      SHX8_3 = SHX5_3.position
      SHX8_3 = SHX8_3.x
      SHX9_3 = SHX5_3.position
      SHX9_3 = SHX9_3.y
      SHX10_3 = SHX5_3.position
      SHX10_3 = SHX10_3.z
      SHX11_3 = 0.0
      SHX12_3 = 0.0
      SHX13_3 = 0.0
      SHX14_3 = 0.0
      SHX15_3 = 0.0
      SHX16_3 = 0.0
      SHX17_3 = 0.25
      SHX18_3 = 0.25
      SHX19_3 = 0.25
      SHX20_3 = 255
      SHX21_3 = 255
      SHX22_3 = 255
      SHX23_3 = 200
      SHX24_3 = false
      SHX25_3 = true
      SHX26_3 = 2
      SHX27_3 = false
      SHX28_3 = nil
      SHX29_3 = nil
      SHX30_3 = false
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX19_1 = AddEventHandler
SHX20_1 = "b51e08118b"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX1_1
    SHX6_2 = SHX6_2[SHX4_2]
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.hasClientPermission
    SHX8_2 = SHX5_2[1]
    SHX7_2 = SHX7_2(SHX8_2)
    SHX6_2[2] = SHX7_2
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = CMG
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    SHX2_2 = SHX3_1
    SHX3_2 = {}
    SHX2_2[SHX0_2] = SHX3_2
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.insert
  SHX3_2 = SHX3_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX19_1.registerCanAccessGangDoorLocation = SHX20_1
