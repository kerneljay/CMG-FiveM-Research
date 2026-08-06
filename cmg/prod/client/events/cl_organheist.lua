-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_organheist"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
SHX2_1 = vector3
SHX3_1 = 240.31098937988
SHX4_1 = -1379.8699951172
SHX5_1 = 33.741794586182
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = vector3
SHX4_1 = 231.51065063477
SHX5_1 = -1360.6903076172
SHX6_1 = 28.651802062988
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = 600
SHX5_1 = false
SHX6_1 = false
SHX7_1 = false
SHX8_1 = ""
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = nil
SHX12_1 = AddRelationshipGroup
SHX13_1 = "ORGANHEIST_POLICE"
SHX12_1, SHX13_1 = SHX12_1(SHX13_1)
SHX14_1 = AddRelationshipGroup
SHX15_1 = "ORGANHEIST_CRIMINAL"
SHX14_1, SHX15_1 = SHX14_1(SHX15_1)
SHX16_1 = {}
SHX17_1 = {}
SHX18_1 = 0
SHX19_1 = false
SHX20_1 = false
SHX21_1 = {}
SHX22_1 = {}
SHX23_1 = GetHashKey
SHX24_1 = "prop_gate_military_01"
SHX23_1 = SHX23_1(SHX24_1)
SHX22_1.objectHash = SHX23_1
SHX23_1 = vector3
SHX24_1 = 251.2504
SHX25_1 = -1361.306
SHX26_1 = 23.54731
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX22_1.objectPos = SHX23_1
SHX22_1.objectHeading = 322.19732666016
SHX22_1.objectHandler = 0
SHX21_1.civs = SHX22_1
SHX22_1 = {}
SHX23_1 = GetHashKey
SHX24_1 = "prop_gate_military_01"
SHX23_1 = SHX23_1(SHX24_1)
SHX22_1.objectHash = SHX23_1
SHX23_1 = vector3
SHX24_1 = 251.1472
SHX25_1 = -1361.884
SHX26_1 = 38.54385
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX22_1.objectPos = SHX23_1
SHX22_1.objectHeading = 318.79
SHX22_1.objectHandler = 0
SHX21_1.cops = SHX22_1
SHX22_1 = AddEventHandler
SHX23_1 = "CMG:onClientSpawn"
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  if SHX1_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addMarker
    SHX3_2 = SHX2_1.x
    SHX4_2 = SHX2_1.y
    SHX5_2 = SHX2_1.z
    SHX6_2 = 0.7
    SHX7_2 = 0.7
    SHX8_2 = 0.5
    SHX9_2 = 0
    SHX10_2 = 125
    SHX11_2 = 255
    SHX12_2 = 125
    SHX13_2 = 150
    SHX14_2 = 20
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addBlip
    SHX3_2 = SHX2_1.x
    SHX4_2 = SHX2_1.y
    SHX5_2 = SHX2_1.z
    SHX6_2 = 378
    SHX7_2 = 3
    SHX8_2 = "Organ Heist Police"
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addMarker
    SHX3_2 = SHX3_1.x
    SHX4_2 = SHX3_1.y
    SHX5_2 = SHX3_1.z
    SHX6_2 = 0.7
    SHX7_2 = 0.7
    SHX8_2 = 0.5
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 0
    SHX12_2 = 125
    SHX13_2 = 150
    SHX14_2 = 20
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addBlip
    SHX3_2 = SHX3_1.x
    SHX4_2 = SHX3_1.y
    SHX5_2 = SHX3_1.z
    SHX6_2 = 378
    SHX7_2 = 1
    SHX8_2 = "Organ Heist Criminals"
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = GetPlayerPed
    SHX1_2 = -1
    SHX0_2 = SHX0_2(SHX1_2)
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = SHX3_1
    SHX2_2 = SHX1_2 - SHX2_2
    SHX2_2 = #SHX2_2
    if SHX2_2 < 1.0 then
      SHX2_2 = true
      SHX6_1 = SHX2_2
    else
      SHX2_2 = false
      SHX6_1 = SHX2_2
    end
    SHX2_2 = SHX2_1
    SHX2_2 = SHX1_2 - SHX2_2
    SHX2_2 = #SHX2_2
    if SHX2_2 < 1.0 then
      SHX2_2 = true
      SHX5_1 = SHX2_2
    else
      SHX2_2 = false
      SHX5_1 = SHX2_2
    end
    SHX2_2 = Wait
    SHX3_2 = 250
    SHX2_2(SHX3_2)
  end
end
SHX22_1(SHX23_1)
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX11_1
  if SHX0_2 then
    SHX0_2 = SHX11_1.interiorId
    if SHX0_2 then
      SHX0_2 = SHX11_1.roomKey
      if SHX0_2 then
        SHX0_2 = GetGameTimer
        SHX0_2 = SHX0_2()
        while true do
          SHX1_2 = GetRoomKeyFromEntity
          SHX2_2 = PlayerPedId
          SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          if 0 ~= SHX1_2 then
            break
          end
          SHX1_2 = SHX11_1
          if not SHX1_2 then
            break
          end
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX1_2 = SHX1_2 - SHX0_2
          SHX2_2 = 1000
          if SHX1_2 > SHX2_2 then
            return
          end
          SHX1_2 = PinInteriorInMemory
          SHX2_2 = SHX11_1.interiorId
          SHX1_2(SHX2_2)
          SHX1_2 = ForceRoomForEntity
          SHX2_2 = PlayerPedId
          SHX2_2 = SHX2_2()
          SHX3_2 = SHX11_1.interiorId
          SHX4_2 = SHX11_1.roomKey
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX1_2 = ForceRoomForGameViewport
          SHX2_2 = SHX11_1.interiorId
          SHX3_2 = SHX11_1.roomKey
          SHX1_2(SHX2_2, SHX3_2)
          SHX1_2 = Citizen
          SHX1_2 = SHX1_2.Wait
          SHX2_2 = 0
          SHX1_2(SHX2_2)
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
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = ""
  SHX3_2 = SHX1_2 % 60
  if SHX3_2 <= 9 then
    SHX2_2 = "0"
  else
    SHX2_2 = ""
  end
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX1_2 / 60
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = ":"
  SHX5_2 = SHX2_2
  SHX6_2 = SHX1_2 % 60
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
  return SHX3_2
end
SHX24_1 = false
SHX25_1 = false
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "~r~Press ~INPUT_PICKUP~ to play the Organ Heist!"
    SHX0_2(SHX1_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 38
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX24_1
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientPermission
        SHX1_2 = "police.onduty.permission"
        SHX0_2 = SHX0_2(SHX1_2)
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasClientPermission
          SHX1_2 = "prisonguard.onduty.permission"
          SHX0_2 = SHX0_2(SHX1_2)
          if not SHX0_2 then
            SHX0_2 = SHX7_1
            if not SHX0_2 then
              SHX0_2 = TriggerServerEvent
              SHX1_2 = "a4e8cb308c"
              SHX0_2(SHX1_2)
              SHX0_2 = true
              SHX24_1 = SHX0_2
              SHX0_2 = SetTimeout
              SHX1_2 = 100
              function SHX2_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3
                SHX0_3 = false
                SHX24_1 = SHX0_3
              end
              SHX0_2(SHX1_2, SHX2_2)
            else
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~Already joined the Organ Heist!"
              SHX0_2(SHX1_2)
            end
        end
        else
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.notify
          SHX1_2 = "~r~You are police, please use the other entrance!"
          SHX0_2(SHX1_2)
        end
      end
    end
  else
    SHX0_2 = SHX5_1
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = "~b~Press ~INPUT_PICKUP~ to play the Organ Heist!"
      SHX0_2(SHX1_2)
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 38
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = SHX24_1
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasClientPermission
          SHX1_2 = "police.onduty.permission"
          SHX0_2 = SHX0_2(SHX1_2)
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.hasClientPermission
            SHX1_2 = "prisonguard.onduty.permission"
            SHX0_2 = SHX0_2(SHX1_2)
            if not SHX0_2 then
              goto SHX_LABEL_96
            end
          end
          SHX0_2 = SHX7_1
          if not SHX0_2 then
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "a4e8cb308c"
            SHX0_2(SHX1_2)
            SHX0_2 = true
            SHX24_1 = SHX0_2
            SHX0_2 = SetTimeout
            SHX1_2 = 100
            function SHX2_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3
              SHX0_3 = false
              SHX24_1 = SHX0_3
            end
            SHX0_2(SHX1_2, SHX2_2)
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~Already joined the Organ Heist!"
            SHX0_2(SHX1_2)
            goto SHX_LABEL_100
            -- [FIX IF ERROR] Move ::SHX_LABEL_96:: outside nested blocks until all 'goto SHX_LABEL_96' can see it
            ::SHX_LABEL_96::
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~You are a civilian, please use the other entrance!"
            SHX0_2(SHX1_2)
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_100:: outside nested blocks until all 'goto SHX_LABEL_100' can see it
  ::SHX_LABEL_100::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createTimerBars
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = SHX19_1
    if SHX1_2 then
      SHX1_2 = SHX0_2.push
      SHX2_2 = "STARTS IN:"
      SHX3_2 = SHX23_1
      SHX4_2 = SHX4_1
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2)
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX1_2 = DisablePlayerFiring
      SHX2_2 = PlayerId
      SHX2_2 = SHX2_2()
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = SHX20_1
  if not SHX1_2 then
    SHX1_2 = SHX19_1
    if not SHX1_2 then
      goto SHX_LABEL_217
    end
  end
  SHX1_2 = SHX0_2.push
  SHX2_2 = "~r~Criminals:"
  SHX3_2 = tostring
  SHX4_2 = table
  SHX4_2 = SHX4_2.count
  SHX5_2 = SHX10_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = SHX0_2.push
  SHX2_2 = "~b~Police:"
  SHX3_2 = tostring
  SHX4_2 = table
  SHX4_2 = SHX4_2.count
  SHX5_2 = SHX9_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = SHX0_2.push
  SHX2_2 = "~y~Kills:"
  SHX3_2 = tostring
  SHX4_2 = SHX18_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = drawNativeText
  SHX2_2 = "~b~Kill the enemy team and survive."
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = RemoveWeaponFromPed
  SHX3_2 = SHX1_2
  SHX4_2 = 615608432
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RemoveWeaponFromPed
  SHX3_2 = SHX1_2
  SHX4_2 = -73270376
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RemoveWeaponFromPed
  SHX3_2 = SHX1_2
  SHX4_2 = -2144752413
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RemoveWeaponFromPed
  SHX3_2 = SHX1_2
  SHX4_2 = -795216620
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = GetSelectedPedWeapon
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 911657153 == SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setWeapon
    SHX3_2 = SHX1_2
    SHX4_2 = -1569615261
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX2_2 = GetInteriorFromEntity
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SHX11_1
  if SHX3_2 and 0 == SHX2_2 then
    SHX3_2 = SHX25_1
    if not SHX3_2 then
      SHX3_2 = true
      SHX25_1 = SHX3_2
      SHX3_2 = SetTimeout
      SHX4_2 = 1000
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = false
        SHX25_1 = SHX0_3
      end
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SHX11_1.safePositions
      SHX3_2 = SHX3_2[1]
      SHX4_2 = DoScreenFadeOut
      SHX5_2 = 1000
      SHX4_2(SHX5_2)
      SHX4_2 = NetworkFadeOutEntity
      SHX5_2 = PlayerPedId
      SHX5_2 = SHX5_2()
      SHX6_2 = true
      SHX7_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.CreateThread
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
        SHX0_3 = Wait
        SHX1_3 = 1000
        SHX0_3(SHX1_3)
        SHX0_3 = SetEntityCoords
        SHX1_3 = PlayerPedId
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX3_2.x
        SHX3_3 = SHX3_2.y
        SHX4_3 = SHX3_2.z
        SHX5_3 = true
        SHX6_3 = false
        SHX7_3 = false
        SHX8_3 = false
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
        SHX0_3 = SHX22_1
        SHX0_3()
        SHX0_3 = NetworkFadeInEntity
        SHX1_3 = PlayerPedId
        SHX1_3 = SHX1_3()
        SHX2_3 = false
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = DoScreenFadeIn
        SHX1_3 = 1000
        SHX0_3(SHX1_3)
      end
      SHX4_2(SHX5_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_217:: outside nested blocks until all 'goto SHX_LABEL_217' can see it
  ::SHX_LABEL_217::
  SHX1_2 = SHX0_2.rowCount
  SHX1_2 = SHX1_2()
  if SHX1_2 > 0 then
    SHX1_2 = SHX0_2.draw
    SHX1_2()
  end
end
SHX27_1 = CMG
SHX27_1 = SHX27_1.createThreadOnTick
SHX28_1 = SHX26_1
SHX29_1 = "Organ Heist Enter"
SHX27_1(SHX28_1, SHX29_1)
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = true
  SHX1_2 = SetTimeout
  SHX2_2 = 5000
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX0_2 = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    function SHX0_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4, SHX2_4, SHX3_4, SHX4_4
      SHX1_4 = RequestScaleformMovie
      SHX2_4 = SHX0_4
      SHX1_4 = SHX1_4(SHX2_4)
      while true do
        SHX2_4 = HasScaleformMovieLoaded
        SHX3_4 = SHX1_4
        SHX2_4 = SHX2_4(SHX3_4)
        if SHX2_4 then
          break
        end
        SHX2_4 = Citizen
        SHX2_4 = SHX2_4.Wait
        SHX3_4 = 0
        SHX2_4(SHX3_4)
      end
      SHX2_4 = BeginScaleformMovieMethod
      SHX3_4 = SHX1_4
      SHX4_4 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      SHX2_4(SHX3_4, SHX4_4)
      SHX2_4 = _ENV
      SHX3_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX2_4 = SHX2_4[SHX3_4]
      SHX3_4 = "~g~ORGAN HEIST!"
      SHX2_4(SHX3_4)
      SHX2_4 = _ENV
      SHX3_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX2_4 = SHX2_4[SHX3_4]
      SHX3_4 = "Survive the Organ Heist and win \194\163250,000"
      SHX2_4(SHX3_4)
      SHX2_4 = EndScaleformMovieMethod
      SHX2_4()
      return SHX1_4
    end
    SHX1_3 = SHX0_3
    SHX2_3 = "mp_big_message_freemode"
    SHX1_3 = SHX1_3(SHX2_3)
    SHX2_3 = PlaySound
    SHX3_3 = -1
    SHX4_3 = "Hit"
    SHX5_3 = "RESPAWN_SOUNDSET"
    SHX6_3 = false
    SHX7_3 = 0
    SHX8_3 = true
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    while true do
      SHX2_3 = SHX0_2
      if not SHX2_3 then
        break
      end
      SHX2_3 = 0.5
      SHX3_3 = 0.35
      SHX4_3 = 1.0
      SHX5_3 = SHX4_3
      SHX6_3 = DrawScaleformMovie
      SHX7_3 = SHX1_3
      SHX8_3 = SHX2_3
      SHX9_3 = SHX3_3
      SHX10_3 = SHX4_3
      SHX11_3 = SHX5_3
      SHX12_3 = 0
      SHX13_3 = 0
      SHX14_3 = 0
      SHX15_3 = 0
      SHX16_3 = 0
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      SHX6_3 = Wait
      SHX7_3 = 0
      SHX6_3(SHX7_3)
    end
  end
  SHX1_2(SHX2_2)
end
SHX28_1 = RegisterNetEvent
SHX29_1 = "f97f1fc29a"
function SHX30_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX4_1 = SHX1_2
  SHX8_1 = SHX2_2
  SHX6_2 = SHX0_1.locations
  SHX6_2 = SHX6_2[SHX3_2]
  SHX7_2 = SHX6_2.requestIpls
  if SHX7_2 then
    SHX7_2 = pairs
    SHX8_2 = SHX6_2.requestIpls
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = RequestIpl
      SHX14_2 = SHX12_2
      SHX13_2(SHX14_2)
    end
  end
  SHX7_2 = SHX6_2.sides
  SHX7_2 = SHX7_2[SHX4_2]
  SHX11_1 = SHX7_2
  SHX7_2 = true
  SHX7_1 = SHX7_2
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.setCanAnim
  SHX8_2 = false
  SHX7_2(SHX8_2)
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.CreateThread
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX4_1
      SHX0_3 = SHX0_3 - 1
      SHX4_1 = SHX0_3
      SHX0_3 = Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
    end
  end
  SHX7_2(SHX8_2)
  SHX7_2 = true
  SHX1_1 = SHX7_2
  SHX7_2 = true
  SHX19_1 = SHX7_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.deleteGreenzone
  SHX8_2 = "organ"
  SHX7_2(SHX8_2)
  SHX7_2 = SetRelationshipBetweenGroups
  SHX8_2 = 5
  SHX9_2 = SHX13_1
  SHX10_2 = SHX15_1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetRelationshipBetweenGroups
  SHX8_2 = 5
  SHX9_2 = SHX15_1
  SHX10_2 = SHX13_1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  if "civ" == SHX2_2 then
    SHX7_2 = SetPedRelationshipGroupHash
    SHX8_2 = PlayerPedId
    SHX8_2 = SHX8_2()
    SHX9_2 = SHX15_1
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.createAtm
    SHX8_2 = "Organ Heist"
    SHX9_2 = SHX11_1.atmLocation
    SHX7_2(SHX8_2, SHX9_2)
  elseif "police" == SHX2_2 then
    SHX7_2 = SetPedRelationshipGroupHash
    SHX8_2 = PlayerPedId
    SHX8_2 = SHX8_2()
    SHX9_2 = SHX13_1
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX7_2 = pairs
  SHX8_2 = SHX11_1.gunStores
  SHX9_2 = SHX8_1
  SHX8_2 = SHX8_2[SHX9_2]
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.createGunStore
    SHX14_2 = SHX12_2[1]
    SHX15_2 = SHX12_2[2]
    SHX16_2 = SHX12_2[3]
    SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.isEmergencyService
  SHX7_2 = SHX7_2()
  if SHX7_2 then
    SHX7_2 = TriggerEvent
    SHX8_2 = "24a888d2b3"
    SHX7_2(SHX8_2)
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.setFriendlyFire
  SHX8_2 = false
  SHX7_2(SHX8_2)
  SHX7_2 = DoScreenFadeOut
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = NetworkFadeOutEntity
  SHX8_2 = SHX5_2
  SHX9_2 = true
  SHX10_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = Wait
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = SetEntityCoords
  SHX8_2 = SHX5_2
  SHX9_2 = SHX0_2.x
  SHX10_2 = SHX0_2.y
  SHX11_2 = SHX0_2.z
  SHX12_2 = true
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = SHX22_1
  SHX7_2()
  SHX7_2 = NetworkFadeInEntity
  SHX8_2 = SHX5_2
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = DoScreenFadeIn
  SHX8_2 = 1000
  SHX7_2(SHX8_2)
  SHX7_2 = SHX27_1
  SHX7_2()
  SHX7_2 = PrepareMusicEvent
  SHX8_2 = "AH3B_HALF_RAPPEL"
  SHX7_2(SHX8_2)
  SHX7_2 = TriggerMusicEvent
  SHX8_2 = "AH3B_HALF_RAPPEL"
  SHX7_2(SHX8_2)
  SHX7_2 = SHX6_2.fakeCollisions
  if SHX7_2 then
    SHX7_2 = pairs
    SHX8_2 = SHX6_2.fakeCollisions
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.loadModel
      SHX14_2 = SHX12_2[1]
      SHX13_2(SHX14_2)
      SHX13_2 = SHX12_2[2]
      SHX14_2 = SHX12_2[3]
      SHX15_2 = CreateObjectNoOffset
      SHX16_2 = SHX12_2[1]
      SHX17_2 = SHX13_2.x
      SHX18_2 = SHX13_2.y
      SHX19_2 = SHX13_2.z
      SHX20_2 = false
      SHX21_2 = false
      SHX22_2 = false
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX16_2 = SetEntityQuaternion
      SHX17_2 = SHX15_2
      SHX18_2 = SHX14_2.x
      SHX19_2 = SHX14_2.y
      SHX20_2 = SHX14_2.z
      SHX21_2 = SHX14_2.w
      SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX16_2 = FreezeEntityPosition
      SHX17_2 = SHX15_2
      SHX18_2 = true
      SHX16_2(SHX17_2, SHX18_2)
      SHX16_2 = SetEntityVisible
      SHX17_2 = SHX15_2
      SHX18_2 = false
      SHX19_2 = false
      SHX16_2(SHX17_2, SHX18_2, SHX19_2)
      SHX16_2 = table
      SHX16_2 = SHX16_2.insert
      SHX17_2 = SHX16_1
      SHX18_2 = SHX15_2
      SHX16_2(SHX17_2, SHX18_2)
    end
  end
  SHX7_2 = SHX6_2.customObjects
  if SHX7_2 then
    SHX7_2 = pairs
    SHX8_2 = SHX6_2.customObjects
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.loadModel
      SHX14_2 = SHX12_2[1]
      SHX13_2(SHX14_2)
      SHX13_2 = SHX12_2[2]
      SHX14_2 = SHX12_2[3]
      SHX15_2 = CreateObjectNoOffset
      SHX16_2 = SHX12_2[1]
      SHX17_2 = SHX13_2.x
      SHX18_2 = SHX13_2.y
      SHX19_2 = SHX13_2.z
      SHX20_2 = false
      SHX21_2 = false
      SHX22_2 = false
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX16_2 = SetEntityQuaternion
      SHX17_2 = SHX15_2
      SHX18_2 = SHX14_2.x
      SHX19_2 = SHX14_2.y
      SHX20_2 = SHX14_2.z
      SHX21_2 = SHX14_2.w
      SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX16_2 = FreezeEntityPosition
      SHX17_2 = SHX15_2
      SHX18_2 = true
      SHX16_2(SHX17_2, SHX18_2)
      SHX16_2 = table
      SHX16_2 = SHX16_2.insert
      SHX17_2 = SHX17_1
      SHX18_2 = SHX15_2
      SHX16_2(SHX17_2, SHX18_2)
    end
  end
end
SHX28_1(SHX29_1, SHX30_1)
SHX28_1 = RegisterNetEvent
SHX29_1 = "d1ed3013ed"
function SHX30_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  if "civ" == SHX1_2 then
    SHX2_2 = SHX10_1
    SHX2_2[SHX0_2] = true
  elseif "police" == SHX1_2 then
    SHX2_2 = SHX9_1
    SHX2_2[SHX0_2] = true
  end
end
SHX28_1(SHX29_1, SHX30_1)
SHX28_1 = RegisterNetEvent
SHX29_1 = "f74fa40acb"
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = PlaySoundFrontend
  SHX2_2 = -1
  SHX3_2 = "Weapon_Upgrade"
  SHX4_2 = "DLC_GR_Weapon_Upgrade_Soundset"
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.playScreenEffect
  SHX2_2 = "MP_Celeb_Win"
  SHX3_2 = 0.25
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = "~g~Killed "
  SHX3_2 = SHX0_2
  SHX4_2 = " received \194\16325,000"
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.isInComa
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = GetEntityHealth
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = 200
    if SHX2_2 < SHX3_2 then
      SHX3_2 = SetEntityHealth
      SHX4_2 = SHX1_2
      SHX5_2 = math
      SHX5_2 = SHX5_2.min
      SHX6_2 = SHX2_2 + 25
      SHX7_2 = 200
      SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX3_2 = notify
      SHX4_2 = "~b~25% health given for kill!"
      SHX3_2(SHX4_2)
    end
  end
end
SHX28_1(SHX29_1, SHX30_1)
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX11_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = 1000.0
  SHX1_2 = 0.0
  SHX2_2 = GetEntityCoords
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = pairs
  SHX4_2 = SHX11_1.pastGates
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX2_2 - SHX8_2
    SHX9_2 = #SHX9_2
    if SHX0_2 > SHX9_2 then
      SHX0_2 = SHX9_2
    end
    if SHX1_2 < SHX9_2 then
      SHX1_2 = SHX9_2
    end
  end
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  return SHX3_2, SHX4_2
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX19_1
  if SHX0_2 then
    SHX0_2 = SHX28_1
    SHX0_2 = SHX0_2()
    if SHX0_2 < 3.0 then
      SHX1_2 = SHX25_1
      if not SHX1_2 then
        SHX1_2 = true
        SHX25_1 = SHX1_2
        SHX1_2 = SetTimeout
        SHX2_2 = 1000
        function SHX3_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = false
          SHX25_1 = SHX0_3
        end
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = DoScreenFadeOut
        SHX2_2 = 1000
        SHX1_2(SHX2_2)
        SHX1_2 = NetworkFadeOutEntity
        SHX2_2 = PlayerPedId
        SHX2_2 = SHX2_2()
        SHX3_2 = true
        SHX4_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX1_2 = Citizen
        SHX1_2 = SHX1_2.CreateThread
        function SHX2_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
          SHX0_3 = Wait
          SHX1_3 = 1000
          SHX0_3(SHX1_3)
          SHX0_3 = SHX11_1
          if SHX0_3 then
            SHX0_3 = SHX19_1
            if SHX0_3 then
              SHX0_3 = SHX11_1.safePositions
              SHX0_3 = SHX0_3[1]
              SHX1_3 = SetEntityCoords
              SHX2_3 = PlayerPedId
              SHX2_3 = SHX2_3()
              SHX3_3 = SHX0_3.x
              SHX4_3 = SHX0_3.y
              SHX5_3 = SHX0_3.z
              SHX6_3 = true
              SHX7_3 = false
              SHX8_3 = false
              SHX9_3 = false
              SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX1_3 = SHX22_1
              SHX1_3()
              SHX1_3 = NetworkFadeInEntity
              SHX2_3 = PlayerPedId
              SHX2_3 = SHX2_3()
              SHX3_3 = false
              SHX1_3(SHX2_3, SHX3_3)
              SHX1_3 = DoScreenFadeIn
              SHX2_3 = 1000
              SHX1_3(SHX2_3)
              SHX1_3 = tCMG
              SHX1_3 = SHX1_3.notify
              SHX2_3 = "~r~You got too far from the organ heist and have been teleported back."
              SHX1_3(SHX2_3)
          end
          else
            SHX0_3 = NetworkFadeInEntity
            SHX1_3 = PlayerPedId
            SHX1_3 = SHX1_3()
            SHX2_3 = false
            SHX0_3(SHX1_3, SHX2_3)
            SHX0_3 = DoScreenFadeIn
            SHX1_3 = 1000
            SHX0_3(SHX1_3)
          end
        end
        SHX1_2(SHX2_2)
      end
    end
  end
  SHX0_2 = SHX20_1
  if SHX0_2 then
    SHX0_2 = SHX28_1
    SHX0_2, SHX1_2 = SHX0_2()
    SHX2_2 = 350.0
    if SHX1_2 > SHX2_2 then
      SHX2_2 = SHX25_1
      if not SHX2_2 then
        SHX2_2 = true
        SHX25_1 = SHX2_2
        SHX2_2 = SetTimeout
        SHX3_2 = 1000
        function SHX4_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = false
          SHX25_1 = SHX0_3
        end
        SHX2_2(SHX3_2, SHX4_2)
        SHX2_2 = DoScreenFadeOut
        SHX3_2 = 1000
        SHX2_2(SHX3_2)
        SHX2_2 = NetworkFadeOutEntity
        SHX3_2 = PlayerPedId
        SHX3_2 = SHX3_2()
        SHX4_2 = true
        SHX5_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = Citizen
        SHX2_2 = SHX2_2.CreateThread
        function SHX3_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
          SHX0_3 = Wait
          SHX1_3 = 1000
          SHX0_3(SHX1_3)
          SHX0_3 = SHX11_1
          if SHX0_3 then
            SHX0_3 = SHX20_1
            if SHX0_3 then
              SHX0_3 = SHX11_1.safePositions
              SHX0_3 = SHX0_3[1]
              SHX1_3 = SetEntityCoords
              SHX2_3 = PlayerPedId
              SHX2_3 = SHX2_3()
              SHX3_3 = SHX0_3.x
              SHX4_3 = SHX0_3.y
              SHX5_3 = SHX0_3.z
              SHX6_3 = true
              SHX7_3 = false
              SHX8_3 = false
              SHX9_3 = false
              SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX1_3 = SHX22_1
              SHX1_3()
              SHX1_3 = NetworkFadeInEntity
              SHX2_3 = PlayerPedId
              SHX2_3 = SHX2_3()
              SHX3_3 = false
              SHX1_3(SHX2_3, SHX3_3)
              SHX1_3 = DoScreenFadeIn
              SHX2_3 = 1000
              SHX1_3(SHX2_3)
              SHX1_3 = tCMG
              SHX1_3 = SHX1_3.notify
              SHX2_3 = "~r~You got too far from the organ heist and have been teleported back."
              SHX1_3(SHX2_3)
            end
          end
        end
        SHX2_2(SHX3_2)
      end
    end
    SHX2_2 = SHX8_1
    if "civ" == SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerCombatTimer
      SHX2_2 = SHX2_2()
      if SHX2_2 <= 5 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.setPlayerCombatTimer
        SHX3_2 = 60
        SHX4_2 = false
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerBucket
    SHX2_2 = SHX2_2()
    if 1 == SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isClientAFK
      SHX2_2 = SHX2_2()
      if not SHX2_2 then
        goto SHX_LABEL_90
      end
    end
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "3c0a39132b"
    SHX4_2 = nil
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setDeathInOrganHeist
    SHX2_2()
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_90:: outside nested blocks until all 'goto SHX_LABEL_90' can see it
  ::SHX_LABEL_90::
end
SHX30_1 = CMG
SHX30_1 = SHX30_1.createThreadOnTick
SHX31_1 = SHX29_1
SHX32_1 = "Organ Heist Bounds"
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "fa5b816697"
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = false
  SHX19_1 = SHX0_2
  SHX0_2 = true
  SHX20_1 = SHX0_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "5s_To_Event_Start_Countdown"
  SHX3_2 = "GTAO_FM_Events_Soundset"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  SHX0_2 = DisablePlayerFiring
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCanOpenLeaderboard
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setMaximumLeaderboardRows
  SHX1_2 = 10
  SHX0_2(SHX1_2)
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "651c377c85"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX9_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX9_1
    SHX1_2[SHX0_2] = nil
  end
  SHX1_2 = SHX10_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX10_1
    SHX1_2[SHX0_2] = nil
  end
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = AddEventHandler
SHX31_1 = "onResourceStop"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX21_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2 = DeleteObject
      SHX7_2 = SHX21_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.objectHandler
      SHX6_2(SHX7_2)
    end
  end
end
SHX30_1(SHX31_1, SHX32_1)
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX16_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX16_1 = SHX0_2
end
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX17_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX17_1 = SHX0_2
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = 0
  while true do
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX1_2
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX1_2
    SHX4_2 = true
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = SHX2_1
    SHX2_2 = SHX2_2 - SHX3_2
    SHX2_2 = #SHX2_2
    if SHX2_2 < 5.0 then
      SHX2_2 = IsEntityVisible
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        if 0 == SHX0_2 then
          SHX2_2 = GetGameTimer
          SHX2_2 = SHX2_2()
          SHX0_2 = SHX2_2
        else
          SHX2_2 = GetGameTimer
          SHX2_2 = SHX2_2()
          SHX2_2 = SHX2_2 - SHX0_2
          SHX3_2 = 2000
          if SHX2_2 > SHX3_2 then
            break
          end
        end
    end
    else
      SHX2_2 = SetEntityCoords
      SHX3_2 = SHX1_2
      SHX4_2 = SHX2_1.x
      SHX5_2 = SHX2_1.y
      SHX6_2 = SHX2_1.z
      SHX6_2 = SHX6_2 - 1.0
      SHX7_2 = true
      SHX8_2 = false
      SHX9_2 = false
      SHX10_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX2_2 = SetEntityVisible
      SHX3_2 = SHX1_2
      SHX4_2 = true
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX0_2 = 0
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
SHX33_1 = RegisterNetEvent
SHX34_1 = "feee42063b"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createGreenzone
  SHX2_2 = "organ"
  SHX3_2 = vector3
  SHX4_2 = 236.02685546875
  SHX5_2 = -1373.7049560547
  SHX6_2 = 33.010623931885
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = 40.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = {}
  SHX9_1 = SHX1_2
  SHX1_2 = {}
  SHX10_1 = SHX1_2
  SHX1_2 = false
  SHX7_1 = SHX1_2
  SHX1_2 = false
  SHX1_1 = SHX1_2
  SHX1_2 = false
  SHX19_1 = SHX1_2
  SHX1_2 = false
  SHX20_1 = SHX1_2
  SHX1_2 = 600
  SHX4_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.deleteAtm
  SHX2_2 = "Organ Heist"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX11_1
  if SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX11_1.gunStores
    SHX3_2 = SHX8_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.deleteGunStore
      SHX8_2 = SHX6_2[1]
      SHX7_2(SHX8_2)
    end
  end
  SHX1_2 = ""
  SHX8_1 = SHX1_2
  SHX1_2 = SHX11_1
  if SHX1_2 then
    SHX1_2 = SHX11_1.interiorId
    if SHX1_2 then
      SHX1_2 = UnpinInterior
      SHX2_2 = SHX11_1.interiorId
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = nil
  SHX11_1 = SHX1_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setFriendlyFire
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = PrepareMusicEvent
  SHX2_2 = "BST_STOP"
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerMusicEvent
  SHX2_2 = "BST_STOP"
  SHX1_2(SHX2_2)
  SHX1_2 = ExecuteCommand
  SHX2_2 = "storeallweapons"
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 10000
  SHX1_2(SHX2_2)
  SHX1_2 = GetEntityHealth
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if SHX1_2 <= 102 or SHX0_2 then
    SHX1_2 = TriggerEvent
    SHX2_2 = "193ee4e15e"
    SHX1_2(SHX2_2)
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = DoScreenFadeOut
    SHX3_2 = 1000
    SHX2_2(SHX3_2)
    SHX2_2 = NetworkFadeOutEntity
    SHX3_2 = SHX1_2
    SHX4_2 = true
    SHX5_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = Wait
    SHX3_2 = 1000
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.CreateThread
    SHX3_2 = SHX32_1
    SHX2_2(SHX3_2)
    SHX2_2 = NetworkFadeInEntity
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = DoScreenFadeIn
    SHX3_2 = 1000
    SHX2_2(SHX3_2)
  end
  SHX1_2 = SHX30_1
  SHX1_2()
  SHX1_2 = SHX31_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPlayerCanOpenLeaderboard
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.clearLeaderboardData
  SHX1_2()
  SHX1_2 = Wait
  SHX2_2 = 1000
  SHX1_2(SHX2_2)
  SHX1_2 = ClearRelationshipBetweenGroups
  SHX2_2 = 5
  SHX3_2 = SHX15_1
  SHX4_2 = SHX13_1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = ClearRelationshipBetweenGroups
  SHX2_2 = 5
  SHX3_2 = SHX13_1
  SHX4_2 = SHX15_1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetPedRelationshipGroupHash
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = 1862763509
  SHX1_2(SHX2_2, SHX3_2)
end
SHX33_1(SHX34_1, SHX35_1)
function SHX33_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX4_2 = ClearTimecycleModifier
  SHX4_2()
  SHX4_2 = {}
  SHX5_2 = Scaleform
  SHX6_2 = "MP_CELEBRATION"
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2.handle = SHX5_2
  SHX5_2 = Scaleform
  SHX6_2 = "MP_CELEBRATION_BG"
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2.handle2 = SHX5_2
  SHX5_2 = Scaleform
  SHX6_2 = "MP_CELEBRATION_FG"
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2.handle3 = SHX5_2
  SHX5_2 = pairs
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "CLEANUP"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX13_2[1] = SHX14_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "CREATE_STAT_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX15_2 = "HUD_COLOUR_BLACK"
    SHX16_2 = "70.0"
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "SET_PAUSE_DURATION"
    SHX13_2 = {}
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = ScaleformMovieMethodAddParamFloat
      SHX1_3 = 2.5
      SHX0_3(SHX1_3)
    end
    SHX13_2[1] = SHX14_2
    SHX11_2(SHX12_2, SHX13_2)
    if 0 ~= SHX3_2 then
      SHX11_2 = SHX10_2.RunFunction
      SHX12_2 = "ADD_CASH_TO_WALL"
      SHX13_2 = {}
      SHX14_2 = "WINNER"
      SHX15_2 = SHX3_2
      SHX16_2 = true
      SHX13_2[1] = SHX14_2
      SHX13_2[2] = SHX15_2
      SHX13_2[3] = SHX16_2
      SHX11_2(SHX12_2, SHX13_2)
    end
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "ADD_WINNER_TO_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX15_2 = "CELEB_WINNER"
    SHX16_2 = SHX0_2
    SHX17_2 = ""
    SHX18_2 = 0
    SHX19_2 = false
    SHX20_2 = ""
    SHX21_2 = false
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX13_2[4] = SHX17_2
    SHX13_2[5] = SHX18_2
    SHX13_2[6] = SHX19_2
    SHX13_2[7] = SHX20_2
    SHX13_2[8] = SHX21_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "ADD_BACKGROUND_TO_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX15_2 = 75
    SHX16_2 = 0
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "SHOW_STAT_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX13_2[1] = SHX14_2
    SHX11_2(SHX12_2, SHX13_2)
  end
  SHX5_2 = SHX4_2.handle
  SHX6_2 = SHX4_2.handle2
  SHX7_2 = SHX4_2.handle3
  return SHX5_2, SHX6_2, SHX7_2
end
function SHX34_1(SHX0_2)
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = false
    SHX1_3 = SHX33_1
    SHX2_3 = SHX0_2
    SHX3_3 = 2
    SHX4_3 = 100
    SHX5_3 = 250000
    SHX1_3, SHX2_3, SHX3_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    if not SHX0_3 then
      SHX0_3 = true
    end
    SHX4_3 = SetTimeout
    SHX5_3 = 10000
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = false
      SHX0_3 = SHX0_4
    end
    SHX4_3(SHX5_3, SHX6_3)
    while SHX0_3 do
      SHX4_3 = Wait
      SHX5_3 = 0
      SHX4_3(SHX5_3)
      SHX4_3 = HideHudAndRadarThisFrame
      SHX4_3()
      SHX4_3 = DrawScaleformMovieFullscreenMasked
      SHX5_3 = SHX2_3.Handle
      SHX6_3 = SHX3_3.Handle
      SHX7_3 = 255
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
      SHX4_3 = SHX1_3.Render2D
      SHX4_3()
    end
  end
  SHX1_2(SHX2_2)
end
SHX35_1 = RegisterNetEvent
SHX36_1 = "b4412012ff"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = Wait
  SHX2_2 = 10000
  SHX1_2(SHX2_2)
  SHX1_2 = SHX34_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setFriendlyFire
  SHX3_2 = true
  SHX2_2(SHX3_2)
  SHX2_2 = DoScreenFadeOut
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = NetworkFadeOutEntity
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = Wait
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  SHX3_2 = SHX32_1
  SHX2_2(SHX3_2)
  SHX2_2 = NetworkFadeInEntity
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = SHX30_1
  SHX2_2()
  SHX2_2 = SHX31_1
  SHX2_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setPlayerCanOpenLeaderboard
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.clearLeaderboardData
  SHX2_2()
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = CMG
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = false
  SHX19_1 = SHX0_2
  SHX0_2 = false
  SHX20_1 = SHX0_2
end
SHX35_1.setDeathInOrganHeist = SHX36_1
SHX35_1 = CMG
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX35_1.inOrganHesit = SHX36_1
SHX35_1 = RegisterNetEvent
SHX36_1 = "2981026492"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createGreenzone
    SHX2_2 = "organ"
    SHX3_2 = vector3
    SHX4_2 = 236.02685546875
    SHX5_2 = -1373.7049560547
    SHX6_2 = 33.010623931885
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = 40.0
    SHX5_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.deleteGreenzone
    SHX2_2 = "organ"
    SHX1_2(SHX2_2)
  end
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "7196c1daff"
function SHX37_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getLocalPlayerSrc
  SHX2_2 = SHX2_2()
  if SHX2_2 == SHX0_2 then
    SHX18_1 = SHX1_2
  end
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if -1 == SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.addPlayerToLeaderboard
  SHX4_2 = {}
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerName
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = ""
  SHX7_2 = ""
  SHX8_2 = true
  SHX9_2 = 0
  SHX4_2.playerSrc = SHX0_2
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.updateScoreboard
  SHX4_2 = SHX0_2
  SHX5_2 = 5
  SHX6_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = 0
SHX36_1 = 0
SHX37_1 = {}
SHX38_1 = {}
SHX39_1 = false
function SHX40_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = IsNamedRendertargetRegistered
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = RegisterNamedRendertarget
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = IsNamedRendertargetLinked
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = LinkNamedRendertarget
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = IsNamedRendertargetLinked
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = GetNamedRendertargetRenderId
    SHX3_2 = SHX0_2
    return SHX2_2(SHX3_2)
  else
    SHX2_2 = 0
    return SHX2_2
  end
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX0_1.tvModelHash
  SHX0_2(SHX1_2)
  SHX0_2 = CreateObject
  SHX1_2 = SHX0_1.tvModelHash
  SHX2_2 = SHX0_1.tvPosition
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_1.tvPosition
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_1.tvPosition
  SHX4_2 = SHX4_2.z
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX35_1 = SHX0_2
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = SHX0_1.tvModelHash
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityHeading
  SHX1_2 = SHX35_1
  SHX2_2 = SHX0_1.tvPosition
  SHX2_2 = SHX2_2.w
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetEntityLodDist
  SHX1_2 = SHX35_1
  SHX2_2 = 75
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX40_1
  SHX1_2 = "cmgtv9"
  SHX2_2 = SHX0_1.tvModelHash
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX36_1 = SHX0_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "c2fd3b9175"
  SHX0_2(SHX1_2)
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX35_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX35_1 = SHX0_2
  SHX0_2 = ReleaseNamedRendertarget
  SHX1_2 = "cmgtv9"
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX36_1 = SHX0_2
end
SHX43_1 = {}
SHX44_1 = {}
SHX45_1 = 255
SHX46_1 = 215
SHX47_1 = 0
SHX44_1[1] = SHX45_1
SHX44_1[2] = SHX46_1
SHX44_1[3] = SHX47_1
SHX45_1 = {}
SHX46_1 = 192
SHX47_1 = 192
SHX48_1 = 192
SHX45_1[1] = SHX46_1
SHX45_1[2] = SHX47_1
SHX45_1[3] = SHX48_1
SHX46_1 = {}
SHX47_1 = 140
SHX48_1 = 120
SHX49_1 = 83
SHX46_1[1] = SHX47_1
SHX46_1[2] = SHX48_1
SHX46_1[3] = SHX49_1
SHX47_1 = {}
SHX48_1 = 140
SHX49_1 = 120
SHX50_1 = 83
SHX47_1[1] = SHX48_1
SHX47_1[2] = SHX49_1
SHX47_1[3] = SHX50_1
SHX48_1 = {}
SHX49_1 = 140
SHX50_1 = 120
SHX51_1 = 83
SHX48_1[1] = SHX49_1
SHX48_1[2] = SHX50_1
SHX48_1[3] = SHX51_1
SHX43_1[1] = SHX44_1
SHX43_1[2] = SHX45_1
SHX43_1[3] = SHX46_1
SHX43_1[4] = SHX47_1
SHX43_1[5] = SHX48_1
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX1_2 = SHX0_2.distance
  if SHX1_2 > 50.0 then
    return
  end
  SHX1_2 = SetTextRenderId
  SHX2_2 = SHX36_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawOrder
  SHX2_2 = 4
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawBehindPausemenu
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.6
  SHX3_2 = 0.0
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.7
  SHX7_2 = SHX39_1
  if SHX7_2 then
    SHX7_2 = "Top Earnings"
    if SHX7_2 then
      goto SHX_LABEL_27
    end
  end
  SHX7_2 = "Top Streaks"
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 200
  SHX12_2 = 4
  SHX13_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.15
  SHX3_2 = 0.17
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.4
  SHX7_2 = "Name"
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX12_2 = 4
  SHX13_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.5
  SHX3_2 = 0.17
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.4
  SHX7_2 = "Perm ID"
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX12_2 = 4
  SHX13_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.9
  SHX3_2 = 0.17
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.4
  SHX7_2 = SHX39_1
  if SHX7_2 then
    SHX7_2 = "Amount"
    if SHX7_2 then
      goto SHX_LABEL_75
    end
  end
  SHX7_2 = "Days"
  -- [FIX IF ERROR] Move ::SHX_LABEL_75:: outside nested blocks until all 'goto SHX_LABEL_75' can see it
  ::SHX_LABEL_75::
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX12_2 = 4
  SHX13_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawRect
  SHX2_2 = 0.5
  SHX3_2 = 0.26
  SHX4_2 = 0.95
  SHX5_2 = 0.005
  SHX6_2 = 248
  SHX7_2 = 246
  SHX8_2 = 240
  SHX9_2 = 255
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = pairs
  SHX2_2 = SHX39_1
  if SHX2_2 then
    SHX2_2 = SHX38_1
    if SHX2_2 then
      goto SHX_LABEL_100
    end
  end
  SHX2_2 = SHX37_1
  -- [FIX IF ERROR] Move ::SHX_LABEL_100:: outside nested blocks until all 'goto SHX_LABEL_100' can see it
  ::SHX_LABEL_100::
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX43_1
    SHX7_2 = SHX7_2[SHX5_2]
    if SHX7_2 and SHX6_2 then
      SHX8_2 = DrawAdvancedText
      SHX9_2 = 0.15
      SHX10_2 = 0.07 * SHX5_2
      SHX10_2 = 0.205 + SHX10_2
      SHX11_2 = 0.005
      SHX12_2 = 0.0028
      SHX13_2 = 0.34
      SHX14_2 = SHX6_2[1]
      SHX15_2 = SHX7_2[1]
      SHX16_2 = SHX7_2[2]
      SHX17_2 = SHX7_2[3]
      SHX18_2 = 255
      SHX19_2 = 4
      SHX20_2 = 1
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX8_2 = DrawAdvancedText
      SHX9_2 = 0.5
      SHX10_2 = 0.07 * SHX5_2
      SHX10_2 = 0.205 + SHX10_2
      SHX11_2 = 0.005
      SHX12_2 = 0.0028
      SHX13_2 = 0.35
      SHX14_2 = SHX6_2[2]
      SHX15_2 = SHX7_2[1]
      SHX16_2 = SHX7_2[2]
      SHX17_2 = SHX7_2[3]
      SHX18_2 = 255
      SHX19_2 = 4
      SHX20_2 = 1
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX8_2 = SHX39_1
      if SHX8_2 then
        SHX8_2 = "\194\163"
        SHX9_2 = getMoneyStringFormatted
        SHX10_2 = SHX6_2[3]
        SHX9_2 = SHX9_2(SHX10_2)
        SHX8_2 = SHX8_2 .. SHX9_2
        if SHX8_2 then
          goto SHX_LABEL_153
        end
      end
      SHX8_2 = SHX6_2[3]
      -- [FIX IF ERROR] Move ::SHX_LABEL_153:: outside nested blocks until all 'goto SHX_LABEL_153' can see it
      ::SHX_LABEL_153::
      SHX9_2 = DrawAdvancedText
      SHX10_2 = 0.9
      SHX11_2 = 0.07 * SHX5_2
      SHX11_2 = 0.205 + SHX11_2
      SHX12_2 = 0.005
      SHX13_2 = 0.0028
      SHX14_2 = 0.35
      SHX15_2 = SHX8_2
      SHX16_2 = SHX7_2[1]
      SHX17_2 = SHX7_2[2]
      SHX18_2 = SHX7_2[3]
      SHX19_2 = 255
      SHX20_2 = 4
      SHX21_2 = 1
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    end
  end
  SHX1_2 = SetTextRenderId
  SHX2_2 = GetDefaultScriptRendertargetRenderId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX2_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX1_2 = SetScriptGfxDrawBehindPausemenu
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.distance
  SHX2_2 = 2.5
  if SHX1_2 < SHX2_2 then
    SHX1_2 = drawNativeNotification
    SHX2_2 = "Press ~INPUT_CONTEXT~ to switch to "
    SHX3_2 = SHX39_1
    if SHX3_2 then
      SHX3_2 = "streaks"
      if SHX3_2 then
        goto SHX_LABEL_193
      end
    end
    SHX3_2 = "earnings"
    -- [FIX IF ERROR] Move ::SHX_LABEL_193:: outside nested blocks until all 'goto SHX_LABEL_193' can see it
    ::SHX_LABEL_193::
    SHX2_2 = SHX2_2 .. SHX3_2
    SHX1_2(SHX2_2)
    SHX1_2 = IsControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 51
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "e680167e6a"
      SHX1_2(SHX2_2)
    end
  end
end
SHX45_1 = CMG
SHX45_1 = SHX45_1.createArea
SHX46_1 = "organheist_tv"
SHX47_1 = SHX0_1.tvPosition
SHX47_1 = SHX47_1.xyz
SHX48_1 = 100.0
SHX49_1 = 500.0
SHX50_1 = SHX41_1
SHX51_1 = SHX42_1
SHX52_1 = SHX44_1
SHX53_1 = {}
SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX45_1 = AddEventHandler
SHX46_1 = "onResourceStop"
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX35_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX35_1
      SHX1_2(SHX2_2)
    end
  end
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = RegisterNetEvent
SHX46_1 = "b606d9a2c6"
function SHX47_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX37_1 = SHX0_2
  SHX38_1 = SHX1_2
  SHX39_1 = SHX2_2
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = RegisterNetEvent
SHX46_1 = "4d03144adf"
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX39_1 = SHX0_2
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = CMG
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.locations
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX6_2.sides
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = SHX12_2.interiorId
      if SHX13_2 then
        SHX13_2 = SHX12_2.interiorId
        if SHX13_2 == SHX0_2 then
          SHX13_2 = SHX12_2.roomKey
          return SHX13_2
        end
      end
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX45_1.getOrganRoomKeyFromInteriorId = SHX46_1
