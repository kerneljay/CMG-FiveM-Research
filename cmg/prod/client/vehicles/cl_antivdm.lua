-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = GetActivePlayers
  SHX2_2 = SHX2_2()
  SHX3_2 = pairs
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getAllVehicles
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX4_2()
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX0_1
    SHX9_2 = SHX9_2[SHX8_2]
    if SHX9_2 then
      SHX9_2 = SHX1_1
      SHX9_2 = SHX9_2[SHX8_2]
      if SHX9_2 then
        SHX9_2 = DisableCamCollisionForEntity
        SHX10_2 = SHX8_2
        SHX9_2(SHX10_2)
        SHX9_2 = GetEntitySpeed
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if SHX9_2 > 5.0 then
          SHX9_2 = SHX2_1
          SHX9_2 = SHX9_2[SHX8_2]
          if not SHX9_2 then
            SHX9_2 = SHX2_1
            SHX9_2[SHX8_2] = true
            SHX9_2 = GetPedInVehicleSeat
            SHX10_2 = SHX8_2
            SHX11_2 = -1
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
            if 0 ~= SHX9_2 then
              SHX9_2 = SetEntityNoCollisionEntity
              SHX10_2 = SHX0_2
              SHX11_2 = SHX8_2
              SHX12_2 = false
              SHX9_2(SHX10_2, SHX11_2, SHX12_2)
              SHX9_2 = SetEntityNoCollisionEntity
              SHX10_2 = SHX8_2
              SHX11_2 = SHX0_2
              SHX12_2 = false
              SHX9_2(SHX10_2, SHX11_2, SHX12_2)
            end
            SHX9_2 = pairs
            SHX10_2 = SHX2_2
            SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
            for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
              SHX15_2 = GetPlayerPed
              SHX16_2 = SHX14_2
              SHX15_2 = SHX15_2(SHX16_2)
              SHX16_2 = SetEntityNoCollisionEntity
              SHX17_2 = SHX1_2
              SHX18_2 = SHX15_2
              SHX19_2 = false
              SHX16_2(SHX17_2, SHX18_2, SHX19_2)
              SHX16_2 = SetEntityNoCollisionEntity
              SHX17_2 = SHX15_2
              SHX18_2 = SHX1_2
              SHX19_2 = false
              SHX16_2(SHX17_2, SHX18_2, SHX19_2)
            end
          end
        else
          SHX9_2 = SHX2_1
          SHX9_2 = SHX9_2[SHX8_2]
          if SHX9_2 then
            SHX9_2 = SHX2_1
            SHX9_2[SHX8_2] = nil
            SHX9_2 = GetPedInVehicleSeat
            SHX10_2 = SHX8_2
            SHX11_2 = -1
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
            if 0 ~= SHX9_2 then
              SHX9_2 = SetEntityNoCollisionEntity
              SHX10_2 = SHX0_2
              SHX11_2 = SHX8_2
              SHX12_2 = true
              SHX9_2(SHX10_2, SHX11_2, SHX12_2)
              SHX9_2 = SetEntityNoCollisionEntity
              SHX10_2 = SHX8_2
              SHX11_2 = SHX0_2
              SHX12_2 = true
              SHX9_2(SHX10_2, SHX11_2, SHX12_2)
            end
            SHX9_2 = pairs
            SHX10_2 = SHX2_2
            SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
            for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
              SHX15_2 = GetPlayerPed
              SHX16_2 = SHX14_2
              SHX15_2 = SHX15_2(SHX16_2)
              SHX16_2 = SetEntityNoCollisionEntity
              SHX17_2 = SHX1_2
              SHX18_2 = SHX15_2
              SHX19_2 = true
              SHX16_2(SHX17_2, SHX18_2, SHX19_2)
              SHX16_2 = SetEntityNoCollisionEntity
              SHX17_2 = SHX15_2
              SHX18_2 = SHX1_2
              SHX19_2 = true
              SHX16_2(SHX17_2, SHX18_2, SHX19_2)
            end
          end
        end
      end
    end
  end
end
SHX4_1 = CMG
SHX4_1 = SHX4_1.createThreadOnTick
SHX5_1 = SHX3_1
SHX6_1 = "Anti VDM"
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = Citizen
SHX4_1 = SHX4_1.CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX0_2 = pairs
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getAllVehicles
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX1_2()
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX0_1
      SHX6_2 = SHX6_2[SHX5_2]
      if nil == SHX6_2 then
        SHX6_2 = GetVehicleClass
        SHX7_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2)
        if 14 ~= SHX6_2 and 15 ~= SHX6_2 and 16 ~= SHX6_2 then
          SHX7_2 = SHX0_1
          SHX7_2[SHX5_2] = true
        else
          SHX7_2 = SHX0_1
          SHX7_2[SHX5_2] = false
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 250
    SHX0_2(SHX1_2)
  end
end
SHX4_1(SHX5_1)
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
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = pairs
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getAllVehicles
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2()
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = GetEntityCoords
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX7_2 = SHX0_2 - SHX7_2
      SHX7_2 = #SHX7_2
      if SHX7_2 < 50.0 then
        SHX7_2 = SHX1_1
        SHX7_2[SHX6_2] = true
      else
        SHX7_2 = SHX1_1
        SHX7_2[SHX6_2] = nil
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 250
    SHX1_2(SHX2_2)
  end
end
SHX4_1(SHX5_1)
SHX4_1 = vector3
SHX5_1 = 2604.0
SHX6_1 = -4005.0
SHX7_1 = 9.0
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 == SHX0_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX4_1
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = #SHX1_2
  SHX2_2 = 1475.0
  if SHX1_2 > SHX2_2 then
    return
  end
  SHX1_2 = pairs
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getAllVehicles
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SetEntityNoCollisionEntity
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX10_2 = true
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = SetEntityNoCollisionEntity
    SHX8_2 = SHX6_2
    SHX9_2 = SHX0_2
    SHX10_2 = true
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.createArea
SHX7_1 = "cayoBridgeAntiVDM"
SHX8_1 = SHX4_1
SHX9_1 = 1750.0
SHX10_1 = 25.0
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX13_1 = SHX5_1
SHX14_1 = {}
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
