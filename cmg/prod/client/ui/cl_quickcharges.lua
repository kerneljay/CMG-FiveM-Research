-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_pnc"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = 0
SHX3_1 = false
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX0_2 = {}
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = {}
  SHX4_2 = pairs
  SHX5_2 = SHX0_1.categories
  if not SHX5_2 then
    SHX5_2 = {}
  end
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = #SHX3_2
    SHX9_2 = SHX9_2 + 1
    SHX3_2[SHX9_2] = SHX8_2
  end
  SHX4_2 = table
  SHX4_2 = SHX4_2.sort
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = ipairs
  SHX5_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX0_1.categories
    SHX10_2 = SHX10_2[SHX9_2]
    SHX11_2 = #SHX2_2
    SHX11_2 = SHX11_2 + 1
    SHX2_2[SHX11_2] = SHX9_2
    SHX11_2 = {}
    SHX1_2[SHX9_2] = SHX11_2
    SHX11_2 = ipairs
    SHX12_2 = SHX10_2
    SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
    for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
      SHX17_2 = SHX0_1.offences
      if SHX17_2 then
        SHX17_2 = SHX0_1.offences
        SHX17_2 = SHX17_2[SHX16_2]
      end
      if SHX17_2 then
        SHX18_2 = {}
        SHX19_2 = 1
        SHX20_2 = 3
        SHX21_2 = 1
        for SHX22_2 = SHX19_2, SHX20_2, SHX21_2 do
          SHX23_2 = SHX17_2.punishments
          if SHX23_2 then
            SHX23_2 = SHX17_2.punishments
            SHX23_2 = SHX23_2[SHX22_2]
          end
          if SHX23_2 then
            SHX24_2 = #SHX18_2
            SHX24_2 = SHX24_2 + 1
            SHX25_2 = {}
            SHX26_2 = SHX23_2.fine
            if not SHX26_2 then
              SHX26_2 = 0
            end
            SHX25_2.fine = SHX26_2
            SHX26_2 = SHX23_2.months
            if not SHX26_2 then
              SHX26_2 = 0
            end
            SHX25_2.months = SHX26_2
            SHX18_2[SHX24_2] = SHX25_2
          end
        end
        SHX19_2 = SHX1_2[SHX9_2]
        SHX20_2 = SHX1_2[SHX9_2]
        SHX20_2 = #SHX20_2
        SHX20_2 = SHX20_2 + 1
        SHX19_2[SHX20_2] = SHX16_2
        SHX19_2 = #SHX0_2
        SHX19_2 = SHX19_2 + 1
        SHX20_2 = {}
        SHX20_2.id = SHX16_2
        SHX21_2 = SHX17_2.name
        if not SHX21_2 then
          SHX21_2 = SHX16_2
        end
        SHX20_2.name = SHX21_2
        SHX20_2.tiers = SHX18_2
        SHX0_2[SHX19_2] = SHX20_2
      end
    end
  end
  SHX4_2 = {}
  SHX5_2 = pairs
  SHX6_2 = SHX0_1.offences
  if not SHX6_2 then
    SHX6_2 = {}
  end
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = false
    SHX12_2 = ipairs
    SHX13_2 = SHX0_2
    SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
    for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
      SHX18_2 = SHX17_2.id
      if SHX18_2 == SHX9_2 then
        SHX11_2 = true
        break
      end
    end
    if not SHX11_2 then
      SHX12_2 = #SHX4_2
      SHX12_2 = SHX12_2 + 1
      SHX13_2 = {}
      SHX13_2.id = SHX9_2
      SHX13_2.offence = SHX10_2
      SHX4_2[SHX12_2] = SHX13_2
    end
  end
  SHX5_2 = table
  SHX5_2 = SHX5_2.sort
  SHX6_2 = SHX4_2
  function SHX7_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.offence
    SHX2_3 = SHX2_3.name
    if not SHX2_3 then
      SHX2_3 = SHX0_3.id
    end
    SHX3_3 = SHX1_3.offence
    SHX3_3 = SHX3_3.name
    if not SHX3_3 then
      SHX3_3 = SHX1_3.id
    end
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = ipairs
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.offence
    SHX12_2 = {}
    SHX13_2 = 1
    SHX14_2 = 3
    SHX15_2 = 1
    for SHX16_2 = SHX13_2, SHX14_2, SHX15_2 do
      SHX17_2 = SHX11_2.punishments
      if SHX17_2 then
        SHX17_2 = SHX11_2.punishments
        SHX17_2 = SHX17_2[SHX16_2]
      end
      if SHX17_2 then
        SHX18_2 = #SHX12_2
        SHX18_2 = SHX18_2 + 1
        SHX19_2 = {}
        SHX20_2 = SHX17_2.fine
        if not SHX20_2 then
          SHX20_2 = 0
        end
        SHX19_2.fine = SHX20_2
        SHX20_2 = SHX17_2.months
        if not SHX20_2 then
          SHX20_2 = 0
        end
        SHX19_2.months = SHX20_2
        SHX12_2[SHX18_2] = SHX19_2
      end
    end
    SHX13_2 = "Other Offences"
    SHX14_2 = SHX1_2[SHX13_2]
    if not SHX14_2 then
      SHX14_2 = {}
      SHX1_2[SHX13_2] = SHX14_2
      SHX14_2 = #SHX2_2
      SHX14_2 = SHX14_2 + 1
      SHX2_2[SHX14_2] = SHX13_2
    end
    SHX14_2 = SHX1_2[SHX13_2]
    SHX15_2 = SHX1_2[SHX13_2]
    SHX15_2 = #SHX15_2
    SHX15_2 = SHX15_2 + 1
    SHX16_2 = SHX10_2.id
    SHX14_2[SHX15_2] = SHX16_2
    SHX14_2 = #SHX0_2
    SHX14_2 = SHX14_2 + 1
    SHX15_2 = {}
    SHX16_2 = SHX10_2.id
    SHX15_2.id = SHX16_2
    SHX16_2 = SHX11_2.name
    if not SHX16_2 then
      SHX16_2 = SHX10_2.id
    end
    SHX15_2.name = SHX16_2
    SHX15_2.tiers = SHX12_2
    SHX0_2[SHX14_2] = SHX15_2
  end
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  return SHX5_2, SHX6_2, SHX7_2
end
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = nil
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX5_1
  if not SHX0_2 then
    SHX0_2 = SHX4_1
    SHX0_2, SHX1_2, SHX2_2 = SHX0_2()
    SHX7_1 = SHX2_2
    SHX6_1 = SHX1_2
    SHX5_1 = SHX0_2
  end
  SHX0_2 = SHX5_1
  SHX1_2 = SHX6_1
  SHX2_2 = SHX7_1
  return SHX0_2, SHX1_2, SHX2_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  return SHX0_2(SHX1_2)
end
SHX10_1 = CMG
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = SHX3_1
  if SHX2_2 then
    return
  end
  SHX2_2 = SHX9_1
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~Only on-duty police can use this."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = GetPlayerByEntityID
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~No valid player target."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = GetPlayerServerId
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 or SHX3_2 <= 0 then
    return
  end
  SHX4_2 = SHX8_1
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2()
  if SHX4_2 then
    SHX7_2 = #SHX4_2
    if 0 ~= SHX7_2 then
      goto SHX_LABEL_41
    end
  end
  SHX7_2 = notify
  SHX8_2 = "~r~No charges configured."
  SHX7_2(SHX8_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
  ::SHX_LABEL_41::
  if "jail" == SHX1_2 then
    SHX7_2 = "jail"
    if SHX7_2 then
      goto SHX_LABEL_47
    end
  end
  SHX7_2 = "fine"
  -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
  ::SHX_LABEL_47::
  SHX1_1 = SHX7_2
  SHX2_1 = SHX3_2
  SHX7_2 = true
  SHX3_1 = SHX7_2
  SHX7_2 = SetTimeout
  SHX8_2 = 50
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX3_1
    if not SHX0_3 then
      return
    end
    SHX0_3 = SetNuiFocus
    SHX1_3 = true
    SHX2_3 = true
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SendNUIMessage
    SHX1_3 = {}
    SHX1_3.openQuickCharges = true
    SHX2_3 = SHX1_1
    SHX1_3.mode = SHX2_3
    SHX2_3 = SHX4_2
    SHX1_3.charges = SHX2_3
    SHX2_3 = SHX5_2
    SHX1_3.categories = SHX2_3
    SHX2_3 = SHX6_2
    SHX1_3.categoryOrder = SHX2_3
    SHX0_3(SHX1_3)
  end
  SHX7_2(SHX8_2, SHX9_2)
end
SHX10_1.openQuickChargesMenu = SHX11_1
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = false
  SHX3_1 = SHX0_2
  SHX0_2 = nil
  SHX1_1 = SHX0_2
  SHX0_2 = 0
  SHX2_1 = SHX0_2
  SHX0_2 = SetNuiFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX11_1 = RegisterNUICallback
SHX12_1 = "quickChargesClose"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX10_1
  SHX2_2()
  SHX2_2 = SHX1_2
  SHX3_2 = {}
  SHX2_2(SHX3_2)
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNUICallback
SHX12_1 = "quickChargesConfirm"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = SHX1_2
  SHX3_2 = {}
  SHX2_2(SHX3_2)
  SHX2_2 = SHX3_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = SHX0_2.mode
  if "jail" == SHX2_2 then
    SHX2_2 = "jail"
    if SHX2_2 then
      goto SHX_LABEL_16
    end
  end
  SHX2_2 = "fine"
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX3_2 = {}
  SHX4_2 = type
  SHX5_2 = SHX0_2.picks
  SHX4_2 = SHX4_2(SHX5_2)
  if "table" == SHX4_2 then
    SHX4_2 = ipairs
    SHX5_2 = SHX0_2.picks
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = type
      SHX11_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2)
      if "table" == SHX10_2 then
        SHX10_2 = type
        SHX11_2 = SHX9_2.id
        SHX10_2 = SHX10_2(SHX11_2)
        if "string" == SHX10_2 then
          SHX10_2 = tonumber
          SHX11_2 = SHX9_2.tier
          SHX10_2 = SHX10_2(SHX11_2)
          if not SHX10_2 then
            SHX10_2 = 1
          end
          if SHX10_2 < 1 then
            SHX10_2 = 1
          end
          if SHX10_2 > 3 then
            SHX10_2 = 3
          end
          SHX11_2 = #SHX3_2
          SHX11_2 = SHX11_2 + 1
          SHX12_2 = {}
          SHX13_2 = SHX9_2.id
          SHX12_2.id = SHX13_2
          SHX12_2.tier = SHX10_2
          SHX3_2[SHX11_2] = SHX12_2
        end
      end
    end
  end
  SHX4_2 = SHX2_1
  SHX5_2 = SHX10_1
  SHX5_2()
  SHX5_2 = #SHX3_2
  if 0 == SHX5_2 then
    return
  end
  if not SHX4_2 or SHX4_2 <= 0 then
    return
  end
  if "jail" == SHX2_2 then
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "61172cd221"
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "c08019918f"
    SHX7_2 = SHX4_2
    SHX8_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  else
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "9276adb44e"
    SHX7_2 = SHX4_2
    SHX8_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
