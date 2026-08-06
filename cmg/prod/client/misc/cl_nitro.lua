-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = false
SHX3_1 = nil
SHX4_1 = false
SHX5_1 = 219
SHX6_1 = 105
SHX7_1 = 97
SHX8_1 = 255
SHX9_1 = 4
SHX10_1 = 0.5
SHX11_1 = 0.9
SHX12_1 = 0.92
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = GetPedInVehicleSeat
    SHX3_2 = SHX1_2
    SHX4_2 = -1
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 == SHX0_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.getVehicleInfos
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = DecorGetInt
      SHX4_2 = SHX1_2
      SHX5_2 = "0a6cf607ed"
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getClientUserId
      SHX4_2 = SHX4_2()
      if SHX2_2 == SHX4_2 and SHX3_2 > 0 then
        SHX4_2 = SHX0_1
        SHX4_2 = SHX4_2[SHX3_2]
        if SHX4_2 then
          SHX4_2 = SHX2_1
          if not SHX4_2 then
            SHX4_2 = SHX0_1
            SHX4_2 = SHX4_2[SHX3_2]
            SHX3_1 = SHX3_2
            SHX5_2 = true
            SHX2_1 = SHX5_2
            SHX5_2 = Citizen
            SHX5_2 = SHX5_2.CreateThread
            function SHX6_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
              while true do
                SHX0_3 = GetVehiclePedIsIn
                SHX1_3 = CMG
                SHX1_3 = SHX1_3.getPlayerPed
                SHX1_3 = SHX1_3()
                SHX2_3 = false
                SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
                if 0 == SHX0_3 then
                  break
                end
                SHX0_3 = Wait
                SHX1_3 = 1000
                SHX0_3(SHX1_3)
              end
              SHX0_3 = false
              SHX2_1 = SHX0_3
              SHX0_3 = SHX4_2
              SHX2_3 = SHX3_2
              SHX1_3 = SHX0_1
              SHX1_3 = SHX1_3[SHX2_3]
              SHX0_3 = SHX0_3 - SHX1_3
              SHX1_3 = TriggerServerEvent
              SHX2_3 = "7ba632fd51"
              SHX3_3 = SHX3_2
              SHX4_3 = -SHX0_3
              SHX1_3(SHX2_3, SHX3_3, SHX4_3)
            end
            SHX5_2(SHX6_2)
          end
        end
      end
    end
  end
end
SHX14_1 = CMG
SHX14_1 = SHX14_1.createThreadOnTick
SHX15_1 = SHX13_1
SHX16_1 = "Vehicle Nitro"
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = {}
SHX15_1 = "exhaust"
SHX16_1 = "exhaust_2"
SHX17_1 = "exhaust_3"
SHX18_1 = "exhaust_4"
SHX14_1[1] = SHX15_1
SHX14_1[2] = SHX16_1
SHX14_1[3] = SHX17_1
SHX14_1[4] = SHX18_1
SHX15_1 = "veh_backfire"
SHX16_1 = "core"
SHX17_1 = 2.4
SHX18_1 = {}
SHX19_1 = "overheat"
SHX18_1[1] = SHX19_1
SHX19_1 = "ent_sht_steam"
SHX20_1 = "core"
SHX21_1 = 0.4
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX2_2 = GetEntityBoneIndexByName
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadPtfx
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
  SHX3_2 = UseParticleFxAsset
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
  SHX3_2 = StartParticleFxLoopedOnEntityBone
  SHX4_2 = "veh_light_red_trail"
  SHX5_2 = SHX0_2
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = SHX2_2
  SHX13_2 = 1.0
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX4_2 = SetParticleFxLoopedEvolution
  SHX5_2 = SHX3_2
  SHX6_2 = "speed"
  SHX7_2 = 1.0
  SHX8_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = RemoveNamedPtfxAsset
  SHX5_2 = "core"
  SHX4_2(SHX5_2)
  return SHX3_2
end
function SHX23_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadPtfx
  SHX8_2 = "core"
  SHX7_2(SHX8_2)
  SHX7_2 = UseParticleFxAsset
  SHX8_2 = "core"
  SHX7_2(SHX8_2)
  SHX7_2 = StartParticleFxLoopedOnEntity
  SHX8_2 = "ent_sht_steam"
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX16_2 = 0.5
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX8_2 = RemoveNamedPtfxAsset
  SHX9_2 = "core"
  SHX8_2(SHX9_2)
  return SHX7_2
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    return
  end
  SHX1_2 = {}
  SHX2_2 = SHX22_1
  SHX3_2 = SHX0_2
  SHX4_2 = "taillight_l"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2.leftTrail = SHX2_2
  SHX2_2 = SHX22_1
  SHX3_2 = SHX0_2
  SHX4_2 = "taillight_r"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2.rightTrail = SHX2_2
  SHX2_2 = GetEntityBoneIndexByName
  SHX3_2 = SHX0_2
  SHX4_2 = "bonnet"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetWorldPositionOfEntityBone
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetOffsetFromEntityGivenWorldCoords
  SHX5_2 = SHX0_2
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = {}
  SHX1_2.purge = SHX5_2
  SHX5_2 = 0
  SHX6_2 = 3
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX23_1
    SHX10_2 = SHX0_2
    SHX11_2 = SHX4_2.x
    SHX11_2 = SHX11_2 - 0.5
    SHX12_2 = SHX4_2.y
    SHX12_2 = SHX12_2 + 0.05
    SHX13_2 = SHX4_2.z
    SHX14_2 = 40.0
    SHX15_2 = -20.0
    SHX16_2 = 0.0
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX10_2 = table
    SHX10_2 = SHX10_2.insert
    SHX11_2 = SHX1_2.purge
    SHX12_2 = SHX9_2
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SHX23_1
    SHX11_2 = SHX0_2
    SHX12_2 = SHX4_2.x
    SHX12_2 = SHX12_2 + 0.5
    SHX13_2 = SHX4_2.y
    SHX13_2 = SHX13_2 + 0.05
    SHX14_2 = SHX4_2.z
    SHX15_2 = 40.0
    SHX16_2 = 20.0
    SHX17_2 = 0.0
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX11_2 = table
    SHX11_2 = SHX11_2.insert
    SHX12_2 = SHX1_2.purge
    SHX13_2 = SHX10_2
    SHX11_2(SHX12_2, SHX13_2)
  end
  SHX5_2 = SHX1_1
  SHX5_2[SHX0_2] = SHX1_2
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    SHX0_3 = SHX0_3 + 500
    while true do
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      if not (SHX0_3 > SHX1_3) then
        break
      end
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX0_3 - SHX1_3
      SHX2_3 = SHX2_3 / 500
      SHX3_3 = SetParticleFxLoopedScale
      SHX4_3 = SHX0_2
      SHX5_3 = SHX2_3
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = SetParticleFxLoopedAlpha
      SHX4_3 = SHX0_2
      SHX5_3 = SHX2_3
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = Citizen
      SHX3_3 = SHX3_3.Wait
      SHX4_3 = 0
      SHX3_3(SHX4_3)
    end
    SHX1_3 = StopParticleFxLooped
    SHX2_3 = SHX0_2
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX1_2(SHX2_2)
end
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX25_1
  SHX3_2 = SHX1_2.leftTrail
  SHX2_2(SHX3_2)
  SHX2_2 = SHX25_1
  SHX3_2 = SHX1_2.rightTrail
  SHX2_2(SHX3_2)
  SHX2_2 = pairs
  SHX3_2 = SHX1_2.purge
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = StopParticleFxLooped
    SHX9_2 = SHX7_2
    SHX10_2 = false
    SHX8_2(SHX9_2, SHX10_2)
  end
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = IsVehicleStopped
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = GetEntityModel
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = GetEntitySpeed
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = GetVehicleModelEstimatedMaxSpeed
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 4.0 * SHX3_2
    SHX4_2 = SHX4_2 / SHX2_2
    SHX5_2 = SetVehicleCheatPowerIncrease
    SHX6_2 = SHX0_2
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
  end
end
SHX28_1 = CMG
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = pairs
  SHX2_2 = SHX14_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = UseParticleFxAsset
    SHX8_2 = SHX16_1
    SHX7_2(SHX8_2)
    SHX7_2 = StartParticleFxLoopedOnEntityBone
    SHX8_2 = SHX15_1
    SHX9_2 = SHX0_2
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = GetEntityBoneIndexByName
    SHX17_2 = SHX0_2
    SHX18_2 = SHX6_2
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
    SHX17_2 = SHX17_1
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX8_2 = StopParticleFxLooped
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
  end
end
SHX28_1.playVehicleFlameExhaustEffect = SHX29_1
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = pairs
  SHX2_2 = SHX18_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = UseParticleFxAsset
    SHX8_2 = SHX20_1
    SHX7_2(SHX8_2)
    SHX7_2 = StartParticleFxLoopedOnEntityBone
    SHX8_2 = SHX19_1
    SHX9_2 = SHX0_2
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = GetEntityBoneIndexByName
    SHX17_2 = SHX0_2
    SHX18_2 = SHX6_2
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
    SHX17_2 = SHX21_1
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX8_2 = StopParticleFxLooped
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
  end
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetVehicleBoostActive
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetVehicleBoostActive
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_1
    SHX0_2 = SHX0_2[SHX1_2]
    if SHX0_2 > 0 then
      SHX1_2 = SHX3_1
      SHX0_2 = SHX0_1
      SHX0_2 = SHX0_2[SHX1_2]
      if SHX0_2 < 0 then
        SHX0_2 = 0
      end
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.DrawText
      SHX2_2 = SHX11_1
      SHX3_2 = SHX12_1
      SHX4_2 = "Nitro: "
      SHX5_2 = math
      SHX5_2 = SHX5_2.floor
      SHX6_2 = tonumber
      SHX7_2 = SHX0_2
      SHX6_2 = SHX6_2(SHX7_2)
      if not SHX6_2 then
        SHX6_2 = 0
      end
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = "%"
      SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
      SHX5_2 = SHX10_1
      SHX6_2 = SHX9_1
      SHX7_2 = 1
      SHX8_2 = {}
      SHX9_2 = SHX5_1
      SHX10_2 = SHX6_1
      SHX11_2 = SHX7_1
      SHX12_2 = SHX8_1
      SHX8_2[1] = SHX9_2
      SHX8_2[2] = SHX10_2
      SHX8_2[3] = SHX11_2
      SHX8_2[4] = SHX12_2
      SHX9_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX1_2 = GetVehiclePedIsIn
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerPed
      SHX2_2 = SHX2_2()
      SHX3_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = IsControlPressed
      SHX3_2 = 0
      SHX4_2 = 21
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX3_2 = SHX3_1
        SHX2_2 = SHX0_1
        SHX2_2 = SHX2_2[SHX3_2]
        SHX2_2 = SHX2_2 - 0.05
        if SHX2_2 >= 0 then
          SHX2_2 = SHX24_1
          SHX3_2 = SHX1_2
          SHX2_2(SHX3_2)
          SHX2_2 = SHX27_1
          SHX3_2 = SHX1_2
          SHX2_2(SHX3_2)
          SHX2_2 = AnimpostfxPlay
          SHX3_2 = "RaceTurbo"
          SHX4_2 = 0
          SHX5_2 = false
          SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX3_2 = SHX3_1
          SHX2_2 = SHX0_1
          SHX5_2 = SHX3_1
          SHX4_2 = SHX0_1
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2 = SHX4_2 - 0.05
          SHX2_2[SHX3_2] = SHX4_2
          SHX2_2 = SHX4_1
          if not SHX2_2 then
            SHX2_2 = true
            SHX4_1 = SHX2_2
            SHX2_2 = CMG
            SHX2_2 = SHX2_2.playVehicleFlameExhaustEffect
            SHX3_2 = SHX1_2
            SHX2_2(SHX3_2)
            SHX2_2 = SHX28_1
            SHX3_2 = SHX1_2
            SHX2_2(SHX3_2)
            SHX2_2 = SHX29_1
            SHX3_2 = SHX1_2
            SHX2_2(SHX3_2)
            SHX2_2 = SetTimeout
            SHX3_2 = 100
            function SHX4_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3
              SHX0_3 = false
              SHX4_1 = SHX0_3
            end
            SHX2_2(SHX3_2, SHX4_2)
          end
        else
          SHX3_2 = SHX3_1
          SHX2_2 = SHX0_1
          SHX2_2[SHX3_2] = 0
          SHX2_2 = StopGameplayCamShaking
          SHX3_2 = true
          SHX2_2(SHX3_2)
          SHX2_2 = SetVehicleCheatPowerIncrease
          SHX3_2 = SHX1_2
          SHX4_2 = 1.0
          SHX2_2(SHX3_2, SHX4_2)
          SHX2_2 = SetVehicleBoostActive
          SHX3_2 = SHX1_2
          SHX4_2 = false
          SHX2_2(SHX3_2, SHX4_2)
          SHX2_2 = AnimpostfxStop
          SHX3_2 = "RaceTurbo"
          SHX2_2(SHX3_2)
        end
      else
        SHX2_2 = SetVehicleCheatPowerIncrease
        SHX3_2 = SHX1_2
        SHX4_2 = 1.0
        SHX2_2(SHX3_2, SHX4_2)
        SHX2_2 = SHX30_1
        SHX3_2 = SHX1_2
        SHX2_2(SHX3_2)
        SHX2_2 = SHX26_1
        SHX3_2 = SHX1_2
        SHX2_2(SHX3_2)
      end
    end
  end
end
SHX32_1 = CMG
SHX32_1 = SHX32_1.createThreadOnTick
SHX33_1 = SHX31_1
SHX34_1 = "Vehicle Nitro Text"
SHX32_1(SHX33_1, SHX34_1)
SHX32_1 = CMG
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX0_1
  SHX2_2[SHX0_2] = SHX1_2
  SHX2_2 = SHX0_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 > 100 then
    SHX2_2 = SHX0_1
    SHX2_2[SHX0_2] = 100
  end
end
SHX32_1.setVehicleIdNitro = SHX33_1
