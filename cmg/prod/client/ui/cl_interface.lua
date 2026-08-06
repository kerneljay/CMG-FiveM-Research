-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = false
SHX3_1 = false
SHX4_1 = false
SHX5_1 = {}
SHX6_1 = false
SHX7_1 = {}
SHX8_1 = false
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = GetResourceState
  SHX2_2 = "cmgui"
  SHX1_2 = SHX1_2(SHX2_2)
  if "started" == SHX1_2 then
    SHX1_2 = exports
    SHX1_2 = SHX1_2.cmgui
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.sendMessage
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX9_1.uiSendMessage = SHX10_1
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = GetResourceState
  SHX1_2 = "cmgui"
  SHX0_2 = SHX0_2(SHX1_2)
  if "started" ~= SHX0_2 then
    return
  end
  SHX0_2 = pairs
  SHX1_2 = SHX7_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2[3]
    if not SHX6_2 then
      SHX6_2 = pcall
      function SHX7_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3
        SHX0_3 = exports
        SHX0_3 = SHX0_3.cmgui
        SHX1_3 = SHX0_3
        SHX0_3 = SHX0_3.registerCallback
        SHX2_3 = SHX5_2
        SHX2_3 = SHX2_3[1]
        SHX3_3 = SHX5_2
        SHX3_3 = SHX3_3[2]
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX5_2[3] = true
      end
    end
  end
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX8_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = 0
    while true do
      SHX1_3 = 400
      if not (SHX0_3 < SHX1_3) then
        break
      end
      SHX1_3 = GetResourceState
      SHX2_3 = "cmgui"
      SHX1_3 = SHX1_3(SHX2_3)
      if "started" == SHX1_3 then
        SHX1_3 = SHX9_1
        SHX1_3()
        SHX1_3 = true
        SHX2_3 = pairs
        SHX3_3 = SHX7_1
        SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
        for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
          SHX8_3 = SHX7_3[3]
          if not SHX8_3 then
            SHX1_3 = false
            break
          end
        end
        if SHX1_3 then
          break
        end
      end
      SHX0_3 = SHX0_3 + 1
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX1_3 = false
    SHX8_1 = SHX1_3
  end
  SHX0_2(SHX1_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.count
  SHX1_2 = SHX5_1
  SHX0_2 = SHX0_2(SHX1_2)
  if 0 == SHX0_2 then
    SHX0_2 = SHX0_1
    if SHX0_2 then
      goto SHX_LABEL_11
    end
  end
  SHX0_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = SHX6_1
  if SHX1_2 then
    SHX0_2 = false
  end
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
    SHX0_3 = GetResourceState
    SHX1_3 = "cmgui"
    SHX0_3 = SHX0_3(SHX1_3)
    if "started" ~= SHX0_3 then
      return
    end
    SHX0_3 = pcall
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
      SHX0_4 = exports
      SHX0_4 = SHX0_4.cmgui
      SHX1_4 = SHX0_4
      SHX0_4 = SHX0_4.setFocus
      SHX2_4 = SHX0_2
      SHX3_4 = SHX0_2
      if SHX3_4 then
        SHX3_4 = SHX1_1
        if SHX3_4 then
          goto SHX_LABEL_12
        end
      end
      SHX3_4 = false
      -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
      ::SHX_LABEL_12::
      SHX4_4 = SHX0_2
      if SHX4_4 then
        SHX4_4 = SHX2_1
        if SHX4_4 then
          goto SHX_LABEL_19
        end
      end
      SHX4_4 = false
      -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
      ::SHX_LABEL_19::
      SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
    end
    SHX0_3(SHX1_3)
  end
  SHX1_2(SHX2_2)
end
SHX12_1 = CMG
function SHX13_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = GetResourceState
  SHX4_2 = "cmgui"
  SHX3_2 = SHX3_2(SHX4_2)
  if "started" == SHX3_2 then
    if not SHX0_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getTunableValue
      SHX4_2 = "cmgui_focus"
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX0_2 = true
        SHX2_2 = true
        SHX3_2 = true
        SHX4_1 = SHX3_2
    end
    else
      SHX3_2 = false
      SHX4_1 = SHX3_2
    end
    SHX0_1 = SHX0_2
    SHX1_1 = SHX1_2
    SHX3_2 = true == SHX2_2
    SHX2_1 = SHX3_2
    SHX3_2 = SHX11_1
    SHX3_2()
    SHX3_2 = false
    SHX3_1 = SHX3_2
  end
end
SHX12_1.uiSetFocus = SHX13_1
SHX12_1 = CMG
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThreadNow
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = {}
    SHX1_3 = SHX0_2
    SHX2_3 = SHX1_2
    SHX3_3 = false
    SHX0_3[1] = SHX1_3
    SHX0_3[2] = SHX2_3
    SHX0_3[3] = SHX3_3
    SHX1_3 = table
    SHX1_3 = SHX1_3.insert
    SHX2_3 = SHX7_1
    SHX3_3 = SHX0_3
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = SHX10_1
    SHX1_3()
  end
  SHX2_2(SHX3_2)
end
SHX12_1.uiRegisterCallback = SHX13_1
SHX12_1 = AddEventHandler
SHX13_1 = "onClientResourceStart"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if "cmgui" == SHX0_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
    SHX1_2 = SHX10_1
    SHX1_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSetFocus
    SHX2_2 = false
    SHX3_2 = false
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  elseif "cmg" == SHX0_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
    SHX1_2 = SHX10_1
    SHX1_2()
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = AddEventHandler
SHX13_1 = "onClientResourceStop"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if "cmgui" == SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX7_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2[3] = false
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isUsingKeyboard
  SHX1_2 = 0
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX3_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.uiSendMessage
      SHX1_2 = {}
      SHX1_2.type = "controllerToggle"
      SHX1_2.enabled = false
      SHX0_2(SHX1_2)
      SHX0_2 = false
      SHX3_1 = SHX0_2
    end
  else
    SHX0_2 = SHX3_1
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.uiSendMessage
      SHX1_2 = {}
      SHX1_2.type = "controllerToggle"
      SHX1_2.enabled = true
      SHX0_2(SHX1_2)
      SHX0_2 = true
      SHX3_1 = SHX0_2
    end
  end
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = SHX4_1
    if not SHX0_2 then
      goto SHX_LABEL_43
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
  ::SHX_LABEL_43::
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = DisableAllControlActions
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 188
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.type = "controllerInput"
    SHX1_2.inputName = "UP"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 190
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.type = "controllerInput"
    SHX1_2.inputName = "RIGHT"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 187
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.type = "controllerInput"
    SHX1_2.inputName = "DOWN"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 189
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.type = "controllerInput"
    SHX1_2.inputName = "LEFT"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 201
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.type = "controllerInput"
    SHX1_2.inputName = "ACCEPT"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 202
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.type = "controllerInput"
    SHX1_2.inputName = "CANCEL"
    SHX0_2(SHX1_2)
  end
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createThreadOnTick
SHX14_1 = SHX12_1
SHX15_1 = "NUI Controller Input"
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "CMG:resourceFocusUpdated"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = GetInvokingResource
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX5_1
  if SHX0_2 then
    SHX3_2 = true
    if SHX3_2 then
      goto SHX_LABEL_10
    end
  end
  SHX3_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX2_2[SHX1_2] = SHX3_2
  SHX2_2 = SHX11_1
  SHX2_2()
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = CMG
SHX13_1 = SHX13_1.patchFunction
SHX14_1 = "SetNuiFocus"
SHX15_1 = SetNuiFocus
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  if SHX1_2 then
    SHX3_2 = true
    if SHX3_2 then
      goto SHX_LABEL_11
    end
  end
  SHX3_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX5_1.cmg = SHX3_2
  SHX3_2 = SHX11_1
  SHX3_2()
end
SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  SHX0_2 = not SHX0_2
  SHX6_1 = SHX0_2
  SHX0_2 = SHX11_1
  SHX0_2()
end
SHX13_1.toggleTemporaryFocusDisable = SHX14_1
