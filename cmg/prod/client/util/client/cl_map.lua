-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = 250.0
SHX5_1 = CMG
function SHX6_1()
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
SHX5_1.getGlobalBlips = SHX6_1
SHX5_1 = tCMG
function SHX6_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX8_2 = AddBlipForCoord
  SHX9_2 = SHX0_2 + 0.001
  SHX10_2 = SHX1_2 + 0.001
  SHX11_2 = SHX2_2 + 0.001
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = SetBlipSprite
  SHX10_2 = SHX8_2
  SHX11_2 = SHX3_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetBlipAsShortRange
  SHX10_2 = SHX8_2
  SHX11_2 = true
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetBlipColour
  SHX10_2 = SHX8_2
  SHX11_2 = SHX4_2 or SHX11_2
  if not SHX4_2 then
    SHX11_2 = 0
  end
  SHX9_2(SHX10_2, SHX11_2)
  if 403 == SHX3_2 or 431 == SHX3_2 or 365 == SHX3_2 or 85 == SHX3_2 or 140 == SHX3_2 or 60 == SHX3_2 or 44 == SHX3_2 or 110 == SHX3_2 or 315 == SHX3_2 then
    SHX9_2 = SetBlipScale
    SHX10_2 = SHX8_2
    SHX11_2 = 1.1
    SHX9_2(SHX10_2, SHX11_2)
  elseif 50 == SHX3_2 then
    SHX9_2 = SetBlipScale
    SHX10_2 = SHX8_2
    SHX11_2 = 0.7
    SHX9_2(SHX10_2, SHX11_2)
  else
    SHX9_2 = SetBlipScale
    SHX10_2 = SHX8_2
    SHX11_2 = 0.8
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX9_2 = SetBlipScale
  SHX10_2 = SHX8_2
  SHX11_2 = SHX6_2 or SHX11_2
  if not SHX6_2 then
    SHX11_2 = 0.8
  end
  SHX9_2(SHX10_2, SHX11_2)
  if SHX7_2 then
    SHX9_2 = SetBlipDisplay
    SHX10_2 = SHX8_2
    SHX11_2 = 5
    SHX9_2(SHX10_2, SHX11_2)
  end
  if nil ~= SHX5_2 then
    SHX9_2 = SHX1_1
    SHX9_2 = SHX9_2[SHX5_2]
    if not SHX9_2 then
      SHX9_2 = AddTextEntryByHash
      SHX10_2 = GetHashKey
      SHX11_2 = SHX5_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = SHX5_2
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SHX1_1
      SHX9_2[SHX5_2] = true
    end
    SHX9_2 = BeginTextCommandSetBlipName
    SHX10_2 = SHX5_2
    SHX9_2(SHX10_2)
    SHX9_2 = EndTextCommandSetBlipName
    SHX10_2 = SHX8_2
    SHX9_2(SHX10_2)
  end
  SHX9_2 = table
  SHX9_2 = SHX9_2.insert
  SHX10_2 = SHX0_1
  SHX11_2 = SHX8_2
  SHX9_2(SHX10_2, SHX11_2)
  return SHX8_2
end
SHX5_1.addBlip = SHX6_1
SHX5_1 = tCMG
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = RemoveBlip
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX5_1.removeBlip = SHX6_1
SHX5_1 = {}
SHX6_1 = tCMG
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.removeNamedBlip
  SHX9_2 = SHX0_2
  SHX8_2(SHX9_2)
  SHX8_2 = SHX5_1
  SHX9_2 = tCMG
  SHX9_2 = SHX9_2.addBlip
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX16_2 = SHX7_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX8_2[SHX0_2] = SHX9_2
  SHX8_2 = SHX5_1
  SHX8_2 = SHX8_2[SHX0_2]
  return SHX8_2
end
SHX6_1.setNamedBlip = SHX7_1
SHX6_1 = tCMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX5_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeBlip
    SHX2_2 = SHX5_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX1_2(SHX2_2)
    SHX1_2 = SHX5_1
    SHX1_2[SHX0_2] = nil
  end
end
SHX6_1.removeNamedBlip = SHX7_1
SHX6_1 = tCMG
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SetNewWaypoint
  SHX3_2 = SHX0_2 + 1.0E-4
  SHX4_2 = SHX1_2 + 1.0E-4
  SHX2_2(SHX3_2, SHX4_2)
end
SHX6_1.setGPS = SHX7_1
SHX6_1 = tCMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetBlipRoute
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX6_1.setBlipRoute = SHX7_1
SHX6_1 = {}
SHX7_1 = Tools
SHX7_1 = SHX7_1.newIDGenerator
SHX7_1 = SHX7_1()
SHX8_1 = {}
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = tCMG
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX20_2 = {}
  SHX21_2 = vector3
  SHX22_2 = SHX0_2
  SHX23_2 = SHX1_2
  SHX24_2 = SHX2_2
  SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
  SHX20_2.position = SHX21_2
  SHX20_2.sx = SHX3_2
  SHX20_2.sy = SHX4_2
  SHX20_2.sz = SHX5_2
  SHX20_2.r = SHX6_2
  SHX20_2.g = SHX7_2
  SHX20_2.b = SHX8_2
  SHX20_2.a = SHX9_2
  SHX20_2.visible_distance = SHX10_2
  SHX20_2.mtype = SHX11_2
  SHX20_2.faceCamera = SHX12_2
  SHX20_2.bopUpAndDown = SHX13_2
  SHX20_2.rotate = SHX14_2
  SHX20_2.textureDict = SHX15_2
  SHX20_2.textureName = SHX16_2
  SHX20_2.xRot = SHX17_2
  SHX20_2.yRot = SHX18_2
  SHX20_2.zRot = SHX19_2
  SHX21_2 = SHX20_2.sx
  if nil == SHX21_2 then
    SHX20_2.sx = 2.0
  end
  SHX21_2 = SHX20_2.sy
  if nil == SHX21_2 then
    SHX20_2.sy = 2.0
  end
  SHX21_2 = SHX20_2.sz
  if nil == SHX21_2 then
    SHX20_2.sz = 0.7
  end
  SHX21_2 = SHX20_2.r
  if nil == SHX21_2 then
    SHX20_2.r = 0
  end
  SHX21_2 = SHX20_2.g
  if nil == SHX21_2 then
    SHX20_2.g = 155
  end
  SHX21_2 = SHX20_2.b
  if nil == SHX21_2 then
    SHX20_2.b = 255
  end
  SHX21_2 = SHX20_2.a
  if nil == SHX21_2 then
    SHX20_2.a = 200
  end
  SHX21_2 = SHX20_2.sx
  SHX21_2 = SHX21_2 + 0.001
  SHX20_2.sx = SHX21_2
  SHX21_2 = SHX20_2.sy
  SHX21_2 = SHX21_2 + 0.001
  SHX20_2.sy = SHX21_2
  SHX21_2 = SHX20_2.sz
  SHX21_2 = SHX21_2 + 0.001
  SHX20_2.sz = SHX21_2
  SHX21_2 = SHX20_2.visible_distance
  if nil == SHX21_2 then
    SHX20_2.visible_distance = 150
  end
  SHX21_2 = SHX7_1
  SHX22_2 = SHX21_2
  SHX21_2 = SHX21_2.gen
  SHX21_2 = SHX21_2(SHX22_2)
  SHX22_2 = SHX6_1
  SHX22_2[SHX21_2] = SHX20_2
  SHX22_2 = SHX11_1
  SHX22_2[SHX21_2] = SHX20_2
  return SHX21_2
end
SHX12_1.addMarker = SHX13_1
SHX12_1 = tCMG
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX3_2 - 0.2
  SHX5_2 = {}
  SHX5_2.propName = SHX0_2
  SHX6_2 = vector3
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX5_2.position = SHX6_2
  SHX5_2.visible_distance = SHX4_2
  SHX5_2.mtype = "prop_marker"
  SHX6_2 = SHX7_1
  SHX7_2 = SHX6_2
  SHX6_2 = SHX6_2.gen
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX6_1
  SHX7_2[SHX6_2] = SHX5_2
  SHX7_2 = SHX11_1
  SHX7_2[SHX6_2] = SHX5_2
  return SHX6_2
end
SHX12_1.addPropMarker = SHX13_1
SHX12_1 = tCMG
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX6_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = SHX6_1
    SHX1_2[SHX0_2] = nil
    SHX1_2 = SHX7_1
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.free
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX11_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX11_1
    SHX1_2[SHX0_2] = nil
  end
  SHX1_2 = SHX10_1
  SHX1_2[SHX0_2] = nil
end
SHX12_1.removeMarker = SHX13_1
SHX12_1 = tCMG
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.removeNamedPropMarker
  SHX7_2 = SHX0_2
  SHX6_2(SHX7_2)
  SHX6_2 = SHX9_1
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.addPropMarker
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX5_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2[SHX0_2] = SHX7_2
  SHX6_2 = SHX9_1
  SHX6_2 = SHX6_2[SHX0_2]
  return SHX6_2
end
SHX12_1.setNamedPropMarker = SHX13_1
SHX12_1 = tCMG
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX9_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeMarker
    SHX2_2 = SHX9_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX1_2(SHX2_2)
    SHX1_2 = SHX9_1
    SHX1_2[SHX0_2] = nil
  end
end
SHX12_1.removeNamedPropMarker = SHX13_1
SHX12_1 = tCMG
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2
  SHX21_2 = tCMG
  SHX21_2 = SHX21_2.removeNamedMarker
  SHX22_2 = SHX0_2
  SHX21_2(SHX22_2)
  SHX21_2 = SHX8_1
  SHX22_2 = tCMG
  SHX22_2 = SHX22_2.addMarker
  SHX23_2 = SHX1_2
  SHX24_2 = SHX2_2
  SHX25_2 = SHX3_2
  SHX26_2 = SHX4_2
  SHX27_2 = SHX5_2
  SHX28_2 = SHX6_2
  SHX29_2 = SHX7_2
  SHX30_2 = SHX8_2
  SHX31_2 = SHX9_2
  SHX32_2 = SHX10_2
  SHX33_2 = SHX11_2
  SHX34_2 = SHX12_2
  SHX35_2 = SHX13_2
  SHX36_2 = SHX14_2
  SHX37_2 = SHX15_2
  SHX38_2 = SHX16_2
  SHX39_2 = SHX17_2
  SHX40_2 = SHX18_2
  SHX41_2 = SHX19_2
  SHX42_2 = SHX20_2
  SHX22_2 = SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2)
  SHX21_2[SHX0_2] = SHX22_2
  SHX21_2 = SHX8_1
  SHX21_2 = SHX21_2[SHX0_2]
  return SHX21_2
end
SHX12_1.setNamedMarker = SHX13_1
SHX12_1 = tCMG
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX8_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeMarker
    SHX2_2 = SHX8_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX1_2(SHX2_2)
    SHX1_2 = SHX8_1
    SHX1_2[SHX0_2] = nil
  end
end
SHX12_1.removeNamedMarker = SHX13_1
SHX12_1 = {}
SHX13_1 = {}
SHX14_1 = tCMG
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX6_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX1_2 or SHX3_2
  if not SHX1_2 then
    SHX3_2 = nil
  end
  SHX2_2.hidden = SHX3_2
  if SHX1_2 then
    SHX3_2 = SHX13_1
    SHX3_2 = SHX3_2[SHX0_2]
    if SHX3_2 then
      SHX3_2 = DeleteObject
      SHX4_2 = SHX13_1
      SHX4_2 = SHX4_2[SHX0_2]
      SHX4_2 = SHX4_2.object
      SHX3_2(SHX4_2)
      SHX3_2 = SHX13_1
      SHX3_2[SHX0_2] = nil
    end
  end
end
SHX14_1.setMarkerHidden = SHX15_1
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX0_2 = pairs
  SHX1_2 = SHX10_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.hidden
    if SHX6_2 then
      SHX6_2 = SHX13_1
      SHX6_2 = SHX6_2[SHX4_2]
      if SHX6_2 then
        SHX6_2 = DeleteObject
        SHX7_2 = SHX13_1
        SHX7_2 = SHX7_2[SHX4_2]
        SHX7_2 = SHX7_2.object
        SHX6_2(SHX7_2)
        SHX6_2 = SHX13_1
        SHX6_2[SHX4_2] = nil
      end
    else
      SHX6_2 = SHX12_1
      SHX6_2 = SHX6_2[SHX4_2]
      if SHX6_2 then
        SHX6_2 = SHX12_1
        SHX6_2 = SHX6_2[SHX4_2]
        SHX7_2 = SHX5_2.visible_distance
        if SHX6_2 <= SHX7_2 then
          SHX6_2 = SHX5_2.mtype
          if nil == SHX6_2 then
            SHX5_2.mtype = 1
          end
          SHX6_2 = type
          SHX7_2 = SHX5_2.mtype
          SHX6_2 = SHX6_2(SHX7_2)
          if "string" == SHX6_2 then
            SHX6_2 = SHX13_1
            SHX6_2 = SHX6_2[SHX4_2]
            if nil == SHX6_2 then
              SHX6_2 = CMG
              SHX6_2 = SHX6_2.loadModel
              SHX7_2 = SHX5_2.propName
              SHX6_2 = SHX6_2(SHX7_2)
              if SHX6_2 then
                SHX7_2 = CreateObject
                SHX8_2 = SHX6_2
                SHX9_2 = SHX5_2.position
                SHX9_2 = SHX9_2.x
                SHX10_2 = SHX5_2.position
                SHX10_2 = SHX10_2.y
                SHX11_2 = SHX5_2.position
                SHX11_2 = SHX11_2.z
                SHX12_2 = false
                SHX13_2 = false
                SHX14_2 = false
                SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
                SHX8_2 = SHX13_1
                SHX9_2 = {}
                SHX9_2.object = SHX7_2
                SHX8_2[SHX4_2] = SHX9_2
              end
            end
          else
            SHX6_2 = DrawMarker
            SHX7_2 = SHX5_2.mtype
            SHX8_2 = SHX5_2.position
            SHX8_2 = SHX8_2.x
            SHX9_2 = SHX5_2.position
            SHX9_2 = SHX9_2.y
            SHX10_2 = SHX5_2.position
            SHX10_2 = SHX10_2.z
            SHX11_2 = 0.0
            SHX12_2 = 0.0
            SHX13_2 = 0.0
            SHX14_2 = SHX5_2.xRot
            SHX15_2 = SHX5_2.yRot
            SHX16_2 = SHX5_2.zRot
            SHX17_2 = SHX5_2.sx
            SHX18_2 = SHX5_2.sy
            SHX19_2 = SHX5_2.sz
            SHX20_2 = SHX5_2.r
            SHX21_2 = SHX5_2.g
            SHX22_2 = SHX5_2.b
            SHX23_2 = SHX5_2.a
            SHX24_2 = SHX5_2.bopUpAndDown
            SHX25_2 = SHX5_2.faceCamera
            SHX26_2 = 2
            SHX27_2 = SHX5_2.rotate
            SHX28_2 = SHX5_2.textureDict
            SHX29_2 = SHX5_2.textureName
            SHX30_2 = false
            SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
          end
        end
      end
    end
  end
  SHX0_2 = pairs
  SHX1_2 = SHX13_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX10_1
    SHX6_2 = SHX6_2[SHX4_2]
    if nil == SHX6_2 then
      SHX6_2 = DeleteObject
      SHX7_2 = SHX5_2.object
      SHX6_2(SHX7_2)
      SHX6_2 = SHX13_1
      SHX6_2[SHX4_2] = nil
    end
  end
end
SHX15_1 = AddEventHandler
SHX16_1 = "onResourceStop"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX13_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2.object
      SHX7_2(SHX8_2)
      SHX7_2 = SHX13_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = CMG
SHX15_1 = SHX15_1.createThreadOnTick
SHX16_1 = SHX14_1
SHX17_1 = "Util Markers"
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = Citizen
SHX15_1 = SHX15_1.CreateThread
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = {}
    SHX12_1 = SHX1_2
    SHX1_2 = pairs
    SHX2_2 = SHX11_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX12_1
      SHX8_2 = SHX6_2.position
      SHX8_2 = SHX8_2 - SHX0_2
      SHX8_2 = #SHX8_2
      SHX7_2[SHX5_2] = SHX8_2
      SHX7_2 = SHX12_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX8_2 = SHX6_2.visible_distance
      if SHX7_2 <= SHX8_2 then
        SHX7_2 = SHX6_2.textureDict
        if SHX7_2 then
          SHX7_2 = HasStreamedTextureDictLoaded
          SHX8_2 = SHX6_2.textureDict
          SHX7_2 = SHX7_2(SHX8_2)
          if not SHX7_2 then
            goto SHX_LABEL_33
          end
        end
        SHX7_2 = SHX10_1
        SHX7_2[SHX5_2] = SHX6_2
      else
        -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
        ::SHX_LABEL_33::
        SHX7_2 = SHX10_1
        SHX7_2[SHX5_2] = nil
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 250
    SHX1_2(SHX2_2)
  end
end
SHX15_1(SHX16_1)
SHX15_1 = Citizen
SHX15_1 = SHX15_1.CreateThread
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getNearbyMarkers
    SHX0_2 = SHX0_2()
    SHX11_1 = SHX0_2
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 10000
    SHX0_2(SHX1_2)
  end
end
SHX15_1(SHX16_1)
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getNearbyMarkers
  SHX0_2 = SHX0_2()
  SHX11_1 = SHX0_2
end
SHX15_1.refreshNearbyMarkers = SHX16_1
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = {}
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = 0
  SHX3_2 = pairs
  SHX4_2 = SHX6_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.position
    SHX9_2 = SHX9_2 - SHX1_2
    SHX9_2 = #SHX9_2
    SHX10_2 = math
    SHX10_2 = SHX10_2.max
    SHX11_2 = 250.0
    SHX12_2 = SHX8_2.visible_distance
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if SHX9_2 <= SHX10_2 then
      SHX0_2[SHX7_2] = SHX8_2
    end
    SHX2_2 = SHX2_2 + 1
    SHX9_2 = SHX2_2 % 25
    if 0 == SHX9_2 then
      SHX9_2 = Wait
      SHX10_2 = 0
      SHX9_2(SHX10_2)
    end
  end
  return SHX0_2
end
SHX15_1.getNearbyMarkers = SHX16_1
SHX15_1 = {}
SHX16_1 = {}
SHX17_1 = false
SHX18_1 = 0
SHX19_1 = CMG
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = {}
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = 0
  SHX4_2 = SHX18_1
  SHX4_2 = SHX4_2 + 1
  SHX18_1 = SHX4_2
  SHX4_2 = SHX18_1
  SHX5_2 = pairs
  SHX6_2 = SHX15_1
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.position
    SHX11_2 = SHX11_2 - SHX2_2
    SHX11_2 = #SHX11_2
    SHX12_2 = SHX4_1
    if not (SHX11_2 <= SHX12_2) then
      SHX11_2 = SHX10_2.radius
      SHX12_2 = 250
      if not (SHX11_2 > SHX12_2) then
        goto SHX_LABEL_28
      end
    end
    SHX1_2[SHX9_2] = SHX10_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
    ::SHX_LABEL_28::
    SHX3_2 = SHX3_2 + 1
    SHX11_2 = SHX17_1
    if not SHX11_2 and not SHX0_2 then
      SHX11_2 = SHX3_2 % 25
      if 0 == SHX11_2 then
        SHX11_2 = Wait
        SHX12_2 = 0
        SHX11_2(SHX12_2)
      end
    end
  end
  SHX5_2 = SHX18_1
  if SHX5_2 ~= SHX4_2 then
    SHX5_2 = SHX16_1
    return SHX5_2
  end
  return SHX1_2
end
SHX19_1.getNearbyAreas = SHX20_1
SHX19_1 = CMG
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getNearbyAreas
  SHX1_2 = true
  SHX0_2 = SHX0_2(SHX1_2)
  SHX16_1 = SHX0_2
end
SHX19_1.forceNearbyAreasReload = SHX20_1
SHX19_1 = tCMG
function SHX20_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX6_2 = {}
  SHX7_2 = vector3
  SHX8_2 = SHX1_2 + 0.001
  SHX9_2 = SHX2_2 + 0.001
  SHX10_2 = SHX3_2 + 0.001
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX6_2.position = SHX7_2
  SHX6_2.radius = SHX4_2
  SHX6_2.height = SHX5_2
  SHX7_2 = SHX6_2.height
  if nil == SHX7_2 then
    SHX6_2.height = 6
  end
  SHX7_2 = SHX15_1
  SHX7_2[SHX0_2] = SHX6_2
end
SHX19_1.setArea = SHX20_1
SHX19_1 = CMG
function SHX20_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2
  SHX8_2 = {}
  SHX8_2.position = SHX1_2
  SHX9_2 = SHX2_2 + 0.0
  SHX8_2.radius = SHX9_2
  SHX9_2 = SHX3_2 + 0.0
  SHX8_2.height = SHX9_2
  SHX8_2.enterArea = SHX4_2
  SHX8_2.leaveArea = SHX5_2
  SHX8_2.onTickArea = SHX6_2
  SHX8_2.metaData = SHX7_2
  SHX9_2 = SHX8_2.height
  if nil == SHX9_2 then
    SHX8_2.height = 6
  end
  SHX9_2 = SHX15_1
  SHX9_2[SHX0_2] = SHX8_2
  SHX9_2 = SHX16_1
  SHX9_2[SHX0_2] = SHX8_2
  return SHX0_2
end
SHX19_1.createArea = SHX20_1
SHX19_1 = CMG
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX15_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = SHX1_2.player_in
  SHX2_2 = true == SHX2_2
  return SHX2_2
end
SHX19_1.isPlayerInClientArea = SHX20_1
SHX19_1 = tCMG
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX15_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX15_1
    SHX1_2[SHX0_2] = nil
  end
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX16_1
    SHX1_2[SHX0_2] = nil
  end
end
SHX19_1.removeArea = SHX20_1
SHX19_1 = CMG
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX15_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2 = SHX15_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.metaData = SHX1_2
  end
end
SHX19_1.updateAreaMetaData = SHX20_1
SHX19_1 = CMG
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX15_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = false
  return SHX1_2
end
SHX19_1.doesAreaExist = SHX20_1
SHX19_1 = CMG
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX15_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2 = SHX15_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.metaData = SHX1_2
  end
end
SHX19_1.setAreaMetaData = SHX20_1
SHX19_1 = CMG
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX15_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX15_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2.metaData
    return SHX1_2
  else
    SHX1_2 = {}
    return SHX1_2
  end
end
SHX19_1.getAreaMetaData = SHX20_1
SHX19_1 = CMG
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX17_1 = SHX0_2
end
SHX19_1.useIncreasedAreaRefreshRate = SHX20_1
SHX19_1 = CMG
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX16_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = string
    SHX7_2 = SHX7_2.find
    SHX8_2 = SHX5_2
    SHX9_2 = SHX0_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if nil ~= SHX7_2 then
      SHX7_2 = SHX6_2.player_in
      if SHX7_2 then
        SHX7_2 = true
        return SHX7_2
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX19_1.isInAnyAreaOfType = SHX20_1
SHX19_1 = Citizen
SHX19_1 = SHX19_1.CreateThread
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = {}
    SHX2_2 = pairs
    SHX3_2 = SHX16_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = #SHX1_2
      SHX7_2 = SHX7_2 + 1
      SHX1_2[SHX7_2] = SHX6_2
    end
    SHX2_2 = ipairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX16_1
      SHX8_2 = SHX8_2[SHX7_2]
      if SHX8_2 then
        SHX9_2 = SHX8_2.position
        SHX9_2 = SHX9_2 - SHX0_2
        SHX9_2 = #SHX9_2
        SHX10_2 = SHX8_2.radius
        SHX10_2 = SHX9_2 <= SHX10_2
        SHX8_2.distance = SHX9_2
        SHX11_2 = SHX8_2.player_in
        if SHX11_2 and not SHX10_2 then
          SHX11_2 = SHX8_2.leaveArea
          if SHX11_2 then
            SHX11_2 = SHX8_2.metaData
            if nil == SHX11_2 then
              SHX11_2 = {}
              SHX8_2.metaData = SHX11_2
            end
            SHX11_2 = SHX8_2.leaveArea
            SHX12_2 = SHX8_2.metaData
            SHX11_2(SHX12_2)
          else
            SHX11_2 = CMGclient
            SHX11_2 = SHX11_2.leaveArea
            SHX12_2 = {}
            SHX13_2 = SHX7_2
            SHX12_2[1] = SHX13_2
            SHX11_2(SHX12_2)
          end
        else
          SHX11_2 = SHX8_2.player_in
          if not SHX11_2 and SHX10_2 then
            SHX11_2 = SHX8_2.enterArea
            if SHX11_2 then
              SHX11_2 = SHX8_2.metaData
              if nil == SHX11_2 then
                SHX11_2 = {}
                SHX8_2.metaData = SHX11_2
              end
              SHX11_2 = SHX8_2.enterArea
              SHX12_2 = SHX8_2.metaData
              SHX11_2(SHX12_2)
            else
              SHX11_2 = CMGclient
              SHX11_2 = SHX11_2.enterArea
              SHX12_2 = {}
              SHX13_2 = SHX7_2
              SHX12_2[1] = SHX13_2
              SHX11_2(SHX12_2)
            end
          end
        end
        SHX8_2.player_in = SHX10_2
      end
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX19_1(SHX20_1)
SHX19_1 = Citizen
SHX19_1 = SHX19_1.CreateThread
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = {}
    SHX1_2 = pairs
    SHX2_2 = SHX16_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2 = #SHX0_2
      SHX6_2 = SHX6_2 + 1
      SHX0_2[SHX6_2] = SHX5_2
    end
    SHX1_2 = ipairs
    SHX2_2 = SHX0_2
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX16_1
      SHX7_2 = SHX7_2[SHX6_2]
      if SHX7_2 then
        SHX8_2 = SHX7_2.player_in
        if SHX8_2 then
          SHX8_2 = SHX7_2.onTickArea
          if SHX8_2 then
            SHX8_2 = SHX7_2.metaData
            if nil == SHX8_2 then
              SHX8_2 = {}
              SHX7_2.metaData = SHX8_2
            end
            SHX8_2 = SHX7_2.metaData
            SHX9_2 = SHX7_2.distance
            SHX8_2.distance = SHX9_2
            SHX8_2 = SHX7_2.onTickArea
            SHX9_2 = SHX7_2.metaData
            SHX8_2(SHX9_2)
          end
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX19_1(SHX20_1)
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SetBlipDisplay
      SHX9_2 = SHX7_2
      SHX10_2 = 0
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = SHX3_1
  SHX2_2[SHX0_2] = nil
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SetBlipDisplay
      SHX9_2 = SHX7_2
      SHX10_2 = 2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = SHX3_1
  SHX2_2[SHX0_2] = true
end
SHX21_1 = Citizen
SHX21_1 = SHX21_1.CreateThread
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isEmergencyService
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = SHX3_1.Civilian
      if SHX0_2 then
        SHX0_2 = SHX19_1
        SHX1_2 = "Civilian"
        SHX0_2(SHX1_2)
      end
    else
      SHX0_2 = SHX3_1.Civilian
      if not SHX0_2 then
        SHX0_2 = SHX20_1
        SHX1_2 = "Civilian"
        SHX0_2(SHX1_2)
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientGroup
    SHX1_2 = "Vigilante"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SHX3_1.Vigilante
      if not SHX0_2 then
        SHX0_2 = SHX20_1
        SHX1_2 = "Vigilante"
        SHX0_2(SHX1_2)
      end
    else
      SHX0_2 = SHX3_1.Vigilante
      if SHX0_2 then
        SHX0_2 = SHX19_1
        SHX1_2 = "Vigilante"
        SHX0_2(SHX1_2)
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getNearbyAreas
    SHX1_2 = false
    SHX0_2 = SHX0_2(SHX1_2)
    SHX16_1 = SHX0_2
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = SHX17_1
    if SHX1_2 then
      SHX1_2 = 1000
      if SHX1_2 then
        goto SHX_LABEL_52
      end
    end
    SHX1_2 = 5000
    -- [FIX IF ERROR] Move ::SHX_LABEL_52:: outside nested blocks until all 'goto SHX_LABEL_52' can see it
    ::SHX_LABEL_52::
    SHX0_2(SHX1_2)
  end
end
SHX21_1(SHX22_1)
SHX21_1 = nil
SHX22_1 = 617
SHX23_1 = CMG
SHX23_1 = SHX23_1.registerCommand
SHX24_1 = "nextblip"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX22_1
  SHX0_2 = SHX0_2 + 1
  SHX22_1 = SHX0_2
  SHX0_2 = SHX21_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeBlip
    SHX1_2 = SHX21_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = print
  SHX1_2 = "creating blip"
  SHX2_2 = SHX22_1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addBlip
  SHX1_2 = 1103.9739990234
  SHX2_2 = 211.95138549805
  SHX3_2 = -49.440101623535
  SHX4_2 = SHX22_1
  SHX5_2 = 0
  SHX6_2 = "Chips Cashier"
  SHX7_2 = 0.8
  SHX8_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX21_1 = SHX0_2
end
SHX26_1 = false
SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX23_1 = CMG
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX2_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    SHX2_2 = SHX2_1
    SHX3_2 = {}
    SHX2_2[SHX0_2] = SHX3_2
  end
  SHX2_2 = SHX2_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = table
  SHX3_2 = SHX3_2.insert
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX3_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX3_2 = SetBlipDisplay
    SHX4_2 = SHX1_2
    SHX5_2 = 2
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = SetBlipDisplay
    SHX4_2 = SHX1_2
    SHX5_2 = 0
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX23_1.addBlipContext = SHX24_1
SHX23_1 = Wait
SHX24_1 = 0
SHX23_1(SHX24_1)
SHX23_1 = CMG
SHX23_1 = SHX23_1.registerDevMenuState
SHX24_1 = "Areas"
SHX25_1 = {}
SHX25_1.enabled = false
SHX25_1.showLargeAreas = false
SHX25_1.showMarkerInside = false
SHX25_1.expandNearbyCheck = false
SHX23_1 = SHX23_1(SHX24_1, SHX25_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.registerDevMenuItems
SHX25_1 = "Areas"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Visual Enabled"
  SHX2_2 = "Whether to display markers and text for areas."
  SHX3_2 = SHX23_1.enabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX23_1.enabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~Configurable Options"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Show Large Areas"
  SHX2_2 = "Whether to show areas with a radius greater than 250 units."
  SHX3_2 = SHX23_1.showLargeAreas
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX23_1.showLargeAreas = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Show Marker Whilst Inside"
  SHX2_2 = "Whether to continue drawing the debug sphere when inside of it."
  SHX3_2 = SHX23_1.showMarkerInside
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX23_1.showMarkerInside = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Expand Nearby Check"
  SHX2_2 = "Whether to double the nearby distance check."
  SHX3_2 = SHX23_1.expandNearbyCheck
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX23_1.expandNearbyCheck = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX24_1(SHX25_1, SHX26_1)
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2
  SHX0_2 = SHX23_1.expandNearbyCheck
  if SHX0_2 then
    SHX0_2 = 500.0
    if SHX0_2 then
      goto SHX_LABEL_8
    end
  end
  SHX0_2 = 250.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX4_1 = SHX0_2
  SHX0_2 = SHX23_1.enabled
  if not SHX0_2 then
    return
  end
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = table
  SHX2_2 = SHX2_2.copy
  SHX3_2 = SHX16_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2.id = SHX5_2
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.position
    SHX8_2 = SHX1_2 - SHX8_2
    SHX8_2 = #SHX8_2
    SHX7_2.distance = SHX8_2
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX0_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.distance
    SHX3_3 = SHX1_3.distance
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = 0
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.position
    SHX10_2 = SHX8_2.distance
    SHX11_2 = SHX8_2.radius
    SHX10_2 = SHX10_2 < SHX11_2
    if not SHX10_2 then
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.isSphereOnScreen
      SHX12_2 = SHX9_2
      SHX13_2 = SHX8_2.radius
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      if not SHX11_2 then
        goto SHX_LABEL_162
      end
    end
    SHX11_2 = SHX23_1.showLargeAreas
    if not SHX11_2 then
      SHX11_2 = SHX8_2.radius
      SHX12_2 = 250.0
      if not (SHX11_2 < SHX12_2) then
        goto SHX_LABEL_162
      end
    end
    if SHX10_2 then
      SHX11_2 = SHX23_1.showMarkerInside
      if not SHX11_2 then
        goto SHX_LABEL_116
      end
    end
    SHX11_2 = DrawMarker
    SHX12_2 = 28
    SHX13_2 = SHX9_2.x
    SHX14_2 = SHX9_2.y
    SHX15_2 = SHX9_2.z
    SHX16_2 = 0.0
    SHX17_2 = 0.0
    SHX18_2 = 0.0
    SHX19_2 = 0.0
    SHX20_2 = 0.0
    SHX21_2 = 0.0
    SHX22_2 = SHX8_2.radius
    SHX23_2 = SHX8_2.radius
    SHX24_2 = SHX8_2.radius
    if SHX10_2 then
      SHX25_2 = 255
      if SHX25_2 then
        goto SHX_LABEL_104
      end
    end
    SHX25_2 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_104:: outside nested blocks until all 'goto SHX_LABEL_104' can see it
    ::SHX_LABEL_104::
    SHX26_2 = 255
    SHX27_2 = 0
    SHX28_2 = 125
    SHX29_2 = false
    SHX30_2 = false
    SHX31_2 = 2
    SHX32_2 = false
    SHX33_2 = nil
    SHX34_2 = nil
    SHX35_2 = false
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
    SHX2_2 = SHX2_2 + 1
    -- [FIX IF ERROR] Move ::SHX_LABEL_116:: outside nested blocks until all 'goto SHX_LABEL_116' can see it
    ::SHX_LABEL_116::
    SHX11_2 = SHX8_2.distance
    SHX12_2 = math
    SHX12_2 = SHX12_2.min
    SHX13_2 = 50.0
    SHX14_2 = SHX8_2.radius
    SHX14_2 = SHX14_2 * 5.0
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    if SHX11_2 < SHX12_2 or SHX10_2 then
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.DrawText3D
      SHX12_2 = SHX9_2
      SHX13_2 = string
      SHX13_2 = SHX13_2.format
      SHX14_2 = [[
Name: %s
Radius: %s
Distance: %s]]
      SHX15_2 = SHX8_2.id
      SHX16_2 = math
      SHX16_2 = SHX16_2.round
      SHX17_2 = SHX8_2.radius
      SHX18_2 = 2
      SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
      SHX17_2 = math
      SHX17_2 = SHX17_2.round
      SHX18_2 = SHX8_2.distance
      SHX19_2 = 1
      SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX17_2(SHX18_2, SHX19_2)
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
      SHX14_2 = 0.3
      SHX15_2 = nil
      SHX16_2 = true
      if SHX10_2 then
        SHX17_2 = {}
        SHX18_2 = 255
        SHX19_2 = 255
        SHX20_2 = 0
        SHX21_2 = 255
        SHX17_2[1] = SHX18_2
        SHX17_2[2] = SHX19_2
        SHX17_2[3] = SHX20_2
        SHX17_2[4] = SHX21_2
        if SHX17_2 then
          goto SHX_LABEL_161
        end
      end
      SHX17_2 = nil
      -- [FIX IF ERROR] Move ::SHX_LABEL_161:: outside nested blocks until all 'goto SHX_LABEL_161' can see it
      ::SHX_LABEL_161::
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_162:: outside nested blocks until all 'goto SHX_LABEL_162' can see it
    ::SHX_LABEL_162::
    if SHX2_2 >= 100 then
      break
    end
  end
end
SHX25_1 = CMG
SHX25_1 = SHX25_1.registerDevMenuThread
SHX26_1 = "Areas"
SHX27_1 = SHX24_1
SHX25_1(SHX26_1, SHX27_1)
