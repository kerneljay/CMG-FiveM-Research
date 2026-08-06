-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_weaponsonback"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/weapons"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = "cmg_chain_on_back"
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = ipairs
SHX6_1 = SHX0_1.chainOnBackWeaponNames
if not SHX6_1 then
  SHX6_1 = {}
end
SHX5_1, SHX6_1, SHX7_1, SHX8_1 = SHX5_1(SHX6_1)
for SHX9_1, SHX10_1 in SHX5_1, SHX6_1, SHX7_1, SHX8_1 do
  SHX11_1 = GetHashKey
  SHX12_1 = SHX10_1
  SHX11_1 = SHX11_1(SHX12_1)
  SHX4_1[SHX11_1] = SHX10_1
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX3_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = {}
    SHX8_2 = SHX6_2[1]
    SHX9_2 = SHX6_2[2]
    SHX10_2 = SHX6_2[3]
    SHX11_2 = SHX6_2[4]
    SHX12_2 = SHX6_2[5]
    SHX13_2 = SHX6_2[6]
    SHX7_2[1] = SHX8_2
    SHX7_2[2] = SHX9_2
    SHX7_2[3] = SHX10_2
    SHX7_2[4] = SHX11_2
    SHX7_2[5] = SHX12_2
    SHX7_2[6] = SHX13_2
    SHX0_2[SHX5_2] = SHX7_2
  end
  return SHX0_2
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SetResourceKvp
  SHX1_2 = SHX2_1
  SHX2_2 = json
  SHX2_2 = SHX2_2.encode
  SHX3_2 = SHX3_1
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = LocalPlayer
  if SHX0_2 then
    SHX0_2 = LocalPlayer
    SHX0_2 = SHX0_2.state
    if SHX0_2 then
      SHX0_2 = LocalPlayer
      SHX0_2 = SHX0_2.state
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.set
      SHX2_2 = "chainOnBack"
      SHX3_2 = SHX5_1
      SHX3_2 = SHX3_2()
      SHX4_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    end
  end
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = {}
  SHX3_1 = SHX0_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = SHX2_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 or "" == SHX0_2 then
    return
  end
  SHX1_2 = pcall
  SHX2_2 = json
  SHX2_2 = SHX2_2.decode
  SHX3_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX3_2 = type
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if "table" == SHX3_2 then
      goto SHX_LABEL_25
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
  ::SHX_LABEL_25::
  SHX3_2 = pairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = type
    SHX10_2 = SHX7_2
    SHX9_2 = SHX9_2(SHX10_2)
    if "string" == SHX9_2 then
      SHX9_2 = type
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if "table" == SHX9_2 then
        SHX9_2 = SHX8_2[1]
        if SHX9_2 then
          SHX9_2 = SHX8_2[2]
          if SHX9_2 then
            SHX9_2 = SHX8_2[3]
            if SHX9_2 then
              SHX9_2 = SHX8_2[4]
              if SHX9_2 then
                SHX9_2 = SHX8_2[5]
                if SHX9_2 then
                  SHX9_2 = SHX8_2[6]
                  if SHX9_2 then
                    SHX9_2 = SHX3_1
                    SHX10_2 = {}
                    SHX11_2 = tonumber
                    SHX12_2 = SHX8_2[1]
                    SHX11_2 = SHX11_2(SHX12_2)
                    if not SHX11_2 then
                      SHX11_2 = 0.0
                    end
                    SHX12_2 = tonumber
                    SHX13_2 = SHX8_2[2]
                    SHX12_2 = SHX12_2(SHX13_2)
                    if not SHX12_2 then
                      SHX12_2 = 0.0
                    end
                    SHX13_2 = tonumber
                    SHX14_2 = SHX8_2[3]
                    SHX13_2 = SHX13_2(SHX14_2)
                    if not SHX13_2 then
                      SHX13_2 = 0.0
                    end
                    SHX14_2 = tonumber
                    SHX15_2 = SHX8_2[4]
                    SHX14_2 = SHX14_2(SHX15_2)
                    if not SHX14_2 then
                      SHX14_2 = 0.0
                    end
                    SHX15_2 = tonumber
                    SHX16_2 = SHX8_2[5]
                    SHX15_2 = SHX15_2(SHX16_2)
                    if not SHX15_2 then
                      SHX15_2 = 0.0
                    end
                    SHX16_2 = tonumber
                    SHX17_2 = SHX8_2[6]
                    SHX16_2 = SHX16_2(SHX17_2)
                    if not SHX16_2 then
                      SHX16_2 = 0.0
                    end
                    SHX10_2[1] = SHX11_2
                    SHX10_2[2] = SHX12_2
                    SHX10_2[3] = SHX13_2
                    SHX10_2[4] = SHX14_2
                    SHX10_2[5] = SHX15_2
                    SHX10_2[6] = SHX16_2
                    SHX9_2[SHX7_2] = SHX10_2
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
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = LocalPlayer
  if SHX0_2 then
    SHX0_2 = LocalPlayer
    SHX0_2 = SHX0_2.state
    if SHX0_2 then
      SHX0_2 = LocalPlayer
      SHX0_2 = SHX0_2.state
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.set
      SHX2_2 = "chainOnBack"
      SHX3_2 = SHX5_1
      SHX3_2 = SHX3_2()
      SHX4_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    end
  end
end
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = GetHashKey
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_1.weapons
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    SHX3_2 = vector3
    SHX4_2 = 0.0
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = vector3
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    return SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  end
  SHX3_2 = SHX2_2.offset
  SHX4_2 = SHX2_2.rotation
  return SHX3_2, SHX4_2
end
SHX9_1.getChainOnBackCfgTransform = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getChainOnBackCfgTransform
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  SHX3_2 = SHX3_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX4_2 = SHX3_2[1]
    SHX5_2 = SHX3_2[2]
    SHX6_2 = SHX3_2[3]
    SHX7_2 = SHX3_2[4]
    SHX8_2 = SHX3_2[5]
    SHX9_2 = SHX3_2[6]
    return SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  end
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  return SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
end
SHX9_1.getChainOnBackEffectiveNumbers = SHX10_1
SHX9_1 = Citizen
SHX9_1 = SHX9_1.CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX0_2()
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = SHX8_1
  SHX0_2()
end
SHX9_1(SHX10_1)
SHX9_1 = AddEventHandler
SHX10_1 = "CMG:onClientSpawn"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX0_2()
  SHX0_2 = SHX8_1
  SHX0_2()
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = {}
SHX9_1.enabled = false
SHX9_1.hash = 313219588
SHX9_1.bone = 39317
SHX10_1 = vector3
SHX11_1 = 0.02
SHX12_1 = 0.09
SHX13_1 = 0.01
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX9_1.offset = SHX10_1
SHX10_1 = vector3
SHX11_1 = 90.0
SHX12_1 = 0.0
SHX13_1 = 0.0
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX9_1.rotation = SHX10_1
SHX10_1 = Citizen
SHX10_1 = SHX10_1.CreateThread
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1.weapons
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX0_1.weapons
    SHX7_2 = SHX5_2.hash
    SHX6_2 = SHX6_2[SHX7_2]
    if not SHX6_2 then
      SHX6_2 = nil
      SHX7_2 = SHX5_2.mag
      if SHX7_2 then
        SHX7_2 = GetHashKey
        SHX8_2 = SHX5_2.mag
        SHX7_2 = SHX7_2(SHX8_2)
        SHX6_2 = SHX7_2
      end
      SHX7_2 = SHX5_2.dontShowOnBack
      if not SHX7_2 then
        SHX7_2 = SHX5_2.class
        if "SMG" == SHX7_2 then
          SHX7_2 = SHX0_1.weapons
          SHX8_2 = SHX5_2.hash
          SHX9_2 = {}
          SHX9_2.bone = 58271
          SHX10_2 = vector3
          SHX11_2 = -0.01
          SHX12_2 = 0.1
          SHX13_2 = -0.07
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_2.offset = SHX10_2
          SHX10_2 = vector3
          SHX11_2 = -55.0
          SHX12_2 = 0.1
          SHX13_2 = 0.0
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_2.rotation = SHX10_2
          SHX10_2 = GetHashKey
          SHX11_2 = SHX5_2.model
          SHX10_2 = SHX10_2(SHX11_2)
          SHX9_2.model = SHX10_2
          SHX9_2.type = "SMG"
          SHX9_2.magComponent = SHX6_2
          SHX7_2[SHX8_2] = SHX9_2
        else
          SHX7_2 = SHX5_2.class
          if "AR" == SHX7_2 then
            SHX7_2 = SHX0_1.weapons
            SHX8_2 = SHX5_2.hash
            SHX9_2 = {}
            SHX9_2.bone = 24818
            SHX10_2 = vector3
            SHX11_2 = -0.12
            SHX12_2 = -0.12
            SHX13_2 = -0.13
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX9_2.offset = SHX10_2
            SHX10_2 = vector3
            SHX11_2 = 100.0
            SHX12_2 = -3.0
            SHX13_2 = 5.0
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX9_2.rotation = SHX10_2
            SHX10_2 = GetHashKey
            SHX11_2 = SHX5_2.model
            SHX10_2 = SHX10_2(SHX11_2)
            SHX9_2.model = SHX10_2
            SHX9_2.type = "AR"
            SHX9_2.magComponent = SHX6_2
            SHX7_2[SHX8_2] = SHX9_2
          else
            SHX7_2 = SHX5_2.class
            if "Heavy" == SHX7_2 then
              SHX7_2 = SHX0_1.weapons
              SHX8_2 = SHX5_2.hash
              SHX9_2 = {}
              SHX9_2.bone = 24818
              SHX10_2 = vector3
              SHX11_2 = -0.12
              SHX12_2 = -0.12
              SHX13_2 = -0.13
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
              SHX9_2.offset = SHX10_2
              SHX10_2 = vector3
              SHX11_2 = 100.0
              SHX12_2 = -3.0
              SHX13_2 = 5.0
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
              SHX9_2.rotation = SHX10_2
              SHX10_2 = GetHashKey
              SHX11_2 = SHX5_2.model
              SHX10_2 = SHX10_2(SHX11_2)
              SHX9_2.model = SHX10_2
              SHX9_2.type = "Heavy"
              SHX9_2.magComponent = SHX6_2
              SHX7_2[SHX8_2] = SHX9_2
            else
              SHX7_2 = SHX5_2.class
              if "Melee" == SHX7_2 then
                SHX7_2 = SHX5_2.subType
                if "knuckle" ~= SHX7_2 then
                  SHX7_2 = SHX5_2.subType
                  if "stungun" ~= SHX7_2 then
                    SHX7_2 = SHX0_1.weapons
                    SHX8_2 = SHX5_2.hash
                    SHX9_2 = {}
                    SHX9_2.bone = 24818
                    SHX10_2 = vector3
                    SHX11_2 = 0.32
                    SHX12_2 = -0.15
                    SHX13_2 = 0.13
                    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                    SHX9_2.offset = SHX10_2
                    SHX10_2 = vector3
                    SHX11_2 = 0.0
                    SHX12_2 = -90.0
                    SHX13_2 = 0.0
                    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                    SHX9_2.rotation = SHX10_2
                    SHX10_2 = GetHashKey
                    SHX11_2 = SHX5_2.model
                    SHX10_2 = SHX10_2(SHX11_2)
                    SHX9_2.model = SHX10_2
                    SHX9_2.type = "Melee"
                    SHX9_2.magComponent = SHX6_2
                    SHX7_2[SHX8_2] = SHX9_2
                end
              end
              else
                SHX7_2 = SHX5_2.class
                if "Shotgun" == SHX7_2 then
                  SHX7_2 = SHX0_1.weapons
                  SHX8_2 = SHX5_2.hash
                  SHX9_2 = {}
                  SHX9_2.bone = 24818
                  SHX10_2 = vector3
                  SHX11_2 = -0.12
                  SHX12_2 = -0.12
                  SHX13_2 = -0.13
                  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                  SHX9_2.offset = SHX10_2
                  SHX10_2 = vector3
                  SHX11_2 = 100.0
                  SHX12_2 = -3.0
                  SHX13_2 = 5.0
                  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                  SHX9_2.rotation = SHX10_2
                  SHX10_2 = GetHashKey
                  SHX11_2 = SHX5_2.model
                  SHX10_2 = SHX10_2(SHX11_2)
                  SHX9_2.model = SHX10_2
                  SHX9_2.type = "Shotgun"
                  SHX9_2.magComponent = SHX6_2
                  SHX7_2[SHX8_2] = SHX9_2
                end
              end
            end
          end
        end
      end
    end
  end
end
SHX10_1(SHX11_1)
SHX10_1 = AddEventHandler
SHX11_1 = "2d7bd9be41"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = LocalPlayer
  SHX0_2 = SHX0_2.state
  SHX0_2 = SHX0_2.weaponsDiagonal
  if not SHX0_2 then
    SHX0_2 = LocalPlayer
    SHX0_2 = SHX0_2.state
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.set
    SHX2_2 = "weaponsDiagonal"
    SHX3_2 = true
    SHX4_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "311dece672"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = LocalPlayer
  SHX0_2 = SHX0_2.state
  SHX0_2 = SHX0_2.weaponsDiagonal
  if SHX0_2 then
    SHX0_2 = LocalPlayer
    SHX0_2 = SHX0_2.state
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.set
    SHX2_2 = "weaponsDiagonal"
    SHX3_2 = nil
    SHX4_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "c4b3821d33"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = LocalPlayer
  SHX0_2 = SHX0_2.state
  SHX0_2 = SHX0_2.frontAR
  if not SHX0_2 then
    SHX0_2 = LocalPlayer
    SHX0_2 = SHX0_2.state
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.set
    SHX2_2 = "frontAR"
    SHX3_2 = true
    SHX4_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "45968dd649"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = LocalPlayer
  SHX0_2 = SHX0_2.state
  SHX0_2 = SHX0_2.frontAR
  if SHX0_2 then
    SHX0_2 = LocalPlayer
    SHX0_2 = SHX0_2.state
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.set
    SHX2_2 = "frontAR"
    SHX3_2 = nil
    SHX4_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "b6b9f5a6b2"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = LocalPlayer
  SHX0_2 = SHX0_2.state
  SHX0_2 = SHX0_2.frontSMG
  if not SHX0_2 then
    SHX0_2 = LocalPlayer
    SHX0_2 = SHX0_2.state
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.set
    SHX2_2 = "frontSMG"
    SHX3_2 = true
    SHX4_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "21f52e326d"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = LocalPlayer
  SHX0_2 = SHX0_2.state
  SHX0_2 = SHX0_2.frontSMG
  if SHX0_2 then
    SHX0_2 = LocalPlayer
    SHX0_2 = SHX0_2.state
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.set
    SHX2_2 = "frontSMG"
    SHX3_2 = nil
    SHX4_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = {}
SHX13_1 = 0
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = GetSelectedPedWeapon
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getCachedWeaponStore
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hasClientPermission
  SHX4_2 = "police.onduty.permission"
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerVehicle
    SHX3_2 = SHX3_2()
    SHX3_2 = 0 ~= SHX3_2
  end
  SHX4_2 = pairs
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = GetHashKey
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = SHX0_1.weapons
    SHX10_2 = SHX10_2[SHX9_2]
    if SHX10_2 then
      if SHX3_2 then
        SHX11_2 = SHX10_2.type
      end
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.isEmergencyService
      SHX11_2 = SHX11_2()
      if not SHX11_2 then
        SHX11_2 = tCMG
        SHX11_2 = SHX11_2.isInGreenzone
        SHX12_2 = false
        SHX11_2 = SHX11_2(SHX12_2)
        SHX11_2 = "Heavy" ~= SHX11_2 and SHX11_2
      end
      SHX12_2 = SHX10_1
      SHX12_2 = SHX12_2[SHX9_2]
      if SHX12_2 and not SHX11_2 then
        SHX12_2 = SHX10_1
        SHX12_2[SHX9_2] = nil
        SHX2_2 = true
      else
        SHX12_2 = SHX10_1
        SHX12_2 = SHX12_2[SHX9_2]
        if not SHX12_2 and SHX9_2 ~= SHX0_2 and SHX11_2 then
          SHX12_2 = SHX10_1
          SHX12_2[SHX9_2] = SHX8_2
          SHX2_2 = true
        end
      end
    end
  end
  SHX4_2 = pairs
  SHX5_2 = SHX10_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX1_2[SHX9_2]
    if not SHX10_2 or SHX8_2 == SHX0_2 then
      SHX10_2 = SHX10_1
      SHX10_2[SHX8_2] = nil
      SHX2_2 = true
    end
  end
  if SHX2_2 then
    SHX4_2 = {}
    SHX5_2 = pairs
    SHX6_2 = SHX10_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = table
      SHX10_2 = SHX10_2.insert
      SHX11_2 = SHX4_2
      SHX12_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2)
    end
    SHX5_2 = #SHX4_2
    if SHX5_2 > 0 then
      SHX5_2 = LocalPlayer
      SHX5_2 = SHX5_2.state
      SHX6_2 = SHX5_2
      SHX5_2 = SHX5_2.set
      SHX7_2 = "weapons"
      SHX8_2 = SHX4_2
      SHX9_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    else
      SHX5_2 = LocalPlayer
      SHX5_2 = SHX5_2.state
      SHX6_2 = SHX5_2
      SHX5_2 = SHX5_2.set
      SHX7_2 = "weapons"
      SHX8_2 = nil
      SHX9_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
  end
end
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX2_2 = SHX0_1.weapons
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    SHX3_2 = 0
    return SHX3_2
  end
  SHX3_2 = SHX2_2.bone
  SHX4_2 = SHX2_2.offset
  SHX5_2 = SHX2_2.rotation
  SHX6_2 = SHX4_1
  SHX6_2 = SHX6_2[SHX0_2]
  if SHX6_2 then
    SHX7_2 = nil
    SHX8_2 = SHX1_2.ped
    SHX9_2 = PlayerPedId
    SHX9_2 = SHX9_2()
    if SHX8_2 == SHX9_2 then
      SHX8_2 = SHX3_1
      SHX7_2 = SHX8_2[SHX6_2]
    else
      SHX8_2 = type
      SHX9_2 = SHX1_2.chainOnBack
      SHX8_2 = SHX8_2(SHX9_2)
      if "table" == SHX8_2 then
        SHX8_2 = SHX1_2.chainOnBack
        SHX7_2 = SHX8_2[SHX6_2]
      end
    end
    if SHX7_2 then
      SHX8_2 = vector3
      SHX9_2 = SHX7_2[1]
      SHX10_2 = SHX7_2[2]
      SHX11_2 = SHX7_2[3]
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX4_2 = SHX8_2
      SHX8_2 = vector3
      SHX9_2 = SHX7_2[4]
      SHX10_2 = SHX7_2[5]
      SHX11_2 = SHX7_2[6]
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX5_2 = SHX8_2
    end
  end
  SHX7_2 = SHX9_1.enabled
  if SHX7_2 then
    SHX7_2 = SHX9_1.hash
    if SHX0_2 == SHX7_2 then
      SHX7_2 = SHX1_2.ped
      SHX8_2 = PlayerPedId
      SHX8_2 = SHX8_2()
      if SHX7_2 == SHX8_2 then
        SHX3_2 = SHX9_1.bone
        SHX4_2 = SHX9_1.offset
        SHX5_2 = SHX9_1.rotation
      end
    end
  end
  SHX7_2 = SHX1_2.diagonal
  if SHX7_2 then
    SHX7_2 = vector3
    SHX8_2 = -0.12
    SHX9_2 = -0.12
    SHX10_2 = -0.13
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    if SHX4_2 == SHX7_2 then
      SHX7_2 = vector3
      SHX8_2 = 0.0
      SHX9_2 = -0.2
      SHX10_2 = 0.0
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX4_2 = SHX7_2
      SHX7_2 = vector3
      SHX8_2 = 0.0
      SHX9_2 = 45.0
      SHX10_2 = SHX5_2.z
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX5_2 = SHX7_2
    end
  end
  SHX7_2 = SHX1_2.frontAR
  if SHX7_2 then
    SHX7_2 = SHX2_2.type
    if "AR" == SHX7_2 then
      SHX7_2 = vector3
      SHX8_2 = 0.0
      SHX9_2 = 0.18
      SHX10_2 = 0.0
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX4_2 = SHX7_2
      SHX7_2 = vector3
      SHX8_2 = 180.0
      SHX9_2 = 148.0
      SHX10_2 = 0.0
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX5_2 = SHX7_2
    end
  end
  SHX7_2 = SHX1_2.frontSMG
  if SHX7_2 then
    SHX7_2 = SHX2_2.type
    if "SMG" == SHX7_2 then
      SHX3_2 = 24818
      SHX7_2 = vector3
      SHX8_2 = 0.0
      SHX9_2 = 0.18
      SHX10_2 = 0.0
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX4_2 = SHX7_2
      SHX7_2 = vector3
      SHX8_2 = 180.0
      SHX9_2 = 148.0
      SHX10_2 = 0.0
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX5_2 = SHX7_2
    end
  end
  SHX7_2 = HasModelLoaded
  SHX8_2 = SHX2_2.model
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = RequestModel
    SHX8_2 = SHX2_2.model
    SHX7_2(SHX8_2)
    SHX7_2 = 0
    return SHX7_2
  end
  SHX7_2 = SHX2_2.components
  if not SHX7_2 then
    SHX7_2 = SHX2_2.magComponent
    if not SHX7_2 then
      goto SHX_LABEL_145
    end
  end
  SHX7_2 = HasWeaponAssetLoaded
  SHX8_2 = SHX0_2
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = RequestWeaponAsset
    SHX8_2 = SHX0_2
    SHX9_2 = 4294967295
    SHX10_2 = 4294967295
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = 0
    return SHX7_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_145:: outside nested blocks until all 'goto SHX_LABEL_145' can see it
  ::SHX_LABEL_145::
  SHX7_2 = 0
  SHX8_2 = SHX2_2.components
  if SHX8_2 then
    SHX8_2 = CreateWeaponObject
    SHX9_2 = SHX0_2
    SHX10_2 = 0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = true
    SHX15_2 = 1.0
    SHX16_2 = false
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX7_2 = SHX8_2
    SHX8_2 = pairs
    SHX9_2 = SHX2_2.components
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = GiveWeaponComponentToWeaponObject
      SHX15_2 = SHX7_2
      SHX16_2 = SHX13_2
      SHX14_2(SHX15_2, SHX16_2)
    end
    SHX8_2 = SHX2_2.removeComponents
    if SHX8_2 then
      SHX8_2 = pairs
      SHX9_2 = SHX2_2.removeComponents
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = RemoveWeaponComponentFromWeaponObject
        SHX15_2 = SHX7_2
        SHX16_2 = SHX13_2
        SHX14_2(SHX15_2, SHX16_2)
      end
    end
  else
    SHX8_2 = SHX2_2.magComponent
    if SHX8_2 then
      SHX8_2 = CreateWeaponObject
      SHX9_2 = SHX0_2
      SHX10_2 = 0
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = true
      SHX15_2 = 1.0
      SHX16_2 = false
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX7_2 = SHX8_2
      SHX8_2 = GiveWeaponComponentToWeaponObject
      SHX9_2 = SHX7_2
      SHX10_2 = SHX2_2.magComponent
      SHX8_2(SHX9_2, SHX10_2)
    else
      SHX8_2 = CreateObject
      SHX9_2 = SHX2_2.model
      SHX10_2 = 0.0
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX7_2 = SHX8_2
    end
  end
  SHX8_2 = AttachEntityToEntity
  SHX9_2 = SHX7_2
  SHX10_2 = SHX1_2.ped
  SHX11_2 = GetPedBoneIndex
  SHX12_2 = SHX1_2.ped
  SHX13_2 = SHX3_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = SHX4_2.x
  SHX13_2 = SHX4_2.y
  SHX14_2 = SHX4_2.z
  SHX15_2 = SHX5_2.x
  SHX16_2 = SHX5_2.y
  SHX17_2 = SHX5_2.z
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = false
  SHX22_2 = 2
  SHX23_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX8_2 = SetModelAsNoLongerNeeded
  SHX9_2 = SHX2_2.model
  SHX8_2(SHX9_2)
  return SHX7_2
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.weapons
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if 0 ~= SHX6_2 then
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
      SHX7_2 = SHX0_2.weapons
      SHX7_2[SHX5_2] = 0
    end
  end
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX0_2.ped
  if 0 == SHX1_2 then
    return
  end
  SHX1_2 = IsEntityVisible
  SHX2_2 = SHX0_2.ped
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = SHX16_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.weapons
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if 0 == SHX6_2 then
      SHX7_2 = SHX0_2.weapons
      SHX8_2 = SHX15_1
      SHX9_2 = SHX5_2
      SHX10_2 = SHX0_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX7_2[SHX5_2] = SHX8_2
    end
  end
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = pairs
  SHX1_2 = SHX11_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.playerIndex
    if -1 == SHX6_2 then
      SHX6_2 = GetPlayerFromServerId
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX5_2.playerIndex = SHX6_2
    end
    SHX6_2 = SHX5_2.playerIndex
    if -1 ~= SHX6_2 then
      SHX6_2 = pairs
      SHX7_2 = SHX5_2.weapons
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        if 0 ~= SHX11_2 then
          SHX12_2 = IsEntityAttached
          SHX13_2 = SHX11_2
          SHX12_2 = SHX12_2(SHX13_2)
          if not SHX12_2 then
            SHX12_2 = DeleteEntity
            SHX13_2 = SHX11_2
            SHX12_2(SHX13_2)
            SHX12_2 = SHX5_2.weapons
            SHX12_2[SHX10_2] = 0
          end
        end
      end
      SHX6_2 = SHX5_2.ped
      if 0 ~= SHX6_2 then
        SHX6_2 = DoesEntityExist
        SHX7_2 = SHX5_2.ped
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX6_2 then
          goto SHX_LABEL_46
        end
      end
      SHX6_2 = GetPlayerPed
      SHX7_2 = SHX5_2.playerIndex
      SHX6_2 = SHX6_2(SHX7_2)
      SHX5_2.ped = SHX6_2
      -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
      ::SHX_LABEL_46::
      SHX6_2 = SHX17_1
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
end
SHX19_1 = 0
SHX20_1 = Citizen
SHX20_1 = SHX20_1.CreateThread
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX14_1
    SHX0_2()
    SHX0_2 = SHX19_1
    SHX0_2 = SHX0_2 % 3
    if 0 == SHX0_2 then
      SHX0_2 = SHX18_1
      SHX0_2()
    end
    SHX0_2 = SHX19_1
    SHX0_2 = SHX0_2 + 1
    SHX19_1 = SHX0_2
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX20_1(SHX21_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "onPlayerDropped"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX11_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX16_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = SHX11_1
    SHX2_2[SHX0_2] = nil
  end
  SHX2_2 = SHX12_1
  SHX2_2[SHX0_2] = nil
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = AddStateBagChangeHandler
SHX21_1 = "weapons"
SHX22_1 = nil
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
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
  SHX4_2 = SHX11_1
  SHX4_2 = SHX4_2[SHX3_2]
  if nil == SHX2_2 then
    if SHX4_2 then
      SHX5_2 = SHX16_1
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
      SHX5_2 = SHX11_1
      SHX5_2[SHX3_2] = nil
    end
    return
  end
  if SHX4_2 then
    SHX5_2 = Player
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX5_2 = SHX5_2.state
    SHX5_2 = SHX5_2.chainOnBack
    SHX4_2.chainOnBack = SHX5_2
    SHX5_2 = pairs
    SHX6_2 = SHX4_2.weapons
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = table
      SHX11_2 = SHX11_2.has
      SHX12_2 = SHX2_2
      SHX13_2 = SHX9_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      if not SHX11_2 then
        if 0 ~= SHX10_2 then
          SHX11_2 = DeleteEntity
          SHX12_2 = SHX10_2
          SHX11_2(SHX12_2)
        end
        SHX11_2 = SHX4_2.weapons
        SHX11_2[SHX9_2] = nil
        SHX11_2 = SHX0_1.weapons
        SHX11_2 = SHX11_2[SHX9_2]
        if SHX11_2 then
          SHX12_2 = SetModelAsNoLongerNeeded
          SHX13_2 = SHX11_2.model
          SHX12_2(SHX13_2)
        end
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX2_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = SHX4_2.weapons
      SHX11_2 = SHX11_2[SHX10_2]
      if not SHX11_2 then
        SHX11_2 = SHX4_2.weapons
        SHX11_2[SHX10_2] = 0
      end
    end
    SHX5_2 = SHX17_1
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  else
    SHX5_2 = {}
    SHX6_2 = pairs
    SHX7_2 = SHX2_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX5_2[SHX11_2] = 0
    end
    SHX6_2 = SHX11_1
    SHX7_2 = {}
    SHX7_2.ped = 0
    SHX7_2.playerIndex = -1
    SHX7_2.weapons = SHX5_2
    SHX8_2 = Player
    SHX9_2 = SHX3_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX8_2 = SHX8_2.state
    SHX8_2 = SHX8_2.weaponsDiagonal
    SHX7_2.diagonal = SHX8_2
    SHX8_2 = Player
    SHX9_2 = SHX3_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX8_2 = SHX8_2.state
    SHX8_2 = SHX8_2.frontAR
    SHX7_2.frontAR = SHX8_2
    SHX8_2 = Player
    SHX9_2 = SHX3_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX8_2 = SHX8_2.state
    SHX8_2 = SHX8_2.frontSMG
    SHX7_2.frontSMG = SHX8_2
    SHX8_2 = Player
    SHX9_2 = SHX3_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX8_2 = SHX8_2.state
    SHX8_2 = SHX8_2.chainOnBack
    SHX7_2.chainOnBack = SHX8_2
    SHX6_2[SHX3_2] = SHX7_2
  end
end
SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX20_1 = AddStateBagChangeHandler
SHX21_1 = "weaponsDiagonal"
SHX22_1 = nil
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX11_1
  SHX4_2 = SHX4_2[SHX3_2]
  if SHX4_2 then
    SHX5_2 = SHX4_2.diagonal
    if SHX5_2 ~= SHX2_2 then
      SHX4_2.diagonal = SHX2_2
      SHX5_2 = SHX16_1
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
      SHX5_2 = SHX17_1
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
    end
  end
end
SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX20_1 = AddStateBagChangeHandler
SHX21_1 = "frontAR"
SHX22_1 = nil
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX11_1
  SHX4_2 = SHX4_2[SHX3_2]
  if SHX4_2 then
    SHX5_2 = SHX4_2.frontAR
    if SHX5_2 ~= SHX2_2 then
      SHX4_2.frontAR = SHX2_2
      SHX5_2 = SHX16_1
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
      SHX5_2 = SHX17_1
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
    end
  end
end
SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX20_1 = AddStateBagChangeHandler
SHX21_1 = "frontSMG"
SHX22_1 = nil
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX11_1
  SHX4_2 = SHX4_2[SHX3_2]
  if SHX4_2 then
    SHX5_2 = SHX4_2.frontSMG
    if SHX5_2 ~= SHX2_2 then
      SHX4_2.frontSMG = SHX2_2
      SHX5_2 = SHX16_1
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
      SHX5_2 = SHX17_1
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
    end
  end
end
SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX20_1 = AddStateBagChangeHandler
SHX21_1 = "chainOnBack"
SHX22_1 = nil
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
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
  SHX4_2 = SHX11_1
  SHX4_2 = SHX4_2[SHX3_2]
  if not SHX4_2 then
    return
  end
  SHX4_2.chainOnBack = SHX2_2
  SHX5_2 = SHX16_1
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = SHX17_1
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
end
SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX20_1 = AddStateBagChangeHandler
SHX21_1 = "redDot"
SHX22_1 = nil
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX4_2 = SHX12_1
    SHX4_2[SHX3_2] = SHX2_2
  end
end
SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX20_1 = 0
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetSelectedPedWeapon
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_1.redDotWeapons
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX2_2 = IsPlayerFreeAiming
    SHX3_2 = PlayerId
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX3_2()
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    if SHX2_2 then
      SHX2_2 = GetGameTimer
      SHX2_2 = SHX2_2()
      SHX3_2 = SHX20_1
      SHX2_2 = SHX2_2 - SHX3_2
      SHX3_2 = 200
      if SHX2_2 > SHX3_2 then
        SHX2_2 = LocalPlayer
        SHX2_2 = SHX2_2.state
        SHX3_2 = SHX2_2
        SHX2_2 = SHX2_2.set
        SHX4_2 = "redDot"
        SHX5_2 = {}
        SHX6_2 = GetGameplayCamCoord
        SHX6_2 = SHX6_2()
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.rotationToDirection
        SHX8_2 = GetGameplayCamRot
        SHX9_2 = 2
        SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX8_2(SHX9_2)
        SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX5_2[1] = SHX6_2
        SHX5_2[2] = SHX7_2
        SHX5_2[3] = SHX8_2
        SHX5_2[4] = SHX9_2
        SHX5_2[5] = SHX10_2
        SHX5_2[6] = SHX11_2
        SHX5_2[7] = SHX12_2
        SHX5_2[8] = SHX13_2
        SHX5_2[9] = SHX14_2
        SHX5_2[10] = SHX15_2
        SHX5_2[11] = SHX16_2
        SHX5_2[12] = SHX17_2
        SHX5_2[13] = SHX18_2
        SHX5_2[14] = SHX19_2
        SHX5_2[15] = SHX20_2
        SHX5_2[16] = SHX21_2
        SHX5_2[17] = SHX22_2
        SHX5_2[18] = SHX23_2
        SHX5_2[19] = SHX24_2
        SHX5_2[20] = SHX25_2
        SHX5_2[21] = SHX26_2
        SHX5_2[22] = SHX27_2
        SHX5_2[23] = SHX28_2
        SHX6_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX2_2 = GetGameTimer
        SHX2_2 = SHX2_2()
        SHX20_1 = SHX2_2
      end
      SHX2_2 = 2
      SHX13_1 = SHX2_2
    else
      SHX2_2 = SHX13_1
      if 1 ~= SHX2_2 then
        SHX2_2 = LocalPlayer
        SHX2_2 = SHX2_2.state
        SHX3_2 = SHX2_2
        SHX2_2 = SHX2_2.set
        SHX4_2 = "redDot"
        SHX5_2 = true
        SHX6_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX2_2 = 1
        SHX13_1 = SHX2_2
      end
    end
  else
    SHX2_2 = SHX13_1
    if 0 ~= SHX2_2 then
      SHX2_2 = LocalPlayer
      SHX2_2 = SHX2_2.state
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.set
      SHX4_2 = "redDot"
      SHX5_2 = nil
      SHX6_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = 0
      SHX13_1 = SHX2_2
    end
  end
  SHX2_2 = pairs
  SHX3_2 = SHX12_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetPlayerFromServerId
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 >= 0 then
      SHX9_2 = GetPlayerPed
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if 0 ~= SHX9_2 then
        SHX10_2 = GetCurrentPedWeaponEntityIndex
        SHX11_2 = SHX9_2
        SHX10_2 = SHX10_2(SHX11_2)
        if 0 ~= SHX10_2 then
          SHX11_2 = nil
          SHX12_2 = nil
          SHX13_2 = true == SHX7_2
          if SHX13_2 then
            SHX14_2 = GetEntityCoords
            SHX15_2 = SHX10_2
            SHX14_2 = SHX14_2(SHX15_2)
            SHX11_2 = SHX14_2
            SHX14_2 = select
            SHX15_2 = 2
            SHX16_2 = GetEntityMatrix
            SHX17_2 = SHX10_2
            SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX16_2(SHX17_2)
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            SHX12_2 = SHX14_2
          else
            SHX11_2 = SHX7_2[1]
            SHX12_2 = SHX7_2[2]
          end
          SHX14_2 = DrawSpotLight
          SHX15_2 = SHX11_2.x
          SHX16_2 = SHX11_2.y
          SHX17_2 = SHX11_2.z
          SHX18_2 = SHX12_2.x
          SHX19_2 = SHX12_2.y
          SHX20_2 = SHX12_2.z
          SHX21_2 = 255
          SHX22_2 = 0
          SHX23_2 = 0
          if SHX13_2 then
            SHX24_2 = 5.0
            if SHX24_2 then
              goto SHX_LABEL_128
            end
          end
          SHX24_2 = 15.0
          -- [FIX IF ERROR] Move ::SHX_LABEL_128:: outside nested blocks until all 'goto SHX_LABEL_128' can see it
          ::SHX_LABEL_128::
          SHX25_2 = 20.0
          SHX26_2 = 100.0
          SHX27_2 = 0.0
          SHX28_2 = 10.0
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        end
      end
    end
  end
end
SHX22_1 = CMG
SHX22_1 = SHX22_1.createThreadOnTick
SHX23_1 = SHX21_1
SHX24_1 = "Taser Red Dot"
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = AddEventHandler
SHX23_1 = "onResourceStop"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX11_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX16_1
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetPlayerServerId
  SHX1_2 = PlayerId
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX1_2 = SHX11_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX16_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = SHX17_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX23_1 = CMG
function SHX24_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX7_2 = SHX3_1
  SHX8_2 = {}
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX13_2 = SHX5_2
  SHX14_2 = SHX6_2
  SHX8_2[1] = SHX9_2
  SHX8_2[2] = SHX10_2
  SHX8_2[3] = SHX11_2
  SHX8_2[4] = SHX12_2
  SHX8_2[5] = SHX13_2
  SHX8_2[6] = SHX14_2
  SHX7_2[SHX0_2] = SHX8_2
  SHX7_2 = SHX6_1
  SHX7_2()
  SHX7_2 = SHX22_1
  SHX7_2()
end
SHX23_1.setChainOnBackOverrideNumbers = SHX24_1
SHX23_1 = CMG
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX3_1
  SHX1_2[SHX0_2] = nil
  SHX1_2 = SHX6_1
  SHX1_2()
  SHX1_2 = SHX22_1
  SHX1_2()
end
SHX23_1.clearChainOnBackOverride = SHX24_1
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SetTextFont
  SHX4_2 = 4
  SHX3_2(SHX4_2)
  SHX3_2 = SetTextScale
  SHX4_2 = 0.35
  SHX5_2 = 0.35
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetTextColour
  SHX4_2 = 255
  SHX5_2 = 255
  SHX6_2 = 255
  SHX7_2 = 215
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetTextOutline
  SHX3_2()
  SHX3_2 = SetTextCentre
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = BeginTextCommandDisplayText
  SHX4_2 = "STRING"
  SHX3_2(SHX4_2)
  SHX3_2 = AddTextComponentSubstringPlayerName
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = EndTextCommandDisplayText
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX24_1 = CMG
SHX24_1 = SHX24_1.registerCommand
SHX25_1 = "chainedit"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX9_1.enabled
  SHX0_2 = not SHX0_2
  SHX9_1.enabled = SHX0_2
  SHX0_2 = SHX22_1
  SHX0_2()
end
SHX27_1 = true
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.registerCommand
SHX25_1 = "chainprint"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = print
  SHX1_2 = "CHAIN CFG => bone=%d, offset=vector3(%.4f, %.4f, %.4f), rotation=vector3(%.2f, %.2f, %.2f)"
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.format
  SHX3_2 = SHX9_1.bone
  SHX4_2 = SHX9_1.offset
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX9_1.offset
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX9_1.offset
  SHX6_2 = SHX6_2.z
  SHX7_2 = SHX9_1.rotation
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX9_1.rotation
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX9_1.rotation
  SHX9_2 = SHX9_2.z
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX27_1 = true
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = Citizen
SHX24_1 = SHX24_1.CreateThread
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  while true do
    SHX0_2 = SHX9_1.enabled
    if not SHX0_2 then
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 500
      SHX0_2(SHX1_2)
    else
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 0
      SHX0_2(SHX1_2)
      SHX0_2 = 0.005
      SHX1_2 = 1.0
      SHX2_2 = IsControlPressed
      SHX3_2 = 0
      SHX4_2 = 21
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX0_2 = 0.02
        SHX1_2 = 5.0
      else
        SHX2_2 = IsControlPressed
        SHX3_2 = 0
        SHX4_2 = 36
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if SHX2_2 then
          SHX0_2 = 0.001
          SHX1_2 = 0.2
        end
      end
      SHX2_2 = IsControlPressed
      SHX3_2 = 0
      SHX4_2 = 19
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = IsControlJustPressed
      SHX4_2 = 0
      SHX5_2 = 172
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX4_2 = IsControlJustPressed
      SHX5_2 = 0
      SHX6_2 = 173
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      SHX5_2 = IsControlJustPressed
      SHX6_2 = 0
      SHX7_2 = 174
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX6_2 = IsControlJustPressed
      SHX7_2 = 0
      SHX8_2 = 175
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = IsControlJustPressed
      SHX8_2 = 0
      SHX9_2 = 44
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX8_2 = IsControlJustPressed
      SHX9_2 = 0
      SHX10_2 = 38
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = false
      if not SHX2_2 then
        if SHX5_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.offset
          SHX11_2 = SHX11_2.x
          SHX11_2 = SHX11_2 - SHX0_2
          SHX12_2 = SHX9_1.offset
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX9_1.offset
          SHX13_2 = SHX13_2.z
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.offset = SHX10_2
          SHX9_2 = true
        end
        if SHX6_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.offset
          SHX11_2 = SHX11_2.x
          SHX11_2 = SHX11_2 + SHX0_2
          SHX12_2 = SHX9_1.offset
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX9_1.offset
          SHX13_2 = SHX13_2.z
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.offset = SHX10_2
          SHX9_2 = true
        end
        if SHX3_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.offset
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX9_1.offset
          SHX12_2 = SHX12_2.y
          SHX12_2 = SHX12_2 + SHX0_2
          SHX13_2 = SHX9_1.offset
          SHX13_2 = SHX13_2.z
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.offset = SHX10_2
          SHX9_2 = true
        end
        if SHX4_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.offset
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX9_1.offset
          SHX12_2 = SHX12_2.y
          SHX12_2 = SHX12_2 - SHX0_2
          SHX13_2 = SHX9_1.offset
          SHX13_2 = SHX13_2.z
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.offset = SHX10_2
          SHX9_2 = true
        end
        if SHX7_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.offset
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX9_1.offset
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX9_1.offset
          SHX13_2 = SHX13_2.z
          SHX13_2 = SHX13_2 + SHX0_2
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.offset = SHX10_2
          SHX9_2 = true
        end
        if SHX8_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.offset
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX9_1.offset
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX9_1.offset
          SHX13_2 = SHX13_2.z
          SHX13_2 = SHX13_2 - SHX0_2
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.offset = SHX10_2
          SHX9_2 = true
        end
      else
        if SHX5_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.rotation
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX9_1.rotation
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX9_1.rotation
          SHX13_2 = SHX13_2.z
          SHX13_2 = SHX13_2 - SHX1_2
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.rotation = SHX10_2
          SHX9_2 = true
        end
        if SHX6_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.rotation
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX9_1.rotation
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX9_1.rotation
          SHX13_2 = SHX13_2.z
          SHX13_2 = SHX13_2 + SHX1_2
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.rotation = SHX10_2
          SHX9_2 = true
        end
        if SHX3_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.rotation
          SHX11_2 = SHX11_2.x
          SHX11_2 = SHX11_2 - SHX1_2
          SHX12_2 = SHX9_1.rotation
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX9_1.rotation
          SHX13_2 = SHX13_2.z
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.rotation = SHX10_2
          SHX9_2 = true
        end
        if SHX4_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.rotation
          SHX11_2 = SHX11_2.x
          SHX11_2 = SHX11_2 + SHX1_2
          SHX12_2 = SHX9_1.rotation
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX9_1.rotation
          SHX13_2 = SHX13_2.z
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.rotation = SHX10_2
          SHX9_2 = true
        end
        if SHX7_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.rotation
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX9_1.rotation
          SHX12_2 = SHX12_2.y
          SHX12_2 = SHX12_2 - SHX1_2
          SHX13_2 = SHX9_1.rotation
          SHX13_2 = SHX13_2.z
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.rotation = SHX10_2
          SHX9_2 = true
        end
        if SHX8_2 then
          SHX10_2 = vector3
          SHX11_2 = SHX9_1.rotation
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX9_1.rotation
          SHX12_2 = SHX12_2.y
          SHX12_2 = SHX12_2 + SHX1_2
          SHX13_2 = SHX9_1.rotation
          SHX13_2 = SHX13_2.z
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX9_1.rotation = SHX10_2
          SHX9_2 = true
        end
      end
      if SHX9_2 then
        SHX10_2 = SHX22_1
        SHX10_2()
      end
      SHX10_2 = SHX23_1
      SHX11_2 = 0.015
      SHX12_2 = 0.65
      SHX13_2 = "~y~CHAIN EDIT~w~ (%s)  /chainprint to copy"
      SHX14_2 = SHX13_2
      SHX13_2 = SHX13_2.format
      if SHX2_2 then
        SHX15_2 = "ROT"
        if SHX15_2 then
          goto SHX_LABEL_253
        end
      end
      SHX15_2 = "POS"
      -- [FIX IF ERROR] Move ::SHX_LABEL_253:: outside nested blocks until all 'goto SHX_LABEL_253' can see it
      ::SHX_LABEL_253::
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX10_2 = SHX23_1
      SHX11_2 = 0.015
      SHX12_2 = 0.675
      SHX13_2 = "bone=%d"
      SHX14_2 = SHX13_2
      SHX13_2 = SHX13_2.format
      SHX15_2 = SHX9_1.bone
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX10_2 = SHX23_1
      SHX11_2 = 0.015
      SHX12_2 = 0.7
      SHX13_2 = "off:  x=%.4f y=%.4f z=%.4f"
      SHX14_2 = SHX13_2
      SHX13_2 = SHX13_2.format
      SHX15_2 = SHX9_1.offset
      SHX15_2 = SHX15_2.x
      SHX16_2 = SHX9_1.offset
      SHX16_2 = SHX16_2.y
      SHX17_2 = SHX9_1.offset
      SHX17_2 = SHX17_2.z
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX10_2 = SHX23_1
      SHX11_2 = 0.015
      SHX12_2 = 0.725
      SHX13_2 = "rot:  x=%.2f y=%.2f z=%.2f"
      SHX14_2 = SHX13_2
      SHX13_2 = SHX13_2.format
      SHX15_2 = SHX9_1.rotation
      SHX15_2 = SHX15_2.x
      SHX16_2 = SHX9_1.rotation
      SHX16_2 = SHX16_2.y
      SHX17_2 = SHX9_1.rotation
      SHX17_2 = SHX17_2.z
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX10_2 = SHX23_1
      SHX11_2 = 0.015
      SHX12_2 = 0.75
      SHX13_2 = "Move: Arrows + Q/E | Rotate: hold ALT | SHIFT big | CTRL fine | /chainedit toggle"
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    end
  end
end
SHX24_1(SHX25_1)
