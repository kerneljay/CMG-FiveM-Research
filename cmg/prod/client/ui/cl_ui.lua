-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1
SHX0_1 = false
SHX1_1 = 0
SHX2_1 = false
SHX3_1 = CMG
SHX3_1 = SHX3_1.uiRegisterCallback
SHX4_1 = "onUsernameCheckValid"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2 + 1
  SHX1_1 = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "fde18c5340"
  SHX3_2 = SHX0_2.name
  SHX4_2 = SHX1_1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = CMG
SHX3_1 = SHX3_1.uiRegisterCallback
SHX4_1 = "onUsernameChosen"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "30a2a149f7"
  SHX3_2 = SHX0_2.name
  SHX1_2(SHX2_2, SHX3_2)
end
SHX3_1(SHX4_1, SHX5_1)
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = false
  SHX0_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showAllDisplays
  SHX1_2 = "username"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerScreenblurFadeOut
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = ""
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX4_1 = CMG
SHX4_1 = SHX4_1.uiRegisterCallback
SHX5_1 = "closeUsernameUI"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = SHX3_1
    SHX0_2()
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "e6c1011fc8"
SHX6_1 = SHX3_1
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "588e246fc4"
function SHX6_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2
  SHX4_2 = SHX1_1
  if SHX3_2 < SHX4_2 then
    return
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSendMessage
  SHX5_2 = {}
  SHX5_2.action = "setUsernameIsValid"
  SHX6_2 = {}
  SHX6_2.name = SHX0_2
  SHX6_2.isValid = SHX1_2
  SHX6_2.errorMessage = SHX2_2
  SHX5_2.data = SHX6_2
  SHX4_2(SHX5_2)
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "69df7aca22"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = true
  SHX0_1 = SHX1_2
  SHX2_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CloseAll
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hideAllDisplays
  SHX2_2 = "username"
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerScreenblurFadeIn
  SHX2_2 = 0.0
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = SHX0_1
    if not SHX1_2 then
      break
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSendMessage
    SHX2_2 = {}
    SHX2_2.type = "APP_TOGGLE"
    SHX2_2.app = "username"
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSetFocus
    SHX2_2 = true
    SHX3_2 = true
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSendMessage
    SHX2_2 = {}
    SHX2_2.action = "setUsernameIsForced"
    SHX3_2 = {}
    SHX3_2.forced = SHX0_2
    SHX2_2.data = SHX3_2
    SHX1_2(SHX2_2)
    SHX1_2 = Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = {}
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2.visible = SHX1_2
  SHX2_2 = TriggerEvent
  SHX3_2 = "CMG:onDisplayVisiblityChange"
  SHX4_2 = SHX0_2.name
  SHX5_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.has
  SHX2_2 = SHX0_2.disabledBy
  SHX3_2 = "user"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = 1
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX2_2 = SetResourceKvpInt
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "cmg_ui_visible_%s"
  SHX5_2 = SHX0_2.name
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2.disabledBy
  SHX1_2 = #SHX1_2
  SHX1_2 = 0 == SHX1_2
  return SHX1_2
end
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = table
  SHX3_2 = SHX3_2.has
  SHX4_2 = SHX1_2.disabledBy
  SHX5_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if not SHX3_2 then
    SHX3_2 = table
    SHX3_2 = SHX3_2.insert
    SHX4_2 = SHX1_2.disabledBy
    SHX5_2 = SHX0_2
    SHX3_2(SHX4_2, SHX5_2)
    if "user" == SHX0_2 then
      SHX3_2 = SHX6_1
      SHX4_2 = SHX1_2
      SHX3_2(SHX4_2)
    end
  end
  SHX3_2 = SHX7_1
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX1_2.visible
  if SHX4_2 ~= SHX3_2 then
    SHX4_2 = SHX5_1
    SHX5_2 = SHX1_2
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
  elseif SHX2_2 then
    SHX4_2 = TriggerEvent
    SHX5_2 = "CMG:onDisplayVisiblityChange"
    SHX6_2 = SHX1_2.name
    SHX7_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
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
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX4_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX8_1
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
end
SHX9_1.hideAllDisplays = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX4_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX4_2 = SHX8_1
    SHX5_2 = SHX1_2
    SHX6_2 = SHX3_2
    SHX7_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX9_1.hideDisplay = SHX10_1
function SHX9_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = false
  SHX4_2 = table
  SHX4_2 = SHX4_2.find
  SHX5_2 = SHX2_2.disabledBy
  SHX6_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if SHX4_2 then
    SHX5_2 = table
    SHX5_2 = SHX5_2.remove
    SHX6_2 = SHX2_2.disabledBy
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
    if "user" == SHX0_2 then
      SHX5_2 = SHX6_1
      SHX6_2 = SHX2_2
      SHX5_2(SHX6_2)
    end
    SHX3_2 = true
  end
  if SHX1_2 then
    SHX5_2 = table
    SHX5_2 = SHX5_2.has
    SHX6_2 = SHX2_2.enabledBy
    SHX7_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if not SHX5_2 then
      SHX5_2 = table
      SHX5_2 = SHX5_2.insert
      SHX6_2 = SHX2_2.enabledBy
      SHX7_2 = SHX0_2
      SHX5_2(SHX6_2, SHX7_2)
      SHX3_2 = true
    end
  end
  if SHX3_2 then
    SHX5_2 = SHX7_1
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = SHX2_2.visible
    if SHX6_2 ~= SHX5_2 then
      SHX6_2 = SHX5_1
      SHX7_2 = SHX2_2
      SHX8_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
end
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = pairs
  SHX2_2 = SHX4_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX9_1
    SHX8_2 = SHX0_2
    SHX9_2 = false
    SHX10_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX10_1.showAllDisplays = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = SHX9_1
    SHX4_2 = SHX1_2
    SHX5_2 = false
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX10_1.showDisplay = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = pairs
  SHX2_2 = {}
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = ...
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX2_2[3] = SHX5_2
  SHX2_2[4] = SHX6_2
  SHX2_2[5] = SHX7_2
  SHX2_2[6] = SHX8_2
  SHX2_2[7] = SHX9_2
  SHX2_2[8] = SHX10_2
  SHX2_2[9] = SHX11_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX4_1
    SHX7_2 = SHX7_2[SHX6_2]
    if SHX7_2 then
      SHX8_2 = SHX9_1
      SHX9_2 = SHX0_2
      SHX10_2 = true
      SHX11_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    end
  end
end
SHX10_1.showForcedDisplay = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    SHX3_2 = false
    return SHX3_2
  end
  if not SHX1_2 then
    SHX3_2 = SHX2_2.visible
    return SHX3_2
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.has
  SHX4_2 = SHX2_2.disabledBy
  SHX5_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = not SHX3_2
  return SHX3_2
end
SHX10_1.isDisplayVisible = SHX11_1
function SHX10_1(...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = {}
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = ...
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX2_2[3] = SHX5_2
  SHX2_2[4] = SHX6_2
  SHX2_2[5] = SHX7_2
  SHX2_2[6] = SHX8_2
  SHX2_2[7] = SHX9_2
  SHX2_2[8] = SHX10_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX4_1
    SHX8_2 = {}
    SHX8_2.name = SHX6_2
    SHX9_2 = {}
    SHX8_2.disabledBy = SHX9_2
    SHX9_2 = {}
    SHX8_2.enabledBy = SHX9_2
    SHX8_2.visible = true
    SHX7_2[SHX6_2] = SHX8_2
    SHX7_2 = GetResourceKvpInt
    SHX8_2 = string
    SHX8_2 = SHX8_2.format
    SHX9_2 = "cmg_ui_visible_%s"
    SHX10_2 = SHX6_2
    SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    if not SHX7_2 then
      SHX7_2 = 0
    end
    if 1 == SHX7_2 then
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX4_1
      SHX9_2 = SHX9_2[SHX6_2]
      SHX9_2 = SHX9_2.disabledBy
      SHX10_2 = "user"
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SHX4_1
      SHX8_2 = SHX8_2[SHX6_2]
      SHX8_2.visible = false
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX0_2
      SHX10_2 = SHX6_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX1_2 = #SHX0_2
  if SHX1_2 > 0 then
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
      SHX0_3 = ipairs
      SHX1_3 = SHX0_2
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = TriggerEvent
        SHX7_3 = "CMG:onDisplayVisiblityChange"
        SHX8_3 = SHX5_3
        SHX9_3 = false
        SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      end
    end
    SHX1_2(SHX2_2)
  end
end
SHX11_1 = SHX10_1
SHX12_1 = "killfeed"
SHX13_1 = "chat"
SHX14_1 = "streetnames"
SHX15_1 = "compass"
SHX16_1 = "ids"
SHX17_1 = "radio"
SHX18_1 = "money"
SHX19_1 = "speedometer"
SHX20_1 = "health"
SHX21_1 = "gang"
SHX22_1 = "notification"
SHX23_1 = "radar"
SHX24_1 = "radialmenu"
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
SHX11_1 = AddEventHandler
SHX12_1 = "CMG:requestChatDisplayVisibilitySync"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX4_1.chat
  if SHX0_2 then
    SHX1_2 = TriggerEvent
    SHX2_2 = "CMG:onDisplayVisiblityChange"
    SHX3_2 = "chat"
    SHX4_2 = SHX0_2.visible
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
SHX11_1 = SHX11_1.registerDevMenuState
SHX12_1 = "UI"
SHX13_1 = {}
SHX13_1.drawingDisplays = false
SHX11_1 = SHX11_1(SHX12_1, SHX13_1)
SHX12_1 = CMG
SHX12_1 = SHX12_1.registerDevMenuThread
SHX13_1 = "UI"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX11_1.drawingDisplays
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.drawDebugText
  SHX1_2 = "---------- Hidden Displays Debug ----------"
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX4_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.drawDebugText
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "%s (%s)"
    SHX9_2 = SHX4_2
    SHX10_2 = SHX5_2.visible
    if SHX10_2 then
      SHX10_2 = "visible"
      if SHX10_2 then
        goto SHX_LABEL_26
      end
    end
    SHX10_2 = "hidden"
    -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
    ::SHX_LABEL_26::
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = SHX5_2.disabledBy
    SHX6_2 = #SHX6_2
    if SHX6_2 > 0 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.drawDebugText
      SHX7_2 = "   > Disabled (%s): %s"
      SHX8_2 = SHX5_2.disabledBy
      SHX8_2 = #SHX8_2
      SHX9_2 = json
      SHX9_2 = SHX9_2.encode
      SHX10_2 = SHX5_2.disabledBy
      SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
    SHX6_2 = SHX5_2.enabledBy
    SHX6_2 = #SHX6_2
    if SHX6_2 > 0 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.drawDebugText
      SHX7_2 = "   > Enabled (%s): %s"
      SHX8_2 = SHX5_2.enabledBy
      SHX8_2 = #SHX8_2
      SHX9_2 = json
      SHX9_2 = SHX9_2.encode
      SHX10_2 = SHX5_2.enabledBy
      SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = CMG
SHX12_1 = SHX12_1.registerDevMenuItems
SHX13_1 = "UI"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Draw Display Debug"
  SHX2_2 = "Whether to draw debug about the current state of shown/hidden displays."
  SHX3_2 = SHX11_1.drawingDisplays
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX11_1.drawingDisplays = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = 10.0
SHX13_1 = {}
SHX14_1 = 0
SHX15_1 = 0
SHX16_1 = 0
SHX17_1 = 255
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX13_1[4] = SHX17_1
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = {}
  SHX1_2 = GetActiveScreenResolution
  SHX1_2, SHX2_2 = SHX1_2()
  SHX3_2 = GetAspectRatio
  SHX4_2 = false
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = 1
  SHX4_2 = SHX4_2 / SHX1_2
  SHX5_2 = 1
  SHX5_2 = SHX5_2 / SHX2_2
  SHX6_2 = nil
  SHX7_2 = nil
  SHX8_2 = SetScriptGfxAlign
  SHX9_2 = string
  SHX9_2 = SHX9_2.byte
  SHX10_2 = "L"
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = string
  SHX10_2 = SHX10_2.byte
  SHX11_2 = "B"
  SHX10_2, SHX11_2 = SHX10_2(SHX11_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = IsBigmapActive
  SHX8_2 = SHX8_2()
  if SHX8_2 then
    SHX8_2 = GetScriptGfxPosition
    SHX9_2 = -0.003975
    SHX10_2 = -0.43841666599999995
    SHX8_2, SHX9_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX7_2 = SHX9_2
    SHX6_2 = SHX8_2
    SHX8_2 = 2.52 * SHX3_2
    SHX8_2 = SHX1_2 / SHX8_2
    SHX8_2 = SHX4_2 * SHX8_2
    SHX0_2.width = SHX8_2
    SHX8_2 = SHX2_2 / 2.3374
    SHX8_2 = SHX5_2 * SHX8_2
    SHX0_2.height = SHX8_2
  else
    SHX8_2 = GetScriptGfxPosition
    SHX9_2 = -0.0045
    SHX10_2 = -0.186888
    SHX8_2, SHX9_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX7_2 = SHX9_2
    SHX6_2 = SHX8_2
    SHX8_2 = 4 * SHX3_2
    SHX8_2 = SHX1_2 / SHX8_2
    SHX8_2 = SHX4_2 * SHX8_2
    SHX0_2.width = SHX8_2
    SHX8_2 = SHX2_2 / 5.674
    SHX8_2 = SHX5_2 * SHX8_2
    SHX0_2.height = SHX8_2
  end
  SHX8_2 = ResetScriptGfxAlign
  SHX8_2()
  SHX0_2.leftX = SHX6_2
  SHX8_2 = SHX0_2.width
  SHX8_2 = SHX6_2 + SHX8_2
  SHX0_2.rightX = SHX8_2
  SHX0_2.topY = SHX7_2
  SHX8_2 = SHX0_2.height
  SHX8_2 = SHX7_2 + SHX8_2
  SHX0_2.bottomY = SHX8_2
  SHX8_2 = SHX0_2.rightX
  SHX9_2 = SHX0_2.leftX
  SHX8_2 = SHX8_2 - SHX9_2
  SHX0_2.Width = SHX8_2
  return SHX0_2
end
function SHX15_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX8_2 = DrawRect
  SHX9_2 = SHX2_2 / 2
  SHX9_2 = SHX0_2 + SHX9_2
  SHX10_2 = SHX3_2 / 2
  SHX10_2 = SHX1_2 + SHX10_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX16_2 = SHX7_2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isLegacyHudEnabled
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDisplayVisible
  SHX1_2 = "health"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEmergencyCallUIHidden
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX14_1
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityHealth
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 - 100
  SHX2_2 = SHX2_2 / 100.0
  if SHX2_2 < 0 then
    SHX2_2 = 0.0
  end
  if 0.98 == SHX2_2 then
    SHX2_2 = 1.0
  end
  SHX3_2 = GetPedArmour
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 / 100.0
  SHX4_2 = GetPlayerUnderwaterTimeRemaining
  SHX5_2 = PlayerId
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX5_2 = SHX12_1
  SHX4_2 = SHX4_2 / SHX5_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getShowHealthPercentageFlag
  SHX5_2 = SHX5_2()
  if SHX3_2 > 1.0 then
    SHX3_2 = 1.0
  end
  SHX6_2 = SHX15_1
  SHX7_2 = SHX1_2.leftX
  SHX7_2 = SHX7_2 + 0.0045
  SHX8_2 = SHX1_2.bottomY
  SHX8_2 = SHX8_2 - 0.004
  SHX9_2 = SHX1_2.Width
  SHX10_2 = 0.009
  SHX11_2 = 88
  SHX12_2 = 88
  SHX13_2 = 88
  SHX14_2 = 200
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = SHX15_1
  SHX7_2 = SHX1_2.leftX
  SHX7_2 = SHX7_2 + 0.0045
  SHX8_2 = SHX1_2.bottomY
  SHX8_2 = SHX8_2 - 0.004
  SHX9_2 = SHX1_2.Width
  SHX9_2 = SHX9_2 * SHX2_2
  SHX10_2 = 0.009
  SHX11_2 = 86
  SHX12_2 = 215
  SHX13_2 = 64
  SHX14_2 = 200
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = SHX15_1
  SHX7_2 = SHX1_2.leftX
  SHX7_2 = SHX7_2 + 0.0045
  SHX8_2 = SHX1_2.bottomY
  SHX8_2 = SHX8_2 + 0.009
  SHX9_2 = SHX1_2.Width
  SHX10_2 = 0.009
  SHX11_2 = 88
  SHX12_2 = 88
  SHX13_2 = 88
  SHX14_2 = 200
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  if SHX5_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.DrawText
    SHX7_2 = SHX1_2.leftX
    SHX8_2 = SHX1_2.Width
    SHX8_2 = SHX8_2 / 2.0
    SHX7_2 = SHX7_2 + SHX8_2
    SHX8_2 = SHX1_2.bottomY
    SHX8_2 = SHX8_2 - 0.0075
    SHX9_2 = tostring
    SHX10_2 = math
    SHX10_2 = SHX10_2.floor
    SHX11_2 = SHX2_2 * 100
    SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX10_2(SHX11_2)
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX10_2 = "%"
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = 0.175
    SHX11_2 = nil
    SHX12_2 = nil
    SHX13_2 = SHX13_1
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
  SHX6_2 = IsPedSwimmingUnderWater
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 and SHX4_2 >= 0.0 then
    SHX6_2 = SHX15_1
    SHX7_2 = SHX1_2.leftX
    SHX7_2 = SHX7_2 + 0.0045
    SHX8_2 = SHX1_2.bottomY
    SHX8_2 = SHX8_2 + 0.009
    SHX9_2 = SHX1_2.Width
    SHX9_2 = SHX9_2 * SHX4_2
    SHX10_2 = 0.009
    SHX11_2 = 243
    SHX12_2 = 214
    SHX13_2 = 102
    SHX14_2 = 200
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  elseif SHX3_2 > 0.0 then
    SHX6_2 = SHX15_1
    SHX7_2 = SHX1_2.leftX
    SHX7_2 = SHX7_2 + 0.0045
    SHX8_2 = SHX1_2.bottomY
    SHX8_2 = SHX8_2 + 0.009
    SHX9_2 = SHX1_2.Width
    SHX9_2 = SHX9_2 * SHX3_2
    SHX10_2 = 0.009
    SHX11_2 = 60
    SHX12_2 = 79
    SHX13_2 = 255
    SHX14_2 = 200
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    if SHX5_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.DrawText
      SHX7_2 = SHX1_2.leftX
      SHX8_2 = SHX1_2.Width
      SHX8_2 = SHX8_2 / 2.0
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX1_2.bottomY
      SHX8_2 = SHX8_2 + 0.006
      SHX9_2 = tostring
      SHX10_2 = math
      SHX10_2 = SHX10_2.floor
      SHX11_2 = SHX3_2 * 100
      SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX10_2(SHX11_2)
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX10_2 = "%"
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX10_2 = 0.175
      SHX11_2 = nil
      SHX12_2 = nil
      SHX13_2 = SHX13_1
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
end
SHX17_1 = CMG
SHX17_1 = SHX17_1.createThreadOnTick
SHX18_1 = SHX16_1
SHX19_1 = "Legacy Health And Armour UI"
SHX17_1(SHX18_1, SHX19_1)
