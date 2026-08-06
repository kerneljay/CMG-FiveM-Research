-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = false
SHX1_1 = 10.0
SHX2_1 = false
SHX3_1 = {}
SHX4_1 = AddTextEntry
SHX5_1 = "WT_GNADE_FLSH"
SHX6_1 = "Flashbang"
SHX4_1(SHX5_1, SHX6_1)
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = RequestNamedPtfxAsset
  SHX2_2 = "core"
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = HasNamedPtfxAssetLoaded
    SHX2_2 = "core"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = UseParticleFxAsset
  SHX2_2 = "core"
  SHX1_2(SHX2_2)
  SHX1_2 = StartParticleFxLoopedAtCoord
  SHX2_2 = "ent_anim_paparazzi_flash"
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 25.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = RemoveNamedPtfxAsset
  SHX2_2 = "core"
  SHX1_2(SHX2_2)
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = AddExplosion
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX5_2 = 25
  SHX6_2 = 0.0
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = 0.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = SHX4_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = AnimpostfxPlay
  SHX2_2 = "Dont_tazeme_bro"
  SHX3_2 = 0
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = ShakeGameplayCam
  SHX2_2 = "HAND_SHAKE"
  SHX3_2 = 7.5
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RequestAnimDict
  SHX2_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = HasAnimDictLoaded
    SHX2_2 = "anim@heists@ornate_bank@thermal_charge"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = TaskPlayAnim
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX4_2 = "cover_eyes_intro"
  SHX5_2 = -8.0
  SHX6_2 = -8.0
  SHX7_2 = 1000
  SHX8_2 = 50
  SHX9_2 = 8.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 6000
  SHX1_2(SHX2_2)
  SHX1_2 = AnimpostfxStop
  SHX2_2 = "Dont_tazeme_bro"
  SHX1_2(SHX2_2)
  SHX1_2 = StopGameplayCamShaking
  SHX2_2 = false
  SHX1_2(SHX2_2)
end
SHX6_1 = RegisterNetEvent
SHX7_1 = "3c58e7b43c"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX0_2 - SHX1_2
  SHX1_2 = #SHX1_2
  SHX2_2 = SHX1_1
  if SHX1_2 <= SHX2_2 then
    SHX1_2 = SHX5_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    SHX0_2 = GetSelectedPedWeapon
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2, SHX2_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if -73270376 == SHX0_2 then
      SHX0_2 = SHX2_1
      if not SHX0_2 then
        SHX0_2 = true
        SHX0_1 = SHX0_2
    end
    else
      SHX0_2 = false
      SHX0_1 = SHX0_2
    end
  else
    SHX0_2 = IsPedShooting
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2, SHX2_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX2_1
      if not SHX0_2 then
        SHX0_2 = true
        SHX2_1 = SHX0_2
        SHX0_2 = Citizen
        SHX0_2 = SHX0_2.CreateThread
        function SHX1_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
          SHX0_3 = Citizen
          SHX0_3 = SHX0_3.Wait
          SHX1_3 = 100
          SHX0_3(SHX1_3)
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.getPlayerCoords
          SHX0_3 = SHX0_3()
          SHX1_3 = GetClosestObjectOfType
          SHX2_3 = SHX0_3.x
          SHX3_3 = SHX0_3.y
          SHX4_3 = SHX0_3.z
          SHX5_3 = SHX1_1
          SHX6_3 = 2113529881
          SHX7_3 = false
          SHX8_3 = false
          SHX9_3 = false
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          if 0 ~= SHX1_3 then
            SHX2_3 = SHX3_1
            SHX2_3 = SHX2_3[SHX1_3]
            if not SHX2_3 then
              SHX2_3 = SHX3_1
              SHX2_3[SHX1_3] = true
              SHX2_3 = Citizen
              SHX2_3 = SHX2_3.Wait
              SHX3_3 = 2500
              SHX2_3(SHX3_3)
              SHX2_3 = GetEntityCoords
              SHX3_3 = SHX1_3
              SHX2_3 = SHX2_3(SHX3_3)
              SHX3_3 = TriggerServerEvent
              SHX4_3 = "1d24fadaed"
              SHX5_3 = SHX2_3
              SHX3_3(SHX4_3, SHX5_3)
            end
          end
        end
        SHX0_2(SHX1_2)
        SHX0_2 = SetTimeout
        SHX1_2 = 5000
        function SHX2_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = false
          SHX2_1 = SHX0_3
        end
        SHX0_2(SHX1_2, SHX2_2)
        SHX0_2 = false
        SHX0_1 = SHX0_2
      end
    end
  end
end
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
SHX8_1 = SHX6_1
SHX9_1 = "Flashbang"
SHX7_1(SHX8_1, SHX9_1)
