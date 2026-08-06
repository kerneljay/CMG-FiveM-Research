-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = 1
SHX1_1 = 83
SHX2_1 = 1
SHX3_1 = 84
SHX4_1 = tCMG
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getLocalKeyNameFromButton
  SHX4_2 = GetControlInstructionalButton
  SHX5_2 = SHX0_1
  SHX6_2 = SHX1_1
  SHX7_2 = true
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getLocalKeyNameFromButton
  SHX5_2 = GetControlInstructionalButton
  SHX6_2 = SHX2_1
  SHX7_2 = SHX3_1
  SHX8_2 = true
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SendNUIMessage
  SHX6_2 = {}
  SHX6_2.act = "request"
  SHX6_2.id = SHX0_2
  SHX7_2 = tostring
  SHX8_2 = SHX1_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX6_2.text = SHX7_2
  SHX6_2.time = SHX2_2
  SHX6_2.acceptKey = SHX3_2
  SHX6_2.rejectKey = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.playSound
  SHX6_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX7_2 = "5_SEC_WARNING"
  SHX5_2(SHX6_2, SHX7_2)
end
SHX4_1.request = SHX5_1
SHX4_1 = RegisterNUICallback
SHX5_1 = "request"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.act
  if "response" == SHX1_2 then
    SHX1_2 = CMGclient
    SHX1_2 = SHX1_2.requestResult
    SHX2_2 = {}
    SHX3_2 = SHX0_2.id
    SHX4_2 = SHX0_2.ok
    SHX2_2[1] = SHX3_2
    SHX2_2[2] = SHX4_2
    SHX1_2(SHX2_2)
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = tCMG
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.act = "announce"
  SHX3_2.background = SHX0_2
  SHX3_2.content = SHX1_2
  SHX2_2(SHX3_2)
end
SHX4_1.announce = SHX5_1
SHX4_1 = tCMG
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = SendNUIMessage
  SHX4_2 = {}
  SHX4_2.act = "set_div"
  SHX4_2.name = SHX0_2
  SHX4_2.css = SHX1_2
  SHX4_2.content = SHX2_2
  SHX3_2(SHX4_2)
end
SHX4_1.setDiv = SHX5_1
SHX4_1 = tCMG
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.act = "set_div_css"
  SHX3_2.name = SHX0_2
  SHX3_2.css = SHX1_2
  SHX2_2(SHX3_2)
end
SHX4_1.setDivCss = SHX5_1
SHX4_1 = tCMG
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.act = "set_div_content"
  SHX3_2.name = SHX0_2
  SHX3_2.content = SHX1_2
  SHX2_2(SHX3_2)
end
SHX4_1.setDivContent = SHX5_1
SHX4_1 = tCMG
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.act = "div_execjs"
  SHX3_2.name = SHX0_2
  SHX3_2.js = SHX1_2
  SHX2_2(SHX3_2)
end
SHX4_1.divExecuteJS = SHX5_1
SHX4_1 = tCMG
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.act = "remove_div"
  SHX2_2.name = SHX0_2
  SHX1_2(SHX2_2)
end
SHX4_1.removeDiv = SHX5_1
SHX4_1 = false
SHX5_1 = tCMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  return SHX0_2
end
SHX5_1.isPaused = SHX6_1
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = SHX0_1
  SHX2_2 = SHX1_1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SendNUIMessage
    SHX1_2 = {}
    SHX1_2.act = "event"
    SHX1_2.event = "requestAccept"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = SHX2_1
  SHX2_2 = SHX3_1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SendNUIMessage
    SHX1_2 = {}
    SHX1_2.act = "event"
    SHX1_2.event = "requestDeny"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = IsPauseMenuActive
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX4_1
    if not SHX1_2 then
      SHX1_2 = true
      SHX4_1 = SHX1_2
      SHX1_2 = TriggerEvent
      SHX2_2 = "b9028016de"
      SHX3_2 = SHX4_1
      SHX1_2(SHX2_2, SHX3_2)
  end
  elseif not SHX0_2 then
    SHX1_2 = SHX4_1
    if SHX1_2 then
      SHX1_2 = false
      SHX4_1 = SHX1_2
      SHX1_2 = TriggerEvent
      SHX2_2 = "b9028016de"
      SHX3_2 = SHX4_1
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.createThreadOnTick
SHX7_1 = SHX5_1
SHX8_1 = "GUI Key Check"
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = AddEventHandler
SHX7_1 = "b9028016de"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.act = "pause_change"
  SHX2_2.paused = SHX0_2
  SHX1_2(SHX2_2)
end
SHX6_1(SHX7_1, SHX8_1)
