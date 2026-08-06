-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_clothing"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadJsonModule
SHX2_1 = "cfg/clothing/migration.json"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.loadModule
SHX3_1 = "cfg/cfg_store"
SHX2_1 = SHX2_1(SHX3_1)
SHX3_1 = false
SHX4_1 = 2
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = {}
SHX8_1 = {}
SHX9_1 = {}
SHX10_1 = {}
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "%s|%d|%d|%s|%s"
  SHX7_2 = SHX0_2 or SHX7_2
  if not SHX0_2 then
    SHX7_2 = ""
  end
  SHX8_2 = math
  SHX8_2 = SHX8_2.floor
  SHX9_2 = SHX1_2 or SHX9_2
  if not SHX1_2 then
    SHX9_2 = 0
  end
  SHX9_2 = SHX9_2 + 0.5
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.floor
  SHX10_2 = SHX2_2 or SHX10_2
  if not SHX2_2 then
    SHX10_2 = 0
  end
  SHX10_2 = SHX10_2 + 0.5
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = SHX3_2 or SHX10_2
  if not SHX3_2 then
    SHX10_2 = ""
  end
  SHX11_2 = SHX4_2 or SHX11_2
  if not SHX4_2 then
    SHX11_2 = ""
  end
  return SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX12_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "%s|%d|%s|%s"
  SHX6_2 = SHX0_2 or SHX6_2
  if not SHX0_2 then
    SHX6_2 = ""
  end
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = SHX1_2 or SHX8_2
  if not SHX1_2 then
    SHX8_2 = 0
  end
  SHX8_2 = SHX8_2 + 0.5
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX2_2 or SHX8_2
  if not SHX2_2 then
    SHX8_2 = ""
  end
  SHX9_2 = SHX3_2 or SHX9_2
  if not SHX3_2 then
    SHX9_2 = ""
  end
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 1885233650 == SHX0_2 then
    SHX1_2 = "male"
    return SHX1_2
  elseif -1667301416 == SHX0_2 then
    SHX1_2 = "female"
    return SHX1_2
  end
  SHX1_2 = nil
  return SHX1_2
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX13_1
  SHX1_2 = GetEntityModel
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  return SHX0_2(SHX1_2, SHX2_2)
end
SHX15_1 = nil
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = {}
  SHX1_2 = false
  SHX2_2 = {}
  SHX0_2[SHX1_2] = SHX2_2
  SHX1_2 = true
  SHX2_2 = {}
  SHX0_2[SHX1_2] = SHX2_2
  SHX1_2 = SHX2_1
  if SHX1_2 then
    SHX1_2 = SHX2_1.customClothingSlotComponents
    if SHX1_2 then
      goto SHX_LABEL_19
    end
  end
  SHX1_2 = {}
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = type
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if "table" == SHX8_2 then
      SHX8_2 = type
      SHX9_2 = SHX7_2.componentId
      SHX8_2 = SHX8_2(SHX9_2)
      if "number" == SHX8_2 then
        SHX8_2 = SHX7_2.isProp
        SHX8_2 = true == SHX8_2
        SHX8_2 = SHX0_2[SHX8_2]
        SHX9_2 = SHX7_2.componentId
        SHX8_2[SHX9_2] = SHX6_2
      end
    end
  end
  return SHX0_2
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX15_1
  if not SHX2_2 then
    SHX2_2 = SHX16_1
    SHX2_2 = SHX2_2()
    SHX15_1 = SHX2_2
  end
  SHX2_2 = true == SHX1_2
  SHX3_2 = SHX15_1
  SHX2_2 = SHX3_2[SHX2_2]
  SHX2_2 = SHX2_2[SHX0_2]
  return SHX2_2
end
SHX18_1 = CMG
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX17_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  return SHX2_2(SHX3_2, SHX4_2)
end
SHX18_1.getCustomClothingSlotForComponent = SHX19_1
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = {}
  if SHX0_2 then
    SHX4_2 = ipairs
    SHX5_2 = SHX0_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = type
      SHX11_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2)
      if "table" == SHX10_2 then
        SHX10_2 = type
        SHX11_2 = SHX9_2.collectionName
        SHX10_2 = SHX10_2(SHX11_2)
        if "string" == SHX10_2 then
          SHX10_2 = type
          SHX11_2 = SHX9_2.localIndex
          SHX10_2 = SHX10_2(SHX11_2)
          if "number" == SHX10_2 then
            SHX10_2 = type
            SHX11_2 = SHX9_2.textureIndex
            SHX10_2 = SHX10_2(SHX11_2)
            if "number" == SHX10_2 then
              SHX10_2 = type
              SHX11_2 = SHX9_2.gender
              SHX10_2 = SHX10_2(SHX11_2)
              if "string" == SHX10_2 then
                SHX10_2 = type
                SHX11_2 = SHX9_2.slot
                SHX10_2 = SHX10_2(SHX11_2)
                if "string" == SHX10_2 then
                  SHX10_2 = SHX11_1
                  SHX11_2 = SHX9_2.collectionName
                  SHX12_2 = SHX9_2.localIndex
                  SHX13_2 = SHX9_2.textureIndex
                  SHX14_2 = SHX9_2.gender
                  SHX15_2 = SHX9_2.slot
                  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
                  SHX1_2[SHX10_2] = true
                  SHX10_2 = SHX12_1
                  SHX11_2 = SHX9_2.collectionName
                  SHX12_2 = SHX9_2.localIndex
                  SHX13_2 = SHX9_2.gender
                  SHX14_2 = SHX9_2.slot
                  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
                  SHX2_2[SHX10_2] = true
                  SHX11_2 = SHX3_2[SHX10_2]
                  if not SHX11_2 then
                    SHX12_2 = {}
                    SHX11_2 = SHX12_2
                    SHX3_2[SHX10_2] = SHX11_2
                  end
                  SHX12_2 = math
                  SHX12_2 = SHX12_2.floor
                  SHX13_2 = SHX9_2.textureIndex
                  SHX13_2 = SHX13_2 + 0.5
                  SHX12_2 = SHX12_2(SHX13_2)
                  SHX11_2[SHX12_2] = true
                end
              end
            end
          end
        end
      end
    end
  end
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  return SHX4_2, SHX5_2, SHX6_2
end
SHX19_1 = RegisterNetEvent
SHX20_1 = "d580dacaa7"
function SHX21_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX18_1
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2)
  SHX9_1 = SHX4_2
  SHX7_1 = SHX3_2
  SHX5_1 = SHX2_2
  SHX2_2 = SHX18_1
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2)
  SHX10_1 = SHX4_2
  SHX8_1 = SHX3_2
  SHX6_1 = SHX2_2
end
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" ~= SHX1_2 then
    SHX1_2 = 0
    return SHX1_2
  end
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_2.modelHash
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX2_2 = 0
    return SHX2_2
  end
  SHX2_2 = 0
  SHX3_2 = type
  SHX4_2 = SHX0_2.components
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" == SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX0_2.components
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = type
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if "table" == SHX9_2 then
        SHX9_2 = type
        SHX10_2 = SHX8_2.collectionName
        SHX9_2 = SHX9_2(SHX10_2)
        if "string" == SHX9_2 then
          SHX9_2 = type
          SHX10_2 = SHX8_2.collectionIndex
          SHX9_2 = SHX9_2(SHX10_2)
          if "number" == SHX9_2 then
            SHX9_2 = type
            SHX10_2 = SHX8_2.textureIndex
            SHX9_2 = SHX9_2(SHX10_2)
            if "number" == SHX9_2 then
              SHX9_2 = SHX17_1
              SHX10_2 = SHX7_2
              SHX11_2 = false
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
              if SHX9_2 then
                SHX10_2 = SHX11_1
                SHX11_2 = SHX8_2.collectionName
                SHX12_2 = SHX8_2.collectionIndex
                SHX13_2 = SHX8_2.textureIndex
                SHX14_2 = SHX1_2
                SHX15_2 = SHX9_2
                SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
                SHX11_2 = SHX5_1
                SHX11_2 = SHX11_2[SHX10_2]
                if SHX11_2 then
                  SHX11_2 = SHX6_1
                  SHX11_2 = SHX11_2[SHX10_2]
                  if not SHX11_2 then
                    SHX11_2 = SHX0_2.components
                    SHX11_2[SHX7_2] = nil
                    SHX2_2 = SHX2_2 + 1
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  SHX3_2 = type
  SHX4_2 = SHX0_2.props
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" == SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX0_2.props
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = type
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if "table" == SHX9_2 then
        SHX9_2 = type
        SHX10_2 = SHX8_2.collectionName
        SHX9_2 = SHX9_2(SHX10_2)
        if "string" == SHX9_2 then
          SHX9_2 = type
          SHX10_2 = SHX8_2.collectionIndex
          SHX9_2 = SHX9_2(SHX10_2)
          if "number" == SHX9_2 then
            SHX9_2 = type
            SHX10_2 = SHX8_2.textureIndex
            SHX9_2 = SHX9_2(SHX10_2)
            if "number" == SHX9_2 then
              SHX9_2 = SHX17_1
              SHX10_2 = SHX7_2
              SHX11_2 = true
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
              if SHX9_2 then
                SHX10_2 = SHX11_1
                SHX11_2 = SHX8_2.collectionName
                SHX12_2 = SHX8_2.collectionIndex
                SHX13_2 = SHX8_2.textureIndex
                SHX14_2 = SHX1_2
                SHX15_2 = SHX9_2
                SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
                SHX11_2 = SHX5_1
                SHX11_2 = SHX11_2[SHX10_2]
                if SHX11_2 then
                  SHX11_2 = SHX6_1
                  SHX11_2 = SHX11_2[SHX10_2]
                  if not SHX11_2 then
                    SHX11_2 = SHX0_2.props
                    SHX11_2[SHX7_2] = nil
                    SHX2_2 = SHX2_2 + 1
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return SHX2_2
end
SHX20_1 = CMG
function SHX21_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX4_2 = SHX14_1
  SHX4_2 = SHX4_2()
  if not (SHX4_2 and SHX3_2) or "" == SHX3_2 then
    SHX5_2 = true
    return SHX5_2
  end
  SHX5_2 = SHX11_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX4_2
  SHX10_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SHX5_1
  SHX6_2 = SHX6_2[SHX5_2]
  if not SHX6_2 then
    SHX6_2 = true
    return SHX6_2
  end
  SHX6_2 = SHX6_1
  SHX6_2 = SHX6_2[SHX5_2]
  SHX6_2 = true == SHX6_2
  return SHX6_2
end
SHX20_1.canLocallyWearClothingItem = SHX21_1
SHX20_1 = CMG
function SHX21_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX14_1
  SHX3_2 = SHX3_2()
  if not (SHX3_2 and SHX2_2) or "" == SHX2_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = SHX12_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX7_1
  SHX4_2 = SHX5_2[SHX4_2]
  SHX4_2 = true == SHX4_2
  return SHX4_2
end
SHX20_1.isClothingDrawableLocked = SHX21_1
SHX20_1 = CMG
function SHX21_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX14_1
  SHX3_2 = SHX3_2()
  if not (SHX3_2 and SHX2_2) or "" == SHX2_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = SHX12_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX8_1
  SHX4_2 = SHX5_2[SHX4_2]
  SHX4_2 = true == SHX4_2
  return SHX4_2
end
SHX20_1.hasAccessibleCustomClothingDrawable = SHX21_1
SHX20_1 = CMG
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX14_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX8_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = string
    SHX6_2 = SHX6_2.match
    SHX7_2 = SHX5_2
    SHX8_2 = "^(.-)|(%-?%d+)|([^|]+)|"
    SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX8_2 == SHX0_2 then
      SHX9_2 = true
      return SHX9_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX20_1.hasAnyAccessibleCustomClothing = SHX21_1
SHX20_1 = CMG
function SHX21_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX14_1
  SHX3_2 = SHX3_2()
  if not (SHX3_2 and SHX2_2) or "" == SHX2_2 then
    SHX4_2 = {}
    return SHX4_2
  end
  SHX4_2 = SHX12_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX9_1
  SHX4_2 = SHX5_2[SHX4_2]
  if not SHX4_2 then
    SHX4_2 = {}
  end
  return SHX4_2
end
SHX20_1.getLockedClothingTextureSet = SHX21_1
SHX20_1 = CMG
function SHX21_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX14_1
  SHX3_2 = SHX3_2()
  if not (SHX3_2 and SHX2_2) or "" == SHX2_2 then
    SHX4_2 = {}
    return SHX4_2
  end
  SHX4_2 = SHX12_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX10_1
  SHX4_2 = SHX5_2[SHX4_2]
  if not SHX4_2 then
    SHX4_2 = {}
  end
  return SHX4_2
end
SHX20_1.getAccessibleClothingTextureSet = SHX21_1
SHX20_1 = CMG
function SHX21_1()
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
SHX20_1.isPlayerCustomisationSetup = SHX21_1
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 then
    SHX1_2 = string
    SHX1_2 = SHX1_2.sub
    SHX2_2 = SHX0_2
    SHX3_2 = 1
    SHX4_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    if "p" == SHX1_2 then
      SHX1_2 = true
      SHX2_2 = tonumber
      SHX3_2 = string
      SHX3_2 = SHX3_2.sub
      SHX4_2 = SHX0_2
      SHX5_2 = 2
      SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      return SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  end
  else
    SHX1_2 = false
    SHX2_2 = tonumber
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    return SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  end
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = {}
  SHX2_2 = SHX4_1
  SHX1_2.version = SHX2_2
  SHX2_2 = GetGameBuildNumber
  SHX2_2 = SHX2_2()
  SHX1_2.build = SHX2_2
  if SHX0_2 then
    SHX2_2 = GetEntityModel
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_16
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX1_2.modelHash = SHX2_2
  SHX2_2 = {}
  SHX1_2.components = SHX2_2
  SHX2_2 = {}
  SHX1_2.props = SHX2_2
  return SHX1_2
end
SHX22_1 = tCMG
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX21_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 0
  SHX3_2 = 11
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = GetPedDrawableVariationCollectionName
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX7_2 = SHX1_2.components
      SHX8_2 = {}
      SHX8_2.collectionName = SHX6_2
      SHX9_2 = _ENV
      SHX10_2 = "GetPedDrawableVariationCollectionLocalIndex"
      SHX9_2 = SHX9_2[SHX10_2]
      SHX10_2 = SHX0_2
      SHX11_2 = SHX5_2
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX8_2.collectionIndex = SHX9_2
      SHX9_2 = GetPedTextureVariation
      SHX10_2 = SHX0_2
      SHX11_2 = SHX5_2
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX8_2.textureIndex = SHX9_2
      SHX7_2[SHX5_2] = SHX8_2
    end
  end
  SHX2_2 = 0
  SHX3_2 = 8
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = GetPedPropIndex
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = GetPedCollectionNameFromProp
    SHX8_2 = SHX0_2
    SHX9_2 = SHX5_2
    SHX10_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    if SHX7_2 then
      SHX8_2 = SHX1_2.props
      SHX9_2 = {}
      SHX9_2.collectionName = SHX7_2
      SHX10_2 = GetPedCollectionLocalIndexFromProp
      SHX11_2 = SHX0_2
      SHX12_2 = SHX5_2
      SHX13_2 = SHX6_2
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX9_2.collectionIndex = SHX10_2
      SHX10_2 = GetPedPropTextureIndex
      SHX11_2 = SHX0_2
      SHX12_2 = SHX5_2
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX9_2.textureIndex = SHX10_2
      SHX8_2[SHX5_2] = SHX9_2
    end
  end
  return SHX1_2
end
SHX22_1.getCustomization = SHX23_1
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.indicies
  SHX2_2 = SHX0_2.components
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2.components = SHX1_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.indicies
  SHX2_2 = SHX0_2.props
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2.props = SHX1_2
  return SHX0_2
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = SHX21_1
  SHX2_2 = nil
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_2.modelhash
  if not SHX2_2 then
    SHX3_2 = SHX0_2.model
    if SHX3_2 then
      SHX3_2 = GetHashKey
      SHX4_2 = SHX0_2.model
      SHX3_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX3_2
    else
      SHX3_2 = error
      SHX4_2 = "Unable to obtain model hash whilst upgrading customisation from V1 to V2"
      SHX3_2(SHX4_2)
    end
  end
  SHX3_2 = nil
  SHX4_2 = pairs
  SHX5_2 = SHX1_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.modelHash
    if SHX10_2 == SHX2_2 then
      SHX3_2 = SHX9_2
      break
    end
  end
  SHX4_2 = assert
  SHX5_2 = 0 ~= SHX2_2
  SHX6_2 = "Failed to migrate zero model hash whilst upgrading customisation from V1 to V2"
  SHX4_2(SHX5_2, SHX6_2)
  SHX1_2.modelHash = SHX2_2
  if not SHX3_2 then
    return SHX1_2
  end
  SHX4_2 = pairs
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    if "model" ~= SHX8_2 and "modelhash" ~= SHX8_2 then
      SHX10_2 = tonumber
      SHX11_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2)
      if SHX10_2 then
        SHX10_2 = tonumber
        SHX11_2 = SHX8_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX8_2 = SHX10_2
      end
      SHX10_2 = SHX20_1
      SHX11_2 = SHX8_2
      SHX10_2, SHX11_2 = SHX10_2(SHX11_2)
      if SHX10_2 and SHX11_2 <= 8 then
        SHX12_2 = SHX3_2.props
        SHX13_2 = tostring
        SHX14_2 = SHX11_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX12_2 = SHX12_2[SHX13_2]
        if SHX12_2 then
          SHX13_2 = tostring
          SHX14_2 = SHX9_2[1]
          SHX13_2 = SHX13_2(SHX14_2)
          SHX13_2 = SHX12_2[SHX13_2]
          if SHX13_2 then
            SHX14_2 = SHX1_2.props
            SHX15_2 = {}
            SHX16_2 = SHX13_2[1]
            SHX15_2.collectionName = SHX16_2
            SHX16_2 = SHX13_2[2]
            SHX15_2.collectionIndex = SHX16_2
            SHX16_2 = SHX9_2[2]
            SHX15_2.textureIndex = SHX16_2
            SHX14_2[SHX11_2] = SHX15_2
          end
        end
      elseif not SHX10_2 and SHX11_2 <= 11 then
        SHX12_2 = SHX3_2.components
        SHX13_2 = tostring
        SHX14_2 = SHX11_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX12_2 = SHX12_2[SHX13_2]
        if SHX12_2 then
          SHX13_2 = tostring
          SHX14_2 = SHX9_2[1]
          SHX13_2 = SHX13_2(SHX14_2)
          SHX13_2 = SHX12_2[SHX13_2]
          if SHX13_2 then
            SHX14_2 = SHX1_2.components
            SHX15_2 = {}
            SHX16_2 = SHX13_2[1]
            SHX15_2.collectionName = SHX16_2
            SHX16_2 = SHX13_2[2]
            SHX15_2.collectionIndex = SHX16_2
            SHX16_2 = SHX9_2[2]
            SHX15_2.textureIndex = SHX16_2
            SHX14_2[SHX11_2] = SHX15_2
          end
        end
      end
    end
  end
  return SHX1_2
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
  SHX1_2 = SHX0_2.version
  if not SHX1_2 then
    SHX1_2 = 1
  end
  if 2 == SHX1_2 then
    SHX2_2 = SHX22_1
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX0_2 = SHX2_2
  end
  SHX2_2 = SHX4_1
  if SHX1_2 == SHX2_2 then
    return SHX0_2
  end
  SHX2_2 = nil
  if 1 == SHX1_2 then
    SHX3_2 = SHX23_1
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX3_2
  else
    SHX3_2 = error
    SHX4_2 = "Unknown version found whilst trying to migrate clothing"
    SHX3_2(SHX4_2)
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.migrateClothingCustomisation
  SHX4_2 = SHX2_2
  return SHX3_2(SHX4_2)
end
SHX24_1.migrateClothingCustomisation = SHX25_1
SHX24_1 = false
SHX25_1 = 0
SHX26_1 = tCMG
function SHX27_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  if not SHX0_2 then
    return
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.migrateClothingCustomisation
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX0_2 = SHX4_2
  SHX4_2 = SHX19_1
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 > 0 then
    if 1 == SHX4_2 then
      SHX5_2 = "item was"
      if SHX5_2 then
        goto SHX_LABEL_20
      end
    end
    SHX5_2 = "items were"
    -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
    ::SHX_LABEL_20::
    SHX6_2 = notify
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "~r~%d locked clothing %s removed because you don't own them."
    SHX9_2 = SHX4_2
    SHX10_2 = SHX5_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX0_2.modelHash
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = print
    SHX6_2 = "[CMG] Failed to load model"
    SHX7_2 = SHX0_2.modelHash
    SHX5_2(SHX6_2, SHX7_2)
    return
  end
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = GetEntityModel
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX0_2.modelHash
  if SHX6_2 ~= SHX7_2 or SHX1_2 then
    SHX7_2 = true
    SHX24_1 = SHX7_2
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getWeapons
    SHX7_2 = SHX7_2()
    SHX8_2 = GetEntityHealth
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = SetPlayerModel
    SHX10_2 = PlayerId
    SHX10_2 = SHX10_2()
    SHX11_2 = SHX0_2.modelHash
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.forcePlayerInfoCacheRefresh
    SHX9_2()
    SHX9_2 = SHX3_1
    if not SHX9_2 then
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.giveWeapons
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.getCachedWeaponStore
      SHX10_2 = SHX10_2()
      SHX11_2 = true
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = true
      SHX3_1 = SHX9_2
    else
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.giveWeapons
      SHX10_2 = SHX7_2
      SHX11_2 = true
      SHX9_2(SHX10_2, SHX11_2)
    end
    SHX9_2 = SetEntityMaxHealth
    SHX10_2 = PlayerPedId
    SHX10_2 = SHX10_2()
    SHX11_2 = 200
    SHX9_2(SHX10_2, SHX11_2)
    if nil == SHX2_2 or false == SHX2_2 then
      SHX9_2 = print
      SHX10_2 = "[CMG] Customisation, setting health to "
      SHX11_2 = SHX8_2
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = tCMG
      SHX9_2 = SHX9_2.setHealth
      SHX10_2 = SHX8_2
      SHX9_2(SHX10_2)
    end
    SHX9_2 = TriggerServerEvent
    SHX10_2 = "f46b8e185c"
    SHX9_2(SHX10_2)
    SHX9_2 = TriggerServerEvent
    SHX10_2 = "195b53ce8c"
    SHX9_2(SHX10_2)
    SHX9_2 = PlayerPedId
    SHX9_2 = SHX9_2()
    SHX5_2 = SHX9_2
  else
    SHX7_2 = print
    SHX8_2 = "[CMG] Same model detected, not changing model."
    SHX7_2(SHX8_2)
  end
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX0_2.modelHash
  SHX7_2(SHX8_2)
  SHX7_2 = pairs
  SHX8_2 = SHX0_2.components
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = SHX12_2.collectionName
    if SHX13_2 then
      SHX13_2 = SetPedCollectionComponentVariation
      SHX14_2 = SHX5_2
      SHX15_2 = SHX11_2
      SHX16_2 = SHX12_2.collectionName
      SHX17_2 = SHX12_2.collectionIndex
      SHX18_2 = SHX12_2.textureIndex
      SHX19_2 = 0
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
  end
  SHX7_2 = 0
  SHX8_2 = 8
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = SHX0_2.props
    SHX11_2 = SHX11_2[SHX10_2]
    if SHX11_2 then
      SHX12_2 = SHX11_2.collectionName
      if SHX12_2 then
        SHX12_2 = SHX11_2.collectionIndex
        if SHX12_2 >= 0 then
          SHX12_2 = SHX11_2.textureIndex
          if SHX12_2 >= 0 then
            SHX12_2 = SetPedCollectionPropIndex
            SHX13_2 = SHX5_2
            SHX14_2 = SHX10_2
            SHX15_2 = SHX11_2.collectionName
            SHX16_2 = SHX11_2.collectionIndex
            SHX17_2 = SHX11_2.textureIndex
            SHX18_2 = true
            SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        end
      end
    end
    elseif not SHX3_2 then
      SHX12_2 = ClearPedProp
      SHX13_2 = SHX5_2
      SHX14_2 = SHX10_2
      SHX12_2(SHX13_2, SHX14_2)
    end
  end
  SHX7_2 = false
  SHX24_1 = SHX7_2
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  SHX25_1 = SHX7_2
end
SHX26_1.setCustomization = SHX27_1
SHX26_1 = tCMG
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  if not SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.migrateClothingCustomisation
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX0_2
  SHX3_2 = pairs
  SHX4_2 = SHX1_2.components
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.collectionName
    if SHX9_2 then
      SHX9_2 = SetPedCollectionComponentVariation
      SHX10_2 = SHX2_2
      SHX11_2 = SHX7_2
      SHX12_2 = SHX8_2.collectionName
      SHX13_2 = SHX8_2.collectionIndex
      SHX14_2 = SHX8_2.textureIndex
      SHX15_2 = 0
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
  end
  SHX3_2 = 0
  SHX4_2 = 8
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX1_2.props
    SHX7_2 = SHX7_2[SHX6_2]
    if SHX7_2 then
      SHX8_2 = SHX7_2.collectionName
      if SHX8_2 then
        SHX8_2 = SHX7_2.collectionIndex
        if SHX8_2 >= 0 then
          SHX8_2 = SHX7_2.textureIndex
          if SHX8_2 >= 0 then
            SHX8_2 = SetPedCollectionPropIndex
            SHX9_2 = SHX2_2
            SHX10_2 = SHX6_2
            SHX11_2 = SHX7_2.collectionName
            SHX12_2 = SHX7_2.collectionIndex
            SHX13_2 = SHX7_2.textureIndex
            SHX14_2 = true
            SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
        end
      end
    end
  end
end
SHX26_1.setPedCustomization = SHX27_1
SHX26_1 = CMG
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX24_1
  if not SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX25_1
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = 3000
    SHX0_2 = SHX0_2 < SHX1_2
  end
  return SHX0_2
end
SHX26_1.isPedScriptGuidChanging = SHX27_1
SHX26_1 = CMG
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = SHX0_1.presets
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = assert
  SHX3_2 = SHX1_2
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "Preset %s does not exist."
  SHX6_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX2_2 = SHX1_2.model
  if SHX2_2 then
    SHX2_2 = GetEntityModel
    SHX3_2 = PlayerPedId
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX3_2()
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX3_2 = SHX1_2.model
    if SHX2_2 ~= SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.loadModel
      SHX4_2 = SHX1_2.model
      SHX3_2(SHX4_2)
      SHX3_2 = SetPlayerModel
      SHX4_2 = PlayerId
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX1_2.model
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetModelAsNoLongerNeeded
      SHX4_2 = SHX1_2.model
      SHX3_2(SHX4_2)
      SHX3_2 = Citizen
      SHX3_2 = SHX3_2.Wait
      SHX4_2 = 100
      SHX3_2(SHX4_2)
    end
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.components
  if SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX1_2.components
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = GetPedDrawableGlobalIndexFromCollection
      SHX10_2 = SHX2_2
      SHX11_2 = SHX7_2
      SHX12_2 = SHX8_2.collectionName
      SHX13_2 = SHX8_2.localIndex
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX10_2 = GetPedDrawableVariation
      SHX11_2 = SHX2_2
      SHX12_2 = SHX7_2
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if SHX10_2 == SHX9_2 then
        SHX10_2 = GetPedTextureVariation
        SHX11_2 = SHX2_2
        SHX12_2 = SHX7_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX11_2 = SHX8_2.textureIndex
        if SHX10_2 == SHX11_2 then
          goto SHX_LABEL_72
        end
      end
      SHX10_2 = SetPedComponentVariation
      SHX11_2 = SHX2_2
      SHX12_2 = SHX7_2
      SHX13_2 = SHX9_2
      SHX14_2 = SHX8_2.textureIndex
      SHX15_2 = 0
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_72:: outside nested blocks until all 'goto SHX_LABEL_72' can see it
      ::SHX_LABEL_72::
    end
  end
  SHX3_2 = SHX1_2.props
  if SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX1_2.props
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX8_2.collectionName
      if SHX9_2 then
        SHX9_2 = SetPedCollectionPropIndex
        SHX10_2 = SHX2_2
        SHX11_2 = SHX7_2
        SHX12_2 = SHX8_2.collectionName
        SHX13_2 = SHX8_2.localIndex
        SHX14_2 = SHX8_2.textureIndex
        SHX15_2 = true
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      else
        SHX9_2 = SetPedPropIndex
        SHX10_2 = SHX2_2
        SHX11_2 = SHX7_2
        SHX12_2 = SHX8_2[1]
        SHX13_2 = SHX8_2[2]
        SHX14_2 = SHX8_2[3]
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      end
    end
  end
end
SHX26_1.loadCustomisationPreset = SHX27_1
SHX26_1 = nil
SHX27_1 = CMG
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = assert
  SHX2_2 = SHX0_1.presets
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Preset %s does not exist."
  SHX5_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadCustomisationPreset
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX26_1 = SHX0_2
end
SHX27_1.lockCustomisationPreset = SHX28_1
SHX27_1 = CMG
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = nil
  SHX26_1 = SHX0_2
end
SHX27_1.unlockCustomisationPreset = SHX28_1
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
  while true do
    SHX0_2 = SHX26_1
    if SHX0_2 then
      SHX0_2 = SHX0_1.presets
      SHX1_2 = SHX26_1
      SHX0_2 = SHX0_2[SHX1_2]
      if SHX0_2 then
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX2_2 = false
        SHX3_2 = SHX0_2.components
        if SHX3_2 then
          SHX3_2 = pairs
          SHX4_2 = SHX0_2.components
          SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
          for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
            SHX9_2 = GetPedDrawableGlobalIndexFromCollection
            SHX10_2 = SHX1_2
            SHX11_2 = SHX7_2
            SHX12_2 = SHX8_2.collectionName
            SHX13_2 = SHX8_2.localIndex
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
            SHX10_2 = GetPedDrawableVariation
            SHX11_2 = SHX1_2
            SHX12_2 = SHX7_2
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
            if SHX10_2 == SHX9_2 then
              SHX10_2 = GetPedTextureVariation
              SHX11_2 = SHX1_2
              SHX12_2 = SHX7_2
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
              SHX11_2 = SHX8_2.textureIndex
              if SHX10_2 == SHX11_2 then
                goto SHX_LABEL_40
              end
            end
            SHX2_2 = true
            do break end
            -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
            ::SHX_LABEL_40::
          end
        end
        if not SHX2_2 then
          SHX3_2 = SHX0_2.props
          if SHX3_2 then
            SHX3_2 = pairs
            SHX4_2 = SHX0_2.props
            SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
            for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
              SHX9_2 = GetPedPropIndex
              SHX10_2 = SHX1_2
              SHX11_2 = SHX7_2
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
              SHX10_2 = SHX8_2[1]
              if SHX9_2 == SHX10_2 then
                SHX9_2 = GetPedPropTextureIndex
                SHX10_2 = SHX1_2
                SHX11_2 = SHX7_2
                SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                SHX10_2 = SHX8_2[2]
                if SHX9_2 == SHX10_2 then
                  goto SHX_LABEL_68
                end
              end
              SHX2_2 = true
              do break end
              -- [FIX IF ERROR] Move ::SHX_LABEL_68:: outside nested blocks until all 'goto SHX_LABEL_68' can see it
              ::SHX_LABEL_68::
            end
          end
        end
        if SHX2_2 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.loadCustomisationPreset
          SHX4_2 = SHX26_1
          SHX3_2(SHX4_2)
        end
      end
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 2000
      SHX1_2(SHX2_2)
    else
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 5000
      SHX0_2(SHX1_2)
    end
  end
end
SHX27_1(SHX28_1)
SHX27_1 = SetVisualSettingFloat
SHX28_1 = "ped.lod.distance.high"
SHX29_1 = 200.0
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = SetVisualSettingFloat
SHX28_1 = "ped.lod.distance.medium"
SHX29_1 = 400.0
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = SetVisualSettingFloat
SHX28_1 = "ped.lod.distance.low"
SHX29_1 = 700.0
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = {}
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SetPlayerModel
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.forcePlayerInfoCacheRefresh
  SHX1_2()
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = {}
  SHX2_2.modelHash = SHX0_2
  SHX3_2 = {}
  SHX2_2.components = SHX3_2
  SHX3_2 = {}
  SHX2_2.props = SHX3_2
  SHX3_2 = 0
  SHX4_2 = 11
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = {}
    SHX8_2 = 0
    SHX9_2 = GetNumberOfPedDrawableVariations
    SHX10_2 = SHX1_2
    SHX11_2 = SHX6_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = SHX9_2 - 1
    SHX10_2 = 1
    for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
      SHX12_2 = {}
      SHX13_2 = GetPedCollectionNameFromDrawable
      SHX14_2 = SHX1_2
      SHX15_2 = SHX6_2
      SHX16_2 = SHX11_2
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      SHX14_2 = GetPedCollectionLocalIndexFromDrawable
      SHX15_2 = SHX1_2
      SHX16_2 = SHX6_2
      SHX17_2 = SHX11_2
      SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
      SHX12_2[1] = SHX13_2
      SHX12_2[2] = SHX14_2
      SHX12_2[3] = SHX15_2
      SHX12_2[4] = SHX16_2
      SHX12_2[5] = SHX17_2
      SHX7_2[SHX11_2] = SHX12_2
    end
    SHX8_2 = SHX2_2.components
    SHX8_2[SHX6_2] = SHX7_2
  end
  SHX3_2 = 0
  SHX4_2 = 8
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = {}
    SHX8_2 = 0
    SHX9_2 = GetNumberOfPedPropDrawableVariations
    SHX10_2 = SHX1_2
    SHX11_2 = SHX6_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = SHX9_2 - 1
    SHX10_2 = 1
    for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
      SHX12_2 = {}
      SHX13_2 = GetPedCollectionNameFromProp
      SHX14_2 = SHX1_2
      SHX15_2 = SHX6_2
      SHX16_2 = SHX11_2
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      SHX14_2 = GetPedCollectionLocalIndexFromProp
      SHX15_2 = SHX1_2
      SHX16_2 = SHX6_2
      SHX17_2 = SHX11_2
      SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
      SHX12_2[1] = SHX13_2
      SHX12_2[2] = SHX14_2
      SHX12_2[3] = SHX15_2
      SHX12_2[4] = SHX16_2
      SHX12_2[5] = SHX17_2
      SHX7_2[SHX11_2] = SHX12_2
    end
    SHX8_2 = SHX2_2.props
    SHX8_2[SHX6_2] = SHX7_2
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.insert
  SHX4_2 = SHX27_1
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX27_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX28_1
  SHX1_2 = 1885233650
  SHX0_2(SHX1_2)
  SHX0_2 = SHX28_1
  SHX1_2 = -1667301416
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.clientPrompt
  SHX1_2 = "Lookup JSON"
  SHX2_2 = json
  SHX2_2 = SHX2_2.encode
  SHX3_2 = SHX27_1
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = "{}"
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
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX30_1 = true
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.clientPrompt
  SHX1_2 = "Enter Input"
  SHX2_2 = ""
  function SHX3_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3
    SHX1_3 = {}
    SHX3_3 = SHX0_3
    SHX2_3 = SHX0_3.gmatch
    SHX4_3 = "(%d+)"
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3)
    for SHX6_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX7_3 = table
      SHX7_3 = SHX7_3.insert
      SHX8_3 = SHX1_3
      SHX9_3 = tonumber
      SHX10_3 = SHX6_3
      SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3 = SHX9_3(SHX10_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3)
    end
    SHX2_3 = #SHX1_3
    SHX2_3 = SHX2_3 % 4
    if 0 ~= SHX2_3 then
      SHX2_3 = notify
      SHX3_3 = "~r~Unable to parse provided input"
      SHX2_3(SHX3_3)
      return
    end
    SHX2_3 = SHX30_1
    if SHX2_3 then
      SHX2_3 = 1885233650
      if SHX2_3 then
        goto SHX_LABEL_33
      end
    end
    SHX2_3 = -1667301416
    -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
    ::SHX_LABEL_33::
    SHX3_3 = nil
    SHX4_3 = pairs
    SHX5_3 = SHX1_1
    SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
    for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
      SHX10_3 = SHX9_3.modelHash
      if SHX10_3 == SHX2_3 then
        SHX3_3 = SHX9_3
        break
      end
    end
    SHX4_3 = ""
    SHX5_3 = 0
    SHX6_3 = math
    SHX6_3 = SHX6_3.floor
    SHX7_3 = #SHX1_3
    SHX7_3 = SHX7_3 / 4
    SHX6_3 = SHX6_3(SHX7_3)
    SHX6_3 = SHX6_3 - 1
    SHX7_3 = 1
    for SHX8_3 = SHX5_3, SHX6_3, SHX7_3 do
      SHX9_3 = SHX8_3 * 4
      SHX10_3 = 1 + SHX9_3
      SHX10_3 = SHX1_3[SHX10_3]
      SHX11_3 = 2 + SHX9_3
      SHX11_3 = SHX1_3[SHX11_3]
      SHX12_3 = 3 + SHX9_3
      SHX12_3 = SHX1_3[SHX12_3]
      SHX13_3 = assert
      SHX14_3 = SHX3_3
      SHX15_3 = "Unable to find model lookup data"
      SHX13_3(SHX14_3, SHX15_3)
      SHX13_3 = SHX3_3.components
      SHX14_3 = tostring
      SHX15_3 = SHX10_3
      SHX14_3 = SHX14_3(SHX15_3)
      SHX13_3 = SHX13_3[SHX14_3]
      SHX14_3 = assert
      SHX15_3 = SHX13_3
      SHX16_3 = string
      SHX16_3 = SHX16_3.format
      SHX17_3 = "Unable to find component lookup data for componentId %s"
      SHX18_3 = SHX10_3
      SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3 = SHX16_3(SHX17_3, SHX18_3)
      SHX14_3(SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3)
      SHX14_3 = tostring
      SHX15_3 = SHX11_3
      SHX14_3 = SHX14_3(SHX15_3)
      SHX14_3 = SHX13_3[SHX14_3]
      SHX15_3 = assert
      SHX16_3 = SHX14_3
      SHX17_3 = string
      SHX17_3 = SHX17_3.format
      SHX18_3 = "Unable to find component lookup data for componentId %s drawableId"
      SHX19_3 = SHX10_3
      SHX20_3 = SHX11_3
      SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3 = SHX17_3(SHX18_3, SHX19_3, SHX20_3)
      SHX15_3(SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3)
      SHX15_3 = SHX14_3[1]
      SHX16_3 = SHX14_3[2]
      SHX17_3 = SHX4_3
      SHX18_3 = string
      SHX18_3 = SHX18_3.format
      SHX19_3 = [[
[%s] = {
                collectionName = "%s",
                localIndex = %s,
                textureIndex = %s,
            },
            ]]
      SHX20_3 = SHX10_3
      SHX21_3 = SHX15_3
      SHX22_3 = SHX16_3
      SHX23_3 = SHX12_3
      SHX18_3 = SHX18_3(SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3)
      SHX17_3 = SHX17_3 .. SHX18_3
      SHX4_3 = SHX17_3
    end
    SHX5_3 = notify
    SHX6_3 = "~g~Copied migrated clothing to clipboard"
    SHX5_3(SHX6_3)
    SHX5_3 = CMG
    SHX5_3 = SHX5_3.copyToClipboard
    SHX6_3 = SHX4_3
    SHX5_3(SHX6_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX32_1 = CMG
SHX32_1 = SHX32_1.registerDevMenuItems
SHX33_1 = "Customisation"
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Get Global -> Local Lookup"
  SHX2_2 = "Returns a JSON that converts the current builds clothing from global index to local index."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX29_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Convert Preset Row"
  SHX2_2 = [[
Converts a row of components in a preset. Example input:
[6] = {27, 0, 0}]]
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX31_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Converting Male Presets"
  SHX2_2 = "Whether this should convert male presets. Uncheck to work on females."
  SHX3_2 = SHX30_1
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX30_1 = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX32_1(SHX33_1, SHX34_1)
