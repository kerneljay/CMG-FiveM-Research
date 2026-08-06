-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = {}
SHX1_1 = 0.1
SHX2_1 = false
SHX3_1 = {}
SHX4_1 = 0
SHX5_1 = 168
SHX6_1 = 255
SHX7_1 = 215
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2
  SHX5_2 = SHX0_1
  SHX5_2 = SHX5_2[SHX3_2]
  if not SHX5_2 then
    SHX5_2 = SHX0_1
    SHX6_2 = {}
    SHX5_2[SHX3_2] = SHX6_2
  end
  SHX5_2 = table
  SHX5_2 = SHX5_2.insert
  SHX6_2 = SHX0_1
  SHX6_2 = SHX6_2[SHX3_2]
  SHX7_2 = {}
  SHX7_2.type = SHX0_2
  SHX7_2.msg = SHX1_2
  SHX7_2.color = SHX2_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetTimeout
  SHX6_2 = SHX4_2
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = table
    SHX0_3 = SHX0_3.remove
    SHX2_3 = SHX3_2
    SHX1_3 = SHX0_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX2_3 = 1
    SHX0_3(SHX1_3, SHX2_3)
    SHX1_3 = SHX3_2
    SHX0_3 = SHX0_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX0_3 = #SHX0_3
    if 0 == SHX0_3 then
      SHX1_3 = SHX3_2
      SHX0_3 = SHX0_1
      SHX0_3[SHX1_3] = nil
    end
  end
  SHX5_2(SHX6_2, SHX7_2)
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = GetVehiclePedIsUsing
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if 0 == SHX5_2 then
      SHX5_2 = GetEntityCoords
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = pairs
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX4_2]
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = vector3
        SHX13_2 = 0.0
        SHX14_2 = 0.0
        SHX15_2 = SHX1_1
        SHX15_2 = SHX15_2 * SHX10_2
        SHX15_2 = 0.9 + SHX15_2
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        SHX12_2 = SHX5_2 + SHX12_2
        SHX13_2 = CMG
        SHX13_2 = SHX13_2.DrawText3D
        SHX14_2 = SHX12_2
        SHX15_2 = SHX11_2.msg
        SHX16_2 = 0.5
        SHX17_2 = 4
        SHX18_2 = false
        SHX19_2 = SHX11_2.color
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      end
    else
      SHX5_2 = GetEntityBoneIndexByName
      SHX6_2 = SHX4_2
      SHX7_2 = "IK_Head"
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX6_2 = GetWorldPositionOfEntityBone
      SHX7_2 = SHX4_2
      SHX8_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = pairs
      SHX8_2 = SHX0_1
      SHX8_2 = SHX8_2[SHX4_2]
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = vector3
        SHX14_2 = 0.0
        SHX15_2 = 0.0
        SHX16_2 = SHX1_1
        SHX16_2 = SHX16_2 * SHX11_2
        SHX16_2 = 0.4 + SHX16_2
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SHX6_2 + SHX13_2
        SHX14_2 = CMG
        SHX14_2 = SHX14_2.DrawText3D
        SHX15_2 = SHX13_2
        SHX16_2 = SHX12_2.msg
        SHX17_2 = 0.5
        SHX18_2 = 4
        SHX19_2 = false
        SHX20_2 = SHX12_2.color
        SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      end
    end
  end
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.createThreadOnTick
SHX7_1 = SHX5_1
SHX8_1 = "ME"
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "561f4c4dfb"
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -1 ~= SHX3_2 then
    SHX4_2 = GetPlayerFromServerId
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = PlayerId
    SHX5_2 = SHX5_2()
    if SHX4_2 == SHX5_2 then
      SHX4_2 = SHX2_1
      if SHX4_2 then
        SHX4_2 = TriggerEvent
        SHX5_2 = "chatMessage"
        SHX6_2 = ""
        SHX7_2 = {}
        SHX8_2 = 255
        SHX9_2 = 0
        SHX10_2 = 0
        SHX7_2[1] = SHX8_2
        SHX7_2[2] = SHX9_2
        SHX7_2[3] = SHX10_2
        SHX8_2 = " ^6 me | "
        SHX9_2 = SHX1_2
        SHX10_2 = "  "
        SHX11_2 = "^6  "
        SHX12_2 = SHX2_2
        SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX4_2 = SHX4_1
      SHX5_2 = "me"
      SHX6_2 = SHX2_2
      SHX7_2 = SHX3_1
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getPlayerPed
      SHX8_2 = SHX8_2()
      SHX9_2 = 10000
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    else
      SHX4_2 = GetEntityCoords
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPlayerPed
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2()
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX5_2 = GetEntityCoords
      SHX6_2 = GetPlayerPed
      SHX7_2 = SHX3_2
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX6_2(SHX7_2)
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX4_2 = SHX4_2 - SHX5_2
      SHX4_2 = #SHX4_2
      SHX5_2 = 7.01
      if SHX4_2 < SHX5_2 then
        SHX4_2 = HasEntityClearLosToEntity
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.getPlayerPed
        SHX5_2 = SHX5_2()
        SHX6_2 = GetPlayerPed
        SHX7_2 = SHX3_2
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = 17
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        if 1 == SHX4_2 then
          SHX4_2 = SHX2_1
          if SHX4_2 then
            SHX4_2 = TriggerEvent
            SHX5_2 = "chatMessage"
            SHX6_2 = ""
            SHX7_2 = {}
            SHX8_2 = 255
            SHX9_2 = 0
            SHX10_2 = 0
            SHX7_2[1] = SHX8_2
            SHX7_2[2] = SHX9_2
            SHX7_2[3] = SHX10_2
            SHX8_2 = " ^6 me | "
            SHX9_2 = SHX1_2
            SHX10_2 = "  "
            SHX11_2 = "^6  "
            SHX12_2 = SHX2_2
            SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          end
          SHX4_2 = SHX4_1
          SHX5_2 = "me"
          SHX6_2 = SHX2_2
          SHX7_2 = SHX3_1
          SHX8_2 = GetPlayerPed
          SHX9_2 = SHX3_2
          SHX8_2 = SHX8_2(SHX9_2)
          SHX9_2 = 10000
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        end
      end
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
