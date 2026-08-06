-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = 459.33172607422
SHX4_1 = -979.49810791016
SHX5_1 = 30.689582824708
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX1_1.permission = "cop.whitelisted"
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = 1841.6328125
SHX5_1 = 3690.603515625
SHX6_1 = 34.26708984375
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.position = SHX3_1
SHX2_1.permission = "cop.whitelisted"
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = -1106.9595947266
SHX6_1 = -824.35784912109
SHX7_1 = 14.282789230347
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.permission = "cop.whitelisted"
SHX4_1 = {}
SHX5_1 = vector3
SHX6_1 = -447.70739746094
SHX7_1 = 6013.6123046875
SHX8_1 = 31.716396331787
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.position = SHX5_1
SHX4_1.permission = "cop.whitelisted"
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = 1539.0798339844
SHX8_1 = 795.29608154297
SHX9_1 = 78.693008422852
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.position = SHX6_1
SHX5_1.permission = "cop.whitelisted"
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = 1764.9135742188
SHX9_1 = 2587.9736328125
SHX10_1 = 46.001010894775
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.position = SHX7_1
SHX6_1.permission = "prisonguard.whitelisted"
SHX7_1 = {}
SHX8_1 = vector3
SHX9_1 = -2438.9677734375
SHX10_1 = -249.46469116211
SHX11_1 = 16.358680725098
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.position = SHX8_1
SHX7_1.permission = "borderforce.whitelisted"
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 1302.6427001953
SHX11_1 = 616.08892822266
SHX12_1 = 80.330574035645
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.position = SHX9_1
SHX8_1.permission = "borderforce.whitelisted"
SHX9_1 = {}
SHX10_1 = vector3
SHX11_1 = 2418.9753417969
SHX12_1 = -184.60707092285
SHX13_1 = 87.478393554688
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX9_1.position = SHX10_1
SHX9_1.permission = "borderforce.whitelisted"
SHX10_1 = {}
SHX11_1 = vector3
SHX12_1 = -433.68515014648
SHX13_1 = -319.22576904297
SHX14_1 = 34.910751342773
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1.position = SHX11_1
SHX10_1.permission = "nhs.onduty.permission"
SHX11_1 = {}
SHX12_1 = vector3
SHX13_1 = 257.38790893555
SHX14_1 = 6333.384765625
SHX15_1 = 32.427223205566
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX11_1.position = SHX12_1
SHX11_1.permission = "nhs.onduty.permission"
SHX12_1 = {}
SHX13_1 = vector3
SHX14_1 = 314.72796630859
SHX15_1 = -566.34704589844
SHX16_1 = 75.724975585938
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX12_1.position = SHX13_1
SHX12_1.permission = "nhs.onduty.permission"
SHX13_1 = {}
SHX14_1 = vector3
SHX15_1 = 1838.9287109375
SHX16_1 = 3682.7348632812
SHX17_1 = 34.270023345947
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX13_1.position = SHX14_1
SHX13_1.permission = "nhs.onduty.permission"
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX0_1[7] = SHX7_1
SHX0_1[8] = SHX8_1
SHX0_1[9] = SHX9_1
SHX0_1[10] = SHX10_1
SHX0_1[11] = SHX11_1
SHX0_1[12] = SHX12_1
SHX0_1[13] = SHX13_1
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = 454.01052856445
SHX4_1 = -1024.8431396484
SHX5_1 = 28.496109008789
SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX1_1[6] = SHX7_1
SHX1_1[7] = SHX8_1
SHX1_1[8] = SHX9_1
SHX1_1[9] = SHX10_1
SHX1_1[10] = SHX11_1
SHX1_1[11] = SHX12_1
SHX1_1[12] = SHX13_1
SHX1_1[13] = SHX14_1
SHX1_1[14] = SHX15_1
SHX1_1[15] = SHX16_1
SHX1_1[16] = SHX17_1
SHX2_1 = AddEventHandler
SHX3_1 = "CMG:onClientSpawn"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to Pickup Armour"
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 1
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.hasClientPermission
        SHX1_3 = "police.onduty.permission"
        SHX0_3 = SHX0_3(SHX1_3)
        if not SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.hasClientPermission
          SHX1_3 = "prisonguard.onduty.permission"
          SHX0_3 = SHX0_3(SHX1_3)
          if not SHX0_3 then
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.hasClientPermission
            SHX1_3 = "nhs.onduty.permission"
            SHX0_3 = SHX0_3(SHX1_3)
            if not SHX0_3 then
              goto SHX_LABEL_40
            end
          end
        end
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "53d18271be"
        SHX0_3(SHX1_3)
        SHX0_3 = GetSoundId
        SHX0_3 = SHX0_3()
        SHX1_3 = PlaySoundFrontend
        SHX2_3 = SHX0_3
        SHX3_3 = "Armour_On"
        SHX4_3 = "DLC_GR_Steal_Miniguns_Sounds"
        SHX5_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX1_3 = ReleaseSoundId
        SHX2_3 = SHX0_3
        SHX1_3(SHX2_3)
        goto SHX_LABEL_44
        -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
        ::SHX_LABEL_40::
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.notify
        SHX1_3 = "~r~You shouldn't be here...Engaging defenses in 3..2..1..."
        SHX0_3(SHX1_3)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
      ::SHX_LABEL_44::
    end
    SHX5_2 = pairs
    SHX6_2 = SHX0_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.hasClientPermission
      SHX12_2 = SHX10_2.permission
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX11_2 = CMG
        SHX11_2 = SHX11_2.createArea
        SHX12_2 = "armour_"
        SHX13_2 = SHX9_2
        SHX12_2 = SHX12_2 .. SHX13_2
        SHX13_2 = SHX10_2.position
        SHX14_2 = 1.5
        SHX15_2 = 6
        SHX16_2 = SHX2_2
        SHX17_2 = SHX3_2
        SHX18_2 = SHX4_2
        SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        SHX11_2 = tCMG
        SHX11_2 = SHX11_2.addPropMarker
        SHX12_2 = "bzzz_marker_mask_blue_anim"
        SHX13_2 = SHX10_2.position
        SHX13_2 = SHX13_2.x
        SHX14_2 = SHX10_2.position
        SHX14_2 = SHX14_2.y
        SHX15_2 = SHX10_2.position
        SHX15_2 = SHX15_2.z
        SHX16_2 = 20.0
        SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      end
    end
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = false
SHX3_1 = false
SHX4_1 = 0
SHX5_1 = CMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = GetPedType
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2)
    SHX0_2 = 28 == SHX0_2
  end
  return SHX0_2
end
SHX5_1.isPlayerInAnimalForm = SHX6_1
SHX5_1 = CMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX5_1.isPoliceHorse = SHX6_1
SHX5_1 = CMG
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
end
SHX5_1.setInPoliceHorseDelayed = SHX6_1
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedFalling
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = IsPedRagdoll
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = GetEntityHealth
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not (SHX1_2 <= 102) then
        SHX1_2 = IsPedInParachuteFreeFall
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          goto SHX_LABEL_27
        end
      end
    end
  end
  SHX1_2 = notify
  SHX2_2 = "~r~You can not get a horse out at this time."
  SHX1_2(SHX2_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX4_1
  SHX1_2 = SHX1_2 - SHX2_2
  SHX2_2 = 10000
  if SHX1_2 < SHX2_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~Please wait at least 10 seconds before going on the horse again."
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = GetEntityModel
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  if 1885233650 == SHX1_2 or -1667301416 == SHX1_2 then
    SHX2_2 = true
    SHX2_1 = SHX2_2
    SHX2_2 = true
    SHX3_1 = SHX2_2
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX4_1 = SHX2_2
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadModel
    SHX3_2 = "a_c_deer"
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      return
    end
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.requestEntitySpawn
    SHX4_2 = "police_horse_ped"
    SHX5_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = ClonePed
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = true
    SHX6_2 = true
    SHX7_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = GetEntityHealth
    SHX5_2 = PlayerPedId
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX5_2()
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.getCustomization
    SHX5_2 = SHX5_2()
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.setCustomization
    SHX7_2 = {}
    SHX7_2.modelhash = -664053099
    SHX6_2(SHX7_2)
    SHX6_2 = SetModelAsNoLongerNeeded
    SHX7_2 = SHX2_2
    SHX6_2(SHX7_2)
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.CreateThread
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 200
      SHX0_3(SHX1_3)
      SHX0_3 = SetEntityHealth
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX4_2
      SHX0_3(SHX1_3, SHX2_3)
    end
    SHX6_2(SHX7_2)
    SHX6_2 = 0.12
    SHX7_2 = -0.2
    SHX8_2 = AttachEntityToEntity
    SHX9_2 = SHX3_2
    SHX10_2 = PlayerPedId
    SHX10_2 = SHX10_2()
    SHX11_2 = GetPedBoneIndex
    SHX12_2 = PlayerPedId
    SHX12_2 = SHX12_2()
    SHX13_2 = 24816
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX12_2 = SHX7_2
    SHX13_2 = 0.0
    SHX14_2 = SHX6_2
    SHX15_2 = 0.0
    SHX16_2 = 0.0
    SHX17_2 = -90.0
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = true
    SHX22_2 = 2
    SHX23_2 = true
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadAnimDict
    SHX9_2 = "amb@prop_human_seat_chair@male@generic@base"
    SHX8_2(SHX9_2)
    SHX8_2 = TaskPlayAnim
    SHX9_2 = SHX3_2
    SHX10_2 = "amb@prop_human_seat_chair@male@generic@base"
    SHX11_2 = "base"
    SHX12_2 = 8.0
    SHX13_2 = 1
    SHX14_2 = -1
    SHX15_2 = 1
    SHX16_2 = 1.0
    SHX17_2 = false
    SHX18_2 = false
    SHX19_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX8_2 = RemoveAnimDict
    SHX9_2 = "amb@prop_human_seat_chair@male@generic@base"
    SHX8_2(SHX9_2)
    SHX8_2 = FreezeEntityPosition
    SHX9_2 = PlayerPedId
    SHX9_2 = SHX9_2()
    SHX10_2 = false
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = FreezeEntityPosition
    SHX9_2 = SHX3_2
    SHX10_2 = false
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetPedComponentVariation
    SHX9_2 = PlayerPedId
    SHX9_2 = SHX9_2()
    SHX10_2 = 0
    SHX11_2 = 0
    SHX12_2 = 0
    SHX13_2 = 0
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_2 = SetBlockingOfNonTemporaryEvents
    SHX9_2 = SHX3_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetPedFleeAttributes
    SHX9_2 = SHX3_2
    SHX10_2 = 0
    SHX11_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = SetPedRelationshipGroupHash
    SHX9_2 = SHX3_2
    SHX10_2 = 1191392768
    SHX8_2(SHX9_2, SHX10_2)
    while true do
      SHX8_2 = SHX2_1
      if not SHX8_2 then
        break
      end
      SHX8_2 = Wait
      SHX9_2 = 0
      SHX8_2(SHX9_2)
      SHX8_2 = drawNativeNotification
      SHX9_2 = "~s~~INPUT_JUMP~ to exit horse"
      SHX8_2(SHX9_2)
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.setWeapon
      SHX9_2 = PlayerPedId
      SHX9_2 = SHX9_2()
      SHX10_2 = "weapon_unarmed"
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 263
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 264
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 257
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 140
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 141
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 142
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 143
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 24
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = DisableControlAction
      SHX9_2 = 0
      SHX10_2 = 25
      SHX11_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = SetPedDropsWeaponsWhenDead
      SHX9_2 = SHX3_2
      SHX10_2 = false
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = IsDisabledControlPressed
      SHX9_2 = 0
      SHX10_2 = 22
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if SHX8_2 then
        SHX8_2 = false
        SHX2_1 = SHX8_2
      end
    end
    SHX8_2 = DeleteEntity
    SHX9_2 = SHX3_2
    SHX8_2(SHX9_2)
    SHX8_2 = DetachEntity
    SHX9_2 = PlayerPedId
    SHX9_2 = SHX9_2()
    SHX10_2 = false
    SHX11_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = GetEntityHealth
    SHX9_2 = PlayerPedId
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX9_2()
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.setCustomization
    SHX10_2 = SHX5_2
    SHX9_2(SHX10_2)
    SHX9_2 = Citizen
    SHX9_2 = SHX9_2.CreateThread
    function SHX10_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 200
      SHX0_3(SHX1_3)
      SHX0_3 = SetEntityHealth
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX8_2
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
      SHX0_3 = false
      SHX3_1 = SHX0_3
    end
    SHX9_2(SHX10_2)
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Custom peds cannot be used with horses."
    SHX2_2(SHX3_2)
  end
end
SHX6_1 = AddEventHandler
SHX7_1 = "CMG:onClientSpawn"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to spawn police horse!"
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 1
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SHX2_1
        if not SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.hasClientPermission
          SHX1_3 = "police.onduty.permission"
          SHX0_3 = SHX0_3(SHX1_3)
          if SHX0_3 then
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.inOrganHesit
            SHX0_3 = SHX0_3()
            if not SHX0_3 then
              SHX0_3 = SHX5_1
              SHX0_3()
          end
          else
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~r~This is only available to the MET Police only."
            SHX0_3(SHX1_3)
          end
        end
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX1_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "horse_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX15_2 = 1.0
      SHX16_2 = 1.0
      SHX17_2 = 1.0
      SHX18_2 = 0
      SHX19_2 = 50
      SHX20_2 = 255
      SHX21_2 = 170
      SHX22_2 = 50
      SHX23_2 = 42
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterCommand
SHX7_1 = "policehorse"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.inOrganHesit
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "police.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientPermission
        SHX1_2 = "horsetrained.whitelisted"
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          SHX0_2 = SHX5_1
          SHX0_2()
        else
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.notify
          SHX1_2 = "~r~You do not have the [Horse Trained] whitelist."
          SHX0_2(SHX1_2)
        end
      else
        SHX0_2 = tCMG
        SHX0_2 = SHX0_2.notify
        SHX1_2 = "~r~This is only available to the MET Police only."
        SHX0_2(SHX1_2)
      end
    end
  end
end
SHX9_1 = false
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
