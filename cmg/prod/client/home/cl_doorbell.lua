-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = Wait
SHX1_1 = 0
SHX0_1(SHX1_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/homes"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
SHX2_1 = false
SHX3_1 = false
SHX4_1 = vector3
SHX5_1 = 0.0
SHX6_1 = 0.0
SHX7_1 = 0.0
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = 0
SHX6_1 = {}
SHX7_1 = nil
SHX8_1 = RegisterNetEvent
SHX9_1 = "e16b232b96"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.notifyPicture
  SHX2_2 = "polnotification"
  SHX3_2 = "doorbell"
  SHX4_2 = "~y~Your doorbell motion sensor has been activated at "
  SHX5_2 = SHX0_2
  SHX6_2 = "."
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
  SHX5_2 = "House Notification"
  SHX6_2 = "~r~Motion Alert"
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.registerHomeCustomisationButtons
SHX9_1 = "Motion Doorbell"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~Adds a doorbell to notify of motion outside the door"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~To view all doorbell cameras do /doorbell"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.ButtonWithStyle
    SHX1_2 = "Purchase"
    SHX2_2 = ""
    SHX3_2 = {}
    SHX3_2.RightLabel = "\194\1632,000,000"
    SHX4_2 = true
    function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3
      if SHX2_3 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "883e3b0778"
        SHX3_3(SHX4_3)
      end
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  else
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Checkbox
    SHX1_2 = "Motion Disabled"
    SHX2_2 = ""
    SHX3_2 = SHX2_1
    SHX4_2 = {}
    function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
      if SHX2_3 then
        SHX4_3 = CMG
        SHX4_3 = SHX4_3.isInHouse
        SHX4_3, SHX5_3 = SHX4_3()
        if SHX4_3 and SHX5_3 then
          SHX6_3 = TriggerServerEvent
          SHX7_3 = "234e1fca14"
          SHX8_3 = SHX5_3
          SHX9_3 = SHX3_3
          SHX6_3(SHX7_3, SHX8_3, SHX9_3)
        end
      end
    end
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "290823ad62"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX1_1 = SHX0_2
  SHX2_1 = SHX1_2
end
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = DisableAllControlActions
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = IsDisabledControlJustReleased
  SHX1_2 = 0
  SHX2_2 = 202
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = drawNativeNotification
  SHX1_2 = [[
Use ~INPUT_LOOK_LR~ or ~INPUT_FRONTEND_LEFT~ and ~INPUT_FRONTEND_RIGHT~ to rotate
Press ~INPUT_FRONTEND_CANCEL~ to exit]]
  SHX0_2(SHX1_2)
  SHX0_2 = GetDisabledControlNormal
  SHX1_2 = 0
  SHX2_2 = 1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = 0.02
  if not (SHX0_2 > SHX1_2) then
    SHX1_2 = IsDisabledControlPressed
    SHX2_2 = 0
    SHX3_2 = 190
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if not SHX1_2 then
      goto SHX_LABEL_45
    end
  end
  SHX1_2 = GetCamRot
  SHX2_2 = SHX5_1
  SHX3_2 = 2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SetCamRot
  SHX3_2 = SHX5_1
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = GetFrameTime
  SHX7_2 = SHX7_2()
  SHX7_2 = SHX7_2 * 100.0
  SHX6_2 = SHX6_2 - SHX7_2
  SHX7_2 = 2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
  ::SHX_LABEL_45::
  SHX1_2 = -0.02
  if not (SHX0_2 < SHX1_2) then
    SHX1_2 = IsDisabledControlPressed
    SHX2_2 = 0
    SHX3_2 = 189
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if not SHX1_2 then
      goto SHX_LABEL_71
    end
  end
  SHX1_2 = GetCamRot
  SHX2_2 = SHX5_1
  SHX3_2 = 2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SetCamRot
  SHX3_2 = SHX5_1
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = GetFrameTime
  SHX7_2 = SHX7_2()
  SHX7_2 = SHX7_2 * 100.0
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = 2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_71:: outside nested blocks until all 'goto SHX_LABEL_71' can see it
  ::SHX_LABEL_71::
  SHX1_2 = true
  return SHX1_2
end
SHX9_1 = RegisterNetEvent
SHX10_1 = "44db557297"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX0_1.homes
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX3_1
  if SHX2_2 then
    return
  end
  SHX2_2 = true
  SHX3_1 = SHX2_2
  SHX2_2 = vector3
  SHX3_2 = SHX1_2.entry_point
  SHX3_2 = SHX3_2[1]
  SHX4_2 = SHX1_2.entry_point
  SHX4_2 = SHX4_2[2]
  SHX5_2 = SHX1_2.entry_point
  SHX5_2 = SHX5_2[3]
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX4_1 = SHX2_2
  SHX2_2 = CreateCam
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX5_1 = SHX2_2
  SHX2_2 = SetCamCoord
  SHX3_2 = SHX5_1
  SHX4_2 = SHX4_1.x
  SHX5_2 = SHX4_1.y
  SHX6_2 = SHX4_1.z
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = true
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetFocusArea
  SHX3_2 = SHX4_1.x
  SHX4_2 = SHX4_1.y
  SHX5_2 = SHX4_1.z
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = "cmg_doorbell_"
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = GetResourceKvpFloat
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 and 0.0 ~= SHX3_2 then
    SHX4_2 = SetCamRot
    SHX5_2 = SHX5_1
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = SHX3_2
    SHX9_2 = 2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
  while true do
    SHX4_2 = SHX3_1
    if not SHX4_2 then
      break
    end
    SHX4_2 = SHX8_1
    SHX4_2 = SHX4_2()
    if not SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = GetCamRot
  SHX5_2 = SHX5_1
  SHX6_2 = 2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SetResourceKvpFloat
  SHX6_2 = SHX2_2
  SHX7_2 = SHX4_2.z
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = ClearFocus
  SHX5_2()
  SHX5_2 = DestroyCam
  SHX6_2 = SHX5_1
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = RenderScriptCams
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = 0
  SHX9_2 = false
  SHX10_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = 0
  SHX5_1 = SHX5_2
  SHX5_2 = false
  SHX3_1 = SHX5_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "4aecf540ff"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX6_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "motiondoorbell"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RMenu
SHX9_1 = SHX9_1.Add
SHX10_1 = "motiondoorbell"
SHX11_1 = "mainmenu"
SHX12_1 = RageUI
SHX12_1 = SHX12_1.CreateMenu
SHX13_1 = "Motion Doorbell"
SHX14_1 = "Main Menu"
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuWidth
SHX15_1 = SHX15_1()
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuHeight
SHX16_1, SHX17_1 = SHX16_1()
SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX9_1 = RMenu
SHX9_1 = SHX9_1.Add
SHX10_1 = "motiondoorbell"
SHX11_1 = "dooroptions"
SHX12_1 = RageUI
SHX12_1 = SHX12_1.CreateSubMenu
SHX13_1 = RMenu
SHX14_1 = SHX13_1
SHX13_1 = SHX13_1.Get
SHX15_1 = "motiondoorbell"
SHX16_1 = "mainmenu"
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = "Motion Doorbell"
SHX15_1 = "Door Options"
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuWidth
SHX16_1 = SHX16_1()
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuHeight
SHX17_1 = SHX17_1()
SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateWhile
SHX10_1 = 1.0
SHX11_1 = RMenu
SHX12_1 = SHX11_1
SHX11_1 = SHX11_1.Get
SHX13_1 = "motiondoorbell"
SHX14_1 = "mainmenu"
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = nil
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "motiondoorbell"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    SHX0_3 = pairs
    SHX1_3 = SHX6_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX5_3 = RageUI
      SHX5_3 = SHX5_3.ButtonWithStyle
      SHX6_3 = SHX4_3
      SHX7_3 = ""
      SHX8_3 = {}
      SHX8_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX9_3 = true
      function SHX10_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX4_3
          SHX7_1 = SHX3_4
        end
      end
      SHX11_3 = RMenu
      SHX12_3 = SHX11_3
      SHX11_3 = SHX11_3.Get
      SHX13_3 = "motiondoorbell"
      SHX14_3 = "dooroptions"
      SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3)
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "motiondoorbell"
  SHX4_2 = "dooroptions"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = SHX7_1
    if not SHX0_3 then
      return
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "View Camera"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "44db557297"
        SHX5_4 = SHX7_1
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX1_3 = SHX7_1
    SHX0_3 = SHX6_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Checkbox
    SHX2_3 = "Motion Disabled"
    SHX3_3 = ""
    SHX4_3 = SHX0_3
    SHX5_3 = {}
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX5_4 = SHX7_1
        SHX4_4 = SHX6_1
        SHX4_4[SHX5_4] = SHX3_4
        SHX4_4 = TriggerServerEvent
        SHX5_4 = "234e1fca14"
        SHX6_4 = SHX7_1
        SHX7_4 = SHX3_4
        SHX4_4(SHX5_4, SHX6_4, SHX7_4)
      end
    end
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    function SHX8_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1)
