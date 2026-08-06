-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_garages"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_mechanic"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = {}
SHX3_1 = 52945046
SHX4_1 = {}
SHX4_1.type = "tow"
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = 0.1
SHX9_1 = -3.42
SHX10_1 = 1.13
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX8_1 = true
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX7_1 = {}
SHX8_1 = vector3
SHX9_1 = -0.1
SHX10_1 = -3.42
SHX11_1 = 1.13
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = true
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 0.0
SHX11_1 = -2.6
SHX12_1 = 0.2
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = false
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX4_1.offsets = SHX5_1
SHX2_1[SHX3_1] = SHX4_1
SHX3_1 = 1355922771
SHX4_1 = {}
SHX4_1.type = "flatbed"
SHX4_1.bone = 20
SHX5_1 = vector3
SHX6_1 = -0.7
SHX7_1 = -6.0
SHX8_1 = -0.46
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.offset = SHX5_1
SHX4_1.heading = -10.0
SHX2_1[SHX3_1] = SHX4_1
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = {}
  SHX1_2.type = "flatbed"
  SHX2_2 = SHX0_2.bone
  SHX1_2.bone = SHX2_2
  SHX2_2 = vector3
  SHX3_2 = SHX0_2.offset
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.offset
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.offset
  SHX5_2 = SHX5_2.z
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2.offset = SHX2_2
  SHX2_2 = SHX0_2.heading
  SHX1_2.heading = SHX2_2
  return SHX1_2
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = {}
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2.offsets
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2[1]
    SHX9_2 = {}
    SHX10_2 = vector3
    SHX11_2 = SHX8_2.x
    SHX12_2 = SHX8_2.y
    SHX13_2 = SHX8_2.z
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX11_2 = SHX7_2[2]
    SHX9_2[1] = SHX10_2
    SHX9_2[2] = SHX11_2
    SHX1_2[SHX6_2] = SHX9_2
  end
  SHX2_2 = {}
  SHX2_2.type = "tow"
  SHX2_2.offsets = SHX1_2
  return SHX2_2
end
SHX5_1 = {}
SHX6_1 = pairs
SHX7_1 = SHX2_1
SHX6_1, SHX7_1, SHX8_1, SHX9_1 = SHX6_1(SHX7_1)
for SHX10_1, SHX11_1 in SHX6_1, SHX7_1, SHX8_1, SHX9_1 do
  SHX5_1[SHX10_1] = SHX11_1
end
SHX6_1 = 1355922771
SHX6_1 = SHX2_1[SHX6_1]
SHX7_1 = 52945046
SHX7_1 = SHX2_1[SHX7_1]
SHX8_1 = pairs
SHX9_1 = SHX1_1.mechanicFlatbedModelHashes
SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX8_1(SHX9_1)
for SHX12_1 in SHX8_1, SHX9_1, SHX10_1, SHX11_1 do
  SHX13_1 = SHX5_1[SHX12_1]
  if not SHX13_1 then
    SHX13_1 = SHX3_1
    SHX14_1 = SHX6_1
    SHX13_1 = SHX13_1(SHX14_1)
    SHX5_1[SHX12_1] = SHX13_1
  end
end
SHX8_1 = pairs
SHX9_1 = SHX1_1.mechanicTowTruckModelHashes
SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX8_1(SHX9_1)
for SHX12_1 in SHX8_1, SHX9_1, SHX10_1, SHX11_1 do
  SHX13_1 = SHX5_1[SHX12_1]
  if not SHX13_1 then
    SHX13_1 = SHX4_1
    SHX14_1 = SHX7_1
    SHX13_1 = SHX13_1(SHX14_1)
    SHX5_1[SHX12_1] = SHX13_1
  end
end
SHX8_1 = {}
SHX8_1[13] = true
SHX8_1[14] = true
SHX8_1[15] = true
SHX8_1[16] = true
SHX8_1[21] = true
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = 0
SHX13_1 = 0
SHX14_1 = vector3
SHX15_1 = 389.40829467773
SHX16_1 = -1622.1922607422
SHX17_1 = 29.28772354126
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = 0
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = GetVehicleClass
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX8_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.garages
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2[SHX1_2]
    if SHX9_2 then
      SHX9_2 = string
      SHX9_2 = SHX9_2.match
      SHX10_2 = SHX7_2
      SHX11_2 = "Aircraft"
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      if not SHX9_2 then
        SHX9_2 = string
        SHX9_2 = SHX9_2.match
        SHX10_2 = SHX7_2
        SHX11_2 = "Helicopters"
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
        if not SHX9_2 then
          SHX9_2 = string
          SHX9_2 = SHX9_2.match
          SHX10_2 = SHX7_2
          SHX11_2 = "Boats"
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
          if not SHX9_2 then
            goto SHX_LABEL_40
          end
        end
      end
      SHX9_2 = false
      return SHX9_2
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
    ::SHX_LABEL_40::
  end
  SHX3_2 = true
  return SHX3_2
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetModelDimensions
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = SHX2_2 - SHX3_2
  SHX4_2 = #SHX4_2
  SHX4_2 = SHX4_2 > 10.0
  return SHX4_2
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetVehicleModelNumberOfSeats
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = 1
    SHX4_2 = SHX2_2
    SHX5_2 = 1
    for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = GetPedInVehicleSeat
      SHX8_2 = SHX0_2
      SHX9_2 = SHX6_2 - 2
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      if 0 ~= SHX7_2 then
        SHX7_2 = false
        return SHX7_2
      end
    end
  end
  SHX3_2 = true
  return SHX3_2
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getGrindingAreas
  SHX2_2 = SHX2_2()
  SHX3_2 = pairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.position
    SHX9_2 = SHX1_2 - SHX9_2
    SHX9_2 = #SHX9_2
    SHX10_2 = SHX8_2.radius
    if SHX9_2 < SHX10_2 then
      SHX9_2 = true
      return SHX9_2
    end
  end
  SHX3_2 = false
  return SHX3_2
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getAllVehicles
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityAttachedTo
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 == SHX0_2 then
      return SHX6_2
    end
  end
  SHX1_2 = 0
  return SHX1_2
end
function SHX21_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = 18.0
  SHX5_2 = 0
  SHX6_2 = SHX1_2 + 0.01
  SHX7_2 = pairs
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getAllVehicles
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX8_2()
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    if SHX12_2 ~= SHX0_2 then
      SHX13_2 = DoesEntityExist
      SHX14_2 = SHX12_2
      SHX13_2 = SHX13_2(SHX14_2)
      if SHX13_2 then
        SHX13_2 = IsEntityAVehicle
        SHX14_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2)
        if SHX13_2 then
          SHX13_2 = GetEntityModel
          SHX14_2 = SHX12_2
          SHX13_2 = SHX13_2(SHX14_2)
          SHX14_2 = SHX5_1
          SHX14_2 = SHX14_2[SHX13_2]
          if SHX14_2 then
            SHX15_2 = GetEntityCoords
            SHX16_2 = SHX12_2
            SHX17_2 = true
            SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
            SHX16_2 = SHX15_2 - SHX3_2
            SHX16_2 = #SHX16_2
            if SHX4_2 >= SHX16_2 then
              SHX16_2 = SHX15_2 - SHX2_2
              SHX16_2 = #SHX16_2
              if SHX6_2 > SHX16_2 then
                SHX17_2 = false
                SHX18_2 = SHX14_2.type
                if "flatbed" == SHX18_2 then
                  SHX18_2 = SHX20_1
                  SHX19_2 = SHX12_2
                  SHX18_2 = SHX18_2(SHX19_2)
                  SHX17_2 = 0 == SHX18_2
                else
                  SHX18_2 = Entity
                  SHX19_2 = SHX12_2
                  SHX18_2 = SHX18_2(SHX19_2)
                  SHX18_2 = SHX18_2.state
                  SHX19_2 = SHX18_2.towPlayer
                  SHX19_2 = SHX18_2.towVehicle
                  SHX17_2 = not SHX19_2 and SHX17_2
                end
                if SHX17_2 then
                  SHX6_2 = SHX16_2
                  SHX5_2 = SHX12_2
                end
              end
            end
          end
        end
      end
    end
  end
  return SHX5_2
end
SHX22_1 = CMG
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "aa.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~Clock on as mechanic first."
    SHX1_2(SHX2_2)
    return
  end
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = IsEntityAVehicle
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        goto SHX_LABEL_26
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
  ::SHX_LABEL_26::
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX5_1
  SHX1_2 = SHX2_2[SHX1_2]
  if SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~b~Use this on the vehicle you want to tow, not on your flatbed or tow truck."
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getVehicleIdFromModel
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX16_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = SHX18_1
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = SHX17_1
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        goto SHX_LABEL_64
      end
    end
  end
  SHX3_2 = notify
  SHX4_2 = "~r~This vehicle cannot be towed."
  SHX3_2(SHX4_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
  ::SHX_LABEL_64::
  SHX3_2 = SHX19_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~You can not tow vehicles near a grinding area."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = GetVehicleEngineHealth
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = 925.0
  if SHX3_2 >= SHX4_2 then
    SHX3_2 = GetVehicleBodyHealth
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 925.0
    if SHX3_2 >= SHX4_2 then
      SHX3_2 = notify
      SHX4_2 = "~r~Only vehicles which are damaged can be towed."
      SHX3_2(SHX4_2)
      return
    end
  end
  SHX3_2 = SHX21_1
  SHX4_2 = SHX0_2
  SHX5_2 = 10.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if 0 == SHX3_2 then
    SHX4_2 = notify
    SHX5_2 = "~r~No free flatbed/tow truck found. Park yours within ~10m of this car and stand near your rig."
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = NetworkGetNetworkIdFromEntity
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = NetworkGetNetworkIdFromEntity
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  if 0 == SHX4_2 or 0 == SHX5_2 then
    SHX6_2 = notify
    SHX7_2 = "~r~Couldn't sync the hook. Try again."
    SHX6_2(SHX7_2)
    return
  end
  SHX6_2 = GetEntityModel
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX5_1
  SHX7_2 = SHX7_2[SHX6_2]
  SHX8_2 = TriggerServerEvent
  SHX9_2 = "53b5afb511"
  SHX8_2(SHX9_2)
  SHX8_2 = SHX7_2.type
  if "flatbed" == SHX8_2 then
    SHX8_2 = TriggerServerEvent
    SHX9_2 = "3853938b46"
    SHX10_2 = SHX4_2
    SHX11_2 = SHX5_2
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = notify
    SHX9_2 = "~g~On the bed."
    SHX8_2(SHX9_2)
  else
    SHX8_2 = notify
    SHX9_2 = "This requires a flat bed truck, not a tow truck"
    SHX8_2(SHX9_2)
  end
end
SHX22_1.tryMechanicAttachFromTargetVehicle = SHX23_1
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX20_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~Bed's empty."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = NetworkGetNetworkIdFromEntity
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "af80ba4ef6"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "53b5afb511"
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~g~Off the bed."
    SHX3_2(SHX4_2)
  end
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = Entity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = SHX1_2.state
  SHX1_2 = SHX1_2.towVehicle
  if not SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~Nothing on the hook."
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "0caaa03da5"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "53b5afb511"
    SHX2_2(SHX3_2)
    SHX2_2 = notify
    SHX3_2 = "~g~Off the hook."
    SHX2_2(SHX3_2)
  end
end
SHX24_1 = CMG
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "aa.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~Clock on as mechanic first."
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX5_1
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~That's not a job tow rig."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = SHX2_2.type
  if "tow" == SHX3_2 then
    SHX3_2 = SHX23_1
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
  else
    SHX3_2 = SHX22_1
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
  end
end
SHX24_1.detachTowedVehicle = SHX25_1
SHX24_1 = RegisterNetEvent
SHX25_1 = "3853938b46"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = NetworkDoesNetworkIdExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = NetworkGetEntityFromNetworkId
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX2_2 or 0 == SHX3_2 then
    return
  end
  SHX4_2 = GetEntityModel
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX5_1
  SHX5_2 = SHX5_2[SHX4_2]
  if not SHX5_2 then
    return
  end
  SHX6_2 = NetworkHasControlOfEntity
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 then
    SHX6_2 = GetEntityAttachedTo
    SHX7_2 = SHX3_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 ~= SHX2_2 then
      SHX6_2 = DecorSetBool
      SHX7_2 = SHX3_2
      SHX8_2 = "6b6dade745"
      SHX9_2 = true
      SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      SHX6_2 = GetModelDimensions
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = SHX5_2.heading
      if not SHX7_2 then
        SHX7_2 = 0.0
      end
      SHX8_2 = AttachEntityToEntity
      SHX9_2 = SHX3_2
      SHX10_2 = SHX2_2
      SHX11_2 = SHX5_2.bone
      SHX12_2 = SHX5_2.offset
      SHX12_2 = SHX12_2.x
      SHX13_2 = SHX5_2.offset
      SHX13_2 = SHX13_2.y
      SHX14_2 = math
      SHX14_2 = SHX14_2.abs
      SHX15_2 = SHX6_2.z
      SHX14_2 = SHX14_2(SHX15_2)
      SHX15_2 = SHX5_2.offset
      SHX15_2 = SHX15_2.z
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = SHX7_2
      SHX18_2 = false
      SHX19_2 = false
      SHX20_2 = false
      SHX21_2 = false
      SHX22_2 = 0
      SHX23_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    end
  end
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = RegisterNetEvent
SHX25_1 = "af80ba4ef6"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = NetworkDoesNetworkIdExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX1_2 = NetworkGetEntityFromNetworkId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    return
  end
  SHX2_2 = GetEntityAttachedTo
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = GetOffsetFromEntityInWorldCoords
  SHX4_2 = SHX2_2
  SHX5_2 = 3.5
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = DetachEntity
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetEntityCoordsNoOffset
  SHX5_2 = SHX1_2
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetVehicleOnGroundProperly
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
end
SHX24_1(SHX25_1, SHX26_1)
function SHX24_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  SHX3_2 = SHX9_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    return
  end
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX5_1
  SHX4_2 = SHX4_2[SHX3_2]
  if not SHX4_2 then
    return
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.clientGetUserIdFromSource
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    return
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getJobType
  SHX7_2 = SHX5_2
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  if "Mechanic" ~= SHX7_2 then
    return
  end
  SHX8_2 = {}
  SHX9_2 = pairs
  SHX10_2 = SHX4_2.offsets
  SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
  for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
    SHX15_2 = AddRope
    SHX16_2 = 0.0
    SHX17_2 = 0.0
    SHX18_2 = 0.0
    SHX19_2 = 0.0
    SHX20_2 = 0.0
    SHX21_2 = 0.0
    SHX22_2 = 4.0
    SHX23_2 = 1
    SHX24_2 = 20.0
    SHX25_2 = 0.0
    SHX26_2 = 0.0
    SHX27_2 = false
    SHX28_2 = true
    SHX29_2 = false
    SHX30_2 = 1.0
    SHX31_2 = false
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
    SHX16_2 = SHX14_2[2]
    if not SHX16_2 then
      SHX16_2 = Citizen
      SHX16_2 = SHX16_2.InvokeNative
      SHX17_2 = 4253485061045133164
      SHX18_2 = Citizen
      SHX18_2 = SHX18_2.PointerValueIntInitialized
      SHX19_2 = SHX15_2
      SHX18_2 = SHX18_2(SHX19_2)
      SHX19_2 = false
      SHX16_2(SHX17_2, SHX18_2, SHX19_2)
      SHX16_2 = RopeDrawShadowEnabled
      SHX17_2 = SHX15_2
      SHX18_2 = false
      SHX16_2(SHX17_2, SHX18_2)
    end
    SHX16_2 = GetWorldPositionOfEntityBone
    SHX17_2 = SHX2_2
    SHX18_2 = GetPedBoneIndex
    SHX19_2 = SHX2_2
    SHX20_2 = 57005
    SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2 = SHX18_2(SHX19_2, SHX20_2)
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
    SHX17_2 = GetOffsetFromEntityInWorldCoords
    SHX18_2 = SHX0_2
    SHX19_2 = SHX14_2[1]
    SHX19_2 = SHX19_2.x
    SHX20_2 = SHX14_2[1]
    SHX20_2 = SHX20_2.y
    SHX21_2 = SHX14_2[1]
    SHX21_2 = SHX21_2.z
    SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX18_2 = AttachEntitiesToRope
    SHX19_2 = SHX15_2
    SHX20_2 = SHX2_2
    SHX21_2 = SHX0_2
    SHX22_2 = SHX16_2.x
    SHX23_2 = SHX16_2.y
    SHX24_2 = SHX16_2.z
    SHX25_2 = SHX17_2.x
    SHX26_2 = SHX17_2.y
    SHX27_2 = SHX17_2.z
    SHX28_2 = 20.0
    SHX29_2 = true
    SHX30_2 = true
    SHX31_2 = nil
    SHX32_2 = nil
    SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
    SHX18_2 = table
    SHX18_2 = SHX18_2.insert
    SHX19_2 = SHX8_2
    SHX20_2 = SHX15_2
    SHX18_2(SHX19_2, SHX20_2)
  end
  SHX9_2 = SHX9_1
  SHX9_2[SHX0_2] = SHX8_2
end
function SHX25_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  SHX3_2 = SHX10_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    return
  end
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX5_1
  SHX4_2 = SHX4_2[SHX3_2]
  if not SHX4_2 then
    return
  end
  SHX5_2 = DecorExistOn
  SHX6_2 = SHX1_2
  SHX7_2 = "6b6dade745"
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if not SHX5_2 then
    SHX5_2 = NetworkHasControlOfEntity
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = DecorSetBool
      SHX6_2 = SHX1_2
      SHX7_2 = "6b6dade745"
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
  end
  SHX5_2 = {}
  SHX6_2 = pairs
  SHX7_2 = SHX4_2.offsets
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = GetOffsetFromEntityInWorldCoords
    SHX13_2 = SHX1_2
    SHX14_2 = SHX2_2.x
    SHX15_2 = SHX2_2.y
    SHX16_2 = SHX2_2.z
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX13_2 = GetOffsetFromEntityInWorldCoords
    SHX14_2 = SHX0_2
    SHX15_2 = SHX11_2[1]
    SHX15_2 = SHX15_2.x
    SHX16_2 = SHX11_2[1]
    SHX16_2 = SHX16_2.y
    SHX17_2 = SHX11_2[1]
    SHX17_2 = SHX17_2.z
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX14_2 = SHX12_2 - SHX13_2
    SHX14_2 = #SHX14_2
    SHX15_2 = SHX11_2[2]
    if SHX15_2 then
      SHX15_2 = 0.6
      if SHX15_2 then
        goto SHX_LABEL_61
      end
    end
    SHX15_2 = 1.2
    -- [FIX IF ERROR] Move ::SHX_LABEL_61:: outside nested blocks until all 'goto SHX_LABEL_61' can see it
    ::SHX_LABEL_61::
    SHX16_2 = AddRope
    SHX17_2 = 0.0
    SHX18_2 = 0.0
    SHX19_2 = 0.0
    SHX20_2 = 0.0
    SHX21_2 = 0.0
    SHX22_2 = 0.0
    SHX23_2 = 4.0
    SHX24_2 = 1
    SHX25_2 = SHX14_2
    SHX26_2 = SHX15_2
    SHX27_2 = 0.2
    SHX28_2 = false
    SHX29_2 = true
    SHX30_2 = false
    SHX31_2 = 1.0
    SHX32_2 = false
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
    SHX17_2 = Citizen
    SHX17_2 = SHX17_2.InvokeNative
    SHX18_2 = 8620873403488097103
    SHX19_2 = SHX16_2
    SHX20_2 = true
    SHX17_2(SHX18_2, SHX19_2, SHX20_2)
    SHX17_2 = SHX11_2[2]
    if not SHX17_2 then
      SHX17_2 = Citizen
      SHX17_2 = SHX17_2.InvokeNative
      SHX18_2 = 4253485061045133164
      SHX19_2 = Citizen
      SHX19_2 = SHX19_2.PointerValueIntInitialized
      SHX20_2 = SHX16_2
      SHX19_2 = SHX19_2(SHX20_2)
      SHX20_2 = false
      SHX17_2(SHX18_2, SHX19_2, SHX20_2)
      SHX17_2 = RopeDrawShadowEnabled
      SHX18_2 = SHX16_2
      SHX19_2 = false
      SHX17_2(SHX18_2, SHX19_2)
    end
    SHX17_2 = AttachEntitiesToRope
    SHX18_2 = SHX16_2
    SHX19_2 = SHX1_2
    SHX20_2 = SHX0_2
    SHX21_2 = SHX12_2.x
    SHX22_2 = SHX12_2.y
    SHX23_2 = SHX12_2.z
    SHX24_2 = SHX13_2.x
    SHX25_2 = SHX13_2.y
    SHX26_2 = SHX13_2.z
    SHX27_2 = SHX14_2
    SHX28_2 = true
    SHX29_2 = true
    SHX30_2 = nil
    SHX31_2 = nil
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
    SHX17_2 = StartRopeWinding
    SHX18_2 = SHX16_2
    SHX17_2(SHX18_2)
    SHX17_2 = table
    SHX17_2 = SHX17_2.insert
    SHX18_2 = SHX5_2
    SHX19_2 = SHX16_2
    SHX17_2(SHX18_2, SHX19_2)
  end
  SHX6_2 = SHX10_1
  SHX6_2[SHX0_2] = SHX5_2
end
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX12_1
  SHX3_2 = SHX11_1
  SHX3_2[SHX1_2] = SHX2_2
  SHX3_2 = SHX12_1
  SHX3_2 = SHX3_2 + 1
  SHX12_1 = SHX3_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = SHX11_1
    SHX3_2 = SHX3_2[SHX1_2]
    if SHX3_2 ~= SHX2_2 then
      break
    end
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = Entity
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX3_2.state
      SHX3_2 = SHX3_2[SHX0_2]
      if SHX3_2 then
        goto SHX_LABEL_31
      end
    end
    SHX3_2 = false
    return SHX3_2
    goto SHX_LABEL_50
    -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
    ::SHX_LABEL_31::
    SHX3_2 = GetEntityCoords
    SHX4_2 = SHX1_2
    SHX5_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX3_2 = SHX3_2 - SHX4_2
    SHX3_2 = #SHX3_2
    if SHX3_2 < 50.0 then
      SHX3_2 = HasCollisionLoadedAroundEntity
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = true
        return SHX3_2
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_50:: outside nested blocks until all 'goto SHX_LABEL_50' can see it
    ::SHX_LABEL_50::
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = false
  return SHX3_2
end
SHX27_1 = AddStateBagChangeHandler
SHX28_1 = "towPlayer"
SHX29_1 = nil
function SHX30_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX4_2 = 0
  while true do
    if SHX4_2 > 25 then
      return
    else
      SHX5_2 = NetworkDoesEntityExistWithNetworkId
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = NetworkGetEntityFromNetworkId
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 0 ~= SHX5_2 then
          if SHX2_2 then
            SHX6_2 = GetPlayerFromServerId
            SHX7_2 = SHX2_2
            SHX6_2 = SHX6_2(SHX7_2)
            if -1 == SHX6_2 then
              goto SHX_LABEL_68
            end
            SHX7_2 = GetPlayerPed
            SHX8_2 = SHX6_2
            SHX7_2 = SHX7_2(SHX8_2)
            if 0 == SHX7_2 then
              goto SHX_LABEL_68
            end
            SHX8_2 = SHX26_1
            SHX9_2 = "towPlayer"
            SHX10_2 = SHX5_2
            SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
            if SHX8_2 then
              SHX8_2 = SHX24_1
              SHX9_2 = SHX5_2
              SHX10_2 = SHX2_2
              SHX11_2 = SHX7_2
              SHX8_2(SHX9_2, SHX10_2, SHX11_2)
            end
            break
          else
            SHX6_2 = SHX9_1
            SHX6_2 = SHX6_2[SHX5_2]
            if SHX6_2 then
              SHX6_2 = pairs
              SHX7_2 = SHX9_1
              SHX7_2 = SHX7_2[SHX5_2]
              SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
              for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
                SHX12_2 = DeleteRope
                SHX13_2 = SHX11_2
                SHX12_2(SHX13_2)
              end
              SHX6_2 = SHX9_1
              SHX6_2[SHX5_2] = nil
            end
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_68:: outside nested blocks until all 'goto SHX_LABEL_68' can see it
    ::SHX_LABEL_68::
    SHX4_2 = SHX4_2 + 1
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 200
    SHX5_2(SHX6_2)
  end
end
SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX27_1 = AddStateBagChangeHandler
SHX28_1 = "towVehicle"
SHX29_1 = nil
function SHX30_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX4_2 = 0
  while true do
    if SHX4_2 > 25 then
      return
    else
      SHX5_2 = NetworkDoesEntityExistWithNetworkId
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = NetworkGetEntityFromNetworkId
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 0 ~= SHX5_2 then
          if SHX2_2 then
            SHX6_2 = SHX9_1
            SHX6_2 = SHX6_2[SHX5_2]
            if SHX6_2 then
              SHX6_2 = pairs
              SHX7_2 = SHX9_1
              SHX7_2 = SHX7_2[SHX5_2]
              SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
              for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
                SHX12_2 = DeleteRope
                SHX13_2 = SHX11_2
                SHX12_2(SHX13_2)
              end
              SHX6_2 = SHX9_1
              SHX6_2[SHX5_2] = nil
            end
            SHX6_2 = NetworkDoesNetworkIdExist
            SHX7_2 = SHX2_2.targetNetId
            SHX6_2 = SHX6_2(SHX7_2)
            if not SHX6_2 then
              goto SHX_LABEL_85
            end
            SHX6_2 = NetworkGetEntityFromNetworkId
            SHX7_2 = SHX2_2.targetNetId
            SHX6_2 = SHX6_2(SHX7_2)
            if 0 == SHX6_2 then
              goto SHX_LABEL_85
            end
            SHX7_2 = SHX26_1
            SHX8_2 = "towVehicle"
            SHX9_2 = SHX5_2
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
            if SHX7_2 then
              SHX7_2 = SHX25_1
              SHX8_2 = SHX5_2
              SHX9_2 = SHX6_2
              SHX10_2 = SHX2_2.targetOffset
              SHX7_2(SHX8_2, SHX9_2, SHX10_2)
            end
            break
          else
            SHX6_2 = SHX10_1
            SHX6_2 = SHX6_2[SHX5_2]
            if SHX6_2 then
              SHX6_2 = pairs
              SHX7_2 = SHX10_1
              SHX7_2 = SHX7_2[SHX5_2]
              SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
              for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
                SHX12_2 = DeleteRope
                SHX13_2 = SHX11_2
                SHX12_2(SHX13_2)
              end
              SHX6_2 = SHX10_1
              SHX6_2[SHX5_2] = nil
            end
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_85:: outside nested blocks until all 'goto SHX_LABEL_85' can see it
    ::SHX_LABEL_85::
    SHX4_2 = SHX4_2 + 1
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 200
    SHX5_2(SHX6_2)
  end
end
SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX27_1 = Citizen
SHX27_1 = SHX27_1.CreateThread
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = DecorRegister
  SHX1_2 = "6b6dade745"
  SHX2_2 = 2
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "aa.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = false
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerVehicle
      SHX1_2 = SHX1_2()
      if 0 ~= SHX1_2 then
        SHX2_2 = GetEntityModel
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        SHX3_2 = SHX5_1
        SHX3_2 = SHX3_2[SHX2_2]
        if SHX3_2 then
          SHX3_2 = GetGameTimer
          SHX3_2 = SHX3_2()
          SHX4_2 = SHX15_1
          SHX3_2 = SHX3_2 - SHX4_2
          SHX4_2 = 60000
          if SHX3_2 > SHX4_2 then
            SHX3_2 = GetEntitySpeed
            SHX4_2 = SHX1_2
            SHX3_2 = SHX3_2(SHX4_2)
            SHX4_2 = 2.5
            if SHX3_2 > SHX4_2 then
              SHX3_2 = TriggerServerEvent
              SHX4_2 = "53b5afb511"
              SHX3_2(SHX4_2)
              SHX3_2 = GetGameTimer
              SHX3_2 = SHX3_2()
              SHX15_1 = SHX3_2
            end
          end
          SHX3_2 = SHX20_1
          SHX4_2 = SHX1_2
          SHX3_2 = SHX3_2(SHX4_2)
          if 0 == SHX3_2 then
            SHX3_2 = Entity
            SHX4_2 = SHX1_2
            SHX3_2 = SHX3_2(SHX4_2)
            SHX3_2 = SHX3_2.state
            SHX3_2 = SHX3_2.towVehicle
            if not SHX3_2 then
              goto SHX_LABEL_57
            end
          end
          SHX0_2 = true
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_57:: outside nested blocks until all 'goto SHX_LABEL_57' can see it
      ::SHX_LABEL_57::
      if SHX0_2 then
        SHX2_2 = SHX13_1
        if 0 == SHX2_2 then
          SHX2_2 = TriggerServerEvent
          SHX3_2 = "53b5afb511"
          SHX2_2(SHX3_2)
          SHX2_2 = AddBlipForCoord
          SHX3_2 = SHX14_1.x
          SHX4_2 = SHX14_1.y
          SHX5_2 = SHX14_1.z
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX13_1 = SHX2_2
          SHX2_2 = SetBlipRoute
          SHX3_2 = SHX13_1
          SHX4_2 = true
          SHX2_2(SHX3_2, SHX4_2)
      end
      elseif not SHX0_2 then
        SHX2_2 = SHX13_1
        if 0 ~= SHX2_2 then
          SHX2_2 = TriggerServerEvent
          SHX3_2 = "53b5afb511"
          SHX2_2(SHX3_2)
          SHX2_2 = RemoveBlip
          SHX3_2 = SHX13_1
          SHX2_2(SHX3_2)
          SHX2_2 = 0
          SHX13_1 = SHX2_2
        end
      end
    end
    SHX0_2 = pairs
    SHX1_2 = SHX9_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      if not SHX6_2 then
        SHX6_2 = pairs
        SHX7_2 = SHX5_2
        SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
        for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
          SHX12_2 = DeleteRope
          SHX13_2 = SHX11_2
          SHX12_2(SHX13_2)
        end
        SHX6_2 = SHX9_1
        SHX6_2[SHX4_2] = nil
      end
    end
    SHX0_2 = pairs
    SHX1_2 = SHX10_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      if not SHX6_2 then
        SHX6_2 = pairs
        SHX7_2 = SHX5_2
        SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
        for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
          SHX12_2 = DeleteRope
          SHX13_2 = SHX11_2
          SHX12_2(SHX13_2)
        end
        SHX6_2 = SHX10_1
        SHX6_2[SHX4_2] = nil
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 5000
    SHX0_2(SHX1_2)
  end
end
SHX27_1(SHX28_1)
SHX27_1 = RegisterNetEvent
SHX28_1 = "e3a2b4bde0"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "AA" ~= SHX0_2 then
    return
  end
end
SHX27_1(SHX28_1, SHX29_1)
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "aa.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "Press ~INPUT_CONTEXT~ to purchase mechanic flatbed"
    SHX0_2(SHX1_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 51
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "0f93bb7bac"
      SHX2_2 = "Mechanics"
      SHX3_2 = "caracaraptorfb"
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
  end
end
SHX28_1 = vector3
SHX29_1 = 485.83279418945
SHX30_1 = -1329.8332519531
SHX31_1 = 29.22008895874
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = tCMG
SHX29_1 = SHX29_1.addMarker
SHX30_1 = SHX28_1.x
SHX31_1 = SHX28_1.y
SHX32_1 = SHX28_1.z
SHX32_1 = SHX32_1 - 1.0
SHX33_1 = 0.7
SHX34_1 = 0.7
SHX35_1 = 0.5
SHX36_1 = 255
SHX37_1 = 255
SHX38_1 = 0
SHX39_1 = 180
SHX40_1 = 10.0
SHX41_1 = 1
SHX42_1 = false
SHX43_1 = false
SHX44_1 = false
SHX45_1 = nil
SHX46_1 = nil
SHX47_1 = nil
SHX48_1 = nil
SHX49_1 = nil
SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX29_1 = CMG
SHX29_1 = SHX29_1.createArea
SHX30_1 = "aa_buy_vehicle"
SHX31_1 = SHX28_1
SHX32_1 = 2.0
SHX33_1 = 2.0
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX36_1 = SHX27_1
SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX29_1 = CMG
SHX29_1 = SHX29_1.registerDevMenuState
SHX30_1 = "Mechanic/Flatbed attach"
SHX31_1 = {}
SHX31_1.ox = 0.0
SHX31_1.oy = -6.0
SHX31_1.oz = -0.36
SHX31_1.rx = 0.0
SHX31_1.ry = 0.0
SHX31_1.rz = 0.0
SHX31_1.nudgeStepIdx = 3
SHX29_1 = SHX29_1(SHX30_1, SHX31_1)
SHX30_1 = 0
SHX31_1 = 0
SHX32_1 = {}
SHX33_1 = 0.02
SHX34_1 = 0.05
SHX35_1 = 0.1
SHX36_1 = 0.25
SHX37_1 = 0.5
SHX38_1 = 1.0
SHX39_1 = 5.0
SHX40_1 = 10.0
SHX32_1[1] = SHX33_1
SHX32_1[2] = SHX34_1
SHX32_1[3] = SHX35_1
SHX32_1[4] = SHX36_1
SHX32_1[5] = SHX37_1
SHX32_1[6] = SHX38_1
SHX32_1[7] = SHX39_1
SHX32_1[8] = SHX40_1
SHX33_1 = {}
SHX34_1 = ipairs
SHX35_1 = SHX32_1
SHX34_1, SHX35_1, SHX36_1, SHX37_1 = SHX34_1(SHX35_1)
for SHX38_1, SHX39_1 in SHX34_1, SHX35_1, SHX36_1, SHX37_1 do
  SHX40_1 = #SHX33_1
  SHX40_1 = SHX40_1 + 1
  SHX41_1 = tostring
  SHX42_1 = SHX39_1
  SHX41_1 = SHX41_1(SHX42_1)
  SHX33_1[SHX40_1] = SHX41_1
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_2 or SHX1_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
  end
  return SHX1_2
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = SHX31_1
  SHX1_2 = SHX30_1
  if 0 ~= SHX0_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 and 0 ~= SHX1_2 then
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_18
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX2_2 = DetachEntity
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetModelDimensions
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = AttachEntityToEntity
  SHX5_2 = SHX1_2
  SHX6_2 = SHX0_2
  SHX7_2 = 20
  SHX8_2 = SHX29_1.ox
  SHX9_2 = SHX29_1.oy
  SHX10_2 = math
  SHX10_2 = SHX10_2.abs
  SHX11_2 = SHX3_2.z
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SHX29_1.oz
  SHX10_2 = SHX10_2 + SHX11_2
  SHX11_2 = SHX29_1.rx
  SHX12_2 = SHX29_1.ry
  SHX13_2 = SHX29_1.rz
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = 0
  SHX19_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX4_2 = print
  SHX5_2 = "entity"
  SHX6_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2)
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX34_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_25
    end
  end
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.notify
  SHX3_2 = "~r~Sit in the flatbed driver seat first."
  SHX2_2(SHX3_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
  ::SHX_LABEL_25::
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX5_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = SHX5_1
    SHX3_2 = SHX3_2[SHX2_2]
    SHX3_2 = SHX3_2.type
    if "flatbed" == SHX3_2 then
      goto SHX_LABEL_42
    end
  end
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.notify
  SHX4_2 = "~r~You must be in a flatbed."
  SHX3_2(SHX4_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
  ::SHX_LABEL_42::
  SHX3_2 = SHX30_1
  if 0 ~= SHX3_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX30_1
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DetachEntity
      SHX4_2 = SHX30_1
      SHX5_2 = true
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetEntityAsMissionEntity
      SHX4_2 = SHX30_1
      SHX5_2 = true
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DeleteEntity
      SHX4_2 = SHX30_1
      SHX3_2(SHX4_2)
    end
  end
  SHX3_2 = 0
  SHX30_1 = SHX3_2
  SHX31_1 = SHX1_2
  SHX3_2 = SHX5_1
  SHX3_2 = SHX3_2[SHX2_2]
  SHX4_2 = SHX3_2.offset
  SHX4_2 = SHX4_2.x
  SHX29_1.ox = SHX4_2
  SHX4_2 = SHX3_2.offset
  SHX4_2 = SHX4_2.y
  SHX29_1.oy = SHX4_2
  SHX4_2 = SHX3_2.offset
  SHX4_2 = SHX4_2.z
  SHX29_1.oz = SHX4_2
  SHX29_1.rx = 0.0
  SHX29_1.ry = 0.0
  SHX4_2 = SHX3_2.heading
  if not SHX4_2 then
    SHX4_2 = 0.0
  end
  SHX29_1.rz = SHX4_2
  SHX4_2 = GetHashKey
  SHX5_2 = "premier"
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX1_2
  SHX7_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = CreateVehicle
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX10_2 = SHX10_2 + 2.0
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  if 0 ~= SHX6_2 then
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = SetEntityAsMissionEntity
      SHX8_2 = SHX6_2
      SHX9_2 = true
      SHX10_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.initLocalVehicle
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
      SHX30_1 = SHX6_2
      SHX7_2 = SHX35_1
      SHX7_2()
    end
  end
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX4_2
  SHX7_2(SHX8_2)
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.notify
  SHX8_2 = "~g~Test vehicle spawned on flatbed. Nudge to tune."
  SHX7_2(SHX8_2)
end
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX30_1
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX30_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DetachEntity
      SHX1_2 = SHX30_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = SetEntityAsMissionEntity
      SHX1_2 = SHX30_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DeleteEntity
      SHX1_2 = SHX30_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = 0
  SHX30_1 = SHX0_2
  SHX0_2 = 0
  SHX31_1 = SHX0_2
end
function SHX38_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.max
  SHX3_2 = 1
  SHX4_2 = math
  SHX4_2 = SHX4_2.min
  SHX5_2 = SHX32_1
  SHX5_2 = #SHX5_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = tonumber
  SHX8_2 = SHX29_1.nudgeStepIdx
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = 3
  end
  SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SHX32_1
  SHX3_2 = SHX3_2[SHX2_2]
  SHX4_2 = SHX29_1
  SHX5_2 = SHX29_1
  SHX5_2 = SHX5_2[SHX0_2]
  if not SHX5_2 then
    SHX5_2 = 0.0
  end
  SHX6_2 = SHX1_2 * SHX3_2
  SHX5_2 = SHX5_2 + SHX6_2
  SHX4_2[SHX0_2] = SHX5_2
  SHX4_2 = SHX35_1
  SHX4_2()
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = string
  SHX0_2 = SHX0_2.format
  SHX1_2 = [[
offset = vector3(%.4f, %.4f, %.4f),
        heading = %.2f
        -- rx=%.4f ry=%.4f rz=%.4f]]
  SHX2_2 = SHX29_1.ox
  SHX3_2 = SHX29_1.oy
  SHX4_2 = SHX29_1.oz
  SHX5_2 = SHX29_1.rz
  SHX6_2 = SHX29_1.rx
  SHX7_2 = SHX29_1.ry
  SHX8_2 = SHX29_1.rz
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = print
  SHX2_2 = "[flatbed-dev] aaVehicles[`caracaraptorfb`]:"
  SHX1_2(SHX2_2)
  SHX1_2 = print
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = "~g~Printed to F8 console."
  SHX1_2(SHX2_2)
end
SHX40_1 = CMG
SHX40_1 = SHX40_1.registerDevMenuItems
SHX41_1 = "Mechanic/Flatbed attach"
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "Flatbed vehicle attach tuning"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX30_1
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX30_1
  SHX0_2 = 0 ~= SHX0_2 and SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Button
  SHX2_2 = "Spawn test vehicle on flatbed"
  SHX3_2 = "Sit in flatbed driver seat first. Spawns a premier."
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX36_1
      SHX3_3()
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Button
  SHX2_2 = "Delete test vehicle"
  SHX3_2 = ""
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX37_1
      SHX3_3()
      SHX3_3 = tCMG
      SHX3_3 = SHX3_3.notify
      SHX4_3 = "~y~Cleaned up."
      SHX3_3(SHX4_3)
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = math
  SHX1_2 = SHX1_2.max
  SHX2_2 = 1
  SHX3_2 = math
  SHX3_2 = SHX3_2.min
  SHX4_2 = SHX32_1
  SHX4_2 = #SHX4_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = tonumber
  SHX7_2 = SHX29_1.nudgeStepIdx
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = 3
  end
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX5_2(SHX6_2)
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX29_1.nudgeStepIdx = SHX1_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.List
  SHX3_2 = "Nudge step"
  SHX4_2 = SHX33_1
  SHX5_2 = SHX1_2
  SHX6_2 = "Step size per nudge."
  SHX7_2 = {}
  SHX8_2 = true
  function SHX9_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX29_1.nudgeStepIdx = SHX3_3
  end
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Separator
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Position: ox=%.3f oy=%.3f oz=%.3f"
  SHX5_2 = SHX29_1.ox
  SHX6_2 = SHX29_1.oy
  SHX7_2 = SHX29_1.oz
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "ox + (right)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "ox"
      SHX5_3 = 1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "ox - (left)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "ox"
      SHX5_3 = -1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "oy + (forward)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "oy"
      SHX5_3 = 1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "oy - (back)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "oy"
      SHX5_3 = -1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "oz + (up)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "oz"
      SHX5_3 = 1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "oz - (down)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "oz"
      SHX5_3 = -1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Separator
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Rotation: rx=%.2f ry=%.2f rz=%.2f"
  SHX5_2 = SHX29_1.rx
  SHX6_2 = SHX29_1.ry
  SHX7_2 = SHX29_1.rz
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "rz + (heading CW)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "rz"
      SHX5_3 = 1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "rz - (heading CCW)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "rz"
      SHX5_3 = -1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "rx +"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "rx"
      SHX5_3 = 1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "rx -"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "rx"
      SHX5_3 = -1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "ry +"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "ry"
      SHX5_3 = 1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "ry -"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX38_1
      SHX4_3 = "ry"
      SHX5_3 = -1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Separator
  SHX3_2 = ""
  SHX2_2(SHX3_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "Print cfg snippet (F8)"
  SHX4_2 = ""
  SHX5_2 = SHX0_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX39_1
      SHX3_3()
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = AddEventHandler
SHX41_1 = "onResourceStop"
function SHX42_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 ~= SHX1_2 then
    return
  end
  SHX1_2 = SHX37_1
  SHX1_2()
end
SHX40_1(SHX41_1, SHX42_1)
