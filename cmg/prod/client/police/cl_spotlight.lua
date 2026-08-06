-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = "spotlight"
SHX1_1 = false
SHX2_1 = {}
SHX3_1 = 0
SHX4_1 = 0.0
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = BeginTextCommandDisplayHelp
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandDisplayHelp
  SHX2_2 = 0
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = -1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
DisplayHelp = SHX5_1
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = ipairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[1]
    if SHX7_2 == SHX0_2 then
      return SHX5_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX6_1 = RegisterNetEvent
SHX7_1 = "spotlight:syncSpotlights"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = Citizen
SHX6_1 = SHX6_1.CreateThread
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "spotlight:syncSpotlights"
  SHX0_2(SHX1_2)
end
SHX6_1(SHX7_1)
SHX6_1 = RegisterCommand
SHX7_1 = SHX0_1
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = IsPedInAnyVehicle
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = SHX1_1
    if SHX2_2 then
      SHX2_2 = GetVehicleClass
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if 18 ~= SHX2_2 then
        SHX2_2 = notify
        SHX3_2 = "~r~Invalid permissions."
        return SHX2_2(SHX3_2)
      end
    end
    SHX2_2 = VehToNet
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = GetEntityForwardVector
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "spotlight:toggleSpotlight"
    SHX6_2 = SHX2_2
    SHX7_2 = {}
    SHX8_2 = SHX3_2.x
    SHX9_2 = SHX3_2.y
    SHX10_2 = SHX3_2.z
    SHX7_2[1] = SHX8_2
    SHX7_2[2] = SHX9_2
    SHX7_2[3] = SHX10_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SHX5_1
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
    if false == SHX4_2 then
      SHX5_2 = notify
      SHX6_2 = "Spotlight toggled ~g~on~w~."
      SHX5_2(SHX6_2)
    else
      SHX5_2 = notify
      SHX6_2 = "Spotlight toggled ~r~off~w~."
      SHX5_2(SHX6_2)
      SHX5_2 = Wait
      SHX6_2 = 300
      SHX5_2(SHX6_2)
      SHX5_2 = DisplayHelp
      SHX6_2 = "Spotlight is ~r~off~w~."
      SHX5_2(SHX6_2)
    end
  else
    SHX2_2 = notify
    SHX3_2 = "~y~You are not in a vehicle."
    SHX2_2(SHX3_2)
  end
end
SHX9_1 = false
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX0_2 = ipairs
  SHX1_2 = SHX2_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerPed
    SHX6_2 = SHX6_2()
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getObjectId
    SHX8_2 = SHX5_2[1]
    SHX9_2 = "spotlightThread"
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX8_2 = GetEntityBoneIndexByName
      SHX9_2 = SHX7_2
      SHX10_2 = "door_dside_f"
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = GetEntityBoneIndexByName
      SHX10_2 = SHX7_2
      SHX11_2 = "windscreen"
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX10_2 = GetWorldPositionOfEntityBone
      SHX11_2 = SHX7_2
      SHX12_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX11_2 = GetWorldPositionOfEntityBone
      SHX12_2 = SHX7_2
      SHX13_2 = SHX9_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      SHX12_2 = vector3
      SHX13_2 = SHX5_2[2]
      SHX13_2 = SHX13_2[1]
      SHX14_2 = SHX5_2[2]
      SHX14_2 = SHX14_2[2]
      SHX15_2 = SHX5_2[2]
      SHX15_2 = SHX15_2[3]
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX13_2 = NetworkDoesEntityExistWithNetworkId
      SHX14_2 = SHX5_2[1]
      SHX13_2 = SHX13_2(SHX14_2)
      if not SHX13_2 then
        SHX13_2 = TriggerServerEvent
        SHX14_2 = "spotlight:toggleSpotlight"
        SHX15_2 = SHX5_2[1]
        SHX16_2 = {}
        SHX17_2 = 0
        SHX18_2 = 0
        SHX19_2 = 0
        SHX16_2[1] = SHX17_2
        SHX16_2[2] = SHX18_2
        SHX16_2[3] = SHX19_2
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        return
      end
      SHX13_2 = GetVehiclePedIsIn
      SHX14_2 = SHX6_2
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      if SHX13_2 == SHX7_2 then
        SHX13_2 = 0.0
        SHX14_2 = 0.0
        SHX15_2 = GetEntityForwardVector
        SHX16_2 = SHX7_2
        SHX15_2 = SHX15_2(SHX16_2)
        SHX16_2 = GetEntityHeading
        SHX17_2 = SHX7_2
        SHX16_2 = SHX16_2(SHX17_2)
        SHX17_2 = IsControlPressed
        SHX18_2 = 0
        SHX19_2 = 127
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
        if SHX17_2 then
          SHX14_2 = SHX14_2 + 0.1
        end
        SHX17_2 = IsControlPressed
        SHX18_2 = 0
        SHX19_2 = 126
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
        if SHX17_2 then
          SHX14_2 = SHX14_2 - 0.1
        end
        SHX17_2 = IsControlPressed
        SHX18_2 = 0
        SHX19_2 = 124
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
        if SHX17_2 then
          SHX17_2 = 180
          if SHX16_2 >= SHX17_2 then
            SHX17_2 = 365
            if SHX16_2 <= SHX17_2 then
              SHX13_2 = SHX13_2 + 0.1
          end
          else
            SHX13_2 = SHX13_2 - 0.1
          end
        end
        SHX17_2 = IsControlPressed
        SHX18_2 = 0
        SHX19_2 = 125
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
        if SHX17_2 then
          SHX17_2 = 180
          if SHX16_2 >= SHX17_2 then
            SHX17_2 = 365
            if SHX16_2 <= SHX17_2 then
              SHX13_2 = SHX13_2 - 0.1
          end
          else
            SHX13_2 = SHX13_2 + 0.1
          end
        end
        SHX17_2 = GetGameTimer
        SHX17_2 = SHX17_2()
        SHX18_2 = SHX3_1
        SHX17_2 = SHX17_2 - SHX18_2
        SHX18_2 = 500
        if SHX17_2 >= SHX18_2 then
          if 0.0 == SHX13_2 and 0.0 == SHX14_2 then
            SHX17_2 = SHX4_1
            SHX18_2 = SHX15_2.x
            if SHX17_2 == SHX18_2 then
              goto SHX_LABEL_154
            end
          end
          SHX17_2 = TriggerServerEvent
          SHX18_2 = "spotlight:updateSpotlight"
          SHX19_2 = SHX4_2
          SHX20_2 = {}
          SHX21_2 = SHX15_2.x
          SHX22_2 = SHX12_2.y
          SHX22_2 = SHX22_2 + SHX13_2
          SHX23_2 = SHX12_2.z
          SHX23_2 = SHX23_2 + SHX14_2
          SHX20_2[1] = SHX21_2
          SHX20_2[2] = SHX22_2
          SHX20_2[3] = SHX23_2
          SHX17_2(SHX18_2, SHX19_2, SHX20_2)
          SHX17_2 = GetGameTimer
          SHX17_2 = SHX17_2()
          SHX3_1 = SHX17_2
          SHX17_2 = SHX15_2.x
          SHX4_1 = SHX17_2
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_154:: outside nested blocks until all 'goto SHX_LABEL_154' can see it
        ::SHX_LABEL_154::
        SHX17_2 = DisplayHelp
        SHX18_2 = "Spotlight is ~g~on~w~."
        SHX17_2(SHX18_2)
      end
      SHX13_2 = DrawSpotLight
      SHX14_2 = SHX10_2.x
      SHX15_2 = SHX11_2.y
      SHX16_2 = SHX10_2.z
      SHX17_2 = SHX12_2.x
      SHX18_2 = SHX12_2.y
      SHX19_2 = SHX12_2.z
      SHX20_2 = 221
      SHX21_2 = 221
      SHX22_2 = 221
      SHX23_2 = 70.0
      SHX24_2 = 50.0
      SHX25_2 = 4.3
      SHX26_2 = 25.0
      SHX27_2 = 28.6
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    end
  end
end
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
SHX8_1 = SHX6_1
SHX9_1 = "Car Spotlight"
SHX7_1(SHX8_1, SHX9_1)
