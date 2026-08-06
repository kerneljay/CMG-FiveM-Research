-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_lscustoms"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "stancer"
SHX3_1 = "mainmenu"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateMenu
SHX5_1 = ""
SHX6_1 = "Stancer"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_lscustomsui"
SHX10_1 = "cmg_lscustomsui"
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1)
SHX1_1 = {}
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX0_2 % 2
  if 0 == SHX2_2 then
    SHX2_2 = -SHX1_2
    return SHX2_2
  else
    return SHX1_2
  end
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX0_2.frontWidth
  if SHX1_2 then
    SHX1_2 = 0
    SHX2_2 = SHX0_2.frontWheelCount
    SHX2_2 = SHX2_2 - 1
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SetVehicleWheelXOffset
      SHX6_2 = SHX0_2.vehicle
      SHX7_2 = SHX4_2
      SHX8_2 = SHX2_1
      SHX9_2 = SHX4_2
      SHX10_2 = SHX0_2.frontWidth
      SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
  SHX1_2 = SHX0_2.rearWidth
  if SHX1_2 then
    SHX1_2 = SHX0_2.frontWheelCount
    SHX2_2 = SHX0_2.wheelCount
    SHX2_2 = SHX2_2 - 1
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SetVehicleWheelXOffset
      SHX6_2 = SHX0_2.vehicle
      SHX7_2 = SHX4_2
      SHX8_2 = SHX2_1
      SHX9_2 = SHX4_2
      SHX10_2 = SHX0_2.rearWidth
      SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
  SHX1_2 = SHX0_2.frontCamber
  if SHX1_2 then
    SHX1_2 = 0
    SHX2_2 = SHX0_2.frontWheelCount
    SHX2_2 = SHX2_2 - 1
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SetVehicleWheelYRotation
      SHX6_2 = SHX0_2.vehicle
      SHX7_2 = SHX4_2
      SHX8_2 = SHX2_1
      SHX9_2 = SHX4_2
      SHX10_2 = SHX0_2.frontCamber
      SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
  SHX1_2 = SHX0_2.rearCamber
  if SHX1_2 then
    SHX1_2 = SHX0_2.frontWheelCount
    SHX2_2 = SHX0_2.wheelCount
    SHX2_2 = SHX2_2 - 1
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SetVehicleWheelYRotation
      SHX6_2 = SHX0_2.vehicle
      SHX7_2 = SHX4_2
      SHX8_2 = SHX2_1
      SHX9_2 = SHX4_2
      SHX10_2 = SHX0_2.rearCamber
      SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2 / 2
  SHX2_2 = SHX1_2 % 2
  if 0 ~= SHX2_2 then
    SHX1_2 = SHX1_2 - 1
  end
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX1_2
  return SHX2_2(SHX3_2)
end
SHX5_1 = AddStateBagChangeHandler
SHX6_1 = "stancer"
SHX7_1 = nil
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = 0
  while true do
    if SHX4_2 > 25 then
      return
    elseif SHX3_2 then
      SHX5_2 = NetworkDoesEntityExistWithNetworkId
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = NetworkGetEntityFromNetworkId
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 0 ~= SHX5_2 then
          SHX6_2 = GetVehicleNumberOfWheels
          SHX7_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2)
          if SHX6_2 < 32 then
            SHX2_2.vehicle = SHX5_2
            SHX2_2.wheelCount = SHX6_2
            SHX7_2 = SHX4_1
            SHX8_2 = SHX2_2.wheelCount
            SHX7_2 = SHX7_2(SHX8_2)
            SHX2_2.frontWheelCount = SHX7_2
            SHX7_2 = SHX1_1
            SHX7_2[SHX5_2] = SHX2_2
            break
          end
        end
      end
    end
    SHX4_2 = SHX4_2 + 1
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 200
    SHX5_2(SHX6_2)
  end
end
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX5_1 = Citizen
SHX5_1 = SHX5_1.CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = false
    SHX1_2 = pairs
    SHX2_2 = SHX1_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX5_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = SHX3_1
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
      else
        SHX7_2 = SHX1_1
        SHX7_2[SHX5_2] = nil
      end
      SHX0_2 = true
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    if SHX0_2 then
      SHX2_2 = 0
      if SHX2_2 then
        goto SHX_LABEL_29
      end
    end
    SHX2_2 = 1000
    -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
    ::SHX_LABEL_29::
    SHX1_2(SHX2_2)
  end
end
SHX5_1(SHX6_1)
SHX5_1 = {}
SHX6_1 = 0.0
SHX7_1 = 0
SHX8_1 = {}
SHX9_1 = 0.0
SHX10_1 = 0
SHX11_1 = {}
SHX12_1 = 0.0
SHX13_1 = 0
SHX14_1 = {}
SHX15_1 = 0.0
SHX16_1 = 0
SHX17_1 = nil
SHX18_1 = 0
SHX19_1 = 0
SHX20_1 = 10
SHX21_1 = math
SHX21_1 = SHX21_1.ceil
SHX22_1 = SHX20_1 * 2
SHX22_1 = SHX22_1 + 1
SHX22_1 = SHX22_1 / 2
SHX21_1 = SHX21_1(SHX22_1)
SHX22_1 = nil
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX0_2 then
    SHX2_2 = SHX0_2[SHX1_2]
    if SHX2_2 then
      SHX2_2 = pairs
      SHX3_2 = SHX0_2[SHX1_2]
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        if SHX7_2 then
          SHX8_2 = tonumber
          SHX9_2 = SHX6_2
          SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
          return SHX8_2, SHX9_2
        end
      end
    end
  end
  SHX2_2 = SHX21_1
  return SHX2_2
end
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = {}
  SHX3_2 = -SHX0_2
  SHX4_2 = SHX0_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX2_2
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "%.3f"
    SHX11_2 = SHX1_2 * SHX6_2
    SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  end
  return SHX2_2
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.abs
  SHX2_2 = GetVehicleWheelXOffset
  SHX3_2 = SHX0_2
  SHX4_2 = 0
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX6_1 = SHX1_2
  SHX1_2 = SHX0_1.stancerLimits
  SHX1_2 = SHX1_2.frontWidth
  SHX2_2 = SHX20_1
  SHX1_2 = SHX1_2 / SHX2_2
  SHX2_2 = SHX24_1
  SHX3_2 = SHX20_1
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX5_1 = SHX2_2
end
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.abs
  SHX3_2 = GetVehicleWheelXOffset
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX9_1 = SHX2_2
  SHX2_2 = SHX0_1.stancerLimits
  SHX2_2 = SHX2_2.rearWidth
  SHX3_2 = SHX20_1
  SHX2_2 = SHX2_2 / SHX3_2
  SHX3_2 = SHX24_1
  SHX4_2 = SHX20_1
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX8_1 = SHX3_2
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.abs
  SHX2_2 = GetVehicleWheelYRotation
  SHX3_2 = SHX0_2
  SHX4_2 = 0
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX12_1 = SHX1_2
  SHX1_2 = SHX0_1.stancerLimits
  SHX1_2 = SHX1_2.frontCamber
  SHX2_2 = SHX20_1
  SHX1_2 = SHX1_2 / SHX2_2
  SHX2_2 = SHX24_1
  SHX3_2 = SHX20_1
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX11_1 = SHX2_2
end
function SHX28_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.abs
  SHX3_2 = GetVehicleWheelYRotation
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX15_1 = SHX2_2
  SHX2_2 = SHX0_1.stancerLimits
  SHX2_2 = SHX2_2.rearCamber
  SHX3_2 = SHX20_1
  SHX2_2 = SHX2_2 / SHX3_2
  SHX3_2 = SHX24_1
  SHX4_2 = SHX20_1
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX14_1 = SHX3_2
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = GetEntityModel
  SHX1_2 = SHX18_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = CreateVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = GetVehicleNumberOfWheels
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 32 then
    SHX3_2 = print
    SHX4_2 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in generateStancerLists"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = SHX25_1
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX26_1
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2 - 1
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX27_1
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX28_1
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2 - 1
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = DeleteEntity
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = GetVehicleNumberOfWheels
  SHX1_2 = SHX18_1
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 > 32 then
    SHX1_2 = print
    SHX2_2 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in previewWheelCamber"
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = SHX3_1
  SHX2_2 = {}
  SHX3_2 = SHX18_1
  SHX2_2.vehicle = SHX3_2
  SHX2_2.wheelCount = SHX0_2
  SHX3_2 = SHX4_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2.frontWheelCount = SHX3_2
  SHX3_2 = SHX6_1
  SHX4_2 = tonumber
  SHX6_2 = SHX7_1
  SHX5_2 = SHX5_1
  SHX5_2 = SHX5_2[SHX6_2]
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 + SHX4_2
  SHX2_2.frontWidth = SHX3_2
  SHX3_2 = SHX9_1
  SHX4_2 = tonumber
  SHX6_2 = SHX10_1
  SHX5_2 = SHX8_1
  SHX5_2 = SHX5_2[SHX6_2]
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 + SHX4_2
  SHX2_2.rearWidth = SHX3_2
  SHX3_2 = SHX12_1
  SHX4_2 = tonumber
  SHX6_2 = SHX13_1
  SHX5_2 = SHX11_1
  SHX5_2 = SHX5_2[SHX6_2]
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 + SHX4_2
  SHX2_2.frontCamber = SHX3_2
  SHX3_2 = SHX15_1
  SHX4_2 = tonumber
  SHX6_2 = SHX16_1
  SHX5_2 = SHX14_1
  SHX5_2 = SHX5_2[SHX6_2]
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 + SHX4_2
  SHX2_2.rearCamber = SHX3_2
  SHX1_2(SHX2_2)
end
SHX31_1 = AddEventHandler
SHX32_1 = "e3500806d7"
function SHX33_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if "stancer" ~= SHX0_2 then
    return
  end
  SHX18_1 = SHX1_2
  SHX19_1 = SHX2_2
  SHX17_1 = SHX3_2
  SHX22_1 = SHX4_2
  SHX5_2 = SHX17_1.stancer
  SHX6_2 = SHX23_1
  SHX7_2 = SHX5_2
  SHX8_2 = "frontWidth"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_1 = SHX6_2
  SHX6_2 = SHX23_1
  SHX7_2 = SHX5_2
  SHX8_2 = "rearWidth"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX10_1 = SHX6_2
  SHX6_2 = SHX23_1
  SHX7_2 = SHX5_2
  SHX8_2 = "frontCamber"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX13_1 = SHX6_2
  SHX6_2 = SHX23_1
  SHX7_2 = SHX5_2
  SHX8_2 = "rearCamber"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX16_1 = SHX6_2
  SHX6_2 = SHX29_1
  SHX6_2()
end
SHX31_1(SHX32_1, SHX33_1)
SHX31_1 = RegisterNetEvent
SHX32_1 = "6b3c48e86c"
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX17_1
  if SHX2_2 then
    SHX2_2 = SHX17_1
    SHX2_2[SHX0_2] = SHX1_2
  end
end
SHX31_1(SHX32_1, SHX33_1)
function SHX31_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = SHX17_1
  if SHX2_2 then
    SHX2_2 = SHX17_1.stancer
    if SHX2_2 then
      goto SHX_LABEL_8
    end
  end
  SHX2_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  if SHX2_2 then
    SHX3_2 = SHX2_2[SHX0_2]
    if SHX3_2 then
      SHX3_2 = table
      SHX3_2 = SHX3_2.count
      SHX4_2 = SHX2_2[SHX0_2]
      SHX3_2 = SHX3_2(SHX4_2)
      if 0 ~= SHX3_2 then
        goto SHX_LABEL_37
      end
    end
  end
  SHX3_2 = {}
  SHX4_2 = "\194\163"
  SHX5_2 = getMoneyStringFormatted
  SHX6_2 = SHX0_1.stancerPrices
  SHX6_2 = SHX6_2[SHX0_2]
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.ButtonWithStyle
  SHX5_2 = SHX1_2
  SHX6_2 = nil
  SHX7_2 = SHX3_2
  SHX8_2 = true
  function SHX9_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "0ed46fc187"
      SHX5_3 = SHX19_1
      SHX6_3 = SHX0_2
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  goto SHX_LABEL_39
  -- [FIX IF ERROR] Move ::SHX_LABEL_37:: outside nested blocks until all 'goto SHX_LABEL_37' can see it
  ::SHX_LABEL_37::
  SHX3_2 = true
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
  ::SHX_LABEL_39::
end
SHX32_1 = RageUI
SHX32_1 = SHX32_1.CreateWhile
SHX33_1 = 1.0
SHX34_1 = RMenu
SHX35_1 = SHX34_1
SHX34_1 = SHX34_1.Get
SHX36_1 = "stancer"
SHX37_1 = "mainmenu"
SHX34_1 = SHX34_1(SHX35_1, SHX36_1, SHX37_1)
SHX35_1 = nil
function SHX36_1()
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
  SHX3_2 = "stancer"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.BackspaceMenuCallback
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
      SHX0_4 = SHX22_1
      if SHX0_4 then
        SHX0_4 = RageUI
        SHX0_4 = SHX0_4.Visible
        SHX1_4 = RMenu
        SHX2_4 = SHX1_4
        SHX1_4 = SHX1_4.Get
        SHX3_4 = SHX22_1
        SHX3_4 = SHX3_4[1]
        SHX4_4 = SHX22_1
        SHX4_4 = SHX4_4[2]
        SHX1_4 = SHX1_4(SHX2_4, SHX3_4, SHX4_4)
        SHX2_4 = true
        SHX0_4(SHX1_4, SHX2_4)
      end
    end
    SHX0_3(SHX1_3)
    SHX0_3 = SHX30_1
    SHX0_3()
    SHX0_3 = SHX31_1
    SHX1_3 = "frontWidth"
    SHX2_3 = "Front Track Width"
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Front Track Width"
      SHX2_3 = SHX5_1
      SHX3_3 = SHX7_1
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        SHX4_4 = SHX7_1
        if SHX3_4 ~= SHX4_4 then
          SHX7_1 = SHX3_4
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "575d62fb6a"
          SHX6_4 = SHX19_1
          SHX7_4 = "frontWidth"
          SHX8_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
    SHX0_3 = SHX31_1
    SHX1_3 = "rearWidth"
    SHX2_3 = "Rear Track Width"
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Rear Track Width"
      SHX2_3 = SHX8_1
      SHX3_3 = SHX10_1
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        SHX4_4 = SHX10_1
        if SHX3_4 ~= SHX4_4 then
          SHX10_1 = SHX3_4
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "575d62fb6a"
          SHX6_4 = SHX19_1
          SHX7_4 = "rearWidth"
          SHX8_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
    SHX0_3 = SHX31_1
    SHX1_3 = "frontCamber"
    SHX2_3 = "Front Camber"
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Front Camber"
      SHX2_3 = SHX11_1
      SHX3_3 = SHX13_1
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        SHX4_4 = SHX13_1
        if SHX3_4 ~= SHX4_4 then
          SHX13_1 = SHX3_4
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "575d62fb6a"
          SHX6_4 = SHX19_1
          SHX7_4 = "frontCamber"
          SHX8_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
    SHX0_3 = SHX31_1
    SHX1_3 = "rearCamber"
    SHX2_3 = "Rear Camber"
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Rear Camber"
      SHX2_3 = SHX14_1
      SHX3_3 = SHX16_1
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        SHX4_4 = SHX16_1
        if SHX3_4 ~= SHX4_4 then
          SHX16_1 = SHX3_4
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "575d62fb6a"
          SHX6_4 = SHX19_1
          SHX7_4 = "rearCamber"
          SHX8_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1)
function SHX32_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = {}
  SHX3_2 = -SHX0_2
  SHX4_2 = SHX0_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX2_2
    SHX9_2 = SHX1_2 * SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  return SHX2_2
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.stancerLimits
  SHX0_2 = SHX0_2.frontWidth
  SHX1_2 = SHX20_1
  SHX0_2 = SHX0_2 / SHX1_2
  SHX1_2 = SHX32_1
  SHX2_2 = SHX20_1
  SHX3_2 = SHX0_2
  return SHX1_2(SHX2_2, SHX3_2)
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.stancerLimits
  SHX0_2 = SHX0_2.rearWidth
  SHX1_2 = SHX20_1
  SHX0_2 = SHX0_2 / SHX1_2
  SHX1_2 = SHX32_1
  SHX2_2 = SHX20_1
  SHX3_2 = SHX0_2
  return SHX1_2(SHX2_2, SHX3_2)
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.stancerLimits
  SHX0_2 = SHX0_2.frontCamber
  SHX1_2 = SHX20_1
  SHX0_2 = SHX0_2 / SHX1_2
  SHX1_2 = SHX32_1
  SHX2_2 = SHX20_1
  SHX3_2 = SHX0_2
  return SHX1_2(SHX2_2, SHX3_2)
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.stancerLimits
  SHX0_2 = SHX0_2.rearCamber
  SHX1_2 = SHX20_1
  SHX0_2 = SHX0_2 / SHX1_2
  SHX1_2 = SHX32_1
  SHX2_2 = SHX20_1
  SHX3_2 = SHX0_2
  return SHX1_2(SHX2_2, SHX3_2)
end
SHX37_1 = CMG
function SHX38_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = {}
  SHX3_2 = GetVehicleNumberOfWheels
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 > 32 then
    SHX4_2 = print
    SHX5_2 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in setVehicleIdStancer"
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = GetVehicleWheelXOffset
  SHX5_2 = SHX0_2
  SHX6_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = GetVehicleWheelXOffset
  SHX6_2 = SHX0_2
  SHX7_2 = SHX3_2 - 1
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = GetVehicleWheelYRotation
  SHX7_2 = SHX0_2
  SHX8_2 = 0
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = GetVehicleWheelYRotation
  SHX8_2 = SHX0_2
  SHX9_2 = SHX3_2 - 1
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = Entity
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX8_2 = SHX8_2.state
  SHX8_2 = SHX8_2.stancer
  if SHX8_2 then
    SHX18_1 = SHX0_2
    SHX8_2 = SHX29_1
    SHX8_2()
    SHX4_2 = SHX6_1
    SHX5_2 = SHX9_1
    SHX6_2 = SHX12_1
    SHX7_2 = SHX15_1
  end
  SHX8_2 = SHX23_1
  SHX9_2 = SHX1_2
  SHX10_2 = "frontWidth"
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SHX21_1
  if SHX8_2 ~= SHX9_2 then
    SHX9_2 = math
    SHX9_2 = SHX9_2.abs
    SHX10_2 = SHX4_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = SHX33_1
    SHX10_2 = SHX10_2()
    SHX10_2 = SHX10_2[SHX8_2]
    SHX9_2 = SHX9_2 + SHX10_2
    SHX2_2.frontWidth = SHX9_2
  end
  SHX9_2 = SHX23_1
  SHX10_2 = SHX1_2
  SHX11_2 = "rearWidth"
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = SHX21_1
  if SHX9_2 ~= SHX10_2 then
    SHX10_2 = math
    SHX10_2 = SHX10_2.abs
    SHX11_2 = SHX5_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX11_2 = SHX34_1
    SHX11_2 = SHX11_2()
    SHX11_2 = SHX11_2[SHX9_2]
    SHX10_2 = SHX10_2 + SHX11_2
    SHX2_2.rearWidth = SHX10_2
  end
  SHX10_2 = SHX23_1
  SHX11_2 = SHX1_2
  SHX12_2 = "frontCamber"
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX11_2 = SHX21_1
  if SHX10_2 ~= SHX11_2 then
    SHX11_2 = math
    SHX11_2 = SHX11_2.abs
    SHX12_2 = SHX6_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = SHX35_1
    SHX12_2 = SHX12_2()
    SHX12_2 = SHX12_2[SHX10_2]
    SHX11_2 = SHX11_2 + SHX12_2
    SHX2_2.frontCamber = SHX11_2
  end
  SHX11_2 = SHX23_1
  SHX12_2 = SHX1_2
  SHX13_2 = "rearCamber"
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = SHX21_1
  if SHX11_2 ~= SHX12_2 then
    SHX12_2 = math
    SHX12_2 = SHX12_2.abs
    SHX13_2 = SHX7_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = SHX36_1
    SHX13_2 = SHX13_2()
    SHX13_2 = SHX13_2[SHX11_2]
    SHX12_2 = SHX12_2 + SHX13_2
    SHX2_2.rearCamber = SHX12_2
  end
  SHX12_2 = false
  SHX13_2 = NetworkGetEntityIsNetworked
  SHX14_2 = SHX0_2
  SHX13_2 = SHX13_2(SHX14_2)
  if SHX13_2 then
    SHX13_2 = NetworkGetNetworkIdFromEntity
    SHX14_2 = SHX0_2
    SHX13_2 = SHX13_2(SHX14_2)
    if 0 ~= SHX13_2 then
      goto SHX_LABEL_124
    end
  end
  SHX12_2 = true
  -- [FIX IF ERROR] Move ::SHX_LABEL_124:: outside nested blocks until all 'goto SHX_LABEL_124' can see it
  ::SHX_LABEL_124::
  SHX13_2 = Citizen
  SHX13_2 = SHX13_2.CreateThread
  function SHX14_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.Wait
    SHX1_3 = SHX12_2
    if SHX1_3 then
      SHX1_3 = 2500
      if SHX1_3 then
        goto SHX_LABEL_10
      end
    end
    SHX1_3 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
    ::SHX_LABEL_10::
    SHX0_3(SHX1_3)
    SHX0_3 = NetworkGetNetworkIdFromEntity
    SHX1_3 = SHX0_2
    SHX0_3 = SHX0_3(SHX1_3)
    SHX1_3 = TriggerServerEvent
    SHX2_3 = "9805295c4f"
    SHX3_3 = SHX0_3
    SHX4_3 = SHX2_2
    SHX1_3(SHX2_3, SHX3_3, SHX4_3)
  end
  SHX13_2(SHX14_2)
end
SHX37_1.setVehicleIdStancer = SHX38_1
