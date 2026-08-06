-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1
SHX0_1 = 0
SHX1_1 = 0
SHX2_1 = 0
SHX3_1 = 0
SHX4_1 = 0
SHX5_1 = 2
SHX6_1 = {}
SHX6_1[1] = "Whisper"
SHX6_1[2] = "Talking"
SHX6_1[3] = "Shouting"
SHX7_1 = false
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX0_1
  SHX1_2 = SHX1_1
  SHX2_2 = SHX2_1
  SHX3_2 = SHX3_1
  SHX4_2 = SHX4_1
  return SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
end
SHX8_1.getClientDisplayMoney = SHX9_1
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = MumbleIsConnected
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = "Voice Disabled"
    return SHX0_2
  end
  SHX1_2 = SHX5_1
  SHX0_2 = SHX6_1
  SHX0_2 = SHX0_2[SHX1_2]
  if not SHX0_2 then
    SHX0_2 = "Talking"
  end
  return SHX0_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.updateMoney = true
  SHX2_2 = "\194\163"
  SHX3_2 = getMoneyStringFormatted
  SHX4_2 = tostring
  SHX5_2 = SHX0_1
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2.cash = SHX2_2
  SHX2_2 = "\194\163"
  SHX3_2 = getMoneyStringFormatted
  SHX4_2 = tostring
  SHX5_2 = SHX1_1
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2.bank = SHX2_2
  SHX2_2 = "\194\163"
  SHX3_2 = getMoneyStringFormatted
  SHX4_2 = tostring
  SHX5_2 = SHX2_1
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2.redmoney = SHX2_2
  SHX2_2 = "\194\163"
  SHX3_2 = getMoneyStringFormatted
  SHX4_2 = tostring
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getClientBounty
  SHX5_2 = SHX5_2()
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2.bounty = SHX2_2
  SHX2_2 = SHX8_1
  SHX2_2 = SHX2_2()
  SHX1_2.proximity = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getRoundMinimapRightPx
  SHX2_2 = SHX2_2()
  SHX1_2.topLeftAnchor = SHX2_2
  SHX1_2.bountyJammed = false
  SHX0_2(SHX1_2)
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.showMoney = true
  SHX0_2(SHX1_2)
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX2_2 = SHX7_1
  SHX1_2.moneyTalking = SHX2_2
  SHX0_2(SHX1_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.showMoney = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.action = "LOAD_PLAYER_MONEY"
  SHX2_2 = {}
  SHX2_2.type = "cash"
  SHX3_2 = SHX0_1
  SHX2_2.amount = SHX3_2
  SHX1_2.payload = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.action = "LOAD_PLAYER_MONEY"
  SHX2_2 = {}
  SHX2_2.type = "bank"
  SHX3_2 = SHX1_1
  SHX2_2.amount = SHX3_2
  SHX1_2.payload = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.action = "LOAD_PLAYER_MONEY"
  SHX2_2 = {}
  SHX2_2.type = "dirtycash"
  SHX3_2 = SHX2_1
  SHX2_2.amount = SHX3_2
  SHX1_2.payload = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.sendHudNuiMessage
  SHX1_2 = "SET_STATUS"
  SHX2_2 = {}
  SHX2_2.type = "bounty"
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getClientBounty
  SHX3_2 = SHX3_2()
  SHX2_2.value = SHX3_2
  SHX0_2(SHX1_2, SHX2_2)
end
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isLegacyHudEnabled
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX9_1
    SHX0_2()
  else
    SHX0_2 = SHX10_1
    SHX0_2()
  end
end
SHX11_1.refreshMoneyUI = SHX12_1
SHX11_1 = RegisterNUICallback
SHX12_1 = "moneyUILoaded"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isLegacyHudEnabled
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = SHX9_1
    SHX2_2()
  else
    SHX2_2 = SendNUIMessage
    SHX3_2 = {}
    SHX3_2.showMoney = false
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX1_2
  SHX3_2 = "ok"
  SHX2_2(SHX3_2)
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "9c15108c11"
SHX11_1(SHX12_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "9c15108c11"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.refreshMoneyUI
  SHX1_2()
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "CMG:setDisplayBankMoney"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "CMG:setDisplayBankMoney"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.refreshMoneyUI
  SHX1_2()
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "dba3e00154"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "dba3e00154"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.refreshMoneyUI
  SHX1_2()
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "84cbcfbf61"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX3_1 = SHX1_2
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "8afb93c3a0"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX4_1 = SHX1_2
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "CMG:initMoney"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "CMG:initMoney"
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX0_1 = SHX4_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX1_1 = SHX4_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_1 = SHX4_2
  if nil ~= SHX3_2 then
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX4_1 = SHX4_2
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.refreshMoneyUI
  SHX4_2()
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = AddEventHandler
SHX12_1 = "pma-voice:setTalkingMode"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX5_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isLegacyHudEnabled
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = SHX9_1
    SHX1_2()
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = AddEventHandler
SHX12_1 = "mumbleConnected"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isLegacyHudEnabled
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX9_1
    SHX0_2()
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = AddEventHandler
SHX12_1 = "mumbleDisconnected"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isLegacyHudEnabled
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX9_1
    SHX0_2()
  end
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isLegacyHudEnabled
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX7_1
    if SHX0_2 then
      SHX0_2 = false
      SHX7_1 = SHX0_2
      SHX0_2 = SendNUIMessage
      SHX1_2 = {}
      SHX1_2.moneyTalking = false
      SHX0_2(SHX1_2)
    end
    return
  end
  SHX0_2 = NetworkIsPlayerTalking
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX7_1
    if not SHX0_2 then
      SHX0_2 = true
      SHX7_1 = SHX0_2
      SHX0_2 = SendNUIMessage
      SHX1_2 = {}
      SHX1_2.moneyTalking = true
      SHX0_2(SHX1_2)
    end
  else
    SHX0_2 = SHX7_1
    if SHX0_2 then
      SHX0_2 = false
      SHX7_1 = SHX0_2
      SHX0_2 = SendNUIMessage
      SHX1_2 = {}
      SHX1_2.moneyTalking = false
      SHX0_2(SHX1_2)
    end
  end
end
SHX12_1 = CMG
SHX12_1 = SHX12_1.createThreadOnTick
SHX13_1 = SHX11_1
SHX14_1 = "Legacy Money Talking"
SHX12_1(SHX13_1, SHX14_1)
