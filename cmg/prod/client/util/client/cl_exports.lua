-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = nil
function SHX1_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if nil == SHX3_2 then
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX3_2 = SHX4_2
  end
  SHX4_2 = SHX0_1
  if SHX4_2 then
    while true do
      SHX4_2 = SHX0_1
      if not SHX4_2 then
        break
      end
      SHX4_2 = Wait
      SHX5_2 = 0
      SHX4_2(SHX5_2)
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSendMessage
  SHX5_2 = {}
  SHX5_2.action = "togglePrompt"
  SHX6_2 = {}
  SHX6_2.visible = true
  SHX5_2.data = SHX6_2
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSendMessage
  SHX5_2 = {}
  SHX5_2.type = "SET_PROMPT_DATA"
  SHX6_2 = {}
  SHX6_2.title = SHX0_2
  SHX6_2.defaultText = SHX1_2
  SHX6_2.type = SHX2_2
  SHX5_2.info = SHX6_2
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSetFocus
  SHX5_2 = true
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX0_1 = SHX3_2
end
SHX2_1 = CMG
function SHX3_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX1_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = "client"
  SHX7_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX2_1.clientPrompt = SHX3_1
SHX2_1 = tCMG
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX1_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = "server"
  SHX6_2 = nil
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX2_1.prompt = SHX3_1
SHX2_1 = CMG
SHX2_1 = SHX2_1.uiRegisterCallback
SHX3_1 = "promptResult"
function SHX4_1(SHX0_2)
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
  SHX2_2.action = "togglePrompt"
  SHX3_2 = {}
  SHX3_2.visible = false
  SHX2_2.data = SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSetFocus
  SHX2_2 = false
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX0_2.type
  if "client" ~= SHX1_2 then
    SHX1_2 = CMGclient
    SHX1_2 = SHX1_2.promptResult
    SHX2_2 = {}
    SHX3_2 = SHX0_2.result
    SHX2_2[1] = SHX3_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.CreateThreadNow
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX0_1
      SHX1_3 = SHX0_2.result
      SHX0_3(SHX1_3)
    end
    SHX1_2(SHX2_2)
    SHX1_2 = nil
    SHX0_1 = SHX1_2
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = exports
SHX3_1 = "playSound"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.transactionType = SHX0_2
  SHX1_2(SHX2_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = CMG
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.act = "copy_clipboard"
  SHX3_2 = tostring
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2.text = SHX3_2
  SHX1_2(SHX2_2)
end
SHX2_1.copyToClipboard = SHX3_1
SHX2_1 = RegisterNetEvent
SHX3_1 = "bcde297e37"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" ~= SHX1_2 then
    return
  end
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.match
  SHX3_2 = "^%s*(.-)%s*$"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 or "" == SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.copyToClipboard
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = CMG
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.type = "open_url"
  SHX2_2.url = SHX0_2
  SHX1_2(SHX2_2)
end
SHX2_1.openURL = SHX3_1
SHX2_1 = exports
SHX3_1 = "isOnFactionDuty"
function SHX4_1()
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
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "nhs.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
  end
  return SHX0_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = exports
SHX3_1 = "getClientFaction"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientFaction
  return SHX0_2()
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = exports
SHX3_1 = "getClientJob"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientJob
  return SHX0_2()
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = exports
SHX3_1 = "getClientJobGrade"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientJobGrade
  return SHX0_2()
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = exports
SHX3_1 = "getUserId"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  return SHX0_2()
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = exports
SHX3_1 = "notify"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = notify
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = exports
SHX3_1 = "hasClientPermission"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = exports
SHX3_1 = "canPerformSurgery"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "doctor.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "nhs.surgeon.whitelisted"
    SHX0_2 = SHX0_2(SHX1_2)
  end
  return SHX0_2
end
SHX2_1(SHX3_1, SHX4_1)
