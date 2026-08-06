-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = {}
SHX3_1 = false
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showAllDisplays
  SHX1_2 = "pausemenu"
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
  SHX0_2 = TriggerScreenblurFadeOut
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX0_1 = SHX0_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "3ee4eff5d1"
  SHX0_2(SHX1_2)
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  SHX1_2 = fullPlayerListData
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hideAllDisplays
  SHX3_2 = "pausemenu"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "APP_TOGGLE"
  SHX3_2.app = "pausemenu"
  SHX2_2(SHX3_2)
  SHX2_2 = SHX1_2[3]
  if SHX2_2 then
    SHX3_2 = #SHX2_2
    if 0 ~= SHX3_2 then
      goto SHX_LABEL_27
    end
  end
  SHX2_2 = "Unemployed"
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX3_2 = 32
  SHX4_2 = pairs
  SHX5_2 = fullPlayerListData
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    if "_meta" == SHX8_2 then
      SHX3_2 = SHX9_2[4]
      break
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSendMessage
  SHX5_2 = {}
  SHX5_2.type = "PAUSE_MENU_SET_DATA"
  SHX6_2 = {}
  SHX7_2 = SHX1_2[2]
  SHX6_2.name = SHX7_2
  SHX6_2.permId = SHX0_2
  SHX7_2 = getMoneyStringFormatted
  SHX8_2 = SHX1_2[4]
  SHX7_2 = SHX7_2(SHX8_2)
  SHX6_2.playtime = SHX7_2
  SHX6_2.employment = SHX2_2
  SHX7_2 = table
  SHX7_2 = SHX7_2.count
  SHX8_2 = fullPlayerListData
  SHX7_2 = SHX7_2(SHX8_2)
  SHX7_2 = SHX7_2 - 1
  SHX6_2.playerCount = SHX7_2
  SHX6_2.maxPlayerCount = SHX3_2
  SHX7_2 = GlobalState
  SHX7_2 = SHX7_2.minigamesPlayerCount
  SHX6_2.minigamesPlayerCount = SHX7_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getSecondsUntilChallengesReset
  SHX7_2 = SHX7_2()
  SHX6_2.secondsUntilChallengeReset = SHX7_2
  SHX5_2.info = SHX6_2
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSetFocus
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = TriggerScreenblurFadeIn
  SHX5_2 = 0.0
  SHX4_2(SHX5_2)
  SHX4_2 = TriggerEvent
  SHX5_2 = "7ad2e2f656"
  SHX4_2(SHX5_2)
  SHX4_2 = true
  SHX0_1 = SHX4_2
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.uiRegisterCallback
SHX7_1 = "mapsButtonClicked"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX4_1
  SHX0_2()
  SHX0_2 = ActivateFrontendMenu
  SHX1_2 = -1171018317
  SHX2_2 = true
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.uiRegisterCallback
SHX7_1 = "settingsButtonClicked"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX4_1
  SHX0_2()
  SHX0_2 = ActivateFrontendMenu
  SHX1_2 = -1171018317
  SHX2_2 = true
  SHX3_2 = 6
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.uiRegisterCallback
SHX7_1 = "disconnectButtonClicked"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  SHX0_2()
  SHX0_2 = true
  SHX3_1 = SHX0_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "4e3937e06c"
  SHX0_2(SHX1_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.uiRegisterCallback
SHX7_1 = "pauseMenuClosed"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  SHX0_2()
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.uiRegisterCallback
SHX7_1 = "openDisputeUI"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = "dispute"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "cf221d5214"
    SHX0_2(SHX1_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.uiRegisterCallback
SHX7_1 = "minigamesIP"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.copyToClipboard
  SHX1_2 = "connect minigames.cmg.city"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerEvent
  SHX1_2 = "371eab1d3a"
  SHX2_2 = {}
  SHX2_2.text = "IP Copied To Clipboard"
  SHX2_2.height = "200px"
  SHX2_2.width = "auto"
  SHX2_2.colour = "#FFF"
  SHX2_2.background = "#32CD32"
  SHX2_2.pos = "bottom-right"
  SHX2_2.icon = "success"
  SHX3_2 = 5000
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1(SHX0_2)
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
  SHX2_2.type = "DISPUTE_UI_SET_NOTIFICATIONS"
  SHX3_2 = {}
  SHX4_2 = SHX2_1
  SHX3_2.notifications = SHX4_2
  SHX3_2.makeNoise = SHX0_2
  SHX2_2.info = SHX3_2
  SHX1_2(SHX2_2)
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isNewPlayer
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Press ~INPUT_FRONTEND_PAUSE_ALTERNATE~ to toggle the pause menu."
      SHX0_2(SHX1_2)
    end
    SHX0_2 = InvalidateIdleCam
    SHX0_2()
    SHX0_2 = InvalidateVehicleIdleCam
    SHX0_2()
  end
  SHX0_2 = SHX2_1
  SHX0_2 = #SHX0_2
  if SHX0_2 > 0 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = false
    SHX2_2 = pairs
    SHX3_2 = SHX2_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX7_2.startTime
      SHX8_2 = SHX0_2 - SHX8_2
      SHX9_2 = 5000
      if SHX8_2 > SHX9_2 then
        SHX8_2 = table
        SHX8_2 = SHX8_2.remove
        SHX9_2 = SHX2_1
        SHX10_2 = SHX6_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX1_2 = true
        break
      end
    end
    if SHX1_2 then
      SHX2_2 = SHX6_1
      SHX3_2 = false
      SHX2_2(SHX3_2)
    end
  end
  SHX0_2 = IsPauseMenuActive
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsAnyMenuVisible
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = SetPauseMenuActive
      SHX1_2 = false
      SHX0_2(SHX1_2)
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isPhoneOpen
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 0
        SHX2_2 = 200
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isOnRadioMenu
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.isDrawingInventoryUI
            SHX0_2 = SHX0_2()
            if not SHX0_2 then
              SHX0_2 = SHX5_1
              SHX0_2()
          end
        end
        else
          SHX0_2 = IsControlJustReleased
          SHX1_2 = 0
          SHX2_2 = 199
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if SHX0_2 then
            SHX0_2 = SetPauseMenuActive
            SHX1_2 = true
            SHX0_2(SHX1_2)
            SHX0_2 = ActivateFrontendMenu
            SHX1_2 = -1171018317
            SHX2_2 = true
            SHX3_2 = -1
            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
          end
        end
      end
    end
  end
end
SHX8_1 = CMG
SHX8_1 = SHX8_1.createThreadOnTick
SHX9_1 = SHX7_1
SHX10_1 = "Pause Menu"
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
function SHX9_1()
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
SHX8_1.isPauseMenuOpen = SHX9_1
SHX8_1 = CMG
SHX8_1 = SHX8_1.uiRegisterCallback
SHX9_1 = "disputeSendMessage"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "10b4fb3796"
  SHX3_2 = SHX0_2.targetUserId
  SHX4_2 = SHX0_2.content
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.uiRegisterCallback
SHX9_1 = "disputeSetMuted"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "27c55677f1"
  SHX3_2 = SHX0_2.targetUserId
  SHX4_2 = SHX0_2.isMuted
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.uiRegisterCallback
SHX9_1 = "disputeSetBlocked"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "c50fd01afe"
  SHX3_2 = SHX0_2.targetUserId
  SHX4_2 = SHX0_2.isBlocked
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.uiRegisterCallback
SHX9_1 = "disputeDelete"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "970e626ed0"
  SHX3_2 = SHX0_2.targetUserId
  SHX1_2(SHX2_2, SHX3_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.uiRegisterCallback
SHX9_1 = "disputeMakePayment"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "574cbfaa43"
  SHX3_2 = SHX0_2.messageId
  SHX1_2(SHX2_2, SHX3_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "31952662d5"
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX1_1
  if SHX3_2 and not SHX2_2 then
    return
  end
  SHX3_2 = true
  SHX1_1 = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.type = "DISPUTE_UI_SET_DATA"
  SHX5_2 = {}
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getClientUserId
  SHX6_2 = SHX6_2()
  SHX5_2.localUserId = SHX6_2
  SHX5_2.disputesResult = SHX0_2
  SHX5_2.messagesResult = SHX1_2
  SHX4_2.info = SHX5_2
  SHX3_2(SHX4_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "27c55677f1"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "DISPUTE_UI_SET_MUTED"
  SHX4_2 = {}
  SHX4_2.targetUserId = SHX0_2
  SHX4_2.isMuted = SHX1_2
  SHX3_2.info = SHX4_2
  SHX2_2(SHX3_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "c50fd01afe"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "DISPUTE_UI_SET_BLOCKED"
  SHX4_2 = {}
  SHX4_2.targetUserId = SHX0_2
  SHX4_2.isBlocked = SHX1_2
  SHX3_2.info = SHX4_2
  SHX2_2(SHX3_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "5abfdd0563"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "DISPUTE_UI_SET_MUTED_BY_OTHER"
  SHX4_2 = {}
  SHX4_2.targetUserId = SHX0_2
  SHX4_2.isMuted = SHX1_2
  SHX3_2.info = SHX4_2
  SHX2_2(SHX3_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "82d1d19438"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "DISPUTE_UI_SET_BLOCKED_BY_OTHER"
  SHX4_2 = {}
  SHX4_2.targetUserId = SHX0_2
  SHX4_2.isBlocked = SHX1_2
  SHX3_2.info = SHX4_2
  SHX2_2(SHX3_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "10b4fb3796"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if not SHX1_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.insert
    SHX3_2 = SHX2_1
    SHX4_2 = {}
    SHX5_2 = SHX0_2.name
    SHX4_2.name = SHX5_2
    SHX5_2 = SHX0_2.message
    SHX4_2.content = SHX5_2
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX4_2.startTime = SHX5_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SHX6_1
    SHX3_2 = true
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX1_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientUserId
  SHX2_2 = SHX2_2()
  SHX0_2.localUserId = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "DISPUTE_UI_ADD_MESSAGE"
  SHX3_2.info = SHX0_2
  SHX2_2(SHX3_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "970e626ed0"
function SHX10_1(SHX0_2)
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
  SHX2_2.type = "DISPUTE_UI_DELETE_USER"
  SHX3_2 = {}
  SHX3_2.targetUserId = SHX0_2
  SHX2_2.info = SHX3_2
  SHX1_2(SHX2_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.uiRegisterCallback
SHX9_1 = "notification"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.colour
  if "red" == SHX1_2 then
    SHX1_2 = TriggerEvent
    SHX2_2 = "371eab1d3a"
    SHX3_2 = {}
    SHX4_2 = SHX0_2.message
    SHX3_2.text = SHX4_2
    SHX3_2.height = "60px"
    SHX3_2.width = "auto"
    SHX3_2.colour = "#FFF"
    SHX3_2.background = "#ff0000"
    SHX3_2.pos = "bottom-right"
    SHX3_2.icon = "bad"
    SHX4_2 = 5000
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = TriggerEvent
    SHX2_2 = "371eab1d3a"
    SHX3_2 = {}
    SHX4_2 = SHX0_2.message
    SHX3_2.text = SHX4_2
    SHX3_2.height = "200px"
    SHX3_2.width = "auto"
    SHX3_2.colour = "#FFF"
    SHX3_2.background = "#32CD32"
    SHX3_2.pos = "bottom-right"
    SHX3_2.icon = "success"
    SHX4_2 = 5000
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = nil
SHX9_1 = AddEventHandler
SHX10_1 = "1e1208e937"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = IsPedAPlayer
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = NetworkGetPlayerIndexFromPed
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 >= 0 then
      SHX2_2 = GetPlayerServerId
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 > 0 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerName
        SHX4_2 = SHX1_2
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.clientGetUserIdFromSource
        SHX5_2 = SHX2_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX3_2 and SHX4_2 then
          SHX5_2 = SHX8_1
          if SHX4_2 ~= SHX5_2 then
            SHX5_2 = CMG
            SHX5_2 = SHX5_2.uiSendMessage
            SHX6_2 = {}
            SHX6_2.type = "DISPUTE_UI_ADD_RECENT"
            SHX7_2 = {}
            SHX7_2.targetUserId = SHX4_2
            SHX7_2.name = SHX3_2
            SHX6_2.info = SHX7_2
            SHX5_2(SHX6_2)
            SHX8_1 = SHX4_2
          end
        end
      end
    end
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX9_1.isQuittingGame = SHX10_1
