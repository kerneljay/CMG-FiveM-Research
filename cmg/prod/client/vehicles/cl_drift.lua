-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = 255
SHX3_1 = 25
SHX4_1 = 25
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX0_1[2] = SHX1_1
SHX1_1 = {}
SHX2_1 = 255
SHX3_1 = 179
SHX4_1 = 25
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX0_1[3] = SHX1_1
SHX1_1 = {}
SHX2_1 = 255
SHX3_1 = 255
SHX4_1 = 25
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX0_1[4] = SHX1_1
SHX1_1 = {}
SHX2_1 = 102
SHX3_1 = 255
SHX4_1 = 25
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX0_1[5] = SHX1_1
SHX1_1 = {}
SHX2_1 = 25
SHX3_1 = 25
SHX4_1 = 255
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX0_1[6] = SHX1_1
SHX1_1 = {}
SHX2_1 = 179
SHX3_1 = 25
SHX4_1 = 255
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX0_1[7] = SHX1_1
SHX1_1 = {}
SHX2_1 = 255
SHX3_1 = 25
SHX4_1 = 255
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX0_1[8] = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = false
SHX4_1 = false
SHX5_1 = false
SHX6_1 = CMG
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_2["1"]
  if SHX2_2 then
    SHX2_2 = SHX1_1
    SHX2_2[SHX0_2] = true
  end
end
SHX6_1.setVehicleIdDriftSuspension = SHX7_1
SHX6_1 = CMG
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  if SHX1_2 >= 2 then
    SHX2_2 = SHX2_1
    SHX2_2[SHX0_2] = SHX1_2
  end
end
SHX6_1.setVehicleIdDriftSmoke = SHX7_1
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = 2
  SHX3_2 = SHX3_2 ^ SHX1_2
  SHX3_2 = SHX0_2 / SHX3_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 % 2
  SHX2_2 = 1 == SHX2_2
  return SHX2_2
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX3_1
  if not SHX1_2 then
    SHX1_2 = drawNativeNotification
    SHX2_2 = "Press ~INPUT_SPECIAL_ABILITY_SECONDARY~ to toggle drift mode."
    SHX1_2(SHX2_2)
    SHX1_2 = true
    SHX3_1 = SHX1_2
    SHX1_2 = false
    SHX4_1 = SHX1_2
  end
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 29
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = GetVehicleHandlingInt
    SHX2_2 = SHX0_2
    SHX3_2 = "CCarHandlingData"
    SHX4_2 = "strAdvancedFlags"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    if 0 ~= SHX1_2 then
      SHX2_2 = SHX6_1
      SHX3_2 = SHX1_2
      SHX4_2 = 15
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = SHX6_1
        SHX3_2 = SHX1_2
        SHX4_2 = 26
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if SHX2_2 then
          SHX2_2 = SHX4_1
          SHX2_2 = not SHX2_2
          SHX4_1 = SHX2_2
          SHX2_2 = drawNativeText
          SHX3_2 = string
          SHX3_2 = SHX3_2.format
          SHX4_2 = "Drift mode ~y~%s~w~."
          SHX5_2 = SHX4_1
          if SHX5_2 then
            SHX5_2 = "enabled"
            if SHX5_2 then
              goto SHX_LABEL_50
            end
          end
          SHX5_2 = "disabled"
          -- [FIX IF ERROR] Move ::SHX_LABEL_50:: outside nested blocks until all 'goto SHX_LABEL_50' can see it
          ::SHX_LABEL_50::
          SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
          SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX2_2 = SetDriftTyresEnabled
          SHX3_2 = SHX0_2
          SHX4_2 = SHX4_1
          SHX2_2(SHX3_2, SHX4_2)
          SHX2_2 = SetReduceDriftVehicleSuspension
          SHX3_2 = SHX0_2
          SHX4_2 = SHX4_1
          SHX2_2(SHX3_2, SHX4_2)
        end
      end
    end
  end
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetEntityVelocity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.sqrt
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.x
  SHX3_2 = SHX3_2 * SHX4_2
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.y
  SHX4_2 = SHX4_2 * SHX5_2
  SHX3_2 = SHX3_2 + SHX4_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetEntityRotation
  SHX4_2 = SHX0_2
  SHX5_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = math
  SHX5_2 = SHX5_2.rad
  SHX6_2 = SHX3_2.z
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = -SHX4_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.cos
  SHX6_2 = math
  SHX6_2 = SHX6_2.rad
  SHX7_2 = SHX3_2.z
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = GetEntitySpeed
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = SHX6_2 * 3.6
  if not (SHX6_2 < 5.0) then
    SHX6_2 = GetVehicleCurrentGear
    SHX7_2 = SHX0_2
    SHX6_2 = SHX6_2(SHX7_2)
    if 0 ~= SHX6_2 then
      goto SHX_LABEL_51
    end
  end
  SHX6_2 = 0
  SHX7_2 = SHX2_2
  return SHX6_2, SHX7_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
  ::SHX_LABEL_51::
  SHX6_2 = SHX1_2.x
  SHX6_2 = SHX4_2 * SHX6_2
  SHX7_2 = SHX1_2.y
  SHX7_2 = SHX5_2 * SHX7_2
  SHX6_2 = SHX6_2 + SHX7_2
  SHX6_2 = SHX6_2 / SHX2_2
  SHX7_2 = 0.966
  if SHX6_2 > SHX7_2 or SHX6_2 < 0.0 then
    SHX7_2 = 0
    SHX8_2 = SHX2_2
    return SHX7_2, SHX8_2
  end
  SHX7_2 = math
  SHX7_2 = SHX7_2.deg
  SHX8_2 = math
  SHX8_2 = SHX8_2.acos
  SHX9_2 = SHX6_2
  SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SHX7_2 * 0.5
  SHX8_2 = SHX2_2
  return SHX7_2, SHX8_2
end
function SHX9_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX6_2 = true
  SHX5_1 = SHX6_2
  SHX6_2 = {}
  SHX7_2 = SHX0_1
  SHX7_2 = SHX7_2[SHX5_2]
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadPtfx
  SHX9_2 = SHX0_2
  SHX8_2(SHX9_2)
  SHX8_2 = 1
  SHX9_2 = SHX3_2
  SHX10_2 = 1
  for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
    SHX12_2 = UseParticleFxAsset
    SHX13_2 = SHX0_2
    SHX12_2(SHX13_2)
    SHX12_2 = StartParticleFxLoopedOnEntityBone
    SHX13_2 = SHX1_2
    SHX14_2 = SHX2_2
    SHX15_2 = 0.05
    SHX16_2 = 0
    SHX17_2 = 0
    SHX18_2 = 0
    SHX19_2 = 0
    SHX20_2 = 0
    SHX21_2 = GetEntityBoneIndexByName
    SHX22_2 = SHX2_2
    SHX23_2 = "wheel_lr"
    SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
    SHX22_2 = SHX4_2
    SHX23_2 = false
    SHX24_2 = false
    SHX25_2 = false
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    if SHX7_2 then
      SHX13_2 = SetParticleFxLoopedColour
      SHX14_2 = SHX12_2
      SHX15_2 = SHX7_2[1]
      SHX15_2 = SHX15_2 / 255
      SHX16_2 = SHX7_2[2]
      SHX16_2 = SHX16_2 / 255
      SHX17_2 = SHX7_2[3]
      SHX17_2 = SHX17_2 / 255
      SHX18_2 = false
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
    SHX13_2 = UseParticleFxAsset
    SHX14_2 = SHX0_2
    SHX13_2(SHX14_2)
    SHX13_2 = StartParticleFxLoopedOnEntityBone
    SHX14_2 = SHX1_2
    SHX15_2 = SHX2_2
    SHX16_2 = 0.05
    SHX17_2 = 0
    SHX18_2 = 0
    SHX19_2 = 0
    SHX20_2 = 0
    SHX21_2 = 0
    SHX22_2 = GetEntityBoneIndexByName
    SHX23_2 = SHX2_2
    SHX24_2 = "wheel_rr"
    SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
    SHX23_2 = SHX4_2
    SHX24_2 = false
    SHX25_2 = false
    SHX26_2 = false
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    if SHX7_2 then
      SHX14_2 = SetParticleFxLoopedColour
      SHX15_2 = SHX13_2
      SHX16_2 = SHX7_2[1]
      SHX16_2 = SHX16_2 / 255
      SHX17_2 = SHX7_2[2]
      SHX17_2 = SHX17_2 / 255
      SHX18_2 = SHX7_2[3]
      SHX18_2 = SHX18_2 / 255
      SHX19_2 = false
      SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
    SHX14_2 = table
    SHX14_2 = SHX14_2.insert
    SHX15_2 = SHX6_2
    SHX16_2 = SHX12_2
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = table
    SHX14_2 = SHX14_2.insert
    SHX15_2 = SHX6_2
    SHX16_2 = SHX13_2
    SHX14_2(SHX15_2, SHX16_2)
  end
  SHX8_2 = RemoveNamedPtfxAsset
  SHX9_2 = SHX0_2
  SHX8_2(SHX9_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.CreateThread
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.Wait
    SHX1_3 = 3000
    SHX0_3(SHX1_3)
    SHX0_3 = pairs
    SHX1_3 = SHX6_2
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = StopParticleFxLooped
      SHX7_3 = SHX5_3
      SHX8_3 = true
      SHX6_3(SHX7_3, SHX8_3)
    end
    SHX0_3 = false
    SHX5_1 = SHX0_3
  end
  SHX8_2(SHX9_2)
end
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX8_1
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  if SHX3_2 > 3.0 and 0 ~= SHX2_2 then
    SHX4_2 = SHX9_1
    SHX5_2 = "scr_recartheft"
    SHX6_2 = "scr_wheel_burnout"
    SHX7_2 = SHX0_2
    SHX8_2 = 10
    SHX9_2 = 0.2
    SHX10_2 = SHX1_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  elseif SHX3_2 < 1.0 then
    SHX4_2 = IsVehicleInBurnout
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = SHX9_1
      SHX5_2 = "core"
      SHX6_2 = "exp_grd_bzgas_smoke"
      SHX7_2 = SHX0_2
      SHX8_2 = 3
      SHX9_2 = 1.5
      SHX10_2 = 0
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.getVehicleInfos
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = DecorGetInt
  SHX3_2 = SHX0_2
  SHX4_2 = "0a6cf607ed"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getClientUserId
  SHX3_2 = SHX3_2()
  if SHX3_2 ~= SHX1_2 or SHX2_2 <= 0 then
    return
  end
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = SHX7_1
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SHX2_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = SHX5_1
    if not SHX3_2 then
      SHX3_2 = SHX10_1
      SHX4_2 = SHX0_2
      SHX5_2 = SHX2_1
      SHX5_2 = SHX5_2[SHX2_2]
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 ~= SHX0_2 and SHX1_2 then
    SHX2_2 = SHX11_1
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  else
    SHX2_2 = false
    SHX3_1 = SHX2_2
  end
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createThreadOnTick
SHX14_1 = SHX12_1
SHX15_1 = "Vehicle Drift"
SHX13_1(SHX14_1, SHX15_1)
