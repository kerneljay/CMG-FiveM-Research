-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadJsonModule
SHX1_1 = "cfg/ped_cfg/clothing.json"
SHX0_1 = SHX0_1(SHX1_1)
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  if not SHX0_2 or not SHX1_2 then
    return
  end
  SHX2_2 = ipairs
  SHX3_2 = {}
  SHX4_2 = "male_whitelists"
  SHX5_2 = "female_whitelists"
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX1_2[SHX7_2]
    SHX9_2 = type
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if "table" == SHX9_2 then
      SHX9_2 = SHX0_2[SHX7_2]
      if not SHX9_2 then
        SHX9_2 = {}
      end
      SHX0_2[SHX7_2] = SHX9_2
      SHX9_2 = SHX0_2[SHX7_2]
      SHX10_2 = pairs
      SHX11_2 = SHX8_2
      SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
      for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
        SHX16_2 = type
        SHX17_2 = SHX15_2
        SHX16_2 = SHX16_2(SHX17_2)
        if "table" == SHX16_2 then
          SHX16_2 = SHX9_2[SHX14_2]
          SHX17_2 = type
          SHX18_2 = SHX16_2
          SHX17_2 = SHX17_2(SHX18_2)
          if "table" ~= SHX17_2 then
            SHX17_2 = {}
            SHX16_2 = SHX17_2
            SHX9_2[SHX14_2] = SHX16_2
          end
          SHX17_2 = {}
          SHX18_2 = ipairs
          SHX19_2 = SHX15_2
          SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX18_2(SHX19_2)
          for SHX22_2, SHX23_2 in SHX18_2, SHX19_2, SHX20_2, SHX21_2 do
            SHX24_2 = #SHX17_2
            SHX24_2 = SHX24_2 + 1
            SHX17_2[SHX24_2] = SHX23_2
          end
          SHX18_2 = ipairs
          SHX19_2 = SHX16_2
          SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX18_2(SHX19_2)
          for SHX22_2, SHX23_2 in SHX18_2, SHX19_2, SHX20_2, SHX21_2 do
            SHX24_2 = #SHX17_2
            SHX24_2 = SHX24_2 + 1
            SHX17_2[SHX24_2] = SHX23_2
          end
          SHX9_2[SHX14_2] = SHX17_2
        end
      end
    end
  end
end
SHX2_1 = CMG
SHX2_1 = SHX2_1.loadResourceFile
SHX3_1 = GetCurrentResourceName
SHX3_1 = SHX3_1()
SHX4_1 = "cfg/ped_cfg/dummies.json"
SHX2_1 = SHX2_1(SHX3_1, SHX4_1)
if SHX2_1 and "" ~= SHX2_1 then
  SHX3_1 = pcall
  SHX4_1 = json
  SHX4_1 = SHX4_1.decode
  SHX5_1 = SHX2_1
  SHX3_1, SHX4_1 = SHX3_1(SHX4_1, SHX5_1)
  if SHX3_1 then
    SHX5_1 = type
    SHX6_1 = SHX4_1
    SHX5_1 = SHX5_1(SHX6_1)
    if "table" == SHX5_1 then
      SHX5_1 = SHX1_1
      SHX6_1 = SHX0_1
      SHX7_1 = SHX4_1
      SHX5_1(SHX6_1, SHX7_1)
    end
  end
end
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" ~= SHX1_2 then
    return SHX0_2
  end
  SHX1_2 = string
  SHX1_2 = SHX1_2.gsub
  SHX2_2 = SHX0_2
  SHX3_2 = "^%s*(.-)%s*$"
  SHX4_2 = "%1"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  return SHX1_2
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if nil == SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "number" == SHX1_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.floor
    SHX2_2 = SHX0_2 + 0.5
    return SHX1_2(SHX2_2)
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.floor
      SHX3_2 = SHX1_2 + 0.5
      return SHX2_2(SHX3_2)
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX4_1 = {}
SHX4_1.civilian = "civilian"
SHX4_1.police = "police"
SHX4_1.nhs = "nhs"
SHX4_1.lfb = "lfb"
SHX4_1.hmp = "hmp"
SHX4_1.erpt = "police"
SHX4_1.rpu = "police"
SHX4_1.cop = "police"
SHX4_1.npas = "police"
SHX4_1.sco19 = "police"
SHX4_1.trident = "police"
SHX4_1.ctsfo = "police"
SHX4_1.borderforce = "police"
SHX4_1.lostmc = "lostmc"
SHX4_1.soa = "lostmc"
SHX4_1.sixthsense = "sixthsense"
SHX4_1.marketplace = "marketplace"
SHX4_1.placeholder = "civilian"
SHX4_1.hidden = "civilian"
SHX4_1.variation = "civilian"
SHX4_1.factionhidden = "civilian"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" ~= SHX1_2 or "" == SHX0_2 then
    SHX1_2 = "civilian"
    return SHX1_2
  end
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    return SHX1_2
  end
  SHX2_2 = "civilian"
  return SHX2_2
end
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" ~= SHX2_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX5_1
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 == SHX1_2 then
      SHX8_2 = true
      return SHX8_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX7_1 = {}
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = type
  SHX3_2 = SHX1_2.hiddenTextures
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" ~= SHX2_2 then
    return
  end
  SHX2_2 = SHX1_2.localIndex
  if nil == SHX2_2 then
    return
  end
  SHX2_2 = SHX1_2.localIndex
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "number" == SHX3_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.floor
    SHX4_2 = SHX2_2 + 0.5
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX3_2
  else
    return
  end
  SHX3_2 = SHX2_1
  SHX4_2 = SHX1_2.collectionName
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = type
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "string" ~= SHX4_2 then
    SHX3_2 = ""
  end
  SHX4_2 = SHX0_2[SHX3_2]
  if not SHX4_2 then
    SHX5_2 = {}
    SHX4_2 = SHX5_2
    SHX0_2[SHX3_2] = SHX4_2
  end
  SHX5_2 = SHX4_2[SHX2_2]
  if not SHX5_2 then
    SHX6_2 = {}
    SHX5_2 = SHX6_2
    SHX4_2[SHX2_2] = SHX5_2
    SHX6_2 = tostring
    SHX7_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX4_2[SHX6_2] = SHX5_2
  end
  SHX6_2 = ipairs
  SHX7_2 = SHX1_2.hiddenTextures
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = type
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    if "number" == SHX12_2 then
      SHX12_2 = math
      SHX12_2 = SHX12_2.floor
      SHX13_2 = SHX11_2 + 0.5
      SHX12_2 = SHX12_2(SHX13_2)
      SHX5_2[SHX12_2] = true
    end
  end
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = type
  SHX2_2 = SHX0_2.permissions
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = "table" == SHX1_2
  return SHX1_2
end
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = {}
  SHX4_2 = type
  SHX5_2 = SHX2_2.permissions
  SHX4_2 = SHX4_2(SHX5_2)
  if "table" == SHX4_2 then
    SHX4_2 = SHX2_2.permissions
    if SHX4_2 then
      goto SHX_LABEL_13
    end
  end
  SHX4_2 = {}
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX3_2.permissions = SHX4_2
  SHX4_2 = SHX0_2[SHX1_2]
  if nil == SHX4_2 then
    SHX5_2 = {}
    SHX4_2 = SHX5_2
    SHX0_2[SHX1_2] = SHX4_2
    SHX5_2 = tostring
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX0_2[SHX5_2] = SHX4_2
  end
  SHX5_2 = table
  SHX5_2 = SHX5_2.insert
  SHX6_2 = SHX4_2
  SHX7_2 = SHX3_2
  SHX5_2(SHX6_2, SHX7_2)
end
if SHX0_1 then
  SHX11_1 = {}
  SHX7_1.male_whitelists = SHX11_1
  SHX11_1 = {}
  SHX7_1.female_whitelists = SHX11_1
  SHX11_1 = pairs
  SHX12_1 = SHX0_1
  SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX11_1(SHX12_1)
  for SHX15_1, SHX16_1 in SHX11_1, SHX12_1, SHX13_1, SHX14_1 do
    if "male_whitelists" == SHX15_1 or "female_whitelists" == SHX15_1 then
      SHX17_1 = pairs
      SHX18_1 = SHX16_1
      SHX17_1, SHX18_1, SHX19_1, SHX20_1 = SHX17_1(SHX18_1)
      for SHX21_1, SHX22_1 in SHX17_1, SHX18_1, SHX19_1, SHX20_1 do
        SHX23_1 = {}
        SHX24_1 = {}
        SHX25_1 = ipairs
        SHX26_1 = SHX22_1
        SHX25_1, SHX26_1, SHX27_1, SHX28_1 = SHX25_1(SHX26_1)
        for SHX29_1, SHX30_1 in SHX25_1, SHX26_1, SHX27_1, SHX28_1 do
          SHX31_1 = SHX8_1
          SHX32_1 = SHX24_1
          SHX33_1 = SHX30_1
          SHX31_1(SHX32_1, SHX33_1)
          SHX31_1 = SHX9_1
          SHX32_1 = SHX30_1
          SHX31_1 = SHX31_1(SHX32_1)
          if SHX31_1 then
            SHX31_1 = SHX2_1
            SHX32_1 = SHX30_1.collectionName
            SHX31_1 = SHX31_1(SHX32_1)
            SHX32_1 = type
            SHX33_1 = SHX31_1
            SHX32_1 = SHX32_1(SHX33_1)
            if "string" ~= SHX32_1 then
              SHX31_1 = ""
            end
            SHX32_1 = SHX23_1[SHX31_1]
            if not SHX32_1 then
              SHX33_1 = {}
              SHX32_1 = SHX33_1
              SHX23_1[SHX31_1] = SHX32_1
            end
            SHX33_1 = SHX30_1.localIndex
            SHX34_1 = type
            SHX35_1 = SHX33_1
            SHX34_1 = SHX34_1(SHX35_1)
            if "number" == SHX34_1 then
              SHX34_1 = math
              SHX34_1 = SHX34_1.floor
              SHX35_1 = SHX33_1 + 0.5
              SHX34_1 = SHX34_1(SHX35_1)
              SHX33_1 = SHX34_1
            end
            SHX34_1 = SHX10_1
            SHX35_1 = SHX32_1
            SHX36_1 = SHX33_1
            SHX37_1 = SHX30_1
            SHX34_1(SHX35_1, SHX36_1, SHX37_1)
          end
        end
        SHX16_1[SHX21_1] = SHX23_1
        SHX25_1 = SHX7_1[SHX15_1]
        SHX25_1[SHX21_1] = SHX24_1
      end
    end
  end
end
SHX11_1 = RMenu
SHX11_1 = SHX11_1.Add
SHX12_1 = "CMGclothing"
SHX13_1 = "mainMenu"
SHX14_1 = RageUI
SHX14_1 = SHX14_1.CreateMenu
SHX15_1 = ""
SHX16_1 = "Clothing Store"
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuWidth
SHX17_1 = SHX17_1()
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuHeight
SHX18_1 = SHX18_1()
SHX19_1 = "cmg_clothesui"
SHX20_1 = "cmg_clothesui"
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX11_1 = RMenu
SHX11_1 = SHX11_1.Add
SHX12_1 = "CMGclothing"
SHX13_1 = "changePed"
SHX14_1 = RageUI
SHX14_1 = SHX14_1.CreateSubMenu
SHX15_1 = RMenu
SHX16_1 = SHX15_1
SHX15_1 = SHX15_1.Get
SHX17_1 = "CMGclothing"
SHX18_1 = "mainMenu"
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = ""
SHX17_1 = "Change ped model"
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuWidth
SHX18_1 = SHX18_1()
SHX19_1 = CMG
SHX19_1 = SHX19_1.getRageUIMenuHeight
SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1 = SHX19_1()
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX11_1 = RMenu
SHX11_1 = SHX11_1.Add
SHX12_1 = "CMGclothing"
SHX13_1 = "changeClothing"
SHX14_1 = RageUI
SHX14_1 = SHX14_1.CreateSubMenu
SHX15_1 = RMenu
SHX16_1 = SHX15_1
SHX15_1 = SHX15_1.Get
SHX17_1 = "CMGclothing"
SHX18_1 = "mainMenu"
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = ""
SHX17_1 = "Change your Clothes"
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuWidth
SHX18_1 = SHX18_1()
SHX19_1 = CMG
SHX19_1 = SHX19_1.getRageUIMenuHeight
SHX19_1 = SHX19_1()
SHX20_1 = "cmg_clothesui"
SHX21_1 = "cmg_clothesui"
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX11_1 = RMenu
SHX11_1 = SHX11_1.Add
SHX12_1 = "CMGclothing"
SHX13_1 = "clearProps"
SHX14_1 = RageUI
SHX14_1 = SHX14_1.CreateSubMenu
SHX15_1 = RMenu
SHX16_1 = SHX15_1
SHX15_1 = SHX15_1.Get
SHX17_1 = "CMGclothing"
SHX18_1 = "mainMenu"
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = ""
SHX17_1 = "Clear Props"
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuWidth
SHX18_1 = SHX18_1()
SHX19_1 = CMG
SHX19_1 = SHX19_1.getRageUIMenuHeight
SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1 = SHX19_1()
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX11_1 = {}
SHX12_1 = {}
SHX12_1.name = "Hats / Helmets"
SHX12_1.index = 0
SHX12_1.listIndex = 1
SHX12_1.type = "prop"
SHX12_1.currentListIndex = 1
SHX12_1.textureN = 0
SHX13_1 = {}
SHX13_1.name = "Glasses"
SHX13_1.index = 1
SHX13_1.listIndex = 1
SHX13_1.type = "prop"
SHX13_1.currentListIndex = 1
SHX13_1.textureN = 0
SHX14_1 = {}
SHX14_1.name = "Ear Accessories"
SHX14_1.index = 2
SHX14_1.listIndex = 1
SHX14_1.type = "prop"
SHX14_1.currentListIndex = 1
SHX14_1.textureN = 0
SHX15_1 = {}
SHX15_1.name = "Mask"
SHX15_1.index = 1
SHX15_1.listIndex = 1
SHX15_1.type = "drawable"
SHX15_1.currentListIndex = 1
SHX15_1.textureN = 0
SHX16_1 = {}
SHX16_1.name = "Hair"
SHX16_1.index = 2
SHX16_1.listIndex = 1
SHX16_1.type = "drawable"
SHX16_1.currentListIndex = 1
SHX16_1.textureN = 0
SHX17_1 = {}
SHX17_1.name = "Shirts / Jackets"
SHX17_1.index = 11
SHX17_1.listIndex = 1
SHX17_1.type = "drawable"
SHX17_1.currentListIndex = 1
SHX17_1.textureN = 0
SHX18_1 = {}
SHX18_1.name = "Arms / Torso"
SHX18_1.index = 3
SHX18_1.listIndex = 1
SHX18_1.type = "drawable"
SHX18_1.currentListIndex = 1
SHX18_1.textureN = 0
SHX19_1 = {}
SHX19_1.name = "Watches"
SHX19_1.index = 6
SHX19_1.listIndex = 1
SHX19_1.type = "prop"
SHX19_1.currentListIndex = 1
SHX19_1.textureN = 0
SHX20_1 = {}
SHX20_1.name = "Bracelets"
SHX20_1.index = 7
SHX20_1.listIndex = 1
SHX20_1.type = "prop"
SHX20_1.currentListIndex = 1
SHX20_1.textureN = 0
SHX21_1 = {}
SHX21_1.name = "Undershirt"
SHX21_1.index = 8
SHX21_1.listIndex = 1
SHX21_1.type = "drawable"
SHX21_1.currentListIndex = 1
SHX21_1.textureN = 0
SHX22_1 = {}
SHX22_1.name = "Legs"
SHX22_1.index = 4
SHX22_1.listIndex = 1
SHX22_1.type = "drawable"
SHX22_1.currentListIndex = 1
SHX22_1.textureN = 0
SHX23_1 = {}
SHX23_1.name = "Shoes"
SHX23_1.index = 6
SHX23_1.listIndex = 1
SHX23_1.type = "drawable"
SHX23_1.currentListIndex = 1
SHX23_1.textureN = 0
SHX24_1 = {}
SHX24_1.name = "Bags"
SHX24_1.index = 5
SHX24_1.listIndex = 1
SHX24_1.type = "drawable"
SHX24_1.currentListIndex = 1
SHX24_1.textureN = 0
SHX25_1 = {}
SHX25_1.name = "Vests"
SHX25_1.index = 9
SHX25_1.listIndex = 1
SHX25_1.type = "drawable"
SHX25_1.currentListIndex = 1
SHX25_1.textureN = 0
SHX26_1 = {}
SHX26_1.name = "Accessories"
SHX26_1.index = 7
SHX26_1.listIndex = 1
SHX26_1.type = "drawable"
SHX26_1.currentListIndex = 1
SHX26_1.textureN = 0
SHX27_1 = {}
SHX27_1.name = "Badges"
SHX27_1.index = 10
SHX27_1.listIndex = 1
SHX27_1.type = "drawable"
SHX27_1.currentListIndex = 1
SHX27_1.textureN = 0
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX11_1[3] = SHX14_1
SHX11_1[4] = SHX15_1
SHX11_1[5] = SHX16_1
SHX11_1[6] = SHX17_1
SHX11_1[7] = SHX18_1
SHX11_1[8] = SHX19_1
SHX11_1[9] = SHX20_1
SHX11_1[10] = SHX21_1
SHX11_1[11] = SHX22_1
SHX11_1[12] = SHX23_1
SHX11_1[13] = SHX24_1
SHX11_1[14] = SHX25_1
SHX11_1[15] = SHX26_1
SHX11_1[16] = SHX27_1
SHX12_1 = false
SHX13_1 = {}
SHX14_1 = "civilian"
SHX15_1 = {}
SHX16_1 = {}
SHX16_1.id = "civilian"
SHX16_1.label = "Civilian Clothing"
SHX17_1 = {}
SHX17_1.id = "police"
SHX17_1.label = "Police Service Clothing"
SHX18_1 = {}
SHX18_1.id = "nhs"
SHX18_1.label = "Health Service Clothing"
SHX19_1 = {}
SHX19_1.id = "lfb"
SHX19_1.label = "Fire Service Clothing"
SHX20_1 = {}
SHX20_1.id = "hmp"
SHX20_1.label = "Prison Service Clothing"
SHX21_1 = {}
SHX21_1.id = "lostmc"
SHX21_1.label = "Lost MC Clothing"
SHX22_1 = {}
SHX22_1.id = "sixthsense"
SHX22_1.label = "Sixth Sense Clothing"
SHX23_1 = {}
SHX23_1.id = "marketplace"
SHX23_1.label = "Marketplace Clothing"
SHX24_1 = {}
SHX24_1.id = "customclothing"
SHX24_1.label = "Imported Clothing"
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX15_1[4] = SHX19_1
SHX15_1[5] = SHX20_1
SHX15_1[6] = SHX21_1
SHX15_1[7] = SHX22_1
SHX15_1[8] = SHX23_1
SHX15_1[9] = SHX24_1
SHX16_1 = {}
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "civilian" == SHX0_2 then
    SHX1_2 = true
    return SHX1_2
  end
  if "customclothing" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasAnyAccessibleCustomClothing
    return SHX1_2()
  end
  if "lostmc" == SHX0_2 then
    SHX1_2 = SHX16_1.lostmc
    SHX1_2 = true == SHX1_2
    return SHX1_2
  end
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = true == SHX1_2
  return SHX1_2
end
SHX18_1 = {}
SHX19_1 = false
SHX20_1 = false
SHX21_1 = false
SHX22_1 = {}
SHX23_1 = {}
SHX24_1 = {}
SHX25_1 = vector3
SHX26_1 = 72.2545394897461
SHX27_1 = -1399.10229492188
SHX28_1 = 29.3761386871338
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = false
SHX24_1[1] = SHX25_1
SHX24_1[2] = SHX26_1
SHX25_1 = {}
SHX26_1 = vector3
SHX27_1 = 449.81854248047
SHX28_1 = -993.30865478516
SHX29_1 = 30.689584732056
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX27_1 = false
SHX25_1[1] = SHX26_1
SHX25_1[2] = SHX27_1
SHX26_1 = {}
SHX27_1 = vector3
SHX28_1 = 1547.8505859375
SHX29_1 = 816.67712402344
SHX30_1 = 78.693054199219
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX28_1 = false
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX27_1 = {}
SHX28_1 = vector3
SHX29_1 = -703.77685546875
SHX30_1 = -152.258544921875
SHX31_1 = 37.4151458740234
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = false
SHX27_1[1] = SHX28_1
SHX27_1[2] = SHX29_1
SHX28_1 = {}
SHX29_1 = vector3
SHX30_1 = -167.863754272461
SHX31_1 = -298.969482421875
SHX32_1 = 39.7332878112793
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX30_1 = false
SHX28_1[1] = SHX29_1
SHX28_1[2] = SHX30_1
SHX29_1 = {}
SHX30_1 = vector3
SHX31_1 = 428.694885253906
SHX32_1 = -800.1064453125
SHX33_1 = 29.4911422729492
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX31_1 = false
SHX29_1[1] = SHX30_1
SHX29_1[2] = SHX31_1
SHX30_1 = {}
SHX31_1 = vector3
SHX32_1 = -829.413269042969
SHX33_1 = -1073.71032714844
SHX34_1 = 11.3281078338623
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1)
SHX32_1 = false
SHX30_1[1] = SHX31_1
SHX30_1[2] = SHX32_1
SHX31_1 = {}
SHX32_1 = vector3
SHX33_1 = -1193.42956542969
SHX34_1 = -772.262329101563
SHX35_1 = 17.3244285583496
SHX32_1 = SHX32_1(SHX33_1, SHX34_1, SHX35_1)
SHX33_1 = false
SHX31_1[1] = SHX32_1
SHX31_1[2] = SHX33_1
SHX32_1 = {}
SHX33_1 = vector3
SHX34_1 = -1447.7978515625
SHX35_1 = -242.461242675781
SHX36_1 = 49.8207931518555
SHX33_1 = SHX33_1(SHX34_1, SHX35_1, SHX36_1)
SHX34_1 = false
SHX32_1[1] = SHX33_1
SHX32_1[2] = SHX34_1
SHX33_1 = {}
SHX34_1 = vector3
SHX35_1 = 11.6323690414429
SHX36_1 = 6514.224609375
SHX37_1 = 31.8778476715088
SHX34_1 = SHX34_1(SHX35_1, SHX36_1, SHX37_1)
SHX35_1 = false
SHX33_1[1] = SHX34_1
SHX33_1[2] = SHX35_1
SHX34_1 = {}
SHX35_1 = vector3
SHX36_1 = 1696.29187011719
SHX37_1 = 4829.3125
SHX38_1 = 42.0631141662598
SHX35_1 = SHX35_1(SHX36_1, SHX37_1, SHX38_1)
SHX36_1 = false
SHX34_1[1] = SHX35_1
SHX34_1[2] = SHX36_1
SHX35_1 = {}
SHX36_1 = vector3
SHX37_1 = 123.64656829834
SHX38_1 = -219.440338134766
SHX39_1 = 54.5578384399414
SHX36_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1)
SHX37_1 = false
SHX35_1[1] = SHX36_1
SHX35_1[2] = SHX37_1
SHX36_1 = {}
SHX37_1 = vector3
SHX38_1 = 618.093444824219
SHX39_1 = 2759.62939453125
SHX40_1 = 42.0881042480469
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = false
SHX36_1[1] = SHX37_1
SHX36_1[2] = SHX38_1
SHX37_1 = {}
SHX38_1 = vector3
SHX39_1 = 1190.55017089844
SHX40_1 = 2713.44189453125
SHX41_1 = 38.2226257324219
SHX38_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1)
SHX39_1 = false
SHX37_1[1] = SHX38_1
SHX37_1[2] = SHX39_1
SHX38_1 = {}
SHX39_1 = vector3
SHX40_1 = -3172.49682617188
SHX41_1 = 1048.13330078125
SHX42_1 = 20.8632030487061
SHX39_1 = SHX39_1(SHX40_1, SHX41_1, SHX42_1)
SHX40_1 = false
SHX38_1[1] = SHX39_1
SHX38_1[2] = SHX40_1
SHX39_1 = {}
SHX40_1 = vector3
SHX41_1 = -1108.44177246094
SHX42_1 = 2708.92358398438
SHX43_1 = 19.1078643798828
SHX40_1 = SHX40_1(SHX41_1, SHX42_1, SHX43_1)
SHX41_1 = false
SHX39_1[1] = SHX40_1
SHX39_1[2] = SHX41_1
SHX40_1 = {}
SHX41_1 = vector3
SHX42_1 = 127.57326507568
SHX43_1 = -1038.4321289063
SHX44_1 = 29.555480957031
SHX41_1 = SHX41_1(SHX42_1, SHX43_1, SHX44_1)
SHX42_1 = false
SHX40_1[1] = SHX41_1
SHX40_1[2] = SHX42_1
SHX41_1 = {}
SHX42_1 = vector3
SHX43_1 = -2152.7907714844
SHX44_1 = 5231.9516601563
SHX45_1 = 18.788805007935
SHX42_1 = SHX42_1(SHX43_1, SHX44_1, SHX45_1)
SHX43_1 = false
SHX41_1[1] = SHX42_1
SHX41_1[2] = SHX43_1
SHX42_1 = {}
SHX43_1 = vector3
SHX44_1 = 1213.8666992188
SHX45_1 = -1474.5180664063
SHX46_1 = 35.073650360107
SHX43_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1)
SHX44_1 = false
SHX42_1[1] = SHX43_1
SHX42_1[2] = SHX44_1
SHX43_1 = {}
SHX44_1 = vector3
SHX45_1 = -455.61834716797
SHX46_1 = 6012.7348632813
SHX47_1 = 31.7164478302
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = false
SHX43_1[1] = SHX44_1
SHX43_1[2] = SHX45_1
SHX44_1 = {}
SHX45_1 = vector3
SHX46_1 = 1439.3804931641
SHX47_1 = 6331.80078125
SHX48_1 = 23.954704284668
SHX45_1 = SHX45_1(SHX46_1, SHX47_1, SHX48_1)
SHX46_1 = false
SHX44_1[1] = SHX45_1
SHX44_1[2] = SHX46_1
SHX45_1 = {}
SHX46_1 = vector3
SHX47_1 = -1098.4307861328
SHX48_1 = -831.42083740234
SHX49_1 = 14.282784461975
SHX46_1 = SHX46_1(SHX47_1, SHX48_1, SHX49_1)
SHX47_1 = false
SHX45_1[1] = SHX46_1
SHX45_1[2] = SHX47_1
SHX46_1 = {}
SHX47_1 = vector3
SHX48_1 = 243.71351623535
SHX49_1 = -1370.1625976563
SHX50_1 = 39.534339904785
SHX47_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX48_1 = true
SHX46_1[1] = SHX47_1
SHX46_1[2] = SHX48_1
SHX47_1 = {}
SHX48_1 = vector3
SHX49_1 = 948.33013916016
SHX50_1 = 64.711891174316
SHX51_1 = 81.000564575195
SHX48_1 = SHX48_1(SHX49_1, SHX50_1, SHX51_1)
SHX49_1 = false
SHX47_1[1] = SHX48_1
SHX47_1[2] = SHX49_1
SHX48_1 = {}
SHX49_1 = vector3
SHX50_1 = 1839.0124511719
SHX51_1 = 3689.259765625
SHX52_1 = 34.270027160645
SHX49_1 = SHX49_1(SHX50_1, SHX51_1, SHX52_1)
SHX50_1 = false
SHX48_1[1] = SHX49_1
SHX48_1[2] = SHX50_1
SHX49_1 = {}
SHX50_1 = vector3
SHX51_1 = -253.41467285156
SHX52_1 = 6309.4458007813
SHX53_1 = 32.427234649658
SHX50_1 = SHX50_1(SHX51_1, SHX52_1, SHX53_1)
SHX51_1 = false
SHX49_1[1] = SHX50_1
SHX49_1[2] = SHX51_1
SHX50_1 = {}
SHX51_1 = vector3
SHX52_1 = -565.46356201172
SHX53_1 = 287.12573242188
SHX54_1 = 91.797775268555
SHX51_1 = SHX51_1(SHX52_1, SHX53_1, SHX54_1)
SHX52_1 = false
SHX50_1[1] = SHX51_1
SHX50_1[2] = SHX52_1
SHX51_1 = {}
SHX52_1 = vector3
SHX53_1 = 1780.2961425781
SHX54_1 = 2547.8825683594
SHX55_1 = 45.797790527344
SHX52_1 = SHX52_1(SHX53_1, SHX54_1, SHX55_1)
SHX53_1 = false
SHX51_1[1] = SHX52_1
SHX51_1[2] = SHX53_1
SHX52_1 = {}
SHX53_1 = vector3
SHX54_1 = 4489.6123046875
SHX55_1 = -4452.7778320312
SHX56_1 = 4.366425037384
SHX53_1 = SHX53_1(SHX54_1, SHX55_1, SHX56_1)
SHX54_1 = false
SHX52_1[1] = SHX53_1
SHX52_1[2] = SHX54_1
SHX53_1 = {}
SHX54_1 = vector3
SHX55_1 = -443.05731201172
SHX56_1 = -311.21786499023
SHX57_1 = 34.910472869873
SHX54_1 = SHX54_1(SHX55_1, SHX56_1, SHX57_1)
SHX55_1 = false
SHX53_1[1] = SHX54_1
SHX53_1[2] = SHX55_1
SHX54_1 = {}
SHX55_1 = vector3
SHX56_1 = 277.69772338867
SHX57_1 = -1335.5568847656
SHX58_1 = 24.537786483765
SHX55_1 = SHX55_1(SHX56_1, SHX57_1, SHX58_1)
SHX56_1 = true
SHX54_1[1] = SHX55_1
SHX54_1[2] = SHX56_1
SHX55_1 = {}
SHX56_1 = vector3
SHX57_1 = 557.88751220703
SHX58_1 = 5950.2036132812
SHX59_1 = -158.08744812012
SHX56_1 = SHX56_1(SHX57_1, SHX58_1, SHX59_1)
SHX57_1 = true
SHX55_1[1] = SHX56_1
SHX55_1[2] = SHX57_1
SHX56_1 = {}
SHX57_1 = vector3
SHX58_1 = 323.02081298828
SHX59_1 = 5956.587890625
SHX60_1 = -158.27177429199
SHX57_1 = SHX57_1(SHX58_1, SHX59_1, SHX60_1)
SHX58_1 = true
SHX56_1[1] = SHX57_1
SHX56_1[2] = SHX58_1
SHX57_1 = {}
SHX58_1 = vector3
SHX59_1 = 262.38305664062
SHX60_1 = 6101.4702148438
SHX61_1 = -159.42733764648
SHX58_1 = SHX58_1(SHX59_1, SHX60_1, SHX61_1)
SHX59_1 = true
SHX57_1[1] = SHX58_1
SHX57_1[2] = SHX59_1
SHX58_1 = {}
SHX59_1 = vector3
SHX60_1 = 256.01400756836
SHX61_1 = 6227.15234375
SHX62_1 = -159.4225769043
SHX59_1 = SHX59_1(SHX60_1, SHX61_1, SHX62_1)
SHX60_1 = true
SHX58_1[1] = SHX59_1
SHX58_1[2] = SHX60_1
SHX59_1 = {}
SHX60_1 = vector3
SHX61_1 = -2428.5307617188
SHX62_1 = -224.33743286133
SHX63_1 = 16.430755615234
SHX60_1 = SHX60_1(SHX61_1, SHX62_1, SHX63_1)
SHX61_1 = true
SHX62_1 = "borderforce.whitelisted"
SHX59_1[1] = SHX60_1
SHX59_1[2] = SHX61_1
SHX59_1[3] = SHX62_1
SHX60_1 = {}
SHX61_1 = vector3
SHX62_1 = 1325.2674560547
SHX63_1 = 596.18975830078
SHX64_1 = 80.330574035645
SHX61_1 = SHX61_1(SHX62_1, SHX63_1, SHX64_1)
SHX62_1 = true
SHX63_1 = "borderforce.whitelisted"
SHX60_1[1] = SHX61_1
SHX60_1[2] = SHX62_1
SHX60_1[3] = SHX63_1
SHX61_1 = {}
SHX62_1 = vector3
SHX63_1 = 2446.55078125
SHX64_1 = -195.40969848633
SHX65_1 = 87.59196472168
SHX62_1 = SHX62_1(SHX63_1, SHX64_1, SHX65_1)
SHX63_1 = true
SHX64_1 = "borderforce.whitelisted"
SHX61_1[1] = SHX62_1
SHX61_1[2] = SHX63_1
SHX61_1[3] = SHX64_1
SHX62_1 = {}
SHX63_1 = vector3
SHX64_1 = 1113.886719
SHX65_1 = -920.182556
SHX66_1 = 51.271362
SHX63_1 = SHX63_1(SHX64_1, SHX65_1, SHX66_1)
SHX64_1 = false
SHX65_1 = "lfb.whitelisted"
SHX62_1[1] = SHX63_1
SHX62_1[2] = SHX64_1
SHX62_1[3] = SHX65_1
SHX63_1 = {}
SHX64_1 = vector3
SHX65_1 = -982.78454589844
SHX66_1 = -2937.9470214844
SHX67_1 = 13.945078849792
SHX64_1 = SHX64_1(SHX65_1, SHX66_1, SHX67_1)
SHX65_1 = true
SHX63_1[1] = SHX64_1
SHX63_1[2] = SHX65_1
SHX64_1 = {}
SHX65_1 = vector3
SHX66_1 = 2064.3076171875
SHX67_1 = 5068.587890625
SHX68_1 = 41.944023132324
SHX65_1 = SHX65_1(SHX66_1, SHX67_1, SHX68_1)
SHX66_1 = false
SHX64_1[1] = SHX65_1
SHX64_1[2] = SHX66_1
SHX65_1 = {}
SHX66_1 = vector3
SHX67_1 = 1401.3364257812
SHX68_1 = 1130.7509765625
SHX69_1 = 118.15337371826
SHX66_1 = SHX66_1(SHX67_1, SHX68_1, SHX69_1)
SHX67_1 = true
SHX65_1[1] = SHX66_1
SHX65_1[2] = SHX67_1
SHX66_1 = {}
SHX67_1 = vector3
SHX68_1 = -63.206512451172
SHX69_1 = 359.97018432617
SHX70_1 = 112.44757843018
SHX67_1 = SHX67_1(SHX68_1, SHX69_1, SHX70_1)
SHX68_1 = true
SHX66_1[1] = SHX67_1
SHX66_1[2] = SHX68_1
SHX67_1 = {}
SHX68_1 = vector3
SHX69_1 = -269.044922
SHX70_1 = -914.434448
SHX71_1 = 46.270412
SHX68_1 = SHX68_1(SHX69_1, SHX70_1, SHX71_1)
SHX69_1 = true
SHX67_1[1] = SHX68_1
SHX67_1[2] = SHX69_1
SHX68_1 = {}
SHX69_1 = vector3
SHX70_1 = 335.20489501953
SHX71_1 = -580.37078857422
SHX72_1 = 75.724952697754
SHX69_1 = SHX69_1(SHX70_1, SHX71_1, SHX72_1)
SHX70_1 = true
SHX68_1[1] = SHX69_1
SHX68_1[2] = SHX70_1
SHX69_1 = {}
SHX70_1 = vector3
SHX71_1 = 273.05331420898
SHX72_1 = 2995.7216796875
SHX73_1 = 43.083797454834
SHX70_1 = SHX70_1(SHX71_1, SHX72_1, SHX73_1)
SHX71_1 = false
SHX69_1[1] = SHX70_1
SHX69_1[2] = SHX71_1
SHX70_1 = {}
SHX71_1 = vector3
SHX72_1 = -1881.3974609375
SHX73_1 = 2068.4558105469
SHX74_1 = 145.57386779785
SHX71_1 = SHX71_1(SHX72_1, SHX73_1, SHX74_1)
SHX72_1 = false
SHX70_1[1] = SHX71_1
SHX70_1[2] = SHX72_1
SHX71_1 = {}
SHX72_1 = vector3
SHX73_1 = -598.35925292969
SHX74_1 = -1066.8760986328
SHX75_1 = 22.344198226929
SHX72_1 = SHX72_1(SHX73_1, SHX74_1, SHX75_1)
SHX73_1 = false
SHX71_1[1] = SHX72_1
SHX71_1[2] = SHX73_1
SHX72_1 = {}
SHX73_1 = vector3
SHX74_1 = 1841.5708007812
SHX75_1 = 2578.4370117188
SHX76_1 = 45.890563964844
SHX73_1 = SHX73_1(SHX74_1, SHX75_1, SHX76_1)
SHX74_1 = false
SHX75_1 = "prisonguard.onduty.permission"
SHX72_1[1] = SHX73_1
SHX72_1[2] = SHX74_1
SHX72_1[3] = SHX75_1
SHX73_1 = {}
SHX74_1 = vector3
SHX75_1 = 1841.5257568359
SHX76_1 = 2575.9323730469
SHX77_1 = 45.890563964844
SHX74_1 = SHX74_1(SHX75_1, SHX76_1, SHX77_1)
SHX75_1 = false
SHX76_1 = "prisonguard.onduty.permission"
SHX73_1[1] = SHX74_1
SHX73_1[2] = SHX75_1
SHX73_1[3] = SHX76_1
SHX23_1[1] = SHX24_1
SHX23_1[2] = SHX25_1
SHX23_1[3] = SHX26_1
SHX23_1[4] = SHX27_1
SHX23_1[5] = SHX28_1
SHX23_1[6] = SHX29_1
SHX23_1[7] = SHX30_1
SHX23_1[8] = SHX31_1
SHX23_1[9] = SHX32_1
SHX23_1[10] = SHX33_1
SHX23_1[11] = SHX34_1
SHX23_1[12] = SHX35_1
SHX23_1[13] = SHX36_1
SHX23_1[14] = SHX37_1
SHX23_1[15] = SHX38_1
SHX23_1[16] = SHX39_1
SHX23_1[17] = SHX40_1
SHX23_1[18] = SHX41_1
SHX23_1[19] = SHX42_1
SHX23_1[20] = SHX43_1
SHX23_1[21] = SHX44_1
SHX23_1[22] = SHX45_1
SHX23_1[23] = SHX46_1
SHX23_1[24] = SHX47_1
SHX23_1[25] = SHX48_1
SHX23_1[26] = SHX49_1
SHX23_1[27] = SHX50_1
SHX23_1[28] = SHX51_1
SHX23_1[29] = SHX52_1
SHX23_1[30] = SHX53_1
SHX23_1[31] = SHX54_1
SHX23_1[32] = SHX55_1
SHX23_1[33] = SHX56_1
SHX23_1[34] = SHX57_1
SHX23_1[35] = SHX58_1
SHX23_1[36] = SHX59_1
SHX23_1[37] = SHX60_1
SHX23_1[38] = SHX61_1
SHX23_1[39] = SHX62_1
SHX23_1[40] = SHX63_1
SHX23_1[41] = SHX64_1
SHX23_1[42] = SHX65_1
SHX23_1[43] = SHX66_1
SHX23_1[44] = SHX67_1
SHX23_1[45] = SHX68_1
SHX23_1[46] = SHX69_1
SHX23_1[47] = SHX70_1
SHX23_1[48] = SHX71_1
SHX23_1[49] = SHX72_1
SHX23_1[50] = SHX73_1
SHX24_1 = false
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.5
SHX31_1 = 0.8
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.7
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 60.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1["Hats / Helmets"] = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.5
SHX31_1 = 0.68
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.68
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 50.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Glasses = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.5
SHX31_1 = 0.68
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.68
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 50.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1["Ear Accessories"] = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.5
SHX31_1 = 0.8
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.7
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 60.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Mask = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.5
SHX31_1 = 0.8
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.7
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 60.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Hair = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 1.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 70.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1["Shirts / Jackets"] = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 1.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 70.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1["Arms / Torso"] = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.8
SHX31_1 = 0.0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 60.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Watches = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.8
SHX31_1 = 0.0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 60.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Bracelets = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 1.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 70.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Undershirt = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 1.0
SHX31_1 = -0.4
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = -0.4
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 70.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Legs = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.6
SHX31_1 = -0.5
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = -0.9
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 60.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Shoes = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 1.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 70.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Bags = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 1.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 70.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Vests = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 1.2
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.2
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 80.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Accessories = SHX26_1
SHX26_1 = {}
SHX27_1 = "offset"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 1.2
SHX31_1 = 0.3
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "point"
SHX28_1 = vector3
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = 0.2
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX26_1[SHX27_1] = SHX28_1
SHX27_1 = "fov"
SHX28_1 = 80.0
SHX26_1[SHX27_1] = SHX28_1
SHX25_1.Badges = SHX26_1
SHX26_1 = nil
SHX27_1 = nil
SHX28_1 = nil
SHX29_1 = 0.0
SHX30_1 = nil
SHX31_1 = 214
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX18_1.name
  SHX1_2 = SHX28_1
  if SHX0_2 ~= SHX1_2 then
    SHX1_2 = SHX18_1.name
    SHX0_2 = SHX25_1
    SHX0_2 = SHX0_2[SHX1_2]
    if SHX0_2 then
      SHX0_2 = SHX26_1
      if SHX0_2 then
        SHX1_2 = SHX18_1.name
        SHX0_2 = SHX25_1
        SHX0_2 = SHX0_2[SHX1_2]
        SHX1_2 = SetCamFov
        SHX2_2 = SHX26_1
        SHX3_2 = SHX0_2.fov
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SetCamDofStrength
        SHX2_2 = SHX26_1
        SHX3_2 = 0.0
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = PointCamAtEntity
        SHX2_2 = SHX26_1
        SHX3_2 = PlayerPedId
        SHX3_2 = SHX3_2()
        SHX4_2 = SHX0_2.point
        SHX4_2 = SHX4_2.x
        SHX5_2 = SHX0_2.point
        SHX5_2 = SHX5_2.y
        SHX6_2 = SHX0_2.point
        SHX6_2 = SHX6_2.z
        SHX7_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      end
    end
    SHX0_2 = SHX18_1.name
    SHX28_1 = SHX0_2
  end
  SHX1_2 = SHX28_1
  SHX0_2 = SHX25_1
  SHX0_2 = SHX0_2[SHX1_2]
  if SHX0_2 then
    SHX0_2 = SHX26_1
    if SHX0_2 then
      SHX1_2 = SHX28_1
      SHX0_2 = SHX25_1
      SHX0_2 = SHX0_2[SHX1_2]
      SHX1_2 = GetDisabledControlNormal
      SHX2_2 = 0
      SHX3_2 = 1
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = SHX29_1
      SHX3_2 = SHX1_2 * 8.0
      SHX2_2 = SHX2_2 - SHX3_2
      SHX29_1 = SHX2_2
      SHX2_2 = GetEntityCoords
      SHX3_2 = PlayerPedId
      SHX3_2 = SHX3_2()
      SHX4_2 = true
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = math
      SHX3_2 = SHX3_2.rad
      SHX4_2 = SHX29_1
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = SHX2_2.x
      SHX5_2 = math
      SHX5_2 = SHX5_2.sin
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX0_2.offset
      SHX6_2 = SHX6_2.y
      SHX5_2 = SHX5_2 * SHX6_2
      SHX4_2 = SHX4_2 + SHX5_2
      SHX5_2 = SHX2_2.y
      SHX6_2 = math
      SHX6_2 = SHX6_2.cos
      SHX7_2 = SHX3_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = SHX0_2.offset
      SHX7_2 = SHX7_2.y
      SHX6_2 = SHX6_2 * SHX7_2
      SHX5_2 = SHX5_2 + SHX6_2
      SHX6_2 = SHX2_2.z
      SHX7_2 = SHX0_2.offset
      SHX7_2 = SHX7_2.z
      SHX6_2 = SHX6_2 + SHX7_2
      SHX7_2 = SetCamCoord
      SHX8_2 = SHX26_1
      SHX9_2 = SHX4_2
      SHX10_2 = SHX5_2
      SHX11_2 = SHX6_2
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
  end
  SHX0_2 = IsPauseMenuActive
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = SHX31_1
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 2
    SHX2_2 = SHX31_1
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableAllControlActions
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 0
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 1
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 2
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 3
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 4
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 5
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 6
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 249
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 289
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = SHX31_1
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 2
    SHX2_2 = SHX31_1
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX33_1 = {}
SHX34_1 = nil
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = nil
  SHX30_1 = SHX0_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = ClearPedTasksImmediately
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX27_1 = SHX1_2
  SHX1_2 = TaskAchieveHeading
  SHX2_2 = SHX0_2
  SHX3_2 = SHX27_1
  SHX4_2 = -1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX27_1
  SHX1_2 = -SHX1_2
  SHX29_1 = SHX1_2
  SHX1_2 = SHX34_1
  if SHX1_2 then
    SHX2_2 = SHX34_1
    SHX1_2 = SHX33_1
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.setMarkerHidden
      SHX3_2 = SHX34_1
      SHX2_2 = SHX33_1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = CreateCam
  SHX2_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX26_1 = SHX1_2
  SHX1_2 = SetCamActive
  SHX2_2 = SHX26_1
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RenderScriptCams
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = 0
  SHX5_2 = false
  SHX6_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SHX32_1
  SHX1_2()
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX26_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = ClearPedTasksImmediately
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 0
  SHX4_2 = false
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = SetCamActive
  SHX1_2 = SHX26_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = DestroyCam
  SHX1_2 = SHX26_1
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = nil
  SHX26_1 = SHX0_2
  SHX0_2 = nil
  SHX27_1 = SHX0_2
  SHX0_2 = nil
  SHX28_1 = SHX0_2
  SHX0_2 = nil
  SHX30_1 = SHX0_2
  SHX0_2 = SHX34_1
  if SHX0_2 then
    SHX1_2 = SHX34_1
    SHX0_2 = SHX33_1
    SHX0_2 = SHX0_2[SHX1_2]
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.setMarkerHidden
      SHX2_2 = SHX34_1
      SHX1_2 = SHX33_1
      SHX1_2 = SHX1_2[SHX2_2]
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.index
  SHX34_1 = SHX1_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.IsAnyMenuOfTypeVisible
  SHX2_2 = "CMGclothing"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "b6d3eda536"
    SHX3_2 = SHX0_2.index
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = SHX36_1
  SHX0_2()
  SHX0_2 = false
  SHX20_1 = SHX0_2
  SHX0_2 = nil
  SHX34_1 = SHX0_2
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
  SHX1_2 = "CMGclothing"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = SHX36_1
    SHX0_2()
    SHX0_2 = false
    SHX20_1 = SHX0_2
  end
end
function SHX40_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  if "prop" == SHX0_2 then
    if SHX2_2 then
      SHX3_2 = GetPedPropTextureIndex
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if nil ~= SHX3_2 then
        SHX3_2 = GetPedPropTextureIndex
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getPlayerPed
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX1_2
        return SHX3_2(SHX4_2, SHX5_2)
      else
        SHX3_2 = 0
        return SHX3_2
      end
    else
      SHX3_2 = GetPedPropIndex
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if nil ~= SHX3_2 then
        SHX3_2 = GetPedPropIndex
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getPlayerPed
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX1_2
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if -1 == SHX3_2 then
          SHX3_2 = GetPedPropIndex
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.getPlayerPed
          SHX4_2 = SHX4_2()
          SHX5_2 = SHX1_2
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          SHX3_2 = SHX3_2 + 2
          return SHX3_2
        else
          SHX3_2 = GetPedPropIndex
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.getPlayerPed
          SHX4_2 = SHX4_2()
          SHX5_2 = SHX1_2
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          SHX3_2 = SHX3_2 + 1
          return SHX3_2
        end
      else
        SHX3_2 = 0
        return SHX3_2
      end
    end
  elseif "drawable" == SHX0_2 then
    if 2 == SHX1_2 and SHX2_2 then
      SHX3_2 = GetPedHairColor
      SHX4_2 = PlayerPedId
      SHX4_2, SHX5_2 = SHX4_2()
      return SHX3_2(SHX4_2, SHX5_2)
    elseif SHX2_2 then
      SHX3_2 = GetPedTextureVariation
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if nil ~= SHX3_2 then
        SHX3_2 = GetPedTextureVariation
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getPlayerPed
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX1_2
        return SHX3_2(SHX4_2, SHX5_2)
      else
        SHX3_2 = 0
        return SHX3_2
      end
    else
      SHX3_2 = GetPedDrawableVariation
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if nil ~= SHX3_2 then
        SHX3_2 = GetPedDrawableVariation
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getPlayerPed
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX1_2
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = SHX3_2 + 1
        return SHX3_2
      else
        SHX3_2 = 0
        return SHX3_2
      end
    end
  end
end
function SHX41_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX0_2.type
    if "prop" == SHX4_2 then
      SHX4_2 = GetPedPropIndex
      SHX5_2 = SHX3_2
      SHX6_2 = SHX0_2.index
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if -1 == SHX4_2 then
        return SHX2_2
      end
    else
      SHX4_2 = SHX40_1
      SHX5_2 = SHX0_2.type
      SHX6_2 = SHX0_2.index
      SHX7_2 = false
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX5_2 = SHX1_2[SHX4_2]
      if not SHX5_2 then
        return SHX2_2
      end
    end
  end
  SHX3_2 = SHX40_1
  SHX4_2 = SHX0_2.type
  SHX5_2 = SHX0_2.index
  SHX6_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SHX1_2[SHX3_2]
  if not SHX4_2 then
    SHX4_2 = 1
  end
  return SHX4_2
end
function SHX42_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if not SHX0_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX16_1
    SHX7_2 = SHX7_2[SHX6_2]
    if SHX7_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX43_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  if nil ~= SHX0_2 then
    SHX3_2 = #SHX0_2
    if 0 ~= SHX3_2 then
      goto SHX_LABEL_17
    end
  end
  if "Arms / Torso" == SHX2_2 or "Shoes" == SHX2_2 then
    SHX3_2 = true
    return SHX3_2
  end
  SHX3_2 = "civilian" == SHX1_2
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX3_2 = ipairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX42_1
    SHX10_2 = SHX8_2.permissions
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      SHX9_2 = SHX6_1
      SHX10_2 = SHX8_2.permissions
      SHX11_2 = SHX1_2
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      if SHX9_2 then
        SHX9_2 = true
        return SHX9_2
      end
    end
  end
  SHX3_2 = false
  return SHX3_2
end
function SHX44_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX4_2 = {}
  SHX5_2 = SHX0_1
  if SHX5_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getModelGender
    SHX5_2 = SHX5_2()
    if "female" == SHX5_2 then
      SHX4_2 = SHX0_1.female_whitelists
    else
      SHX4_2 = SHX0_1.male_whitelists
    end
  end
  SHX5_2 = SHX4_2[SHX0_2]
  if not SHX5_2 then
    SHX6_2 = nil
    return SHX6_2
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerPed
  SHX6_2 = SHX6_2()
  SHX7_2 = ""
  SHX8_2 = 0
  if SHX1_2 then
    SHX9_2 = GetPedCollectionNameFromProp
    SHX10_2 = SHX6_2
    SHX11_2 = SHX2_2
    SHX12_2 = SHX3_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = SHX9_2
    SHX9_2 = GetPedCollectionLocalIndexFromProp
    SHX10_2 = SHX6_2
    SHX11_2 = SHX2_2
    SHX12_2 = SHX3_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX8_2 = SHX9_2
  else
    SHX9_2 = GetPedCollectionNameFromDrawable
    SHX10_2 = SHX6_2
    SHX11_2 = SHX2_2
    SHX12_2 = SHX3_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = SHX9_2
    SHX9_2 = GetPedCollectionLocalIndexFromDrawable
    SHX10_2 = SHX6_2
    SHX11_2 = SHX2_2
    SHX12_2 = SHX3_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX8_2 = SHX9_2
  end
  SHX9_2 = SHX2_1
  SHX10_2 = SHX7_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX7_2 = SHX9_2
  SHX9_2 = type
  SHX10_2 = SHX7_2
  SHX9_2 = SHX9_2(SHX10_2)
  if "string" ~= SHX9_2 then
    SHX7_2 = ""
  end
  SHX9_2 = SHX3_1
  SHX10_2 = SHX8_2
  SHX9_2 = SHX9_2(SHX10_2)
  if nil == SHX9_2 then
    SHX10_2 = nil
    return SHX10_2
  end
  SHX8_2 = SHX9_2
  SHX10_2 = SHX5_2[SHX7_2]
  if SHX10_2 then
    SHX11_2 = SHX10_2[SHX8_2]
    if nil ~= SHX11_2 then
      return SHX11_2
    end
    if nil ~= SHX8_2 then
      SHX12_2 = tostring
      SHX13_2 = SHX8_2
      SHX12_2 = SHX12_2(SHX13_2)
      SHX12_2 = SHX10_2[SHX12_2]
      return SHX12_2
    end
  end
  SHX11_2 = nil
  return SHX11_2
end
SHX45_1 = CMG
SHX46_1 = "doesClothingDrawableRequirePermission"
function SHX47_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX4_2 = SHX0_1
  if not SHX4_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = SHX0_1.male_whitelists
  SHX5_2 = string
  SHX5_2 = SHX5_2.lower
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  if "female" == SHX5_2 then
    SHX4_2 = SHX0_1.female_whitelists
  end
  SHX5_2 = SHX4_2[SHX1_2]
  if not SHX5_2 then
    SHX6_2 = false
    return SHX6_2
  end
  SHX6_2 = tostring
  SHX7_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = SHX5_2[SHX6_2]
  if SHX6_2 then
    SHX7_2 = pairs
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      if SHX3_2 == SHX12_2 then
        SHX13_2 = true
        return SHX13_2
      end
    end
  end
  SHX7_2 = false
  return SHX7_2
end
SHX45_1[SHX46_1] = SHX47_1
function SHX45_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2 = SHX5_2()
  SHX6_2 = nil
  SHX7_2 = nil
  if SHX0_2 then
    SHX8_2 = GetPedCollectionNameFromProp
    SHX9_2 = SHX5_2
    SHX10_2 = SHX1_2
    SHX11_2 = SHX2_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX8_2
    SHX8_2 = GetPedCollectionLocalIndexFromProp
    SHX9_2 = SHX5_2
    SHX10_2 = SHX1_2
    SHX11_2 = SHX2_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = SHX8_2
  else
    SHX8_2 = GetPedCollectionNameFromDrawable
    SHX9_2 = SHX5_2
    SHX10_2 = SHX1_2
    SHX11_2 = SHX2_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX8_2
    SHX8_2 = GetPedCollectionLocalIndexFromDrawable
    SHX9_2 = SHX5_2
    SHX10_2 = SHX1_2
    SHX11_2 = SHX2_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = SHX8_2
  end
  SHX8_2 = SHX2_1
  SHX9_2 = SHX6_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX6_2 = SHX8_2
  SHX8_2 = type
  SHX9_2 = SHX6_2
  SHX8_2 = SHX8_2(SHX9_2)
  if "string" ~= SHX8_2 then
    SHX6_2 = ""
  end
  SHX8_2 = SHX3_1
  SHX9_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getCustomClothingSlotForComponent
  SHX10_2 = SHX1_2
  SHX11_2 = SHX0_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  if "customclothing" == SHX4_2 then
    if not SHX8_2 or not SHX9_2 then
      SHX10_2 = false
      return SHX10_2
    end
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.hasAccessibleCustomClothingDrawable
    SHX11_2 = SHX6_2
    SHX12_2 = SHX8_2
    SHX13_2 = SHX9_2
    return SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  end
  SHX10_2 = SHX44_1
  SHX11_2 = SHX3_2
  SHX12_2 = SHX0_2
  SHX13_2 = SHX1_2
  SHX14_2 = SHX2_2
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX43_1
  SHX12_2 = SHX10_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX3_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  if not SHX11_2 then
    SHX11_2 = false
    return SHX11_2
  end
  if SHX8_2 and SHX9_2 then
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.isClothingDrawableLocked
    SHX12_2 = SHX6_2
    SHX13_2 = SHX8_2
    SHX14_2 = SHX9_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    if SHX11_2 then
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.getLockedClothingTextureSet
      SHX12_2 = SHX6_2
      SHX13_2 = SHX8_2
      SHX14_2 = SHX9_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      SHX12_2 = nil
      if SHX0_2 then
        SHX13_2 = GetNumberOfPedPropTextureVariations
        SHX14_2 = SHX5_2
        SHX15_2 = SHX1_2
        SHX16_2 = SHX2_2
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX12_2 = SHX13_2
      else
        SHX13_2 = GetNumberOfPedTextureVariations
        SHX14_2 = SHX5_2
        SHX15_2 = SHX1_2
        SHX16_2 = SHX2_2
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX12_2 = SHX13_2
      end
      SHX13_2 = 0
      SHX14_2 = pairs
      SHX15_2 = SHX11_2
      SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
      for SHX18_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
        SHX13_2 = SHX13_2 + 1
      end
      if SHX12_2 <= SHX13_2 then
        SHX14_2 = false
        return SHX14_2
      end
    end
  end
  SHX11_2 = true
  return SHX11_2
end
function SHX46_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  if "drawable" == SHX0_2 then
    SHX5_2 = {}
    SHX6_2 = {}
    SHX7_2 = {}
    SHX8_2 = 0
    SHX9_2 = GetNumberOfPedDrawableVariations
    SHX10_2 = SHX4_2
    SHX11_2 = SHX1_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = SHX9_2 - 1
    SHX10_2 = 1
    for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
      SHX12_2 = SHX45_1
      SHX13_2 = false
      SHX14_2 = SHX1_2
      SHX15_2 = SHX11_2
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      if SHX12_2 then
        SHX12_2 = #SHX7_2
        SHX12_2 = SHX12_2 + 1
        SHX13_2 = SHX11_2 + 1
        SHX5_2[SHX12_2] = SHX13_2
        SHX13_2 = SHX11_2 + 1
        SHX6_2[SHX13_2] = SHX12_2
        SHX7_2[SHX12_2] = true
      end
    end
    SHX8_2 = #SHX7_2
    SHX9_2 = nil
    if 1 == SHX8_2 then
      SHX9_2 = SHX8_2 + 1
      SHX5_2[SHX9_2] = 0
      SHX7_2[SHX9_2] = true
      SHX8_2 = #SHX7_2
    end
    SHX10_2 = 1
    SHX11_2 = SHX8_2
    SHX12_2 = 1
    for SHX13_2 = SHX10_2, SHX11_2, SHX12_2 do
      SHX14_2 = SHX13_2
      SHX15_2 = "/"
      SHX16_2 = SHX8_2
      SHX14_2 = SHX14_2 .. SHX15_2 .. SHX16_2
      SHX7_2[SHX13_2] = SHX14_2
    end
    SHX10_2 = SHX7_2
    SHX11_2 = SHX5_2
    SHX12_2 = SHX6_2
    SHX13_2 = SHX9_2
    return SHX10_2, SHX11_2, SHX12_2, SHX13_2
  else
    SHX5_2 = {}
    SHX6_2 = {}
    SHX7_2 = {}
    SHX8_2 = 0
    SHX9_2 = GetNumberOfPedPropDrawableVariations
    SHX10_2 = SHX4_2
    SHX11_2 = SHX1_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = SHX9_2 - 1
    SHX10_2 = 1
    for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
      SHX12_2 = SHX45_1
      SHX13_2 = true
      SHX14_2 = SHX1_2
      SHX15_2 = SHX11_2
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      if SHX12_2 then
        SHX12_2 = #SHX7_2
        SHX12_2 = SHX12_2 + 1
        SHX13_2 = SHX11_2 + 1
        SHX5_2[SHX12_2] = SHX13_2
        SHX13_2 = SHX11_2 + 1
        SHX6_2[SHX13_2] = SHX12_2
        SHX7_2[SHX12_2] = true
      end
    end
    SHX8_2 = #SHX7_2
    SHX9_2 = nil
    if 1 == SHX8_2 then
      SHX9_2 = SHX8_2 + 1
      SHX5_2[SHX9_2] = 0
      SHX7_2[SHX9_2] = true
      SHX8_2 = #SHX7_2
    end
    SHX10_2 = 1
    SHX11_2 = SHX8_2
    SHX12_2 = 1
    for SHX13_2 = SHX10_2, SHX11_2, SHX12_2 do
      SHX14_2 = SHX13_2
      SHX15_2 = "/"
      SHX16_2 = SHX8_2
      SHX14_2 = SHX14_2 .. SHX15_2 .. SHX16_2
      SHX7_2[SHX13_2] = SHX14_2
    end
    SHX10_2 = SHX7_2
    SHX11_2 = SHX5_2
    SHX12_2 = SHX6_2
    SHX13_2 = SHX9_2
    return SHX10_2, SHX11_2, SHX12_2, SHX13_2
  end
end
SHX47_1 = {}
SHX48_1 = {}
function SHX49_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX47_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    return
  end
  SHX2_2 = SHX48_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = SHX2_2.blip
    if SHX3_2 then
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.removeBlip
      SHX4_2 = SHX2_2.blip
      SHX3_2(SHX4_2)
    end
    SHX3_2 = SHX2_2.marker
    if SHX3_2 then
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.removeMarker
      SHX4_2 = SHX2_2.marker
      SHX3_2(SHX4_2)
    end
    SHX3_2 = SHX48_1
    SHX3_2[SHX0_2] = nil
  end
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.removeArea
  SHX4_2 = "clothingstore_"
  SHX5_2 = tostring
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX33_1
  SHX3_2[SHX0_2] = nil
  SHX3_2 = SHX47_1
  SHX3_2[SHX0_2] = nil
end
function SHX50_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = SHX47_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    return
  end
  SHX2_2 = SHX1_2[1]
  SHX3_2 = type
  SHX4_2 = SHX1_2[3]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = "string" == SHX3_2
  SHX4_2 = nil
  SHX5_2 = nil
  SHX6_2 = SHX1_2[2]
  if not SHX6_2 then
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addBlip
    SHX7_2 = SHX2_2.x
    SHX8_2 = SHX2_2.y
    SHX9_2 = SHX2_2.z
    SHX10_2 = 73
    SHX11_2 = 3
    SHX12_2 = "Clothing Store"
    SHX13_2 = 0.7
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX4_2 = SHX6_2
  end
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.addPropMarker
  SHX7_2 = "bzzz_marker_tshirt_green_anim"
  SHX8_2 = SHX2_2.x
  SHX9_2 = SHX2_2.y
  SHX10_2 = SHX2_2.z
  SHX11_2 = 20.0
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = SHX6_2
  SHX6_2 = SHX33_1
  SHX6_2[SHX0_2] = SHX5_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.createArea
  SHX7_2 = "clothingstore_"
  SHX8_2 = tostring
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX7_2 = SHX7_2 .. SHX8_2
  SHX8_2 = SHX1_2[1]
  SHX9_2 = 2.0
  SHX10_2 = 3.0
  SHX11_2 = SHX37_1
  SHX12_2 = SHX38_1
  SHX13_2 = SHX39_1
  SHX14_2 = {}
  SHX14_2.index = SHX0_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = SHX47_1
  SHX6_2[SHX0_2] = true
  if SHX3_2 then
    SHX6_2 = SHX48_1
    SHX7_2 = {}
    SHX7_2.blip = SHX4_2
    SHX7_2.marker = SHX5_2
    SHX6_2[SHX0_2] = SHX7_2
  end
end
SHX51_1 = _ENV
SHX52_1 = "AddEventHandler"
SHX51_1 = SHX51_1[SHX52_1]
SHX52_1 = "CMG:onClientSpawn"
function SHX53_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX23_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX7_2[3]
      if SHX8_2 then
        SHX8_2 = type
        SHX9_2 = SHX7_2[3]
        SHX8_2 = SHX8_2(SHX9_2)
        if "table" ~= SHX8_2 then
          SHX8_2 = CMG
          SHX8_2 = SHX8_2.hasClientPermission
          SHX9_2 = SHX7_2[3]
          SHX8_2 = SHX8_2(SHX9_2)
          if not SHX8_2 then
            goto SHX_LABEL_25
          end
        end
      end
      SHX8_2 = SHX50_1
      SHX9_2 = SHX6_2
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
      ::SHX_LABEL_25::
    end
  end
end
SHX51_1(SHX52_1, SHX53_1)
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = pairs
  SHX1_2 = SHX23_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2[3]
    SHX7_2 = type
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if "string" == SHX7_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.hasClientPermission
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = SHX50_1
        SHX8_2 = SHX4_2
        SHX9_2 = SHX5_2
        SHX7_2(SHX8_2, SHX9_2)
      else
        SHX7_2 = SHX47_1
        SHX7_2 = SHX7_2[SHX4_2]
        if SHX7_2 then
          SHX7_2 = SHX49_1
          SHX8_2 = SHX4_2
          SHX9_2 = SHX5_2
          SHX7_2(SHX8_2, SHX9_2)
        end
      end
    end
  end
end
SHX52_1 = _ENV
SHX53_1 = "AddEventHandler"
SHX52_1 = SHX52_1[SHX53_1]
SHX53_1 = "b51e08118b"
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX51_1
  SHX0_2()
end
SHX52_1(SHX53_1, SHX54_1)
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "aa.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getModelGender
    SHX1_2 = SHX1_2()
    if "male" == SHX1_2 and ("Shirts /Jackets" == SHX0_2 or "Arms / Torso" == SHX0_2 or "Legs" == SHX0_2 or "Undershirt" == SHX0_2) then
      SHX1_2 = false
      return SHX1_2
    end
  end
  if "Bags" ~= SHX0_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getCurrentBackpack
  SHX1_2 = SHX1_2()
  SHX1_2 = nil == SHX1_2
  return SHX1_2
end
SHX53_1 = 0
SHX54_1 = 0
SHX55_1 = 0
function SHX56_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  if "drawable" == SHX0_2 then
    if 2 == SHX1_2 then
      SHX3_2 = 0
    end
    SHX5_2 = SetPedComponentVariation
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = SHX2_2 - 1
    SHX9_2 = SHX3_2
    SHX10_2 = 0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    if 2 == SHX1_2 then
      SHX5_2 = TriggerServerEvent
      SHX6_2 = "236aec7dad"
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getModelGender
      SHX7_2 = SHX7_2()
      SHX8_2 = GetPedDrawableVariation
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.getPlayerPed
      SHX9_2 = SHX9_2()
      SHX10_2 = 2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = GetPedHairColor
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.getPlayerPed
      SHX10_2 = SHX10_2()
      SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  elseif "prop" == SHX0_2 then
    SHX5_2 = SHX2_2 - 1
    if 0 == SHX5_2 then
      SHX5_2 = GetPedPropIndex
      SHX6_2 = SHX4_2
      SHX7_2 = SHX1_2
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      if 0 == SHX5_2 then
        SHX5_2 = ClearPedProp
        SHX6_2 = SHX4_2
        SHX7_2 = SHX2_2 - 1
        SHX5_2(SHX6_2, SHX7_2)
      end
    else
      SHX5_2 = SetPedPropIndex
      SHX6_2 = SHX4_2
      SHX7_2 = SHX1_2
      SHX8_2 = SHX2_2 - 1
      SHX9_2 = SHX3_2
      SHX10_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
end
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = SHX31_1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = IsDisabledControlJustPressed
    SHX1_2 = 0
    SHX2_2 = SHX31_1
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 2
      SHX2_2 = SHX31_1
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 2
        SHX2_2 = SHX31_1
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      end
    end
  end
  return SHX0_2
end
function SHX58_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = SHX1_2.type
  if "prop" == SHX2_2 then
    SHX2_2 = ClearPedProp
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2.index
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SHX1_2.index
    if 0 == SHX2_2 then
      SHX2_2 = IsPedWearingHelmet
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = RemovePedHelmet
        SHX3_2 = SHX0_2
        SHX4_2 = true
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
    return
  end
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = -1667301416 == SHX2_2
  SHX3_2 = SHX1_2.name
  if "Shirts / Jackets" == SHX3_2 then
    SHX3_2 = SetPedComponentVariation
    SHX4_2 = SHX0_2
    SHX5_2 = 3
    SHX6_2 = 15
    SHX7_2 = 0
    SHX8_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = SetPedComponentVariation
    SHX4_2 = SHX0_2
    SHX5_2 = 8
    SHX6_2 = 0
    SHX7_2 = 240
    SHX8_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    if SHX2_2 then
      SHX3_2 = SetPedComponentVariation
      SHX4_2 = SHX0_2
      SHX5_2 = 11
      SHX6_2 = 18
      SHX7_2 = 0
      SHX8_2 = 0
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    else
      SHX3_2 = SetPedComponentVariation
      SHX4_2 = SHX0_2
      SHX5_2 = 11
      SHX6_2 = 15
      SHX7_2 = 0
      SHX8_2 = 0
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
  else
    SHX3_2 = SHX1_2.name
    if "Arms / Torso" == SHX3_2 then
      SHX3_2 = SetPedComponentVariation
      SHX4_2 = SHX0_2
      SHX5_2 = 3
      SHX6_2 = 15
      SHX7_2 = 0
      SHX8_2 = 0
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    else
      SHX3_2 = SHX1_2.name
      if "Undershirt" == SHX3_2 then
        SHX3_2 = SetPedComponentVariation
        SHX4_2 = SHX0_2
        SHX5_2 = 8
        SHX6_2 = 15
        SHX7_2 = 0
        SHX8_2 = 0
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      else
        SHX3_2 = SHX1_2.name
        if "Legs" == SHX3_2 then
          SHX3_2 = SetPedComponentVariation
          SHX4_2 = SHX0_2
          SHX5_2 = 4
          SHX6_2 = 14
          SHX7_2 = 0
          SHX8_2 = 2
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        else
          SHX3_2 = SHX1_2.name
          if "Shoes" == SHX3_2 then
            SHX3_2 = SetPedComponentVariation
            SHX4_2 = SHX0_2
            SHX5_2 = 6
            if SHX2_2 then
              SHX6_2 = 35
              if SHX6_2 then
                goto SHX_LABEL_108
              end
            end
            SHX6_2 = 34
            -- [FIX IF ERROR] Move ::SHX_LABEL_108:: outside nested blocks until all 'goto SHX_LABEL_108' can see it
            ::SHX_LABEL_108::
            SHX7_2 = 0
            SHX8_2 = 2
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          else
            SHX3_2 = SHX1_2.name
            if "Accessories" == SHX3_2 then
              SHX3_2 = SetPedComponentVariation
              SHX4_2 = SHX0_2
              SHX5_2 = 7
              SHX6_2 = 0
              SHX7_2 = 0
              SHX8_2 = 0
              SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
            else
              SHX3_2 = SHX1_2.name
              if "Mask" == SHX3_2 then
                SHX3_2 = SetPedComponentVariation
                SHX4_2 = SHX0_2
                SHX5_2 = 1
                SHX6_2 = 0
                SHX7_2 = 0
                SHX8_2 = 1
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
              else
                SHX3_2 = SHX1_2.name
                if "Hair" == SHX3_2 then
                  SHX3_2 = SHX56_1
                  SHX4_2 = "drawable"
                  SHX5_2 = 2
                  SHX6_2 = 1
                  SHX7_2 = 0
                  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                else
                  SHX3_2 = SHX56_1
                  SHX4_2 = "drawable"
                  SHX5_2 = SHX1_2.index
                  SHX6_2 = 1
                  SHX7_2 = 0
                  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
function SHX59_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if not SHX2_2 then
    SHX3_2 = 0
    return SHX3_2
  end
  if "drawable" == SHX0_2 then
    if 2 == SHX1_2 then
      SHX3_2 = GetNumHairColors
      return SHX3_2()
    end
    SHX3_2 = GetNumberOfPedTextureVariations
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerPed
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2 - 1
    return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  else
    SHX3_2 = GetNumberOfPedPropTextureVariations
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerPed
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2 - 1
    return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
function SHX60_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = nil
  SHX5_2 = nil
  if SHX0_2 then
    SHX6_2 = SHX2_1
    SHX7_2 = GetPedCollectionNameFromProp
    SHX8_2 = SHX3_2
    SHX9_2 = SHX1_2
    SHX10_2 = SHX2_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX4_2 = SHX6_2
    SHX6_2 = GetPedCollectionLocalIndexFromProp
    SHX7_2 = SHX3_2
    SHX8_2 = SHX1_2
    SHX9_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = SHX6_2
  else
    SHX6_2 = SHX2_1
    SHX7_2 = GetPedCollectionNameFromDrawable
    SHX8_2 = SHX3_2
    SHX9_2 = SHX1_2
    SHX10_2 = SHX2_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX4_2 = SHX6_2
    SHX6_2 = GetPedCollectionLocalIndexFromDrawable
    SHX7_2 = SHX3_2
    SHX8_2 = SHX1_2
    SHX9_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = SHX6_2
  end
  SHX6_2 = type
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  if "string" ~= SHX6_2 then
    SHX4_2 = ""
  end
  SHX6_2 = SHX3_1
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX6_2
  if nil == SHX5_2 then
    SHX6_2 = nil
    SHX7_2 = nil
    return SHX6_2, SHX7_2
  end
  SHX6_2 = SHX4_2
  SHX7_2 = SHX5_2
  return SHX6_2, SHX7_2
end
function SHX61_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX4_2 = nil
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getModelGender
  SHX5_2 = SHX5_2()
  if "female" == SHX5_2 then
    SHX5_2 = "female_whitelists"
    if SHX5_2 then
      goto SHX_LABEL_11
    end
  end
  SHX5_2 = "male_whitelists"
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX6_2 = SHX7_1
  SHX6_2 = SHX6_2[SHX5_2]
  if SHX6_2 then
    SHX7_2 = SHX6_2[SHX0_2]
    if SHX7_2 then
      SHX8_2 = SHX60_1
      SHX9_2 = SHX1_2
      SHX10_2 = SHX2_2
      SHX11_2 = SHX3_2
      SHX8_2, SHX9_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      if SHX8_2 and SHX9_2 then
        SHX10_2 = SHX7_2[SHX8_2]
        if SHX10_2 then
          SHX11_2 = SHX10_2[SHX9_2]
          SHX4_2 = SHX11_2 or SHX4_2
          if not SHX11_2 then
            SHX11_2 = tostring
            SHX12_2 = SHX9_2
            SHX11_2 = SHX11_2(SHX12_2)
            SHX4_2 = SHX10_2[SHX11_2]
          end
        end
      end
    end
  end
  SHX7_2 = SHX60_1
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  if not SHX7_2 or not SHX8_2 then
    return SHX4_2
  end
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getCustomClothingSlotForComponent
  SHX10_2 = SHX2_2
  SHX11_2 = SHX1_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  if not SHX9_2 then
    return SHX4_2
  end
  SHX10_2 = SHX14_1
  if "customclothing" == SHX10_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.getAccessibleClothingTextureSet
    SHX11_2 = SHX7_2
    SHX12_2 = SHX8_2
    SHX13_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX11_2 = next
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2)
    if nil == SHX11_2 then
      SHX11_2 = SHX59_1
      if SHX1_2 then
        SHX12_2 = "prop"
        if SHX12_2 then
          goto SHX_LABEL_76
        end
      end
      SHX12_2 = "drawable"
      -- [FIX IF ERROR] Move ::SHX_LABEL_76:: outside nested blocks until all 'goto SHX_LABEL_76' can see it
      ::SHX_LABEL_76::
      SHX13_2 = SHX2_2
      SHX14_2 = SHX3_2 + 1
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      SHX12_2 = {}
      SHX13_2 = 0
      SHX14_2 = math
      SHX14_2 = SHX14_2.max
      SHX15_2 = SHX11_2 - 1
      SHX16_2 = 0
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
      SHX15_2 = 1
      for SHX16_2 = SHX13_2, SHX14_2, SHX15_2 do
        SHX12_2[SHX16_2] = true
      end
      return SHX12_2
    end
    SHX11_2 = SHX59_1
    if SHX1_2 then
      SHX12_2 = "prop"
      if SHX12_2 then
        goto SHX_LABEL_101
      end
    end
    SHX12_2 = "drawable"
    -- [FIX IF ERROR] Move ::SHX_LABEL_101:: outside nested blocks until all 'goto SHX_LABEL_101' can see it
    ::SHX_LABEL_101::
    SHX13_2 = SHX2_2
    SHX14_2 = SHX3_2 + 1
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX12_2 = {}
    SHX13_2 = 0
    SHX14_2 = math
    SHX14_2 = SHX14_2.max
    SHX15_2 = SHX11_2 - 1
    SHX16_2 = 0
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
    SHX15_2 = 1
    for SHX16_2 = SHX13_2, SHX14_2, SHX15_2 do
      SHX17_2 = SHX10_2[SHX16_2]
      if not SHX17_2 then
        SHX12_2[SHX16_2] = true
      end
    end
    return SHX12_2
  end
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.getLockedClothingTextureSet
  SHX11_2 = SHX7_2
  SHX12_2 = SHX8_2
  SHX13_2 = SHX9_2
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX11_2 = next
  SHX12_2 = SHX10_2
  SHX11_2 = SHX11_2(SHX12_2)
  if nil == SHX11_2 then
    return SHX4_2
  end
  SHX11_2 = {}
  if SHX4_2 then
    SHX12_2 = pairs
    SHX13_2 = SHX4_2
    SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
    for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
      SHX11_2[SHX16_2] = SHX17_2
    end
  end
  SHX12_2 = pairs
  SHX13_2 = SHX10_2
  SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
  for SHX16_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
    SHX11_2[SHX16_2] = true
  end
  return SHX11_2
end
function SHX62_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = "drawable" == SHX0_2 and 2 == SHX1_2
  return SHX2_2
end
function SHX63_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX4_2 = SHX59_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  if SHX4_2 <= 0 then
    SHX5_2 = 0
    return SHX5_2
  end
  SHX5_2 = SHX62_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if SHX5_2 then
    return SHX4_2
  end
  SHX5_2 = SHX61_1
  SHX6_2 = SHX3_2
  SHX7_2 = "prop" == SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2 - 1
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  if not SHX5_2 then
    return SHX4_2
  end
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = SHX4_2 - 1
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = SHX5_2[SHX10_2]
    if not SHX11_2 then
      SHX6_2 = SHX6_2 + 1
    end
  end
  return SHX6_2
end
function SHX64_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX4_2 = SHX59_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  if SHX4_2 <= 0 then
    SHX5_2 = 0
    return SHX5_2
  end
  SHX5_2 = SHX62_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if SHX5_2 then
    SHX5_2 = 0
    return SHX5_2
  end
  SHX5_2 = SHX61_1
  SHX6_2 = SHX3_2
  SHX7_2 = "prop" == SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2 - 1
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  if not SHX5_2 then
    SHX6_2 = 0
    return SHX6_2
  end
  SHX6_2 = 0
  SHX7_2 = SHX4_2 - 1
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = SHX5_2[SHX9_2]
    if not SHX10_2 then
      return SHX9_2
    end
  end
  SHX6_2 = 0
  return SHX6_2
end
function SHX65_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX5_2 = SHX59_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  if SHX5_2 <= 0 then
    SHX6_2 = 0
    return SHX6_2
  end
  if SHX4_2 < 0 then
    SHX4_2 = 0
  end
  SHX4_2 = SHX4_2 % SHX5_2
  SHX6_2 = SHX62_1
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    return SHX4_2
  end
  SHX6_2 = SHX61_1
  SHX7_2 = SHX3_2
  SHX8_2 = "prop" == SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2 - 1
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  if not SHX6_2 then
    return SHX4_2
  end
  SHX7_2 = SHX6_2[SHX4_2]
  if not SHX7_2 then
    return SHX4_2
  end
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2 - 1
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = SHX6_2[SHX10_2]
    if not SHX11_2 then
      return SHX10_2
    end
  end
  SHX7_2 = 0
  SHX8_2 = SHX4_2 - 1
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = SHX6_2[SHX10_2]
    if not SHX11_2 then
      return SHX10_2
    end
  end
  SHX7_2 = 0
  return SHX7_2
end
function SHX66_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX6_2 = SHX59_1
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  if SHX6_2 <= 0 then
    SHX7_2 = 0
    return SHX7_2
  end
  SHX7_2 = SHX62_1
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  if SHX7_2 then
    SHX7_2 = SHX4_2 + SHX5_2
    SHX7_2 = SHX7_2 % SHX6_2
    return SHX7_2
  end
  SHX7_2 = SHX61_1
  SHX8_2 = SHX3_2
  SHX9_2 = "prop" == SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2 - 1
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  if not SHX7_2 then
    SHX8_2 = SHX4_2 + SHX5_2
    SHX8_2 = SHX8_2 % SHX6_2
    return SHX8_2
  end
  SHX8_2 = SHX4_2
  SHX9_2 = 1
  SHX10_2 = SHX6_2 + 2
  SHX11_2 = 1
  for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
    SHX8_2 = SHX8_2 + SHX5_2
    while SHX8_2 < 0 do
      SHX8_2 = SHX8_2 + SHX6_2
    end
    SHX8_2 = SHX8_2 % SHX6_2
    SHX13_2 = SHX7_2[SHX8_2]
    if not SHX13_2 then
      return SHX8_2
    end
  end
  SHX9_2 = SHX64_1
  SHX10_2 = SHX0_2
  SHX11_2 = SHX1_2
  SHX12_2 = SHX2_2
  SHX13_2 = SHX3_2
  return SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
function SHX67_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX5_2 = SHX59_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  if SHX5_2 <= 0 then
    SHX6_2 = 0
    SHX7_2 = 0
    return SHX6_2, SHX7_2
  end
  SHX6_2 = SHX62_1
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = SHX4_2 + 1
    SHX7_2 = SHX5_2
    return SHX6_2, SHX7_2
  end
  SHX6_2 = SHX61_1
  SHX7_2 = SHX3_2
  SHX8_2 = "prop" == SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2 - 1
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX63_1
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  if not SHX6_2 then
    SHX8_2 = SHX4_2 + 1
    SHX9_2 = SHX5_2
    return SHX8_2, SHX9_2
  end
  SHX8_2 = 0
  SHX9_2 = 0
  SHX10_2 = SHX5_2 - 1
  SHX11_2 = 1
  for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
    SHX13_2 = SHX6_2[SHX12_2]
    if not SHX13_2 then
      SHX8_2 = SHX8_2 + 1
      if SHX12_2 == SHX4_2 then
        SHX13_2 = SHX8_2
        SHX14_2 = SHX7_2
        return SHX13_2, SHX14_2
      end
    end
  end
  SHX9_2 = 1
  SHX10_2 = SHX7_2
  return SHX9_2, SHX10_2
end
function SHX68_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX4_2 = SHX59_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  if not (SHX4_2 <= 0) then
    SHX5_2 = SHX62_1
    SHX6_2 = SHX0_2
    SHX7_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if not SHX5_2 then
      goto SHX_LABEL_16
    end
  end
  SHX5_2 = nil
  return SHX5_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX5_2 = SHX61_1
  SHX6_2 = SHX3_2
  SHX7_2 = "prop" == SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2 - 1
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  if not SHX5_2 then
    SHX6_2 = nil
    return SHX6_2
  end
  SHX6_2 = {}
  SHX7_2 = 0
  SHX8_2 = SHX4_2 - 1
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = SHX5_2[SHX10_2]
    if not SHX11_2 then
      SHX11_2 = #SHX6_2
      SHX11_2 = SHX11_2 + 1
      SHX12_2 = tostring
      SHX13_2 = SHX10_2
      SHX12_2 = SHX12_2(SHX13_2)
      SHX6_2[SHX11_2] = SHX12_2
    end
  end
  SHX7_2 = #SHX6_2
  if 0 ~= SHX7_2 then
    SHX7_2 = #SHX6_2
    if SHX7_2 ~= SHX4_2 then
      goto SHX_LABEL_56
    end
  end
  SHX7_2 = nil
  return SHX7_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
  ::SHX_LABEL_56::
  SHX7_2 = table
  SHX7_2 = SHX7_2.concat
  SHX8_2 = SHX6_2
  SHX9_2 = ", "
  return SHX7_2(SHX8_2, SHX9_2)
end
SHX69_1 = _ENV
SHX70_1 = "RegisterNetEvent"
SHX69_1 = SHX69_1[SHX70_1]
SHX70_1 = "c8c4d7de17"
function SHX71_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX16_1 = SHX0_2
  SHX1_2 = SHX51_1
  SHX1_2()
  SHX1_2 = true
  SHX12_1 = SHX1_2
  SHX1_2 = {}
  SHX13_1 = SHX1_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.IsAnyMenuOfTypeVisible
  SHX2_2 = "CMGclothing"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 1
    SHX2_2 = SHX11_1
    SHX2_2 = #SHX2_2
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SHX46_1
      SHX6_2 = SHX11_1
      SHX6_2 = SHX6_2[SHX4_2]
      SHX6_2 = SHX6_2.type
      SHX7_2 = SHX11_1
      SHX7_2 = SHX7_2[SHX4_2]
      SHX7_2 = SHX7_2.index
      SHX8_2 = SHX11_1
      SHX8_2 = SHX8_2[SHX4_2]
      SHX8_2 = SHX8_2.name
      SHX9_2 = SHX14_1
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX9_2 = SHX11_1
      SHX9_2 = SHX9_2[SHX4_2]
      SHX10_2 = SHX41_1
      SHX11_2 = SHX11_1
      SHX11_2 = SHX11_2[SHX4_2]
      SHX12_2 = SHX7_2
      SHX13_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX9_2.currentListIndex = SHX10_2
      SHX9_2 = SHX11_1
      SHX9_2 = SHX9_2[SHX4_2]
      SHX10_2 = SHX40_1
      SHX11_2 = SHX11_1
      SHX11_2 = SHX11_2[SHX4_2]
      SHX11_2 = SHX11_2.type
      SHX12_2 = SHX11_1
      SHX12_2 = SHX12_2[SHX4_2]
      SHX12_2 = SHX12_2.index
      SHX13_2 = true
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX9_2.textureN = SHX10_2
      SHX9_2 = SHX11_1
      SHX9_2 = SHX9_2[SHX4_2]
      SHX9_2 = SHX9_2.textureN
      if -1 == SHX9_2 then
        SHX9_2 = SHX11_1
        SHX9_2 = SHX9_2[SHX4_2]
        SHX9_2.textureN = 0
      end
      SHX9_2 = SHX40_1
      SHX10_2 = SHX11_1
      SHX10_2 = SHX10_2[SHX4_2]
      SHX10_2 = SHX10_2.type
      SHX11_2 = SHX11_1
      SHX11_2 = SHX11_2[SHX4_2]
      SHX11_2 = SHX11_2.index
      SHX12_2 = false
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX10_2 = SHX11_1
      SHX10_2 = SHX10_2[SHX4_2]
      SHX11_2 = SHX65_1
      SHX12_2 = SHX11_1
      SHX12_2 = SHX12_2[SHX4_2]
      SHX12_2 = SHX12_2.type
      SHX13_2 = SHX11_1
      SHX13_2 = SHX13_2[SHX4_2]
      SHX13_2 = SHX13_2.index
      SHX14_2 = SHX9_2
      SHX15_2 = SHX11_1
      SHX15_2 = SHX15_2[SHX4_2]
      SHX15_2 = SHX15_2.name
      SHX16_2 = SHX11_1
      SHX16_2 = SHX16_2[SHX4_2]
      SHX16_2 = SHX16_2.textureN
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX10_2.textureN = SHX11_2
    end
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "CMGclothing"
    SHX5_2 = "mainMenu"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX69_1(SHX70_1, SHX71_1)
SHX69_1 = _ENV
SHX70_1 = "AddEventHandler"
SHX69_1 = SHX69_1[SHX70_1]
SHX70_1 = "d580dacaa7"
function SHX71_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX12_1 = SHX0_2
  SHX0_2 = {}
  SHX13_1 = SHX0_2
end
SHX69_1(SHX70_1, SHX71_1)
SHX69_1 = _ENV
SHX70_1 = "RageUI"
SHX69_1 = SHX69_1[SHX70_1]
SHX70_1 = "CreateWhile"
SHX69_1 = SHX69_1[SHX70_1]
SHX70_1 = 1.0
SHX71_1 = _ENV
SHX72_1 = "RMenu"
SHX71_1 = SHX71_1[SHX72_1]
SHX73_1 = "Get"
SHX72_1 = SHX71_1
SHX71_1 = SHX71_1[SHX73_1]
SHX73_1 = "CMGclothing"
SHX74_1 = "mainMenu"
SHX71_1 = SHX71_1(SHX72_1, SHX73_1, SHX74_1)
SHX72_1 = nil
function SHX73_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX21_1
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsVisible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "CMGclothing"
    SHX4_2 = "mainMenu"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX3_2 = false
    SHX4_2 = true
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
      SHX0_3 = ipairs
      SHX1_3 = SHX15_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = SHX17_1
        SHX7_3 = SHX5_3.id
        SHX6_3 = SHX6_3(SHX7_3)
        if SHX6_3 then
          SHX6_3 = CMG
          SHX6_3 = SHX6_3.hasClientPermission
          SHX7_3 = "paramedic.permission"
          SHX6_3 = SHX6_3(SHX7_3)
          if SHX6_3 then
            SHX6_3 = SHX5_3.id
            if "nhs" ~= SHX6_3 then
              goto SHX_LABEL_31
            end
          end
          SHX6_3 = RageUI
          SHX6_3 = SHX6_3.Button
          SHX7_3 = SHX5_3.label
          SHX8_3 = nil
          SHX9_3 = true
          function SHX10_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4
            if SHX2_4 then
              SHX3_4 = SHX5_3.id
              SHX14_1 = SHX3_4
              SHX3_4 = nil
              SHX30_1 = SHX3_4
              SHX3_4 = true
              SHX12_1 = SHX3_4
              SHX3_4 = SHX35_1
              SHX3_4()
            end
          end
          SHX11_3 = RMenu
          SHX12_3 = SHX11_3
          SHX11_3 = SHX11_3.Get
          SHX13_3 = "CMGclothing"
          SHX14_3 = "changeClothing"
          SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3)
          SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
        ::SHX_LABEL_31::
      end
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~y~More Options~w~"
      SHX0_3(SHX1_3)
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.inOrganHesit
      SHX0_3 = SHX0_3()
      if not SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Change Gender"
        SHX2_3 = nil
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
        end
        SHX5_3 = RMenu
        SHX6_3 = SHX5_3
        SHX5_3 = SHX5_3.Get
        SHX7_3 = "CMGclothing"
        SHX8_3 = "changePed"
        SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.hasClientPermission
      SHX1_3 = "paramedic.permission"
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "~y~Wardrobe"
        SHX2_3 = nil
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
          if SHX2_4 then
            SHX3_4 = CMG
            SHX3_4 = SHX3_4.isPlusClub
            SHX3_4 = SHX3_4()
            if not SHX3_4 then
              SHX3_4 = CMG
              SHX3_4 = SHX3_4.isPlatClub
              SHX3_4 = SHX3_4()
              if not SHX3_4 then
                goto SHX_LABEL_26
              end
            end
            SHX3_4 = RageUI
            SHX3_4 = SHX3_4.Visible
            SHX4_4 = RMenu
            SHX5_4 = SHX4_4
            SHX4_4 = SHX4_4.Get
            SHX6_4 = "CMGclothing"
            SHX7_4 = "mainMenu"
            SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX5_4 = false
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = TriggerEvent
            SHX4_4 = "1fa1fff768"
            SHX3_4(SHX4_4)
            goto SHX_LABEL_34
            -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
            ::SHX_LABEL_26::
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~y~You need to be a subscriber of CMG Plus or CMG Platinum to use this feature."
            SHX3_4(SHX4_4)
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~y~Available @ store.cmgstudios.net"
            SHX3_4(SHX4_4)
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
          ::SHX_LABEL_34::
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Apply Outfit Code"
        SHX2_3 = "Applys an outfit code given by a player with ~y~CMG Plus~w~ or ~y~CMG Platinum~w~."
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4
          if SHX2_4 then
            SHX3_4 = CMG
            SHX3_4 = SHX3_4.clientPrompt
            SHX4_4 = "Outfit Code:"
            SHX5_4 = ""
            function SHX6_4(SHX0_5)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5
              SHX1_5 = string
              SHX1_5 = SHX1_5.gsub
              SHX2_5 = SHX0_5
              SHX3_5 = "%s+"
              SHX4_5 = ""
              SHX1_5 = SHX1_5(SHX2_5, SHX3_5, SHX4_5)
              SHX2_5 = #SHX1_5
              if 5 == SHX2_5 then
                SHX2_5 = TriggerServerEvent
                SHX3_5 = "a5402aab30"
                SHX4_5 = string
                SHX4_5 = SHX4_5.upper
                SHX5_5 = SHX1_5
                SHX4_5, SHX5_5 = SHX4_5(SHX5_5)
                SHX2_5(SHX3_5, SHX4_5, SHX5_5)
              else
                SHX2_5 = notify
                SHX3_5 = "~r~Outfit code is not in a valid format."
                SHX2_5(SHX3_5)
              end
            end
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          end
        end
        SHX5_3 = nil
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isInGang
      SHX0_3 = SHX0_3()
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.isMainGangAdvanced
        SHX0_3 = SHX0_3()
        if SHX0_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Apply Gang Outfit"
          SHX2_3 = "Applies the gang outfit set by the leader."
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4
            if SHX2_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "98b604d886"
              SHX3_4(SHX4_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.hasGangPermission
          SHX1_3 = "leader"
          SHX0_3 = SHX0_3(SHX1_3)
          if SHX0_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Set Gang Outfit"
            SHX2_3 = "Sets the outfit of your gang. This can be changed once a day."
            SHX3_3 = true
            function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4
              if SHX2_4 then
                SHX3_4 = TriggerServerEvent
                SHX4_4 = "b9d98986e1"
                SHX3_4(SHX4_4)
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
        end
      end
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Remove Props"
      SHX2_3 = nil
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
      end
      SHX5_3 = RMenu
      SHX6_3 = SHX5_3
      SHX5_3 = SHX5_3.Get
      SHX7_3 = "CMGclothing"
      SHX8_3 = "clearProps"
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
    end
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsVisible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "CMGclothing"
    SHX4_2 = "changePed"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX3_2 = false
    SHX4_2 = true
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "MP Male"
      SHX2_3 = "WARNING: Resets all your Body Options"
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = GetEntityHealth
          SHX4_4 = PlayerPedId
          SHX4_4 = SHX4_4()
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 > 102 then
            SHX3_4 = CMG
            SHX3_4 = SHX3_4.loadCustomisationPreset
            SHX4_4 = "DefaultMale"
            SHX3_4(SHX4_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Cannot change gender, you're dead."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "MP Female"
      SHX2_3 = "WARNING: Resets all your Body Options"
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = GetEntityHealth
          SHX4_4 = PlayerPedId
          SHX4_4 = SHX4_4()
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 > 102 then
            SHX3_4 = CMG
            SHX3_4 = SHX3_4.loadCustomisationPreset
            SHX4_4 = "DefaultFemale"
            SHX3_4(SHX4_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Cannot change gender, you're dead."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "~r~Clear All Appearance"
      SHX2_3 = "This will reset both your male and female character back to default. Including removing all face appearance, hair, clothing and accessories."
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "862cc1a614"
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsVisible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "CMGclothing"
    SHX4_2 = "changeClothing"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX3_2 = false
    SHX4_2 = false
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      SHX1_3 = true
      SHX20_1 = SHX1_3
      SHX1_3 = SHX12_1
      if SHX1_3 then
        SHX2_3 = SHX14_1
        SHX1_3 = SHX13_1
        SHX3_3 = {}
        SHX1_3[SHX2_3] = SHX3_3
        SHX2_3 = SHX14_1
        SHX1_3 = SHX13_1
        SHX1_3 = SHX1_3[SHX2_3]
        SHX2_3 = 1
        SHX3_3 = SHX11_1
        SHX3_3 = #SHX3_3
        SHX4_3 = 1
        for SHX5_3 = SHX2_3, SHX3_3, SHX4_3 do
          SHX6_3 = SHX11_1
          SHX6_3 = SHX6_3[SHX5_3]
          SHX18_1 = SHX6_3
          SHX7_3 = SHX40_1
          SHX8_3 = SHX6_3.type
          SHX9_3 = SHX6_3.index
          SHX10_3 = true
          SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
          SHX18_1.textureN = SHX7_3
          SHX7_3 = SHX18_1.textureN
          if -1 == SHX7_3 then
            SHX18_1.textureN = 0
          end
          SHX7_3 = SHX40_1
          SHX8_3 = SHX6_3.type
          SHX9_3 = SHX6_3.index
          SHX10_3 = false
          SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
          SHX8_3 = SHX65_1
          SHX9_3 = SHX6_3.type
          SHX10_3 = SHX6_3.index
          SHX11_3 = SHX7_3
          SHX12_3 = SHX6_3.name
          SHX13_3 = SHX18_1.textureN
          SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
          SHX18_1.textureN = SHX8_3
          SHX8_3 = SHX46_1
          SHX9_3 = SHX6_3.type
          SHX10_3 = SHX6_3.index
          SHX11_3 = SHX6_3.name
          SHX12_3 = SHX14_1
          SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          SHX12_3 = table
          SHX12_3 = SHX12_3.count
          SHX13_3 = SHX8_3
          SHX12_3 = SHX12_3(SHX13_3)
          if SHX12_3 > 0 then
            SHX12_3 = {}
            SHX12_3.fakeList = SHX8_3
            SHX12_3.fakeIndexToRealIndex = SHX9_3
            SHX12_3.realIndexToFakeIndex = SHX10_3
            SHX12_3.offFakeListIndex = SHX11_3
            SHX1_3[SHX5_3] = SHX12_3
            SHX12_3 = SHX11_1
            SHX12_3 = SHX12_3[SHX5_3]
            SHX13_3 = SHX41_1
            SHX14_3 = SHX6_3
            SHX15_3 = SHX10_3
            SHX16_3 = SHX11_3
            SHX13_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
            SHX12_3.currentListIndex = SHX13_3
          else
            SHX1_3[SHX5_3] = nil
          end
        end
        SHX2_3 = false
        SHX12_1 = SHX2_3
      end
      SHX2_3 = SHX14_1
      SHX1_3 = SHX13_1
      SHX1_3 = SHX1_3[SHX2_3]
      if not SHX1_3 then
        SHX2_3 = {}
        SHX1_3 = SHX2_3
      end
      SHX2_3 = 1
      SHX3_3 = SHX11_1
      SHX3_3 = #SHX3_3
      SHX4_3 = 1
      for SHX5_3 = SHX2_3, SHX3_3, SHX4_3 do
        SHX6_3 = SHX11_1
        SHX6_3 = SHX6_3[SHX5_3]
        SHX7_3 = SHX1_3[SHX5_3]
        if SHX7_3 then
          SHX8_3 = SHX52_1
          SHX9_3 = SHX6_3.name
          SHX8_3 = SHX8_3(SHX9_3)
          SHX9_3 = SHX7_3.fakeList
          SHX10_3 = SHX7_3.fakeIndexToRealIndex
          SHX11_3 = SHX7_3.realIndexToFakeIndex
          SHX12_3 = SHX7_3.offFakeListIndex
          SHX13_3 = SHX6_3.currentListIndex
          SHX13_3 = SHX10_3[SHX13_3]
          SHX14_3 = type
          SHX15_3 = SHX13_3
          SHX14_3 = SHX14_3(SHX15_3)
          SHX14_3 = SHX13_3 or SHX14_3
          if not ("number" == SHX14_3 and SHX13_3 > 0) or not SHX13_3 then
            SHX14_3 = nil
          end
          SHX15_3 = 0
          SHX16_3 = 0
          SHX17_3 = 0
          SHX18_3 = nil
          if SHX14_3 then
            SHX19_3 = SHX59_1
            SHX20_3 = SHX6_3.type
            SHX21_3 = SHX6_3.index
            SHX22_3 = SHX14_3
            SHX19_3 = SHX19_3(SHX20_3, SHX21_3, SHX22_3)
            SHX15_3 = SHX19_3
            if SHX15_3 > 0 then
              SHX19_3 = SHX15_3 - 1
              if SHX19_3 then
                goto SHX_LABEL_135
                SHX16_3 = SHX19_3 or SHX16_3
              end
            end
            SHX16_3 = 0
            -- [FIX IF ERROR] Move ::SHX_LABEL_135:: outside nested blocks until all 'goto SHX_LABEL_135' can see it
            ::SHX_LABEL_135::
            SHX19_3 = SHX63_1
            SHX20_3 = SHX6_3.type
            SHX21_3 = SHX6_3.index
            SHX22_3 = SHX14_3
            SHX23_3 = SHX6_3.name
            SHX19_3 = SHX19_3(SHX20_3, SHX21_3, SHX22_3, SHX23_3)
            SHX17_3 = SHX19_3
            if SHX15_3 > SHX17_3 and SHX17_3 > 0 then
              SHX19_3 = SHX67_1
              SHX20_3 = SHX6_3.type
              SHX21_3 = SHX6_3.index
              SHX22_3 = SHX14_3
              SHX23_3 = SHX6_3.name
              SHX24_3 = SHX6_3.textureN
              SHX19_3, SHX20_3 = SHX19_3(SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3)
              SHX21_3 = "Current Texture Index: "
              SHX22_3 = tostring
              SHX23_3 = SHX19_3
              SHX22_3 = SHX22_3(SHX23_3)
              SHX23_3 = "/"
              SHX24_3 = tostring
              SHX25_3 = SHX20_3
              SHX24_3 = SHX24_3(SHX25_3)
              SHX21_3 = SHX21_3 .. SHX22_3 .. SHX23_3 .. SHX24_3
              SHX18_3 = SHX21_3
            else
              SHX19_3 = "Current Texture Index: "
              SHX20_3 = SHX6_3.textureN
              SHX21_3 = "/"
              SHX22_3 = SHX16_3
              SHX19_3 = SHX19_3 .. SHX20_3 .. SHX21_3 .. SHX22_3
              SHX18_3 = SHX19_3
            end
          else
            SHX18_3 = "Current Texture Index: --"
          end
          SHX19_3 = CMG
          SHX19_3 = SHX19_3.isDebuggingClothing
          SHX19_3 = SHX19_3()
          if SHX19_3 and SHX14_3 then
            SHX19_3 = SHX14_3 - 1
            SHX20_3 = nil
            SHX21_3 = nil
            SHX22_3 = SHX6_3.type
            if "prop" == SHX22_3 then
              SHX22_3 = GetPedCollectionNameFromProp
              SHX23_3 = SHX0_3
              SHX24_3 = SHX6_3.index
              SHX25_3 = SHX19_3
              SHX22_3 = SHX22_3(SHX23_3, SHX24_3, SHX25_3)
              SHX20_3 = SHX22_3
              SHX22_3 = GetPedCollectionLocalIndexFromProp
              SHX23_3 = SHX0_3
              SHX24_3 = SHX6_3.index
              SHX25_3 = SHX19_3
              SHX22_3 = SHX22_3(SHX23_3, SHX24_3, SHX25_3)
              SHX21_3 = SHX22_3
            else
              SHX22_3 = GetPedCollectionNameFromDrawable
              SHX23_3 = SHX0_3
              SHX24_3 = SHX6_3.index
              SHX25_3 = SHX19_3
              SHX22_3 = SHX22_3(SHX23_3, SHX24_3, SHX25_3)
              SHX20_3 = SHX22_3
              SHX22_3 = GetPedCollectionLocalIndexFromDrawable
              SHX23_3 = SHX0_3
              SHX24_3 = SHX6_3.index
              SHX25_3 = SHX19_3
              SHX22_3 = SHX22_3(SHX23_3, SHX24_3, SHX25_3)
              SHX21_3 = SHX22_3
            end
            SHX22_3 = type
            SHX23_3 = SHX20_3
            SHX22_3 = SHX22_3(SHX23_3)
            if "string" ~= SHX22_3 then
              SHX22_3 = tostring
              SHX23_3 = SHX20_3
              SHX22_3 = SHX22_3(SHX23_3)
              SHX20_3 = SHX22_3
            end
            SHX22_3 = SHX20_3 or SHX22_3
            if "" == SHX20_3 or not SHX20_3 then
              SHX22_3 = "empty"
            end
            SHX23_3 = SHX3_1
            SHX24_3 = SHX21_3
            SHX23_3 = SHX23_3(SHX24_3)
            if nil ~= SHX23_3 then
              SHX24_3 = tostring
              SHX25_3 = SHX23_3
              SHX24_3 = SHX24_3(SHX25_3)
              if SHX24_3 then
                goto SHX_LABEL_237
              end
            end
            SHX24_3 = tostring
            SHX25_3 = SHX21_3
            SHX24_3 = SHX24_3(SHX25_3)
            -- [FIX IF ERROR] Move ::SHX_LABEL_237:: outside nested blocks until all 'goto SHX_LABEL_237' can see it
            ::SHX_LABEL_237::
            SHX25_3 = SHX68_1
            SHX26_3 = SHX6_3.type
            SHX27_3 = SHX6_3.index
            SHX28_3 = SHX14_3
            SHX29_3 = SHX6_3.name
            SHX25_3 = SHX25_3(SHX26_3, SHX27_3, SHX28_3, SHX29_3)
            SHX26_3 = SHX18_3
            SHX27_3 = [[

Collection: ~c~]]
            SHX28_3 = SHX22_3
            SHX29_3 = "~s~"
            SHX30_3 = [[

Local index: ~y~]]
            SHX31_3 = SHX24_3
            SHX32_3 = "~s~"
            SHX33_3 = [[

Texture index (native): ~y~]]
            SHX34_3 = tostring
            SHX35_3 = SHX6_3.textureN
            SHX34_3 = SHX34_3(SHX35_3)
            SHX35_3 = "~s~"
            SHX26_3 = SHX26_3 .. SHX27_3 .. SHX28_3 .. SHX29_3 .. SHX30_3 .. SHX31_3 .. SHX32_3 .. SHX33_3 .. SHX34_3 .. SHX35_3
            SHX18_3 = SHX26_3
            if SHX25_3 then
              SHX26_3 = SHX18_3
              SHX27_3 = [[

Visible native texture indices: ~y~]]
              SHX28_3 = SHX25_3
              SHX29_3 = "~s~"
              SHX26_3 = SHX26_3 .. SHX27_3 .. SHX28_3 .. SHX29_3
              SHX18_3 = SHX26_3
            end
          end
          SHX18_1 = SHX6_3
          SHX19_3 = RageUI
          SHX19_3 = SHX19_3.List
          SHX20_3 = SHX6_3.name
          SHX21_3 = SHX9_3
          SHX22_3 = SHX11_1
          SHX22_3 = SHX22_3[SHX5_3]
          SHX22_3 = SHX22_3.currentListIndex
          SHX23_3 = SHX18_3
          SHX24_3 = {}
          SHX25_3 = SHX8_3
          function SHX26_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4
            if SHX1_4 then
              SHX4_4 = false
              SHX5_4 = SHX8_3
              if SHX5_4 then
                SHX5_4 = SHX21_1
                if not SHX5_4 then
                  SHX5_4 = SHX57_1
                  SHX5_4 = SHX5_4()
                  if SHX5_4 then
                    SHX5_4 = SHX58_1
                    SHX6_4 = SHX0_3
                    SHX7_4 = SHX6_3
                    SHX5_4(SHX6_4, SHX7_4)
                    SHX5_4 = true
                    SHX12_1 = SHX5_4
                    SHX5_4 = nil
                    SHX30_1 = SHX5_4
                    SHX4_4 = true
                  end
                end
              end
              SHX6_4 = SHX5_3
              SHX5_4 = SHX11_1
              SHX5_4 = SHX5_4[SHX6_4]
              SHX6_4 = SHX41_1
              SHX7_4 = SHX6_3
              SHX8_4 = SHX11_3
              SHX9_4 = SHX12_3
              SHX6_4 = SHX6_4(SHX7_4, SHX8_4, SHX9_4)
              SHX5_4.currentListIndex = SHX6_4
              if not SHX4_4 then
                SHX5_4 = IsControlJustPressed
                SHX6_4 = 0
                SHX7_4 = 172
                SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
                if not SHX5_4 then
                  SHX5_4 = IsControlJustPressed
                  SHX6_4 = 0
                  SHX7_4 = 241
                  SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
                  if not SHX5_4 then
                    SHX5_4 = IsControlJustPressed
                    SHX6_4 = 0
                    SHX7_4 = 173
                    SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
                    if not SHX5_4 then
                      SHX5_4 = IsControlJustPressed
                      SHX6_4 = 0
                      SHX7_4 = 242
                      SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
                      if not SHX5_4 then
                        goto SHX_LABEL_64
                      end
                    end
                  end
                end
                SHX5_4 = SHX6_3.index
                SHX6_4 = SHX18_1.index
                if SHX5_4 ~= SHX6_4 then
                  SHX5_4 = SHX6_3
                  SHX18_1 = SHX5_4
                end
                -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
                ::SHX_LABEL_64::
                SHX5_4 = SHX6_3.name
                SHX6_4 = SHX18_1.name
                if SHX5_4 ~= SHX6_4 then
                  goto SHX_LABEL_235
                end
                SHX5_4 = SHX30_1
                SHX5_4 = nil ~= SHX5_4
                SHX6_4 = SHX30_1
                SHX6_4 = nil == SHX6_4
                SHX7_4 = SHX19_1
                if SHX7_4 then
                  SHX7_4 = SHX22_1
                  if nil ~= SHX7_4 then
                    SHX7_4 = SHX22_1.id
                    if SHX7_4 then
                      SHX8_4 = SHX22_1.id
                      SHX7_4 = SHX10_3
                      SHX7_4 = SHX7_4[SHX8_4]
                      if SHX7_4 then
                        SHX3_4 = SHX22_1.id
                        SHX7_4 = SHX10_3
                        SHX7_4 = SHX7_4[SHX3_4]
                        SHX8_4 = type
                        SHX9_4 = SHX7_4
                        SHX8_4 = SHX8_4(SHX9_4)
                        if "number" == SHX8_4 and SHX7_4 > 0 then
                          SHX8_4 = SHX64_1
                          SHX9_4 = SHX18_1.type
                          SHX10_4 = SHX18_1.index
                          SHX11_4 = SHX7_4
                          SHX12_4 = SHX6_3.name
                          SHX8_4 = SHX8_4(SHX9_4, SHX10_4, SHX11_4, SHX12_4)
                          SHX18_1.textureN = SHX8_4
                        end
                        SHX8_4 = false
                        SHX19_1 = SHX8_4
                    end
                  end
                  else
                    SHX7_4 = false
                    SHX19_1 = SHX7_4
                  end
                else
                  SHX7_4 = SHX10_3
                  SHX7_4 = SHX7_4[SHX3_4]
                  SHX8_4 = type
                  SHX9_4 = SHX7_4
                  SHX8_4 = SHX8_4(SHX9_4)
                  if "number" == SHX8_4 and SHX7_4 > 0 then
                    SHX8_4 = SHX65_1
                    SHX9_4 = SHX18_1.type
                    SHX10_4 = SHX18_1.index
                    SHX11_4 = SHX7_4
                    SHX12_4 = SHX6_3.name
                    SHX13_4 = SHX18_1.textureN
                    SHX8_4 = SHX8_4(SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4)
                    SHX18_1.textureN = SHX8_4
                  end
                  if SHX5_4 or SHX6_4 then
                    SHX8_4 = SHX18_1.index
                    SHX53_1 = SHX8_4
                    SHX54_1 = SHX3_4
                    SHX8_4 = SHX18_1.textureN
                    SHX55_1 = SHX8_4
                  else
                    SHX8_4 = SHX54_1
                    if SHX8_4 == SHX3_4 then
                      SHX8_4 = SHX55_1
                      SHX9_4 = SHX18_1.textureN
                      if SHX8_4 == SHX9_4 then
                        goto SHX_LABEL_182
                      end
                    end
                    SHX8_4 = SHX18_1.index
                    SHX53_1 = SHX8_4
                    SHX54_1 = SHX3_4
                    SHX8_4 = SHX18_1.textureN
                    SHX55_1 = SHX8_4
                    if 0 == SHX7_4 then
                      SHX8_4 = SHX58_1
                      SHX9_4 = SHX0_3
                      SHX10_4 = SHX18_1
                      SHX8_4(SHX9_4, SHX10_4)
                      SHX8_4 = true
                      SHX12_1 = SHX8_4
                      SHX8_4 = nil
                      SHX30_1 = SHX8_4
                    else
                      SHX8_4 = type
                      SHX9_4 = SHX7_4
                      SHX8_4 = SHX8_4(SHX9_4)
                      if "number" == SHX8_4 and SHX7_4 > 0 then
                        SHX8_4 = SHX56_1
                        SHX9_4 = SHX18_1.type
                        SHX10_4 = SHX18_1.index
                        SHX11_4 = SHX7_4
                        SHX12_4 = SHX18_1.textureN
                        SHX8_4(SHX9_4, SHX10_4, SHX11_4, SHX12_4)
                      end
                    end
                  end
                end
                -- [FIX IF ERROR] Move ::SHX_LABEL_182:: outside nested blocks until all 'goto SHX_LABEL_182' can see it
                ::SHX_LABEL_182::
                SHX7_4 = SHX6_3.index
                SHX30_1 = SHX7_4
                SHX8_4 = SHX5_3
                SHX7_4 = SHX11_1
                SHX7_4 = SHX7_4[SHX8_4]
                SHX7_4.currentListIndex = SHX3_4
              else
                SHX5_4 = SHX6_3.name
                SHX6_4 = SHX18_1.name
                if SHX5_4 == SHX6_4 then
                  SHX6_4 = SHX5_3
                  SHX5_4 = SHX11_1
                  SHX5_4 = SHX5_4[SHX6_4]
                  SHX6_4 = SHX5_4.currentListIndex
                  SHX5_4 = SHX10_3
                  SHX5_4 = SHX5_4[SHX6_4]
                  SHX6_4 = SHX40_1
                  SHX7_4 = SHX6_3.type
                  SHX8_4 = SHX6_3.index
                  SHX9_4 = true
                  SHX6_4 = SHX6_4(SHX7_4, SHX8_4, SHX9_4)
                  SHX18_1.textureN = SHX6_4
                  SHX6_4 = SHX18_1.textureN
                  if -1 == SHX6_4 then
                    SHX18_1.textureN = 0
                  end
                  SHX6_4 = type
                  SHX7_4 = SHX5_4
                  SHX6_4 = SHX6_4(SHX7_4)
                  if "number" == SHX6_4 and SHX5_4 > 0 then
                    SHX6_4 = SHX65_1
                    SHX7_4 = SHX6_3.type
                    SHX8_4 = SHX6_3.index
                    SHX9_4 = SHX5_4
                    SHX10_4 = SHX6_3.name
                    SHX11_4 = SHX18_1.textureN
                    SHX6_4 = SHX6_4(SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
                    SHX18_1.textureN = SHX6_4
                  end
                  SHX6_4 = SHX18_1.index
                  SHX53_1 = SHX6_4
                  SHX7_4 = SHX5_3
                  SHX6_4 = SHX11_1
                  SHX6_4 = SHX6_4[SHX7_4]
                  SHX6_4 = SHX6_4.currentListIndex
                  SHX54_1 = SHX6_4
                  SHX6_4 = SHX18_1.textureN
                  SHX55_1 = SHX6_4
                  SHX6_4 = SHX6_3.index
                  SHX30_1 = SHX6_4
                end
              end
              -- [FIX IF ERROR] Move ::SHX_LABEL_235:: outside nested blocks until all 'goto SHX_LABEL_235' can see it
              ::SHX_LABEL_235::
              SHX5_4 = SHX32_1
              SHX5_4()
            end
            if SHX2_4 then
              SHX4_4 = SHX10_3
              SHX4_4 = SHX4_4[SHX3_4]
              SHX5_4 = type
              SHX6_4 = SHX4_4
              SHX5_4 = SHX5_4(SHX6_4)
              if "number" == SHX5_4 and SHX4_4 > 0 then
                SHX5_4 = SHX66_1
                SHX6_4 = SHX18_1.type
                SHX7_4 = SHX18_1.index
                SHX8_4 = SHX4_4
                SHX9_4 = SHX6_3.name
                SHX10_4 = SHX18_1.textureN
                SHX11_4 = 1
                SHX5_4 = SHX5_4(SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
                SHX18_1.textureN = SHX5_4
              end
              SHX5_4 = SHX18_1.index
              if 2 == SHX5_4 then
                SHX5_4 = SHX18_1.index
                SHX53_1 = SHX5_4
                SHX54_1 = SHX3_4
                SHX5_4 = SHX18_1.textureN
                SHX55_1 = SHX5_4
                SHX5_4 = SetPedHairColor
                SHX6_4 = PlayerPedId
                SHX6_4 = SHX6_4()
                SHX7_4 = SHX18_1.textureN
                SHX8_4 = SHX18_1.textureN
                SHX5_4(SHX6_4, SHX7_4, SHX8_4)
                SHX5_4 = TriggerServerEvent
                SHX6_4 = "236aec7dad"
                SHX7_4 = CMG
                SHX7_4 = SHX7_4.getModelGender
                SHX7_4 = SHX7_4()
                SHX8_4 = GetPedDrawableVariation
                SHX9_4 = CMG
                SHX9_4 = SHX9_4.getPlayerPed
                SHX9_4 = SHX9_4()
                SHX10_4 = 2
                SHX8_4 = SHX8_4(SHX9_4, SHX10_4)
                SHX9_4 = GetPedHairColor
                SHX10_4 = CMG
                SHX10_4 = SHX10_4.getPlayerPed
                SHX10_4, SHX11_4, SHX12_4, SHX13_4 = SHX10_4()
                SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4 = SHX9_4(SHX10_4, SHX11_4, SHX12_4, SHX13_4)
                SHX5_4(SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4)
              else
                SHX5_4 = SHX54_1
                if SHX5_4 == SHX3_4 then
                  SHX5_4 = SHX55_1
                  SHX6_4 = SHX18_1.textureN
                  if SHX5_4 == SHX6_4 then
                    goto SHX_LABEL_325
                  end
                end
                SHX5_4 = SHX18_1.index
                SHX53_1 = SHX5_4
                SHX54_1 = SHX3_4
                SHX5_4 = SHX18_1.textureN
                SHX55_1 = SHX5_4
                if 0 == SHX4_4 then
                  SHX5_4 = SHX58_1
                  SHX6_4 = SHX0_3
                  SHX7_4 = SHX18_1
                  SHX5_4(SHX6_4, SHX7_4)
                  SHX5_4 = true
                  SHX12_1 = SHX5_4
                  SHX5_4 = nil
                  SHX30_1 = SHX5_4
                else
                  SHX5_4 = type
                  SHX6_4 = SHX4_4
                  SHX5_4 = SHX5_4(SHX6_4)
                  if "number" == SHX5_4 and SHX4_4 > 0 then
                    SHX5_4 = SHX56_1
                    SHX6_4 = SHX18_1.type
                    SHX7_4 = SHX18_1.index
                    SHX8_4 = SHX4_4
                    SHX9_4 = SHX18_1.textureN
                    SHX5_4(SHX6_4, SHX7_4, SHX8_4, SHX9_4)
                  end
                end
              end
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_325:: outside nested blocks until all 'goto SHX_LABEL_325' can see it
            ::SHX_LABEL_325::
          end
          function SHX27_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4
          end
          SHX28_3 = nil
          SHX19_3(SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3)
        end
      end
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsVisible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "CMGclothing"
    SHX4_2 = "clearProps"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX3_2 = false
    SHX4_2 = true
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Remove Hat"
      SHX2_3 = nil
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = ClearPedProp
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = 0
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Remove Glasses"
      SHX2_3 = nil
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = ClearPedProp
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = 1
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Remove Ear Accessory"
      SHX2_3 = nil
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = ClearPedProp
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = 2
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Remove Watch"
      SHX2_3 = nil
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = ClearPedProp
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = 6
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Remove Bracelet"
      SHX2_3 = nil
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = ClearPedProp
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = 7
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
end
SHX69_1(SHX70_1, SHX71_1, SHX72_1, SHX73_1)
function SHX69_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.GetRageInputText
  SHX1_2 = "Enter clothing ID you want to wear"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = false
    SHX21_1 = SHX1_2
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if nil ~= SHX1_2 then
      SHX22_1.id = SHX1_2
    else
      SHX2_2 = SHX18_1.index
      SHX22_1.id = SHX2_2
    end
    SHX2_2 = true
    SHX19_1 = SHX2_2
    return SHX0_2
  end
  SHX1_2 = false
  SHX21_1 = SHX1_2
end
function SHX70_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = {}
  SHX1_2 = {}
  SHX1_2.label = "Enter Clothing ID "
  SHX1_2.button = "~INPUT_CELLPHONE_EXTRA_OPTION~"
  SHX2_2 = {}
  SHX2_2.label = "Change Texture "
  SHX2_2.button = "~INPUT_CELLPHONE_SELECT~"
  SHX3_2 = {}
  SHX3_2.label = "Next Index "
  SHX3_2.button = "~INPUT_CELLPHONE_RIGHT~"
  SHX4_2 = {}
  SHX4_2.label = "Previous Index "
  SHX4_2.button = "~INPUT_CELLPHONE_LEFT~"
  SHX5_2 = {}
  SHX5_2.label = "Rotate Camera"
  SHX5_2.button = "~INPUT_LOOK_LR~"
  SHX6_2 = {}
  SHX6_2.label = "Remove item"
  SHX6_2.button = "~INPUT_FRONTEND_DELETE~"
  SHX0_2[1] = SHX1_2
  SHX0_2[2] = SHX2_2
  SHX0_2[3] = SHX3_2
  SHX0_2[4] = SHX4_2
  SHX0_2[5] = SHX5_2
  SHX0_2[6] = SHX6_2
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
    SHX1_3 = 0
    SHX0_3(SHX1_3)
    SHX0_3 = RequestScaleformMovie
    SHX1_3 = "instructional_buttons"
    SHX0_3 = SHX0_3(SHX1_3)
    while true do
      SHX1_3 = HasScaleformMovieLoaded
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        break
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "CLEAR_ALL"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "TOGGLE_MOUSE_BUTTONS"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = ScaleformMovieMethodAddParamBool
    SHX2_3 = false
    SHX1_3(SHX2_3)
    SHX1_3 = EndScaleformMovieMethod
    SHX1_3()
    SHX1_3 = ipairs
    SHX2_3 = SHX0_2
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = BeginScaleformMovieMethod
      SHX8_3 = SHX0_3
      SHX9_3 = "SET_DATA_SLOT"
      SHX7_3(SHX8_3, SHX9_3)
      SHX7_3 = ScaleformMovieMethodAddParamInt
      SHX8_3 = SHX5_3 - 1
      SHX7_3(SHX8_3)
      SHX7_3 = _ENV
      SHX8_3 = "ScaleformMovieMethodAddParamPlayerNameString"
      SHX7_3 = SHX7_3[SHX8_3]
      SHX8_3 = SHX6_3.button
      SHX7_3(SHX8_3)
      SHX7_3 = _ENV
      SHX8_3 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX7_3 = SHX7_3[SHX8_3]
      SHX8_3 = SHX6_3.label
      SHX7_3(SHX8_3)
      SHX7_3 = EndScaleformMovieMethod
      SHX7_3()
    end
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "DRAW_INSTRUCTIONAL_BUTTONS"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = ScaleformMovieMethodAddParamInt
    SHX2_3 = -1
    SHX1_3(SHX2_3)
    SHX1_3 = EndScaleformMovieMethod
    SHX1_3()
    while true do
      SHX1_3 = SHX20_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
      SHX1_3 = DrawScaleformMovieFullscreen
      SHX2_3 = SHX0_3
      SHX3_3 = 255
      SHX4_3 = 255
      SHX5_3 = 255
      SHX6_3 = 255
      SHX7_3 = 0
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
    SHX1_3 = false
    SHX24_1 = SHX1_3
  end
  SHX1_2(SHX2_2)
end
function SHX71_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX18_1.index
  if nil ~= SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "CMGclothing"
    SHX4_2 = "changeClothing"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 179
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = SHX21_1
        if not SHX0_2 then
          SHX0_2 = true
          SHX21_1 = SHX0_2
          SHX0_2 = Citizen
          SHX0_2 = SHX0_2.CreateThread
          SHX1_2 = SHX69_1
          SHX0_2(SHX1_2)
        end
      end
    end
  end
  SHX0_2 = SHX20_1
  if SHX0_2 then
    SHX0_2 = SHX24_1
    if not SHX0_2 then
      SHX0_2 = SHX70_1
      SHX0_2()
      SHX0_2 = true
      SHX24_1 = SHX0_2
    end
  end
end
SHX72_1 = CMG
SHX73_1 = "createThreadOnTick"
SHX72_1 = SHX72_1[SHX73_1]
SHX73_1 = SHX71_1
SHX74_1 = "Clothing Menu"
SHX72_1(SHX73_1, SHX74_1)
SHX72_1 = CMG
SHX73_1 = "createClothingMenu"
function SHX74_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.addBlip
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.z
  SHX6_2 = 73
  SHX7_2 = 3
  SHX8_2 = "Clothing Store"
  SHX9_2 = 0.7
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addPropMarker
  SHX4_2 = "bzzz_marker_tshirt_green_anim"
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = 20.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createArea
  SHX5_2 = "clothingstore_"
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2 .. SHX6_2
  SHX6_2 = SHX1_2
  SHX7_2 = 2.0
  SHX8_2 = 3.0
  SHX9_2 = SHX37_1
  SHX10_2 = SHX38_1
  SHX11_2 = SHX39_1
  SHX12_2 = {}
  SHX12_2.index = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = table
  SHX4_2 = SHX4_2.insert
  SHX5_2 = SHX23_1
  SHX6_2 = {}
  SHX7_2 = SHX1_2
  SHX8_2 = false
  SHX9_2 = {}
  SHX10_2 = SHX0_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX9_2[1] = SHX10_2
  SHX9_2[2] = SHX11_2
  SHX9_2[3] = SHX12_2
  SHX6_2[1] = SHX7_2
  SHX6_2[2] = SHX8_2
  SHX6_2[3] = SHX9_2
  SHX4_2(SHX5_2, SHX6_2)
end
SHX72_1[SHX73_1] = SHX74_1
SHX72_1 = _ENV
SHX73_1 = "CMG"
SHX72_1 = SHX72_1[SHX73_1]
SHX73_1 = "deleteClothingMenu"
function SHX74_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = pairs
  SHX2_2 = SHX23_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[3]
    if SHX7_2 then
      SHX8_2 = SHX7_2[1]
      if SHX8_2 == SHX0_2 then
        SHX8_2 = tCMG
        SHX8_2 = SHX8_2.removeBlip
        SHX9_2 = SHX7_2[2]
        SHX8_2(SHX9_2)
        SHX8_2 = tCMG
        SHX8_2 = SHX8_2.removeMarker
        SHX9_2 = SHX7_2[3]
        SHX8_2(SHX9_2)
        SHX8_2 = tCMG
        SHX8_2 = SHX8_2.removeArea
        SHX9_2 = "clothingstore_"
        SHX10_2 = SHX0_2
        SHX9_2 = SHX9_2 .. SHX10_2
        SHX8_2(SHX9_2)
        SHX8_2 = table
        SHX8_2 = SHX8_2.remove
        SHX9_2 = SHX23_1
        SHX10_2 = SHX5_2
        SHX8_2(SHX9_2, SHX10_2)
        break
      end
    end
  end
end
SHX72_1[SHX73_1] = SHX74_1
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX0_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = false
    if "male_whitelists" == SHX5_2 then
      SHX8_2 = SetPlayerModel
      SHX9_2 = PlayerId
      SHX9_2 = SHX9_2()
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.loadModel
      SHX11_2 = 1885233650
      SHX10_2 = SHX10_2(SHX11_2)
      if not SHX10_2 then
        SHX10_2 = 0
      end
      SHX8_2(SHX9_2, SHX10_2)
      SHX7_2 = true
    elseif "female_whitelists" == SHX5_2 then
      SHX8_2 = SetPlayerModel
      SHX9_2 = PlayerId
      SHX9_2 = SHX9_2()
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.loadModel
      SHX11_2 = -1667301416
      SHX10_2 = SHX10_2(SHX11_2)
      if not SHX10_2 then
        SHX10_2 = 0
      end
      SHX8_2(SHX9_2, SHX10_2)
      SHX7_2 = true
    end
    if SHX7_2 then
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.forcePlayerInfoCacheRefresh
      SHX8_2()
      SHX8_2 = PlayerPedId
      SHX8_2 = SHX8_2()
      SHX9_2 = {}
      SHX0_2[SHX5_2] = SHX9_2
      SHX9_2 = pairs
      SHX10_2 = SHX6_2
      SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
      for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
        SHX15_2 = {}
        SHX16_2 = SHX0_2[SHX5_2]
        SHX16_2[SHX13_2] = SHX15_2
        SHX16_2 = -1
        SHX17_2 = false
        SHX18_2 = pairs
        SHX19_2 = SHX11_1
        SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX18_2(SHX19_2)
        for SHX22_2, SHX23_2 in SHX18_2, SHX19_2, SHX20_2, SHX21_2 do
          SHX24_2 = SHX23_2.name
          if SHX24_2 == SHX13_2 then
            SHX16_2 = SHX23_2.index
            SHX24_2 = SHX23_2.type
            SHX17_2 = "prop" == SHX24_2
          end
        end
        SHX18_2 = assert
        SHX19_2 = SHX16_2 >= 0
        SHX20_2 = string
        SHX20_2 = SHX20_2.format
        SHX21_2 = "Could not find clothes data for %s to migrate"
        SHX22_2 = SHX13_2
        SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX20_2(SHX21_2, SHX22_2)
        SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
        SHX18_2 = 0
        SHX19_2 = 1000
        SHX20_2 = 1
        for SHX21_2 = SHX18_2, SHX19_2, SHX20_2 do
          SHX22_2 = tostring
          SHX23_2 = SHX21_2
          SHX22_2 = SHX22_2(SHX23_2)
          SHX22_2 = SHX14_2[SHX22_2]
          if SHX22_2 then
            if SHX17_2 then
              SHX23_2 = SetPedPropIndex
              SHX24_2 = SHX8_2
              SHX25_2 = SHX16_2
              SHX26_2 = SHX21_2
              SHX27_2 = 0
              SHX28_2 = false
              SHX23_2(SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            else
              SHX23_2 = SetPedComponentVariation
              SHX24_2 = SHX8_2
              SHX25_2 = SHX16_2
              SHX26_2 = SHX21_2
              SHX27_2 = 0
              SHX28_2 = 0
              SHX23_2(SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            end
            SHX23_2 = GetPedDrawableVariationCollectionName
            SHX24_2 = SHX8_2
            SHX25_2 = SHX16_2
            SHX23_2 = SHX23_2(SHX24_2, SHX25_2)
            if SHX17_2 then
              SHX24_2 = GetPedCollectionNameFromProp
              SHX25_2 = SHX8_2
              SHX26_2 = SHX16_2
              SHX27_2 = SHX21_2
              SHX24_2 = SHX24_2(SHX25_2, SHX26_2, SHX27_2)
              SHX23_2 = SHX24_2
            end
            SHX24_2 = assert
            SHX25_2 = SHX23_2
            SHX24_2(SHX25_2)
            SHX24_2 = _ENV
            SHX25_2 = "GetPedDrawableVariationCollectionLocalIndex"
            SHX24_2 = SHX24_2[SHX25_2]
            SHX25_2 = SHX8_2
            SHX26_2 = SHX16_2
            SHX24_2 = SHX24_2(SHX25_2, SHX26_2)
            if SHX17_2 then
              SHX25_2 = GetPedCollectionLocalIndexFromProp
              SHX26_2 = SHX8_2
              SHX27_2 = SHX16_2
              SHX28_2 = SHX21_2
              SHX25_2 = SHX25_2(SHX26_2, SHX27_2, SHX28_2)
              SHX24_2 = SHX25_2
            end
            SHX25_2 = assert
            SHX26_2 = SHX24_2 >= 0
            SHX25_2(SHX26_2)
            if "" == SHX23_2 and 0 == SHX24_2 then
              SHX25_2 = print
              SHX26_2 = string
              SHX26_2 = SHX26_2.format
              SHX27_2 = "Unknown clothing with drawbleId %s in %s for %s!"
              SHX28_2 = SHX21_2
              SHX29_2 = SHX13_2
              SHX30_2 = SHX5_2
              SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX26_2(SHX27_2, SHX28_2, SHX29_2, SHX30_2)
              SHX25_2(SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
            end
            SHX25_2 = table
            SHX25_2 = SHX25_2.insert
            SHX26_2 = SHX15_2
            SHX27_2 = {}
            SHX27_2.collectionName = SHX23_2
            SHX28_2 = _ENV
            SHX29_2 = "GetPedDrawableVariationCollectionLocalIndex"
            SHX28_2 = SHX28_2[SHX29_2]
            SHX29_2 = SHX8_2
            SHX30_2 = SHX16_2
            SHX28_2 = SHX28_2(SHX29_2, SHX30_2)
            SHX27_2.localIndex = SHX28_2
            SHX28_2 = json
            SHX28_2 = SHX28_2.encode
            SHX29_2 = SHX22_2
            SHX28_2 = SHX28_2(SHX29_2)
            SHX27_2.permissions = SHX28_2
            SHX25_2(SHX26_2, SHX27_2)
          end
        end
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.copyToClipboard
  SHX2_2 = json
  SHX2_2 = SHX2_2.encode
  SHX3_2 = SHX0_2
  SHX4_2 = {}
  SHX4_2.indent = true
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
  SHX1_2 = notify
  SHX2_2 = "~g~Clothing migration has finished!"
  SHX1_2(SHX2_2)
end
SHX73_1 = _ENV
SHX74_1 = "CMG"
SHX73_1 = SHX73_1[SHX74_1]
SHX74_1 = "registerDevMenuItems"
SHX73_1 = SHX73_1[SHX74_1]
SHX74_1 = "Customisation"
function SHX75_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Migrate Clothing Config"
  SHX2_2 = ""
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
      SHX3_3 = SHX72_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX73_1(SHX74_1, SHX75_1)
SHX73_1 = _ENV
SHX74_1 = "RegisterNetEvent"
SHX73_1 = SHX73_1[SHX74_1]
SHX74_1 = "5554c4f64b"
function SHX75_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCustomization
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getDefaultCustomization
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getModelGender
  SHX2_2 = SHX2_2()
  SHX2_2 = "female" == SHX2_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX73_1(SHX74_1, SHX75_1)
