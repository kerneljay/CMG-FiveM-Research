-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_attachments"
SHX0_1 = SHX0_1(SHX1_1)
function SHX1_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  SHX3_2 = SHX1_2 or SHX3_2
  SHX3_2 = SHX2_2 or SHX3_2
  if (not (SHX0_2 < SHX1_2) or not SHX1_2) and (not (SHX2_2 < SHX0_2) or not SHX2_2) then
    SHX3_2 = SHX0_2
  end
  return SHX3_2
end
Clamp = SHX1_1
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.sub
  SHX3_2 = 1
  SHX4_2 = 3
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if "~y~" == SHX1_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.sub
    SHX4_2 = 4
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "warn"
    return SHX2_2, SHX3_2
  elseif "~r~" == SHX1_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.sub
    SHX4_2 = 4
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "error"
    return SHX2_2, SHX3_2
  elseif "~g~" == SHX1_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.sub
    SHX4_2 = 4
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "success"
    return SHX2_2, SHX3_2
  elseif "~b~" == SHX1_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.sub
    SHX4_2 = 4
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "blue"
    return SHX2_2, SHX3_2
  elseif "~o~" == SHX1_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.sub
    SHX4_2 = 4
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "warn"
    return SHX2_2, SHX3_2
  elseif "~p~" == SHX1_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.sub
    SHX4_2 = 4
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "info"
    return SHX2_2, SHX3_2
  elseif "~q~" == SHX1_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.sub
    SHX4_2 = 4
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "pink"
    return SHX2_2, SHX3_2
  else
    SHX2_2 = SHX0_2
    SHX3_2 = "info"
    return SHX2_2, SHX3_2
  end
end
SHX2_1 = " Press F11 to set a waypoint."
SHX3_1 = {}
SHX4_1 = 0
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX3_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  SHX3_2 = -1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX3_1
    SHX5_2 = SHX5_2[SHX4_2]
    SHX5_2 = SHX5_2.expiresAt
    if SHX0_2 >= SHX5_2 then
      SHX5_2 = table
      SHX5_2 = SHX5_2.remove
      SHX6_2 = SHX3_1
      SHX7_2 = SHX4_2
      SHX5_2(SHX6_2, SHX7_2)
    end
  end
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX5_1
  SHX0_2()
  SHX0_2 = SHX3_1
  SHX0_2 = SHX0_2[1]
  if not SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = {}
  SHX2_2 = SHX0_2.x
  SHX1_2.x = SHX2_2
  SHX2_2 = SHX0_2.y
  SHX1_2.y = SHX2_2
  SHX2_2 = SHX0_2.z
  SHX1_2.z = SHX2_2
  return SHX1_2
end
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = SHX4_1
  SHX4_2 = SHX4_2 + 1
  SHX4_1 = SHX4_2
  SHX4_2 = table
  SHX4_2 = SHX4_2.insert
  SHX5_2 = SHX3_1
  SHX6_2 = 1
  SHX7_2 = {}
  SHX8_2 = SHX4_1
  SHX7_2.id = SHX8_2
  SHX7_2.x = SHX0_2
  SHX7_2.y = SHX1_2
  SHX7_2.z = SHX2_2
  SHX8_2 = GetGameTimer
  SHX8_2 = SHX8_2()
  SHX8_2 = SHX8_2 + SHX3_2
  SHX7_2.expiresAt = SHX8_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  while true do
    SHX4_2 = SHX3_1
    SHX4_2 = #SHX4_2
    if not (SHX4_2 > 8) then
      break
    end
    SHX4_2 = table
    SHX4_2 = SHX4_2.remove
    SHX5_2 = SHX3_1
    SHX4_2(SHX5_2)
  end
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = AddTextEntry
  SHX2_2 = "CMG_LEGACY_NOTIFY"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = BeginTextCommandThefeedPost
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringTextLabel
  SHX2_2 = "CMG_LEGACY_NOTIFY"
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandThefeedPostTicker
  SHX2_2 = true
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isLegacyHudEnabled
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "string" == SHX1_2 then
      SHX1_2 = SHX8_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    else
      SHX1_2 = type
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if "table" == SHX1_2 then
        SHX1_2 = SHX0_2.message
        if not SHX1_2 then
          SHX1_2 = ""
        end
        SHX2_2 = SHX0_2.title
        if SHX2_2 then
          SHX2_2 = SHX0_2.title
          if "" ~= SHX2_2 then
            SHX2_2 = SHX0_2.title
            SHX3_2 = "\n"
            SHX4_2 = SHX1_2
            SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
            SHX1_2 = SHX2_2
          end
        end
        SHX2_2 = SHX0_2.position
        SHX3_2 = type
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        if "vector3" ~= SHX3_2 then
          SHX3_2 = type
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          if "vector4" ~= SHX3_2 then
            goto SHX_LABEL_68
          end
        end
        SHX3_2 = string
        SHX3_2 = SHX3_2.find
        SHX4_2 = SHX1_2
        SHX5_2 = "Press F11 to set a waypoint"
        SHX6_2 = 1
        SHX7_2 = true
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        if not SHX3_2 then
          SHX3_2 = SHX1_2
          SHX4_2 = SHX2_1
          SHX3_2 = SHX3_2 .. SHX4_2
          SHX1_2 = SHX3_2
        end
        SHX3_2 = SHX7_1
        SHX4_2 = SHX2_2.x
        SHX5_2 = SHX2_2.y
        SHX6_2 = SHX2_2.z
        SHX7_2 = SHX0_2.duration
        if not SHX7_2 then
          SHX7_2 = 8000
        end
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        -- [FIX IF ERROR] Move ::SHX_LABEL_68:: outside nested blocks until all 'goto SHX_LABEL_68' can see it
        ::SHX_LABEL_68::
        SHX3_2 = SHX8_1
        SHX4_2 = SHX1_2
        SHX3_2(SHX4_2)
      end
    end
    return
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 then
    SHX1_2 = SHX1_1
    SHX2_2 = SHX0_2
    SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.sendHudNuiMessage
    SHX4_2 = "HUD_NOTIFY"
    SHX5_2 = {}
    SHX5_2.action = "notify"
    SHX5_2.message = SHX1_2
    SHX5_2.type = SHX2_2
    SHX5_2.title = ""
    SHX5_2.duration = 8000
    SHX5_2.icon = ""
    SHX5_2.sound = "notification"
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      SHX1_2 = SHX0_2.message
      if not SHX1_2 then
        SHX1_2 = ""
      end
      SHX2_2 = SHX0_2.duration
      if not SHX2_2 then
        SHX2_2 = 8000
      end
      SHX3_2 = SHX0_2.position
      SHX4_2 = type
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if "vector3" ~= SHX4_2 then
        SHX4_2 = type
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if "vector4" ~= SHX4_2 then
          goto SHX_LABEL_137
        end
      end
      SHX4_2 = string
      SHX4_2 = SHX4_2.find
      SHX5_2 = SHX1_2
      SHX6_2 = "Press F11 to set a waypoint"
      SHX7_2 = 1
      SHX8_2 = true
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      if not SHX4_2 then
        SHX4_2 = SHX1_2
        SHX5_2 = SHX2_1
        SHX4_2 = SHX4_2 .. SHX5_2
        SHX1_2 = SHX4_2
      end
      SHX4_2 = SHX7_1
      SHX5_2 = SHX3_2.x
      SHX6_2 = SHX3_2.y
      SHX7_2 = SHX3_2.z
      SHX8_2 = SHX2_2
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_137:: outside nested blocks until all 'goto SHX_LABEL_137' can see it
      ::SHX_LABEL_137::
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.sendHudNuiMessage
      SHX5_2 = "HUD_NOTIFY"
      SHX6_2 = {}
      SHX6_2.action = "notify"
      SHX6_2.message = SHX1_2
      SHX7_2 = SHX0_2.type
      if not SHX7_2 then
        SHX7_2 = "info"
      end
      SHX6_2.type = SHX7_2
      SHX7_2 = SHX0_2.title
      if not SHX7_2 then
        SHX7_2 = ""
      end
      SHX6_2.title = SHX7_2
      SHX6_2.duration = SHX2_2
      SHX7_2 = SHX0_2.icon
      if not SHX7_2 then
        SHX7_2 = ""
      end
      SHX6_2.icon = SHX7_2
      SHX7_2 = SHX0_2.sound
      if not SHX7_2 then
        SHX7_2 = "notification"
      end
      SHX6_2.sound = SHX7_2
      SHX4_2(SHX5_2, SHX6_2)
    end
  end
end
notify = SHX9_1
SHX9_1 = RegisterCommand
SHX10_1 = "cmgNotifyWaypoint"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX6_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX1_2 = SetNewWaypoint
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX1_2(SHX2_2, SHX3_2)
end
SHX12_1 = false
SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX9_1 = RegisterKeyMapping
SHX10_1 = "cmgNotifyWaypoint"
SHX11_1 = "Set notification waypoint"
SHX12_1 = "keyboard"
SHX13_1 = "F11"
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX9_1 = 20000
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = nil
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 then
    SHX1_2 = SHX0_2
  else
    SHX2_2 = GetHashKey
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX1_2 = SHX2_2
  end
  SHX2_2 = IsModelInCdimage
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = HasModelLoaded
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = RequestModel
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
      SHX2_2 = GetGameTimer
      SHX2_2 = SHX2_2()
      while true do
        SHX3_2 = HasModelLoaded
        SHX4_2 = SHX1_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          break
        end
        SHX3_2 = GetGameTimer
        SHX3_2 = SHX3_2()
        SHX3_2 = SHX3_2 - SHX2_2
        SHX4_2 = SHX9_1
        if SHX3_2 >= SHX4_2 then
          SHX3_2 = print
          SHX4_2 = string
          SHX4_2 = SHX4_2.format
          SHX5_2 = "CMG.loadModel: timed out after %d ms waiting for model %s (hash %d)"
          SHX6_2 = SHX9_1
          SHX7_2 = tostring
          SHX8_2 = SHX0_2
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = SHX1_2
          SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          SHX3_2 = nil
          return SHX3_2
        end
        SHX3_2 = RequestModel
        SHX4_2 = SHX1_2
        SHX3_2(SHX4_2)
        SHX3_2 = Wait
        SHX4_2 = 0
        SHX3_2(SHX4_2)
      end
    end
    return SHX1_2
  else
    SHX2_2 = nil
    return SHX2_2
  end
end
SHX10_1.loadModel = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = DoesAnimDictExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = print
    SHX2_2 = "Anim dict "
    SHX3_2 = SHX0_2
    SHX4_2 = " does not exist!"
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
    SHX1_2(SHX2_2)
    SHX1_2 = ""
    return SHX1_2
  end
  SHX1_2 = HasAnimDictLoaded
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = RequestAnimDict
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    while true do
      SHX1_2 = HasAnimDictLoaded
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        break
      end
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
  end
  return SHX0_2
end
SHX10_1.loadAnimDict = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = HasClipSetLoaded
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = RequestClipSet
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    while true do
      SHX1_2 = HasClipSetLoaded
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        break
      end
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
  end
end
SHX10_1.loadClipSet = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = HasNamedPtfxAssetLoaded
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = RequestNamedPtfxAsset
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    while true do
      SHX1_2 = HasNamedPtfxAssetLoaded
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        break
      end
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = UseParticleFxAsset
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX10_1.loadPtfx = SHX11_1
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = tostring
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.find
  SHX3_2 = "([-]?)(%d+)([.]?%d*)"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX7_2 = SHX4_2
  SHX6_2 = SHX4_2.reverse
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX6_2
  SHX6_2 = SHX6_2.gsub
  SHX8_2 = "(%d%d%d)"
  SHX9_2 = "%1,"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX6_2
  SHX6_2 = SHX3_2
  SHX8_2 = SHX4_2
  SHX7_2 = SHX4_2.reverse
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX7_2
  SHX7_2 = SHX7_2.gsub
  SHX9_2 = "^,"
  SHX10_2 = ""
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX8_2 = SHX5_2
  SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
  return SHX6_2
end
getMoneyStringFormatted = SHX10_1
SHX10_1 = tCMG
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = GetStreetNameFromHashKey
  SHX4_2 = GetStreetNameAtCoord
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  return SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX10_1.getStreetNameAtCoord = SHX11_1
SHX10_1 = RegisterNetEvent
SHX11_1 = "6fe9f7f4b0"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = notify
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = CMG
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = {}
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getGivenAttachmentsToRemove
  SHX4_2 = SHX4_2()
  if SHX1_2 then
    SHX5_2 = pairs
    SHX6_2 = SHX0_1.attachments
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = HasPedGotWeaponComponent
      SHX12_2 = SHX2_2
      SHX13_2 = SHX0_2
      SHX14_2 = GetHashKey
      SHX15_2 = SHX10_2
      SHX14_2, SHX15_2 = SHX14_2(SHX15_2)
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      if SHX11_2 then
        SHX11_2 = table
        SHX11_2 = SHX11_2.has
        SHX12_2 = SHX4_2[SHX0_2]
        if not SHX12_2 then
          SHX12_2 = {}
        end
        SHX13_2 = SHX10_2
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        if not SHX11_2 then
          SHX11_2 = table
          SHX11_2 = SHX11_2.insert
          SHX12_2 = SHX3_2
          SHX13_2 = SHX10_2
          SHX11_2(SHX12_2, SHX13_2)
        end
      end
    end
  else
    SHX5_2 = pairs
    SHX6_2 = SHX0_1.attachments
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = HasPedGotWeaponComponent
      SHX12_2 = SHX2_2
      SHX13_2 = SHX0_2
      SHX14_2 = GetHashKey
      SHX15_2 = SHX10_2
      SHX14_2, SHX15_2 = SHX14_2(SHX15_2)
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      if SHX11_2 then
        SHX11_2 = table
        SHX11_2 = SHX11_2.insert
        SHX12_2 = SHX3_2
        SHX13_2 = SHX10_2
        SHX11_2(SHX12_2, SHX13_2)
      end
    end
  end
  return SHX3_2
end
SHX10_1.getAllWeaponAttachments = SHX11_1
SHX10_1 = "nativeHelpMessage"
SHX11_1 = 10000
SHX12_1 = 0
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hideDisplay
  SHX3_2 = "chat"
  SHX4_2 = SHX10_1
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX11_1
  SHX2_2 = SHX2_2 + SHX3_2
  SHX12_1 = SHX2_2
  SHX2_2 = AddTextEntry
  SHX3_2 = "HELP_TEXT_BUFFER"
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = ""
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = BeginTextCommandDisplayHelp
  SHX3_2 = "STRING"
  SHX2_2(SHX3_2)
  SHX2_2 = AddTextComponentSubstringTextLabel
  SHX3_2 = "HELP_TEXT_BUFFER"
  SHX2_2(SHX3_2)
  if SHX1_2 then
    SHX2_2 = EndTextCommandDisplayHelp
    SHX3_2 = 0
    SHX4_2 = false
    SHX5_2 = true
    SHX6_2 = -1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX2_2 = EndTextCommandDisplayHelp
    SHX3_2 = 0
    SHX4_2 = false
    SHX5_2 = false
    SHX6_2 = -1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
end
drawNativeNotification = SHX13_1
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = BeginTextCommandPrint
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandPrint
  SHX2_2 = 1000
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
drawNativeText = SHX13_1
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = BeginTextCommandPrint
  SHX1_2 = "STRING"
  SHX0_2(SHX1_2)
  SHX0_2 = AddTextComponentSubstringPlayerName
  SHX1_2 = ""
  SHX0_2(SHX1_2)
  SHX0_2 = EndTextCommandPrint
  SHX1_2 = 1
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
clearNativeText = SHX13_1
SHX13_1 = CMG
function SHX14_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadModel
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = CreateVehicle
  SHX10_2 = SHX8_2
  SHX11_2 = SHX1_2
  SHX12_2 = SHX2_2
  SHX13_2 = SHX3_2
  SHX14_2 = SHX4_2
  SHX15_2 = SHX6_2 or SHX15_2
  if not SHX6_2 then
    SHX15_2 = false
  end
  SHX16_2 = SHX7_2 or SHX16_2
  if not SHX7_2 then
    SHX16_2 = false
  end
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = SHX8_2
  SHX10_2(SHX11_2)
  SHX10_2 = SetEntityAsMissionEntity
  SHX11_2 = SHX9_2
  SHX12_2 = false
  SHX13_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.initLocalVehicle
  SHX11_2 = SHX9_2
  SHX10_2(SHX11_2)
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = SHX8_2
  SHX10_2(SHX11_2)
  if SHX5_2 then
    SHX10_2 = SetPedIntoVehicle
    SHX11_2 = PlayerPedId
    SHX11_2 = SHX11_2()
    SHX12_2 = SHX9_2
    SHX13_2 = -1
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  end
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.setVehicleFuel
  SHX11_2 = SHX9_2
  SHX12_2 = 100
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = ModifyVehicleTopSpeed
  SHX11_2 = SHX9_2
  SHX12_2 = 1.0
  SHX10_2(SHX11_2, SHX12_2)
  return SHX9_2
end
SHX13_1.spawnVehicle = SHX14_1
SHX13_1 = CMG
function SHX14_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = SetVehicleMod
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getTunableValue
  SHX5_2 = "speed_mods_hack"
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = ModifyVehicleTopSpeed
    SHX5_2 = SHX0_2
    SHX6_2 = 1.0
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = GetModTextLabel
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  if SHX4_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.requestStreamFileClient
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  end
end
SHX13_1.setVehicleMod = SHX14_1
SHX13_1 = CMG
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = GetHashKey
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX1_2 = SHX2_2
  end
  SHX2_2 = RequestWeaponAsset
  SHX3_2 = SHX1_2
  SHX4_2 = 31
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  while true do
    SHX2_2 = HasWeaponAssetLoaded
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  return SHX1_2
end
SHX13_1.loadWeaponAsset = SHX14_1
SHX13_1 = CMG
function SHX14_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadWeaponAsset
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = CreateWeaponObject
  SHX6_2 = SHX4_2
  SHX7_2 = 0
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2
  SHX11_2 = true
  SHX12_2 = 0
  SHX13_2 = 0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  return SHX5_2
end
SHX13_1.spawnWeaponObject = SHX14_1
SHX13_1 = CMG
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetActivePlayers
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetPlayerPed
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX0_2 == SHX8_2 then
      SHX8_2 = GetPlayerServerId
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      return SHX8_2
    end
  end
  SHX2_2 = nil
  return SHX2_2
end
SHX13_1.getPedServerId = SHX14_1
SHX13_1 = CMG
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetNetworkIdExistsOnAllMachines
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetNetworkIdCanMigrate
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = NetworkUseHighPrecisionBlending
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX13_1.syncNetworkId = SHX14_1
SHX13_1 = Citizen
SHX13_1 = SHX13_1.CreateThread
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = HasStreamedTextureDictLoaded
  SHX1_2 = "timerbars"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = RequestStreamedTextureDict
    SHX1_2 = "timerbars"
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    while true do
      SHX0_2 = HasStreamedTextureDictLoaded
      SHX1_2 = "timerbars"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        break
      end
      SHX0_2 = Wait
      SHX1_2 = 0
      SHX0_2(SHX1_2)
    end
  end
end
SHX13_1(SHX14_1)
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX6_2 = 0.17
  SHX7_2 = -0.01
  SHX8_2 = 0.038
  SHX9_2 = 0.008
  SHX10_2 = 0.005
  if not SHX5_2 then
    SHX5_2 = 0.32
  end
  if not SHX3_2 then
    SHX3_2 = 0.5
  end
  SHX11_2 = -0.04
  SHX12_2 = 0.014
  SHX13_2 = GetSafeZoneSize
  SHX13_2 = SHX13_2()
  SHX14_2 = SHX12_2 + SHX13_2
  SHX14_2 = SHX14_2 - SHX6_2
  SHX15_2 = SHX6_2 / 2
  SHX14_2 = SHX14_2 + SHX15_2
  SHX15_2 = SHX11_2 + SHX13_2
  SHX15_2 = SHX15_2 - SHX8_2
  SHX16_2 = SHX8_2 / 2
  SHX15_2 = SHX15_2 + SHX16_2
  SHX16_2 = SHX2_2 - 1
  SHX17_2 = SHX8_2 + SHX10_2
  SHX16_2 = SHX16_2 * SHX17_2
  SHX15_2 = SHX15_2 - SHX16_2
  SHX16_2 = DrawSprite
  SHX17_2 = "timerbars"
  SHX18_2 = "all_black_bg"
  SHX19_2 = SHX14_2
  SHX20_2 = SHX15_2
  SHX21_2 = SHX6_2
  SHX22_2 = 0.038
  SHX23_2 = 0
  SHX24_2 = 0
  SHX25_2 = 0
  SHX26_2 = 0
  SHX27_2 = 128
  SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX16_2 = DrawGTAText
  SHX17_2 = SHX0_2
  SHX18_2 = SHX13_2 - SHX6_2
  SHX18_2 = SHX18_2 + 0.06
  SHX19_2 = SHX15_2 - SHX9_2
  SHX20_2 = SHX5_2
  SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX16_2 = DrawGTAText
  SHX17_2 = string
  SHX17_2 = SHX17_2.upper
  SHX18_2 = SHX1_2
  SHX17_2 = SHX17_2(SHX18_2)
  SHX18_2 = SHX13_2 - SHX7_2
  SHX19_2 = SHX4_2 or SHX19_2
  if not SHX4_2 then
    SHX19_2 = 0
  end
  SHX18_2 = SHX18_2 + SHX19_2
  SHX19_2 = SHX15_2 - 0.0175
  SHX20_2 = SHX3_2
  SHX21_2 = true
  SHX22_2 = SHX6_2 / 2
  SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
end
DrawGTATimerBar = SHX13_1
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = {}
  SHX1_2 = ipairs
  SHX2_2 = GetActivePlayers
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  return SHX0_2
end
GetPlayers = SHX13_1
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = GetPlayers
  SHX1_2 = SHX1_2()
  SHX2_2 = -1
  SHX3_2 = -1
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX4_2
  SHX7_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = ipairs
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = GetPlayerPed
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 ~= SHX4_2 then
      SHX13_2 = GetEntityCoords
      SHX14_2 = GetPlayerPed
      SHX15_2 = SHX11_2
      SHX14_2 = SHX14_2(SHX15_2)
      SHX15_2 = false
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX14_2 = SHX13_2 - SHX5_2
      SHX14_2 = #SHX14_2
      if -1 == SHX2_2 or SHX2_2 > SHX14_2 then
        SHX3_2 = SHX11_2
        SHX2_2 = SHX14_2
      end
    end
  end
  if SHX0_2 >= SHX2_2 then
    return SHX3_2
  else
    SHX6_2 = nil
    return SHX6_2
  end
end
GetClosestPlayer = SHX13_1
SHX13_1 = CMG
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.randomseed
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX4_2 = math
  SHX4_2 = SHX4_2.random
  SHX4_2 = SHX4_2()
  SHX3_2 = SHX3_2 * SHX4_2
  SHX3_2 = SHX3_2 * 2
  SHX2_2(SHX3_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  return SHX2_2(SHX3_2, SHX4_2)
end
SHX13_1.randomNum = SHX14_1
SHX13_1 = CMG
function SHX14_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2
  SHX7_2 = notify
  SHX8_2 = {}
  SHX8_2.message = SHX2_2
  SHX8_2.type = "error"
  SHX9_2 = SHX3_2 or SHX9_2
  if not SHX3_2 then
    SHX9_2 = ""
  end
  SHX8_2.title = SHX9_2
  SHX8_2.duration = 8000
  SHX7_2(SHX8_2)
end
SHX13_1.notifyPicture = SHX14_1
SHX13_1 = RegisterNetEvent
SHX14_1 = "6950d35d8a"
SHX15_1 = CMG
SHX15_1 = SHX15_1.notifyPicture
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = 0
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1
  return SHX0_2
end
SHX14_1.getSoundEventCode = SHX15_1
SHX14_1 = TriggerServerEvent
SHX15_1 = "eb5c18625c"
SHX14_1(SHX15_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "3ca0ceef14"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX13_1 = SHX0_2
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "6b24c7d390"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX3_2 - SHX0_2
  SHX4_2 = #SHX4_2
  if SHX2_2 >= SHX4_2 then
    SHX4_2 = SendNUIMessage
    SHX5_2 = {}
    SHX5_2.transactionType = SHX1_2
    SHX4_2(SHX5_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "__CMG_callback:client"
function SHX16_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = promise
  SHX1_2 = SHX1_2.new
  SHX1_2 = SHX1_2()
  SHX2_2 = TriggerEvent
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "c__CMG_callback:%s"
  SHX5_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  function SHX4_2(...)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX1_2
    SHX1_3 = SHX0_3
    SHX0_3 = SHX0_3.resolve
    SHX2_3 = {}
    SHX3_3 = ...
    SHX2_3[1] = SHX3_3
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX5_2, SHX6_2 = ...
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Await
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = TriggerServerEvent
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "__CMG_callback:server:%s"
  SHX6_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = table
  SHX5_2 = SHX5_2.unpack
  SHX6_2 = SHX2_2
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = CMG
function SHX15_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = assert
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = "string" == SHX2_2
  SHX3_2 = "Invalid Lua type at argument #1, expected string, got "
  SHX4_2 = type
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = promise
  SHX1_2 = SHX1_2.new
  SHX1_2 = SHX1_2()
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = RegisterNetEvent
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "__CMG_callback:client:%s:%s"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = AddEventHandler
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "__CMG_callback:client:%s:%s"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  function SHX5_2(...)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX1_2
    SHX1_3 = SHX0_3
    SHX0_3 = SHX0_3.resolve
    SHX2_3 = {}
    SHX3_3 = ...
    SHX2_3[1] = SHX3_3
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "__CMG_callback:server"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX2_2
  SHX8_2 = ...
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Await
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = RemoveEventHandler
  SHX6_2 = SHX3_2
  SHX5_2(SHX6_2)
  SHX5_2 = table
  SHX5_2 = SHX5_2.unpack
  SHX6_2 = SHX4_2
  return SHX5_2(SHX6_2)
end
SHX14_1.TriggerServerCallback = SHX15_1
SHX14_1 = CMG
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = assert
  SHX3_2 = type
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = "string" == SHX3_2
  SHX4_2 = "Invalid Lua type at argument #1, expected string, got "
  SHX5_2 = type
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = assert
  SHX3_2 = type
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = "function" == SHX3_2
  SHX4_2 = "Invalid Lua type at argument #2, expected function, got "
  SHX5_2 = type
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = AddEventHandler
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "c__CMG_callback:%s"
  SHX5_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  function SHX4_2(SHX0_3, ...)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX0_3
    SHX2_3 = SHX1_2
    SHX3_3 = ...
    SHX2_3, SHX3_3 = SHX2_3(SHX3_3)
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX2_2(SHX3_2, SHX4_2)
end
SHX14_1.RegisterClientCallback = SHX15_1
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX2_2
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.sort
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = 0
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX3_2
    SHX0_3 = SHX0_3 + 1
    SHX3_2 = SHX0_3
    SHX1_3 = SHX3_2
    SHX0_3 = SHX2_2
    SHX0_3 = SHX0_3[SHX1_3]
    if nil == SHX0_3 then
      SHX0_3 = nil
      return SHX0_3
    else
      SHX1_3 = SHX3_2
      SHX0_3 = SHX2_2
      SHX0_3 = SHX0_3[SHX1_3]
      SHX2_3 = SHX3_2
      SHX1_3 = SHX2_2
      SHX2_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX0_2
      SHX1_3 = SHX1_3[SHX2_3]
      return SHX0_3, SHX1_3
    end
  end
  return SHX4_2
end
pairsByKeys = SHX14_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = {}
  SHX2_2 = pairsByKeys
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX1_2
    SHX10_2 = {}
    SHX10_2.title = SHX6_2
    SHX10_2.value = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX0_2 = SHX1_2
  return SHX0_2
end
sortAlphabetically = SHX14_1
SHX14_1 = CMG
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if nil == SHX1_2 then
    SHX1_2 = ""
  end
  SHX2_2 = 0
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.debugLog
    SHX5_2 = string
    SHX5_2 = SHX5_2.format
    SHX6_2 = "no such entity %s"
    SHX7_2 = SHX1_2
    SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  else
    SHX4_2 = NetworkGetNetworkIdFromEntity
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX2_2 = SHX4_2
    if SHX2_2 == SHX0_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.debugLog
      SHX5_2 = string
      SHX5_2 = SHX5_2.format
      SHX6_2 = "no such networked entity %s"
      SHX7_2 = SHX1_2
      SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
  end
  return SHX2_2
end
SHX14_1.getNetId = SHX15_1
SHX14_1 = CMG
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if nil == SHX1_2 then
    SHX1_2 = ""
  end
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.debugLog
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = [[
no object by ID %s
%s]]
    SHX6_2 = SHX0_2
    SHX7_2 = SHX1_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  else
    SHX3_2 = NetworkGetEntityFromNetworkId
    SHX4_2 = SHX0_2
    return SHX3_2(SHX4_2)
  end
end
SHX14_1.getObjectId = SHX15_1
SHX14_1 = {}
SHX15_1 = {}
SHX16_1 = Citizen
SHX16_1 = SHX16_1.CreateThread
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModule
  SHX1_2 = "cfg/cfg_garages"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.garages
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      if "_config" ~= SHX5_2 then
        SHX13_2 = SHX12_2.name
        SHX14_2 = string
        SHX14_2 = SHX14_2.lower
        SHX15_2 = SHX11_2
        SHX14_2 = SHX14_2(SHX15_2)
        SHX15_2 = SHX14_1
        SHX15_2 = SHX15_2[SHX14_2]
        if not SHX15_2 then
          SHX15_2 = SHX14_1
          SHX16_2 = {}
          SHX16_2.name = SHX13_2
          SHX16_2.garageType = SHX5_2
          SHX15_2[SHX14_2] = SHX16_2
          SHX15_2 = GetHashKey
          SHX16_2 = SHX14_2
          SHX15_2 = SHX15_2(SHX16_2)
          SHX16_2 = SHX15_1
          SHX16_2[SHX15_2] = SHX14_2
        end
      end
    end
  end
end
SHX16_1(SHX17_1)
SHX16_1 = CMG
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.lower
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX14_1
  SHX1_2 = SHX2_2[SHX1_2]
  if SHX1_2 then
    SHX1_2 = string
    SHX1_2 = SHX1_2.lower
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = SHX14_1
    SHX1_2 = SHX2_2[SHX1_2]
    SHX1_2 = SHX1_2.name
    return SHX1_2
  end
  SHX1_2 = ""
  return SHX1_2
end
SHX16_1.getVehicleNameFromId = SHX17_1
SHX16_1 = CMG
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.lower
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX14_1
  SHX1_2 = SHX2_2[SHX1_2]
  SHX1_2 = SHX1_2.garageType
  return SHX1_2
end
SHX16_1.getGarageNameFromId = SHX17_1
SHX16_1 = CMG
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX15_1
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
SHX16_1.getVehicleIdFromModel = SHX17_1
SHX16_1 = math
SHX16_1 = SHX16_1.rad
SHX17_1 = math
SHX17_1 = SHX17_1.cos
SHX18_1 = math
SHX18_1 = SHX18_1.sin
SHX19_1 = math
SHX19_1 = SHX19_1.abs
SHX20_1 = CMG
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX16_1
  SHX2_2 = SHX0_2.x
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX16_1
  SHX3_2 = SHX0_2.z
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = vector3
  SHX4_2 = SHX18_1
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = -SHX4_2
  SHX5_2 = SHX19_1
  SHX6_2 = SHX17_1
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX4_2 * SHX5_2
  SHX5_2 = SHX17_1
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX19_1
  SHX7_2 = SHX17_1
  SHX8_2 = SHX1_2
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX5_2 = SHX5_2 * SHX6_2
  SHX6_2 = SHX18_1
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
  return SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX20_1.rotationToDirection = SHX21_1
SHX20_1 = {}
SHX20_1.b_116 = "WheelMouseMove.Up"
SHX20_1.b_115 = "WheelMouseMove.Up"
SHX20_1.b_100 = "MouseClick.LeftClick"
SHX20_1.b_101 = "MouseClick.RightClick"
SHX20_1.b_102 = "MouseClick.MiddleClick"
SHX20_1.b_103 = "MouseClick.ExtraBtn1"
SHX20_1.b_104 = "MouseClick.ExtraBtn2"
SHX20_1.b_105 = "MouseClick.ExtraBtn3"
SHX20_1.b_106 = "MouseClick.ExtraBtn4"
SHX20_1.b_107 = "MouseClick.ExtraBtn5"
SHX20_1.b_108 = "MouseClick.ExtraBtn6"
SHX20_1.b_109 = "MouseClick.ExtraBtn7"
SHX20_1.b_110 = "MouseClick.ExtraBtn8"
SHX20_1.b_1015 = "AltLeft"
SHX20_1.b_1000 = "ShiftLeft"
SHX20_1.b_2000 = "Space"
SHX20_1.b_1013 = "ControlLeft"
SHX20_1.b_1014 = "ControlRight"
SHX20_1.b_140 = "Numpad4"
SHX20_1.b_142 = "Numpad6"
SHX20_1.b_144 = "Numpad8"
SHX20_1.b_141 = "Numpad5"
SHX20_1.b_143 = "Numpad7"
SHX20_1.b_145 = "Numpad9"
SHX20_1.b_200 = "Insert"
SHX20_1.b_1012 = "CapsLock"
SHX20_1.b_170 = "F1"
SHX20_1.b_171 = "F2"
SHX20_1.b_172 = "F3"
SHX20_1.b_173 = "F4"
SHX20_1.b_174 = "F5"
SHX20_1.b_175 = "F6"
SHX20_1.b_176 = "F7"
SHX20_1.b_177 = "F8"
SHX20_1.b_178 = "F9"
SHX20_1.b_179 = "F10"
SHX20_1.b_180 = "F11"
SHX20_1.b_181 = "F12"
SHX20_1.b_194 = "ArrowUp"
SHX20_1.b_195 = "ArrowDown"
SHX20_1.b_196 = "ArrowLeft"
SHX20_1.b_197 = "ArrowRight"
SHX20_1.b_1003 = "Enter"
SHX20_1.b_1004 = "Backspace"
SHX20_1.b_198 = "Delete"
SHX20_1.b_199 = "Escape"
SHX20_1.b_1009 = "PageUp"
SHX20_1.b_1010 = "PageDown"
SHX20_1.b_1008 = "Home"
SHX20_1.b_131 = "NumpadAdd"
SHX20_1.b_130 = "NumpadSubstract"
SHX20_1.b_1002 = "CapsLock"
SHX20_1.b_211 = "Insert"
SHX20_1.b_210 = "Delete"
SHX20_1.b_212 = "End"
SHX20_1.b_1055 = "Home"
SHX20_1.b_1056 = "PageUp"
SHX21_1 = CMG
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.find
  SHX2_2 = SHX0_2
  SHX3_2 = "t_"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = select
    SHX2_2 = 1
    SHX3_2 = string
    SHX3_2 = SHX3_2.gsub
    SHX4_2 = SHX0_2
    SHX5_2 = "t_"
    SHX6_2 = ""
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    return SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX1_2 = SHX20_1
    SHX1_2 = SHX1_2[SHX0_2]
    return SHX1_2
  end
end
SHX21_1.getLocalKeyNameFromButton = SHX22_1
SHX21_1 = CMG
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.find
  SHX2_2 = SHX0_2
  SHX3_2 = "t_"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = select
    SHX2_2 = 1
    SHX3_2 = string
    SHX3_2 = SHX3_2.gsub
    SHX4_2 = SHX0_2
    SHX5_2 = "t_"
    SHX6_2 = ""
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    return SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX1_2 = "SpecialCharacter."
    SHX2_2 = SHX20_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX1_2 = SHX1_2 .. SHX2_2
    return SHX1_2
  end
end
SHX21_1.getJavascriptKeyNameFromButton = SHX22_1
SHX21_1 = false
SHX22_1 = CMG
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  while true do
    SHX2_2 = SHX21_1
    if not SHX2_2 then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = true
  SHX21_1 = SHX2_2
  SHX2_2 = AddTextEntry
  SHX3_2 = "WARNING_TITLE"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = AddTextEntry
  SHX3_2 = "WARNING_SUBTITLE"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = false
  while true do
    SHX3_2 = SetWarningMessageWithAlert
    SHX4_2 = "WARNING_TITLE"
    SHX5_2 = "WARNING_SUBTITLE"
    SHX6_2 = 36
    SHX7_2 = 0
    SHX8_2 = ""
    SHX9_2 = false
    SHX10_2 = -1
    SHX11_2 = 0
    SHX12_2 = "FM_NXT_RAC"
    SHX13_2 = "QM_NO_1"
    SHX14_2 = true
    SHX15_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX3_2 = IsDisabledControlJustPressed
    SHX4_2 = 2
    SHX5_2 = 215
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX2_2 = true
      break
    else
      SHX3_2 = IsDisabledControlJustPressed
      SHX4_2 = 2
      SHX5_2 = 200
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        break
      end
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = Wait
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = false
  SHX21_1 = SHX3_2
  return SHX2_2
end
SHX22_1.showWarningMessage = SHX23_1
SHX22_1 = CMG
function SHX23_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  while true do
    SHX4_2 = SHX21_1
    if not SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = true
  SHX21_1 = SHX4_2
  SHX4_2 = AddTextEntry
  SHX5_2 = "WARNING_TITLE"
  SHX6_2 = SHX0_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = AddTextEntry
  SHX5_2 = "WARNING_SUBTITLE"
  SHX6_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2)
  while true do
    SHX4_2 = SetWarningMessageWithAlert
    SHX5_2 = "WARNING_TITLE"
    SHX6_2 = "WARNING_SUBTITLE"
    SHX7_2 = SHX2_2
    SHX8_2 = 0
    SHX9_2 = ""
    SHX10_2 = false
    SHX11_2 = -1
    SHX12_2 = 0
    SHX13_2 = "FM_NXT_RAC"
    SHX14_2 = "QM_NO_1"
    SHX15_2 = true
    SHX16_2 = 0
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX4_2 = SHX3_2
    SHX4_2 = SHX4_2()
    if SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = Wait
  SHX5_2 = 0
  SHX4_2(SHX5_2)
  SHX4_2 = false
  SHX21_1 = SHX4_2
end
SHX22_1.showWarningMessageAdvanced = SHX23_1
SHX22_1 = CMG
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = type
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if "function" == SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = nil
  SHX3_2 = nil
  return SHX2_2, SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX1_2
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = SHX7_2
      SHX9_2 = SHX6_2
      return SHX8_2, SHX9_2
    end
  end
  SHX2_2 = nil
  SHX3_2 = nil
  return SHX2_2, SHX3_2
end
SHX22_1.findByPredicate = SHX23_1
SHX22_1 = CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
    SHX0_2 = SHX12_1
    if 0 ~= SHX0_2 then
      SHX0_2 = false
      SHX1_2 = GetGameTimer
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX12_1
      if SHX1_2 >= SHX2_2 then
        SHX0_2 = true
      else
        SHX1_2 = GetResourceState
        SHX2_2 = "chat"
        SHX1_2 = SHX1_2(SHX2_2)
        if "started" == SHX1_2 then
          SHX1_2 = pcall
          function SHX2_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
            SHX0_3 = exports
            SHX0_3 = SHX0_3.chat
            SHX1_3 = SHX0_3
            SHX0_3 = SHX0_3.isChatActive
            return SHX0_3(SHX1_3)
          end
          SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
          if SHX1_2 and SHX2_2 then
            SHX0_2 = true
          end
        end
      end
      if SHX0_2 then
        SHX1_2 = 0
        SHX12_1 = SHX1_2
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.showDisplay
        SHX2_2 = "chat"
        SHX3_2 = SHX10_1
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
  end
end
SHX22_1(SHX23_1)
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = BeginTextCommandPrint
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandPrint
  SHX2_2 = 1000
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
subtitleText = SHX22_1
