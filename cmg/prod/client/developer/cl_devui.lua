-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.registerDevMenuState
SHX1_1 = "Screen UI"
SHX2_1 = {}
SHX2_1.enabled = false
SHX0_1 = SHX0_1(SHX1_1, SHX2_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.registerDevMenuItems
SHX2_1 = "Displays"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Screen Debug"
  SHX2_2 = "Whether to draw basic debug information at the bottom of the screen."
  SHX3_2 = SHX0_1.enabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX0_1.enabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = 0
SHX2_1 = 0
SHX3_1 = 0
SHX4_1 = 0
SHX5_1 = 0
SHX6_1 = 0
SHX7_1 = 0.25
SHX8_1 = false
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.enabled
  if SHX0_2 then
    SHX0_2 = true
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getTextHeight
    SHX2_2 = SHX7_1
    SHX3_2 = 1
    SHX1_2, SHX2_2, SHX3_2 = SHX1_2(SHX2_2, SHX3_2)
    return SHX0_2, SHX1_2, SHX2_2, SHX3_2
  end
  SHX0_2 = false
  SHX1_2 = 0.0
  return SHX0_2, SHX1_2
end
SHX9_1.isDrawingDebugUI = SHX10_1
SHX9_1 = RegisterNUICallback
SHX10_1 = "moneyUILoaded"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.toggleDebugUI = true
  SHX2_2 = SHX0_1.enabled
  SHX1_2.debugEnabled = SHX2_2
  SHX0_2(SHX1_2)
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX1_2 = SHX0_1.enabled
  if SHX0_2 == SHX1_2 then
    return
  end
  SHX0_2 = SHX0_1.enabled
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
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getTextHeight
    SHX1_3 = SHX7_1
    SHX2_3 = 1
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    SHX1_3 = SHX0_1.enabled
    if not SHX1_3 then
      SHX0_3 = 0.0
    end
    SHX1_3 = SetMinimapComponentPosition
    SHX2_3 = "minimap"
    SHX3_3 = "L"
    SHX4_3 = "B"
    SHX5_3 = -0.0045
    SHX6_3 = 0.002
    SHX6_3 = SHX6_3 - SHX0_3
    SHX7_3 = 0.15
    SHX8_3 = 0.188888
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX1_3 = SetMinimapComponentPosition
    SHX2_3 = "minimap_mask"
    SHX3_3 = "L"
    SHX4_3 = "B"
    SHX5_3 = 0.02
    SHX6_3 = 0.032
    SHX6_3 = SHX6_3 - SHX0_3
    SHX7_3 = 0.111
    SHX8_3 = 0.159
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX1_3 = SetMinimapComponentPosition
    SHX2_3 = "minimap_blur"
    SHX3_3 = "L"
    SHX4_3 = "B"
    SHX5_3 = -0.03
    SHX6_3 = 0.022
    SHX6_3 = SHX6_3 - SHX0_3
    SHX7_3 = 0.266
    SHX8_3 = 0.237
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX1_3 = SetRadarBigmapEnabled
    SHX2_3 = true
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = Wait
    SHX2_3 = 0
    SHX1_3(SHX2_3)
    SHX1_3 = SetRadarBigmapEnabled
    SHX2_3 = false
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = Wait
    SHX2_3 = 0
    SHX1_3(SHX2_3)
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.refreshCachedMinimapAnchor
    SHX1_3()
    SHX1_3 = SendNUIMessage
    SHX2_3 = {}
    SHX2_3.toggleDebugUI = true
    SHX3_3 = SHX0_1.enabled
    SHX2_3.debugEnabled = SHX3_3
    SHX1_3(SHX2_3)
  end
  SHX0_2(SHX1_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX9_1
  SHX0_2()
  SHX0_2 = SHX0_1.enabled
  if not SHX0_2 then
    return
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX6_1
  SHX1_2 = SHX0_2 - SHX1_2
  SHX2_2 = 250
  if SHX1_2 > SHX2_2 then
    SHX1_2 = GetFrameTime
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 * 1000.0
    SHX1_1 = SHX1_2
    SHX1_2 = GetGamePool
    SHX2_2 = "CPed"
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = #SHX1_2
    SHX2_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getAllVehicles
    SHX1_2 = SHX1_2()
    SHX1_2 = #SHX1_2
    SHX3_1 = SHX1_2
    SHX1_2 = GetGamePool
    SHX2_2 = "CObject"
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = #SHX1_2
    SHX4_1 = SHX1_2
    SHX1_2 = GetActivePlayers
    SHX1_2 = SHX1_2()
    SHX1_2 = #SHX1_2
    SHX5_1 = SHX1_2
    SHX6_1 = SHX0_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getTextHeight
  SHX2_2 = SHX7_1
  SHX3_2 = 1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.DrawText
  SHX4_2 = 0.0
  SHX5_2 = 1.0
  SHX5_2 = SHX5_2 - SHX1_2
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "P:(%s, %s, %s)"
  SHX8_2 = math
  SHX8_2 = SHX8_2.round
  SHX9_2 = SHX2_2.x
  SHX10_2 = 1
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.round
  SHX10_2 = SHX2_2.y
  SHX11_2 = 1
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = math
  SHX10_2 = SHX10_2.round
  SHX11_2 = SHX2_2.z
  SHX12_2 = 1
  SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = SHX7_1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = GetFinalRenderedCamCoord
  SHX3_2 = SHX3_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText
  SHX5_2 = 0.09
  SHX6_2 = 1.0
  SHX6_2 = SHX6_2 - SHX1_2
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "C:(%s, %s, %s)"
  SHX9_2 = math
  SHX9_2 = SHX9_2.round
  SHX10_2 = SHX3_2.x
  SHX11_2 = 1
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = math
  SHX10_2 = SHX10_2.round
  SHX11_2 = SHX3_2.y
  SHX12_2 = 1
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX11_2 = math
  SHX11_2 = SHX11_2.round
  SHX12_2 = SHX3_2.z
  SHX13_2 = 1
  SHX11_2, SHX12_2, SHX13_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = SHX7_1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText
  SHX5_2 = 0.18
  SHX6_2 = 1.0
  SHX6_2 = SHX6_2 - SHX1_2
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "FOV: %s"
  SHX9_2 = math
  SHX9_2 = SHX9_2.round
  SHX10_2 = GetFinalRenderedCamFov
  SHX10_2 = SHX10_2()
  SHX11_2 = 1
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = SHX7_1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText
  SHX5_2 = 0.22
  SHX6_2 = 1.0
  SHX6_2 = SHX6_2 - SHX1_2
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "FPS: %s"
  SHX9_2 = math
  SHX9_2 = SHX9_2.round
  SHX10_2 = SHX1_1
  SHX11_2 = 1000
  SHX10_2 = SHX11_2 / SHX10_2
  SHX11_2 = 1
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = SHX7_1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText
  SHX5_2 = 0.26
  SHX6_2 = 1.0
  SHX6_2 = SHX6_2 - SHX1_2
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "(%sms)"
  SHX9_2 = math
  SHX9_2 = SHX9_2.round
  SHX10_2 = SHX1_1
  SHX11_2 = 1
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = SHX7_1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText
  SHX5_2 = 0.295
  SHX6_2 = 1.0
  SHX6_2 = SHX6_2 - SHX1_2
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "T:%s"
  SHX9_2 = SHX0_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = SHX7_1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText
  SHX5_2 = 0.34
  SHX6_2 = 1.0
  SHX6_2 = SHX6_2 - SHX1_2
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "F:%s"
  SHX9_2 = GetFrameCount
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2()
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = SHX7_1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText
  SHX5_2 = 0.385
  SHX6_2 = 1.0
  SHX6_2 = SHX6_2 - SHX1_2
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "REQ: %s"
  SHX9_2 = GetNumberOfStreamingRequests
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2()
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = SHX7_1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = GetEntitySpeed
  SHX5_2 = PlayerPedId
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.DrawText
  SHX6_2 = 0.425
  SHX7_2 = 1.0
  SHX7_2 = SHX7_2 - SHX1_2
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "PS: %smph"
  SHX10_2 = math
  SHX10_2 = SHX10_2.round
  SHX11_2 = SHX4_2 * 2.236
  SHX12_2 = 1
  SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = SHX7_1
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.DrawText
  SHX6_2 = 0.96
  SHX7_2 = 1.0
  SHX7_2 = SHX7_2 - SHX1_2
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "OBJ: %s"
  SHX10_2 = SHX4_1
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SHX7_1
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.DrawText
  SHX6_2 = 0.925
  SHX7_2 = 1.0
  SHX7_2 = SHX7_2 - SHX1_2
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "VEH: %s"
  SHX10_2 = SHX3_1
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SHX7_1
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.DrawText
  SHX6_2 = 0.89
  SHX7_2 = 1.0
  SHX7_2 = SHX7_2 - SHX1_2
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "PED: %s"
  SHX10_2 = SHX2_1
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SHX7_1
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.DrawText
  SHX6_2 = 0.855
  SHX7_2 = 1.0
  SHX7_2 = SHX7_2 - SHX1_2
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "PLR: %s"
  SHX10_2 = SHX5_1
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SHX7_1
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = DrawRect
  SHX6_2 = 0.5
  SHX7_2 = SHX1_2 / 2.0
  SHX8_2 = 1.0
  SHX7_2 = SHX8_2 - SHX7_2
  SHX8_2 = 1.0
  SHX9_2 = SHX1_2
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = 0
  SHX13_2 = 255
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX11_1 = CMG
SHX11_1 = SHX11_1.registerDevMenuThread
SHX12_1 = "Screen UI"
SHX13_1 = SHX10_1
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getTextHeight
  SHX7_2 = SHX7_1
  SHX8_2 = 1
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = DrawScaleformMovie
  SHX8_2 = SHX0_2
  SHX9_2 = 0.5
  SHX10_2 = SHX6_2 / 2.0
  SHX11_2 = 0.5
  SHX10_2 = SHX11_2 - SHX10_2
  SHX11_2 = 1.0
  SHX12_2 = 1.0
  SHX12_2 = SHX12_2 - SHX6_2
  SHX13_2 = SHX1_2
  SHX14_2 = SHX2_2
  SHX15_2 = SHX3_2
  SHX16_2 = SHX4_2
  SHX17_2 = SHX5_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
end
SHX12_1 = CMG
SHX12_1 = SHX12_1.patchFunction
SHX13_1 = "origDrawScaleformMovieFullscreen"
SHX14_1 = DrawScaleformMovieFullscreen
function SHX15_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX7_2 = SHX0_1.enabled
  if SHX7_2 then
    SHX7_2 = SHX11_1
    SHX8_2 = SHX1_2
    SHX9_2 = SHX2_2
    SHX10_2 = SHX3_2
    SHX11_2 = SHX4_2
    SHX12_2 = SHX5_2
    SHX13_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  else
    SHX7_2 = SHX0_2
    SHX8_2 = SHX1_2
    SHX9_2 = SHX2_2
    SHX10_2 = SHX3_2
    SHX11_2 = SHX4_2
    SHX12_2 = SHX5_2
    SHX13_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
SHX12_1(SHX13_1, SHX14_1, SHX15_1)
