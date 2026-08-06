-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = false
SHX1_1 = {}
fullPlayerListData = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = 0
SHX4_1 = SetNuiFocus
SHX5_1 = false
SHX6_1 = false
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = {}
SHX4_1.HEMS = true
SHX4_1["Trainee Paramedic"] = true
SHX4_1.Paramedic = true
SHX4_1["Senior Paramedic"] = true
SHX4_1["Advanced Paramedic"] = true
SHX4_1["NHS Paramedic"] = true
SHX4_1["NHS Senior Paramedic"] = true
SHX4_1["NHS Advanced Paramedic"] = true
SHX4_1["NHS Critical Care"] = true
SHX4_1["Medical Student"] = true
SHX4_1.Nurse = true
SHX4_1.Doctor = true
SHX4_1["Senior Doctor"] = true
SHX4_1.Physician = true
SHX4_1.Surgeon = true
SHX4_1.Specialist = true
SHX4_1.Consultant = true
SHX4_1["Clinical Lead"] = true
SHX4_1["Honourable Doctor"] = true
SHX4_1["Medical Advisor"] = true
SHX4_1["Assistant Medical Director"] = true
SHX4_1["Deputy Medical Director"] = true
SHX4_1["Head Medical Director"] = true
SHX4_1["NHS Medical Student"] = true
SHX4_1["NHS Nurse"] = true
SHX4_1["NHS Junior Doctor"] = true
SHX4_1["NHS Doctor"] = true
SHX4_1["NHS Senior Doctor"] = true
SHX4_1["NHS Physician"] = true
SHX4_1["NHS Surgeon"] = true
SHX4_1["NHS Specialist"] = true
SHX4_1["NHS Consultant"] = true
SHX4_1["NHS Clinical Lead"] = true
SHX4_1["NHS Honourable Doctor"] = true
SHX4_1["NHS Medical Advisor"] = true
SHX4_1["NHS Deputy Chief"] = true
SHX4_1["NHS Assistant Chief"] = true
SHX4_1["NHS Head Chief"] = true
SHX5_1 = {}
SHX5_1["Trainee Firefighter"] = true
SHX5_1.Firefighter = true
SHX5_1["Crew Manager"] = true
SHX5_1["Watch Manager"] = true
SHX5_1["Station Manager"] = true
SHX5_1["Group Manager"] = true
SHX5_1["Area Manager"] = true
SHX5_1["Sector Command"] = true
SHX5_1["Divisional Command"] = true
SHX5_1["Divisional Officer"] = true
SHX5_1["Honourable Firefighter"] = true
SHX5_1["Fire Command Advisor"] = true
SHX5_1["Assistant Chief Fire Officer"] = true
SHX5_1["Deputy Chief Fire Officer"] = true
SHX5_1["Chief Fire Officer"] = true
SHX6_1 = {}
SHX6_1["Deputy Commissioner"] = true
SHX6_1.Sergeant = true
SHX6_1.Cleaner = true
SHX6_1["Custody Sergeant"] = true
SHX6_1.PCSO = true
SHX6_1.PC = true
SHX6_1.Inspector = true
SHX6_1.Superintendent = true
SHX6_1.Commissioner = true
SHX6_1["Chief Inspector"] = true
SHX6_1["Chief Superintendent"] = true
SHX6_1["GC Advisor"] = true
SHX6_1.Commander = true
SHX6_1["Dep. Asst. Commissioner"] = true
SHX6_1["Assistant Commissioner"] = true
SHX6_1["Special Constable"] = true
SHX6_1.NPAS = true
SHX7_1 = {}
SHX7_1.Governor = true
SHX7_1["Deputy Governor"] = true
SHX7_1["Divisional Commander"] = true
SHX7_1["Custodial Supervisor"] = true
SHX7_1["Custodial Officer"] = true
SHX7_1["HMP Advisor"] = true
SHX7_1["Honourable Guard"] = true
SHX7_1["Supervising Officer"] = true
SHX7_1["Principal Officer"] = true
SHX7_1["Specialist Officer"] = true
SHX7_1["Senior Officer"] = true
SHX7_1["Prison Officer"] = true
SHX7_1["Trainee Prison Officer"] = true
SHX7_1["HMP Transport"] = true
SHX8_1 = {}
SHX8_1["Director General"] = true
SHX8_1["Regional Director"] = true
SHX8_1["Assistant Director"] = true
SHX8_1["UKBF Advisor"] = true
SHX8_1["Special Officer"] = true
SHX8_1["HM Inspector"] = true
SHX8_1["Chief Immigration Officer"] = true
SHX8_1["Senior Immigration Officer"] = true
SHX8_1["Higher Immigration Officer"] = true
SHX8_1["Immigration Officer"] = true
SHX8_1["Assistant Immigration Officer"] = true
SHX8_1["Administrative Assistant"] = true
SHX9_1 = CMG
function SHX10_1()
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
SHX9_1.getSortedFullPlayerListData = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = 0
  end
  return SHX1_2
end
SHX9_1.clientGetUserIdFromSource = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = fullPlayerListData
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX2_2 = fullPlayerListData
      SHX2_2 = SHX2_2[SHX1_2]
      SHX2_2 = SHX2_2[5]
      return SHX2_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX9_1.clientGetPlayerIsStaff = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = fullPlayerListData
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = fullPlayerListData
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2[3]
    SHX2_2 = SHX4_1
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX2_2 = "nhs"
      SHX3_2 = SHX1_2
      return SHX2_2, SHX3_2
    else
      SHX2_2 = SHX5_1
      SHX2_2 = SHX2_2[SHX1_2]
      if SHX2_2 then
        SHX2_2 = "lfb"
        SHX3_2 = SHX1_2
        return SHX2_2, SHX3_2
      else
        SHX2_2 = SHX7_1
        SHX2_2 = SHX2_2[SHX1_2]
        if SHX2_2 then
          SHX2_2 = "hmp"
          SHX3_2 = SHX1_2
          return SHX2_2, SHX3_2
        else
          SHX2_2 = SHX8_1
          SHX2_2 = SHX2_2[SHX1_2]
          if SHX2_2 then
            SHX2_2 = "borderforce"
            SHX3_2 = SHX1_2
            return SHX2_2, SHX3_2
          else
            SHX2_2 = SHX6_1
            SHX2_2 = SHX2_2[SHX1_2]
            if SHX2_2 then
              SHX2_2 = "metpd"
              SHX3_2 = SHX1_2
              return SHX2_2, SHX3_2
            elseif "Mechanic" == SHX1_2 then
              SHX2_2 = "aa"
              SHX3_2 = SHX1_2
              return SHX2_2, SHX3_2
            elseif "CID" == SHX1_2 or "Trident" == SHX1_2 or "CTSFO" == SHX1_2 then
              SHX2_2 = "metpd"
              SHX3_2 = SHX1_2
              return SHX2_2, SHX3_2
            else
              SHX2_2 = ""
              SHX3_2 = SHX1_2
              return SHX2_2, SHX3_2
            end
          end
        end
      end
    end
  else
    SHX1_2 = ""
    SHX2_2 = ""
    return SHX1_2, SHX2_2
  end
end
SHX9_1.getJobType = SHX10_1
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = {}
  SHX4_2 = {}
  SHX5_2 = {}
  SHX6_2 = {}
  SHX7_2 = {}
  SHX8_2 = {}
  SHX9_2 = {}
  SHX10_2 = {}
  SHX11_2 = 0
  SHX12_2 = pairs
  SHX13_2 = SHX0_2
  SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
  for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
    if "_meta" == SHX16_2 then
      SHX10_2 = SHX17_2
    else
      SHX18_2 = CMG
      SHX18_2 = SHX18_2.isUserHidden
      SHX19_2 = SHX16_2
      SHX18_2 = SHX18_2(SHX19_2)
      if not SHX18_2 then
        SHX18_2 = table
        SHX18_2 = SHX18_2.unpack
        SHX19_2 = SHX17_2
        SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX18_2(SHX19_2)
        SHX23_2 = SHX4_1
        SHX23_2 = SHX23_2[SHX20_2]
        if SHX23_2 then
          SHX3_2[SHX16_2] = SHX17_2
        else
          SHX23_2 = SHX5_1
          SHX23_2 = SHX23_2[SHX20_2]
          if SHX23_2 then
            SHX4_2[SHX16_2] = SHX17_2
          else
            SHX23_2 = SHX7_1
            SHX23_2 = SHX23_2[SHX20_2]
            if SHX23_2 then
              SHX5_2[SHX16_2] = SHX17_2
            else
              SHX23_2 = SHX6_1
              SHX23_2 = SHX23_2[SHX20_2]
              if SHX23_2 then
                SHX2_2[SHX16_2] = SHX17_2
                SHX11_2 = SHX11_2 + 1
              elseif "Mechanic" == SHX20_2 then
                SHX7_2[SHX16_2] = SHX17_2
              else
                SHX23_2 = SHX8_1
                SHX23_2 = SHX23_2[SHX20_2]
                if SHX23_2 then
                  SHX9_2[SHX16_2] = SHX17_2
                elseif "Vigilante" == SHX20_2 then
                  SHX8_2[SHX16_2] = SHX17_2
                  SHX6_2[SHX16_2] = SHX17_2
                else
                  if "CID" == SHX20_2 or "CTSFO" == SHX20_2 or "Trident" == SHX20_2 then
                    SHX11_2 = SHX11_2 + 1
                  end
                  SHX6_2[SHX16_2] = SHX17_2
                end
              end
            end
          end
        end
        if SHX22_2 then
          SHX1_2[SHX16_2] = SHX17_2
        end
      end
    end
  end
  SHX12_2 = SHX1_2
  SHX13_2 = SHX2_2
  SHX14_2 = SHX3_2
  SHX15_2 = SHX4_2
  SHX16_2 = SHX5_2
  SHX17_2 = SHX7_2
  SHX18_2 = SHX8_2
  SHX19_2 = SHX9_2
  SHX20_2 = SHX6_2
  SHX21_2 = SHX10_2
  SHX22_2 = SHX11_2
  return SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = type
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2(SHX9_2)
    if "number" == SHX8_2 then
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX1_2
      SHX10_2 = SHX6_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  return SHX1_2
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "CID" == SHX0_2 or "Vigilante" == SHX0_2 or "Trident" == SHX0_2 or "CTSFO" == SHX0_2 then
    SHX1_2 = "Unemployed"
    return SHX1_2
  end
  return SHX0_2
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.unpack
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2)
  SHX7_2 = SHX5_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX6_2 or SHX9_2
  if not SHX6_2 then
    SHX9_2 = SHX3_2
  end
  SHX10_2 = SHX4_2
  return SHX7_2, SHX8_2, SHX9_2, SHX10_2
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2, SHX45_2, SHX46_2, SHX47_2, SHX48_2, SHX49_2, SHX50_2, SHX51_2, SHX52_2, SHX53_2, SHX54_2, SHX55_2, SHX56_2
  SHX0_2 = SHX9_1
  SHX1_2 = fullPlayerListData
  SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX0_2(SHX1_2)
  SHX11_2 = SHX10_1
  SHX12_2 = SHX0_2
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = SHX10_1
  SHX13_2 = SHX1_2
  SHX12_2 = SHX12_2(SHX13_2)
  SHX13_2 = SHX10_1
  SHX14_2 = SHX2_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = SHX10_1
  SHX15_2 = SHX3_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = SHX10_1
  SHX16_2 = SHX4_2
  SHX15_2 = SHX15_2(SHX16_2)
  SHX16_2 = SHX10_1
  SHX17_2 = SHX5_2
  SHX16_2 = SHX16_2(SHX17_2)
  SHX17_2 = SHX10_1
  SHX18_2 = SHX6_2
  SHX17_2 = SHX17_2(SHX18_2)
  SHX18_2 = SHX10_1
  SHX19_2 = SHX8_2
  SHX18_2 = SHX18_2(SHX19_2)
  SHX19_2 = SHX10_1
  SHX20_2 = SHX7_2
  SHX19_2 = SHX19_2(SHX20_2)
  SHX20_2 = #SHX11_2
  SHX21_2 = #SHX13_2
  SHX22_2 = #SHX14_2
  SHX23_2 = #SHX15_2
  SHX24_2 = #SHX16_2
  SHX25_2 = #SHX17_2
  SHX26_2 = #SHX19_2
  SHX27_2 = #SHX18_2
  SHX28_2 = 0
  SHX29_2 = 0
  SHX30_2 = 0
  SHX31_2 = 0
  SHX32_2 = 0
  SHX33_2 = ipairs
  SHX34_2 = SHX11_2
  SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX33_2(SHX34_2)
  for SHX37_2, SHX38_2 in SHX33_2, SHX34_2, SHX35_2, SHX36_2 do
    SHX39_2 = table
    SHX39_2 = SHX39_2.unpack
    SHX40_2 = SHX0_2[SHX38_2]
    SHX39_2, SHX40_2, SHX41_2 = SHX39_2(SHX40_2)
    SHX42_2 = SHX4_1
    SHX42_2 = SHX42_2[SHX41_2]
    if SHX42_2 then
      SHX29_2 = SHX29_2 + 1
    end
    SHX42_2 = SHX5_1
    SHX42_2 = SHX42_2[SHX41_2]
    if SHX42_2 then
      SHX30_2 = SHX30_2 + 1
    end
    SHX42_2 = SHX7_1
    SHX42_2 = SHX42_2[SHX41_2]
    if SHX42_2 then
      SHX31_2 = SHX31_2 + 1
    end
    SHX42_2 = SHX6_1
    SHX42_2 = SHX42_2[SHX41_2]
    if SHX42_2 then
      SHX28_2 = SHX28_2 + 1
    else
      SHX32_2 = SHX32_2 + 1
    end
  end
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX34_2.wipePlayerList = true
  SHX33_2(SHX34_2)
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX34_2.clearServerMetaData = true
  SHX33_2(SHX34_2)
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX35_2 = "<img src=\"cmg.webp\" align=\"top\" width=\"20px\",height=\"20px\"><span class=\"staff\">"
  SHX36_2 = tostring
  SHX37_2 = SHX20_2
  SHX36_2 = SHX36_2(SHX37_2)
  SHX37_2 = "</span>"
  SHX35_2 = SHX35_2 .. SHX36_2 .. SHX37_2
  SHX34_2.setServerMetaData = SHX35_2
  SHX33_2(SHX34_2)
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX35_2 = "<img src=\"nhs.webp\" align=\"top\" width=\"20\",height=\"20\"><span class=\"nhs\">"
  SHX36_2 = tostring
  SHX37_2 = SHX21_2
  SHX36_2 = SHX36_2(SHX37_2)
  SHX37_2 = "</span>"
  SHX35_2 = SHX35_2 .. SHX36_2 .. SHX37_2
  SHX34_2.setServerMetaData = SHX35_2
  SHX33_2(SHX34_2)
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX35_2 = "<img src=\"met.webp\" align=\"top\"  width=\"24\",height=\"24\"><span class=\"police\">"
  SHX36_2 = tostring
  SHX37_2 = SHX10_2
  SHX36_2 = SHX36_2(SHX37_2)
  SHX37_2 = "</span>"
  SHX35_2 = SHX35_2 .. SHX36_2 .. SHX37_2
  SHX34_2.setServerMetaData = SHX35_2
  SHX33_2(SHX34_2)
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX35_2 = "<img src=\"hmp.webp\" align=\"top\"  width=\"24\",height=\"24\"><span class=\"hmp\">"
  SHX36_2 = tostring
  SHX37_2 = SHX23_2
  SHX36_2 = SHX36_2(SHX37_2)
  SHX37_2 = "</span>"
  SHX35_2 = SHX35_2 .. SHX36_2 .. SHX37_2
  SHX34_2.setServerMetaData = SHX35_2
  SHX33_2(SHX34_2)
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX35_2 = "<img src=\"aa.webp\" align=\"top\" width=\"20\",height=\"20\"><span class=\"aa\">"
  SHX36_2 = tostring
  SHX37_2 = SHX24_2
  SHX36_2 = SHX36_2(SHX37_2)
  SHX37_2 = "</span>"
  SHX35_2 = SHX35_2 .. SHX36_2 .. SHX37_2
  SHX34_2.setServerMetaData = SHX35_2
  SHX33_2(SHX34_2)
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX35_2 = "<img src=\"vigilante.webp\" align=\"top\" width=\"20\",height=\"20\"><span class=\"vigilante\">"
  SHX36_2 = tostring
  SHX37_2 = SHX25_2
  SHX36_2 = SHX36_2(SHX37_2)
  SHX37_2 = "</span>"
  SHX35_2 = SHX35_2 .. SHX36_2 .. SHX37_2
  SHX34_2.setServerMetaData = SHX35_2
  SHX33_2(SHX34_2)
  SHX33_2 = SendNUIMessage
  SHX34_2 = {}
  SHX35_2 = "<img src=\"danny.webp\" align=\"top\" width=\"20\",height=\"20\"><span class=\"civilians\">"
  SHX36_2 = tostring
  SHX37_2 = SHX27_2
  SHX36_2 = SHX36_2(SHX37_2)
  SHX37_2 = "</span>"
  SHX35_2 = SHX35_2 .. SHX36_2 .. SHX37_2
  SHX34_2.setServerMetaData = SHX35_2
  SHX33_2(SHX34_2)
  SHX33_2 = table
  SHX33_2 = SHX33_2.unpack
  SHX34_2 = SHX9_2
  SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2 = SHX33_2(SHX34_2)
  SHX38_2 = SendNUIMessage
  SHX39_2 = {}
  SHX39_2.wipeFooterPlayerList = true
  SHX38_2(SHX39_2)
  SHX38_2 = SendNUIMessage
  SHX39_2 = {}
  SHX40_2 = "<span class=\"foot\">Server #"
  SHX41_2 = tostring
  SHX42_2 = SHX37_2
  SHX41_2 = SHX41_2(SHX42_2)
  SHX42_2 = " | </span>"
  SHX40_2 = SHX40_2 .. SHX41_2 .. SHX42_2
  SHX39_2.appendToFooterPlayerList = SHX40_2
  SHX38_2(SHX39_2)
  SHX38_2 = SendNUIMessage
  SHX39_2 = {}
  SHX40_2 = "<span class=\"foot\" style=\"color: rgb(0, 255, 20);\">Server uptime "
  SHX41_2 = tostring
  SHX42_2 = SHX33_2
  SHX41_2 = SHX41_2(SHX42_2)
  SHX42_2 = "</span>"
  SHX40_2 = SHX40_2 .. SHX41_2 .. SHX42_2
  SHX39_2.appendToFooterPlayerList = SHX40_2
  SHX38_2(SHX39_2)
  SHX38_2 = SendNUIMessage
  SHX39_2 = {}
  SHX40_2 = "<span class=\"foot\">  |  Number of players "
  SHX41_2 = tostring
  SHX42_2 = SHX34_2
  SHX41_2 = SHX41_2(SHX42_2)
  SHX42_2 = "/"
  SHX43_2 = tostring
  SHX44_2 = SHX36_2
  SHX43_2 = SHX43_2(SHX44_2)
  SHX44_2 = "</span>"
  SHX40_2 = SHX40_2 .. SHX41_2 .. SHX42_2 .. SHX43_2 .. SHX44_2
  SHX39_2.appendToFooterPlayerList = SHX40_2
  SHX38_2(SHX39_2)
  if SHX20_2 >= 1 then
    SHX38_2 = SendNUIMessage
    SHX39_2 = {}
    SHX39_2.appendToContentPlayerList = "<span id=\"playerlist_seperator_staff\">Staff</span>"
    SHX38_2(SHX39_2)
  end
  SHX38_2 = ipairs
  SHX39_2 = SHX11_2
  SHX38_2, SHX39_2, SHX40_2, SHX41_2 = SHX38_2(SHX39_2)
  for SHX42_2, SHX43_2 in SHX38_2, SHX39_2, SHX40_2, SHX41_2 do
    SHX44_2 = SHX12_1
    SHX45_2 = SHX0_2[SHX43_2]
    SHX44_2, SHX45_2, SHX46_2, SHX47_2 = SHX44_2(SHX45_2)
    SHX48_2 = SHX11_1
    SHX49_2 = SHX46_2
    SHX48_2 = SHX48_2(SHX49_2)
    SHX46_2 = SHX48_2
    SHX48_2 = SendNUIMessage
    SHX49_2 = {}
    SHX50_2 = "<span class=\"username\">"
    SHX51_2 = tostring
    SHX52_2 = SHX45_2
    SHX51_2 = SHX51_2(SHX52_2)
    SHX52_2 = "</span><span class=\"job\">"
    SHX53_2 = tostring
    SHX54_2 = SHX46_2
    SHX53_2 = SHX53_2(SHX54_2)
    SHX54_2 = "</span><span class=\"playtime\">"
    SHX55_2 = getMoneyStringFormatted
    SHX56_2 = SHX47_2
    SHX55_2 = SHX55_2(SHX56_2)
    SHX56_2 = " hrs</span><br/>"
    SHX50_2 = SHX50_2 .. SHX51_2 .. SHX52_2 .. SHX53_2 .. SHX54_2 .. SHX55_2 .. SHX56_2
    SHX49_2.appendToContentPlayerList = SHX50_2
    SHX48_2(SHX49_2)
  end
  if SHX10_2 >= 1 then
    SHX38_2 = SendNUIMessage
    SHX39_2 = {}
    SHX39_2.appendToContentPlayerList = "<span id=\"playerlist_seperator_police\">Police Service</span>"
    SHX38_2(SHX39_2)
  end
  SHX38_2 = ipairs
  SHX39_2 = SHX12_2
  SHX38_2, SHX39_2, SHX40_2, SHX41_2 = SHX38_2(SHX39_2)
  for SHX42_2, SHX43_2 in SHX38_2, SHX39_2, SHX40_2, SHX41_2 do
    SHX44_2 = SHX12_1
    SHX45_2 = SHX1_2[SHX43_2]
    SHX44_2, SHX45_2, SHX46_2, SHX47_2 = SHX44_2(SHX45_2)
    SHX48_2 = SendNUIMessage
    SHX49_2 = {}
    SHX50_2 = "<span class=\"username\">"
    SHX51_2 = tostring
    SHX52_2 = SHX45_2
    SHX51_2 = SHX51_2(SHX52_2)
    SHX52_2 = "</span><span class=\"job\">"
    SHX53_2 = tostring
    SHX54_2 = SHX46_2
    SHX53_2 = SHX53_2(SHX54_2)
    SHX54_2 = "</span><span class=\"playtime\">"
    SHX55_2 = getMoneyStringFormatted
    SHX56_2 = SHX47_2
    SHX55_2 = SHX55_2(SHX56_2)
    SHX56_2 = " hrs</span><br/>"
    SHX50_2 = SHX50_2 .. SHX51_2 .. SHX52_2 .. SHX53_2 .. SHX54_2 .. SHX55_2 .. SHX56_2
    SHX49_2.appendToContentPlayerList = SHX50_2
    SHX48_2(SHX49_2)
  end
  if SHX21_2 >= 1 then
    SHX38_2 = SendNUIMessage
    SHX39_2 = {}
    SHX39_2.appendToContentPlayerList = "<span id=\"playerlist_seperator_nhs\">Health Service</span>"
    SHX38_2(SHX39_2)
  end
  SHX38_2 = ipairs
  SHX39_2 = SHX13_2
  SHX38_2, SHX39_2, SHX40_2, SHX41_2 = SHX38_2(SHX39_2)
  for SHX42_2, SHX43_2 in SHX38_2, SHX39_2, SHX40_2, SHX41_2 do
    SHX44_2 = SHX12_1
    SHX45_2 = SHX2_2[SHX43_2]
    SHX44_2, SHX45_2, SHX46_2, SHX47_2 = SHX44_2(SHX45_2)
    SHX48_2 = SendNUIMessage
    SHX49_2 = {}
    SHX50_2 = "<span class=\"username\">"
    SHX51_2 = tostring
    SHX52_2 = SHX45_2
    SHX51_2 = SHX51_2(SHX52_2)
    SHX52_2 = "</span><span class=\"job\">"
    SHX53_2 = tostring
    SHX54_2 = SHX46_2
    SHX53_2 = SHX53_2(SHX54_2)
    SHX54_2 = "</span><span class=\"playtime\">"
    SHX55_2 = getMoneyStringFormatted
    SHX56_2 = SHX47_2
    SHX55_2 = SHX55_2(SHX56_2)
    SHX56_2 = " hrs</span><br/>"
    SHX50_2 = SHX50_2 .. SHX51_2 .. SHX52_2 .. SHX53_2 .. SHX54_2 .. SHX55_2 .. SHX56_2
    SHX49_2.appendToContentPlayerList = SHX50_2
    SHX48_2(SHX49_2)
  end
  if SHX22_2 >= 1 then
    SHX38_2 = SendNUIMessage
    SHX39_2 = {}
    SHX39_2.appendToContentPlayerList = "<span id=\"playerlist_seperator_lfb\">LFB</span>"
    SHX38_2(SHX39_2)
  end
  SHX38_2 = ipairs
  SHX39_2 = SHX14_2
  SHX38_2, SHX39_2, SHX40_2, SHX41_2 = SHX38_2(SHX39_2)
  for SHX42_2, SHX43_2 in SHX38_2, SHX39_2, SHX40_2, SHX41_2 do
    SHX44_2 = SHX12_1
    SHX45_2 = SHX3_2[SHX43_2]
    SHX44_2, SHX45_2, SHX46_2, SHX47_2 = SHX44_2(SHX45_2)
    SHX48_2 = SendNUIMessage
    SHX49_2 = {}
    SHX50_2 = "<span class=\"username\">"
    SHX51_2 = tostring
    SHX52_2 = SHX45_2
    SHX51_2 = SHX51_2(SHX52_2)
    SHX52_2 = "</span><span class=\"job\">"
    SHX53_2 = tostring
    SHX54_2 = SHX46_2
    SHX53_2 = SHX53_2(SHX54_2)
    SHX54_2 = "</span><span class=\"playtime\">"
    SHX55_2 = getMoneyStringFormatted
    SHX56_2 = SHX47_2
    SHX55_2 = SHX55_2(SHX56_2)
    SHX56_2 = " hrs</span><br/>"
    SHX50_2 = SHX50_2 .. SHX51_2 .. SHX52_2 .. SHX53_2 .. SHX54_2 .. SHX55_2 .. SHX56_2
    SHX49_2.appendToContentPlayerList = SHX50_2
    SHX48_2(SHX49_2)
  end
  if SHX23_2 >= 1 then
    SHX38_2 = SendNUIMessage
    SHX39_2 = {}
    SHX39_2.appendToContentPlayerList = "<span id=\"playerlist_seperator_hmp\">Prison Service</span>"
    SHX38_2(SHX39_2)
  end
  SHX38_2 = ipairs
  SHX39_2 = SHX15_2
  SHX38_2, SHX39_2, SHX40_2, SHX41_2 = SHX38_2(SHX39_2)
  for SHX42_2, SHX43_2 in SHX38_2, SHX39_2, SHX40_2, SHX41_2 do
    SHX44_2 = SHX12_1
    SHX45_2 = SHX4_2[SHX43_2]
    SHX44_2, SHX45_2, SHX46_2, SHX47_2 = SHX44_2(SHX45_2)
    SHX48_2 = SendNUIMessage
    SHX49_2 = {}
    SHX50_2 = "<span class=\"username\">"
    SHX51_2 = tostring
    SHX52_2 = SHX45_2
    SHX51_2 = SHX51_2(SHX52_2)
    SHX52_2 = "</span><span class=\"job\">"
    SHX53_2 = tostring
    SHX54_2 = SHX46_2
    SHX53_2 = SHX53_2(SHX54_2)
    SHX54_2 = "</span><span class=\"playtime\">"
    SHX55_2 = getMoneyStringFormatted
    SHX56_2 = SHX47_2
    SHX55_2 = SHX55_2(SHX56_2)
    SHX56_2 = " hrs</span><br/>"
    SHX50_2 = SHX50_2 .. SHX51_2 .. SHX52_2 .. SHX53_2 .. SHX54_2 .. SHX55_2 .. SHX56_2
    SHX49_2.appendToContentPlayerList = SHX50_2
    SHX48_2(SHX49_2)
  end
  if SHX26_2 >= 1 then
    SHX38_2 = SendNUIMessage
    SHX39_2 = {}
    SHX39_2.appendToContentPlayerList = "<span id=\"playerlist_seperator_ukbf\">Border Force</span>"
    SHX38_2(SHX39_2)
  end
  SHX38_2 = ipairs
  SHX39_2 = SHX19_2
  SHX38_2, SHX39_2, SHX40_2, SHX41_2 = SHX38_2(SHX39_2)
  for SHX42_2, SHX43_2 in SHX38_2, SHX39_2, SHX40_2, SHX41_2 do
    SHX44_2 = SHX12_1
    SHX45_2 = SHX7_2[SHX43_2]
    SHX44_2, SHX45_2, SHX46_2, SHX47_2 = SHX44_2(SHX45_2)
    SHX48_2 = SendNUIMessage
    SHX49_2 = {}
    SHX50_2 = "<span class=\"username\">"
    SHX51_2 = tostring
    SHX52_2 = SHX45_2
    SHX51_2 = SHX51_2(SHX52_2)
    SHX52_2 = "</span><span class=\"job\">"
    SHX53_2 = tostring
    SHX54_2 = SHX46_2
    SHX53_2 = SHX53_2(SHX54_2)
    SHX54_2 = "</span><span class=\"playtime\">"
    SHX55_2 = getMoneyStringFormatted
    SHX56_2 = SHX47_2
    SHX55_2 = SHX55_2(SHX56_2)
    SHX56_2 = " hrs</span><br/>"
    SHX50_2 = SHX50_2 .. SHX51_2 .. SHX52_2 .. SHX53_2 .. SHX54_2 .. SHX55_2 .. SHX56_2
    SHX49_2.appendToContentPlayerList = SHX50_2
    SHX48_2(SHX49_2)
  end
  if SHX24_2 >= 1 then
    SHX38_2 = SendNUIMessage
    SHX39_2 = {}
    SHX39_2.appendToContentPlayerList = "<span id=\"playerlist_seperator_aa\">Mechanics</span>"
    SHX38_2(SHX39_2)
  end
  SHX38_2 = ipairs
  SHX39_2 = SHX16_2
  SHX38_2, SHX39_2, SHX40_2, SHX41_2 = SHX38_2(SHX39_2)
  for SHX42_2, SHX43_2 in SHX38_2, SHX39_2, SHX40_2, SHX41_2 do
    SHX44_2 = SHX12_1
    SHX45_2 = SHX5_2[SHX43_2]
    SHX44_2, SHX45_2, SHX46_2, SHX47_2 = SHX44_2(SHX45_2)
    SHX48_2 = SendNUIMessage
    SHX49_2 = {}
    SHX50_2 = "<span class=\"username\">"
    SHX51_2 = tostring
    SHX52_2 = SHX45_2
    SHX51_2 = SHX51_2(SHX52_2)
    SHX52_2 = "</span><span class=\"job\">"
    SHX53_2 = tostring
    SHX54_2 = SHX46_2
    SHX53_2 = SHX53_2(SHX54_2)
    SHX54_2 = "</span><span class=\"playtime\">"
    SHX55_2 = getMoneyStringFormatted
    SHX56_2 = SHX47_2
    SHX55_2 = SHX55_2(SHX56_2)
    SHX56_2 = " hrs</span><br/>"
    SHX50_2 = SHX50_2 .. SHX51_2 .. SHX52_2 .. SHX53_2 .. SHX54_2 .. SHX55_2 .. SHX56_2
    SHX49_2.appendToContentPlayerList = SHX50_2
    SHX48_2(SHX49_2)
  end
  if SHX27_2 >= 1 then
    SHX38_2 = SendNUIMessage
    SHX39_2 = {}
    SHX39_2.appendToContentPlayerList = "<span id=\"playerlist_seperator_civs\">Civilians</span>"
    SHX38_2(SHX39_2)
  end
  SHX38_2 = ipairs
  SHX39_2 = SHX18_2
  SHX38_2, SHX39_2, SHX40_2, SHX41_2 = SHX38_2(SHX39_2)
  for SHX42_2, SHX43_2 in SHX38_2, SHX39_2, SHX40_2, SHX41_2 do
    SHX44_2 = SHX12_1
    SHX45_2 = SHX8_2[SHX43_2]
    SHX44_2, SHX45_2, SHX46_2, SHX47_2 = SHX44_2(SHX45_2)
    SHX48_2 = SHX11_1
    SHX49_2 = SHX46_2
    SHX48_2 = SHX48_2(SHX49_2)
    SHX46_2 = SHX48_2
    SHX48_2 = SendNUIMessage
    SHX49_2 = {}
    SHX50_2 = "<span class=\"username\">"
    SHX51_2 = tostring
    SHX52_2 = SHX45_2
    SHX51_2 = SHX51_2(SHX52_2)
    SHX52_2 = "</span><span class=\"job\">"
    SHX53_2 = tostring
    SHX54_2 = SHX46_2
    SHX53_2 = SHX53_2(SHX54_2)
    SHX54_2 = "</span><span class=\"playtime\">"
    SHX55_2 = getMoneyStringFormatted
    SHX56_2 = SHX47_2
    SHX55_2 = SHX55_2(SHX56_2)
    SHX56_2 = " hrs</span><br/>"
    SHX50_2 = SHX50_2 .. SHX51_2 .. SHX52_2 .. SHX53_2 .. SHX54_2 .. SHX55_2 .. SHX56_2
    SHX49_2.appendToContentPlayerList = SHX50_2
    SHX48_2(SHX49_2)
  end
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isUsingKeyboard
  SHX1_2 = 2
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX0_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isNewPlayer
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX0_2 = drawNativeNotification
        SHX1_2 = "Press ~INPUT_FRONTEND_SOCIAL_CLUB~ to toggle the home menu."
        SHX0_2(SHX1_2)
      end
    end
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 212
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX3_1
      SHX0_2 = SHX0_2 - SHX1_2
      SHX1_2 = 1000
      if SHX0_2 > SHX1_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.canPlayerOpenLeaderboard
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = SHX0_1
          SHX0_2 = not SHX0_2
          SHX0_1 = SHX0_2
          SHX0_2 = SHX13_1
          SHX0_2()
          SHX0_2 = SetNuiFocus
          SHX1_2 = true
          SHX2_2 = true
          SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = SendNUIMessage
          SHX1_2 = {}
          SHX1_2.showPlayerList = true
          SHX0_2(SHX1_2)
          SHX0_2 = GetGameTimer
          SHX0_2 = SHX0_2()
          SHX3_1 = SHX0_2
        end
      end
    end
  end
end
SHX15_1 = CMG
SHX15_1 = SHX15_1.createThreadOnTick
SHX16_1 = SHX14_1
SHX17_1 = "Player List Controls"
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNUICallback
SHX16_1 = "closeCMGPlayerList"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SetNuiFocus
    SHX1_2 = false
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = false
    SHX0_1 = SHX0_2
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = AddEventHandler
SHX16_1 = "CMG:onClientSpawn"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "120fba9e89"
    SHX2_2(SHX3_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "9655ebd710"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  fullPlayerListData = SHX0_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if "_meta" ~= SHX5_2 then
      SHX8_2 = SHX6_2[1]
      SHX7_2 = SHX2_1
      SHX7_2[SHX8_2] = SHX5_2
    end
  end
  SHX1_2 = SHX10_1
  SHX2_2 = fullPlayerListData
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_1 = SHX1_2
  SHX1_2 = SHX13_1
  SHX1_2()
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "850f6ce5d9"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.unpack
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX1_2(SHX2_2)
  SHX8_2 = fullPlayerListData
  SHX9_2 = {}
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX13_2 = SHX5_2
  SHX14_2 = SHX6_2
  SHX15_2 = SHX7_2
  SHX9_2[1] = SHX10_2
  SHX9_2[2] = SHX11_2
  SHX9_2[3] = SHX12_2
  SHX9_2[4] = SHX13_2
  SHX9_2[5] = SHX14_2
  SHX9_2[6] = SHX15_2
  SHX8_2[SHX1_2] = SHX9_2
  SHX8_2 = SHX2_1
  SHX8_2[SHX2_2] = SHX1_2
  SHX8_2 = SHX10_1
  SHX9_2 = fullPlayerListData
  SHX8_2 = SHX8_2(SHX9_2)
  SHX1_1 = SHX8_2
  SHX8_2 = fullPlayerListData
  SHX8_2 = SHX8_2._meta
  if SHX8_2 then
    SHX8_2 = fullPlayerListData
    SHX8_2 = SHX8_2._meta
    SHX9_2 = table
    SHX9_2 = SHX9_2.count
    SHX10_2 = SHX1_1
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2[2] = SHX9_2
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "9d9f92b5ce"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = fullPlayerListData
  SHX1_2[SHX0_2] = nil
  SHX1_2 = SHX10_1
  SHX2_2 = fullPlayerListData
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_1 = SHX1_2
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "30043bf5b4"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.unpack
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2)
  SHX6_2 = fullPlayerListData
  SHX7_2 = {}
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX5_2
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX7_2[4] = SHX11_2
  SHX7_2[5] = SHX12_2
  SHX6_2._meta = SHX7_2
  SHX6_2 = SendNUIMessage
  SHX7_2 = {}
  SHX7_2.wipeFooterPlayerList = true
  SHX6_2(SHX7_2)
  SHX6_2 = SendNUIMessage
  SHX7_2 = {}
  SHX8_2 = "<span class=\"foot\">Server #"
  SHX9_2 = tostring
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = " | </span>"
  SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
  SHX7_2.appendToFooterPlayerList = SHX8_2
  SHX6_2(SHX7_2)
  SHX6_2 = SendNUIMessage
  SHX7_2 = {}
  SHX8_2 = "<span class=\"foot\" style=\"color: rgb(0, 255, 20);\">Server uptime "
  SHX9_2 = tostring
  SHX10_2 = SHX1_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = "</span>"
  SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
  SHX7_2.appendToFooterPlayerList = SHX8_2
  SHX6_2(SHX7_2)
  SHX6_2 = SendNUIMessage
  SHX7_2 = {}
  SHX8_2 = "<span class=\"foot\">  |  Number of players "
  SHX9_2 = tostring
  SHX10_2 = SHX2_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = "/"
  SHX11_2 = tostring
  SHX12_2 = SHX4_2
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = "</span>"
  SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2
  SHX7_2.appendToFooterPlayerList = SHX8_2
  SHX6_2(SHX7_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "d86ba438f2"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = fullPlayerListData
  if nil ~= SHX1_2 then
    SHX1_2 = fullPlayerListData
    SHX1_2 = SHX1_2._meta
    if nil ~= SHX1_2 then
      SHX1_2 = table
      SHX1_2 = SHX1_2.unpack
      SHX2_2 = fullPlayerListData
      SHX2_2 = SHX2_2._meta
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2)
      SHX6_2 = fullPlayerListData
      SHX7_2 = {}
      SHX8_2 = SHX0_2
      SHX9_2 = SHX2_2
      SHX10_2 = SHX3_2
      SHX11_2 = SHX4_2
      SHX12_2 = SHX5_2
      SHX7_2[1] = SHX8_2
      SHX7_2[2] = SHX9_2
      SHX7_2[3] = SHX10_2
      SHX7_2[4] = SHX11_2
      SHX7_2[5] = SHX12_2
      SHX6_2._meta = SHX7_2
      SHX6_2 = SendNUIMessage
      SHX7_2 = {}
      SHX7_2.wipeFooterPlayerList = true
      SHX6_2(SHX7_2)
      SHX6_2 = SendNUIMessage
      SHX7_2 = {}
      SHX8_2 = "<span class=\"foot\">Server #"
      SHX9_2 = tostring
      SHX10_2 = SHX5_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = " | </span>"
      SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
      SHX7_2.appendToFooterPlayerList = SHX8_2
      SHX6_2(SHX7_2)
      SHX6_2 = SendNUIMessage
      SHX7_2 = {}
      SHX8_2 = "<span class=\"foot\" style=\"color: rgb(0, 255, 20);\">Server uptime "
      SHX9_2 = tostring
      SHX10_2 = SHX0_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = "</span>"
      SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
      SHX7_2.appendToFooterPlayerList = SHX8_2
      SHX6_2(SHX7_2)
      SHX6_2 = SendNUIMessage
      SHX7_2 = {}
      SHX8_2 = "<span class=\"foot\">  |  Number of players "
      SHX9_2 = tostring
      SHX10_2 = SHX2_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = "/"
      SHX11_2 = tostring
      SHX12_2 = SHX4_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = "</span>"
      SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2
      SHX7_2.appendToFooterPlayerList = SHX8_2
      SHX6_2(SHX7_2)
    end
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = Citizen
SHX15_1 = SHX15_1.CreateThread
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 5000
    SHX0_2(SHX1_2)
    SHX0_2 = fullPlayerListData
    if nil ~= SHX0_2 then
      SHX0_2 = fullPlayerListData
      SHX0_2 = SHX0_2._meta
      if SHX0_2 then
        SHX1_2 = table
        SHX1_2 = SHX1_2.unpack
        SHX2_2 = SHX0_2
        SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
        SHX5_2 = SetDiscordAppId
        SHX6_2 = "1227686470014472223"
        SHX5_2(SHX6_2)
        SHX5_2 = SetDiscordRichPresenceAsset
        SHX6_2 = "cmglogo"
        SHX5_2(SHX6_2)
        SHX5_2 = SetDiscordRichPresenceAssetText
        SHX6_2 = "CMG British RP"
        SHX5_2(SHX6_2)
        SHX5_2 = SetDiscordRichPresenceAssetSmall
        SHX6_2 = "cmglogo"
        SHX5_2(SHX6_2)
        SHX5_2 = SetDiscordRichPresenceAssetSmallText
        SHX6_2 = "CMG British Roleplay"
        SHX5_2(SHX6_2)
        SHX5_2 = SetRichPresence
        SHX6_2 = "[ID:"
        SHX7_2 = tostring
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getClientUserId
        SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2()
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX8_2 = "] | "
        SHX9_2 = tostring
        SHX10_2 = SHX2_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = "/"
        SHX11_2 = tostring
        SHX12_2 = SHX4_2
        SHX11_2 = SHX11_2(SHX12_2)
        SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2
        SHX5_2(SHX6_2)
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 15000
    SHX0_2(SHX1_2)
  end
end
SHX15_1(SHX16_1)
SHX15_1 = CMG
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 and SHX1_2 > 0 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.clientGetUserIdFromSource
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX3_2 = fullPlayerListData
      SHX3_2 = SHX3_2[SHX2_2]
      if SHX3_2 then
        SHX3_2 = fullPlayerListData
        SHX3_2 = SHX3_2[SHX2_2]
        SHX3_2 = SHX3_2[2]
        return SHX3_2
      end
      SHX3_2 = "PermID:"
      SHX4_2 = tostring
      SHX5_2 = SHX2_2
      SHX4_2 = SHX4_2(SHX5_2)
      SHX3_2 = SHX3_2 .. SHX4_2
      return SHX3_2
    end
    SHX3_2 = "TempID:"
    SHX4_2 = tostring
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2 .. SHX4_2
    return SHX3_2
  end
  SHX2_2 = "N/A"
  return SHX2_2
end
SHX15_1.getPlayerName = SHX16_1
SHX15_1 = CMG
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 and SHX0_2 > 0 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.clientGetUserIdFromSource
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX2_2 = fullPlayerListData
      SHX2_2 = SHX2_2[SHX1_2]
      if SHX2_2 then
        SHX2_2 = fullPlayerListData
        SHX2_2 = SHX2_2[SHX1_2]
        SHX2_2 = SHX2_2[2]
        return SHX2_2
      end
      SHX2_2 = "PermID:"
      SHX3_2 = tostring
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX2_2 .. SHX3_2
      return SHX2_2
    end
    SHX2_2 = "TempID:"
    SHX3_2 = tostring
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2 .. SHX3_2
    return SHX2_2
  end
  SHX1_2 = "N/A"
  return SHX1_2
end
SHX15_1.getClientPlayerNameFromPlayerSrc = SHX16_1
SHX15_1 = exports
SHX16_1 = "getPlayerName"
SHX17_1 = CMG
SHX17_1 = SHX17_1.getPlayerName
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = exports
SHX16_1 = "getUserId"
SHX17_1 = CMG
SHX17_1 = SHX17_1.getClientUserId
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = CMG
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if not SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getClientUserId
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX1_2
  end
  if not SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = fullPlayerListData
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2 = nil
    return SHX2_2
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2[4]
  return SHX2_2(SHX3_2)
end
SHX15_1.getClientPlaytimeHours = SHX16_1
SHX15_1 = CMG
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = fullPlayerListData
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2[1]
    return SHX2_2
  end
  SHX2_2 = nil
  return SHX2_2
end
SHX15_1.getClientUserSource = SHX16_1
SHX15_1 = RegisterNetEvent
SHX16_1 = "44e6d4fc95"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = fullPlayerListData
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2[2] = SHX1_2
  end
end
SHX15_1(SHX16_1, SHX17_1)
