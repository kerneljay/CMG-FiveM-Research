-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = {}
SHX1_1 = 630.0
SHX2_1 = 851216094
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX1_2 = SHX0_1
  SHX2_2 = {}
  SHX3_2 = SHX0_2
  SHX2_2[1] = SHX3_2
  SHX1_2[SHX0_2] = SHX2_2
  SHX1_2 = GetEntityBoneIndexByName
  SHX2_2 = SHX0_2
  SHX3_2 = "seat_dside_f"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = GetEntityBoneIndexByName
  SHX3_2 = SHX0_2
  SHX4_2 = "seat_pside_f"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX2_1
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = CreateObject
  SHX5_2 = SHX2_1
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = CreateObject
  SHX6_2 = SHX2_1
  SHX7_2 = SHX3_2.x
  SHX8_2 = SHX3_2.y
  SHX9_2 = SHX3_2.z
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SHX0_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2[2] = SHX4_2
  SHX6_2 = SHX0_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2[3] = SHX5_2
  while true do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX2_1
  SHX6_2(SHX7_2)
  SHX6_2 = AttachEntityToEntity
  SHX7_2 = SHX4_2
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = 0.0
  SHX11_2 = 0.3
  SHX12_2 = 0.4
  SHX13_2 = 90.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = true
  SHX17_2 = true
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = 2
  SHX21_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX6_2 = AttachEntityToEntity
  SHX7_2 = SHX5_2
  SHX8_2 = SHX0_2
  SHX9_2 = SHX2_2
  SHX10_2 = 0.0
  SHX11_2 = 0.4
  SHX12_2 = 0.4
  SHX13_2 = 90.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = true
  SHX17_2 = true
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = 2
  SHX21_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX6_2 = SetTimeout
  SHX7_2 = 10000
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX4_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = SHX4_2
      SHX0_3(SHX1_3)
    end
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX5_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = SHX5_2
      SHX0_3(SHX1_3)
    end
  end
  SHX6_2(SHX7_2, SHX8_2)
end
SHX4_1 = Citizen
SHX4_1 = SHX4_1.CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 ~= SHX0_2 then
      SHX1_2 = GetPedInVehicleSeat
      SHX2_2 = SHX0_2
      SHX3_2 = -1
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerPed
      SHX2_2 = SHX2_2()
      if SHX1_2 == SHX2_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.inEvent
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          SHX1_2 = GetVehicleEngineHealth
          SHX2_2 = SHX0_2
          SHX1_2 = SHX1_2(SHX2_2)
          SHX2_2 = SHX1_1
          if SHX1_2 <= SHX2_2 then
            SHX2_2 = SHX0_1
            SHX2_2 = SHX2_2[SHX0_2]
            if nil == SHX2_2 then
              SHX2_2 = GetVehicleClass
              SHX3_2 = SHX0_2
              SHX2_2 = SHX2_2(SHX3_2)
              if 8 ~= SHX2_2 and 16 ~= SHX2_2 and 15 ~= SHX2_2 and 13 ~= SHX2_2 then
                SHX3_2 = TriggerServerEvent
                SHX4_2 = "f43585f6ec"
                SHX5_2 = "airbag"
                SHX6_2 = 15.0
                SHX7_2 = CMG
                SHX7_2 = SHX7_2.getSoundEventCode
                SHX7_2, SHX8_2 = SHX7_2()
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
                SHX3_2 = SHX3_1
                SHX4_2 = SHX0_2
                SHX3_2(SHX4_2)
              end
            end
          end
        end
      end
    end
    SHX1_2 = pairs
    SHX2_2 = SHX0_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_2[1]
      SHX7_2 = SHX7_2(SHX8_2)
      if not SHX7_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2[2]
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX6_2[2]
          SHX7_2(SHX8_2)
        end
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2[3]
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX6_2[3]
          SHX7_2(SHX8_2)
        end
        SHX7_2 = SHX0_1
        SHX7_2[SHX5_2] = nil
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
  end
end
SHX4_1(SHX5_1)
