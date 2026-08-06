-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = Wait
SHX1_1 = 0
SHX0_1(SHX1_1)
SHX0_1 = {}
SHX1_1 = 1
SHX2_1 = false
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX1_1
  SHX2_2 = SHX0_1
  SHX2_2[SHX1_2] = SHX0_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2 + 1
  SHX1_1 = SHX2_2
  return SHX1_2
end
SHX4_1 = CMG
SHX4_1 = SHX4_1.uiRegisterCallback
SHX5_1 = "screenshot_created"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.id
  if SHX1_2 then
    SHX2_2 = SHX0_2.id
    SHX1_2 = SHX0_1
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      SHX2_2 = SHX0_2.id
      SHX1_2 = SHX0_1
      SHX1_2 = SHX1_2[SHX2_2]
      SHX2_2 = SHX0_2.data
      SHX1_2(SHX2_2)
      SHX2_2 = SHX0_2.id
      SHX1_2 = SHX0_1
      SHX1_2[SHX2_2] = nil
    end
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = CMG
SHX4_1 = SHX4_1.uiRegisterCallback
SHX5_1 = "video_created"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.id
  if SHX1_2 then
    SHX2_2 = SHX0_2.id
    SHX1_2 = SHX0_1
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      SHX2_2 = SHX0_2.id
      SHX1_2 = SHX0_1
      SHX1_2 = SHX1_2[SHX2_2]
      SHX2_2 = SHX0_2.currentVideo
      SHX3_2 = SHX0_2.previousVideo
      SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = SHX0_2.id
      SHX1_2 = SHX0_1
      SHX1_2[SHX2_2] = nil
    end
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = CMG
SHX4_1 = SHX4_1.uiRegisterCallback
SHX5_1 = "video_uploading"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.id
  if SHX1_2 then
    SHX2_2 = SHX0_2.id
    SHX1_2 = SHX0_1
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      SHX2_2 = SHX0_2.id
      SHX1_2 = SHX0_1
      SHX1_2 = SHX1_2[SHX2_2]
      SHX1_2()
      SHX2_2 = SHX0_2.id
      SHX1_2 = SHX0_1
      SHX1_2[SHX2_2] = nil
    end
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = CMG
SHX4_1 = SHX4_1.uiRegisterCallback
SHX5_1 = "keep_alive"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.id
  if SHX1_2 then
    SHX2_2 = SHX0_2.id
    SHX1_2 = SHX0_1
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      SHX2_2 = SHX0_2.id
      SHX1_2 = SHX0_1
      SHX1_2 = SHX1_2[SHX2_2]
      SHX2_2 = SHX0_2.failReason
      SHX1_2(SHX2_2)
      SHX2_2 = SHX0_2.id
      SHX1_2 = SHX0_1
      SHX1_2[SHX2_2] = nil
    end
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = CMG
function SHX5_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX4_2 = SHX2_2 or SHX4_2
  if not SHX3_2 or not SHX2_2 then
    SHX4_2 = {}
    SHX5_2 = {}
    SHX4_2.headers = SHX5_2
    SHX4_2.encoding = "jpg"
  end
  SHX5_2 = SHX3_2 or SHX5_2
  if not SHX3_2 then
    SHX5_2 = SHX2_2
  end
  SHX4_2.targetURL = SHX0_2
  SHX4_2.targetField = SHX1_2
  SHX4_2.resultURL = "http://cmgui/screenshot_created"
  SHX6_2 = SHX3_1
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX4_2.correlation = SHX6_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.uiSendMessage
  SHX7_2 = {}
  SHX7_2.action = "securityRecorder"
  SHX7_2.data = SHX4_2
  SHX6_2(SHX7_2)
end
SHX4_1.requestScreenshotUpload = SHX5_1
SHX4_1 = CMG
function SHX5_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX5_2 = SHX2_2 or SHX5_2
  if not SHX3_2 or not SHX2_2 then
    SHX5_2 = {}
    SHX6_2 = {}
    SHX5_2.headers = SHX6_2
    SHX5_2.isVideo = true
    SHX5_2.isManual = false
    SHX5_2.encoding = "webm"
  end
  SHX6_2 = SHX3_2 or SHX6_2
  if not SHX3_2 then
    SHX6_2 = SHX2_2
  end
  SHX5_2.targetURL = SHX0_2
  SHX5_2.targetField = SHX1_2
  SHX5_2.resultURL = "http://cmgui/video_created"
  SHX7_2 = SHX3_1
  SHX8_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX5_2.correlation = SHX7_2
  if SHX4_2 then
    SHX5_2.uploadingResultURL = "http://cmgui/video_uploading"
    SHX7_2 = SHX3_1
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX5_2.uploadingCorrelation = SHX7_2
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.uiSendMessage
  SHX8_2 = {}
  SHX8_2.action = "securityRecorder"
  SHX8_2.data = SHX5_2
  SHX7_2(SHX8_2)
end
SHX4_1.requestVideoUpload = SHX5_1
SHX4_1 = 0
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.action = "securityRecorder"
  SHX3_2 = {}
  SHX3_2.isKeepAlive = true
  SHX4_2 = SHX3_1
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2.correlation = SHX4_2
  SHX3_2.resultURL = "http://cmgui/keep_alive"
  SHX2_2.data = SHX3_2
  SHX1_2(SHX2_2)
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  function SHX1_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    if not SHX0_3 then
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX4_1 = SHX1_3
    end
  end
  SHX0_2(SHX1_2)
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX4_1
  SHX0_2 = SHX0_2 - SHX1_2
  SHX1_2 = 120000
  if SHX0_2 > SHX1_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isDevMode
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "99f7ddf34a"
      SHX0_2(SHX1_2)
    end
  end
end
SHX7_1 = AddEventHandler
SHX8_1 = "CMG:onClientSpawn"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX4_1 = SHX2_2
    while true do
      SHX2_2 = SHX6_1
      SHX2_2()
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 5000
      SHX2_2(SHX3_2)
    end
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "27459d8750"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isDevMode
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX2_2 = "localhost"
      if SHX2_2 then
        goto SHX_LABEL_12
      end
    end
    SHX2_2 = "s1.cmg.city"
    -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
    ::SHX_LABEL_12::
    SHX3_2 = "http://"
    SHX4_2 = SHX2_2
    SHX5_2 = ":30120/cmg/screen?guid="
    SHX6_2 = SHX0_2
    SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.openURL
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  else
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.uiSendMessage
    SHX3_2 = {}
    SHX3_2.action = "fetchPeerIdForScreenView"
    SHX2_2(SHX3_2)
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = CMG
SHX7_1 = SHX7_1.uiRegisterCallback
SHX8_1 = "fetchPeerIdForScreenView"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "27459d8750"
  SHX3_2 = SHX0_2.peerId
  SHX1_2(SHX2_2, SHX3_2)
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "4193527f42"
function SHX9_1(SHX0_2)
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
  SHX2_2.action = "connectScreenViewToPeerId"
  SHX3_2 = {}
  SHX3_2.peerId = SHX0_2
  SHX2_2.data = SHX3_2
  SHX1_2(SHX2_2)
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = CMG
SHX7_1 = SHX7_1.uiRegisterCallback
SHX8_1 = "closeScreenView"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "a7d85abf0b"
  SHX0_2(SHX1_2)
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "ca62cdb8a4"
function SHX9_1(SHX0_2)
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
  SHX2_2.action = "closeScreenViewConnection"
  SHX3_2 = {}
  SHX3_2.isStaff = SHX0_2
  SHX2_2.data = SHX3_2
  SHX1_2(SHX2_2)
end
SHX7_1(SHX8_1, SHX9_1)
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 344
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.action = "setScreenViewFullscreen"
    SHX0_2(SHX1_2)
  end
end
SHX8_1 = CMG
SHX8_1 = SHX8_1.uiRegisterCallback
SHX9_1 = "setScreenViewActive"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.active
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hideAllDisplays
    SHX2_2 = "screenview"
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSetFocus
    SHX2_2 = true
    SHX3_2 = false
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.showAllDisplays
    SHX2_2 = "screenview"
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSetFocus
    SHX2_2 = false
    SHX3_2 = false
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
  SHX1_2 = SHX0_2.fullscreen
  if SHX1_2 then
    SHX1_2 = SHX2_1
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.deleteThreadOnTick
      SHX2_2 = SHX7_1
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX2_1 = SHX1_2
    end
  else
    SHX1_2 = SHX2_1
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.createThreadOnTick
      SHX2_2 = SHX7_1
      SHX3_2 = "Security Windowed Controls"
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = true
      SHX2_1 = SHX1_2
    end
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.uiRegisterCallback
SHX9_1 = "scFail"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "1210872e84"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = false
SHX9_1 = RegisterNUICallback
SHX10_1 = "syncClock"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX8_1
  if not SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "cb3f1ca2d1"
    SHX2_2(SHX3_2)
    SHX2_2 = true
    SHX8_1 = SHX2_2
  end
  SHX2_2 = SHX1_2
  SHX3_2 = "ok"
  SHX2_2(SHX3_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
SHX9_1 = SHX9_1.uiRegisterCallback
SHX10_1 = "tasty"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientUserId
  SHX1_2 = SHX1_2()
  while not SHX1_2 do
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getClientUserId
    SHX2_2 = SHX2_2()
    SHX1_2 = SHX2_2
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = 0
  if SHX0_2 then
    SHX3_2 = SHX0_2[1]
    if SHX3_2 then
      SHX3_2 = tonumber
      SHX4_2 = SHX0_2[1]
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = tonumber
        SHX4_2 = SHX0_2[1]
        SHX3_2 = SHX3_2(SHX4_2)
        SHX2_2 = SHX3_2 ~ 3735928559
      end
    end
  end
  if SHX2_2 > 0 and SHX2_2 ~= SHX1_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "f41bab8346"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
    return
  end
  SHX3_2 = {}
  SHX4_2 = SHX1_2 ~ 3735928559
  SHX3_2[1] = SHX4_2
  return SHX3_2
end
SHX9_1(SHX10_1, SHX11_1)
