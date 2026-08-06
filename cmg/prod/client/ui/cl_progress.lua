-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1
SHX0_1 = {}
SHX0_1.From = 0
SHX0_1.To = 100
SHX0_1.Async = true
SHX0_1.Duration = 5000
SHX0_1.Label = "Loading..."
SHX0_1.LabelPosition = "bottom"
SHX0_1.Color = "rgba(255, 255, 255, 1.0)"
SHX0_1.BGColor = "rgba(0, 0, 0, 0.4)"
SHX0_1.x = 0.5
SHX0_1.y = 0.5
SHX0_1.Rotation = 0
SHX0_1.MaxAngle = 360
SHX0_1.Radius = 50
SHX0_1.Stroke = 10
SHX0_1.Width = 300
SHX0_1.Height = 40
SHX0_1.Cap = "butt"
SHX0_1.Padding = 0
SHX0_1.CancelKey = 178
SHX0_1.ShowTimer = true
SHX0_1.ShowProgress = false
SHX0_1.Easing = "easeLinear"
SHX1_1 = {}
SHX1_1.Mouse = false
SHX1_1.Player = false
SHX1_1.Vehicle = false
SHX0_1.DisableControls = SHX1_1
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX0_1.onStart = SHX1_1
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX0_1.onComplete = SHX1_1
SHX1_1 = {}
SHX1_1.MaxAngle = 240
SHX1_1.Rotation = -120
SHX1_1.Radius = 100
SHX1_1.Stroke = 30
SHX2_1 = {}
SHX3_1 = {}
SHX3_1.Zone = 40
SHX3_1.Duration = 1000
SHX2_1.Custom = SHX3_1
SHX3_1 = {}
SHX3_1.Zone = 30
SHX3_1.Duration = 500
SHX2_1.Easy = SHX3_1
SHX3_1 = {}
SHX3_1.Zone = 20
SHX3_1.Duration = 500
SHX2_1.Medium = SHX3_1
SHX3_1 = {}
SHX3_1.Zone = 10
SHX3_1.Duration = 500
SHX2_1.Hard = SHX3_1
SHX3_1 = {}
SHX3_1.Zone = 5
SHX3_1.Duration = 400
SHX2_1.VeryHard = SHX3_1
SHX1_1.Difficulty = SHX2_1
SHX0_1.MiniGameOptions = SHX1_1
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = {}
  function SHX2_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX1_3 = type
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3(SHX2_3)
    if "table" ~= SHX1_3 then
      return SHX0_3
    else
      SHX1_3 = SHX1_2
      SHX1_3 = SHX1_3[SHX0_3]
      if SHX1_3 then
        SHX1_3 = SHX1_2
        SHX1_3 = SHX1_3[SHX0_3]
        return SHX1_3
      end
    end
    SHX1_3 = {}
    SHX2_3 = SHX1_2
    SHX2_3[SHX0_3] = SHX1_3
    SHX2_3 = pairs
    SHX3_3 = SHX0_3
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX8_3 = SHX2_2
      SHX9_3 = SHX6_3
      SHX8_3 = SHX8_3(SHX9_3)
      SHX9_3 = SHX2_2
      SHX10_3 = SHX7_3
      SHX9_3 = SHX9_3(SHX10_3)
      SHX1_3[SHX8_3] = SHX9_3
    end
    SHX2_3 = setmetatable
    SHX3_3 = SHX1_3
    SHX4_3 = getmetatable
    SHX5_3 = SHX0_3
    SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX4_3(SHX5_3)
    return SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
  end
  SHX3_2 = SHX2_2
  SHX4_2 = SHX0_2
  return SHX3_2(SHX4_2)
end
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = SHX1_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = type
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if "table" == SHX9_2 then
      SHX9_2 = type
      SHX10_2 = SHX2_2[SHX7_2]
      if not SHX10_2 then
        SHX10_2 = false
      end
      SHX9_2 = SHX9_2(SHX10_2)
      if "table" == SHX9_2 then
        SHX9_2 = SHX2_1
        SHX10_2 = SHX2_2[SHX7_2]
        if not SHX10_2 then
          SHX10_2 = {}
        end
        SHX11_2 = SHX1_2[SHX7_2]
        if not SHX11_2 then
          SHX11_2 = {}
        end
        SHX9_2(SHX10_2, SHX11_2)
      else
        SHX2_2[SHX7_2] = SHX8_2
      end
    else
      SHX2_2[SHX7_2] = SHX8_2
    end
  end
  return SHX2_2
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = "======== RPROGRESS ERROR: "
  SHX2_2 = SHX0_2
  SHX3_2 = " ========"
  SHX1_2 = SHX1_2 .. SHX2_2 .. SHX3_2
  SHX0_2 = SHX1_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.rep
  SHX2_2 = "="
  SHX3_2 = string
  SHX3_2 = SHX3_2.len
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = print
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = print
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = print
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" ~= SHX1_2 then
    SHX1_2 = SHX3_1
    SHX2_2 = "options must be type:table"
    SHX1_2(SHX2_2)
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = nil
    if "onStart" ~= SHX5_2 and "onComplete" ~= SHX5_2 and "onTimeout" ~= SHX5_2 then
      if "ShowTimer" == SHX5_2 or "ShowProgress" == SHX5_2 or "Async" == SHX5_2 or "MiniGame" == SHX5_2 or "Loop" == SHX5_2 or "canCancel" == SHX5_2 then
        SHX8_2 = type
        SHX9_2 = SHX6_2
        SHX8_2 = SHX8_2(SHX9_2)
        if "boolean" ~= SHX8_2 then
          SHX8_2 = {}
          SHX8_2.prop = SHX5_2
          SHX8_2.type = "boolean"
          SHX7_2 = SHX8_2
        end
      elseif "Label" == SHX5_2 or "Color" == SHX5_2 or "BGColor" == SHX5_2 or "LabelPosition" == SHX5_2 or "Easing" == SHX5_2 or "Cap" == SHX5_2 or "Type" == SHX5_2 then
        SHX8_2 = type
        SHX9_2 = SHX6_2
        SHX8_2 = SHX8_2(SHX9_2)
        if "string" ~= SHX8_2 then
          SHX8_2 = {}
          SHX8_2.prop = SHX5_2
          SHX8_2.type = "string"
          SHX7_2 = SHX8_2
        end
      elseif "DisableControls" == SHX5_2 then
        SHX8_2 = pairs
        SHX9_2 = SHX6_2
        SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
        for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
          SHX14_2 = type
          SHX15_2 = SHX13_2
          SHX14_2 = SHX14_2(SHX15_2)
          if "boolean" ~= SHX14_2 then
            SHX14_2 = {}
            SHX15_2 = SHX5_2
            SHX16_2 = "."
            SHX17_2 = SHX12_2
            SHX15_2 = SHX15_2 .. SHX16_2 .. SHX17_2
            SHX14_2.prop = SHX15_2
            SHX14_2.type = "boolean"
            SHX7_2 = SHX14_2
          end
        end
      elseif "Animation" == SHX5_2 then
        SHX8_2 = pairs
        SHX9_2 = SHX6_2
        SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
        for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
          if "flag" == SHX12_2 then
            SHX14_2 = tonumber
            SHX15_2 = SHX13_2
            SHX14_2 = SHX14_2(SHX15_2)
            if nil == SHX14_2 then
              SHX14_2 = {}
              SHX14_2.prop = SHX5_2
              SHX14_2.type = "number"
              SHX7_2 = SHX14_2
            end
          else
            SHX14_2 = type
            SHX15_2 = SHX13_2
            SHX14_2 = SHX14_2(SHX15_2)
            if "string" ~= SHX14_2 then
              SHX14_2 = {}
              SHX15_2 = SHX5_2
              SHX16_2 = "."
              SHX17_2 = SHX12_2
              SHX15_2 = SHX15_2 .. SHX16_2 .. SHX17_2
              SHX14_2.prop = SHX15_2
              SHX14_2.type = "string"
              SHX7_2 = SHX14_2
            end
          end
        end
      else
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2
        SHX8_2 = SHX8_2(SHX9_2)
        if nil == SHX8_2 then
          SHX8_2 = {}
          SHX8_2.prop = SHX5_2
          SHX8_2.type = "number"
          SHX7_2 = SHX8_2
        end
      end
      if nil ~= SHX7_2 then
        SHX8_2 = SHX3_1
        SHX9_2 = "param '"
        SHX10_2 = SHX7_2.prop
        SHX11_2 = "' must be type:"
        SHX12_2 = SHX7_2.type
        SHX9_2 = SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2
        SHX8_2(SHX9_2)
        SHX8_2 = true
        return SHX8_2
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = nil
SHX8_1 = false
SHX9_1 = nil
SHX10_1 = false
SHX11_1 = 0
function SHX12_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX4_2 = type
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "string" ~= SHX4_2 then
    SHX4_2 = SHX3_1
    SHX5_2 = "param 'text' must be type:string"
    SHX4_2(SHX5_2)
    return
  end
  if SHX3_2 then
    SHX6_1 = SHX3_2
  end
  SHX4_2 = tonumber
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if nil == SHX4_2 then
    SHX4_2 = SHX3_1
    SHX5_2 = "param 'duration' must be type:number"
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = SHX2_1
  SHX5_2 = SHX0_1
  SHX6_2 = {}
  SHX6_2.display = true
  SHX6_2.Duration = SHX1_2
  SHX6_2.Label = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if nil ~= SHX2_2 then
    SHX4_2.Type = "linear"
  end
  SHX4_2.Async = false
  SHX4_2.MiniGame = false
  SHX4_2.onStart = nil
  SHX4_2.onComplete = nil
  SHX5_2 = SendNUIMessage
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = assert
  SHX6_2 = SHX8_1
  SHX6_2 = not SHX6_2
  SHX7_2 = "Can not start progress bar whilst an existing bar is still running"
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = true
  SHX8_1 = SHX5_2
  while true do
    SHX5_2 = SHX8_1
    if not SHX5_2 then
      break
    end
    SHX5_2 = DisableControls
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 1
    SHX5_2(SHX6_2)
  end
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX9_1
  if nil ~= SHX0_2 then
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = IsEntityDead
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = SHX9_1.scenario
        if nil ~= SHX1_2 then
          SHX1_2 = ClearPedTasks
          SHX2_2 = SHX0_2
          SHX1_2(SHX2_2)
        else
          SHX1_2 = SHX9_1.animationDictionary
          if nil ~= SHX1_2 then
            SHX1_2 = SHX9_1.animationName
            if nil ~= SHX1_2 then
              SHX1_2 = StopAnimTask
              SHX2_2 = SHX0_2
              SHX3_2 = SHX9_1.animationDictionary
              SHX4_2 = SHX9_1.animationName
              SHX5_2 = 1.0
              SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            end
          end
        end
      end
    end
  end
end
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX4_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    return
  end
  SHX2_2 = {}
  SHX3_2 = SHX0_1.DisableControls
  SHX3_2 = SHX3_2.Mouse
  SHX2_2.Mouse = SHX3_2
  SHX3_2 = SHX0_1.DisableControls
  SHX3_2 = SHX3_2.Player
  SHX2_2.Player = SHX3_2
  SHX3_2 = SHX0_1.DisableControls
  SHX3_2 = SHX3_2.Vehicle
  SHX2_2.Vehicle = SHX3_2
  SHX3_2 = SHX0_2.DisableControls
  if nil ~= SHX3_2 then
    SHX2_2 = SHX0_2.DisableControls
  end
  SHX3_2 = SHX2_1
  SHX4_2 = SHX0_1
  SHX5_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX0_2 = SHX3_2
  SHX3_2 = SHX2_1
  SHX4_2 = SHX0_1.DisableControls
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX0_2.DisableControls = SHX3_2
  SHX0_2.display = true
  SHX3_2 = SHX0_2.ShowProgress
  if true == SHX3_2 then
    SHX0_2.ShowTimer = false
  end
  SHX3_2 = SHX0_2.onStart
  SHX5_1 = SHX3_2
  SHX3_2 = SHX0_2.onComplete
  SHX6_1 = SHX3_2
  SHX3_2 = SHX0_2.onTimeout
  SHX7_1 = SHX3_2
  SHX3_2 = nil
  SHX9_1 = SHX3_2
  SHX3_2 = SHX0_2.Animation
  if nil ~= SHX3_2 then
    SHX3_2 = SHX0_2.Animation
    SHX9_1 = SHX3_2
  end
  SHX0_2.onStart = nil
  SHX0_2.onComplete = nil
  SHX0_2.onTimeout = nil
  if true == SHX1_2 then
    return SHX0_2
  end
  SHX3_2 = SHX0_2.MiniGame
  if SHX3_2 then
    SHX3_2 = SetNuiFocus
    SHX4_2 = true
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SendNUIMessage
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = assert
  SHX4_2 = SHX8_1
  SHX4_2 = not SHX4_2
  SHX5_2 = "Can not start progress bar whilst an existing bar is still running"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX8_1 = SHX3_2
  SHX3_2 = SHX0_2.Async
  if false == SHX3_2 then
    while true do
      SHX3_2 = SHX8_1
      if not SHX3_2 then
        break
      end
      SHX3_2 = IsControlJustPressed
      SHX4_2 = 0
      SHX5_2 = SHX0_1.CancelKey
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = SHX0_2.canCancel
        if SHX3_2 then
          SHX3_2 = SHX6_1
          SHX4_2 = true
          SHX3_2(SHX4_2)
          SHX3_2 = TriggerEvent
          SHX4_2 = "rprogress:stop"
          SHX3_2(SHX4_2)
        end
      end
      SHX3_2 = DisableControls
      SHX4_2 = SHX0_2
      SHX3_2(SHX4_2)
      SHX3_2 = Citizen
      SHX3_2 = SHX3_2.Wait
      SHX4_2 = 1
      SHX3_2(SHX4_2)
    end
    SHX3_2 = SHX13_1
    SHX3_2()
  else
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.CreateThread
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      while true do
        SHX0_3 = SHX8_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 0
        SHX2_3 = SHX0_1.CancelKey
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = SHX0_2.canCancel
          if SHX0_3 then
            SHX0_3 = SHX6_1
            SHX1_3 = true
            SHX0_3(SHX1_3)
            SHX0_3 = TriggerEvent
            SHX1_3 = "rprogress:stop"
            SHX0_3(SHX1_3)
          end
        end
        SHX0_3 = DisableControls
        SHX1_3 = SHX0_2
        SHX0_3(SHX1_3)
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX3_2(SHX4_2)
  end
end
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX12_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.stop = true
  SHX0_2(SHX1_2)
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX14_1
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    return
  end
  SHX1_2.display = false
  SHX1_2.static = true
  SHX2_2 = SendNUIMessage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = {}
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX1_2.hide = false
    SHX1_2.show = true
    SHX1_2.progress = false
    SHX0_3 = SendNUIMessage
    SHX1_3 = SHX1_2
    SHX0_3(SHX1_3)
  end
  SHX2_2.Show = SHX3_2
  function SHX3_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3
    SHX1_2.hide = false
    SHX1_2.show = true
    SHX1_3 = tonumber
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3(SHX2_3)
    SHX1_2.progress = SHX1_3
    SHX1_3 = SHX1_2.progress
    if SHX1_3 < 0 then
      SHX1_2.progress = 0
    else
      SHX1_3 = SHX1_2.progress
      if SHX1_3 > 100 then
        SHX1_2.progress = 100
      end
    end
    SHX1_3 = SendNUIMessage
    SHX2_3 = SHX1_2
    SHX1_3(SHX2_3)
  end
  SHX2_2.SetProgress = SHX3_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX1_2.show = false
    SHX1_2.hide = true
    SHX1_2.progress = false
    SHX0_3 = SendNUIMessage
    SHX1_3 = SHX1_2
    SHX0_3(SHX1_3)
  end
  SHX2_2.Hide = SHX3_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX1_2.show = false
    SHX1_2.hide = false
    SHX1_2.progress = false
    SHX1_2.destroy = true
    SHX0_3 = SendNUIMessage
    SHX1_3 = SHX1_2
    SHX0_3(SHX1_3)
  end
  SHX2_2.Destroy = SHX3_2
  return SHX2_2
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX8_1
  if SHX1_2 then
    return
  end
  SHX1_2 = false
  SHX10_1 = SHX1_2
  SHX1_2 = SHX2_1
  SHX2_2 = SHX0_1.MiniGameOptions
  SHX3_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2 = SHX1_2
  SHX1_2 = SHX0_2.Zone
  if nil == SHX1_2 then
    SHX1_2 = SHX0_2.Duration
    if nil == SHX1_2 then
      SHX1_2 = "Easy"
      SHX2_2 = SHX0_2.Difficulty
      if nil ~= SHX2_2 then
        SHX1_2 = SHX0_2.Difficulty
      end
      SHX2_2 = SHX0_1.MiniGameOptions
      SHX2_2 = SHX2_2.Difficulty
      SHX2_2 = SHX2_2[SHX1_2]
      SHX2_2 = SHX2_2.Zone
      SHX0_2.Zone = SHX2_2
      SHX2_2 = SHX0_1.MiniGameOptions
      SHX2_2 = SHX2_2.Difficulty
      SHX2_2 = SHX2_2[SHX1_2]
      SHX2_2 = SHX2_2.Duration
      SHX0_2.Duration = SHX2_2
    end
  end
  SHX0_2.Difficulty = nil
  SHX0_2.MiniGame = true
  SHX1_2 = SHX14_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.Timeout
  if nil ~= SHX1_2 then
    SHX1_2 = SHX0_2.Timeout
    if SHX1_2 > 0 then
      SHX1_2 = SHX11_1
      SHX1_2 = SHX1_2 + 1
      SHX11_1 = SHX1_2
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.SetTimeout
      SHX3_2 = SHX0_2.Timeout
      function SHX4_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = SHX7_1
        if nil ~= SHX0_3 then
          SHX0_3 = type
          SHX1_3 = SHX7_1
          SHX0_3 = SHX0_3(SHX1_3)
          if "function" == SHX0_3 then
            SHX0_3 = SHX10_1
            if not SHX0_3 then
              SHX0_3 = SHX11_1
              SHX1_3 = SHX1_2
              if SHX0_3 == SHX1_3 then
                SHX0_3 = SHX16_1
                SHX0_3()
                SHX0_3 = SHX7_1
                SHX0_3()
              end
            end
          end
        end
      end
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.DisableControls
  SHX1_2 = SHX1_2.Mouse
  if SHX1_2 then
    SHX1_2 = DisableControlAction
    SHX2_2 = 1
    SHX3_2 = 1
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 1
    SHX3_2 = 2
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 1
    SHX3_2 = 106
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
  SHX1_2 = SHX0_2.DisableControls
  SHX1_2 = SHX1_2.Player
  if SHX1_2 then
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 21
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 30
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 31
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 36
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
  SHX1_2 = SHX0_2.DisableControls
  SHX1_2 = SHX1_2.Vehicle
  if SHX1_2 then
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 71
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 72
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 75
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
DisableControls = SHX19_1
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = SetNuiFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX20_1 = RegisterNUICallback
SHX21_1 = "progress_start"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX5_1
  if nil ~= SHX2_2 then
    SHX2_2 = SHX5_1
    SHX2_2()
  end
  SHX2_2 = SHX1_2
  SHX3_2 = "ok"
  SHX2_2(SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNUICallback
SHX21_1 = "progress_complete"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX19_1
  SHX2_2()
  SHX2_2 = SHX6_1
  if nil ~= SHX2_2 then
    SHX2_2 = SHX6_1
    SHX2_2()
    SHX2_2 = SHX13_1
    SHX2_2()
  end
  SHX2_2 = SHX1_2
  SHX3_2 = "ok"
  SHX2_2(SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNUICallback
SHX21_1 = "progress_stop"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX19_1
  SHX2_2()
  SHX2_2 = SHX13_1
  SHX2_2()
  SHX2_2 = SHX1_2
  SHX3_2 = "ok"
  SHX2_2(SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNUICallback
SHX21_1 = "progress_minigame_input"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = true
  SHX10_1 = SHX2_2
  SHX2_2 = SHX6_1
  if nil ~= SHX2_2 then
    SHX2_2 = SHX6_1
    SHX3_2 = SHX0_2.success
    SHX3_2 = true == SHX3_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX13_1
  SHX2_2()
  SHX2_2 = SHX1_2
  SHX3_2 = "ok"
  SHX2_2(SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNUICallback
SHX21_1 = "progress_minigame_complete"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX19_1
  SHX2_2()
  SHX2_2 = SHX1_2
  SHX3_2 = "ok"
  SHX2_2(SHX3_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "rprogress:start"
SHX20_1(SHX21_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "rprogress:stop"
SHX20_1(SHX21_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "rprogress:custom"
SHX20_1(SHX21_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "rprogress:linear"
SHX20_1(SHX21_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "rprogress:minigame"
SHX20_1(SHX21_1)
SHX20_1 = AddEventHandler
SHX21_1 = "rprogress:start"
SHX22_1 = SHX12_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = AddEventHandler
SHX21_1 = "rprogress:stop"
SHX22_1 = SHX16_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = AddEventHandler
SHX21_1 = "rprogress:custom"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX0_2.Async = false
  SHX0_2.onStart = nil
  SHX0_2.onComplete = nil
  SHX1_2 = SHX14_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = AddEventHandler
SHX21_1 = "rprogress:linear"
SHX22_1 = SHX15_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = AddEventHandler
SHX21_1 = "rprogress:minigame"
SHX22_1 = SHX18_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = exports
SHX21_1 = "progressStart"
SHX22_1 = SHX12_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = exports
SHX21_1 = "progressCustom"
SHX22_1 = SHX14_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = exports
SHX21_1 = "progressStop"
SHX22_1 = SHX16_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = exports
SHX21_1 = "progressStatic"
SHX22_1 = SHX17_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = exports
SHX21_1 = "progressLinear"
SHX22_1 = SHX15_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = exports
SHX21_1 = "progressMiniGame"
SHX22_1 = SHX18_1
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1.startCircularProgressBar = SHX12_1
SHX20_1 = CMG
SHX20_1.customCircularProgressBar = SHX14_1
SHX20_1 = CMG
SHX20_1.stopCircularProgressBar = SHX16_1
SHX20_1 = CMG
SHX20_1.staticCircularProgressBar = SHX17_1
SHX20_1 = CMG
SHX20_1.linerCircularProgressBar = SHX15_1
SHX20_1 = CMG
SHX20_1.minigameCircularProgressBar = SHX18_1
SHX20_1 = CMG
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  return SHX0_2
end
SHX20_1.isProgressBarRunning = SHX21_1
