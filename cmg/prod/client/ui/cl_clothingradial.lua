-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/ped_cfg/clothingradial"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = {}
SHX2_1[","] = 82
SHX2_1["-"] = 84
SHX2_1["."] = 81
SHX2_1["1"] = 157
SHX2_1["2"] = 158
SHX2_1["3"] = 160
SHX2_1["4"] = 164
SHX2_1["5"] = 165
SHX2_1["6"] = 159
SHX2_1["7"] = 161
SHX2_1["8"] = 162
SHX2_1["9"] = 163
SHX2_1["="] = 83
SHX2_1["["] = 39
SHX2_1["]"] = 40
SHX2_1.A = 34
SHX2_1.B = 29
SHX2_1.BACKSPACE = 177
SHX2_1.C = 26
SHX2_1.CAPS = 137
SHX2_1.D = 9
SHX2_1.DELETE = 178
SHX2_1.UP = 172
SHX2_1.DOWN = 173
SHX2_1.E = 38
SHX2_1.ENTER = 18
SHX2_1.ESC = 322
SHX2_1.F = 23
SHX2_1.F1 = 288
SHX2_1.F10 = 57
SHX2_1.F2 = 289
SHX2_1.F3 = 170
SHX2_1.F5 = 166
SHX2_1.F6 = 167
SHX2_1.F7 = 168
SHX2_1.F8 = 169
SHX2_1.F9 = 56
SHX2_1.G = 47
SHX2_1.H = 74
SHX2_1.HOME = 213
SHX2_1.K = 311
SHX2_1.L = 182
SHX2_1.LEFT = 174
SHX2_1.LEFTALT = 19
SHX2_1.LEFTCTRL = 36
SHX2_1.LEFTSHIFT = 21
SHX2_1.M = 244
SHX2_1.N = 249
SHX2_1["N+"] = 96
SHX2_1["N-"] = 97
SHX2_1.N4 = 108
SHX2_1.N5 = 60
SHX2_1.N6 = 107
SHX2_1.N7 = 117
SHX2_1.N8 = 61
SHX2_1.N9 = 118
SHX2_1.NENTER = 201
SHX2_1.P = 199
SHX2_1.PAGEDOWN = 11
SHX2_1.PAGEUP = 10
SHX2_1.Q = 44
SHX2_1.R = 45
SHX2_1.RIGHT = 175
SHX2_1.RIGHTCTRL = 70
SHX2_1.S = 8
SHX2_1.SPACE = 22
SHX2_1.T = 245
SHX2_1.TAB = 37
SHX2_1.TOP = 27
SHX2_1.U = 303
SHX2_1.V = 0
SHX2_1.W = 32
SHX2_1.X = 73
SHX2_1.Y = 246
SHX2_1.Z = 20
SHX2_1["~"] = 243
SHX3_1 = false
SHX4_1 = false
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = nil
SHX8_1 = nil
SHX9_1 = nil
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if nil == SHX0_2 then
    SHX1_2 = print
    SHX2_2 = "nil"
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = SHX6_1.Debug
  if not SHX1_2 then
    return
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = print
    SHX2_2 = json
    SHX2_2 = SHX2_2.encode
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  else
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "boolean" == SHX1_2 then
      SHX1_2 = print
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    else
      SHX1_2 = print
      SHX2_2 = SHX0_2
      SHX3_2 = " | "
      SHX4_2 = type
      SHX5_2 = SHX0_2
      SHX4_2 = SHX4_2(SHX5_2)
      SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
      SHX1_2(SHX2_2)
    end
  end
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.upper
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX2_1
  SHX1_2 = SHX2_2[SHX1_2]
  if SHX1_2 then
    return SHX1_2
  else
    SHX2_2 = false
    return SHX2_2
  end
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX4_1 = SHX0_3
    SHX0_3 = Wait
    SHX1_3 = SHX0_2
    SHX0_3(SHX1_3)
    SHX0_3 = false
    SHX4_1 = SHX0_3
  end
  SHX1_2(SHX2_2)
end
function SHX13_1(SHX0_2, SHX1_2)
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
function SHX14_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if not SHX5_2 then
    SHX5_2 = 0
  end
  if not SHX4_2 then
    SHX8_2 = SHX6_1.GUI
    SHX4_2 = SHX8_2.TextColor
  end
  SHX8_2 = SetTextFont
  SHX9_2 = SHX6_1.GUI
  SHX9_2 = SHX9_2.TextFont
  SHX8_2(SHX9_2)
  SHX8_2 = SetTextJustification
  SHX9_2 = SHX5_2
  SHX8_2(SHX9_2)
  SHX8_2 = SetTextScale
  SHX9_2 = SHX2_2
  SHX10_2 = SHX2_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetTextColour
  SHX9_2 = SHX4_2[1]
  SHX10_2 = SHX4_2[2]
  SHX11_2 = SHX4_2[3]
  SHX12_2 = 255
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = SHX6_1.GUI
  SHX8_2 = SHX8_2.TextOutline
  if SHX8_2 then
    SHX8_2 = SetTextOutline
    SHX8_2()
  end
  if SHX7_2 then
    SHX8_2 = SetTextWrap
    SHX9_2 = SHX7_2.x
    SHX10_2 = SHX7_2.y
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX8_2 = BeginTextCommandDisplayText
  SHX9_2 = "STRING"
  SHX8_2(SHX9_2)
  SHX8_2 = AddTextComponentSubstringPlayerName
  SHX9_2 = SHX3_2
  SHX8_2(SHX9_2)
  SHX8_2 = EndTextCommandDisplayText
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX8_2(SHX9_2, SHX10_2)
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.gsub
  SHX3_2 = "^%l"
  SHX4_2 = string
  SHX4_2 = SHX4_2.upper
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  return SHX1_2
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX2_2 = SHX6_1.Language
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX1_2[SHX0_2]
  if not SHX2_2 then
    SHX2_2 = SHX1_1.en
    SHX2_2 = SHX2_2[SHX0_2]
    return SHX2_2
  end
  SHX2_2 = SHX1_2[SHX0_2]
  return SHX2_2
end
function SHX17_1(SHX0_2)
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
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetHashKey
  SHX2_2 = "mp_m_freemode_01"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetHashKey
  SHX3_2 = "mp_f_freemode_01"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 == SHX1_2 then
    SHX4_2 = "Male"
    return SHX4_2
  elseif SHX3_2 == SHX2_2 then
    SHX4_2 = "Female"
    return SHX4_2
  else
    SHX4_2 = false
    return SHX4_2
  end
end
SHX19_1 = RegisterNetEvent
SHX20_1 = "dpc:EquipLast"
SHX19_1(SHX20_1)
SHX19_1 = AddEventHandler
SHX20_1 = "dpc:EquipLast"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX5_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 then
      SHX7_2 = SHX6_2.Drawable
      if SHX7_2 then
        SHX7_2 = SetPedComponentVariation
        SHX8_2 = SHX0_2
        SHX9_2 = SHX6_2.ID
        SHX10_2 = SHX6_2.Drawable
        SHX11_2 = SHX6_2.Texture
        SHX12_2 = 0
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      else
        SHX7_2 = SHX6_2.Prop
        if SHX7_2 then
          SHX7_2 = ClearPedProp
          SHX8_2 = SHX0_2
          SHX9_2 = SHX6_2.ID
          SHX7_2(SHX8_2, SHX9_2)
          SHX7_2 = SetPedPropIndex
          SHX8_2 = SHX0_2
          SHX9_2 = SHX6_2.ID
          SHX10_2 = SHX6_2.Prop
          SHX11_2 = SHX6_2.Texture
          SHX12_2 = true
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        end
      end
    end
  end
  SHX1_2 = {}
  SHX5_1 = SHX1_2
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "dpc:ResetClothing"
SHX19_1(SHX20_1)
SHX19_1 = AddEventHandler
SHX20_1 = "dpc:ResetClothing"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX5_1 = SHX0_2
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = {}
SHX20_1 = {}
SHX21_1 = "TOGGLE_ON"
SHX22_1 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX19_1.Close = SHX20_1
SHX20_1 = {}
SHX21_1 = "NAV_LEFT_RIGHT"
SHX22_1 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX19_1.Open = SHX20_1
SHX20_1 = {}
SHX21_1 = "SELECT"
SHX22_1 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX19_1.Select = SHX20_1
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX6_1.GUI
  SHX1_2 = SHX1_2.Sound
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX19_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = PlaySoundFrontend
  SHX3_2 = -1
  SHX4_2 = SHX1_2[1]
  SHX5_2 = SHX1_2[2]
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX21_1 = RegisterNetEvent
SHX22_1 = "dpc:ToggleMenu"
SHX21_1(SHX22_1)
SHX21_1 = AddEventHandler
SHX22_1 = "dpc:ToggleMenu"
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX3_1
  SHX0_2 = not SHX0_2
  SHX3_1 = SHX0_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = SHX20_1
    SHX1_2 = "Open"
    SHX0_2(SHX1_2)
    SHX0_2 = SetCursorLocation
    SHX1_2 = SHX6_1.GUI
    SHX1_2 = SHX1_2.Position
    SHX1_2 = SHX1_2.x
    SHX2_2 = SHX6_1.GUI
    SHX2_2 = SHX2_2.Position
    SHX2_2 = SHX2_2.y
    SHX0_2(SHX1_2, SHX2_2)
  else
    SHX0_2 = SHX20_1
    SHX1_2 = "Close"
    SHX0_2(SHX1_2)
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "dpc:Menu"
SHX21_1(SHX22_1)
SHX21_1 = AddEventHandler
SHX22_1 = "dpc:Menu"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX3_1 = SHX0_2
  SHX1_2 = SHX3_1
  if SHX1_2 then
    SHX1_2 = SHX20_1
    SHX2_2 = "Open"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SHX20_1
    SHX2_2 = "Close"
    SHX1_2(SHX2_2)
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = {}
SHX21_1.AlreadyWearing = "You are already wearing that."
SHX21_1.Bag = "Bag"
SHX21_1.Bag2 = "Opens or closes your bag."
SHX21_1.Bracelet = "Bracelet"
SHX21_1.Ear = "Ear"
SHX21_1.Ear2 = "ear accessory"
SHX21_1.Glasses = "Glasses"
SHX21_1.Gloves = "Gloves"
SHX21_1.Hair = "Hair"
SHX21_1.Hair2 = "Put your hair up/down/in a bun/ponytail."
SHX21_1.Hat = "Hat"
SHX21_1.Info = "Info"
SHX21_1.Information = "If the button is blue, you have a saved item."
SHX21_1.Mask = "Mask"
SHX21_1.Neck = "Neck"
SHX21_1.Neck2 = "neck accessory"
SHX21_1.NotAllowedPed = "This ped model does not allow for this option."
SHX21_1.NothingToRemove = "You dont appear to have anything to remove."
SHX21_1.NoVariants = "There dont seem to be any variants for this."
SHX21_1.Pants = "Pants"
SHX21_1.PleaseWait = "Please wait..."
SHX21_1.Shirt = "Shirt"
SHX21_1.Shoes = "Shoes"
SHX21_1.TakeOffOn = "Take your %s off/on."
SHX21_1.Top = "Top"
SHX21_1.Top2 = "Toggle shirt variation."
SHX21_1.Vest = "Vest"
SHX21_1.Visor = "Visor"
SHX21_1.Visor2 = "Toggle hat variation."
SHX21_1.Watch = "Watch"
SHX21_1.NoShirtOn = "You cannot do this without your shirt on."
SHX21_1.Reset = "Revert"
SHX21_1.Reset2 = "Revert everything back to normal."
SHX21_1.Exit = "Close"
SHX21_1.BAG = "bag"
SHX21_1.BRACELET = "bracelet"
SHX21_1.EAR = "ear"
SHX21_1.GLASSES = "glasses"
SHX21_1.GLOVES = "gloves"
SHX21_1.HAIR = "hair"
SHX21_1.HAT = "hat"
SHX21_1.MASK = "mask"
SHX21_1.NECK = "neck"
SHX21_1.SHOES = "shoes"
SHX21_1.TOP = "top"
SHX21_1.VEST = "vest"
SHX21_1.VISOR = "visor"
SHX21_1.WATCH = "watch"
SHX21_1.PANTS = "pants"
SHX21_1.SHIRT = "shirt"
SHX21_1.RESET = "revertclothing"
SHX21_1.BAGOFF = "bagoff"
SHX1_1.en = SHX21_1
SHX21_1 = {}
SHX21_1.Language = "en"
SHX22_1 = "ExtrasEnabled"
SHX23_1 = true
SHX21_1[SHX22_1] = SHX23_1
SHX22_1 = "Debug"
SHX23_1 = false
SHX21_1[SHX22_1] = SHX23_1
SHX22_1 = "GUI"
SHX23_1 = {}
SHX24_1 = "Position"
SHX25_1 = {}
SHX26_1 = "x"
SHX27_1 = 0.65
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "y"
SHX27_1 = 0.5
SHX25_1[SHX26_1] = SHX27_1
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "AllowInCars"
SHX25_1 = false
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "AllowWhenRagdolled"
SHX25_1 = false
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "Enabled"
SHX25_1 = true
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "Key"
SHX25_1 = SHX11_1
SHX26_1 = "Y"
SHX25_1 = SHX25_1(SHX26_1)
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "Sound"
SHX25_1 = true
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "TextColor"
SHX25_1 = {}
SHX26_1 = 255
SHX27_1 = 255
SHX28_1 = 255
SHX25_1[1] = SHX26_1
SHX25_1[2] = SHX27_1
SHX25_1[3] = SHX28_1
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "TextOutline"
SHX25_1 = true
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "TextFont"
SHX23_1[SHX24_1] = 0
SHX24_1 = "TextSize"
SHX25_1 = 0.21
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "Toggle"
SHX25_1 = false
SHX23_1[SHX24_1] = SHX25_1
SHX21_1[SHX22_1] = SHX23_1
SHX6_1 = SHX21_1
SHX21_1 = "Commands"
SHX22_1 = {}
SHX23_1 = SHX16_1
SHX24_1 = "TOP"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Top"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "top"
SHX25_1 = "Desc"
SHX26_1 = SHX16_1
SHX27_1 = "Top2"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 1
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Top"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "GLOVES"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Gloves"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "gloves"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Gloves"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 2
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Gloves"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "VISOR"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX1_2 = "Visor"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "visor"
SHX25_1 = "Desc"
SHX26_1 = SHX16_1
SHX27_1 = "Visor2"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 3
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Visor"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "BAG"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Bag"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "bag"
SHX25_1 = "Desc"
SHX26_1 = SHX16_1
SHX27_1 = "Bag2"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX24_1[SHX25_1] = 8
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Bag"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "SHOES"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Shoes"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "shoes"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Shoes"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 5
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Shoes"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "VEST"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Vest"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "vest"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Vest"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 14
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Vest"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "HAIR"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Hair"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "hair"
SHX25_1 = "Desc"
SHX26_1 = SHX16_1
SHX27_1 = "Hair2"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 7
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Hair"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "HAT"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX1_2 = "Hat"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "hat"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Hat"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 4
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Hat"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "GLASSES"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX1_2 = "Glasses"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "glasses"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Glasses"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX24_1[SHX25_1] = 9
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Glasses"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "EAR"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX1_2 = "Ear"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "ear"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Ear2"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX24_1[SHX25_1] = 10
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Ear"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "NECK"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Neck"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "neck"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Neck2"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX24_1[SHX25_1] = 11
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Neck"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "WATCH"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX1_2 = "Watch"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "watch"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Watch"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 12
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Watch"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Rotation"
SHX26_1 = 5.0
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "BRACELET"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX1_2 = "Bracelet"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "bracelet"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Bracelet"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 13
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Bracelet"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX23_1 = SHX16_1
SHX24_1 = "MASK"
SHX23_1 = SHX23_1(SHX24_1)
SHX24_1 = {}
SHX25_1 = "Func"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Mask"
  SHX0_2(SHX1_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Sprite"
SHX24_1[SHX25_1] = "mask"
SHX25_1 = "Desc"
SHX26_1 = _ENV
SHX27_1 = "string"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "format"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = SHX16_1
SHX28_1 = "TakeOffOn"
SHX27_1 = SHX27_1(SHX28_1)
SHX28_1 = _ENV
SHX29_1 = "string"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = "lower"
SHX28_1 = SHX28_1[SHX29_1]
SHX29_1 = SHX16_1
SHX30_1 = "Mask"
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1)
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Button"
SHX26_1 = 6
SHX24_1[SHX25_1] = SHX26_1
SHX25_1 = "Name"
SHX26_1 = SHX16_1
SHX27_1 = "Mask"
SHX26_1 = SHX26_1(SHX27_1)
SHX24_1[SHX25_1] = SHX26_1
SHX22_1[SHX23_1] = SHX24_1
SHX6_1[SHX21_1] = SHX22_1
SHX21_1 = {}
SHX22_1 = true
SHX21_1[40] = SHX22_1
SHX22_1 = true
SHX21_1[41] = SHX22_1
SHX22_1 = true
SHX21_1[44] = SHX22_1
SHX22_1 = true
SHX21_1[45] = SHX22_1
SHX22_1 = "ExtraCommands"
SHX23_1 = {}
SHX24_1 = SHX16_1
SHX25_1 = "PANTS"
SHX24_1 = SHX24_1(SHX25_1)
SHX25_1 = {}
SHX26_1 = "Func"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Pants"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Sprite"
SHX25_1[SHX26_1] = "pants"
SHX26_1 = "Desc"
SHX27_1 = _ENV
SHX28_1 = "string"
SHX27_1 = SHX27_1[SHX28_1]
SHX28_1 = "format"
SHX27_1 = SHX27_1[SHX28_1]
SHX28_1 = SHX16_1
SHX29_1 = "TakeOffOn"
SHX28_1 = SHX28_1(SHX29_1)
SHX29_1 = _ENV
SHX30_1 = "string"
SHX29_1 = SHX29_1[SHX30_1]
SHX30_1 = "lower"
SHX29_1 = SHX29_1[SHX30_1]
SHX30_1 = SHX16_1
SHX31_1 = "Pants"
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX30_1(SHX31_1)
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Name"
SHX27_1 = SHX16_1
SHX28_1 = "Pants"
SHX27_1 = SHX27_1(SHX28_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetX"
SHX27_1 = -0.04
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetY"
SHX27_1 = 0.0
SHX25_1[SHX26_1] = SHX27_1
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = SHX16_1
SHX25_1 = "SHIRT"
SHX24_1 = SHX24_1(SHX25_1)
SHX25_1 = {}
SHX26_1 = "Func"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Shirt"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Sprite"
SHX25_1[SHX26_1] = "shirt"
SHX26_1 = "Desc"
SHX27_1 = _ENV
SHX28_1 = "string"
SHX27_1 = SHX27_1[SHX28_1]
SHX28_1 = "format"
SHX27_1 = SHX27_1[SHX28_1]
SHX28_1 = SHX16_1
SHX29_1 = "TakeOffOn"
SHX28_1 = SHX28_1(SHX29_1)
SHX29_1 = _ENV
SHX30_1 = "string"
SHX29_1 = SHX29_1[SHX30_1]
SHX30_1 = "lower"
SHX29_1 = SHX29_1[SHX30_1]
SHX30_1 = SHX16_1
SHX31_1 = "Shirt"
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX30_1(SHX31_1)
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Name"
SHX27_1 = SHX16_1
SHX28_1 = "Shirt"
SHX27_1 = SHX27_1(SHX28_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetX"
SHX27_1 = 0.04
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetY"
SHX27_1 = 0.0
SHX25_1[SHX26_1] = SHX27_1
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = SHX16_1
SHX25_1 = "RESET"
SHX24_1 = SHX24_1(SHX25_1)
SHX25_1 = {}
SHX26_1 = "Func"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX9_1
  SHX1_2 = true
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = SHX17_1
    SHX1_2 = SHX16_1
    SHX2_2 = "AlreadyWearing"
    SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Sprite"
SHX27_1 = "reset"
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Desc"
SHX27_1 = SHX16_1
SHX28_1 = "Reset2"
SHX27_1 = SHX27_1(SHX28_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Name"
SHX27_1 = SHX16_1
SHX28_1 = "Reset"
SHX27_1 = SHX27_1(SHX28_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetX"
SHX27_1 = 0.12
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetY"
SHX27_1 = 0.2
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Rotate"
SHX27_1 = true
SHX25_1[SHX26_1] = SHX27_1
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = "clothingexit"
SHX25_1 = {}
SHX26_1 = "Func"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX3_1 = SHX0_2
end
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Sprite"
SHX27_1 = "exit"
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Desc"
SHX27_1 = ""
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Name"
SHX27_1 = SHX16_1
SHX28_1 = "Exit"
SHX27_1 = SHX27_1(SHX28_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetX"
SHX27_1 = 0.12
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetY"
SHX27_1 = -0.2
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Enabled"
SHX27_1 = "GUI"
SHX27_1 = SHX6_1[SHX27_1]
SHX28_1 = "Toggle"
SHX27_1 = SHX27_1[SHX28_1]
SHX25_1[SHX26_1] = SHX27_1
SHX23_1[SHX24_1] = SHX25_1
SHX24_1 = SHX16_1
SHX25_1 = "BAGOFF"
SHX24_1 = SHX24_1(SHX25_1)
SHX25_1 = {}
SHX26_1 = "Func"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX7_1
  SHX1_2 = "Bagoff"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Sprite"
SHX25_1[SHX26_1] = "bagoff"
SHX26_1 = "SpriteFunc"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetPedDrawableVariation
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 5
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = SHX5_1.Bagoff
  SHX2_2 = SHX5_1.Bagoff
  if SHX2_2 then
    SHX3_2 = SHX1_2.Drawable
    SHX2_2 = SHX21_1
    SHX2_2 = SHX2_2[SHX3_2]
    if SHX2_2 then
      SHX2_2 = "bagoff"
      return SHX2_2
    else
      SHX2_2 = "paraoff"
      return SHX2_2
    end
  end
  if 0 ~= SHX0_2 then
    SHX2_2 = SHX21_1
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = "bagoff"
      return SHX2_2
    else
      SHX2_2 = "paraoff"
      return SHX2_2
    end
  else
    SHX2_2 = false
    return SHX2_2
  end
end
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Desc"
SHX27_1 = _ENV
SHX28_1 = "string"
SHX27_1 = SHX27_1[SHX28_1]
SHX28_1 = "format"
SHX27_1 = SHX27_1[SHX28_1]
SHX28_1 = SHX16_1
SHX29_1 = "TakeOffOn"
SHX28_1 = SHX28_1(SHX29_1)
SHX29_1 = _ENV
SHX30_1 = "string"
SHX29_1 = SHX29_1[SHX30_1]
SHX30_1 = "lower"
SHX29_1 = SHX29_1[SHX30_1]
SHX30_1 = SHX16_1
SHX31_1 = "Bag"
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX30_1(SHX31_1)
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "Name"
SHX27_1 = SHX16_1
SHX28_1 = "Bag"
SHX27_1 = SHX27_1(SHX28_1)
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetX"
SHX27_1 = -0.12
SHX25_1[SHX26_1] = SHX27_1
SHX26_1 = "OffsetY"
SHX27_1 = 0.2
SHX25_1[SHX26_1] = SHX27_1
SHX23_1[SHX24_1] = SHX25_1
SHX6_1[SHX22_1] = SHX23_1
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = HasAnimDictLoaded
    SHX4_2 = SHX0_2.Dict
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = RequestAnimDict
    SHX4_2 = SHX0_2.Dict
    SHX3_2(SHX4_2)
    SHX3_2 = Wait
    SHX4_2 = 100
    SHX3_2(SHX4_2)
  end
  SHX3_2 = IsPedInAnyVehicle
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX0_2.Move = 51
  end
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX2_2
  SHX5_2 = SHX0_2.Dict
  SHX6_2 = SHX0_2.Anim
  SHX7_2 = 3.0
  SHX8_2 = 3.0
  SHX9_2 = SHX0_2.Dur
  SHX10_2 = SHX0_2.Move
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = SHX0_2.Dict
  SHX3_2(SHX4_2)
  SHX3_2 = SHX0_2.Dur
  SHX3_2 = SHX3_2 - 500
  SHX4_2 = 500
  if SHX3_2 < SHX4_2 then
    SHX3_2 = 500
  end
  SHX4_2 = SHX12_1
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = Wait
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX1_2
  SHX4_2()
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_1.Drawables
  SHX2_2 = SHX2_2.Top
  SHX2_2 = SHX2_2.Emote
  if SHX0_2 then
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX1_2
    SHX5_2 = SHX2_2.Dict
    SHX6_2 = SHX2_2.Anim
    SHX7_2 = 3.0
    SHX8_2 = 3.0
    SHX9_2 = 3000
    SHX10_2 = SHX2_2.Move
    SHX11_2 = 0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX3_2 = pairs
  SHX4_2 = SHX5_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if SHX8_2 then
      SHX9_2 = SHX8_2.Drawable
      if SHX9_2 then
        SHX9_2 = SetPedComponentVariation
        SHX10_2 = SHX1_2
        SHX11_2 = SHX8_2.Id
        SHX12_2 = SHX8_2.Drawable
        SHX13_2 = SHX8_2.Texture
        SHX14_2 = 0
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      else
        SHX9_2 = SHX8_2.Prop
        if SHX9_2 then
          SHX9_2 = ClearPedProp
          SHX10_2 = SHX1_2
          SHX11_2 = SHX8_2.Id
          SHX9_2(SHX10_2, SHX11_2)
          SHX9_2 = SetPedPropIndex
          SHX10_2 = SHX1_2
          SHX11_2 = SHX8_2.Id
          SHX12_2 = SHX8_2.Prop
          SHX13_2 = SHX8_2.Texture
          SHX14_2 = true
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        end
      end
    end
  end
  SHX3_2 = {}
  SHX5_1 = SHX3_2
end
SHX9_1 = SHX23_1
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX2_2 = SHX4_1
  if SHX2_2 then
    return
  end
  SHX2_2 = SHX0_1.Drawables
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX1_2 then
    SHX3_2 = SHX0_1.Extras
    SHX2_2 = SHX3_2[SHX0_2]
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = {}
  SHX5_2 = GetPedDrawableVariation
  SHX6_2 = SHX3_2
  SHX7_2 = SHX2_2.Drawable
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX4_2.Drawable = SHX5_2
  SHX5_2 = SHX2_2.Drawable
  SHX4_2.Id = SHX5_2
  SHX4_2.Ped = SHX3_2
  SHX5_2 = GetPedTextureVariation
  SHX6_2 = SHX3_2
  SHX7_2 = SHX2_2.Drawable
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX4_2.Texture = SHX5_2
  SHX5_2 = SHX18_1
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  if "Mask" ~= SHX0_2 and not SHX5_2 then
    SHX6_2 = SHX17_1
    SHX7_2 = SHX16_1
    SHX8_2 = "NotAllowedPed"
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX7_2(SHX8_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX6_2 = false
    return SHX6_2
  end
  SHX6_2 = SHX2_2.Table
  SHX6_2 = SHX6_2[SHX5_2]
  SHX7_2 = SHX2_2.Table
  SHX7_2 = SHX7_2.Standalone
  if not SHX7_2 then
    SHX7_2 = pairs
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = SHX2_2.Remember
      if not SHX13_2 then
        SHX13_2 = SHX4_2.Drawable
        if SHX11_2 == SHX13_2 then
          SHX13_2 = SHX22_1
          SHX14_2 = SHX2_2.Emote
          function SHX15_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
            SHX0_3 = SetPedComponentVariation
            SHX1_3 = SHX3_2
            SHX2_3 = SHX2_2.Drawable
            SHX3_3 = SHX12_2
            SHX4_3 = SHX4_2.Texture
            SHX5_3 = 0
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
          end
          SHX13_2(SHX14_2, SHX15_2)
          SHX13_2 = true
          return SHX13_2
        end
      else
        SHX13_2 = SHX5_1
        SHX13_2 = SHX13_2[SHX0_2]
        if not SHX13_2 then
          SHX13_2 = SHX4_2.Drawable
          if SHX11_2 == SHX13_2 then
            SHX13_2 = SHX22_1
            SHX14_2 = SHX2_2.Emote
            function SHX15_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
              SHX1_3 = SHX0_2
              SHX0_3 = SHX5_1
              SHX2_3 = SHX4_2
              SHX0_3[SHX1_3] = SHX2_3
              SHX0_3 = SetPedComponentVariation
              SHX1_3 = SHX3_2
              SHX2_3 = SHX2_2.Drawable
              SHX3_3 = SHX12_2
              SHX4_3 = SHX4_2.Texture
              SHX5_3 = 0
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
            end
            SHX13_2(SHX14_2, SHX15_2)
            SHX13_2 = true
            return SHX13_2
          end
        else
          SHX13_2 = SHX5_1
          SHX13_2 = SHX13_2[SHX0_2]
          SHX14_2 = SHX22_1
          SHX15_2 = SHX2_2.Emote
          function SHX16_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
            SHX0_3 = SetPedComponentVariation
            SHX1_3 = SHX3_2
            SHX2_3 = SHX2_2.Drawable
            SHX3_3 = SHX13_2.Drawable
            SHX4_3 = SHX13_2.Texture
            SHX5_3 = 0
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
            SHX1_3 = SHX0_2
            SHX0_3 = SHX5_1
            SHX0_3[SHX1_3] = false
          end
          SHX14_2(SHX15_2, SHX16_2)
          SHX14_2 = true
          return SHX14_2
        end
      end
    end
    SHX7_2 = SHX17_1
    SHX8_2 = SHX16_1
    SHX9_2 = "NoVariants"
    SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX8_2(SHX9_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    return
  else
    SHX7_2 = SHX5_1
    SHX7_2 = SHX7_2[SHX0_2]
    if not SHX7_2 then
      SHX7_2 = SHX4_2.Drawable
      if SHX7_2 ~= SHX6_2 then
        SHX7_2 = SHX22_1
        SHX8_2 = SHX2_2.Emote
        function SHX9_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
          SHX1_3 = SHX0_2
          SHX0_3 = SHX5_1
          SHX2_3 = SHX4_2
          SHX0_3[SHX1_3] = SHX2_3
          SHX0_3 = SetPedComponentVariation
          SHX1_3 = SHX3_2
          SHX2_3 = SHX2_2.Drawable
          SHX3_3 = SHX6_2
          SHX4_3 = 0
          SHX5_3 = 0
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
          SHX0_3 = SHX2_2.Table
          SHX0_3 = SHX0_3.Extra
          if SHX0_3 then
            SHX0_3 = pairs
            SHX1_3 = SHX2_2.Table
            SHX1_3 = SHX1_3.Extra
            SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
            for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
              SHX6_3 = {}
              SHX7_3 = GetPedDrawableVariation
              SHX8_3 = SHX3_2
              SHX9_3 = SHX5_3.Drawable
              SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
              SHX6_3.Drawable = SHX7_3
              SHX7_3 = GetPedTextureVariation
              SHX8_3 = SHX3_2
              SHX9_3 = SHX5_3.Drawable
              SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
              SHX6_3.Texture = SHX7_3
              SHX7_3 = SHX5_3.Drawable
              SHX6_3.Id = SHX7_3
              SHX7_3 = SetPedComponentVariation
              SHX8_3 = SHX3_2
              SHX9_3 = SHX5_3.Drawable
              SHX10_3 = SHX5_3.Id
              SHX11_3 = SHX5_3.Tex
              SHX12_3 = 0
              SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
              SHX8_3 = SHX5_3.Name
              SHX7_3 = SHX5_1
              SHX7_3[SHX8_3] = SHX6_3
            end
          end
        end
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = true
        return SHX7_2
      end
    else
      SHX7_2 = SHX5_1
      SHX7_2 = SHX7_2[SHX0_2]
      SHX8_2 = SHX22_1
      SHX9_2 = SHX2_2.Emote
      function SHX10_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
        SHX0_3 = SetPedComponentVariation
        SHX1_3 = SHX3_2
        SHX2_3 = SHX2_2.Drawable
        SHX3_3 = SHX7_2.Drawable
        SHX4_3 = SHX7_2.Texture
        SHX5_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX1_3 = SHX0_2
        SHX0_3 = SHX5_1
        SHX0_3[SHX1_3] = false
        SHX0_3 = SHX2_2.Table
        SHX0_3 = SHX0_3.Extra
        if SHX0_3 then
          SHX0_3 = pairs
          SHX1_3 = SHX2_2.Table
          SHX1_3 = SHX1_3.Extra
          SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
          for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
            SHX7_3 = SHX5_3.Name
            SHX6_3 = SHX5_1
            SHX6_3 = SHX6_3[SHX7_3]
            if SHX6_3 then
              SHX7_3 = SHX5_3.Name
              SHX6_3 = SHX5_1
              SHX6_3 = SHX6_3[SHX7_3]
              SHX7_2 = SHX6_3
              SHX6_3 = SetPedComponentVariation
              SHX7_3 = SHX3_2
              SHX8_3 = SHX7_2.Id
              SHX9_3 = SHX7_2.Drawable
              SHX10_3 = SHX7_2.Texture
              SHX11_3 = 0
              SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
              SHX7_3 = SHX5_3.Name
              SHX6_3 = SHX5_1
              SHX6_3[SHX7_3] = false
            end
          end
        end
      end
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = true
      return SHX8_2
    end
  end
  SHX7_2 = SHX17_1
  SHX8_2 = SHX16_1
  SHX9_2 = "AlreadyWearing"
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX8_2(SHX9_2)
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX7_2 = false
  return SHX7_2
end
SHX7_1 = SHX23_1
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX4_1
  if SHX1_2 then
    return
  end
  SHX1_2 = SHX0_1.Props
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = {}
  SHX4_2 = SHX1_2.Prop
  SHX3_2.Id = SHX4_2
  SHX3_2.Ped = SHX2_2
  SHX4_2 = GetPedPropIndex
  SHX5_2 = SHX2_2
  SHX6_2 = SHX1_2.Prop
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX3_2.Prop = SHX4_2
  SHX4_2 = GetPedPropTextureIndex
  SHX5_2 = SHX2_2
  SHX6_2 = SHX1_2.Prop
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX3_2.Texture = SHX4_2
  SHX4_2 = SHX1_2.Variants
  if not SHX4_2 then
    SHX4_2 = SHX3_2.Prop
    if -1 ~= SHX4_2 then
      SHX4_2 = SHX22_1
      SHX5_2 = SHX1_2.Emote
      SHX5_2 = SHX5_2.Off
      function SHX6_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX1_3 = SHX0_2
        SHX0_3 = SHX5_1
        SHX2_3 = SHX3_2
        SHX0_3[SHX1_3] = SHX2_3
        SHX0_3 = ClearPedProp
        SHX1_3 = SHX2_2
        SHX2_3 = SHX1_2.Prop
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = true
      return SHX4_2
    else
      SHX4_2 = SHX5_1
      SHX4_2 = SHX4_2[SHX0_2]
      if SHX4_2 then
        SHX5_2 = SHX22_1
        SHX6_2 = SHX1_2.Emote
        SHX6_2 = SHX6_2.On
        function SHX7_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
          SHX0_3 = SetPedPropIndex
          SHX1_3 = SHX2_2
          SHX2_3 = SHX1_2.Prop
          SHX3_3 = SHX4_2.Prop
          SHX4_3 = SHX4_2.Texture
          SHX5_3 = true
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        end
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = SHX5_1
        SHX5_2[SHX0_2] = false
        SHX5_2 = true
        return SHX5_2
      end
    end
    SHX4_2 = SHX17_1
    SHX5_2 = SHX16_1
    SHX6_2 = "NothingToRemove"
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX4_2 = false
    return SHX4_2
  else
    SHX4_2 = SHX18_1
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX5_2 = SHX17_1
      SHX6_2 = SHX16_1
      SHX7_2 = "NotAllowedPed"
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX6_2(SHX7_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX5_2 = false
      return SHX5_2
    end
    SHX5_2 = SHX1_2.Variants
    SHX5_2 = SHX5_2[SHX4_2]
    SHX6_2 = pairs
    SHX7_2 = SHX5_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = SHX3_2.Prop
      if SHX12_2 == SHX10_2 then
        SHX12_2 = SHX22_1
        SHX13_2 = SHX1_2.Emote
        SHX13_2 = SHX13_2.On
        function SHX14_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
          SHX0_3 = SetPedPropIndex
          SHX1_3 = SHX2_2
          SHX2_3 = SHX1_2.Prop
          SHX3_3 = SHX11_2
          SHX4_3 = SHX3_2.Texture
          SHX5_3 = true
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        end
        SHX12_2(SHX13_2, SHX14_2)
        SHX12_2 = true
        return SHX12_2
      end
    end
    SHX6_2 = SHX17_1
    SHX7_2 = SHX16_1
    SHX8_2 = "NoVariants"
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX7_2(SHX8_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX6_2 = false
    return SHX6_2
  end
end
SHX8_1 = SHX23_1
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = {}
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_1.Drawables
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = {}
    SHX9_2.Name = SHX5_2
    SHX10_2 = SHX6_2.Drawable
    SHX9_2.Drawable = SHX10_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_1.Extras
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = {}
    SHX9_2.Name = SHX5_2
    SHX10_2 = SHX6_2.Drawable
    SHX9_2.Drawable = SHX10_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_1.Props
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = {}
    SHX9_2.Name = SHX5_2
    SHX10_2 = SHX6_2.Prop
    SHX9_2.Prop = SHX10_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = PlayerPedId
    SHX7_2 = SHX7_2()
    SHX8_2 = nil
    SHX9_2 = SHX6_2.Drawable
    if SHX9_2 then
      SHX9_2 = {}
      SHX10_2 = GetPedDrawableVariation
      SHX11_2 = SHX7_2
      SHX12_2 = SHX6_2.Drawable
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX9_2.Id = SHX10_2
      SHX10_2 = GetPedTextureVariation
      SHX11_2 = SHX7_2
      SHX12_2 = SHX6_2.Drawable
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX9_2.Texture = SHX10_2
      SHX8_2 = SHX9_2
    else
      SHX9_2 = SHX6_2.Prop
      if SHX9_2 then
        SHX9_2 = {}
        SHX10_2 = GetPedPropIndex
        SHX11_2 = SHX7_2
        SHX12_2 = SHX6_2.Prop
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX9_2.Id = SHX10_2
        SHX10_2 = GetPedPropTextureIndex
        SHX11_2 = SHX7_2
        SHX12_2 = SHX6_2.Prop
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX9_2.Texture = SHX10_2
        SHX8_2 = SHX9_2
      end
    end
    SHX9_2 = SHX14_1
    SHX10_2 = 0.2
    SHX11_2 = 0.8 * SHX5_2
    SHX11_2 = SHX11_2 / 18
    SHX12_2 = 0.3
    SHX13_2 = "~o~"
    SHX14_2 = SHX6_2.Name
    SHX15_2 = [[
~w~ = 
     (]]
    SHX16_2 = SHX8_2.Id
    SHX17_2 = " , "
    SHX18_2 = SHX8_2.Texture
    SHX19_2 = ")"
    SHX13_2 = SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2 .. SHX18_2 .. SHX19_2
    SHX14_2 = false
    SHX15_2 = 1
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX9_2 = DrawRect
    SHX10_2 = 0.23
    SHX11_2 = 0.8 * SHX5_2
    SHX11_2 = SHX11_2 / 18
    SHX11_2 = SHX11_2 + 0.025
    SHX12_2 = 0.07
    SHX13_2 = 0.045
    SHX14_2 = 0
    SHX15_2 = 0
    SHX16_2 = 0
    SHX17_2 = 150
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  end
end
SHX24_1 = nil
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX24_1
  if not SHX1_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.CreateThread
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
      SHX0_3 = true
      SHX24_1 = SHX0_3
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      SHX1_3 = SHX0_1.Drawables
      SHX2_3 = SHX0_2
      SHX1_3 = SHX1_3[SHX2_3]
      SHX2_3 = SHX0_1.Props
      SHX3_3 = SHX0_2
      SHX2_3 = SHX2_3[SHX3_3]
      SHX3_3 = SHX18_1
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX1_3 then
        SHX4_3 = SHX1_3.Table
        if SHX4_3 then
          SHX4_3 = type
          SHX5_3 = SHX1_3.Table
          SHX5_3 = SHX5_3[SHX3_3]
          SHX4_3 = SHX4_3(SHX5_3)
          if "table" == SHX4_3 then
            SHX4_3 = SHX13_1
            SHX5_3 = SHX1_3.Table
            SHX5_3 = SHX5_3[SHX3_3]
            SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
            for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
              SHX10_3 = SHX17_1
              SHX11_3 = SHX0_2
              SHX12_3 = " : ~o~"
              SHX13_3 = SHX8_3
              SHX11_3 = SHX11_3 .. SHX12_3 .. SHX13_3
              SHX10_3(SHX11_3)
              SHX10_3 = SHX20_1
              SHX11_3 = "Open"
              SHX10_3(SHX11_3)
              SHX10_3 = SetPedComponentVariation
              SHX11_3 = SHX0_3
              SHX12_3 = SHX1_3.Drawable
              SHX13_3 = SHX8_3
              SHX14_3 = 0
              SHX15_3 = 0
              SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
              SHX10_3 = Wait
              SHX11_3 = 300
              SHX10_3(SHX11_3)
              SHX10_3 = SHX17_1
              SHX11_3 = SHX0_2
              SHX12_3 = " : ~b~"
              SHX13_3 = SHX9_3
              SHX11_3 = SHX11_3 .. SHX12_3 .. SHX13_3
              SHX10_3(SHX11_3)
              SHX10_3 = SHX20_1
              SHX11_3 = "Close"
              SHX10_3(SHX11_3)
              SHX10_3 = SetPedComponentVariation
              SHX11_3 = SHX0_3
              SHX12_3 = SHX1_3.Drawable
              SHX13_3 = SHX9_3
              SHX14_3 = 0
              SHX15_3 = 0
              SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
              SHX10_3 = Wait
              SHX11_3 = 300
              SHX10_3(SHX11_3)
            end
          end
        end
      elseif SHX2_3 then
        SHX4_3 = SHX2_3.Variants
        if SHX4_3 then
          SHX4_3 = SHX13_1
          SHX5_3 = SHX2_3.Variants
          SHX5_3 = SHX5_3[SHX3_3]
          SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
          for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
            SHX10_3 = SHX17_1
            SHX11_3 = SHX0_2
            SHX12_3 = " : ~o~"
            SHX13_3 = SHX8_3
            SHX11_3 = SHX11_3 .. SHX12_3 .. SHX13_3
            SHX10_3(SHX11_3)
            SHX10_3 = SHX20_1
            SHX11_3 = "Open"
            SHX10_3(SHX11_3)
            SHX10_3 = SetPedPropIndex
            SHX11_3 = SHX0_3
            SHX12_3 = SHX2_3.Prop
            SHX13_3 = SHX8_3
            SHX14_3 = 0
            SHX15_3 = true
            SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
            SHX10_3 = Wait
            SHX11_3 = 300
            SHX10_3(SHX11_3)
            SHX10_3 = SHX17_1
            SHX11_3 = SHX0_2
            SHX12_3 = " : ~b~"
            SHX13_3 = SHX9_3
            SHX11_3 = SHX11_3 .. SHX12_3 .. SHX13_3
            SHX10_3(SHX11_3)
            SHX10_3 = SHX20_1
            SHX11_3 = "Close"
            SHX10_3(SHX11_3)
            SHX10_3 = SetPedPropIndex
            SHX11_3 = SHX0_3
            SHX12_3 = SHX2_3.Prop
            SHX13_3 = SHX9_3
            SHX14_3 = 0
            SHX15_3 = true
            SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
            SHX10_3 = Wait
            SHX11_3 = 300
            SHX10_3(SHX11_3)
            SHX10_3 = ClearPedProp
            SHX11_3 = SHX0_3
            SHX12_3 = SHX2_3.Prop
            SHX10_3(SHX11_3, SHX12_3)
            SHX10_3 = Wait
            SHX11_3 = 200
            SHX10_3(SHX11_3)
          end
        end
      end
      SHX4_3 = false
      SHX24_1 = SHX4_3
    end
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SHX17_1
    SHX2_2 = "Already testing variants."
    SHX1_2(SHX2_2)
  end
end
SHX26_1 = _ENV
SHX27_1 = "pairs"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "Commands"
SHX27_1 = SHX6_1[SHX27_1]
SHX26_1, SHX27_1, SHX28_1, SHX29_1 = SHX26_1(SHX27_1)
for SHX30_1, SHX31_1 in SHX26_1, SHX27_1, SHX28_1, SHX29_1 do
  SHX32_1 = _ENV
  SHX33_1 = "RegisterCommand"
  SHX32_1 = SHX32_1[SHX33_1]
  SHX33_1 = SHX30_1
  function SHX34_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
    SHX0_2 = IsPlayerFreeAiming
    SHX1_2 = PlayerId
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = IsPedReloading
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        SHX0_2 = tCMG
        SHX0_2 = SHX0_2.canAnim
        SHX0_2 = SHX0_2()
        if SHX0_2 then
          SHX0_2 = SHX31_1.Func
          SHX0_2()
        end
      end
    end
  end
  SHX35_1 = false
  SHX32_1(SHX33_1, SHX34_1, SHX35_1)
  SHX32_1 = _ENV
  SHX33_1 = "TriggerEvent"
  SHX32_1 = SHX32_1[SHX33_1]
  SHX33_1 = "chat:addSuggestion"
  SHX34_1 = "/"
  SHX35_1 = SHX30_1
  SHX34_1 = SHX34_1 .. SHX35_1
  SHX35_1 = "Desc"
  SHX35_1 = SHX31_1[SHX35_1]
  SHX32_1(SHX33_1, SHX34_1, SHX35_1)
end
SHX26_1 = "ExtrasEnabled"
SHX26_1 = SHX6_1[SHX26_1]
if SHX26_1 then
  SHX26_1 = _ENV
  SHX27_1 = "pairs"
  SHX26_1 = SHX26_1[SHX27_1]
  SHX27_1 = "ExtraCommands"
  SHX27_1 = SHX6_1[SHX27_1]
  SHX26_1, SHX27_1, SHX28_1, SHX29_1 = SHX26_1(SHX27_1)
  for SHX30_1, SHX31_1 in SHX26_1, SHX27_1, SHX28_1, SHX29_1 do
    SHX32_1 = _ENV
    SHX33_1 = "RegisterCommand"
    SHX32_1 = SHX32_1[SHX33_1]
    SHX33_1 = SHX30_1
    function SHX34_1()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_2, SHX1_2
      SHX0_2 = IsPlayerFreeAiming
      SHX1_2 = PlayerId
      SHX1_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        SHX0_2 = IsPedReloading
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2)
        if not SHX0_2 then
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.canAnim
          SHX0_2 = SHX0_2()
          if SHX0_2 then
            SHX0_2 = SHX31_1.Func
            SHX0_2()
          end
        end
      end
    end
    SHX35_1 = false
    SHX32_1(SHX33_1, SHX34_1, SHX35_1)
    SHX32_1 = _ENV
    SHX33_1 = "TriggerEvent"
    SHX32_1 = SHX32_1[SHX33_1]
    SHX33_1 = "chat:addSuggestion"
    SHX34_1 = "/"
    SHX35_1 = SHX30_1
    SHX34_1 = SHX34_1 .. SHX35_1
    SHX35_1 = "Desc"
    SHX35_1 = SHX31_1[SHX35_1]
    SHX32_1(SHX33_1, SHX34_1, SHX35_1)
  end
end
SHX26_1 = AddEventHandler
SHX27_1 = "onResourceStop"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = SHX9_1
    SHX1_2()
  end
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = "GUI"
SHX26_1 = SHX6_1[SHX26_1]
SHX27_1 = "Enabled"
SHX26_1 = SHX26_1[SHX27_1]
if not SHX26_1 then
  return
end
function SHX26_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = SHX0_2 - SHX2_2
  SHX5_2 = SHX1_2 - SHX3_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.sqrt
  SHX7_2 = SHX4_2 * SHX4_2
  SHX8_2 = SHX5_2 * SHX5_2
  SHX7_2 = SHX7_2 + SHX8_2
  return SHX6_2(SHX7_2)
end
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 1
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 2
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 18
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 68
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 69
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 70
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 91
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 92
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 25
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 14
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 15
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 16
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 1
  SHX2_2 = 17
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisablePlayerFiring
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetMouseCursorActiveThisFrame
  SHX0_2()
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = GetActiveScreenResolution
  SHX0_2, SHX1_2 = SHX0_2()
  SHX2_2 = GetNuiCursorPosition
  SHX2_2, SHX3_2 = SHX2_2()
  SHX4_2 = SHX2_2 / SHX0_2
  SHX4_2 = SHX4_2 + 0.008
  SHX5_2 = SHX3_2 / SHX1_2
  SHX3_2 = SHX5_2 + 0.027
  SHX2_2 = SHX4_2
  SHX4_2 = SHX2_2
  SHX5_2 = SHX3_2
  return SHX4_2, SHX5_2
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX0_2.Rotate
  if not SHX1_2 then
    SHX1_2 = 0.0
  end
  SHX2_2 = SHX0_2.Shadow
  if SHX2_2 then
    SHX2_2 = DrawSprite
    SHX3_2 = "dp_clothing"
    SHX4_2 = "circle"
    SHX5_2 = SHX0_2.x
    SHX6_2 = SHX0_2.y
    SHX7_2 = SHX0_2.Size
    SHX7_2 = SHX7_2.Circle
    SHX7_2 = SHX7_2.x
    SHX7_2 = SHX7_2 / 0.8
    SHX8_2 = SHX0_2.Size
    SHX8_2 = SHX8_2.Circle
    SHX8_2 = SHX8_2.y
    SHX8_2 = SHX8_2 / 0.8
    SHX9_2 = SHX1_2
    SHX10_2 = SHX0_2.Colour
    SHX10_2 = SHX10_2.r
    SHX11_2 = SHX0_2.Colour
    SHX11_2 = SHX11_2.g
    SHX12_2 = SHX0_2.Colour
    SHX12_2 = SHX12_2.b
    SHX13_2 = SHX0_2.Alpha
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
  SHX2_2 = DrawSprite
  SHX3_2 = "dp_clothing"
  SHX4_2 = SHX0_2.Sprite
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.Size
  SHX7_2 = SHX7_2.Sprite
  SHX7_2 = SHX7_2.x
  SHX7_2 = SHX7_2 / 0.68
  SHX8_2 = SHX0_2.Size
  SHX8_2 = SHX8_2.Sprite
  SHX8_2 = SHX8_2.y
  SHX8_2 = SHX8_2 / 0.68
  SHX9_2 = SHX0_2.Rotation
  SHX10_2 = 255
  SHX11_2 = 255
  SHX12_2 = 255
  SHX13_2 = SHX0_2.Alpha
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = IsDisabledControlJustPressed
  SHX3_2 = 1
  SHX4_2 = 24
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = SHX28_1
    SHX2_2, SHX3_2 = SHX2_2()
    SHX4_2 = SHX26_1
    SHX5_2 = SHX0_2.x
    SHX5_2 = SHX5_2 + 0.005
    SHX6_2 = SHX0_2.y
    SHX6_2 = SHX6_2 + 0.025
    SHX7_2 = SHX2_2
    SHX8_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = 0.025
    if SHX4_2 < SHX5_2 then
      SHX5_2 = true
      return SHX5_2
    end
  else
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 1
    SHX4_2 = 25
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = SHX6_1.Debug
      if SHX2_2 then
        SHX2_2 = SHX28_1
        SHX2_2, SHX3_2 = SHX2_2()
        SHX4_2 = SHX26_1
        SHX5_2 = SHX0_2.x
        SHX5_2 = SHX5_2 + 0.005
        SHX6_2 = SHX0_2.y
        SHX6_2 = SHX6_2 + 0.025
        SHX7_2 = SHX2_2
        SHX8_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX5_2 = 0.025
        if SHX4_2 < SHX5_2 then
          SHX5_2 = SHX25_1
          SHX6_2 = SHX15_1
          SHX7_2 = SHX0_2.Sprite
          SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX6_2(SHX7_2)
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        end
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = SHX6_1.GUI
    SHX1_2 = SHX1_2.AllowInCars
    if not SHX1_2 then
      SHX1_2 = false
      return SHX1_2
  end
  else
    SHX1_2 = IsPedSwimmingUnderWater
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = false
      return SHX1_2
    else
      SHX1_2 = IsPedRagdoll
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = SHX6_1.GUI
        SHX1_2 = SHX1_2.AllowWhenRagdolled
        if not SHX1_2 then
          SHX1_2 = false
          return SHX1_2
      end
      else
        SHX1_2 = IsHudComponentActive
        SHX2_2 = 19
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 then
          SHX1_2 = false
          return SHX1_2
        else
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.getClientEventData
          SHX2_2 = "SpellingBeeClientData"
          SHX1_2 = SHX1_2(SHX2_2)
          SHX1_2 = SHX1_2.minigameName
          if "Spelling Bee" == SHX1_2 then
            SHX1_2 = false
            return SHX1_2
          else
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.hasClientPermission
            SHX2_2 = "paramedic.permission"
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX1_2 = false
              return SHX1_2
            end
          end
        end
      end
    end
  end
  SHX1_2 = true
  return SHX1_2
end
SHX31_1 = {}
SHX32_1 = "x"
SHX33_1 = 0.0254
SHX31_1[SHX32_1] = SHX33_1
SHX32_1 = "y"
SHX33_1 = 0.0445
SHX31_1[SHX32_1] = SHX33_1
SHX32_1 = {}
SHX33_1 = "x"
SHX34_1 = 0.028750000000000005
SHX32_1[SHX33_1] = SHX34_1
SHX33_1 = "y"
SHX34_1 = 0.05
SHX32_1[SHX33_1] = SHX34_1
SHX33_1 = {}
SHX34_1 = {}
SHX35_1 = 0.0
SHX3_1 = false
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = SHX6_1.GUI
  SHX0_2 = SHX0_2.Position
  SHX0_2 = SHX0_2.x
  SHX1_2 = SHX6_1.GUI
  SHX1_2 = SHX1_2.Position
  SHX1_2 = SHX1_2.y
  SHX2_2 = 0.1
  SHX3_2 = 0.175
  SHX4_2 = pairs
  SHX5_2 = SHX6_1.Commands
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.Button
    SHX11_2 = math
    SHX11_2 = SHX11_2.pi
    SHX11_2 = SHX10_2 * SHX11_2
    SHX11_2 = SHX11_2 / 7
    SHX12_2 = math
    SHX12_2 = SHX12_2.cos
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX12_2 = SHX2_2 * SHX12_2
    SHX12_2 = SHX0_2 + SHX12_2
    SHX13_2 = math
    SHX13_2 = SHX13_2.sin
    SHX14_2 = SHX11_2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX13_2 = SHX3_2 * SHX13_2
    SHX13_2 = SHX1_2 + SHX13_2
    SHX14_2 = SHX33_1
    SHX15_2 = {}
    SHX15_2.Command = SHX8_2
    SHX16_2 = SHX9_2.Desc
    if not SHX16_2 then
      SHX16_2 = ""
    end
    SHX15_2.Desc = SHX16_2
    SHX16_2 = SHX9_2.Rotation
    if not SHX16_2 then
      SHX16_2 = 0.0
    end
    SHX15_2.Rotation = SHX16_2
    SHX16_2 = {}
    SHX17_2 = SHX31_1
    SHX16_2.Sprite = SHX17_2
    SHX15_2.Size = SHX16_2
    SHX16_2 = SHX9_2.Sprite
    SHX15_2.Sprite = SHX16_2
    SHX16_2 = SHX9_2.Name
    SHX15_2.Text = SHX16_2
    SHX15_2.x = SHX12_2
    SHX15_2.y = SHX13_2
    SHX14_2[SHX10_2] = SHX15_2
  end
  SHX4_2 = SHX6_1.ExtrasEnabled
  if SHX4_2 then
    SHX4_2 = pairs
    SHX5_2 = SHX6_1.ExtraCommands
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = SHX9_2.Enabled
      if nil == SHX10_2 then
        SHX10_2 = true
      end
      SHX11_2 = SHX34_1
      SHX12_2 = {}
      SHX12_2.Command = SHX8_2
      SHX13_2 = SHX9_2.Desc
      if not SHX13_2 then
        SHX13_2 = ""
      end
      SHX12_2.Desc = SHX13_2
      SHX13_2 = SHX9_2.OffsetX
      SHX12_2.OffsetX = SHX13_2
      SHX13_2 = SHX9_2.OffsetY
      SHX12_2.OffsetY = SHX13_2
      SHX13_2 = {}
      SHX14_2 = {}
      SHX15_2 = SHX32_1.x
      SHX14_2.x = SHX15_2
      SHX15_2 = SHX32_1.y
      SHX14_2.y = SHX15_2
      SHX13_2.Circle = SHX14_2
      SHX14_2 = {}
      SHX15_2 = SHX31_1.x
      SHX15_2 = SHX15_2 / 1.35
      SHX14_2.x = SHX15_2
      SHX15_2 = SHX31_1.y
      SHX15_2 = SHX15_2 / 1.35
      SHX14_2.y = SHX15_2
      SHX13_2.Sprite = SHX14_2
      SHX12_2.Size = SHX13_2
      SHX13_2 = SHX9_2.Sprite
      SHX12_2.Sprite = SHX13_2
      SHX13_2 = SHX9_2.SpriteFunc
      SHX12_2.SpriteFunc = SHX13_2
      SHX13_2 = SHX9_2.Name
      SHX12_2.Text = SHX13_2
      SHX12_2.Enabled = SHX10_2
      SHX13_2 = SHX9_2.Rotate
      SHX12_2.Rotate = SHX13_2
      SHX12_2.Rotation = 0.0
      SHX11_2[SHX8_2] = SHX12_2
    end
  end
end
function SHX37_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.CreateThread
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = SHX20_1
    SHX1_3 = "Select"
    SHX0_3(SHX1_3)
    SHX0_3 = nil
    SHX1_3 = SHX1_2
    if SHX1_3 then
      SHX2_3 = SHX0_2
      SHX1_3 = SHX34_1
      SHX0_3 = SHX1_3[SHX2_3]
    else
      SHX1_3 = SHX3_2
      if SHX1_3 then
        SHX1_3 = {}
        SHX0_3 = SHX1_3
      else
        SHX2_3 = SHX0_2
        SHX1_3 = SHX33_1
        SHX0_3 = SHX1_3[SHX2_3]
      end
    end
    SHX1_3 = SHX2_2
    if SHX1_3 then
      SHX1_3 = 1
      SHX2_3 = 18
      SHX3_3 = 1
      for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
        SHX5_3 = SHX3_2
        if not SHX5_3 then
          SHX5_3 = -SHX4_3
          SHX5_3 = SHX5_3 * 20
          SHX5_3 = SHX5_3 + 0.0
          SHX0_3.Rotation = SHX5_3
          SHX5_3 = Wait
          SHX6_3 = 1
          SHX5_3(SHX6_3)
        else
          SHX5_3 = -SHX4_3
          SHX5_3 = SHX5_3 * 20
          SHX5_3 = SHX5_3 + 0.0
          SHX35_1 = SHX5_3
          SHX5_3 = Wait
          SHX6_3 = 1
          SHX5_3(SHX6_3)
        end
      end
      return
    end
    SHX1_3 = SHX1_2
    if not SHX1_3 then
      SHX1_3 = {}
      SHX2_3 = {}
      SHX3_3 = SHX31_1.x
      SHX3_3 = SHX3_3 / 1.1
      SHX2_3.x = SHX3_3
      SHX3_3 = SHX31_1.y
      SHX3_3 = SHX3_3 / 1.1
      SHX2_3.y = SHX3_3
      SHX1_3.Sprite = SHX2_3
      SHX0_3.Size = SHX1_3
      SHX1_3 = Wait
      SHX2_3 = 100
      SHX1_3(SHX2_3)
      SHX1_3 = {}
      SHX2_3 = {}
      SHX3_3 = SHX31_1.x
      SHX2_3.x = SHX3_3
      SHX3_3 = SHX31_1.y
      SHX2_3.y = SHX3_3
      SHX1_3.Sprite = SHX2_3
      SHX0_3.Size = SHX1_3
    else
      SHX1_3 = {}
      SHX2_3 = {}
      SHX3_3 = SHX32_1.x
      SHX2_3.x = SHX3_3
      SHX3_3 = SHX32_1.y
      SHX2_3.y = SHX3_3
      SHX1_3.Circle = SHX2_3
      SHX2_3 = {}
      SHX3_3 = SHX31_1.x
      SHX3_3 = SHX3_3 / 1.3
      SHX3_3 = SHX3_3 / 1.1
      SHX2_3.x = SHX3_3
      SHX3_3 = SHX31_1.y
      SHX3_3 = SHX3_3 / 1.3
      SHX3_3 = SHX3_3 / 1.1
      SHX2_3.y = SHX3_3
      SHX1_3.Sprite = SHX2_3
      SHX0_3.Size = SHX1_3
      SHX1_3 = Wait
      SHX2_3 = 100
      SHX1_3(SHX2_3)
      SHX1_3 = {}
      SHX2_3 = {}
      SHX3_3 = SHX32_1.x
      SHX2_3.x = SHX3_3
      SHX3_3 = SHX32_1.y
      SHX2_3.y = SHX3_3
      SHX1_3.Circle = SHX2_3
      SHX2_3 = {}
      SHX3_3 = SHX31_1.x
      SHX3_3 = SHX3_3 / 1.35
      SHX2_3.x = SHX3_3
      SHX3_3 = SHX31_1.y
      SHX3_3 = SHX3_3 / 1.35
      SHX2_3.y = SHX3_3
      SHX1_3.Sprite = SHX2_3
      SHX0_3.Size = SHX1_3
    end
  end
  SHX4_2(SHX5_2)
end
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = SHX28_1
  SHX0_2, SHX1_2 = SHX0_2()
  SHX2_2 = pairs
  SHX3_2 = SHX33_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX26_1
    SHX9_2 = SHX7_2.x
    SHX9_2 = SHX9_2 + 0.005
    SHX10_2 = SHX7_2.y
    SHX10_2 = SHX10_2 + 0.025
    SHX11_2 = SHX0_2
    SHX12_2 = SHX1_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = 0.025
    if SHX8_2 < SHX9_2 then
      SHX9_2 = SHX14_1
      SHX10_2 = SHX6_1.GUI
      SHX10_2 = SHX10_2.Position
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX6_1.GUI
      SHX11_2 = SHX11_2.Position
      SHX11_2 = SHX11_2.y
      SHX11_2 = SHX11_2 - 0.1
      SHX12_2 = 0.3
      SHX13_2 = SHX7_2.Text
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX9_2 = SHX14_1
      SHX10_2 = SHX6_1.GUI
      SHX10_2 = SHX10_2.Position
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX6_1.GUI
      SHX11_2 = SHX11_2.Position
      SHX11_2 = SHX11_2.y
      SHX11_2 = SHX11_2 - 0.08
      SHX12_2 = 0.22
      SHX13_2 = SHX7_2.Desc
      SHX14_2 = {}
      SHX15_2 = 210
      SHX16_2 = 210
      SHX17_2 = 210
      SHX14_2[1] = SHX15_2
      SHX14_2[2] = SHX16_2
      SHX14_2[3] = SHX17_2
      SHX15_2 = false
      SHX16_2 = true
      SHX17_2 = {}
      SHX17_2.x = 0.1
      SHX17_2.y = 0.2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    end
  end
  SHX2_2 = pairs
  SHX3_2 = SHX34_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.Enabled
    if SHX8_2 then
      SHX8_2 = SHX26_1
      SHX9_2 = SHX6_1.GUI
      SHX9_2 = SHX9_2.Position
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX7_2.OffsetX
      SHX9_2 = SHX9_2 + SHX10_2
      SHX9_2 = SHX9_2 + 0.005
      SHX10_2 = SHX6_1.GUI
      SHX10_2 = SHX10_2.Position
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX7_2.OffsetY
      SHX10_2 = SHX10_2 + SHX11_2
      SHX10_2 = SHX10_2 + 0.025
      SHX11_2 = SHX0_2
      SHX12_2 = SHX1_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = true
      SHX10_2 = SHX7_2.SpriteFunc
      if SHX10_2 then
        SHX10_2 = SHX7_2.SpriteFunc
        SHX10_2 = SHX10_2()
        if SHX10_2 then
          SHX9_2 = true
        else
          SHX9_2 = false
        end
      end
      if SHX9_2 then
        SHX10_2 = 0.025
        if SHX8_2 < SHX10_2 then
          SHX10_2 = SHX14_1
          SHX11_2 = SHX6_1.GUI
          SHX11_2 = SHX11_2.Position
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX6_1.GUI
          SHX12_2 = SHX12_2.Position
          SHX12_2 = SHX12_2.y
          SHX12_2 = SHX12_2 - 0.1
          SHX13_2 = 0.3
          SHX14_2 = SHX7_2.Text
          SHX15_2 = false
          SHX16_2 = false
          SHX17_2 = true
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
          SHX10_2 = SHX14_1
          SHX11_2 = SHX6_1.GUI
          SHX11_2 = SHX11_2.Position
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX6_1.GUI
          SHX12_2 = SHX12_2.Position
          SHX12_2 = SHX12_2.y
          SHX12_2 = SHX12_2 - 0.08
          SHX13_2 = 0.22
          SHX14_2 = SHX7_2.Desc
          SHX15_2 = {}
          SHX16_2 = 210
          SHX17_2 = 210
          SHX18_2 = 210
          SHX15_2[1] = SHX16_2
          SHX15_2[2] = SHX17_2
          SHX15_2[3] = SHX18_2
          SHX16_2 = false
          SHX17_2 = true
          SHX18_2 = {}
          SHX18_2.x = 0.1
          SHX18_2.y = 0.2
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        end
      end
    end
  end
  SHX2_2 = SHX26_1
  SHX3_2 = SHX6_1.GUI
  SHX3_2 = SHX3_2.Position
  SHX3_2 = SHX3_2.x
  SHX3_2 = SHX3_2 + 0.005
  SHX4_2 = SHX6_1.GUI
  SHX4_2 = SHX4_2.Position
  SHX4_2 = SHX4_2.y
  SHX4_2 = SHX4_2 + 0.025
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = 0.015
  if SHX2_2 < SHX3_2 then
    SHX3_2 = SHX14_1
    SHX4_2 = SHX6_1.GUI
    SHX4_2 = SHX4_2.Position
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX6_1.GUI
    SHX5_2 = SHX5_2.Position
    SHX5_2 = SHX5_2.y
    SHX5_2 = SHX5_2 - 0.09
    SHX6_2 = 0.3
    SHX7_2 = SHX16_1
    SHX8_2 = "Info"
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = SHX27_1
  SHX0_2()
  SHX0_2 = SHX38_1
  SHX0_2()
  SHX0_2 = SHX6_1.GUI
  SHX0_2 = SHX0_2.Position
  SHX0_2 = SHX0_2.x
  SHX1_2 = SHX6_1.GUI
  SHX1_2 = SHX1_2.Position
  SHX1_2 = SHX1_2.y
  SHX2_2 = pairs
  SHX3_2 = SHX33_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = nil
    SHX9_2 = nil
    SHX10_2 = SHX15_1
    SHX11_2 = SHX7_2.Sprite
    SHX10_2 = SHX10_2(SHX11_2)
    SHX11_2 = SHX5_1
    SHX10_2 = SHX11_2[SHX10_2]
    if SHX10_2 then
      SHX9_2 = 180
      SHX10_2 = {}
      SHX10_2.r = 0
      SHX10_2.g = 100
      SHX10_2.b = 210
      SHX10_2.a = 220
      SHX8_2 = SHX10_2
    else
      SHX9_2 = 255
      SHX10_2 = {}
      SHX10_2.r = 0
      SHX10_2.g = 0
      SHX10_2.b = 0
      SHX10_2.a = 255
      SHX8_2 = SHX10_2
    end
    SHX10_2 = DrawSprite
    SHX11_2 = "dp_wheel"
    SHX12_2 = SHX6_2
    SHX13_2 = ""
    SHX12_2 = SHX12_2 .. SHX13_2
    SHX13_2 = SHX0_2
    SHX14_2 = SHX1_2
    SHX15_2 = 0.4285
    SHX16_2 = 0.7714
    SHX17_2 = 0.0
    SHX18_2 = SHX8_2.r
    SHX19_2 = SHX8_2.g
    SHX20_2 = SHX8_2.b
    SHX21_2 = SHX8_2.a
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX10_2 = SHX29_1
    SHX11_2 = {}
    SHX11_2.Alpha = SHX9_2
    SHX11_2.Colour = SHX8_2
    SHX12_2 = SHX7_2.Size
    SHX11_2.Size = SHX12_2
    SHX12_2 = SHX7_2.Sprite
    SHX11_2.Sprite = SHX12_2
    SHX12_2 = SHX7_2.Text
    SHX11_2.Text = SHX12_2
    SHX12_2 = SHX7_2.x
    SHX11_2.x = SHX12_2
    SHX12_2 = SHX7_2.y
    SHX11_2.y = SHX12_2
    SHX12_2 = SHX7_2.Rotation
    SHX11_2.Rotation = SHX12_2
    SHX10_2 = SHX10_2(SHX11_2)
    if SHX10_2 then
      SHX11_2 = SHX4_1
      if not SHX11_2 then
        SHX11_2 = SHX7_2.Sprite
        if "gloves" == SHX11_2 then
          SHX11_2 = SHX5_1.Shirt
          if not SHX11_2 then
            SHX11_2 = SHX37_1
            SHX12_2 = SHX6_2
            SHX11_2(SHX12_2)
            SHX11_2 = ExecuteCommand
            SHX12_2 = SHX7_2.Command
            SHX11_2(SHX12_2)
          else
            SHX11_2 = SHX17_1
            SHX12_2 = SHX16_1
            SHX13_2 = "NoShirtOn"
            SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX12_2(SHX13_2)
            SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
          end
        else
          SHX11_2 = SHX37_1
          SHX12_2 = SHX6_2
          SHX11_2(SHX12_2)
          SHX11_2 = ExecuteCommand
          SHX12_2 = SHX7_2.Command
          SHX11_2(SHX12_2)
        end
      end
    end
  end
  SHX2_2 = pairs
  SHX3_2 = SHX34_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.Enabled
    if SHX8_2 then
      SHX8_2 = nil
      SHX9_2 = nil
      SHX10_2 = SHX15_1
      SHX11_2 = SHX7_2.Sprite
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = SHX5_1
      SHX10_2 = SHX11_2[SHX10_2]
      if SHX10_2 then
        SHX9_2 = 180
        SHX10_2 = {}
        SHX10_2.r = 0
        SHX10_2.g = 100
        SHX10_2.b = 210
        SHX10_2.a = 220
        SHX8_2 = SHX10_2
      else
        SHX9_2 = 255
        SHX10_2 = {}
        SHX10_2.r = 0
        SHX10_2.g = 0
        SHX10_2.b = 0
        SHX10_2.a = 255
        SHX8_2 = SHX10_2
      end
      SHX10_2 = SHX7_2.Sprite
      SHX11_2 = SHX7_2.SpriteFunc
      if SHX11_2 then
        SHX11_2 = SHX7_2.SpriteFunc
        SHX11_2 = SHX11_2()
        if SHX11_2 then
          SHX10_2 = SHX11_2
        else
          SHX10_2 = false
        end
      end
      if SHX10_2 then
        SHX11_2 = SHX29_1
        SHX12_2 = {}
        SHX12_2.Alpha = SHX9_2
        SHX12_2.Colour = SHX8_2
        SHX12_2.Shadow = true
        SHX13_2 = SHX7_2.Size
        SHX12_2.Size = SHX13_2
        SHX12_2.Sprite = SHX10_2
        SHX13_2 = SHX7_2.Text
        SHX12_2.Text = SHX13_2
        SHX13_2 = SHX7_2.OffsetX
        SHX13_2 = SHX0_2 + SHX13_2
        SHX12_2.x = SHX13_2
        SHX13_2 = SHX7_2.OffsetY
        SHX13_2 = SHX1_2 + SHX13_2
        SHX12_2.y = SHX13_2
        SHX13_2 = SHX7_2.Rotation
        SHX12_2.Rotation = SHX13_2
        SHX11_2 = SHX11_2(SHX12_2)
        if SHX11_2 then
          SHX12_2 = SHX4_1
          if not SHX12_2 then
            SHX12_2 = SHX37_1
            SHX13_2 = SHX6_2
            SHX14_2 = true
            SHX15_2 = SHX7_2.Rotate
            SHX12_2(SHX13_2, SHX14_2, SHX15_2)
            SHX12_2 = ExecuteCommand
            SHX13_2 = SHX7_2.Command
            SHX12_2(SHX13_2)
          end
        end
      end
    end
  end
  SHX2_2 = SHX4_1
  if SHX2_2 then
    SHX2_2 = SHX14_1
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2 + 0.05
    SHX5_2 = 0.28
    SHX6_2 = SHX16_1
    SHX7_2 = "PleaseWait"
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = false
    SHX8_2 = false
    SHX9_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
  SHX2_2 = SHX29_1
  SHX3_2 = {}
  SHX3_2.Alpha = 255
  SHX4_2 = {}
  SHX4_2.r = 0
  SHX4_2.g = 0
  SHX4_2.b = 0
  SHX3_2.Colour = SHX4_2
  SHX3_2.Shadow = true
  SHX4_2 = {}
  SHX5_2 = {}
  SHX5_2.x = 0.0345
  SHX5_2.y = 0.06
  SHX4_2.Circle = SHX5_2
  SHX5_2 = {}
  SHX5_2.x = 0.0234
  SHX5_2.y = 0.0425
  SHX4_2.Sprite = SHX5_2
  SHX3_2.Size = SHX4_2
  SHX3_2.Sprite = "info"
  SHX4_2 = SHX16_1
  SHX5_2 = "Info"
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2.Text = SHX4_2
  SHX3_2.x = SHX0_2
  SHX3_2.y = SHX1_2
  SHX4_2 = SHX35_1
  SHX3_2.Rotation = SHX4_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX3_2 = SHX37_1
    SHX4_2 = nil
    SHX5_2 = true
    SHX6_2 = true
    SHX7_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = SHX17_1
    SHX4_2 = SHX16_1
    SHX5_2 = "Information"
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX4_2(SHX5_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX3_2 = pairs
    SHX4_2 = SHX5_1
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX10_1
      SHX10_2 = SHX7_2
      SHX11_2 = " : "
      SHX12_2 = json
      SHX12_2 = SHX12_2.encode
      SHX13_2 = SHX8_2
      SHX12_2 = SHX12_2(SHX13_2)
      SHX10_2 = SHX10_2 .. SHX11_2 .. SHX12_2
      SHX9_2(SHX10_2)
    end
  end
end
SHX40_1 = _ENV
SHX41_1 = "CMG"
SHX40_1 = SHX40_1[SHX41_1]
SHX41_1 = "registerCommand"
SHX40_1 = SHX40_1[SHX41_1]
SHX41_1 = "+clothingmenu"
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX30_1
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX20_1
    SHX1_2 = "Open"
    SHX0_2(SHX1_2)
    SHX0_2 = SetCursorLocation
    SHX1_2 = SHX6_1.GUI
    SHX1_2 = SHX1_2.Position
    SHX1_2 = SHX1_2.x
    SHX2_2 = SHX6_1.GUI
    SHX2_2 = SHX2_2.Position
    SHX2_2 = SHX2_2.y
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = true
    SHX3_1 = SHX0_2
  end
end
SHX43_1 = false
SHX40_1(SHX41_1, SHX42_1, SHX43_1)
SHX40_1 = _ENV
SHX41_1 = "CMG"
SHX40_1 = SHX40_1[SHX41_1]
SHX41_1 = "registerCommand"
SHX40_1 = SHX40_1[SHX41_1]
SHX41_1 = "-clothingmenu"
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX3_1 = SHX0_2
end
SHX43_1 = false
SHX40_1(SHX41_1, SHX42_1, SHX43_1)
SHX40_1 = _ENV
SHX41_1 = "RegisterKeyMapping"
SHX40_1 = SHX40_1[SHX41_1]
SHX41_1 = "+clothingmenu"
SHX42_1 = "Clothing Menu"
SHX43_1 = "KEYBOARD"
SHX44_1 = "Y"
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX40_1 = {}
SHX41_1 = "dp_clothing"
SHX42_1 = "dp_wheel"
SHX40_1[1] = SHX41_1
SHX40_1[2] = SHX42_1
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX6_1.GUI
  SHX0_2 = SHX0_2.Toggle
  if SHX0_2 then
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = SHX6_1.GUI
    SHX2_2 = SHX2_2.Key
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = PlayerPedId
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX30_1
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = SHX20_1
        SHX2_2 = "Open"
        SHX1_2(SHX2_2)
        SHX1_2 = SetCursorLocation
        SHX2_2 = SHX6_1.GUI
        SHX2_2 = SHX2_2.Position
        SHX2_2 = SHX2_2.x
        SHX3_2 = SHX6_1.GUI
        SHX3_2 = SHX3_2.Position
        SHX3_2 = SHX3_2.y
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SHX3_1
        SHX1_2 = not SHX1_2
        SHX3_1 = SHX1_2
      end
    end
  end
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = SHX39_1
    SHX0_2()
  end
  SHX0_2 = SHX6_1.Debug
  if SHX0_2 then
    SHX0_2 = SHX23_1
    SHX0_2()
  end
end
SHX42_1 = _ENV
SHX43_1 = "Citizen"
SHX42_1 = SHX42_1[SHX43_1]
SHX43_1 = "CreateThread"
SHX42_1 = SHX42_1[SHX43_1]
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX40_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    while true do
      SHX6_2 = HasStreamedTextureDictLoaded
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Wait
      SHX7_2 = 100
      SHX6_2(SHX7_2)
      SHX6_2 = RequestStreamedTextureDict
      SHX7_2 = SHX5_2
      SHX8_2 = true
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
  SHX0_2 = SHX36_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX41_1
  SHX2_2 = "Clothing Radial Controls"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX42_1(SHX43_1)
