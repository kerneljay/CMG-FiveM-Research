-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = "ALL"
SHX6_1 = nil
SHX7_1 = false
SHX8_1 = vector3
SHX9_1 = 0.0
SHX10_1 = 0.0
SHX11_1 = 0.0
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = -1.0
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = "money"
SHX13_1 = "streetnames"
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX12_1.isEmergencyCallUIHidden = SHX13_1
SHX12_1 = CMG
function SHX13_1()
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
SHX12_1.isCallManagerOpen = SHX13_1
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX2_1
  SHX3_2 = 1
  SHX4_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[1]
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX5_2
      SHX8_2 = SHX6_2
      return SHX7_2, SHX8_2
    end
  end
  SHX1_2 = nil
  SHX2_2 = nil
  return SHX1_2, SHX2_2
end
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  if "admin" == SHX0_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hasClientPermission
    SHX4_2 = "admin.management"
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.hasClientPermission
      SHX4_2 = "sa.whitelisted"
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = SHX2_2 or SHX3_2
        if not SHX2_2 then
          SHX3_2 = 0
        end
        if SHX3_2 <= 0 then
          SHX3_2 = "Admin Ticket"
          return SHX3_2
        end
      end
    end
  end
  SHX3_2 = SHX1_2 or SHX3_2
  if not SHX1_2 then
    SHX3_2 = ""
  end
  return SHX3_2
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "admin.tickets"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "rp.tickets"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "newplayer.tickets"
      SHX0_2 = SHX0_2(SHX1_2)
    end
  end
  return SHX0_2
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "STAFF" == SHX0_2 then
    SHX1_2 = SHX15_1
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = "JOB"
      return SHX1_2
    end
  end
  return SHX0_2
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2[4]
  SHX2_2 = {}
  SHX3_2 = SHX0_2[1]
  SHX2_2.callerId = SHX3_2
  SHX3_2 = SHX0_2[2]
  SHX2_2.callerName = SHX3_2
  SHX3_2 = SHX0_2[3]
  SHX2_2.callerUserId = SHX3_2
  if SHX1_2 then
    SHX3_2 = SHX1_2.x
    if SHX3_2 then
      goto SHX_LABEL_16
    end
  end
  SHX3_2 = 0.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX2_2.x = SHX3_2
  if SHX1_2 then
    SHX3_2 = SHX1_2.y
    if SHX3_2 then
      goto SHX_LABEL_23
    end
  end
  SHX3_2 = 0.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX2_2.y = SHX3_2
  if SHX1_2 then
    SHX3_2 = SHX1_2.z
    if SHX3_2 then
      goto SHX_LABEL_30
    end
  end
  SHX3_2 = 0.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX2_2.z = SHX3_2
  SHX3_2 = SHX14_1
  SHX4_2 = SHX0_2[6]
  SHX5_2 = SHX0_2[5]
  SHX6_2 = SHX0_2[8]
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2.callerMsg = SHX3_2
  SHX3_2 = SHX0_2[6]
  SHX2_2.callType = SHX3_2
  SHX3_2 = SHX0_2[7]
  if not SHX3_2 then
    SHX3_2 = 0
  end
  SHX2_2.minutesPast = SHX3_2
  SHX3_2 = SHX0_2[8]
  if not SHX3_2 then
    SHX3_2 = 0
  end
  SHX2_2.priority = SHX3_2
  SHX3_2 = SHX0_2[9]
  SHX3_2 = true == SHX3_2
  SHX2_2.simpleDispatchUi = SHX3_2
  return SHX2_2
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = {}
  SHX1_2 = 1
  SHX2_2 = SHX2_1
  SHX2_2 = #SHX2_2
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX17_1
    SHX6_2 = SHX2_1
    SHX6_2 = SHX6_2[SHX4_2]
    SHX5_2 = SHX5_2(SHX6_2)
    SHX0_2[SHX4_2] = SHX5_2
  end
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX4_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = tostring
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX1_2[SHX8_2] = SHX7_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = GetEntityHeading
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSendMessage
  SHX5_2 = {}
  SHX5_2.action = "CALLMANAGER_STATE"
  SHX6_2 = {}
  SHX7_2 = SHX1_1
  SHX6_2.isOpen = SHX7_2
  SHX6_2.calls = SHX0_2
  SHX6_2.responders = SHX1_2
  SHX7_2 = SHX5_1
  SHX6_2.callMode = SHX7_2
  SHX7_2 = SHX5_1
  SHX6_2.initialCallMode = SHX7_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.isEmergencyService
  SHX7_2 = SHX7_2()
  SHX7_2 = true == SHX7_2
  SHX6_2.isEmergencyService = SHX7_2
  SHX7_2 = SHX15_1
  SHX7_2 = SHX7_2()
  SHX6_2.canSeeStaffCalls = SHX7_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getClientUserId
  SHX7_2 = SHX7_2()
  if not SHX7_2 then
    SHX7_2 = 0
  end
  SHX6_2.localUserId = SHX7_2
  SHX7_2 = {}
  SHX8_2 = SHX2_2.x
  SHX7_2.x = SHX8_2
  SHX8_2 = SHX2_2.y
  SHX7_2.y = SHX8_2
  SHX8_2 = SHX2_2.z
  SHX7_2.z = SHX8_2
  SHX6_2.playerCoords = SHX7_2
  SHX6_2.playerHeading = SHX3_2
  SHX7_2 = SHX10_1
  SHX6_2.officers = SHX7_2
  SHX5_2.payload = SHX6_2
  SHX4_2(SHX5_2)
  SHX8_1 = SHX2_2
  SHX9_1 = SHX3_2
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.action = "CALLMANAGER_OFFICERS_UPDATE"
  SHX2_2 = {}
  SHX3_2 = SHX10_1
  SHX2_2.officers = SHX3_2
  SHX1_2.payload = SHX2_2
  SHX0_2(SHX1_2)
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.action = "CALLMANAGER_CALL_ADD"
  SHX3_2 = SHX17_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.action = "CALLMANAGER_CALL_REMOVE"
  SHX3_2 = {}
  SHX3_2.callerId = SHX0_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.action = "CALLMANAGER_RESPONDERS_UPDATE"
  SHX3_2 = {}
  SHX3_2.callerId = SHX0_2
  SHX4_2 = SHX4_1
  SHX4_2 = SHX4_2[SHX0_2]
  if not SHX4_2 then
    SHX4_2 = {}
  end
  SHX3_2.responders = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX23_1 = RegisterNetEvent
SHX24_1 = "fbf6b45bc8"
function SHX25_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX8_2 = true == SHX8_2
  SHX9_2 = false
  if "admin" == SHX5_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.hasClientPermission
    SHX11_2 = "admin.tickets"
    SHX10_2 = SHX10_2(SHX11_2)
    if SHX10_2 then
      SHX10_2 = tCMG
      SHX10_2 = SHX10_2.notify
      SHX11_2 = "~b~Admin ticket received."
      SHX10_2(SHX11_2)
      SHX9_2 = true
  end
  else
    if "met" == SHX5_2 then
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.hasClientPermission
      SHX11_2 = "police.onduty.permission"
      SHX10_2 = SHX10_2(SHX11_2)
      if SHX10_2 then
        SHX10_2 = tCMG
        SHX10_2 = SHX10_2.notify
        SHX11_2 = "~b~Police call received."
        SHX10_2(SHX11_2)
        SHX9_2 = true
    end
    else
      if "nhs" == SHX5_2 then
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.hasClientPermission
        SHX11_2 = "nhs.onduty.permission"
        SHX10_2 = SHX10_2(SHX11_2)
        if SHX10_2 then
          SHX10_2 = tCMG
          SHX10_2 = SHX10_2.notify
          SHX11_2 = "~b~NHS call received."
          SHX10_2(SHX11_2)
          SHX9_2 = true
      end
      else
        if "lfb" == SHX5_2 then
          SHX10_2 = CMG
          SHX10_2 = SHX10_2.hasClientPermission
          SHX11_2 = "lfb.onduty.permission"
          SHX10_2 = SHX10_2(SHX11_2)
          if SHX10_2 then
            SHX10_2 = tCMG
            SHX10_2 = SHX10_2.notify
            SHX11_2 = "~b~LFB call received."
            SHX10_2(SHX11_2)
            SHX9_2 = true
        end
        else
          if "hmp" == SHX5_2 then
            SHX10_2 = CMG
            SHX10_2 = SHX10_2.hasClientPermission
            SHX11_2 = "prisonguard.onduty.permission"
            SHX10_2 = SHX10_2(SHX11_2)
            if SHX10_2 then
              SHX10_2 = tCMG
              SHX10_2 = SHX10_2.notify
              SHX11_2 = "~b~HMP call received."
              SHX10_2(SHX11_2)
              SHX9_2 = true
          end
          else
            if "aa" == SHX5_2 then
              SHX10_2 = CMG
              SHX10_2 = SHX10_2.hasClientPermission
              SHX11_2 = "aa.onduty.permission"
              SHX10_2 = SHX10_2(SHX11_2)
              if SHX10_2 then
                SHX10_2 = tCMG
                SHX10_2 = SHX10_2.notify
                SHX11_2 = "~b~Mechanic call received. (`) to open call manager!"
                SHX10_2(SHX11_2)
                SHX9_2 = true
            end
            elseif "rp" == SHX5_2 then
              SHX10_2 = CMG
              SHX10_2 = SHX10_2.hasClientPermission
              SHX11_2 = "admin.tickets"
              SHX10_2 = SHX10_2(SHX11_2)
              if not SHX10_2 then
                SHX10_2 = CMG
                SHX10_2 = SHX10_2.hasClientPermission
                SHX11_2 = "rp.tickets"
                SHX10_2 = SHX10_2(SHX11_2)
                if not SHX10_2 then
                  goto SHX_LABEL_109
                end
              end
              SHX10_2 = tCMG
              SHX10_2 = SHX10_2.notify
              SHX11_2 = "~b~RP ticket received."
              SHX10_2(SHX11_2)
              SHX9_2 = true
            end
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_109:: outside nested blocks until all 'goto SHX_LABEL_109' can see it
  ::SHX_LABEL_109::
  if not SHX9_2 then
    return
  end
  SHX10_2 = PlaySound
  SHX11_2 = -1
  SHX12_2 = "SELECT"
  SHX13_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = true
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = {}
  SHX11_2 = SHX0_2
  SHX12_2 = SHX1_2
  SHX13_2 = SHX2_2
  SHX14_2 = SHX3_2
  SHX15_2 = SHX4_2
  SHX16_2 = SHX5_2
  SHX17_2 = SHX6_2
  SHX18_2 = SHX7_2
  SHX19_2 = SHX8_2
  SHX10_2[1] = SHX11_2
  SHX10_2[2] = SHX12_2
  SHX10_2[3] = SHX13_2
  SHX10_2[4] = SHX14_2
  SHX10_2[5] = SHX15_2
  SHX10_2[6] = SHX16_2
  SHX10_2[7] = SHX17_2
  SHX10_2[8] = SHX18_2
  SHX10_2[9] = SHX19_2
  SHX11_2 = SHX12_1
  SHX12_2 = SHX10_2
  SHX11_2(SHX12_2)
  SHX11_2 = SHX3_1
  SHX11_2[SHX0_2] = SHX3_2
  SHX11_2 = SHX20_1
  SHX12_2 = SHX10_2
  SHX11_2(SHX12_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "e1c61fbba4"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.remove
    SHX3_2 = SHX2_1
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = SHX3_1
  SHX2_2[SHX0_2] = nil
  SHX2_2 = SHX4_1
  SHX2_2[SHX0_2] = nil
  SHX2_2 = SHX21_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "16fb6425b4"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX6_1
  if SHX1_2 == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_2 = SetNewWaypoint
    SHX3_2 = SHX1_2.x
    SHX4_2 = SHX1_2.y
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = nil
    SHX6_1 = SHX2_2
  end
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "1d88d0efdf"
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" ~= SHX2_2 then
    SHX2_2 = {}
    SHX1_2 = SHX2_2
  end
  SHX2_2 = SHX4_1
  SHX2_2[SHX0_2] = SHX1_2
  SHX2_2 = SHX22_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = nil
SHX24_1 = AddEventHandler
SHX25_1 = "00e0b9aa86"
function SHX26_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  if "emergency" ~= SHX2_2 then
    return
  end
  SHX3_2 = type
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" ~= SHX3_2 then
    return
  end
  SHX3_2 = SHX23_1
  if not SHX3_2 then
    SHX3_2 = GetPlayerServerId
    SHX4_2 = PlayerId
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX4_2()
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX23_1 = SHX3_2
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerBucket
  SHX3_2 = SHX3_2()
  SHX4_2 = {}
  SHX5_2 = ipairs
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2[1]
    SHX12_2 = SHX10_2[2]
    SHX13_2 = SHX10_2[3]
    SHX14_2 = SHX10_2[4]
    SHX15_2 = SHX10_2[5]
    SHX16_2 = SHX10_2[6]
    if SHX11_2 and SHX12_2 then
      SHX17_2 = SHX23_1
      if SHX11_2 ~= SHX17_2 and SHX16_2 == SHX3_2 then
        SHX17_2 = #SHX4_2
        SHX17_2 = SHX17_2 + 1
        SHX18_2 = {}
        SHX18_2.serverId = SHX11_2
        SHX19_2 = SHX12_2.x
        SHX18_2.x = SHX19_2
        SHX19_2 = SHX12_2.y
        SHX18_2.y = SHX19_2
        SHX19_2 = SHX12_2.z
        SHX18_2.z = SHX19_2
        SHX19_2 = SHX13_2 or SHX19_2
        if not SHX13_2 then
          SHX19_2 = 0.0
        end
        SHX18_2.heading = SHX19_2
        SHX19_2 = SHX15_2 or SHX19_2
        if not SHX15_2 then
          SHX19_2 = 3
        end
        SHX18_2.colour = SHX19_2
        SHX19_2 = 1 == SHX14_2
        SHX18_2.dead = SHX19_2
        SHX4_2[SHX17_2] = SHX18_2
      end
    end
  end
  SHX10_1 = SHX4_2
  SHX5_2 = SHX1_1
  if SHX5_2 then
    SHX5_2 = SHX19_1
    SHX5_2()
  end
end
SHX24_1(SHX25_1, SHX26_1)
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if "nhs" ~= SHX0_2 then
    return
  end
  if not SHX1_2 then
    return
  end
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.addBlip
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.z
  SHX6_2 = 480
  SHX7_2 = 2
  SHX8_2 = nil
  SHX9_2 = 1.0
  SHX10_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.Wait
    SHX1_3 = 300000
    SHX0_3(SHX1_3)
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.removeBlip
    SHX1_3 = SHX2_2
    SHX0_3(SHX1_3)
  end
  SHX3_2(SHX4_2)
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "newplayer.tickets"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "rp.tickets"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "admin.tickets"
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientPermission
        SHX1_2 = "police.onduty.permission"
        SHX0_2 = SHX0_2(SHX1_2)
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasClientPermission
          SHX1_2 = "nhs.onduty.permission"
          SHX0_2 = SHX0_2(SHX1_2)
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.hasClientPermission
            SHX1_2 = "lfb.onduty.permission"
            SHX0_2 = SHX0_2(SHX1_2)
            if not SHX0_2 then
              SHX0_2 = CMG
              SHX0_2 = SHX0_2.hasClientPermission
              SHX1_2 = "prisonguard.onduty.permission"
              SHX0_2 = SHX0_2(SHX1_2)
              if not SHX0_2 then
                SHX0_2 = CMG
                SHX0_2 = SHX0_2.hasClientPermission
                SHX1_2 = "aa.onduty.permission"
                SHX0_2 = SHX0_2(SHX1_2)
              end
            end
          end
        end
      end
    end
  end
  return SHX0_2
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX11_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.showDisplay
    SHX7_2 = SHX5_2
    SHX8_2 = "callmanager"
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudCallManagerNotificationsOnlyMode
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX11_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.hideDisplay
    SHX7_2 = SHX5_2
    SHX8_2 = "callmanager"
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudCallManagerNotificationsOnlyMode
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    return
  end
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    return
  end
  SHX1_2 = true
  SHX1_1 = SHX1_2
  SHX1_2 = true
  SHX0_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isEmergencyService
  SHX1_2 = SHX1_2()
  if SHX1_2 and ("STAFF" == SHX0_2 or "JOB" == SHX0_2 or "ALL" == SHX0_2) then
    SHX1_2 = SHX16_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX5_1 = SHX1_2
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isEmergencyService
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = "ALL"
      SHX5_1 = SHX1_2
    end
  end
  SHX1_2 = SHX27_1
  SHX1_2()
  SHX1_2 = SHX18_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.action = "CALLMANAGER_SET_OPEN"
  SHX3_2 = {}
  SHX3_2.isOpen = true
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSetFocus
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "5aef5d0989"
  SHX1_2(SHX2_2)
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = false
  SHX0_1 = SHX0_2
  SHX0_2 = SHX26_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.action = "CALLMANAGER_SET_OPEN"
  SHX2_2 = {}
  SHX2_2.isOpen = false
  SHX1_2.payload = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX7_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = SetNewWaypoint
    SHX2_2 = SHX0_2.x
    SHX3_2 = SHX0_2.y
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = false
    SHX7_1 = SHX1_2
  end
end
SHX30_1 = CMG
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX28_1
  SHX1_2 = "JOB"
  SHX0_2(SHX1_2)
end
SHX30_1.openCallManagerFromJobMenu = SHX31_1
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX2_2[6]
  SHX4_2 = SHX3_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "a6f59b89aa"
  SHX7_2 = SHX0_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX6_1 = SHX0_2
  SHX5_2 = SHX24_1
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  if SHX4_2 then
    SHX5_2 = false
    SHX7_1 = SHX5_2
    SHX5_2 = SetNewWaypoint
    SHX6_2 = SHX4_2.x
    SHX7_2 = SHX4_2.y
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX5_2 = SHX29_1
  SHX5_2()
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX2_2[6]
  if "admin" ~= SHX3_2 then
    SHX3_2 = SHX2_2[6]
    if "rp" ~= SHX3_2 then
      goto SHX_LABEL_14
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX3_2 = SHX13_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX4_2 = table
    SHX4_2 = SHX4_2.remove
    SHX5_2 = SHX2_1
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = SHX3_1
  SHX4_2[SHX0_2] = nil
  SHX4_2 = SHX4_1
  SHX4_2[SHX0_2] = nil
  SHX4_2 = SHX21_1
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
end
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX13_1
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  if SHX3_2 then
    SHX4_2 = SHX3_2[6]
  end
  SHX4_2 = "nhs" == SHX4_2 or SHX4_2
  SHX7_1 = SHX4_2
  SHX4_2 = SetNewWaypoint
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX4_2(SHX5_2, SHX6_2)
end
SHX33_1 = CMG
SHX33_1 = SHX33_1.uiRegisterCallback
SHX34_1 = "callmanagerClose"
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX29_1
  SHX0_2()
  SHX0_2 = {}
  SHX0_2.ok = true
  return SHX0_2
end
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = CMG
SHX33_1 = SHX33_1.uiRegisterCallback
SHX34_1 = "callmanagerAccept"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.callerId
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" == SHX2_2 then
    SHX2_2 = SHX30_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = {}
  SHX2_2.ok = true
  return SHX2_2
end
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = CMG
SHX33_1 = SHX33_1.uiRegisterCallback
SHX34_1 = "callmanagerDeny"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.callerId
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" == SHX2_2 then
    SHX2_2 = SHX31_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = {}
  SHX2_2.ok = true
  return SHX2_2
end
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = CMG
SHX33_1 = SHX33_1.uiRegisterCallback
SHX34_1 = "callmanagerWaypoint"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.callerId
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" == SHX2_2 then
    SHX2_2 = SHX32_1
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = {}
  SHX2_2.ok = true
  return SHX2_2
end
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = CMG
SHX33_1 = SHX33_1.uiRegisterCallback
SHX34_1 = "callmanagerSetFilter"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.callMode
  end
  if "ALL" == SHX1_2 or "STAFF" == SHX1_2 or "JOB" == SHX1_2 then
    SHX2_2 = SHX16_1
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX5_1 = SHX2_2
  end
  SHX2_2 = {}
  SHX2_2.ok = true
  return SHX2_2
end
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = CMG
SHX33_1 = SHX33_1.uiRegisterCallback
SHX34_1 = "callmanagerRespond"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.callerId
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" ~= SHX2_2 then
    SHX2_2 = {}
    SHX2_2.ok = false
    return SHX2_2
  end
  SHX2_2 = SHX0_2.isResponding
  SHX2_2 = true == SHX2_2
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "e00697b79f"
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  if SHX2_2 then
    SHX3_2 = SHX32_1
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
  end
  SHX3_2 = {}
  SHX3_2.ok = true
  return SHX3_2
end
SHX33_1(SHX34_1, SHX35_1)
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 1
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 2
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 106
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 1
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 2
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 106
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 12
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 13
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 14
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 15
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 16
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 17
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 37
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX25_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = SHX33_1
    SHX0_2()
    SHX0_2 = IsControlJustReleased
    SHX1_2 = 0
    SHX2_2 = 200
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustReleased
      SHX1_2 = 0
      SHX2_2 = 200
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    end
    if SHX0_2 then
      SHX1_2 = SHX29_1
      SHX1_2()
    end
    return
  end
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 243
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = IsDisabledControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 243
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  end
  if SHX0_2 then
    SHX1_2 = SHX28_1
    SHX1_2()
  end
end
SHX35_1 = CMG
SHX35_1 = SHX35_1.createThreadOnTick
SHX36_1 = SHX34_1
SHX37_1 = "Call Manager"
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = Citizen
SHX35_1 = SHX35_1.CreateThread
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  while true do
    SHX0_2 = SHX1_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerCoords
      SHX0_2 = SHX0_2()
      SHX1_2 = GetEntityHeading
      SHX2_2 = PlayerPedId
      SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2()
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX2_2 = SHX0_2.x
      SHX3_2 = SHX8_1.x
      SHX2_2 = SHX2_2 - SHX3_2
      SHX3_2 = SHX0_2.y
      SHX4_2 = SHX8_1.y
      SHX3_2 = SHX3_2 - SHX4_2
      SHX4_2 = SHX0_2.z
      SHX5_2 = SHX8_1.z
      SHX4_2 = SHX4_2 - SHX5_2
      SHX5_2 = SHX2_2 * SHX2_2
      SHX6_2 = SHX3_2 * SHX3_2
      SHX5_2 = SHX5_2 + SHX6_2
      SHX6_2 = SHX4_2 * SHX4_2
      SHX5_2 = SHX5_2 + SHX6_2
      SHX5_2 = SHX5_2 > 1.0
      SHX6_2 = math
      SHX6_2 = SHX6_2.abs
      SHX7_2 = SHX1_2 or SHX7_2
      if not SHX1_2 then
        SHX7_2 = 0.0
      end
      SHX8_2 = SHX9_1
      if not SHX8_2 then
        SHX8_2 = 0.0
      end
      SHX7_2 = SHX7_2 - SHX8_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX6_2 = SHX6_2 > 2.0
      if SHX5_2 or SHX6_2 then
        SHX8_1 = SHX0_2
        SHX9_1 = SHX1_2
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.uiSendMessage
        SHX8_2 = {}
        SHX8_2.action = "CALLMANAGER_PLAYER_COORDS"
        SHX9_2 = {}
        SHX10_2 = SHX0_2.x
        SHX9_2.x = SHX10_2
        SHX10_2 = SHX0_2.y
        SHX9_2.y = SHX10_2
        SHX10_2 = SHX0_2.z
        SHX9_2.z = SHX10_2
        SHX9_2.heading = SHX1_2
        SHX8_2.payload = SHX9_2
        SHX7_2(SHX8_2)
      end
      SHX7_2 = Wait
      SHX8_2 = 500
      SHX7_2(SHX8_2)
    else
      SHX0_2 = Wait
      SHX1_2 = 1500
      SHX0_2(SHX1_2)
    end
  end
end
SHX35_1(SHX36_1)
SHX35_1 = Citizen
SHX35_1 = SHX35_1.CreateThread
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = {}
    SHX1_2 = false
    SHX2_2 = pairs
    SHX3_2 = SHX2_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX7_2[7]
      if not SHX8_2 then
        SHX8_2 = 0
      end
      SHX8_2 = SHX8_2 + 1
      SHX7_2[7] = SHX8_2
      SHX8_2 = tostring
      SHX9_2 = SHX7_2[1]
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = SHX7_2[7]
      SHX0_2[SHX8_2] = SHX9_2
      SHX1_2 = true
    end
    if SHX1_2 then
      SHX2_2 = SHX1_1
      if SHX2_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.uiSendMessage
        SHX3_2 = {}
        SHX3_2.action = "CALLMANAGER_TICK_MINUTES"
        SHX4_2 = {}
        SHX4_2.updates = SHX0_2
        SHX3_2.payload = SHX4_2
        SHX2_2(SHX3_2)
      end
    end
    SHX2_2 = Wait
    SHX3_2 = 60000
    SHX2_2(SHX3_2)
  end
end
SHX35_1(SHX36_1)
SHX35_1 = {}
SHX36_1 = {}
SHX36_1.callerName = "John Smith"
SHX36_1.callerMsg = "Shots fired near Legion Square"
SHX36_1.callType = "met"
SHX36_1.minutesPast = 18
SHX36_1.priority = 2
SHX37_1 = {}
SHX37_1.x = 120.0
SHX37_1.y = 80.0
SHX36_1.offset = SHX37_1
SHX37_1 = {}
SHX37_1.callerName = "Jane Doe"
SHX37_1.callerMsg = "Unconscious civilian, need ambulance"
SHX37_1.callType = "nhs"
SHX37_1.minutesPast = 7
SHX37_1.priority = 1
SHX38_1 = {}
SHX38_1.x = -90.0
SHX38_1.y = 140.0
SHX37_1.offset = SHX38_1
SHX38_1 = {}
SHX38_1.callerName = "Admin Ticket"
SHX38_1.callerMsg = "Player stuck under map"
SHX38_1.callType = "admin"
SHX38_1.minutesPast = 32
SHX38_1.priority = 0
SHX39_1 = {}
SHX39_1.x = 40.0
SHX39_1.y = -110.0
SHX38_1.offset = SHX39_1
SHX39_1 = {}
SHX39_1.callerName = "RP Ticket"
SHX39_1.callerMsg = "Rule break report at MRPD"
SHX39_1.callType = "rp"
SHX39_1.minutesPast = 4
SHX39_1.priority = 0
SHX40_1 = {}
SHX40_1.x = -160.0
SHX40_1.y = -40.0
SHX39_1.offset = SHX40_1
SHX40_1 = {}
SHX40_1.callerName = "Broken Down"
SHX40_1.callerMsg = "/mechanic Engine failure on Del Perro Fwy"
SHX40_1.callType = "aa"
SHX40_1.minutesPast = 11
SHX40_1.priority = 0
SHX41_1 = {}
SHX41_1.x = 210.0
SHX41_1.y = -70.0
SHX40_1.offset = SHX41_1
SHX41_1 = {}
SHX41_1.callerName = "Structure Fire"
SHX41_1.callerMsg = "Smoke visible from apartment block"
SHX41_1.callType = "lfb"
SHX41_1.minutesPast = 2
SHX41_1.priority = 2
SHX42_1 = {}
SHX42_1.x = -30.0
SHX42_1.y = 190.0
SHX41_1.offset = SHX42_1
SHX42_1 = {}
SHX42_1.callerName = "Prison Incident"
SHX42_1.callerMsg = "Fight in yard, officers needed"
SHX42_1.callType = "hmp"
SHX42_1.minutesPast = 25
SHX42_1.priority = 1
SHX43_1 = {}
SHX43_1.x = 75.0
SHX43_1.y = -180.0
SHX42_1.offset = SHX43_1
SHX43_1 = {}
SHX43_1.callerName = "Dispatch"
SHX43_1.callerMsg = "Vehicle pursuit heading north"
SHX43_1.callType = "met"
SHX43_1.minutesPast = 0
SHX43_1.priority = 3
SHX44_1 = {}
SHX44_1.x = 0.0
SHX44_1.y = 220.0
SHX43_1.offset = SHX44_1
SHX43_1.simpleDispatchUi = true
SHX35_1[1] = SHX36_1
SHX35_1[2] = SHX37_1
SHX35_1[3] = SHX38_1
SHX35_1[4] = SHX39_1
SHX35_1[5] = SHX40_1
SHX35_1[6] = SHX41_1
SHX35_1[7] = SHX42_1
SHX35_1[8] = SHX43_1
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX2_1
  SHX0_2 = #SHX0_2
  SHX1_2 = 1
  SHX2_2 = -1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX2_1
    SHX4_2 = SHX4_2[SHX3_2]
    SHX4_2 = SHX4_2[1]
    SHX5_2 = SHX3_1
    SHX5_2[SHX4_2] = nil
    SHX5_2 = SHX4_1
    SHX5_2[SHX4_2] = nil
    SHX5_2 = table
    SHX5_2 = SHX5_2.remove
    SHX6_2 = SHX2_1
    SHX7_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX0_2 = SHX18_1
  SHX0_2()
end
function SHX37_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = {}
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2.callerName
  SHX6_2 = 90000 + SHX0_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX1_2.callerMsg
  SHX9_2 = SHX1_2.callType
  SHX10_2 = SHX1_2.minutesPast
  if not SHX10_2 then
    SHX10_2 = 0
  end
  SHX11_2 = SHX1_2.priority
  if not SHX11_2 then
    SHX11_2 = 0
  end
  SHX12_2 = SHX1_2.simpleDispatchUi
  SHX12_2 = true == SHX12_2
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX3_2[4] = SHX7_2
  SHX3_2[5] = SHX8_2
  SHX3_2[6] = SHX9_2
  SHX3_2[7] = SHX10_2
  SHX3_2[8] = SHX11_2
  SHX3_2[9] = SHX12_2
  SHX4_2 = SHX12_1
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX3_1
  SHX4_2[SHX0_2] = SHX2_2
  SHX4_2 = SHX1_2.responders
  if SHX4_2 then
    SHX4_2 = SHX4_1
    SHX5_2 = SHX1_2.responders
    SHX4_2[SHX0_2] = SHX5_2
  end
  SHX4_2 = SHX20_1
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX1_2.responders
  if SHX4_2 then
    SHX4_2 = SHX22_1
    SHX5_2 = SHX0_2
    SHX4_2(SHX5_2)
  end
end
SHX38_1 = RegisterCommand
SHX39_1 = "devfillcalls"
function SHX40_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientUserId
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isDeveloper
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_17
    end
  end
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.notify
  SHX4_2 = "~r~Developer only."
  SHX3_2(SHX4_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX3_2 = SHX1_2[1]
  if SHX3_2 then
    SHX3_2 = string
    SHX3_2 = SHX3_2.lower
    SHX4_2 = SHX1_2[1]
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_27
    end
  end
  SHX3_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  if "clear" == SHX3_2 then
    SHX4_2 = SHX36_1
    SHX4_2()
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.notify
    SHX5_2 = "~g~Call manager dev data cleared."
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = SHX36_1
  SHX4_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = GetGameTimer
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX6_2()
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX6_2 = ipairs
  SHX7_2 = SHX35_1
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX11_2.offset
    if not SHX12_2 then
      SHX12_2 = {}
      SHX12_2.x = 0.0
      SHX12_2.y = 0.0
    end
    SHX13_2 = vector3
    SHX14_2 = SHX4_2.x
    SHX15_2 = SHX12_2.x
    SHX14_2 = SHX14_2 + SHX15_2
    SHX15_2 = SHX4_2.y
    SHX16_2 = SHX12_2.y
    SHX15_2 = SHX15_2 + SHX16_2
    SHX16_2 = SHX4_2.z
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX14_2 = SHX5_2 + SHX10_2
    SHX15_2 = SHX37_1
    SHX16_2 = SHX14_2
    SHX17_2 = SHX11_2
    SHX18_2 = SHX13_2
    SHX15_2(SHX16_2, SHX17_2, SHX18_2)
  end
  SHX7_2 = SHX5_2 + 2
  SHX6_2 = SHX4_1
  SHX8_2 = {}
  SHX9_2 = {}
  SHX9_2.userId = SHX2_2
  SHX9_2.name = "You (dev)"
  SHX10_2 = {}
  SHX10_2.userId = 12345
  SHX10_2.name = "Officer Dev"
  SHX8_2[1] = SHX9_2
  SHX8_2[2] = SHX10_2
  SHX6_2[SHX7_2] = SHX8_2
  SHX6_2 = SHX22_1
  SHX7_2 = SHX5_2 + 2
  SHX6_2(SHX7_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.notify
  SHX7_2 = "~g~Call manager filled with dev test calls. Press ` to open."
  SHX6_2(SHX7_2)
end
SHX41_1 = false
SHX38_1(SHX39_1, SHX40_1, SHX41_1)
