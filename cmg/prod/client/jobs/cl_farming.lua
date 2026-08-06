-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1
SHX0_1 = require
SHX1_1 = "glm"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_farming"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = nil
SHX5_1 = 0
SHX6_1 = nil
SHX7_1 = {}
SHX8_1 = 0
SHX9_1 = false
SHX10_1 = 0
SHX11_1 = 0
SHX12_1 = 0
SHX13_1 = 0
SHX14_1 = {}
SHX15_1 = false
SHX16_1 = {}
SHX17_1 = 0
SHX18_1 = nil
SHX19_1 = nil
SHX20_1 = CMG
SHX20_1 = SHX20_1.registerHudTimerBarProvider
SHX21_1 = "farmingJob"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX18_1
  if SHX1_2 then
    SHX1_2 = SHX0_2.push
    SHX2_2 = SHX18_1
    SHX3_2 = SHX19_1
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "9e07b10346"
function SHX22_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX2_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX4_2 = table
    SHX4_2 = SHX4_2.insert
    SHX5_2 = SHX3_2
    SHX6_2 = {}
    SHX6_2.position = SHX1_2
    SHX6_2.model = SHX2_2
    SHX6_2.isSliding = true
    SHX6_2.nextCheckTime = 0
    SHX6_2.failedCheckAttempts = 0
    SHX4_2(SHX5_2, SHX6_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "c1a89581c1"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX7_2.object
      if SHX8_2 then
        SHX8_2 = SHX7_2.position
        SHX9_2 = SetEntityCoordsNoOffset
        SHX10_2 = SHX7_2.object
        SHX11_2 = SHX8_2.x
        SHX12_2 = SHX8_2.y
        SHX13_2 = SHX8_2.z
        SHX14_2 = true
        SHX15_2 = false
        SHX16_2 = false
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      end
    end
    SHX2_2 = SHX2_1
    SHX2_2[SHX0_2] = nil
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "2ce4151c46"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2.isSliding = false
    SHX7_2.nextCheckTime = 0
    SHX7_2.failedCheckAttempts = 0
  end
  SHX2_2 = SHX2_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX20_1(SHX21_1, SHX22_1)
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "2ce4151c46"
  SHX3_2 = SHX0_2.index
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = SHX0_2.index
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SetEntityCollision
      SHX9_2 = SHX7_2.object
      SHX10_2 = false
      SHX11_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = FreezeEntityPosition
      SHX9_2 = SHX7_2.object
      SHX10_2 = false
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetEntityAsMissionEntity
      SHX9_2 = SHX7_2.object
      SHX10_2 = false
      SHX11_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = SetEntityCleanupByEngine
      SHX9_2 = SHX7_2.object
      SHX10_2 = true
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetEntityAsNoLongerNeeded
      SHX9_2 = SHX7_2.object
      SHX8_2(SHX9_2)
      SHX8_2 = DeleteEntity
      SHX9_2 = SHX7_2.object
      SHX8_2(SHX9_2)
    end
    SHX3_2 = SHX0_2.index
    SHX2_2 = SHX2_1
    SHX2_2[SHX3_2] = nil
  end
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.object
    if not SHX7_2 then
      SHX7_2 = SHX8_1
      SHX8_2 = SHX6_2.nextCheckTime
      if SHX7_2 > SHX8_2 then
        SHX7_2 = GetClosestObjectOfType
        SHX8_2 = SHX6_2.position
        SHX8_2 = SHX8_2.x
        SHX9_2 = SHX6_2.position
        SHX9_2 = SHX9_2.y
        SHX10_2 = SHX6_2.position
        SHX10_2 = SHX10_2.z
        SHX11_2 = 1.5
        SHX12_2 = SHX6_2.model
        SHX13_2 = true
        SHX14_2 = false
        SHX15_2 = false
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        if 0 ~= SHX7_2 then
          SHX8_2 = SetEntityCollision
          SHX9_2 = SHX7_2
          SHX10_2 = false
          SHX11_2 = false
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          SHX8_2 = FreezeEntityPosition
          SHX9_2 = SHX7_2
          SHX10_2 = true
          SHX8_2(SHX9_2, SHX10_2)
          SHX8_2 = SHX6_2.isSliding
          if not SHX8_2 then
            SHX8_2 = GetEntityCoords
            SHX9_2 = SHX7_2
            SHX10_2 = true
            SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
            SHX9_2 = SetEntityCoords
            SHX10_2 = SHX7_2
            SHX11_2 = SHX8_2.x
            SHX12_2 = SHX8_2.y
            SHX13_2 = 0.0
            SHX14_2 = false
            SHX15_2 = false
            SHX16_2 = false
            SHX17_2 = false
            SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
          end
          SHX6_2.object = SHX7_2
          SHX6_2.failedCheckAttempts = 0
        else
          SHX8_2 = SHX6_2.failedCheckAttempts
          if SHX8_2 < 3 then
            SHX9_2 = SHX8_2 + 1
            SHX6_2.failedCheckAttempts = SHX9_2
          end
          SHX9_2 = SHX8_1
          SHX10_2 = math
          SHX10_2 = SHX10_2.random
          SHX11_2 = 1000
          SHX12_2 = SHX8_2 * 1000
          SHX12_2 = 1000 + SHX12_2
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
          SHX9_2 = SHX9_2 + SHX10_2
          SHX6_2.nextCheckTime = SHX9_2
        end
      end
    else
      SHX7_2 = SHX6_2.isSliding
      if SHX7_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2.object
        SHX7_2 = SHX7_2(SHX8_2)
        if not SHX7_2 then
          SHX6_2.object = nil
        else
          SHX7_2 = GetEntityCoords
          SHX8_2 = SHX6_2.object
          SHX9_2 = true
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
          SHX8_2 = SHX7_2.z
          if SHX8_2 > 0.0 then
            SHX8_2 = SetEntityCoords
            SHX9_2 = SHX6_2.object
            SHX10_2 = SHX7_2.x
            SHX11_2 = SHX7_2.y
            SHX12_2 = SHX7_2.z
            SHX13_2 = GetFrameTime
            SHX13_2 = SHX13_2()
            SHX13_2 = -2.5 * SHX13_2
            SHX12_2 = SHX12_2 + SHX13_2
            SHX13_2 = false
            SHX14_2 = false
            SHX15_2 = false
            SHX16_2 = false
            SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          else
            SHX6_2.isSliding = false
          end
        end
      else
        SHX7_2 = SHX8_1
        SHX8_2 = SHX6_2.nextCheckTime
        if SHX7_2 > SHX8_2 then
          SHX7_2 = DoesEntityExist
          SHX8_2 = SHX6_2.object
          SHX7_2 = SHX7_2(SHX8_2)
          if not SHX7_2 then
            SHX6_2.object = nil
          end
          SHX7_2 = SHX8_1
          SHX8_2 = math
          SHX8_2 = SHX8_2.random
          SHX9_2 = 1000
          SHX10_2 = 2000
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
          SHX7_2 = SHX7_2 + SHX8_2
          SHX6_2.nextCheckTime = SHX7_2
        end
      end
    end
  end
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2, SHX2_2 = SHX1_2()
  if 0 == SHX1_2 or not SHX2_2 then
    return
  end
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -2076478498 ~= SHX3_2 then
    return
  end
  SHX4_2 = GetVehicleTrailerVehicle
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  if not SHX4_2 or 0 == SHX5_2 then
    return
  end
  SHX6_2 = SHX4_1
  if not SHX6_2 then
    return
  end
  SHX6_2 = SHX4_1.stage
  if "GROWN" == SHX6_2 then
    SHX6_2 = GetEntityCoords
    SHX7_2 = SHX5_2
    SHX8_2 = true
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = pairs
    SHX8_2 = SHX1_1.fieldObjects
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = GetClosestObjectOfType
      SHX14_2 = SHX6_2.x
      SHX15_2 = SHX6_2.y
      SHX16_2 = SHX6_2.z
      SHX17_2 = 1.5
      SHX18_2 = SHX12_2
      SHX19_2 = true
      SHX20_2 = false
      SHX21_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      if 0 ~= SHX13_2 then
        SHX14_2 = SHX3_1
        SHX14_2 = SHX14_2[SHX13_2]
        if not SHX14_2 then
          SHX14_2 = TriggerServerEvent
          SHX15_2 = "9e07b10346"
          SHX16_2 = SHX0_2.index
          SHX17_2 = GetEntityCoords
          SHX18_2 = SHX13_2
          SHX17_2 = SHX17_2(SHX18_2)
          SHX18_2 = SHX12_2
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
          SHX14_2 = SHX3_1
          SHX14_2[SHX13_2] = true
        end
      end
    end
  else
    SHX6_2 = SHX4_1.stage
    if "HARVESTED" == SHX6_2 then
      SHX6_2 = GetEntityCoords
      SHX7_2 = SHX5_2
      SHX8_2 = true
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = SHX6_2.xy
      SHX7_2 = pairs
      SHX8_2 = SHX14_1
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = SHX12_2.xy
        SHX13_2 = SHX6_2 - SHX13_2
        SHX13_2 = #SHX13_2
        SHX14_2 = 1.5
        if SHX13_2 < SHX14_2 then
          SHX13_2 = table
          SHX13_2 = SHX13_2.remove
          SHX14_2 = SHX14_1
          SHX15_2 = SHX11_2
          SHX13_2(SHX14_2, SHX15_2)
          break
        end
      end
    end
  end
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX2_2 = SHX0_2.index
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX8_1 = SHX2_2
    SHX2_2 = SHX22_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = SHX4_1
    if SHX2_2 then
      SHX2_2 = SHX4_1.fieldIndex
      SHX3_2 = SHX0_2.index
      if SHX2_2 == SHX3_2 then
        SHX2_2 = SHX23_1
        SHX3_2 = SHX0_2
        SHX2_2(SHX3_2)
      end
    end
  end
end
SHX25_1 = pairs
SHX26_1 = SHX1_1.fields
SHX25_1, SHX26_1, SHX27_1, SHX28_1 = SHX25_1(SHX26_1)
for SHX29_1, SHX30_1 in SHX25_1, SHX26_1, SHX27_1, SHX28_1 do
  SHX31_1 = CMG
  SHX31_1 = SHX31_1.createArea
  SHX32_1 = "farming_"
  SHX33_1 = tostring
  SHX34_1 = SHX29_1
  SHX33_1 = SHX33_1(SHX34_1)
  SHX32_1 = SHX32_1 .. SHX33_1
  SHX33_1 = SHX30_1.position
  SHX34_1 = 150.0
  SHX35_1 = 300.0
  SHX36_1 = SHX20_1
  SHX37_1 = SHX21_1
  SHX38_1 = SHX24_1
  SHX39_1 = SHX30_1
  SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
end
SHX25_1 = Citizen
SHX25_1 = SHX25_1.CreateThread
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GlobalState
  SHX0_2 = SHX0_2.registeredFarmingArchetypeDefs
  if not SHX0_2 then
    SHX0_2 = RegisterArchetypes
    function SHX1_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX1_1.archetypeDefs
      return SHX0_3
    end
    SHX0_2(SHX1_2)
    SHX0_2 = GlobalState
    SHX0_2.registeredFarmingArchetypeDefs = true
  end
end
SHX25_1(SHX26_1)
SHX25_1 = CMG
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = false
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Welcome to Farming"
  SHX2_2 = "I have set a waypoint to the Farming Warehouse where you can pick up your tractor."
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = SHX1_1.menuPosition
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX1_1.menuPosition
  SHX2_2 = SHX2_2.y
  SHX0_2(SHX1_2, SHX2_2)
end
SHX25_1.displayFarmerInstructions = SHX26_1
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "farming"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "farming"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX27_1 = CMG
SHX27_1 = SHX27_1.createArea
SHX28_1 = "farming_menu"
SHX29_1 = SHX1_1.menuPosition
SHX30_1 = 1.5
SHX31_1 = 3.0
SHX32_1 = SHX25_1
SHX33_1 = SHX26_1
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX35_1 = {}
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX27_1 = tCMG
SHX27_1 = SHX27_1.addMarker
SHX28_1 = SHX1_1.menuPosition
SHX28_1 = SHX28_1.x
SHX29_1 = SHX1_1.menuPosition
SHX29_1 = SHX29_1.y
SHX30_1 = SHX1_1.menuPosition
SHX30_1 = SHX30_1.z
SHX30_1 = SHX30_1 - 1.0
SHX31_1 = 1.0
SHX32_1 = 1.0
SHX33_1 = 1.0
SHX34_1 = 255
SHX35_1 = 0
SHX36_1 = 0
SHX37_1 = 170
SHX38_1 = 50
SHX39_1 = 27
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX27_1 = CMG
SHX27_1 = SHX27_1.createDynamicPed
SHX28_1 = -1806291497
SHX29_1 = SHX1_1.npcPosition
SHX29_1 = SHX29_1.xyz
SHX30_1 = SHX1_1.npcPosition
SHX30_1 = SHX30_1.w
SHX31_1 = true
SHX32_1 = nil
SHX33_1 = nil
SHX34_1 = 100.0
SHX35_1 = false
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX27_1 = RMenu
SHX27_1 = SHX27_1.Add
SHX28_1 = "farming"
SHX29_1 = "mainmenu"
SHX30_1 = RageUI
SHX30_1 = SHX30_1.CreateMenu
SHX31_1 = "CMG Farming"
SHX32_1 = "~b~CMG Farming"
SHX33_1 = CMG
SHX33_1 = SHX33_1.getRageUIMenuWidth
SHX33_1 = SHX33_1()
SHX34_1 = CMG
SHX34_1 = SHX34_1.getRageUIMenuHeight
SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1 = SHX34_1()
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX27_1 = RMenu
SHX27_1 = SHX27_1.Add
SHX28_1 = "farming"
SHX29_1 = "status"
SHX30_1 = RageUI
SHX30_1 = SHX30_1.CreateSubMenu
SHX31_1 = RMenu
SHX32_1 = SHX31_1
SHX31_1 = SHX31_1.Get
SHX33_1 = "farming"
SHX34_1 = "mainmenu"
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1)
SHX32_1 = "CMG Farming"
SHX33_1 = "~b~CMG Farming"
SHX34_1 = CMG
SHX34_1 = SHX34_1.getRageUIMenuWidth
SHX34_1 = SHX34_1()
SHX35_1 = CMG
SHX35_1 = SHX35_1.getRageUIMenuHeight
SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1 = SHX35_1()
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getAllVehicles
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityCoords
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SHX7_2 - SHX0_2
    SHX7_2 = #SHX7_2
    if SHX7_2 < 5.0 then
      SHX7_2 = false
      return SHX7_2
    end
  end
  SHX1_2 = true
  return SHX1_2
end
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = 0
  SHX2_2 = 100.0
  SHX3_2 = pairs
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getAllVehicles
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = GetEntityModel
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 == SHX0_2 then
      SHX9_2 = GetEntityAttachedTo
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if 0 == SHX9_2 then
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.getPlayerCoords
        SHX9_2 = SHX9_2()
        SHX10_2 = GetEntityCoords
        SHX11_2 = SHX8_2
        SHX12_2 = true
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX9_2 = SHX9_2 - SHX10_2
        SHX9_2 = #SHX9_2
        if SHX2_2 > SHX9_2 then
          SHX1_2 = SHX8_2
          SHX2_2 = SHX9_2
        end
      end
    end
  end
  if 0 ~= SHX1_2 then
    SHX3_2 = GetEntityCoords
    SHX4_2 = SHX1_2
    SHX5_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = SetNewWaypoint
    SHX5_2 = SHX3_2.x
    SHX6_2 = SHX3_2.y
    SHX4_2(SHX5_2, SHX6_2)
  end
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX5_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX7_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = GetEntityModel
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX6_2 = -2076478498 ~= SHX6_2
      SHX7_2 = NetworkHasControlOfEntity
      SHX8_2 = SHX5_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 and SHX6_2 then
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX5_2
        SHX7_2(SHX8_2)
      end
      if SHX6_2 then
        SHX7_2 = GetBlipFromEntity
        SHX8_2 = SHX5_2
        SHX7_2 = SHX7_2(SHX8_2)
        SHX8_2 = DoesBlipExist
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX8_2 = RemoveBlip
          SHX9_2 = SHX7_2
          SHX8_2(SHX9_2)
        end
      end
    end
  end
  SHX0_2 = false
  SHX1_2 = pairs
  SHX2_2 = SHX1_1.tractorSpawnPositions
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX27_1
    SHX8_2 = SHX6_2.xyz
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.requestEntitySpawn
      SHX8_2 = "farming_tractor"
      SHX9_2 = SHX6_2.xyz
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.spawnVehicle
      SHX8_2 = -2076478498
      SHX9_2 = SHX6_2.x
      SHX10_2 = SHX6_2.y
      SHX11_2 = SHX6_2.z
      SHX12_2 = SHX6_2.w
      SHX13_2 = false
      SHX14_2 = true
      SHX15_2 = true
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX7_1
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = AddBlipForEntity
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = SetBlipSprite
      SHX10_2 = SHX8_2
      SHX11_2 = 477
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SetBlipColour
      SHX10_2 = SHX8_2
      SHX11_2 = 5
      SHX9_2(SHX10_2, SHX11_2)
      SHX0_2 = true
      break
    end
  end
  SHX1_2 = false
  SHX2_2 = pairs
  SHX3_2 = SHX1_1.trailerSpawnPositions
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX27_1
    SHX9_2 = SHX7_2.xyz
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = false
      SHX9_2 = SHX4_1
      if SHX9_2 then
        SHX9_2 = SHX4_1.stage
        if "HARVESTED" == SHX9_2 then
          SHX8_2 = true
        end
      end
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.requestEntitySpawn
      SHX10_2 = "farming_trailer"
      SHX11_2 = SHX7_2.xyz
      SHX12_2 = SHX8_2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.spawnVehicle
      if SHX8_2 then
        SHX10_2 = SHX1_1.grainModel
        if SHX10_2 then
          goto SHX_LABEL_137
        end
      end
      SHX10_2 = SHX1_1.rakeModel
      -- [FIX IF ERROR] Move ::SHX_LABEL_137:: outside nested blocks until all 'goto SHX_LABEL_137' can see it
      ::SHX_LABEL_137::
      SHX11_2 = SHX7_2.x
      SHX12_2 = SHX7_2.y
      SHX13_2 = SHX7_2.z
      SHX14_2 = SHX7_2.w
      SHX15_2 = false
      SHX16_2 = true
      SHX17_2 = true
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX10_2 = table
      SHX10_2 = SHX10_2.insert
      SHX11_2 = SHX7_1
      SHX12_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2)
      SHX10_2 = AddBlipForEntity
      SHX11_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = SetBlipSprite
      SHX12_2 = SHX10_2
      SHX13_2 = 479
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = SetBlipColour
      SHX12_2 = SHX10_2
      SHX13_2 = 5
      SHX11_2(SHX12_2, SHX13_2)
      SHX1_2 = true
      break
    end
  end
  if not SHX0_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~Unable to spawn tractor. There is no available space left."
    SHX2_2(SHX3_2)
  end
  if not SHX1_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~Unable to spawn trailer. There is no available space left."
    SHX2_2(SHX3_2)
  end
end
SHX30_1 = {}
SHX30_1.GROWN = "Grown & Ready"
SHX30_1.HARVESTED = "Harvested"
SHX30_1.PLANTED = "Planted"
SHX31_1 = RageUI
SHX31_1 = SHX31_1.CreateWhile
SHX32_1 = 1.0
SHX33_1 = RMenu
SHX34_1 = SHX33_1
SHX33_1 = SHX33_1.Get
SHX35_1 = "farming"
SHX36_1 = "mainmenu"
SHX33_1 = SHX33_1(SHX34_1, SHX35_1, SHX36_1)
SHX34_1 = nil
function SHX35_1()
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
  SHX3_2 = "farming"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = SHX4_1
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~y~Start Job"
      SHX2_3 = ""
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
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "10a03c8ecd"
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = SHX4_1
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Request Equipment"
      SHX2_3 = ""
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
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = GetGameTimer
          SHX3_4 = SHX3_4()
          SHX4_4 = SHX5_1
          SHX3_4 = SHX3_4 - SHX4_4
          SHX4_4 = 12000
          if SHX3_4 < SHX4_4 then
            SHX3_4 = notify
            SHX4_4 = "~r~Please wait another 2 minutes before requesting equipment."
            SHX3_4(SHX4_4)
          else
            SHX3_4 = SHX29_1
            SHX3_4()
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~r~End Job"
      SHX2_3 = ""
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
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "3bea630af8"
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Field Status"
    SHX2_3 = ""
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = nil
        SHX6_1 = SHX3_4
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "46d9e512b2"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "farming"
    SHX9_3 = "status"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "farming"
  SHX4_2 = "status"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    SHX0_3 = SHX6_1
    if SHX0_3 then
      SHX0_3 = pairs
      SHX1_3 = SHX6_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = SHX5_3.farmerName
        if SHX6_3 then
          SHX6_3 = "~y~"
          if SHX6_3 then
            goto SHX_LABEL_15
          end
        end
        SHX6_3 = "~g~"
        -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
        ::SHX_LABEL_15::
        SHX7_3 = SHX5_3.stage
        if "PLANTED" == SHX7_3 then
          SHX6_3 = "~r~"
        end
        SHX7_3 = ""
        SHX8_3 = SHX5_3.farmerName
        if SHX8_3 then
          SHX8_3 = SHX7_3
          SHX9_3 = "Farmer: "
          SHX10_3 = SHX5_3.farmerName
          SHX8_3 = SHX8_3 .. SHX9_3 .. SHX10_3
          SHX7_3 = SHX8_3
        end
        SHX8_3 = SHX5_3.timePlanted
        if SHX8_3 > 0 then
          SHX8_3 = #SHX7_3
          if SHX8_3 > 0 then
            SHX8_3 = SHX7_3
            SHX9_3 = " | "
            SHX8_3 = SHX8_3 .. SHX9_3
            SHX7_3 = SHX8_3
          end
          SHX8_3 = math
          SHX8_3 = SHX8_3.min
          SHX9_3 = 100
          SHX10_3 = math
          SHX10_3 = SHX10_3.ceil
          SHX11_3 = SHX5_3.timeNow
          SHX12_3 = SHX5_3.timePlanted
          SHX11_3 = SHX11_3 - SHX12_3
          SHX12_3 = SHX1_1.growTimeMilliseconds
          SHX11_3 = SHX11_3 / SHX12_3
          SHX11_3 = SHX11_3 * 100.0
          SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX10_3(SHX11_3)
          SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
          SHX9_3 = SHX7_3
          SHX10_3 = string
          SHX10_3 = SHX10_3.format
          SHX11_3 = "%d%% Grown"
          SHX12_3 = SHX8_3
          SHX10_3 = SHX10_3(SHX11_3, SHX12_3)
          SHX9_3 = SHX9_3 .. SHX10_3
          SHX7_3 = SHX9_3
        end
        SHX8_3 = RageUI
        SHX8_3 = SHX8_3.ButtonWithStyle
        SHX9_3 = SHX5_3.fieldName
        SHX10_3 = SHX7_3
        SHX11_3 = {}
        SHX12_3 = SHX6_3
        SHX14_3 = SHX5_3.stage
        SHX13_3 = SHX30_1
        SHX13_3 = SHX13_3[SHX14_3]
        SHX12_3 = SHX12_3 .. SHX13_3
        SHX11_3.RightLabel = SHX12_3
        SHX12_3 = true
        function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
        end
        SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX31_1 = RegisterNetEvent
SHX32_1 = "95c3eb0ca3"
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX6_1 = SHX0_2
end
SHX31_1(SHX32_1, SHX33_1)
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX16_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = StopParticleFxLooped
    SHX7_2 = SHX5_2
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
  end
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX9_1 = SHX0_2
  SHX0_2 = SHX31_1
  SHX0_2()
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX4_1.stage
  if "GROWN" == SHX0_2 then
    SHX0_2 = 0
    SHX10_1 = SHX0_2
    SHX0_2 = 0
    SHX11_1 = SHX0_2
    SHX0_2 = 0
    SHX12_1 = SHX0_2
  else
    SHX0_2 = SHX4_1.stage
    if "HARVESTED" == SHX0_2 then
      SHX0_2 = 0
      SHX13_1 = SHX0_2
      SHX0_2 = {}
      SHX14_1 = SHX0_2
      SHX0_2 = false
      SHX15_1 = SHX0_2
    end
  end
end
SHX33_1 = RegisterNetEvent
SHX34_1 = "8a973949c8"
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX4_1
  if not SHX2_2 then
    SHX2_2 = {}
    SHX4_1 = SHX2_2
  end
  SHX4_1.fieldIndex = SHX0_2
  SHX4_1.stage = SHX1_2
  SHX2_2 = SHX1_1.fields
  SHX2_2 = SHX2_2[SHX0_2]
  SHX4_1.config = SHX2_2
  SHX2_2 = SHX32_1
  SHX2_2()
end
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = RegisterNetEvent
SHX34_1 = "a171c01ded"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = assert
  SHX2_2 = SHX4_1
  SHX3_2 = "Attempting to set farming job stage whilst allocated field is invalid"
  SHX1_2(SHX2_2, SHX3_2)
  SHX4_1.stage = SHX0_2
  SHX1_2 = SHX32_1
  SHX1_2()
end
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = RegisterNetEvent
SHX34_1 = "3bea630af8"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = nil
  SHX4_1 = SHX1_2
  if SHX0_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 5000
    SHX1_2(SHX2_2)
    SHX1_2 = notify
    SHX2_2 = "~g~You have successfully tendered the field. Return to the warehouse to start another shift!"
    SHX1_2(SHX2_2)
  end
end
SHX33_1(SHX34_1, SHX35_1)
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX4_1
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = SHX0_1.translate
  SHX2_2 = SHX0_1.mat4
  SHX3_2 = 1.0
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX4_1.config
  SHX3_2 = SHX3_2.aabbCenter
  SHX3_2 = SHX3_2 - SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SHX0_1.polygon
  SHX2_2 = SHX2_2.contains
  SHX3_2 = SHX4_1.config
  SHX3_2 = SHX3_2.polygons
  SHX4_2 = SHX1_2[4]
  SHX4_2 = SHX4_2.xyz
  SHX5_2 = 100.0
  return SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2
  SHX1_2 = GetVehicleTrailerVehicle
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  if not SHX1_2 or 0 == SHX2_2 then
    SHX3_2 = SHX28_1
    SHX4_2 = SHX1_1.rakeModel
    SHX3_2(SHX4_2)
    SHX3_2 = drawNativeText
    SHX4_2 = "Attach the ~y~rake trailer~w~ to your ~y~tractor~w~"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX1_1.rakeModel
  if SHX3_2 ~= SHX4_2 then
    SHX4_2 = SHX1_1.grainModel
    if SHX3_2 == SHX4_2 then
      SHX4_2 = drawNativeNotification
      SHX5_2 = "You have the grain trailer attached. You need the rake trailer for your field."
      SHX4_2(SHX5_2)
    end
    SHX4_2 = drawNativeText
    SHX5_2 = "Detach your current ~y~trailer~w~ at the ~y~warehouse~w~"
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX33_1
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = SHX4_1
    if SHX5_2 then
      SHX5_2 = drawNativeText
      SHX6_2 = string
      SHX6_2 = SHX6_2.format
      SHX7_2 = "Drive to ~y~%s~w~"
      SHX8_2 = SHX4_1.config
      SHX8_2 = SHX8_2.name
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
      SHX5_2 = SHX4_1.config
      SHX5_2 = SHX5_2.position
      SHX6_2 = GetGroundZFor_3dCoord
      SHX7_2 = SHX5_2.x
      SHX8_2 = SHX5_2.y
      SHX9_2 = SHX5_2.z
      SHX10_2 = nil
      SHX11_2 = false
      SHX6_2, SHX7_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = SHX4_1.config
      SHX8_2 = SHX8_2.aabbCenter
      SHX9_2 = DrawMarker
      SHX10_2 = 1
      SHX11_2 = SHX8_2.x
      SHX12_2 = SHX8_2.y
      SHX13_2 = SHX7_2 or SHX13_2
      if not SHX6_2 or not SHX7_2 then
        SHX13_2 = SHX5_2.z
      end
      SHX13_2 = SHX13_2 - 10.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = 0.0
      SHX20_2 = 15.0
      SHX21_2 = 15.0
      SHX22_2 = 125.0
      SHX23_2 = 255
      SHX24_2 = 255
      SHX25_2 = 0
      SHX26_2 = 125
      SHX27_2 = false
      SHX28_2 = false
      SHX29_2 = 2
      SHX30_2 = false
      SHX31_2 = nil
      SHX32_2 = nil
      SHX33_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
      SHX9_2 = SetNewWaypoint
      SHX10_2 = SHX8_2.x
      SHX11_2 = SHX8_2.y
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = false
      SHX9_1 = SHX9_2
      return
    end
  end
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX11_1
  SHX5_2 = SHX5_2 - SHX6_2
  SHX6_2 = 200
  if SHX5_2 > SHX6_2 then
    SHX5_2 = 0
    SHX10_1 = SHX5_2
    SHX5_2 = pairs
    SHX6_2 = GetGamePool
    SHX7_2 = "CObject"
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2 = SHX6_2(SHX7_2)
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = GetEntityModel
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = table
      SHX12_2 = SHX12_2.find
      SHX13_2 = SHX1_1.fieldObjects
      SHX14_2 = SHX11_2
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      if SHX12_2 then
        SHX12_2 = GetEntityCoords
        SHX13_2 = SHX10_2
        SHX12_2 = SHX12_2(SHX13_2)
        SHX13_2 = SHX12_2.z
        if SHX13_2 > 5.0 then
          SHX13_2 = SHX33_1
          SHX14_2 = SHX12_2
          SHX13_2 = SHX13_2(SHX14_2)
          if SHX13_2 then
            SHX13_2 = SHX10_1
            SHX13_2 = SHX13_2 + 1
            SHX10_1 = SHX13_2
          end
        end
      end
      SHX12_2 = SHX10_1
      if 0 == SHX12_2 then
        SHX12_2 = SHX12_1
        SHX12_2 = SHX12_2 + 1
        SHX12_1 = SHX12_2
      else
        SHX12_2 = 0
        SHX12_1 = SHX12_2
      end
    end
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX11_1 = SHX5_2
  end
  SHX5_2 = SHX12_1
  if SHX5_2 > 50 then
    SHX5_2 = SHX9_1
    if not SHX5_2 then
      SHX5_2 = TriggerServerEvent
      SHX6_2 = "a9707ae981"
      SHX5_2(SHX6_2)
      SHX5_2 = true
      SHX9_1 = SHX5_2
    end
  else
    SHX5_2 = SHX12_1
    if SHX5_2 > 0 then
      SHX5_2 = "~y~REMAINING CROPS"
      SHX18_1 = SHX5_2
      SHX5_2 = "NONE"
      SHX19_1 = SHX5_2
      SHX5_2 = drawNativeText
      SHX6_2 = "Search the remaining ~y~field~w~ for any crops"
      SHX5_2(SHX6_2)
    else
      SHX5_2 = "~y~REMAINING CROPS"
      SHX18_1 = SHX5_2
      SHX5_2 = tostring
      SHX6_2 = SHX10_1
      SHX5_2 = SHX5_2(SHX6_2)
      SHX19_1 = SHX5_2
      SHX5_2 = drawNativeText
      SHX6_2 = "Harvest the remaining ~y~crops~w~ with your tractor"
      SHX5_2(SHX6_2)
    end
  end
end
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2
  SHX1_2 = GetVehicleTrailerVehicle
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  if not SHX1_2 or 0 == SHX2_2 then
    SHX3_2 = SHX28_1
    SHX4_2 = SHX1_1.grainModel
    SHX3_2(SHX4_2)
    SHX3_2 = drawNativeText
    SHX4_2 = "Attach the ~y~grain trailer~w~ to your ~y~tractor~w~"
    SHX3_2(SHX4_2)
    SHX3_2 = SHX31_1
    SHX3_2()
    return
  end
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX1_1.grainModel
  if SHX3_2 ~= SHX4_2 then
    SHX4_2 = SHX1_1.rakeModel
    if SHX3_2 == SHX4_2 then
      SHX4_2 = drawNativeNotification
      SHX5_2 = "You have the rake trailer attached. You need the grain trailer for your field."
      SHX4_2(SHX5_2)
    end
    SHX4_2 = drawNativeText
    SHX5_2 = "Detach your current ~y~trailer~w~ at the ~y~warehouse~w~"
    SHX4_2(SHX5_2)
    SHX4_2 = SHX31_1
    SHX4_2()
    return
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX33_1
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = SHX4_1
    if SHX5_2 then
      SHX5_2 = drawNativeText
      SHX6_2 = string
      SHX6_2 = SHX6_2.format
      SHX7_2 = "Drive to ~y~%s~w~"
      SHX8_2 = SHX4_1.config
      SHX8_2 = SHX8_2.name
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2)
      SHX5_2 = SHX4_1.config
      SHX5_2 = SHX5_2.position
      SHX6_2 = GetGroundZFor_3dCoord
      SHX7_2 = SHX5_2.x
      SHX8_2 = SHX5_2.y
      SHX9_2 = SHX5_2.z
      SHX10_2 = nil
      SHX11_2 = false
      SHX6_2, SHX7_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = SHX4_1.config
      SHX8_2 = SHX8_2.aabbCenter
      SHX9_2 = DrawMarker
      SHX10_2 = 1
      SHX11_2 = SHX8_2.x
      SHX12_2 = SHX8_2.y
      SHX13_2 = SHX7_2 or SHX13_2
      if not SHX6_2 or not SHX7_2 then
        SHX13_2 = SHX5_2.z
      end
      SHX13_2 = SHX13_2 - 10.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = 0.0
      SHX20_2 = 15.0
      SHX21_2 = 15.0
      SHX22_2 = 125.0
      SHX23_2 = 255
      SHX24_2 = 255
      SHX25_2 = 0
      SHX26_2 = 125
      SHX27_2 = false
      SHX28_2 = false
      SHX29_2 = 2
      SHX30_2 = false
      SHX31_2 = nil
      SHX32_2 = nil
      SHX33_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
      SHX9_2 = SetNewWaypoint
      SHX10_2 = SHX8_2.x
      SHX11_2 = SHX8_2.y
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = false
      SHX9_1 = SHX9_2
      SHX9_2 = SHX31_1
      SHX9_2()
      return
    end
  end
  SHX5_2 = SHX15_1
  if not SHX5_2 then
    SHX5_2 = pairs
    SHX6_2 = GetGamePool
    SHX7_2 = "CObject"
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2 = SHX6_2(SHX7_2)
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = GetEntityModel
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = table
      SHX12_2 = SHX12_2.find
      SHX13_2 = SHX1_1.fieldObjects
      SHX14_2 = SHX11_2
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      if SHX12_2 then
        SHX12_2 = GetEntityCoords
        SHX13_2 = SHX10_2
        SHX12_2 = SHX12_2(SHX13_2)
        SHX13_2 = SHX12_2.z
        if SHX13_2 < 5.0 then
          SHX13_2 = SHX33_1
          SHX14_2 = SHX12_2
          SHX13_2 = SHX13_2(SHX14_2)
          if SHX13_2 then
            SHX13_2 = table
            SHX13_2 = SHX13_2.insert
            SHX14_2 = SHX14_1
            SHX15_2 = SHX12_2
            SHX13_2(SHX14_2, SHX15_2)
          end
        end
      end
    end
    SHX5_2 = SHX14_1
    SHX5_2 = #SHX5_2
    SHX13_1 = SHX5_2
    SHX5_2 = true
    SHX15_1 = SHX5_2
  end
  SHX5_2 = SHX14_1
  SHX5_2 = #SHX5_2
  if SHX5_2 >= 5 then
    SHX5_2 = SHX5_2 - 5
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerCoords
  SHX6_2 = SHX6_2()
  SHX7_2 = pairs
  SHX8_2 = SHX14_1
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = SHX14_1
    SHX13_2 = #SHX13_2
    if not (SHX13_2 < 75) then
      SHX13_2 = SHX6_2 - SHX12_2
      SHX13_2 = #SHX13_2
      if not (SHX13_2 < 50.0) then
        goto SHX_LABEL_208
      end
    end
    SHX13_2 = GetGroundZFor_3dCoord
    SHX14_2 = SHX12_2.x
    SHX15_2 = SHX12_2.y
    SHX16_2 = SHX6_2.z
    SHX16_2 = SHX16_2 + 15.0
    SHX17_2 = nil
    SHX18_2 = false
    SHX13_2, SHX14_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = DrawMarker
    SHX16_2 = 0
    SHX17_2 = SHX12_2.x
    SHX18_2 = SHX12_2.y
    SHX19_2 = SHX14_2 or SHX19_2
    if not SHX13_2 or not SHX14_2 then
      SHX19_2 = SHX6_2.z
    end
    SHX20_2 = 0.0
    SHX21_2 = 0.0
    SHX22_2 = 0.0
    SHX23_2 = 0.0
    SHX24_2 = 0.0
    SHX25_2 = 0.0
    SHX26_2 = 0.2
    SHX27_2 = 0.2
    SHX28_2 = 0.2
    SHX29_2 = 255
    SHX30_2 = 255
    SHX31_2 = 0
    SHX32_2 = 155
    SHX33_2 = false
    SHX34_2 = false
    SHX35_2 = 2
    SHX36_2 = false
    SHX37_2 = nil
    SHX38_2 = nil
    SHX39_2 = false
    SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_208:: outside nested blocks until all 'goto SHX_LABEL_208' can see it
    ::SHX_LABEL_208::
  end
  SHX7_2 = SHX16_1
  SHX7_2 = #SHX7_2
  if SHX7_2 < 25 then
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX8_2 = SHX17_1
    SHX7_2 = SHX7_2 - SHX8_2
    SHX8_2 = 250
    if SHX7_2 > SHX8_2 then
      SHX7_2 = GetGameTimer
      SHX7_2 = SHX7_2()
      SHX17_1 = SHX7_2
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.loadPtfx
      SHX8_2 = "core"
      SHX7_2(SHX8_2)
      SHX7_2 = StartParticleFxLoopedOnEntityBone
      SHX8_2 = "ent_amb_fbi_falling_debris"
      SHX9_2 = SHX2_2
      SHX10_2 = 0.0
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = -1
      SHX17_2 = 1.0
      SHX18_2 = false
      SHX19_2 = false
      SHX20_2 = false
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX16_1
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX7_2 = SHX13_1
  SHX7_2 = SHX5_2 / SHX7_2
  SHX8_2 = 1.0
  SHX7_2 = SHX8_2 - SHX7_2
  SHX7_2 = SHX7_2 * 100.0
  SHX8_2 = math
  SHX8_2 = SHX8_2.ceil
  SHX9_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = "~y~AREA PLANTED"
  SHX18_1 = SHX9_2
  SHX9_2 = string
  SHX9_2 = SHX9_2.format
  SHX10_2 = "%s%%"
  SHX11_2 = SHX8_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX19_1 = SHX9_2
  SHX9_2 = drawNativeText
  SHX10_2 = "Drive on the ~y~field~w~ to plant seeds"
  SHX9_2(SHX10_2)
  if SHX8_2 >= 98 then
    SHX9_2 = SHX9_1
    if not SHX9_2 then
      SHX9_2 = TriggerServerEvent
      SHX10_2 = "4f5fc9931b"
      SHX9_2(SHX10_2)
      SHX9_2 = true
      SHX9_1 = SHX9_2
    end
  end
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = nil
  SHX18_1 = SHX0_2
  SHX0_2 = nil
  SHX19_1 = SHX0_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setHudTimerBarProviderActive
    SHX1_2 = "farmingJob"
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 == SHX0_2 or not SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setHudTimerBarProviderActive
    SHX3_2 = "farmingJob"
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = drawNativeText
    SHX3_2 = "Enter the ~y~tractor~w~ or request a new one at the ~y~warehouse~w~"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX4_1.stage
  if "GROWN" == SHX2_2 then
    SHX2_2 = SHX34_1
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX4_1.stage
    if "HARVESTED" == SHX2_2 then
      SHX2_2 = SHX35_1
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    else
      SHX2_2 = SHX4_1.stage
      if "PLANTED" == SHX2_2 then
        SHX2_2 = drawNativeText
        SHX3_2 = "Return to the ~y~warehouse~w~ to drop off your equipment"
        SHX2_2(SHX3_2)
      end
    end
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setHudTimerBarProviderActive
  SHX3_2 = "farmingJob"
  SHX4_2 = SHX18_1
  SHX4_2 = nil ~= SHX4_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX37_1 = CMG
SHX37_1 = SHX37_1.createThreadOnTick
SHX38_1 = SHX36_1
SHX39_1 = "Farming"
SHX37_1(SHX38_1, SHX39_1)
