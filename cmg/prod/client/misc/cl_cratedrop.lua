-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_rigentities"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = nil
SHX5_1 = {}
SHX6_1 = "p_cargo_chute_s"
SHX7_1 = "xs_prop_arena_crate_01a"
SHX8_1 = "cuban800"
SHX9_1 = "s_m_m_pilot_02"
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX6_1 = nil
SHX7_1 = nil
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  if 0 == SHX0_2 then
    SHX2_2 = SetBlipDisplay
    SHX3_2 = SHX1_2
    SHX4_2 = 2
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = SetBlipDisplay
    SHX3_2 = SHX1_2
    SHX4_2 = 0
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX9_1 = RegisterNetEvent
SHX10_1 = "8b70ea764f"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX4_2 = GetEntityCoords
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  SHX5_2 = SHX4_2 - SHX0_2
  SHX5_2 = #SHX5_2
  if SHX5_2 < 50.0 then
    SHX5_2 = notify
    SHX6_2 = "~y~WARNING - A supply drop is landing in your vicinity, leave the area immediately if you are unarmed!"
    SHX5_2(SHX6_2)
  end
  SHX5_2 = pairs
  SHX6_2 = SHX5_1
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if "cuban800" == SHX10_2 then
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.isChristmas
      SHX11_2 = SHX11_2()
      if SHX11_2 then
        SHX10_2 = 683843075
      end
    end
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.loadModel
    SHX12_2 = SHX10_2
    SHX11_2(SHX12_2)
  end
  SHX5_2 = RequestWeaponAsset
  SHX6_2 = 1233104067
  SHX7_2 = 0
  SHX8_2 = 0
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  while true do
    SHX5_2 = HasWeaponAssetLoaded
    SHX6_2 = 1233104067
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = nil
  if not SHX2_2 then
    SHX6_2 = math
    SHX6_2 = SHX6_2.random
    SHX7_2 = 0
    SHX8_2 = 360
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SHX6_2 + 0.0
    SHX7_2 = 1500.0
    SHX8_2 = SHX6_2 / 180.0
    SHX8_2 = SHX8_2 * 3.14
    SHX9_2 = vector3
    SHX10_2 = SHX0_2.x
    SHX11_2 = SHX0_2.y
    SHX12_2 = SHX0_2.z
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX10_2 = vector3
    SHX11_2 = math
    SHX11_2 = SHX11_2.cos
    SHX12_2 = SHX8_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX11_2 = SHX11_2 * SHX7_2
    SHX12_2 = math
    SHX12_2 = SHX12_2.sin
    SHX13_2 = SHX8_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX12_2 = SHX12_2 * SHX7_2
    SHX13_2 = -500.0
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX9_2 = SHX9_2 - SHX10_2
    SHX10_2 = SHX0_2.x
    SHX11_2 = SHX9_2.x
    SHX10_2 = SHX10_2 - SHX11_2
    SHX11_2 = SHX0_2.y
    SHX12_2 = SHX9_2.y
    SHX11_2 = SHX11_2 - SHX12_2
    SHX12_2 = GetHeadingFromVector_2d
    SHX13_2 = SHX10_2
    SHX14_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.isChristmas
    SHX13_2 = SHX13_2()
    if SHX13_2 then
      SHX13_2 = 683843075
      if SHX13_2 then
        goto SHX_LABEL_105
      end
    end
    SHX13_2 = -644710429
    -- [FIX IF ERROR] Move ::SHX_LABEL_105:: outside nested blocks until all 'goto SHX_LABEL_105' can see it
    ::SHX_LABEL_105::
    SHX14_2 = CreateVehicle
    SHX15_2 = SHX13_2
    SHX16_2 = SHX9_2.x
    SHX17_2 = SHX9_2.y
    SHX18_2 = SHX9_2.z
    SHX19_2 = SHX12_2
    SHX20_2 = false
    SHX21_2 = true
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX5_2 = SHX14_2
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.initLocalVehicle
    SHX15_2 = SHX5_2
    SHX14_2(SHX15_2)
    SHX14_2 = SetEntityHeading
    SHX15_2 = SHX5_2
    SHX16_2 = SHX12_2
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = SetVehicleDoorsLocked
    SHX15_2 = SHX5_2
    SHX16_2 = 2
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = SetEntityDynamic
    SHX15_2 = SHX5_2
    SHX16_2 = true
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = ActivatePhysics
    SHX15_2 = SHX5_2
    SHX14_2(SHX15_2)
    SHX14_2 = SetVehicleForwardSpeed
    SHX15_2 = SHX5_2
    SHX16_2 = 60.0
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = SetHeliBladesFullSpeed
    SHX15_2 = SHX5_2
    SHX14_2(SHX15_2)
    SHX14_2 = SetVehicleEngineOn
    SHX15_2 = SHX5_2
    SHX16_2 = true
    SHX17_2 = true
    SHX18_2 = false
    SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX14_2 = ControlLandingGear
    SHX15_2 = SHX5_2
    SHX16_2 = 3
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = OpenBombBayDoors
    SHX15_2 = SHX5_2
    SHX14_2(SHX15_2)
    SHX14_2 = SetEntityProofs
    SHX15_2 = SHX5_2
    SHX16_2 = true
    SHX17_2 = false
    SHX18_2 = true
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = false
    SHX23_2 = false
    SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX14_2 = CreatePedInsideVehicle
    SHX15_2 = SHX5_2
    SHX16_2 = 1
    SHX17_2 = -163714847
    SHX18_2 = -1
    SHX19_2 = false
    SHX20_2 = true
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX15_2 = SetBlockingOfNonTemporaryEvents
    SHX16_2 = SHX14_2
    SHX17_2 = true
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = SetPedRandomComponentVariation
    SHX16_2 = SHX14_2
    SHX17_2 = 0
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = SetPedKeepTask
    SHX16_2 = SHX14_2
    SHX17_2 = true
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = _ENV
    SHX16_2 = "SetTaskVehicleGotoPlaneMinHeightAboveTerrain"
    SHX15_2 = SHX15_2[SHX16_2]
    SHX16_2 = SHX5_2
    SHX17_2 = 50
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = TaskVehicleDriveToCoord
    SHX16_2 = SHX14_2
    SHX17_2 = SHX5_2
    SHX18_2 = vector3
    SHX19_2 = SHX0_2.x
    SHX20_2 = SHX0_2.y
    SHX21_2 = SHX0_2.z
    SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
    SHX19_2 = vector3
    SHX20_2 = 0.0
    SHX21_2 = 0.0
    SHX22_2 = 500.0
    SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
    SHX18_2 = SHX18_2 + SHX19_2
    SHX19_2 = 60.0
    SHX20_2 = 0
    SHX21_2 = 1
    SHX22_2 = 262144
    SHX23_2 = 15.0
    SHX24_2 = -1.0
    SHX25_2 = 0.0
    SHX26_2 = 0.0
    SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX15_2 = AddBlipForEntity
    SHX16_2 = SHX5_2
    SHX15_2 = SHX15_2(SHX16_2)
    SHX16_2 = SetBlipSprite
    SHX17_2 = SHX15_2
    SHX18_2 = 307
    SHX16_2(SHX17_2, SHX18_2)
    SHX16_2 = SetBlipColour
    SHX17_2 = SHX15_2
    SHX18_2 = 3
    SHX16_2(SHX17_2, SHX18_2)
    SHX16_2 = vector2
    SHX17_2 = SHX0_2.x
    SHX18_2 = SHX0_2.y
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
    SHX17_2 = vector2
    SHX18_2 = GetEntityCoords
    SHX19_2 = SHX5_2
    SHX18_2 = SHX18_2(SHX19_2)
    SHX18_2 = SHX18_2.x
    SHX19_2 = GetEntityCoords
    SHX20_2 = SHX5_2
    SHX19_2 = SHX19_2(SHX20_2)
    SHX19_2 = SHX19_2.y
    SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
    while true do
      SHX18_2 = SHX17_2 - SHX16_2
      SHX18_2 = #SHX18_2
      if not (SHX18_2 > 5.0) then
        break
      end
      SHX18_2 = Wait
      SHX19_2 = 100
      SHX18_2(SHX19_2)
      SHX18_2 = vector2
      SHX19_2 = GetEntityCoords
      SHX20_2 = SHX5_2
      SHX19_2 = SHX19_2(SHX20_2)
      SHX19_2 = SHX19_2.x
      SHX20_2 = GetEntityCoords
      SHX21_2 = SHX5_2
      SHX20_2 = SHX20_2(SHX21_2)
      SHX20_2 = SHX20_2.y
      SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
      SHX17_2 = SHX18_2
    end
    SHX18_2 = TaskVehicleDriveToCoord
    SHX19_2 = SHX14_2
    SHX20_2 = SHX5_2
    SHX21_2 = 0.0
    SHX22_2 = 0.0
    SHX23_2 = 500.0
    SHX24_2 = 60.0
    SHX25_2 = 0
    SHX26_2 = -644710429
    SHX27_2 = 262144
    SHX28_2 = -1.0
    SHX29_2 = -1.0
    SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
    SHX18_2 = SetTimeout
    SHX19_2 = 30000
    function SHX20_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SetEntityAsNoLongerNeeded
      SHX1_3 = SHX14_2
      SHX0_3(SHX1_3)
      SHX0_3 = SetEntityAsNoLongerNeeded
      SHX1_3 = SHX5_2
      SHX0_3(SHX1_3)
    end
    SHX18_2(SHX19_2, SHX20_2)
  end
  SHX6_2 = vector3
  SHX7_2 = SHX0_2.x
  SHX8_2 = SHX0_2.y
  SHX9_2 = GetEntityCoords
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX9_2 = SHX9_2.z
  SHX9_2 = SHX9_2 - 5.0
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = SHX2_1
  SHX8_2 = {}
  SHX7_2[SHX1_2] = SHX8_2
  SHX7_2 = SHX2_1
  SHX7_2 = SHX7_2[SHX1_2]
  SHX8_2 = CreateObjectNoOffset
  SHX9_2 = 772559902
  SHX10_2 = SHX6_2.x
  SHX11_2 = SHX6_2.y
  SHX12_2 = SHX6_2.z
  SHX13_2 = false
  SHX14_2 = true
  SHX15_2 = true
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2.crate = SHX8_2
  SHX7_2 = DecorSetInt
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX8_2 = SHX8_2.crate
  SHX9_2 = "5f7af1c5ce"
  SHX10_2 = SHX1_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetEntityLodDist
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX8_2 = SHX8_2.crate
  SHX9_2 = 10000
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = ActivatePhysics
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX8_2 = SHX8_2.crate
  SHX7_2(SHX8_2)
  SHX7_2 = SetDamping
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX8_2 = SHX8_2.crate
  SHX9_2 = 2
  SHX10_2 = 0.1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetEntityVelocity
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX8_2 = SHX8_2.crate
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = -0.1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = FreezeEntityPosition
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX8_2 = SHX8_2.crate
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = Wait
  SHX8_2 = 500
  SHX7_2(SHX8_2)
  SHX7_2 = FreezeEntityPosition
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX8_2 = SHX8_2.crate
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = AddBlipForEntity
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX8_2 = SHX8_2.crate
  SHX7_2 = SHX7_2(SHX8_2)
  if SHX2_2 then
    SHX8_2 = SetBlipSprite
    SHX9_2 = SHX7_2
    SHX10_2 = 880
    SHX8_2(SHX9_2, SHX10_2)
  else
    SHX8_2 = SetBlipSprite
    SHX9_2 = SHX7_2
    SHX10_2 = 501
    SHX8_2(SHX9_2, SHX10_2)
  end
  if SHX3_2 then
    SHX8_2 = SetBlipColour
    SHX9_2 = SHX7_2
    SHX10_2 = 3
    SHX8_2(SHX9_2, SHX10_2)
  else
    SHX8_2 = SetBlipColour
    SHX9_2 = SHX7_2
    SHX10_2 = 2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX1_2]
  SHX9_2 = CreateObject
  SHX10_2 = 886894755
  SHX11_2 = SHX6_2.x
  SHX12_2 = SHX6_2.y
  SHX13_2 = SHX6_2.z
  SHX14_2 = false
  SHX15_2 = true
  SHX16_2 = true
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX8_2.parachute = SHX9_2
  SHX8_2 = SetEntityLodDist
  SHX9_2 = SHX2_1
  SHX9_2 = SHX9_2[SHX1_2]
  SHX9_2 = SHX9_2.parachute
  SHX10_2 = 10000
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetEntityVelocity
  SHX9_2 = SHX2_1
  SHX9_2 = SHX9_2[SHX1_2]
  SHX9_2 = SHX9_2.parachute
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = -0.1
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = ActivatePhysics
  SHX9_2 = SHX2_1
  SHX9_2 = SHX9_2[SHX1_2]
  SHX9_2 = SHX9_2.crate
  SHX8_2(SHX9_2)
  SHX8_2 = AttachEntityToEntity
  SHX9_2 = SHX2_1
  SHX9_2 = SHX9_2[SHX1_2]
  SHX9_2 = SHX9_2.parachute
  SHX10_2 = SHX2_1
  SHX10_2 = SHX10_2[SHX1_2]
  SHX10_2 = SHX10_2.crate
  SHX11_2 = 0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.1
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = 0.0
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = false
  SHX22_2 = 2
  SHX23_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX8_2 = GetGameTimer
  SHX8_2 = SHX8_2()
  if SHX2_2 then
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createRedzone
    SHX10_2 = SHX1_2
    SHX11_2 = SHX0_2
    SHX12_2 = 50.0
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = SetEntityCoordsNoOffset
    SHX10_2 = SHX2_1
    SHX10_2 = SHX10_2[SHX1_2]
    SHX10_2 = SHX10_2.crate
    SHX11_2 = SHX0_2.x
    SHX12_2 = SHX0_2.y
    SHX13_2 = SHX0_2.z
    SHX14_2 = true
    SHX15_2 = false
    SHX16_2 = false
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  else
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createRedzone
    SHX10_2 = SHX1_2
    SHX11_2 = SHX0_2
    SHX12_2 = 200.0
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    while true do
      SHX9_2 = GetEntityHeightAboveGround
      SHX10_2 = SHX2_1
      SHX10_2 = SHX10_2[SHX1_2]
      SHX10_2 = SHX10_2.crate
      SHX9_2 = SHX9_2(SHX10_2)
      if not (SHX9_2 > 2) then
        break
      end
      SHX9_2 = GetGameTimer
      SHX9_2 = SHX9_2()
      SHX9_2 = SHX9_2 - SHX8_2
      SHX10_2 = 60000
      if not (SHX9_2 < SHX10_2) then
        break
      end
      SHX9_2 = Wait
      SHX10_2 = 100
      SHX9_2(SHX10_2)
    end
    SHX9_2 = vector3
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = -1.0
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = SHX0_2 + SHX9_2
    SHX10_2 = SetEntityCoords
    SHX11_2 = SHX2_1
    SHX11_2 = SHX11_2[SHX1_2]
    SHX11_2 = SHX11_2.crate
    SHX12_2 = SHX9_2.x
    SHX13_2 = SHX9_2.y
    SHX14_2 = SHX9_2.z
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  SHX9_2 = GetSoundId
  SHX9_2 = SHX9_2()
  SHX6_1 = SHX9_2
  SHX9_2 = PlaySoundFromEntity
  SHX10_2 = SHX6_1
  SHX11_2 = "Crate_Beeps"
  SHX12_2 = SHX2_1
  SHX12_2 = SHX12_2[SHX1_2]
  SHX12_2 = SHX12_2.crate
  SHX13_2 = "MP_CRATE_DROP_SOUNDS"
  SHX14_2 = true
  SHX15_2 = 0
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX9_2 = GetEntityCoords
  SHX10_2 = SHX2_1
  SHX10_2 = SHX10_2[SHX1_2]
  SHX10_2 = SHX10_2.crate
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = GetEntityCoords
  SHX11_2 = SHX2_1
  SHX11_2 = SHX11_2[SHX1_2]
  SHX11_2 = SHX11_2.crate
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = vector3
  SHX12_2 = 1.0E-4
  SHX13_2 = 1.0E-4
  SHX14_2 = 1.0E-4
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX10_2 = SHX10_2 - SHX11_2
  SHX11_2 = ShootSingleBulletBetweenCoords
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX15_2 = SHX10_2.x
  SHX16_2 = SHX10_2.y
  SHX17_2 = SHX10_2.z
  SHX18_2 = 0
  SHX19_2 = false
  SHX20_2 = 1233104067
  SHX21_2 = 0
  SHX22_2 = true
  SHX23_2 = false
  SHX24_2 = -1.0
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX11_2 = DetachEntity
  SHX12_2 = SHX2_1
  SHX12_2 = SHX12_2[SHX1_2]
  SHX12_2 = SHX12_2.parachute
  SHX13_2 = true
  SHX14_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = DeleteEntity
  SHX12_2 = SHX2_1
  SHX12_2 = SHX12_2[SHX1_2]
  SHX12_2 = SHX12_2.parachute
  SHX11_2(SHX12_2)
  SHX11_2 = DoesBlipExist
  SHX12_2 = SHX4_1
  SHX11_2 = SHX11_2(SHX12_2)
  if SHX11_2 then
    SHX11_2 = RemoveBlip
    SHX12_2 = SHX4_1
    SHX11_2(SHX12_2)
  end
  SHX11_2 = GetEntityCoords
  SHX12_2 = SHX2_1
  SHX12_2 = SHX12_2[SHX1_2]
  SHX12_2 = SHX12_2.crate
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = AddOwnedExplosion
  SHX13_2 = CMG
  SHX13_2 = SHX13_2.getPlayerPed
  SHX13_2 = SHX13_2()
  SHX14_2 = SHX11_2.x
  SHX15_2 = SHX11_2.y
  SHX16_2 = SHX11_2.z
  SHX17_2 = 1
  SHX18_2 = 0.0
  SHX19_2 = true
  SHX20_2 = false
  SHX21_2 = 3.0
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX12_2 = FreezeEntityPosition
  SHX13_2 = SHX2_1
  SHX13_2 = SHX13_2[SHX1_2]
  SHX13_2 = SHX13_2.crate
  SHX14_2 = true
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = pairs
  SHX13_2 = SHX5_1
  SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
  for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
    if "cuban800" == SHX17_2 then
      SHX18_2 = CMG
      SHX18_2 = SHX18_2.isChristmas
      SHX18_2 = SHX18_2()
      if SHX18_2 then
        SHX17_2 = 683843075
      end
    end
    SHX18_2 = SetModelAsNoLongerNeeded
    SHX19_2 = GetHashKey
    SHX20_2 = SHX17_2
    SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX19_2(SHX20_2)
    SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "f04fb7e14a"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX2_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.crate
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX2_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2.crate
      SHX1_2(SHX2_2)
    end
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX2_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.parachute
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX2_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2.parachute
      SHX1_2(SHX2_2)
    end
    SHX1_2 = SetTimeout
    SHX2_2 = 300000
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.deleteRedzone
      SHX1_3 = SHX0_2
      SHX0_3(SHX1_3)
      SHX0_3 = RemoveBlip
      SHX2_3 = SHX0_2
      SHX1_3 = SHX1_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX0_3(SHX1_3)
      SHX1_3 = SHX0_2
      SHX0_3 = SHX3_1
      SHX0_3[SHX1_3] = nil
    end
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = StopSound
    SHX2_2 = SHX6_1
    SHX1_2(SHX2_2)
    SHX1_2 = ReleaseSoundId
    SHX2_2 = SHX6_1
    SHX1_2(SHX2_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "cda5d18db2"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = 772559902
  SHX4_2(SHX5_2)
  SHX4_2 = SHX2_1
  SHX5_2 = {}
  SHX4_2[SHX0_2] = SHX5_2
  SHX4_2 = SHX1_2
  if not SHX2_2 then
    SHX5_2 = vector3
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = -1.0
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX4_2 = SHX1_2 + SHX5_2
  end
  SHX5_2 = SHX2_1
  SHX5_2 = SHX5_2[SHX0_2]
  SHX6_2 = CreateObject
  SHX7_2 = 772559902
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX11_2 = false
  SHX12_2 = true
  SHX13_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2.crate = SHX6_2
  SHX5_2 = DecorSetInt
  SHX6_2 = SHX2_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.crate
  SHX7_2 = "5f7af1c5ce"
  SHX8_2 = SHX0_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = SHX2_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.crate
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = 772559902
  SHX5_2(SHX6_2)
  SHX5_2 = AddBlipForEntity
  SHX6_2 = SHX2_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.crate
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SetBlipSprite
  SHX7_2 = SHX5_2
  SHX8_2 = 501
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipColour
  SHX7_2 = SHX5_2
  SHX8_2 = 2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = GetSoundId
  SHX6_2 = SHX6_2()
  SHX6_1 = SHX6_2
  SHX6_2 = PlaySoundFromEntity
  SHX7_2 = SHX6_1
  SHX8_2 = "Crate_Beeps"
  SHX9_2 = SHX2_1
  SHX9_2 = SHX9_2[SHX0_2]
  SHX9_2 = SHX9_2.crate
  SHX10_2 = "MP_CRATE_DROP_SOUNDS"
  SHX11_2 = true
  SHX12_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  if SHX3_2 then
    return
  end
  if SHX2_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createRedzone
    SHX7_2 = SHX0_2
    SHX8_2 = SHX1_2
    SHX9_2 = 50.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  else
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createRedzone
    SHX7_2 = SHX0_2
    SHX8_2 = SHX1_2
    SHX9_2 = 200.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "5da2ae475e"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetTimeout
  SHX2_2 = 300000
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.deleteRedzone
    SHX1_3 = SHX0_2
    SHX0_3(SHX1_3)
    SHX0_3 = RemoveBlip
    SHX2_3 = SHX0_2
    SHX1_3 = SHX1_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX0_3(SHX1_3)
    SHX1_3 = SHX0_2
    SHX0_3 = SHX3_1
    SHX0_3[SHX1_3] = nil
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = {}
SHX10_1 = 0
SHX11_1 = vector3
SHX12_1 = -1712.413
SHX13_1 = 8867.743
SHX14_1 = -5.004937
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = false
SHX13_1 = true
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_1.modelReplacements
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = SHX0_2
  end
  return SHX1_2
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = true
  SHX12_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThreadNow
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.loadModel
    SHX1_3 = -2079670599
    SHX0_3(SHX1_3)
    SHX0_3 = CreateObjectNoOffset
    SHX1_3 = -2079670599
    SHX2_3 = SHX7_1.x
    SHX3_3 = SHX7_1.y
    SHX4_3 = SHX7_1.z
    SHX5_3 = false
    SHX6_3 = false
    SHX7_3 = false
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX10_1 = SHX0_3
    SHX0_3 = FreezeEntityPosition
    SHX1_3 = SHX10_1
    SHX2_3 = true
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = table
    SHX0_3 = SHX0_3.insert
    SHX1_3 = SHX9_1
    SHX2_3 = SHX10_1
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.entityDefs
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.CreateThreadNow
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3
      SHX0_3 = SHX14_1
      SHX1_3 = SHX5_2
      SHX1_3 = SHX1_3[1]
      SHX0_3 = SHX0_3(SHX1_3)
      SHX1_3 = SHX5_2
      SHX1_3 = SHX1_3[2]
      SHX2_3 = SHX11_1
      SHX1_3 = SHX1_3 - SHX2_3
      SHX2_3 = SHX7_1
      SHX1_3 = SHX1_3 + SHX2_3
      SHX2_3 = inv
      SHX3_3 = SHX5_2
      SHX3_3 = SHX3_3[3]
      SHX2_3 = SHX2_3(SHX3_3)
      SHX3_3 = SHX5_2
      SHX3_3 = SHX3_3[4]
      SHX3_3 = 1572864 == SHX3_3
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.loadModel
      SHX5_3 = SHX0_3
      SHX4_3(SHX5_3)
      SHX4_3 = SHX12_1
      if SHX4_3 then
        SHX4_3 = CreateObjectNoOffset
        SHX5_3 = SHX0_3
        SHX6_3 = SHX1_3.x
        SHX7_3 = SHX1_3.y
        SHX8_3 = SHX1_3.z
        SHX9_3 = false
        SHX10_3 = false
        SHX11_3 = true
        SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        SHX5_3 = SetModelAsNoLongerNeeded
        SHX6_3 = SHX0_3
        SHX5_3(SHX6_3)
        SHX5_3 = SetEntityQuaternion
        SHX6_3 = SHX4_3
        SHX7_3 = SHX2_3.x
        SHX8_3 = SHX2_3.y
        SHX9_3 = SHX2_3.z
        SHX10_3 = SHX2_3.w
        SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX5_3 = SHX0_1.doorModels
        SHX5_3 = SHX5_3[SHX0_3]
        if not SHX5_3 then
          SHX5_3 = FreezeEntityPosition
          SHX6_3 = SHX4_3
          SHX7_3 = true
          SHX5_3(SHX6_3, SHX7_3)
        end
        SHX5_3 = SetEntityLodDist
        SHX6_3 = SHX4_3
        SHX7_3 = 1500
        SHX5_3(SHX6_3, SHX7_3)
        SHX5_3 = table
        SHX5_3 = SHX5_3.insert
        SHX6_3 = SHX9_1
        SHX7_3 = SHX4_3
        SHX5_3(SHX6_3, SHX7_3)
      end
      if SHX3_3 then
        SHX4_3 = SHX0_1.mloEntityDefs
        SHX4_3 = SHX4_3[SHX0_3]
        SHX5_3 = pairs
        SHX6_3 = SHX4_3
        SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
        for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
          SHX11_3 = SHX14_1
          SHX12_3 = SHX10_3[1]
          SHX11_3 = SHX11_3(SHX12_3)
          SHX12_3 = SHX10_3[2]
          SHX12_3 = SHX12_3 + SHX1_3
          SHX13_3 = inv
          SHX14_3 = SHX10_3[3]
          SHX13_3 = SHX13_3(SHX14_3)
          SHX14_3 = CMG
          SHX14_3 = SHX14_3.loadModel
          SHX15_3 = SHX11_3
          SHX14_3(SHX15_3)
          SHX14_3 = SHX12_1
          if SHX14_3 then
            SHX14_3 = CreateObjectNoOffset
            SHX15_3 = SHX11_3
            SHX16_3 = SHX12_3.x
            SHX17_3 = SHX12_3.y
            SHX18_3 = SHX12_3.z
            SHX19_3 = false
            SHX20_3 = false
            SHX21_3 = true
            SHX14_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3)
            SHX15_3 = SetModelAsNoLongerNeeded
            SHX16_3 = SHX11_3
            SHX15_3(SHX16_3)
            SHX15_3 = SetEntityQuaternion
            SHX16_3 = SHX14_3
            SHX17_3 = SHX13_3.x
            SHX18_3 = SHX13_3.y
            SHX19_3 = SHX13_3.z
            SHX20_3 = SHX13_3.w
            SHX15_3(SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
            SHX15_3 = SHX0_1.doorModels
            SHX15_3 = SHX15_3[SHX11_3]
            if not SHX15_3 then
              SHX15_3 = FreezeEntityPosition
              SHX16_3 = SHX14_3
              SHX17_3 = true
              SHX15_3(SHX16_3, SHX17_3)
            end
            SHX15_3 = SetEntityLodDist
            SHX16_3 = SHX14_3
            SHX17_3 = 1500
            SHX15_3(SHX16_3, SHX17_3)
            SHX15_3 = table
            SHX15_3 = SHX15_3.insert
            SHX16_3 = SHX9_1
            SHX17_3 = SHX14_3
            SHX15_3(SHX16_3, SHX17_3)
          end
        end
      end
    end
    SHX6_2(SHX7_2)
  end
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = false
  SHX12_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX9_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = 0
  SHX10_1 = SHX0_2
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX0_2 = GetPedConfigFlag
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 388
  SHX3_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  if SHX0_2 then
    SHX0_2 = IsPedClimbing
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  end
  SHX1_2 = not SHX0_2
  SHX2_2 = SHX10_1
  if 0 ~= SHX2_2 then
    SHX2_2 = SHX13_1
    if SHX2_2 ~= SHX1_2 then
      SHX2_2 = SetEntityCollision
      SHX3_2 = SHX10_1
      SHX4_2 = SHX1_2
      SHX5_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX13_1 = SHX1_2
    end
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.count
  SHX3_2 = SHX3_1
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX2_2 = DrawMarker
  SHX3_2 = 1
  SHX4_2 = SHX7_1.x
  SHX5_2 = SHX7_1.y
  SHX6_2 = SHX7_1.z
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 200.0
  SHX14_2 = 200.0
  SHX15_2 = 6000.0
  SHX16_2 = 255
  SHX17_2 = 0
  SHX18_2 = 0
  SHX19_2 = 25
  SHX20_2 = false
  SHX21_2 = false
  SHX22_2 = 2
  SHX23_2 = false
  SHX24_2 = nil
  SHX25_2 = nil
  SHX26_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
end
SHX18_1 = CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  SHX0_2 = GetConvarInt
  SHX1_2 = "cmg_rigindex"
  SHX2_2 = 0
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = assert
  SHX2_2 = 0 ~= SHX0_2
  SHX3_2 = "Unable to fetch oil rig position from server"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_1.spawnLocations
  SHX1_2 = SHX1_2[SHX0_2]
  SHX7_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "oilrig"
  SHX3_2 = SHX7_1
  SHX4_2 = 1000.0
  SHX5_2 = 1500.0
  SHX6_2 = SHX15_1
  SHX7_2 = SHX16_1
  SHX8_2 = SHX17_1
  SHX9_2 = {}
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createGarage
  SHX2_2 = "VIP Helicopters"
  SHX3_2 = SHX7_1
  SHX4_2 = vector3
  SHX5_2 = -24.09967
  SHX6_2 = 9.443848
  SHX7_2 = 40.603668
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SHX3_2 + SHX4_2
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createGarage
  SHX2_2 = "Standard Boats"
  SHX3_2 = SHX7_1
  SHX4_2 = vector3
  SHX5_2 = 40.875153
  SHX6_2 = 17.146973
  SHX7_2 = 5.628222
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SHX3_2 + SHX4_2
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX18_1(SHX19_1)
SHX18_1 = AddEventHandler
SHX19_1 = "onResourceStop"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX2_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2.crate
      if SHX7_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2.crate
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX6_2.crate
          SHX7_2(SHX8_2)
        end
      end
      SHX7_2 = SHX6_2.parachute
      if SHX7_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2.parachute
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX6_2.parachute
          SHX7_2(SHX8_2)
        end
      end
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.deleteRedzone
      SHX8_2 = SHX5_2
      SHX7_2(SHX8_2)
    end
    SHX1_2 = SHX6_1
    if SHX1_2 then
      SHX1_2 = StopSound
      SHX2_2 = SHX6_1
      SHX1_2(SHX2_2)
      SHX1_2 = ReleaseSoundId
      SHX2_2 = SHX6_1
      SHX1_2(SHX2_2)
    end
    SHX1_2 = SHX16_1
    SHX1_2()
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  return SHX0_2
end
SHX18_1.getOilRigCoords = SHX19_1
SHX18_1 = AddEventHandler
SHX19_1 = "919aefda0c"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX8_1
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "47e16a3b97"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = GetPlayerServerId
  SHX4_2 = PlayerId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  if SHX0_2 == SHX3_2 then
    SHX3_2 = "anim@heists@load_box"
    SHX4_2 = "lift_box"
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.loadAnimDict
    SHX6_2 = SHX3_2
    SHX5_2(SHX6_2)
    SHX5_2 = TaskPlayAnim
    SHX6_2 = SHX2_2
    SHX7_2 = SHX3_2
    SHX8_2 = SHX4_2
    SHX9_2 = 3.0
    SHX10_2 = 1.0
    SHX11_2 = -1
    SHX12_2 = 1
    SHX13_2 = 0
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX5_2 = Wait
    SHX6_2 = 1200
    SHX5_2(SHX6_2)
    SHX5_2 = ClearPedTasks
    SHX6_2 = SHX2_2
    SHX5_2(SHX6_2)
  else
    SHX3_2 = Wait
    SHX4_2 = 1200
    SHX3_2(SHX4_2)
  end
  SHX3_2 = UseParticleFxAssetNextCall
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
  SHX3_2 = StartParticleFxLoopedAtCoord
  SHX4_2 = "exp_grd_flare"
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX7_2 = SHX7_2 - 1.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 1.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = Wait
  SHX5_2 = 60000
  SHX4_2(SHX5_2)
  SHX4_2 = StopParticleFxLooped
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
end
SHX18_1(SHX19_1, SHX20_1)
