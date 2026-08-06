-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.firetruk = 2
SHX1_1.lfb1 = 2
SHX1_1.lfb2 = 2
SHX0_1.Vehicles = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = "no"
SHX4_1 = 0
SHX5_1 = nil
SHX6_1 = 0
SHX7_1 = true
SHX8_1 = false
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = vector3
SHX13_1 = 0.0
SHX14_1 = -0.45
SHX15_1 = -1.5
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = "laddersbase"
SHX14_1 = "get_on_bottom_front_stand_high"
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX11_1[3] = SHX14_1
SHX12_1 = {}
SHX13_1 = vector3
SHX14_1 = 0.0
SHX15_1 = -0.3
SHX16_1 = -1.1
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = "laddersbase"
SHX15_1 = "climb_up"
SHX12_1[1] = SHX13_1
SHX12_1[2] = SHX14_1
SHX12_1[3] = SHX15_1
SHX13_1 = {}
SHX14_1 = vector3
SHX15_1 = 0.0
SHX16_1 = -0.3
SHX17_1 = -0.7
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = "laddersbase"
SHX16_1 = "climb_up"
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX14_1 = {}
SHX15_1 = vector3
SHX16_1 = 0.0
SHX17_1 = -0.3
SHX18_1 = -0.3
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = "laddersbase"
SHX17_1 = "climb_up"
SHX14_1[1] = SHX15_1
SHX14_1[2] = SHX16_1
SHX14_1[3] = SHX17_1
SHX15_1 = {}
SHX16_1 = vector3
SHX17_1 = 0.0
SHX18_1 = -0.3
SHX19_1 = 0.1
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = "laddersbase"
SHX18_1 = "climb_up"
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX16_1 = {}
SHX17_1 = vector3
SHX18_1 = 0.0
SHX19_1 = -0.3
SHX20_1 = 0.5
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = "laddersbase"
SHX19_1 = "climb_up"
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX16_1[3] = SHX19_1
SHX17_1 = {}
SHX18_1 = vector3
SHX19_1 = 0.0
SHX20_1 = -0.3
SHX21_1 = 0.9
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = "laddersbase"
SHX20_1 = "climb_up"
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX18_1 = {}
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = -0.3
SHX22_1 = 1.3
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = "laddersbase"
SHX21_1 = "climb_up"
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX19_1 = {}
SHX20_1 = vector3
SHX21_1 = 0.0
SHX22_1 = -0.3
SHX23_1 = 1.7
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX21_1 = "laddersbase"
SHX22_1 = "climb_up"
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX20_1 = {}
SHX21_1 = vector3
SHX22_1 = 0.0
SHX23_1 = -0.3
SHX24_1 = 2.1
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX22_1 = "laddersbase"
SHX23_1 = "climb_up"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX21_1 = {}
SHX22_1 = vector3
SHX23_1 = 0.0
SHX24_1 = -0.4
SHX25_1 = 2.5
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX23_1 = "laddersbase"
SHX24_1 = "get_off_top_back_stand_left_hand"
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX10_1[3] = SHX13_1
SHX10_1[4] = SHX14_1
SHX10_1[5] = SHX15_1
SHX10_1[6] = SHX16_1
SHX10_1[7] = SHX17_1
SHX10_1[8] = SHX18_1
SHX10_1[9] = SHX19_1
SHX10_1[10] = SHX20_1
SHX10_1[11] = SHX21_1
SHX9_1.up = SHX10_1
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = vector3
SHX13_1 = 0.0
SHX14_1 = -0.4
SHX15_1 = 2.5
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = "laddersbase"
SHX14_1 = "get_on_top_front"
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX11_1[3] = SHX14_1
SHX12_1 = {}
SHX13_1 = vector3
SHX14_1 = 0.0
SHX15_1 = -0.3
SHX16_1 = 2.1
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = "laddersbase"
SHX15_1 = "climb_down"
SHX12_1[1] = SHX13_1
SHX12_1[2] = SHX14_1
SHX12_1[3] = SHX15_1
SHX13_1 = {}
SHX14_1 = vector3
SHX15_1 = 0.0
SHX16_1 = -0.3
SHX17_1 = 1.7
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = "laddersbase"
SHX16_1 = "climb_down"
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX14_1 = {}
SHX15_1 = vector3
SHX16_1 = 0.0
SHX17_1 = -0.3
SHX18_1 = 1.3
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = "laddersbase"
SHX17_1 = "climb_down"
SHX14_1[1] = SHX15_1
SHX14_1[2] = SHX16_1
SHX14_1[3] = SHX17_1
SHX15_1 = {}
SHX16_1 = vector3
SHX17_1 = 0.0
SHX18_1 = -0.3
SHX19_1 = 0.9
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = "laddersbase"
SHX18_1 = "climb_down"
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX16_1 = {}
SHX17_1 = vector3
SHX18_1 = 0.0
SHX19_1 = -0.3
SHX20_1 = 0.5
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = "laddersbase"
SHX19_1 = "climb_down"
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX16_1[3] = SHX19_1
SHX17_1 = {}
SHX18_1 = vector3
SHX19_1 = 0.0
SHX20_1 = -0.3
SHX21_1 = 0.1
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = "laddersbase"
SHX20_1 = "climb_down"
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX18_1 = {}
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = -0.3
SHX22_1 = -0.3
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = "laddersbase"
SHX21_1 = "climb_down"
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX19_1 = {}
SHX20_1 = vector3
SHX21_1 = 0.0
SHX22_1 = -0.3
SHX23_1 = -0.7
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX21_1 = "laddersbase"
SHX22_1 = "climb_down"
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX20_1 = {}
SHX21_1 = vector3
SHX22_1 = 0.0
SHX23_1 = -0.3
SHX24_1 = -1.1
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX22_1 = "laddersbase"
SHX23_1 = "climb_down"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX21_1 = {}
SHX22_1 = vector3
SHX23_1 = 0.0
SHX24_1 = -0.45
SHX25_1 = -1.5
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX23_1 = "laddersbase"
SHX24_1 = "get_off_bottom_front_stand"
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX10_1[3] = SHX13_1
SHX10_1[4] = SHX14_1
SHX10_1[5] = SHX15_1
SHX10_1[6] = SHX16_1
SHX10_1[7] = SHX17_1
SHX10_1[8] = SHX18_1
SHX10_1[9] = SHX19_1
SHX10_1[10] = SHX20_1
SHX10_1[11] = SHX21_1
SHX9_1.down = SHX10_1
SHX10_1 = AddEventHandler
SHX11_1 = "onClientMapStart"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "Ladders:Server:PersonalRequest"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerEvent
  SHX1_2 = "chat:addSuggestion"
  SHX2_2 = "/ladder"
  SHX3_2 = "Type an action."
  SHX4_2 = {}
  SHX5_2 = {}
  SHX5_2.name = "action"
  SHX5_2.help = "collect store"
  SHX4_2[1] = SHX5_2
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX10_1(SHX11_1, SHX12_1)
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX0_2
  SHX4_2 = 0.0
  SHX5_2 = 10.0
  SHX6_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = StartShapeTestRay
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = 10
  SHX11_2 = SHX0_2
  SHX12_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = GetRaycastResult
  SHX5_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  SHX9_2 = Vdist
  SHX10_2 = SHX1_2.x
  SHX11_2 = SHX1_2.y
  SHX12_2 = SHX1_2.z
  SHX13_2 = SHX6_2.x
  SHX14_2 = SHX6_2.y
  SHX15_2 = SHX6_2.z
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  if SHX9_2 < 3 then
    SHX9_2 = GetEntityModel
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = pairs
    SHX11_2 = SHX0_1.Vehicles
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = GetHashKey
      SHX17_2 = SHX14_2
      SHX16_2 = SHX16_2(SHX17_2)
      if SHX16_2 == SHX9_2 then
        SHX17_2 = {}
        SHX18_2 = SHX8_2
        SHX19_2 = SHX15_2
        SHX17_2[1] = SHX18_2
        SHX17_2[2] = SHX19_2
        return SHX17_2
      end
    end
    SHX10_2 = notify
    SHX11_2 = "~r~This vehicles does not carry ladders!"
    SHX12_2 = true
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = false
    return SHX10_2
  else
    SHX9_2 = notify
    SHX10_2 = "~r~No ladder carrying vehicle found!"
    SHX11_2 = true
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = false
    return SHX9_2
  end
end
SHX11_1 = RegisterCommand
SHX12_1 = "ladder"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientPermission
  SHX3_2 = "lfb.onduty.permission"
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = SHX1_2[1]
  if SHX2_2 then
    SHX2_2 = SHX1_2[1]
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.lower
    SHX2_2 = SHX2_2(SHX3_2)
    if "collect" == SHX2_2 then
      SHX3_2 = SHX4_1
      if 0 == SHX3_2 then
        SHX3_2 = SHX10_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX4_2 = TriggerServerEvent
          SHX5_2 = "Ladders:Server:Vehicles"
          SHX6_2 = "check"
          SHX7_2 = VehToNet
          SHX8_2 = SHX3_2[1]
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = SHX3_2[2]
          SHX9_2 = false
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        end
      else
        SHX3_2 = notify
        SHX4_2 = "~y~You already carrying a ladder!"
        SHX5_2 = true
        SHX3_2(SHX4_2, SHX5_2)
      end
    elseif "store" == SHX2_2 then
      SHX3_2 = SHX4_1
      if 0 ~= SHX3_2 then
        SHX3_2 = SHX10_1
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          SHX4_2 = TriggerServerEvent
          SHX5_2 = "Ladders:Server:Vehicles"
          SHX6_2 = "check"
          SHX7_2 = VehToNet
          SHX8_2 = SHX3_2[1]
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = SHX3_2[2]
          SHX9_2 = true
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        end
      else
        SHX3_2 = notify
        SHX4_2 = "~y~You do not have a ladder out!"
        SHX5_2 = true
        SHX3_2(SHX4_2, SHX5_2)
      end
    else
      SHX3_2 = notify
      SHX4_2 = "~r~Invalid action! Use: collect or store."
      SHX5_2 = true
      SHX3_2(SHX4_2, SHX5_2)
    end
  else
    SHX2_2 = notify
    SHX3_2 = "~r~No action specified!"
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX14_1 = false
SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "Ladders:Client:VehicleCheck"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "Ladders:Client:VehicleCheck"
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if SHX3_2 then
    if SHX1_2 < SHX2_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "Ladders:Server:Ladders:Local"
      SHX6_2 = "remove"
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "Ladders:Server:Vehicles"
      SHX6_2 = "add"
      SHX7_2 = SHX0_2
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = notify
      SHX5_2 = "~g~Ladder stored. This vehicle can store "
      SHX6_2 = SHX1_2 + 1
      SHX6_2 = SHX2_2 - SHX6_2
      SHX7_2 = " more ladders."
      SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
      SHX6_2 = false
      SHX4_2(SHX5_2, SHX6_2)
    else
      SHX4_2 = notify
      SHX5_2 = "~r~This vehicle can only carry "
      SHX6_2 = SHX2_2
      SHX7_2 = " ladders!"
      SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
      SHX6_2 = true
      SHX4_2(SHX5_2, SHX6_2)
    end
  elseif SHX1_2 > 0 then
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "Ladders:Server:Ladders:Local"
    SHX6_2 = "add"
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "Ladders:Server:Vehicles"
    SHX6_2 = "remove"
    SHX7_2 = SHX0_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Ladder collected from vehicle. This vehicle has "
    SHX6_2 = SHX1_2 - 1
    SHX7_2 = " more ladders."
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
  else
    SHX4_2 = notify
    SHX5_2 = "~r~This vehicle has no more ladders!"
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "Ladders:Client:Local:Add"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "Ladders:Client:Local:Add"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if -1 ~= SHX2_2 then
    SHX3_2 = SHX2_1
    SHX3_2 = SHX3_2[SHX2_2]
    if not SHX3_2 then
      SHX3_2 = GetOffsetFromEntityInWorldCoords
      SHX4_2 = SHX2_2
      SHX5_2 = 0.0
      SHX6_2 = 1.2
      SHX7_2 = 1.32
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = CreateObjectNoOffset
      SHX5_2 = GetHashKey
      SHX6_2 = "prop_byard_ladder01"
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX3_2.x
      SHX7_2 = SHX3_2.y
      SHX8_2 = SHX3_2.z
      SHX9_2 = false
      SHX10_2 = false
      SHX11_2 = false
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX5_2 = SetEntityAsMissionEntity
      SHX6_2 = SHX4_2
      SHX7_2 = false
      SHX8_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = SetEntityCollision
      SHX6_2 = SHX4_2
      SHX7_2 = false
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = SHX2_1
      SHX5_2[SHX2_2] = SHX4_2
      SHX5_2 = GetPlayerServerId
      SHX6_2 = PlayerId
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2()
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if SHX5_2 == SHX0_2 then
        SHX4_1 = SHX4_2
      end
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "Ladders:Client:Local:Remove"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "Ladders:Client:Local:Remove"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if -1 ~= SHX2_2 then
    SHX3_2 = SHX2_1
    SHX3_2 = SHX3_2[SHX2_2]
    if SHX3_2 then
      SHX3_2 = DeleteObject
      SHX4_2 = SHX2_1
      SHX4_2 = SHX4_2[SHX2_2]
      SHX3_2(SHX4_2)
      SHX3_2 = SetEntityAsNoLongerNeeded
      SHX4_2 = SHX2_1
      SHX4_2 = SHX4_2[SHX2_2]
      SHX3_2(SHX4_2)
      SHX3_2 = ClearPedTasksImmediately
      SHX4_2 = PlayerPedId
      SHX4_2 = SHX4_2()
      SHX3_2(SHX4_2)
      SHX3_2 = SHX2_1
      SHX3_2[SHX2_2] = nil
      SHX3_2 = GetPlayerServerId
      SHX4_2 = PlayerId
      SHX4_2 = SHX4_2()
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 == SHX0_2 then
        SHX3_2 = 0
        SHX4_1 = SHX3_2
      end
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "Ladders:Bounce:ServerValues"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "Ladders:Bounce:ServerValues"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "Ladders:Client:DropLadder"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "Ladders:Client:DropLadder"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = SHX4_1
  if 0 ~= SHX0_2 then
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.requestEntitySpawn
    SHX2_2 = "lfb_ladder_object"
    SHX1_2(SHX2_2)
    SHX1_2 = GetOffsetFromEntityInWorldCoords
    SHX2_2 = SHX0_2
    SHX3_2 = 0.0
    SHX4_2 = 0.0
    SHX5_2 = -500.0
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = CreateObjectNoOffset
    SHX3_2 = GetHashKey
    SHX4_2 = "prop_byard_ladder01"
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX1_2.x
    SHX5_2 = SHX1_2.y
    SHX6_2 = SHX1_2.z
    SHX7_2 = true
    SHX8_2 = false
    SHX9_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2 = ObjToNet
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SetEntityAsMissionEntity
    SHX5_2 = SHX2_2
    SHX6_2 = false
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = ClearPedTasksImmediately
    SHX5_2 = SHX0_2
    SHX4_2(SHX5_2)
    SHX4_2 = SetEntityRotation
    SHX5_2 = SHX2_2
    SHX6_2 = 0.0
    SHX7_2 = 90.0
    SHX8_2 = 90.0
    SHX9_2 = 2
    SHX10_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX4_2 = GetOffsetFromEntityInWorldCoords
    SHX5_2 = SHX0_2
    SHX6_2 = 0.5
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = SetEntityCoords
    SHX6_2 = SHX2_2
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = false
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX5_2 = ApplyForceToEntity
    SHX6_2 = SHX2_2
    SHX7_2 = 4
    SHX8_2 = 0.001
    SHX9_2 = 0.001
    SHX10_2 = 0.001
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0
    SHX15_2 = false
    SHX16_2 = true
    SHX17_2 = true
    SHX18_2 = false
    SHX19_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "Ladders:Server:Ladders:Local"
    SHX7_2 = "remove"
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "Ladders:Server:Ladders"
    SHX7_2 = "store"
    SHX8_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "Ladders:Server:Ladders"
    SHX7_2 = "update"
    SHX8_2 = SHX3_2
    SHX9_2 = "BeingCarried"
    SHX10_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 1000
    SHX5_2(SHX6_2)
    SHX5_2 = GetEntityCoords
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders"
    SHX8_2 = "update"
    SHX9_2 = SHX3_2
    SHX10_2 = "BeingCarried"
    SHX11_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders"
    SHX8_2 = "update"
    SHX9_2 = SHX3_2
    SHX10_2 = "BeingClimbed"
    SHX11_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders"
    SHX8_2 = "update"
    SHX9_2 = SHX3_2
    SHX10_2 = "Dropped"
    SHX11_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders"
    SHX8_2 = "update"
    SHX9_2 = SHX3_2
    SHX10_2 = "Placed"
    SHX11_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders"
    SHX8_2 = "update"
    SHX9_2 = SHX3_2
    SHX10_2 = "x"
    SHX11_2 = SHX5_2.x
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders"
    SHX8_2 = "update"
    SHX9_2 = SHX3_2
    SHX10_2 = "y"
    SHX11_2 = SHX5_2.y
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders"
    SHX8_2 = "update"
    SHX9_2 = SHX3_2
    SHX10_2 = "z"
    SHX11_2 = SHX5_2.z
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "Ladders:Client:Pickup"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "Ladders:Client:Pickup"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX4_1
  if 0 == SHX1_2 then
    SHX1_2 = NetworkDoesNetworkIdExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = NetworkRequestControlOfNetworkId
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
      while true do
        SHX1_2 = NetworkHasControlOfNetworkId
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 then
          break
        end
        SHX1_2 = Citizen
        SHX1_2 = SHX1_2.Wait
        SHX2_2 = 0
        SHX1_2(SHX2_2)
      end
      SHX1_2 = NetToObj
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = DeleteObject
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
      SHX2_2 = SetEntityAsNoLongerNeeded
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "Ladders:Server:Ladders:Local"
      SHX4_2 = "add"
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "Ladders:Server:Ladders"
      SHX4_2 = "delete"
      SHX5_2 = SHX0_2
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = ClearPedTasksImmediately
      SHX3_2 = PlayerPedId
      SHX3_2, SHX4_2, SHX5_2 = SHX3_2()
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "Ladders:Client:PlaceLadder"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "Ladders:Client:PlaceLadder"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX4_1
  if 0 ~= SHX0_2 then
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = GetEntityRotation
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.requestEntitySpawn
    SHX3_2 = "lfb_ladder_object"
    SHX2_2(SHX3_2)
    SHX2_2 = GetOffsetFromEntityInWorldCoords
    SHX3_2 = SHX0_2
    SHX4_2 = 0.0
    SHX5_2 = 1.0
    SHX6_2 = 0.0
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = CreateObjectNoOffset
    SHX4_2 = GetHashKey
    SHX5_2 = "prop_byard_ladder01"
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX8_2 = true
    SHX9_2 = false
    SHX10_2 = false
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX4_2 = ObjToNet
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = GetOffsetFromEntityInWorldCoords
    SHX6_2 = SHX0_2
    SHX7_2 = 0.0
    SHX8_2 = 1.2
    SHX9_2 = 1.32
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = SetEntityAsMissionEntity
    SHX7_2 = SHX3_2
    SHX8_2 = false
    SHX9_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders:Local"
    SHX8_2 = "remove"
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "Ladders:Server:Ladders"
    SHX8_2 = "store"
    SHX9_2 = SHX4_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = SetEntityCoords
    SHX7_2 = SHX3_2
    SHX8_2 = SHX5_2.x
    SHX9_2 = SHX5_2.y
    SHX10_2 = SHX5_2.z
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX6_2 = vector3
    SHX7_2 = SHX1_2.x
    SHX7_2 = SHX7_2 - 20.0
    SHX8_2 = SHX1_2.y
    SHX9_2 = SHX1_2.z
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX7_2 = SetEntityRotation
    SHX8_2 = SHX3_2
    SHX9_2 = SHX6_2.x
    SHX10_2 = SHX6_2.y
    SHX11_2 = SHX6_2.z
    SHX12_2 = 2
    SHX13_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = FreezeEntityPosition
    SHX8_2 = SHX3_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "BeingCarried"
    SHX12_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "BeingClimbed"
    SHX12_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "Dropped"
    SHX12_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "Placed"
    SHX12_2 = true
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "x"
    SHX12_2 = SHX5_2.x
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "y"
    SHX12_2 = SHX5_2.y
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "z"
    SHX12_2 = SHX5_2.z
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "Topz"
    SHX12_2 = SHX5_2.z
    SHX12_2 = SHX12_2 + 5.0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "Ladders:Server:Ladders"
    SHX9_2 = "update"
    SHX10_2 = SHX4_2
    SHX11_2 = "Bottomz"
    SHX12_2 = SHX5_2.z
    SHX12_2 = SHX12_2 - 5.0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = 1
  SHX2_2 = 10
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = GetOffsetFromEntityInWorldCoords
    SHX6_2 = SHX0_2
    SHX7_2 = 0.0
    SHX8_2 = SHX4_2 / 5.0
    SHX8_2 = 0.5 + SHX8_2
    SHX9_2 = 4.0
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = _ENV
    SHX7_2 = "StartExpensiveSynchronousShapeTestLosProbe"
    SHX6_2 = SHX6_2[SHX7_2]
    SHX7_2 = SHX5_2.x
    SHX8_2 = SHX5_2.y
    SHX9_2 = SHX5_2.z
    SHX10_2 = SHX5_2.x
    SHX11_2 = SHX5_2.y
    SHX12_2 = SHX5_2.z
    SHX12_2 = SHX12_2 - 10.0
    SHX13_2 = -1
    SHX14_2 = 0
    SHX15_2 = 4
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX7_2 = GetShapeTestResult
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2)
    if SHX8_2 then
      SHX10_2 = SHX5_2 - SHX9_2
      SHX10_2 = #SHX10_2
      if SHX10_2 < 6.0 then
        SHX10_2 = vector3
        SHX11_2 = 0.0
        SHX12_2 = 0.0
        SHX13_2 = 1.0
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
        SHX10_2 = SHX9_2 + SHX10_2
        return SHX10_2
      end
    end
  end
  SHX1_2 = GetOffsetFromEntityInWorldCoords
  SHX2_2 = SHX0_2
  SHX3_2 = 0.0
  SHX4_2 = 0.5
  SHX5_2 = 4.0
  return SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "Ladders:Client:Climb"
SHX12_1(SHX13_1)
SHX12_1 = AddEventHandler
SHX13_1 = "Ladders:Client:Climb"
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX2_2 = SHX4_1
  if 0 == SHX2_2 then
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = NetToObj
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "Ladders:Server:Ladders"
    SHX6_2 = "update"
    SHX7_2 = SHX0_2
    SHX8_2 = "BeingClimbed"
    SHX9_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX4_2 = "yes"
    SHX3_1 = SHX4_2
    SHX4_2 = GetEntityRotation
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_1 = SHX4_2
    SHX4_2 = HasAnimDictLoaded
    SHX5_2 = "laddersbase"
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = RequestAnimDict
      SHX5_2 = "laddersbase"
      SHX4_2(SHX5_2)
      while true do
        SHX4_2 = HasAnimDictLoaded
        SHX5_2 = "laddersbase"
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          break
        end
        SHX4_2 = Citizen
        SHX4_2 = SHX4_2.Wait
        SHX5_2 = 0
        SHX4_2(SHX5_2)
      end
    end
    SHX4_2 = ClearPedTasksImmediately
    SHX5_2 = SHX2_2
    SHX4_2(SHX5_2)
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = SHX2_2
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SetEntityCollision
    SHX5_2 = SHX3_2
    SHX6_2 = false
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = "rot"
    SHX3_1 = SHX4_2
    SHX4_2 = pairs
    SHX5_2 = SHX9_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      if SHX1_2 == SHX8_2 then
        SHX10_2 = pairs
        SHX11_2 = SHX9_2
        SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
        for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
          SHX16_2 = GetOffsetFromEntityInWorldCoords
          SHX17_2 = SHX3_2
          SHX18_2 = SHX15_2[1]
          SHX18_2 = SHX18_2.x
          SHX19_2 = SHX15_2[1]
          SHX19_2 = SHX19_2.y
          SHX20_2 = SHX15_2[1]
          SHX20_2 = SHX20_2.z
          SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          SHX17_2 = SetEntityCoordsNoOffset
          SHX18_2 = SHX2_2
          SHX19_2 = SHX16_2.x
          SHX20_2 = SHX16_2.y
          SHX21_2 = SHX16_2.z
          SHX22_2 = false
          SHX23_2 = false
          SHX24_2 = false
          SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          SHX17_2 = TaskPlayAnim
          SHX18_2 = SHX2_2
          SHX19_2 = SHX15_2[2]
          SHX20_2 = SHX15_2[3]
          SHX21_2 = 2.0
          SHX22_2 = 0.0
          SHX23_2 = -1
          SHX24_2 = 15
          SHX25_2 = 0
          SHX26_2 = false
          SHX27_2 = false
          SHX28_2 = false
          SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
          SHX17_2 = Citizen
          SHX17_2 = SHX17_2.Wait
          SHX18_2 = 850
          SHX17_2(SHX18_2)
        end
      end
    end
    if "up" == SHX1_2 then
      SHX4_2 = SHX11_1
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = SetEntityCoordsNoOffset
      SHX6_2 = SHX2_2
      SHX7_2 = SHX4_2.x
      SHX8_2 = SHX4_2.y
      SHX9_2 = SHX4_2.z
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    elseif "down" == SHX1_2 then
      SHX4_2 = GetOffsetFromEntityInWorldCoords
      SHX5_2 = SHX3_2
      SHX6_2 = 0.0
      SHX7_2 = -0.9
      SHX8_2 = -1.4
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = SetEntityCoordsNoOffset
      SHX6_2 = SHX2_2
      SHX7_2 = SHX4_2.x
      SHX8_2 = SHX4_2.y
      SHX9_2 = SHX4_2.z
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX4_2 = ClearPedTasksImmediately
    SHX5_2 = SHX2_2
    SHX4_2(SHX5_2)
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = SHX2_2
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SetEntityCollision
    SHX5_2 = SHX3_2
    SHX6_2 = true
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = "no"
    SHX3_1 = SHX4_2
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "Ladders:Server:Ladders"
    SHX6_2 = "update"
    SHX7_2 = SHX0_2
    SHX8_2 = "BeingClimbed"
    SHX9_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = vector3
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = #SHX1_2
  SHX1_2 = SHX1_2 + 0.01
  return SHX1_2
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX4_1
  if 0 == SHX1_2 then
    SHX1_2 = SHX8_1
    if SHX1_2 then
      SHX1_2 = false
      SHX8_1 = SHX1_2
      SHX1_2 = ResetPedMovementClipset
      SHX2_2 = SHX0_2
      SHX3_2 = 0
      SHX1_2(SHX2_2, SHX3_2)
    end
    SHX1_2 = pairs
    SHX2_2 = SHX1_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = type
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if "table" == SHX7_2 then
        SHX7_2 = SHX6_2.BeingCarried
        if not SHX7_2 then
          SHX7_2 = SHX6_2.x
          if SHX7_2 then
            SHX7_2 = SHX6_2.y
            if SHX7_2 then
              SHX7_2 = SHX6_2.z
              if SHX7_2 then
                SHX7_2 = SHX6_2.Dropped
                if SHX7_2 then
                  SHX7_2 = SHX12_1
                  SHX8_2 = SHX6_2
                  SHX7_2 = SHX7_2(SHX8_2)
                  if not (SHX7_2 <= 2.0) then
                    goto SHX_LABEL_142
                  end
                  SHX7_2 = CMG
                  SHX7_2 = SHX7_2.hasClientPermission
                  SHX8_2 = "lfb.onduty.permission"
                  SHX7_2 = SHX7_2(SHX8_2)
                  if SHX7_2 then
                    SHX7_2 = drawNativeNotification
                    SHX8_2 = "~INPUT_PICKUP~ Pick up ladder"
                    SHX7_2(SHX8_2)
                    SHX7_2 = IsControlJustPressed
                    SHX8_2 = 0
                    SHX9_2 = 38
                    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                    if SHX7_2 then
                      SHX7_2 = TriggerServerEvent
                      SHX8_2 = "Ladders:Server:Ladders"
                      SHX9_2 = "pickup"
                      SHX10_2 = SHX6_2.ID
                      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                    end
                  end
                  break
                else
                  SHX7_2 = SHX6_2.Dropped
                  if not SHX7_2 then
                    SHX7_2 = SHX6_2.Placed
                    if SHX7_2 then
                      SHX7_2 = SHX3_1
                      if "no" == SHX7_2 then
                        SHX7_2 = SHX12_1
                        SHX8_2 = SHX6_2
                        SHX7_2 = SHX7_2(SHX8_2)
                        if SHX7_2 <= 4 then
                          SHX7_2 = DisableControlAction
                          SHX8_2 = 0
                          SHX9_2 = 23
                          SHX10_2 = true
                          SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                          SHX7_2 = CMG
                          SHX7_2 = SHX7_2.hasClientPermission
                          SHX8_2 = "lfb.onduty.permission"
                          SHX7_2 = SHX7_2(SHX8_2)
                          if SHX7_2 then
                            SHX7_2 = SHX12_1
                            SHX8_2 = vector3
                            SHX9_2 = SHX6_2.x
                            SHX10_2 = SHX6_2.y
                            SHX11_2 = SHX6_2.Topz
                            SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                            SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                            SHX8_2 = SHX12_1
                            SHX9_2 = vector3
                            SHX10_2 = SHX6_2.x
                            SHX11_2 = SHX6_2.y
                            SHX12_2 = SHX6_2.Bottomz
                            SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
                            SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                            SHX9_2 = drawNativeNotification
                            SHX10_2 = [[
~INPUT_PICKUP~ Climb ladder
~INPUT_ENTER~ Pick up ladder]]
                            SHX9_2(SHX10_2)
                            SHX9_2 = IsControlJustPressed
                            SHX10_2 = 0
                            SHX11_2 = 38
                            SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                            if SHX9_2 then
                              if SHX7_2 > SHX8_2 then
                                SHX9_2 = TriggerServerEvent
                                SHX10_2 = "Ladders:Server:Ladders"
                                SHX11_2 = "climb"
                                SHX12_2 = SHX6_2.ID
                                SHX13_2 = "up"
                                SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                                break
                              end
                              SHX9_2 = TriggerServerEvent
                              SHX10_2 = "Ladders:Server:Ladders"
                              SHX11_2 = "climb"
                              SHX12_2 = SHX6_2.ID
                              SHX13_2 = "down"
                              SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                              break
                            end
                            SHX9_2 = IsDisabledControlJustPressed
                            SHX10_2 = 0
                            SHX11_2 = 23
                            SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                            if SHX9_2 then
                              SHX9_2 = TriggerServerEvent
                              SHX10_2 = "Ladders:Server:Ladders"
                              SHX11_2 = "pickup"
                              SHX12_2 = SHX6_2.ID
                              SHX9_2(SHX10_2, SHX11_2, SHX12_2)
                            end
                          end
                          break
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_142:: outside nested blocks until all 'goto SHX_LABEL_142' can see it
      ::SHX_LABEL_142::
    end
    SHX1_2 = SHX6_1
    if 0 ~= SHX1_2 then
      SHX1_2 = ResetEntityAlpha
      SHX2_2 = SHX6_1
      SHX1_2(SHX2_2)
      SHX1_2 = DeleteObject
      SHX2_2 = SHX6_1
      SHX1_2(SHX2_2)
      SHX1_2 = SetEntityAsNoLongerNeeded
      SHX2_2 = SHX6_1
      SHX1_2(SHX2_2)
      SHX1_2 = 0
      SHX6_1 = SHX1_2
    end
  else
    SHX1_2 = IsPedRunning
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = IsPedSprinting
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        goto SHX_LABEL_198
      end
    end
    SHX1_2 = SHX8_1
    if not SHX1_2 then
      SHX1_2 = true
      SHX8_1 = SHX1_2
      SHX1_2 = HasAnimSetLoaded
      SHX2_2 = "MOVE_M@BAIL_BOND_TAZERED"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = RequestAnimSet
        SHX2_2 = "MOVE_M@BAIL_BOND_TAZERED"
        SHX1_2(SHX2_2)
        while true do
          SHX1_2 = HasAnimSetLoaded
          SHX2_2 = "MOVE_M@BAIL_BOND_TAZERED"
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            break
          end
          SHX1_2 = Wait
          SHX2_2 = 0
          SHX1_2(SHX2_2)
        end
      end
      SHX1_2 = SetPedMovementClipset
      SHX2_2 = SHX0_2
      SHX3_2 = "MOVE_M@BAIL_BOND_TAZERED"
      SHX4_2 = 1.0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      goto SHX_LABEL_207
      -- [FIX IF ERROR] Move ::SHX_LABEL_198:: outside nested blocks until all 'goto SHX_LABEL_198' can see it
      ::SHX_LABEL_198::
      SHX1_2 = SHX8_1
      if SHX1_2 then
        SHX1_2 = false
        SHX8_1 = SHX1_2
        SHX1_2 = ResetPedMovementClipset
        SHX2_2 = SHX0_2
        SHX3_2 = 1.0
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_207:: outside nested blocks until all 'goto SHX_LABEL_207' can see it
    ::SHX_LABEL_207::
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "lfb.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = drawNativeNotification
      SHX2_2 = [[
~INPUT_PICKUP~ Place ladder
~INPUT_ENTER~ Drop ladder
~INPUT_MP_TEXT_CHAT_TEAM~ Toggle preview]]
      SHX1_2(SHX2_2)
      SHX1_2 = IsControlJustPressed
      SHX2_2 = 0
      SHX3_2 = 38
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = TriggerEvent
        SHX2_2 = "Ladders:Client:PlaceLadder"
        SHX1_2(SHX2_2)
      else
        SHX1_2 = IsDisabledControlJustPressed
        SHX2_2 = 0
        SHX3_2 = 23
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if SHX1_2 then
          SHX1_2 = TriggerEvent
          SHX2_2 = "Ladders:Client:DropLadder"
          SHX1_2(SHX2_2)
        else
          SHX1_2 = IsControlJustPressed
          SHX2_2 = 0
          SHX3_2 = 246
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            SHX1_2 = SHX7_1
            if SHX1_2 then
              SHX1_2 = false
              SHX7_1 = SHX1_2
              SHX1_2 = PlaySoundFrontend
              SHX2_2 = -1
              SHX3_2 = "NO"
              SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              SHX5_2 = true
              SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            else
              SHX1_2 = true
              SHX7_1 = SHX1_2
              SHX1_2 = PlaySoundFrontend
              SHX2_2 = -1
              SHX3_2 = "YES"
              SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              SHX5_2 = true
              SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            end
          end
        end
      end
    end
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 22
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 23
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 24
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 44
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 140
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 141
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 142
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 257
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 263
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 264
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX6_1
    if 0 == SHX1_2 then
      SHX1_2 = SHX7_1
      if SHX1_2 then
        SHX1_2 = GetOffsetFromEntityInWorldCoords
        SHX2_2 = SHX0_2
        SHX3_2 = 0.0
        SHX4_2 = 1.2
        SHX5_2 = 1.32
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = CreateObjectNoOffset
        SHX3_2 = GetHashKey
        SHX4_2 = "prop_byard_ladder01"
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = SHX1_2.x
        SHX5_2 = SHX1_2.y
        SHX6_2 = SHX1_2.z
        SHX7_2 = false
        SHX8_2 = false
        SHX9_2 = false
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX6_1 = SHX2_2
        SHX2_2 = SetEntityCollision
        SHX3_2 = SHX6_1
        SHX4_2 = false
        SHX5_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = SetEntityAlpha
        SHX3_2 = SHX6_1
        SHX4_2 = 100
        SHX5_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      end
    end
    SHX1_2 = SHX6_1
    if 0 ~= SHX1_2 then
      SHX1_2 = SHX7_1
      if SHX1_2 then
        SHX1_2 = GetOffsetFromEntityInWorldCoords
        SHX2_2 = SHX0_2
        SHX3_2 = 0.0
        SHX4_2 = 1.2
        SHX5_2 = 1.32
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = GetEntityRotation
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        SHX3_2 = SetEntityCoords
        SHX4_2 = SHX6_1
        SHX5_2 = SHX1_2.x
        SHX6_2 = SHX1_2.y
        SHX7_2 = SHX1_2.z
        SHX8_2 = true
        SHX9_2 = false
        SHX10_2 = false
        SHX11_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX3_2 = vector3
        SHX4_2 = SHX2_2.x
        SHX4_2 = SHX4_2 - 20.0
        SHX5_2 = SHX2_2.y
        SHX6_2 = SHX2_2.z
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX4_2 = SetEntityRotation
        SHX5_2 = SHX6_1
        SHX6_2 = SHX3_2.x
        SHX7_2 = SHX3_2.y
        SHX8_2 = SHX3_2.z
        SHX9_2 = 2
        SHX10_2 = true
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      end
    end
    SHX1_2 = SHX6_1
    if 0 ~= SHX1_2 then
      SHX1_2 = SHX7_1
      if not SHX1_2 then
        SHX1_2 = ResetEntityAlpha
        SHX2_2 = SHX6_1
        SHX1_2(SHX2_2)
        SHX1_2 = DeleteObject
        SHX2_2 = SHX6_1
        SHX1_2(SHX2_2)
        SHX1_2 = SetEntityAsNoLongerNeeded
        SHX2_2 = SHX6_1
        SHX1_2(SHX2_2)
        SHX1_2 = 0
        SHX6_1 = SHX1_2
      end
    end
  end
  SHX1_2 = pairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if -1 ~= SHX5_2 then
      SHX7_2 = GetEntityBoneIndexByName
      SHX8_2 = SHX5_2
      SHX9_2 = "BONETAG_NECK"
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX8_2 = GetEntityBoneIndexByName
      SHX9_2 = SHX5_2
      SHX10_2 = "BONETAG_R_HAND"
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = GetWorldRotationOfEntityBone
      SHX10_2 = SHX5_2
      SHX11_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX10_2 = AttachEntityToEntity
      SHX11_2 = SHX6_2
      SHX12_2 = SHX5_2
      SHX13_2 = SHX8_2
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = SHX9_2.x
      SHX17_2 = SHX17_2 + 20.0
      SHX18_2 = SHX9_2.y
      SHX18_2 = SHX18_2 + 180.0
      SHX19_2 = SHX9_2.z
      SHX19_2 = SHX19_2 + 90.0
      SHX20_2 = false
      SHX21_2 = false
      SHX22_2 = false
      SHX23_2 = true
      SHX24_2 = 0
      SHX25_2 = false
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    end
  end
  SHX1_2 = SHX3_1
  if "no" ~= SHX1_2 then
    SHX1_2 = SHX3_1
    if "rot" == SHX1_2 then
      SHX1_2 = SHX5_1
      if SHX1_2 then
        SHX1_2 = vector3
        SHX2_2 = SHX5_1.x
        SHX3_2 = SHX5_1.y
        SHX4_2 = SHX5_1.z
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX2_2 = SetEntityRotation
        SHX3_2 = SHX0_2
        SHX4_2 = SHX1_2.x
        SHX5_2 = SHX1_2.y
        SHX6_2 = SHX1_2.z
        SHX7_2 = 2
        SHX8_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 21
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 22
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 23
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 24
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 25
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 30
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 31
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 32
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 33
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 34
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 35
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 44
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 140
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 141
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 142
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 257
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 263
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 264
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 266
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 267
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 268
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 269
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX14_1 = CMG
SHX14_1 = SHX14_1.createThreadOnTick
SHX15_1 = SHX13_1
SHX16_1 = "LFB Ladders"
SHX14_1(SHX15_1, SHX16_1)
