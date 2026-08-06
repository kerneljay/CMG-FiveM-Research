-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_spellingbee"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = 0
SHX3_1 = nil
SHX4_1 = nil
SHX5_1 = {}
SHX6_1 = nil
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = 0
  SHX3_2 = IsNamedRendertargetRegistered
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = RegisterNamedRendertarget
    SHX4_2 = SHX0_2
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = IsNamedRendertargetLinked
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = LinkNamedRendertarget
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
  end
  SHX3_2 = IsNamedRendertargetRegistered
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = GetNamedRendertargetRenderId
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX3_2
  end
  return SHX2_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = SHX1_1.bMyTurn
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = SHX5_1
  SHX1_2 = #SHX1_2
  SHX2_2 = SHX1_2 + 1
  SHX1_2 = SHX5_1
  SHX1_2[SHX2_2] = SHX0_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX5_1
  SHX0_2 = #SHX0_2
  if SHX0_2 > 0 then
    SHX0_2 = SHX5_1
    SHX0_2 = SHX0_2[1]
    SHX1_2 = table
    SHX1_2 = SHX1_2.remove
    SHX2_2 = SHX5_1
    SHX3_2 = 1
    SHX1_2(SHX2_2, SHX3_2)
    return SHX0_2
  end
  SHX0_2 = nil
  return SHX0_2
end
function SHX10_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = RegisterCommand
  SHX5_2 = SHX0_2
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX3_2
    SHX0_3()
  end
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = RegisterKeyMapping
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = "keyboard"
  SHX8_2 = SHX2_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX11_1 = string
SHX11_1 = SHX11_1.byte
SHX12_1 = "A"
SHX11_1 = SHX11_1(SHX12_1)
SHX12_1 = string
SHX12_1 = SHX12_1.byte
SHX13_1 = "Z"
SHX12_1 = SHX12_1(SHX13_1)
SHX13_1 = 1
for SHX14_1 = SHX11_1, SHX12_1, SHX13_1 do
  SHX15_1 = string
  SHX15_1 = SHX15_1.char
  SHX16_1 = SHX14_1
  SHX15_1 = SHX15_1(SHX16_1)
  SHX16_1 = "key_%s"
  SHX17_1 = SHX16_1
  SHX16_1 = SHX16_1.format
  SHX19_1 = SHX15_1
  SHX18_1 = SHX15_1.lower
  SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX18_1(SHX19_1)
  SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
  SHX17_1 = SHX10_1
  SHX18_1 = SHX16_1
  SHX19_1 = "Spelling Bee (%s)"
  SHX20_1 = SHX19_1
  SHX19_1 = SHX19_1.format
  SHX21_1 = SHX15_1
  SHX19_1 = SHX19_1(SHX20_1, SHX21_1)
  SHX20_1 = SHX15_1
  function SHX21_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
    SHX0_2 = SHX8_1
    SHX1_2 = SHX15_1
    SHX0_2(SHX1_2)
  end
  SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1)
end
SHX11_1 = SHX10_1
SHX12_1 = "key_backspace"
SHX13_1 = "Spelling Bee (Backspace)"
SHX14_1 = "BACK"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX1_2 = "backspace"
  SHX0_2(SHX1_2)
end
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1)
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = DisableAllControlActions
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 245
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX1_1.screenHandle
    if SHX0_2 then
      SHX0_2 = SetTextRenderId
      SHX1_2 = SHX1_1.screenHandle
      SHX0_2(SHX1_2)
      SHX0_2 = SetScriptGfxDrawOrder
      SHX1_2 = 4
      SHX0_2(SHX1_2)
      SHX0_2 = SetScriptGfxDrawBehindPausemenu
      SHX1_2 = true
      SHX0_2(SHX1_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.5
      SHX2_2 = 0.5
      SHX3_2 = 1.0
      SHX4_2 = 1.0
      SHX5_2 = 38
      SHX6_2 = 42
      SHX7_2 = 86
      SHX8_2 = 120
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawSprite
      SHX1_2 = "cmglogo"
      SHX2_2 = "cmglogo"
      SHX3_2 = 0.33
      SHX4_2 = 0.2
      SHX5_2 = 0.1
      SHX6_2 = 0.2
      SHX7_2 = 0.0
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX0_2 = DrawAdvancedTextNoOutline
      SHX1_2 = 0.6
      SHX2_2 = 0.17
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.7
      SHX6_2 = "Spelling Bee"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = SHX1_1.wordAttempt
      if not SHX0_2 then
        SHX0_2 = DrawAdvancedTextNoOutline
        SHX1_2 = 0.584
        SHX2_2 = 0.5
        SHX3_2 = 0.005
        SHX4_2 = 0.0028
        SHX5_2 = 0.6
        SHX6_2 = "Next round is starting soon.."
        SHX7_2 = 255
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 0
        SHX12_2 = 0
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      else
        SHX0_2 = DrawAdvancedTextNoOutline
        SHX1_2 = 0.584
        SHX2_2 = 0.4
        SHX3_2 = 0.005
        SHX4_2 = 0.0028
        SHX5_2 = 0.4
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.getClientPlayerNameFromPlayerSrc
        SHX7_2 = SHX3_1
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = " is typing..."
        SHX6_2 = SHX6_2 .. SHX7_2
        SHX7_2 = 255
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 150
        SHX11_2 = 0
        SHX12_2 = 0
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX0_2 = {}
        SHX1_2 = 255
        SHX2_2 = 255
        SHX3_2 = 255
        SHX0_2[1] = SHX1_2
        SHX0_2[2] = SHX2_2
        SHX0_2[3] = SHX3_2
        SHX1_2 = SHX6_1
        if true == SHX1_2 then
          SHX1_2 = {}
          SHX2_2 = 120
          SHX3_2 = 255
          SHX4_2 = 120
          SHX1_2[1] = SHX2_2
          SHX1_2[2] = SHX3_2
          SHX1_2[3] = SHX4_2
          SHX0_2 = SHX1_2
        else
          SHX1_2 = SHX6_1
          if false == SHX1_2 then
            SHX1_2 = {}
            SHX2_2 = 255
            SHX3_2 = 100
            SHX4_2 = 100
            SHX1_2[1] = SHX2_2
            SHX1_2[2] = SHX3_2
            SHX1_2[3] = SHX4_2
            SHX0_2 = SHX1_2
          end
        end
        SHX1_2 = DrawAdvancedTextNoOutline
        SHX2_2 = 0.584
        SHX3_2 = 0.5
        SHX4_2 = 0.005
        SHX5_2 = 0.0028
        SHX6_2 = 1.2
        SHX7_2 = SHX1_1.wordAttempt
        if not SHX7_2 then
          SHX7_2 = ""
        end
        SHX8_2 = SHX0_2[1]
        SHX9_2 = SHX0_2[2]
        SHX10_2 = SHX0_2[3]
        SHX11_2 = 255
        SHX12_2 = 0
        SHX13_2 = 0
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX1_2 = math
        SHX1_2 = SHX1_2.max
        SHX2_2 = 0
        SHX3_2 = SHX0_1.roundTime
        SHX4_2 = GetGameTimer
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX2_1
        SHX4_2 = SHX4_2 - SHX5_2
        SHX3_2 = SHX3_2 - SHX4_2
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX2_2 = SHX0_1.roundTime
        SHX2_2 = SHX1_2 / SHX2_2
        SHX3_2 = DrawRect
        SHX4_2 = 0.5
        SHX5_2 = 0.95
        SHX6_2 = SHX2_2
        SHX7_2 = 0.05
        SHX8_2 = 0
        SHX9_2 = 255
        SHX10_2 = 100
        SHX11_2 = 255
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      end
      SHX0_2 = SetTextRenderId
      SHX1_2 = GetDefaultScriptRendertargetRenderId
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX1_2()
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX0_2 = SetScriptGfxDrawBehindPausemenu
      SHX1_2 = false
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SHX1_1.bMyTurn
    if SHX0_2 then
      SHX0_2 = SHX9_1
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "5d598b1a80"
        SHX3_2 = SHX0_2
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
  end
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "7de95b2070"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX6_1
  if not SHX1_2 then
    SHX1_1.wordAttempt = SHX0_2
    SHX1_2 = SendNUIMessage
    SHX2_2 = {}
    SHX2_2.transactionType = "keyboardpressed"
    SHX1_2(SHX2_2)
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "33d150c4dc"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX6_1 = SHX0_2
  if SHX0_2 then
    SHX1_2 = SendNUIMessage
    SHX2_2 = {}
    SHX2_2.transactionType = "playCasinoWin"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SendNUIMessage
    SHX2_2 = {}
    SHX2_2.transactionType = "playCasinoLose"
    SHX1_2(SHX2_2)
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "68a7af13ca"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.cancelEmote
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = SHX4_1.x
  SHX4_2 = SHX4_1.y
  SHX5_2 = SHX4_1.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX0_2
  SHX3_2 = SHX4_1.w
  SHX1_2(SHX2_2, SHX3_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "d69eaab027"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = SHX4_1.x
  SHX4_2 = SHX4_1.y
  SHX5_2 = SHX4_1.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX0_2
  SHX3_2 = SHX4_1.w
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = {}
  SHX1_2.dict = "ebrwny_pack000"
  SHX1_2.anim = "ebrwny_sitf000"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = SHX1_2.dict
  SHX2_2(SHX3_2)
  SHX2_2 = TaskPlayAnim
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX1_2.dict
  SHX5_2 = SHX1_2.anim
  SHX6_2 = 8.0
  SHX7_2 = -8.0
  SHX8_2 = -1
  SHX9_2 = 1
  SHX10_2 = 0.0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "286c051578"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.stopEventSequence
  SHX0_2()
  SHX0_2 = RequestStreamedTextureDict
  SHX1_2 = "cmglogo"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = HasStreamedTextureDictLoaded
    SHX1_2 = "cmglogo"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX11_1
  SHX2_2 = "Spelling Bee"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = vector4
  SHX1_2 = 681.03295898438
  SHX2_2 = 564.11865234375
  SHX3_2 = 132.0
  SHX4_2 = 308.97637939453
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CreateCamWithParams
  SHX2_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 50.0
  SHX10_2 = false
  SHX11_2 = 0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2 = SetCamActiveWithInterp
  SHX3_2 = SHX1_2
  SHX4_2 = GetRenderingCam
  SHX4_2 = SHX4_2()
  SHX5_2 = 100
  SHX6_2 = 0
  SHX7_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = true
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = PointCamAtCoord
  SHX3_2 = SHX1_2
  SHX4_2 = 684.69396972656
  SHX5_2 = 573.97253417969
  SHX6_2 = 133.07243347168
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setCanOpenPhone
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = drawNativeText
  SHX3_2 = ""
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hideAllDisplays
  SHX3_2 = "spellingbee"
  SHX2_2(SHX3_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "c01d9035c4"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_1.spawnLocations
  SHX2_2 = SHX2_2[SHX0_2]
  SHX4_1 = SHX2_2
  SHX2_2 = SetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = SHX4_1.x
  SHX5_2 = SHX4_1.y
  SHX6_2 = SHX4_1.z
  SHX7_2 = true
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityHealth
  SHX3_2 = SHX1_2
  SHX4_2 = 103
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityHeading
  SHX3_2 = SHX1_2
  SHX4_2 = SHX4_1.w
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = {}
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createTimerBars
  SHX3_2 = SHX3_2()
  SHX2_2.timers = SHX3_2
  SHX2_2.bMyTurn = false
  SHX1_1 = SHX2_2
  SHX2_2 = currentEvent
  SHX2_2.drawPlayersTimeBar = false
  SHX2_2 = vector4
  SHX3_2 = 686.071
  SHX4_2 = 576.709
  SHX5_2 = 132.466
  SHX6_2 = 340.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = 1358323305
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = CreateObjectNoOffset
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX1_1.screenObject = SHX4_2
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX1_1.screenObject
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityHeading
  SHX5_2 = SHX1_1.screenObject
  SHX6_2 = SHX2_2.w
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX7_1
  SHX5_2 = "cinscreen"
  SHX6_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX1_1.screenHandle = SHX4_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = CMG
SHX12_1 = SHX12_1.registerMinigameCleanupHandler
SHX13_1 = SHX0_1.minigameName
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteThreadOnTick
  SHX1_2 = SHX11_1
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.clearMinigameBounds
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.stopEventSequence
  SHX0_2()
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = DeleteEntity
    SHX1_2 = SHX1_1.screenObject
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setCanOpenPhone
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showAllDisplays
  SHX1_2 = "spellingbee"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showHud
  SHX0_2()
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "31e0204868"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_1 = SHX1_2
  SHX3_1 = SHX0_2
  SHX1_2 = nil
  SHX6_1 = SHX1_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "e9ed909a33"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX1_1.wordAttempt = ""
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "a2fba5330c"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1.bMyTurn = SHX0_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = AddEventHandler
SHX13_1 = "onResourceStop"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = SHX1_1
    if SHX1_2 then
      SHX1_2 = SHX1_1.screenObject
      if SHX1_2 then
        SHX1_2 = DeleteEntity
        SHX2_2 = SHX1_1.screenObject
        SHX1_2(SHX2_2)
      end
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "CMG:ttsPlay"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SetNuiFocus
  SHX2_2 = false
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.type = "playTTS"
  SHX3_2 = "data:%s;base64,%s"
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.format
  SHX5_2 = SHX0_2.mime
  if not SHX5_2 then
    SHX5_2 = "audio/mpeg"
  end
  SHX6_2 = SHX0_2.base64
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2.dataUrl = SHX3_2
  SHX1_2(SHX2_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = {}
SHX12_1.dict = "lunyx@mic@p1"
SHX12_1.anim = "mic@p1"
SHX12_1.prop = "sf_prop_sf_mic_01a"
SHX12_1.bone = 28422
SHX13_1 = {}
SHX14_1 = 0.03
SHX15_1 = 0.02
SHX16_1 = -0.03
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX12_1.pos = SHX13_1
SHX13_1 = {}
SHX14_1 = 162.9608
SHX15_1 = -91.1712
SHX16_1 = -3.8249
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX12_1.rot = SHX13_1
SHX12_1.propEntity = 0
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = ClearPedSecondaryTask
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX12_1.propEntity
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX12_1.propEntity
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DetachEntity
      SHX2_2 = SHX12_1.propEntity
      SHX3_2 = true
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX12_1.propEntity
      SHX1_2(SHX2_2)
    end
  end
  SHX12_1.propEntity = nil
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = SHX12_1.dict
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = SHX12_1.dict
  SHX4_2 = SHX12_1.anim
  SHX5_2 = 8.0
  SHX6_2 = -8.0
  SHX7_2 = -1
  SHX8_2 = 49
  SHX9_2 = 0.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX12_1.prop
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX1_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "emote_object_second"
  SHX5_2 = SHX12_1.prop
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 + 0.2
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX12_1.propEntity = SHX3_2
  SHX3_2 = GetPedBoneIndex
  SHX4_2 = SHX0_2
  SHX5_2 = SHX12_1.bone
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = AttachEntityToEntity
  SHX5_2 = SHX12_1.propEntity
  SHX6_2 = SHX0_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX12_1.pos
  SHX8_2 = SHX8_2[1]
  SHX9_2 = SHX12_1.pos
  SHX9_2 = SHX9_2[2]
  SHX10_2 = SHX12_1.pos
  SHX10_2 = SHX10_2[3]
  SHX11_2 = SHX12_1.rot
  SHX11_2 = SHX11_2[1]
  SHX12_2 = SHX12_1.rot
  SHX12_2 = SHX12_2[2]
  SHX13_2 = SHX12_1.rot
  SHX13_2 = SHX13_2[3]
  SHX14_2 = true
  SHX15_2 = true
  SHX16_2 = false
  SHX17_2 = true
  SHX18_2 = 1
  SHX19_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "5bea9f6180"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = TaskGoStraightToCoord
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 684.23529052734
  SHX3_2 = 571.80072021484
  SHX4_2 = 130.46130371094
  SHX5_2 = 1.0
  SHX6_2 = -1
  SHX7_2 = 155.0
  SHX8_2 = 0.3
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = Wait
  SHX1_2 = 4000
  SHX0_2(SHX1_2)
  SHX0_2 = SHX14_1
  SHX0_2()
  while true do
    SHX0_2 = SHX1_1.bMyTurn
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  while true do
    SHX0_2 = SHX1_1.bMyTurn
    if not SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX13_1
  SHX0_2()
end
SHX15_1(SHX16_1, SHX17_1)
