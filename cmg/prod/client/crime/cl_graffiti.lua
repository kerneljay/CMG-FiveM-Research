-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_graffiti"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_gang"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = CreateCam
SHX3_1 = "DEFAULT_SCRIPTED_CAMERA"
SHX4_1 = false
SHX2_1 = SHX2_1(SHX3_1, SHX4_1)
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = {}
SHX6_1 = 1
SHX7_1 = {}
SHX8_1 = 1
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = false
SHX12_1 = false
SHX13_1 = 0
SHX14_1 = 5000
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.handle
  if not SHX1_2 then
    SHX1_2 = RequestScaleformMovie
    SHX2_2 = SHX0_2.name
    SHX1_2 = SHX1_2(SHX2_2)
    SHX0_2.handle = SHX1_2
  end
  SHX1_2 = SHX0_2.loaded
  if SHX1_2 then
    SHX1_2 = SHX0_2.handle
    return SHX1_2
  else
    SHX1_2 = HasScaleformMovieLoaded
    SHX2_2 = SHX0_2.handle
    SHX1_2 = SHX1_2(SHX2_2)
    SHX0_2.loaded = SHX1_2
    SHX1_2 = nil
    return SHX1_2
  end
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX1_2 = SHX6_1
  SHX0_2 = SHX5_1
  SHX0_2 = SHX0_2[SHX1_2]
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX6_1
  SHX1_2 = SHX1_2 + 1
  SHX6_1 = SHX1_2
  SHX1_2 = SHX6_1
  SHX2_2 = SHX5_1
  SHX2_2 = #SHX2_2
  if SHX1_2 > SHX2_2 then
    SHX1_2 = 1
    SHX6_1 = SHX1_2
  end
  SHX1_2 = SHX15_1
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX1_2 = SHX8_1
  SHX0_2 = SHX7_1
  SHX0_2 = SHX0_2[SHX1_2]
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX8_1
  SHX1_2 = SHX1_2 + 1
  SHX8_1 = SHX1_2
  SHX1_2 = SHX8_1
  SHX2_2 = SHX7_1
  SHX2_2 = #SHX2_2
  if SHX1_2 > SHX2_2 then
    SHX1_2 = 1
    SHX8_1 = SHX1_2
  end
  SHX1_2 = SHX15_1
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX12_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = ipairs
  SHX1_2 = SHX5_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.handle
    if SHX6_2 then
      SHX6_2 = SetScaleformMovieAsNoLongerNeeded
      SHX7_2 = SHX5_2.handle
      SHX6_2(SHX7_2)
      SHX5_2.handle = nil
      SHX5_2.loaded = false
    end
  end
  SHX0_2 = ipairs
  SHX1_2 = SHX7_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.handle
    if SHX6_2 then
      SHX6_2 = SetScaleformMovieAsNoLongerNeeded
      SHX7_2 = SHX5_2.handle
      SHX6_2(SHX7_2)
      SHX5_2.handle = nil
      SHX5_2.loaded = false
    end
  end
  SHX0_2 = HasStreamedTextureDictLoaded
  SHX1_2 = SHX0_1.gangTextureDictionaryName
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SetStreamedTextureDictAsNoLongerNeeded
    SHX1_2 = SHX0_1.gangTextureDictionaryName
    SHX0_2(SHX1_2)
  end
  SHX0_2 = print
  SHX1_2 = "[CMG] Unloaded all graffiti"
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX12_1 = SHX0_2
end
function SHX19_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = SHX2_2 * 1000.0
  SHX3_2 = SHX1_2 + SHX3_2
  SHX4_2 = StartShapeTestRay
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = 1
  SHX12_2 = SHX0_2
  SHX13_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = GetShapeTestResultEx
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
  SHX10_2 = 1 == SHX6_2
  SHX11_2 = SHX7_2
  SHX12_2 = SHX8_2
  SHX13_2 = SHX9_2
  return SHX10_2, SHX11_2, SHX12_2, SHX13_2
end
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.abs
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX1_2.x
  SHX3_2 = SHX3_2 - SHX4_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.abs
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX1_2.y
  SHX4_2 = SHX4_2 - SHX5_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.abs
  SHX5_2 = SHX0_2.z
  SHX6_2 = SHX1_2.z
  SHX5_2 = SHX5_2 - SHX6_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = 0.01
  SHX5_2 = SHX2_2 < SHX5_2
  return SHX5_2
end
function SHX21_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX4_2 = SHX19_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX8_2 = SHX19_1
  SHX9_2 = SHX0_2
  SHX10_2 = vector3
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.2
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SHX2_2 + SHX10_2
  SHX11_2 = SHX3_2
  SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX11_2 = SHX19_1
  SHX12_2 = SHX0_2
  SHX13_2 = vector3
  SHX14_2 = 1.0
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX13_2 = SHX2_2 + SHX13_2
  SHX14_2 = SHX3_2
  SHX11_2, SHX12_2, SHX13_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX14_2 = SHX19_1
  SHX15_2 = SHX0_2
  SHX16_2 = vector3
  SHX17_2 = -1.0
  SHX18_2 = 0.0
  SHX19_2 = 0.0
  SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
  SHX16_2 = SHX2_2 + SHX16_2
  SHX17_2 = SHX3_2
  SHX14_2, SHX15_2, SHX16_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
  SHX17_2 = SHX19_1
  SHX18_2 = SHX0_2
  SHX19_2 = vector3
  SHX20_2 = 0.0
  SHX21_2 = 1.0
  SHX22_2 = 0.0
  SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
  SHX19_2 = SHX2_2 + SHX19_2
  SHX20_2 = SHX3_2
  SHX17_2, SHX18_2, SHX19_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
  SHX20_2 = SHX19_1
  SHX21_2 = SHX0_2
  SHX22_2 = vector3
  SHX23_2 = 0.0
  SHX24_2 = -1.0
  SHX25_2 = 0.0
  SHX22_2 = SHX22_2(SHX23_2, SHX24_2, SHX25_2)
  SHX22_2 = SHX2_2 + SHX22_2
  SHX23_2 = SHX3_2
  SHX20_2, SHX21_2, SHX22_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2)
  SHX23_2 = SHX10_2.z
  SHX24_2 = 0.9
  SHX23_2 = SHX23_2 > SHX24_2
  if not (not SHX23_2 and SHX4_2 and SHX8_2 and SHX11_2 and SHX14_2 and SHX17_2) or not SHX20_2 then
    SHX24_2 = false
    SHX25_2 = "Point the spray at a flat wall"
    return SHX24_2, SHX25_2
  end
  SHX24_2 = SHX0_1.disallowedMaterials
  SHX24_2 = SHX24_2[SHX7_2]
  if SHX24_2 then
    SHX24_2 = false
    SHX25_2 = "You cannot use the spray on this surface"
    return SHX24_2, SHX25_2
  end
  SHX24_2 = SHX1_2 - SHX5_2
  SHX24_2 = #SHX24_2
  SHX25_2 = SHX0_1.maxSurfaceDistance
  if SHX24_2 > SHX25_2 then
    SHX24_2 = false
    SHX25_2 = "The surface is too far away"
    return SHX24_2, SHX25_2
  end
  SHX24_2 = SHX20_1
  SHX25_2 = SHX6_2
  SHX26_2 = SHX10_2
  SHX24_2 = SHX24_2(SHX25_2, SHX26_2)
  if SHX24_2 then
    SHX24_2 = SHX20_1
    SHX25_2 = SHX6_2
    SHX26_2 = SHX13_2
    SHX24_2 = SHX24_2(SHX25_2, SHX26_2)
    if SHX24_2 then
      SHX24_2 = SHX20_1
      SHX25_2 = SHX6_2
      SHX26_2 = SHX16_2
      SHX24_2 = SHX24_2(SHX25_2, SHX26_2)
      if SHX24_2 then
        SHX24_2 = SHX20_1
        SHX25_2 = SHX6_2
        SHX26_2 = SHX19_2
        SHX24_2 = SHX24_2(SHX25_2, SHX26_2)
        if SHX24_2 then
          SHX24_2 = SHX20_1
          SHX25_2 = SHX6_2
          SHX26_2 = SHX22_2
          SHX24_2 = SHX24_2(SHX25_2, SHX26_2)
          if SHX24_2 then
            SHX24_2 = CMG
            SHX24_2 = SHX24_2.isOnPlane
            SHX25_2 = SHX5_2
            SHX26_2 = SHX9_2
            SHX27_2 = SHX12_2
            SHX28_2 = SHX15_2
            SHX29_2 = SHX18_2
            SHX30_2 = SHX21_2
            SHX24_2 = SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
            if SHX24_2 then
              goto SHX_LABEL_144
            end
          end
        end
      end
    end
  end
  SHX24_2 = false
  SHX25_2 = "The surface is not flat enough"
  return SHX24_2, SHX25_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_144:: outside nested blocks until all 'goto SHX_LABEL_144' can see it
  ::SHX_LABEL_144::
  SHX24_2 = 0.02
  SHX25_2 = -SHX24_2
  SHX25_2 = SHX6_2 * SHX25_2
  SHX25_2 = SHX5_2 + SHX25_2
  SHX26_2 = true
  SHX27_2 = ""
  SHX28_2 = SHX25_2
  SHX29_2 = SHX6_2
  SHX30_2 = SHX6_2
  return SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
end
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = 1
  SHX1_2 = 10
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = "PLAYER_NAME_"
    if SHX3_2 < 10 then
      SHX5_2 = SHX4_2
      SHX6_2 = "0"
      SHX5_2 = SHX5_2 .. SHX6_2
      SHX4_2 = SHX5_2
    end
    SHX5_2 = SHX4_2
    SHX6_2 = tostring
    SHX7_2 = SHX3_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX4_2 = SHX5_2
    SHX5_2 = table
    SHX5_2 = SHX5_2.insert
    SHX6_2 = SHX5_1
    SHX7_2 = {}
    SHX7_2.name = SHX4_2
    SHX7_2.handle = nil
    SHX7_2.loaded = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = table
    SHX5_2 = SHX5_2.insert
    SHX6_2 = SHX7_1
    SHX7_2 = {}
    SHX8_2 = string
    SHX8_2 = SHX8_2.format
    SHX9_2 = "graffiti_renderer_%s"
    SHX10_2 = SHX3_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX7_2.name = SHX8_2
    SHX7_2.handle = nil
    SHX7_2.loaded = false
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.fonts
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = RegisterFontFile
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
    SHX5_2 = RegisterFontId
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  end
end
SHX22_1(SHX23_1)
function SHX22_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX7_2 = true
  SHX12_1 = SHX7_2
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  SHX13_1 = SHX7_2
  if SHX6_2 then
    SHX7_2 = SHX17_1
    SHX7_2 = SHX7_2()
    if not SHX7_2 then
      return
    end
    SHX8_2 = HasStreamedTextureDictLoaded
    SHX9_2 = SHX0_1.gangTextureDictionaryName
    SHX8_2 = SHX8_2(SHX9_2)
    if not SHX8_2 then
      SHX8_2 = RequestStreamedTextureDict
      SHX9_2 = SHX0_1.gangTextureDictionaryName
      SHX10_2 = false
      SHX8_2(SHX9_2, SHX10_2)
      return
    end
    SHX8_2 = PushScaleformMovieFunction
    SHX9_2 = SHX7_2
    SHX10_2 = "SET_TEXTURE"
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = PushScaleformMovieMethodParameterString
    SHX9_2 = SHX0_1.gangTextureDictionaryName
    SHX8_2(SHX9_2)
    SHX8_2 = PushScaleformMovieMethodParameterString
    SHX9_2 = SHX6_2
    SHX8_2(SHX9_2)
    SHX8_2 = PushScaleformMovieFunctionParameterInt
    SHX9_2 = 0
    SHX8_2(SHX9_2)
    SHX8_2 = PushScaleformMovieFunctionParameterInt
    SHX9_2 = 0
    SHX8_2(SHX9_2)
    SHX8_2 = PushScaleformMovieFunctionParameterInt
    SHX9_2 = 1280
    SHX8_2(SHX9_2)
    SHX8_2 = PushScaleformMovieFunctionParameterInt
    SHX9_2 = 720
    SHX8_2(SHX9_2)
    SHX8_2 = PopScaleformMovieFunctionVoid
    SHX8_2()
    SHX8_2 = DrawScaleformMovie_3d
    SHX9_2 = SHX7_2
    SHX10_2 = SHX0_2.x
    SHX11_2 = SHX0_2.y
    SHX12_2 = SHX0_2.z
    SHX13_2 = 180.0
    SHX14_2 = SHX1_2.y
    SHX15_2 = SHX1_2.z
    SHX16_2 = 0.1
    SHX17_2 = 0.1
    SHX18_2 = 0.1
    SHX19_2 = 0.05
    SHX20_2 = 0.05
    SHX21_2 = 0.05
    SHX22_2 = 2
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  else
    SHX7_2 = SHX16_1
    SHX7_2 = SHX7_2()
    if not SHX7_2 then
      return
    end
    SHX8_2 = SHX0_1.colours
    SHX9_2 = SHX0_1.coloursList
    SHX9_2 = SHX9_2[SHX3_2]
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX0_1.fontDisplayNamesIndexToKey
    SHX9_2 = SHX9_2[SHX2_2]
    SHX10_2 = PushScaleformMovieFunction
    SHX11_2 = SHX7_2
    SHX12_2 = "SET_PLAYER_NAME"
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = PushScaleformMovieMethodParameterString
    SHX11_2 = "<FONT color='#"
    SHX12_2 = SHX8_2
    SHX13_2 = "' FACE='"
    SHX14_2 = SHX9_2
    SHX15_2 = "'>"
    SHX16_2 = SHX5_2
    SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2
    SHX10_2(SHX11_2)
    SHX10_2 = PopScaleformMovieFunctionVoid
    SHX10_2()
    SHX10_2 = SHX0_1.fonts
    SHX10_2 = SHX10_2[SHX9_2]
    SHX11_2 = SHX4_2 / 10.0
    SHX12_2 = SHX10_2.scaleMultiplier
    SHX11_2 = SHX11_2 * SHX12_2
    SHX12_2 = DrawScaleformMovie_3dNonAdditive
    SHX13_2 = SHX7_2
    SHX14_2 = SHX0_2.x
    SHX15_2 = SHX0_2.y
    SHX16_2 = SHX0_2.z
    SHX17_2 = SHX1_2.x
    SHX18_2 = SHX1_2.y
    SHX19_2 = SHX1_2.z
    SHX20_2 = 1.0
    SHX21_2 = 1.0
    SHX22_2 = 1.0
    SHX23_2 = SHX11_2
    SHX24_2 = SHX11_2
    SHX25_2 = 1.0
    SHX26_2 = 2
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  end
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = 1
  SHX6_1 = SHX0_2
  SHX0_2 = 1
  SHX8_1 = SHX0_2
  SHX0_2 = SHX10_1
  SHX0_2 = #SHX0_2
  if 0 == SHX0_2 then
    SHX0_2 = SHX12_1
    if SHX0_2 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX13_1
      SHX0_2 = SHX0_2 - SHX1_2
      SHX1_2 = SHX14_1
      if SHX0_2 > SHX1_2 then
        SHX0_2 = SHX18_1
        SHX0_2()
      end
    end
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientInventoryItem
  SHX1_2 = "sponge"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = nil
  SHX3_2 = pairs
  SHX4_2 = SHX10_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.position
    SHX9_2 = SHX9_2 - SHX1_2
    SHX9_2 = #SHX9_2
    if SHX9_2 < 25.0 then
      SHX10_2 = nil
      SHX11_2 = SHX8_2.gangId
      if SHX11_2 then
        SHX11_2 = CMG
        SHX11_2 = SHX11_2.getGangRecognisedTexture
        SHX12_2 = SHX8_2.gangId
        SHX11_2 = SHX11_2(SHX12_2)
        SHX10_2 = SHX11_2
      end
      SHX11_2 = SHX22_1
      SHX12_2 = SHX8_2.position
      SHX13_2 = SHX8_2.rotation
      SHX14_2 = SHX8_2.fontIndex
      SHX15_2 = SHX8_2.colourIndex
      SHX16_2 = SHX8_2.scale
      SHX17_2 = SHX8_2.content
      SHX18_2 = SHX10_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      if SHX0_2 and not SHX2_2 then
        SHX11_2 = SHX8_2.position
        SHX11_2 = SHX11_2 - SHX1_2
        SHX11_2 = #SHX11_2
        SHX12_2 = SHX0_1.maxSurfaceDistance
        if SHX11_2 < SHX12_2 then
          SHX2_2 = SHX8_2
        end
      end
    end
  end
  if SHX2_2 then
    SHX3_2 = SHX11_1
    if not SHX3_2 then
      SHX3_2 = SHX2_2.gangId
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getGangId
      SHX4_2 = SHX4_2()
      if SHX3_2 ~= SHX4_2 then
        SHX3_2 = drawNativeNotification
        SHX4_2 = "Press ~INPUT_CONTEXT~ to clean graffiti with a sponge."
        SHX3_2(SHX4_2)
        SHX3_2 = IsControlJustPressed
        SHX4_2 = 0
        SHX5_2 = 51
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX3_2 = TriggerEvent
          SHX4_2 = "10f402facb"
          SHX3_2(SHX4_2)
        end
    end
  end
  else
    if SHX2_2 then
      SHX3_2 = drawNativeNotification
      SHX4_2 = "This is your gang graffiti"
      SHX3_2(SHX4_2)
    else
    end
  end
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetGameplayCamCoord
  SHX3_2 = SHX3_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.rotationToDirection
  SHX5_2 = GetGameplayCamRot
  SHX6_2 = 0
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = SHX21_1
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX9_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  if not SHX5_2 then
    if SHX0_2 then
      SHX9_2 = drawNativeText
      SHX10_2 = SHX6_2
      SHX9_2(SHX10_2)
    end
    SHX9_2 = false
    return SHX9_2
  end
  if SHX7_2 and SHX8_2 then
    if not SHX0_2 then
      SHX9_2 = true
      return SHX9_2
    end
    SHX9_2 = SHX0_1.sprayForwardOffset
    SHX9_2 = SHX8_2 * SHX9_2
    SHX9_2 = SHX7_2 + SHX9_2
    SHX4_1.foundPosition = SHX9_2
    SHX9_2 = vector3
    SHX10_2 = SHX8_2.x
    SHX11_2 = SHX8_2.y
    SHX12_2 = SHX8_2.z
    SHX12_2 = SHX12_2 + 0.03
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX4_1.foundNormal = SHX9_2
    SHX9_2 = SHX4_1
    if SHX9_2 then
      SHX9_2 = SHX4_1.useGangTexture
      if SHX9_2 then
        SHX9_2 = SHX4_1.foundPosition
        SHX10_2 = vector3
        SHX11_2 = 0.0
        SHX12_2 = 0.0
        SHX13_2 = 0.6
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
        SHX9_2 = SHX9_2 + SHX10_2
        SHX4_1.foundPosition = SHX9_2
      end
    end
    SHX4_1.isValidPosition = true
    SHX9_2 = true
    return SHX9_2
  else
    SHX9_2 = SHX4_1
    if SHX9_2 then
      SHX4_1.isValidPosition = false
    end
  end
  SHX9_2 = false
  return SHX9_2
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX3_1
  if SHX1_2 then
    SHX1_2 = GetCamRot
    SHX2_2 = SHX2_1
    SHX3_2 = 2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX4_1.calculatedRotation = SHX1_2
    SHX1_2 = SetCamActive
    SHX2_2 = SHX2_1
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = false
    SHX3_1 = SHX1_2
  else
    SHX1_2 = SHX0_2.foundPosition
    SHX2_2 = SHX0_2.foundNormal
    SHX2_2 = SHX2_2 * 10.0
    SHX1_2 = SHX1_2 - SHX2_2
    SHX2_2 = SetCamCoord
    SHX3_2 = SHX2_1
    SHX4_2 = SHX0_2.foundPosition
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX0_2.foundPosition
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX0_2.foundPosition
    SHX6_2 = SHX6_2.z
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = PointCamAtCoord
    SHX3_2 = SHX2_1
    SHX4_2 = SHX1_2.x
    SHX5_2 = SHX1_2.y
    SHX6_2 = SHX1_2.z
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetCamActive
    SHX3_2 = SHX2_1
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX3_1 = SHX2_2
  end
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = assert
  SHX1_2 = SHX4_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
    SHX1_2 = "graffiti"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.deleteThreadOnTick
      SHX1_2 = SHX26_1
      SHX0_2(SHX1_2)
      SHX0_2 = nil
      SHX4_1 = SHX0_2
      return
    end
  end
  SHX0_2 = SHX24_1
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = SHX25_1
  SHX1_2 = SHX4_1
  SHX0_2(SHX1_2)
  SHX0_2 = nil
  SHX1_2 = SHX4_1.useGangTexture
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getGangRecognisedTexture
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX1_2
  end
  SHX1_2 = SHX22_1
  SHX2_2 = SHX4_1.foundPosition
  SHX3_2 = SHX4_1.calculatedRotation
  SHX4_2 = SHX4_1.fontIndex
  SHX5_2 = SHX4_1.colourIndex
  SHX6_2 = SHX0_1.sprayScales
  SHX7_2 = SHX4_1.scaleIndex
  SHX6_2 = SHX6_2[SHX7_2]
  SHX7_2 = SHX4_1.content
  SHX8_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX27_1 = CMG
SHX27_1 = SHX27_1.createThreadOnTick
SHX28_1 = SHX23_1
SHX29_1 = "Graffiti Render"
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = RegisterNetEvent
SHX28_1 = "2fa07a16b3"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX4_1
  if not SHX1_2 then
    SHX1_2 = SHX11_1
    if not SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = table
  SHX1_2 = SHX1_2.count
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getNearbyGraffitis
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if SHX1_2 > 6 then
    SHX1_2 = notify
    SHX2_2 = "~r~Too many graffiti's nearby, please clean them to spray more."
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = {}
  SHX2_2 = vector3
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2.foundPosition = SHX2_2
  SHX2_2 = vector3
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2.foundNormal = SHX2_2
  SHX2_2 = vector3
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2.calculatedRotation = SHX2_2
  SHX1_2.content = "GANG"
  SHX1_2.fontIndex = 1
  SHX1_2.colourIndex = 1
  SHX1_2.scaleIndex = 1
  SHX1_2.useGangTexture = SHX0_2
  SHX1_2.isValidPosition = false
  SHX4_1 = SHX1_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "graffiti"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createThreadOnTick
  SHX2_2 = SHX26_1
  SHX3_2 = "Graffiti Selector"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "72490db2b8"
  SHX1_2(SHX2_2)
end
SHX27_1(SHX28_1, SHX29_1)
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2.id
  SHX1_2 = SHX9_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.insert
    SHX3_2 = SHX10_1
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX0_2.id
  SHX1_2 = SHX9_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.find
    SHX3_2 = SHX10_1
    SHX4_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX3_2 = table
      SHX3_2 = SHX3_2.remove
      SHX4_2 = SHX10_1
      SHX5_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
end
SHX29_1 = RegisterNetEvent
SHX30_1 = "5ce26fe2dd"
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX9_1 = SHX0_2
  SHX1_2 = pairs
  SHX2_2 = SHX9_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.createArea
    SHX8_2 = string
    SHX8_2 = SHX8_2.format
    SHX9_2 = "graffiti_%s"
    SHX10_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = SHX6_2.position
    SHX10_2 = 50.0
    SHX11_2 = 50.0
    SHX12_2 = SHX27_1
    SHX13_2 = SHX28_1
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX15_2 = {}
    SHX15_2.id = SHX5_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
SHX29_1(SHX30_1, SHX31_1)
SHX29_1 = RegisterNetEvent
SHX30_1 = "1190721772"
function SHX31_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX9_1
  SHX2_2[SHX0_2] = SHX1_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createArea
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "graffiti_%s"
  SHX5_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX1_2.position
  SHX5_2 = 50.0
  SHX6_2 = 50.0
  SHX7_2 = SHX27_1
  SHX8_2 = SHX28_1
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX10_2 = {}
  SHX10_2.id = SHX0_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
end
SHX29_1(SHX30_1, SHX31_1)
SHX29_1 = RegisterNetEvent
SHX30_1 = "5b60cbfbdd"
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX9_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.find
  SHX3_2 = SHX10_1
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX3_2 = table
    SHX3_2 = SHX3_2.remove
    SHX4_2 = SHX10_1
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.removeArea
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "graffiti_%s"
  SHX6_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX9_1
  SHX3_2[SHX0_2] = nil
end
SHX29_1(SHX30_1, SHX31_1)
SHX29_1 = RMenu
SHX29_1 = SHX29_1.Add
SHX30_1 = "graffiti"
SHX31_1 = "mainmenu"
SHX32_1 = RageUI
SHX32_1 = SHX32_1.CreateMenu
SHX33_1 = ""
SHX34_1 = "Main Menu"
SHX35_1 = CMG
SHX35_1 = SHX35_1.getRageUIMenuWidth
SHX35_1 = SHX35_1()
SHX36_1 = CMG
SHX36_1 = SHX36_1.getRageUIMenuHeight
SHX36_1 = SHX36_1()
SHX37_1 = "cmg_graffiti"
SHX38_1 = "menu"
SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1 = SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1)
SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1)
SHX29_1 = RageUI
SHX29_1 = SHX29_1.CreateWhile
SHX30_1 = 1.0
SHX31_1 = RMenu
SHX32_1 = SHX31_1
SHX31_1 = SHX31_1.Get
SHX33_1 = "graffiti"
SHX34_1 = "mainmenu"
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1)
SHX32_1 = nil
function SHX33_1()
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
  SHX3_2 = "graffiti"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = assert
    SHX1_3 = SHX4_1
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getGangRecognisedTexture
    SHX0_3 = SHX0_3()
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Checkbox
      SHX1_3 = "Show Gang Texture"
      SHX2_3 = ""
      SHX3_3 = SHX4_1.useGangTexture
      SHX4_3 = {}
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        SHX4_1.useGangTexture = SHX3_4
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = SHX4_1.useGangTexture
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Text"
      SHX2_3 = "The text that should display on the graffiti."
      SHX3_3 = {}
      SHX4_3 = SHX4_1.content
      SHX3_3.RightLabel = SHX4_3
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.clientPrompt
          SHX4_4 = "Enter Text"
          SHX5_4 = ""
          function SHX6_4(SHX0_5)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5
            SHX1_5 = #SHX0_5
            SHX2_5 = SHX0_1.minTextLength
            if SHX1_5 >= SHX2_5 then
              SHX1_5 = #SHX0_5
              SHX2_5 = SHX0_1.maxTextLength
              if SHX1_5 <= SHX2_5 then
                SHX1_5 = SHX0_1.fontDisplayNamesIndexToKey
                SHX2_5 = SHX4_1.fontIndex
                SHX1_5 = SHX1_5[SHX2_5]
                SHX2_5 = SHX0_1.fonts
                SHX2_5 = SHX2_5[SHX1_5]
                SHX3_5 = SHX2_5.forceUppercase
                if SHX3_5 then
                  SHX3_5 = string
                  SHX3_5 = SHX3_5.upper
                  SHX4_5 = SHX0_5
                  SHX3_5 = SHX3_5(SHX4_5)
                  SHX0_5 = SHX3_5
                end
                SHX3_5 = string
                SHX3_5 = SHX3_5.gsub
                SHX4_5 = SHX0_5
                SHX5_5 = SHX2_5.allowedInverse
                SHX6_5 = ""
                SHX3_5 = SHX3_5(SHX4_5, SHX5_5, SHX6_5)
                SHX0_5 = SHX3_5
                SHX4_1.content = SHX0_5
            end
            else
              SHX1_5 = notify
              SHX2_5 = "~r~Text must be between 1 and 10 characters in length."
              SHX1_5(SHX2_5)
            end
          end
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Font"
      SHX2_3 = SHX0_1.fontDisplayNames
      SHX3_3 = SHX4_1.fontIndex
      SHX4_3 = ""
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        SHX4_1.fontIndex = SHX3_4
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Colour"
      SHX2_3 = SHX0_1.coloursList
      SHX3_3 = SHX4_1.colourIndex
      SHX4_3 = ""
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        SHX4_1.colourIndex = SHX3_4
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Scale"
      SHX2_3 = SHX0_1.sprayScalesText
      SHX3_3 = SHX4_1.scaleIndex
      SHX4_3 = ""
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        SHX4_1.scaleIndex = SHX3_4
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "~b~Place Graffiti"
    SHX2_3 = "Places the graffiti as is currently previewed."
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4
      if SHX2_4 then
        SHX3_4 = GetStreetNameFromHashKey
        SHX4_4 = GetStreetNameAtCoord
        SHX5_4 = SHX4_1.foundPosition
        SHX5_4 = SHX5_4.x
        SHX6_4 = SHX4_1.foundPosition
        SHX6_4 = SHX6_4.y
        SHX7_4 = SHX4_1.foundPosition
        SHX7_4 = SHX7_4.z
        SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4)
        SHX4_4 = CMG
        SHX4_4 = SHX4_4.getModelGender
        SHX4_4 = SHX4_4()
        SHX5_4 = TriggerServerEvent
        SHX6_4 = "e7f30e33d9"
        SHX7_4 = SHX4_1.foundPosition
        SHX8_4 = SHX4_1.calculatedRotation
        SHX9_4 = SHX4_1.content
        SHX10_4 = SHX4_1.fontIndex
        SHX11_4 = SHX4_1.colourIndex
        SHX12_4 = SHX4_1.scaleIndex
        SHX13_4 = SHX4_1.useGangTexture
        SHX14_4 = SHX3_4
        SHX15_4 = SHX4_4
        SHX5_4(SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
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
SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1)
function SHX29_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX8_2 = true
  SHX11_1 = SHX8_2
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.setCanAnim
  SHX9_2 = false
  SHX8_2(SHX9_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadAnimDict
  SHX9_2 = SHX0_2
  SHX8_2(SHX9_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadModel
  SHX9_2 = SHX2_2
  SHX8_2(SHX9_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.requestEntitySpawn
  SHX9_2 = SHX7_2
  SHX8_2(SHX9_2)
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerCoords
  SHX9_2 = SHX9_2()
  SHX10_2 = CreateObject
  SHX11_2 = SHX2_2
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = false
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = AttachEntityToEntity
  SHX12_2 = SHX10_2
  SHX13_2 = SHX8_2
  SHX14_2 = GetPedBoneIndex
  SHX15_2 = SHX8_2
  SHX16_2 = SHX3_2
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
  SHX15_2 = SHX4_2.x
  SHX16_2 = SHX4_2.y
  SHX17_2 = SHX4_2.z
  SHX18_2 = SHX5_2.x
  SHX19_2 = SHX5_2.y
  SHX20_2 = SHX5_2.z
  SHX21_2 = true
  SHX22_2 = true
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = 1
  SHX26_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX11_2 = GetGameTimer
  SHX11_2 = SHX11_2()
  while true do
    SHX12_2 = GetGameTimer
    SHX12_2 = SHX12_2()
    SHX12_2 = SHX12_2 - SHX11_2
    if SHX6_2 < SHX12_2 then
      break
    end
    SHX12_2 = IsEntityPlayingAnim
    SHX13_2 = SHX8_2
    SHX14_2 = SHX0_2
    SHX15_2 = SHX1_2
    SHX16_2 = 3
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    if not SHX12_2 then
      SHX12_2 = TaskPlayAnim
      SHX13_2 = SHX8_2
      SHX14_2 = SHX0_2
      SHX15_2 = SHX1_2
      SHX16_2 = 1.0
      SHX17_2 = 1.0
      SHX18_2 = -1
      SHX19_2 = 1
      SHX20_2 = 0
      SHX21_2 = false
      SHX22_2 = false
      SHX23_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    end
    SHX12_2 = Wait
    SHX13_2 = 0
    SHX12_2(SHX13_2)
  end
  SHX12_2 = SetModelAsNoLongerNeeded
  SHX13_2 = SHX2_2
  SHX12_2(SHX13_2)
  SHX12_2 = RemoveAnimDict
  SHX13_2 = SHX0_2
  SHX12_2(SHX13_2)
  SHX12_2 = StopAnimTask
  SHX13_2 = SHX8_2
  SHX14_2 = SHX0_2
  SHX15_2 = SHX1_2
  SHX16_2 = 1.0
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = DeleteEntity
  SHX13_2 = SHX10_2
  SHX12_2(SHX13_2)
  SHX12_2 = tCMG
  SHX12_2 = SHX12_2.setCanAnim
  SHX13_2 = true
  SHX12_2(SHX13_2)
  SHX12_2 = false
  SHX11_1 = SHX12_2
end
SHX30_1 = RegisterNetEvent
SHX31_1 = "e2e61e9a92"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = ""
    SHX2_3 = SHX0_1.sprayGraffitiTimeMsec
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX1_2(SHX2_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "graffiti"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = TaskGoStraightToCoord
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 1.0
  SHX7_2 = -1
  SHX8_2 = 0.0
  SHX9_2 = 0.1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = Wait
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  SHX1_2 = SHX29_1
  SHX2_2 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
  SHX3_2 = "weed_spraybottle_stand_spraying_01_inspector"
  SHX4_2 = -765160883
  SHX5_2 = 57005
  SHX6_2 = vector3
  SHX7_2 = 0.072
  SHX8_2 = 0.041
  SHX9_2 = -0.06
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = vector3
  SHX8_2 = 33.0
  SHX9_2 = 38.0
  SHX10_2 = 0.0
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX8_2 = SHX0_1.sprayGraffitiTimeMsec
  SHX9_2 = "graffiti_can"
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "03a0c4cf0f"
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = ""
    SHX2_3 = SHX0_1.removeGraffitiTimeMsec
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX0_2(SHX1_2)
  SHX0_2 = SHX29_1
  SHX1_2 = "timetable@maid@cleaning_window@idle_a"
  SHX2_2 = "idle_a"
  SHX3_2 = 921993182
  SHX4_2 = 28422
  SHX5_2 = vector3
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = vector3
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = SHX0_1.removeGraffitiTimeMsec
  SHX8_2 = "graffiti_rag"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "266f8c002a"
function SHX32_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -1 == SHX3_2 then
    return
  end
  SHX4_2 = GetPlayerPed
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    return
  end
  SHX5_2 = Wait
  SHX6_2 = 1000
  SHX5_2(SHX6_2)
  SHX5_2 = GetEntityForwardVector
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX5_2 * 0.5
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = vector3
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = -0.5
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = GetEntityHeading
  SHX8_2 = SHX4_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadPtfx
  SHX9_2 = "scr_recartheft"
  SHX8_2(SHX9_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.CreateThread
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
    SHX0_3 = 1700
    SHX1_3 = 1
    SHX2_3 = math
    SHX2_3 = SHX2_3.floor
    SHX3_3 = SHX0_1.sprayGraffitiTimeMsec
    SHX3_3 = SHX3_3 / SHX0_3
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = 1
    for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
      SHX5_3 = SHX4_3 % 3
      if 1 == SHX5_3 then
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.getPlayerCoords
        SHX5_3 = SHX5_3()
        SHX6_3 = GetEntityCoords
        SHX7_3 = SHX4_2
        SHX8_3 = true
        SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
        SHX5_3 = SHX5_3 - SHX6_3
        SHX5_3 = #SHX5_3
        if SHX5_3 < 10.0 then
          SHX5_3 = SendNUIMessage
          SHX6_3 = {}
          SHX6_3.transactionType = "spray"
          SHX5_3(SHX6_3)
        end
      end
      SHX5_3 = UseParticleFxAssetNextCall
      SHX6_3 = "scr_recartheft"
      SHX5_3(SHX6_3)
      SHX5_3 = 0
      SHX6_3 = 0
      SHX7_3 = 0
      SHX8_3 = SHX2_2
      if SHX8_3 then
        SHX8_3 = SHX0_1.coloursRGB
        SHX9_3 = SHX1_2
        SHX8_3 = SHX8_3[SHX9_3]
        SHX9_3 = SHX8_3.r
        SHX10_3 = SHX8_3.g
        SHX7_3 = SHX8_3.b
        SHX6_3 = SHX10_3
        SHX5_3 = SHX9_3
      else
        SHX8_3 = GetHudColour
        SHX9_3 = SHX1_1.colourLookup
        SHX10_3 = SHX1_2
        SHX9_3 = SHX9_3[SHX10_3]
        SHX9_3 = SHX9_3.hud
        SHX8_3, SHX9_3, SHX10_3 = SHX8_3(SHX9_3)
        SHX7_3 = SHX10_3
        SHX6_3 = SHX9_3
        SHX5_3 = SHX8_3
      end
      SHX8_3 = SetParticleFxNonLoopedColour
      SHX9_3 = SHX5_3 / 255
      SHX10_3 = SHX6_3 / 255
      SHX11_3 = SHX7_3 / 255
      SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      SHX8_3 = SetParticleFxNonLoopedAlpha
      SHX9_3 = 1.0
      SHX8_3(SHX9_3)
      SHX8_3 = StartParticleFxNonLoopedAtCoord
      SHX9_3 = "scr_wheel_burnout"
      SHX10_3 = SHX6_2.x
      SHX11_3 = SHX6_2.y
      SHX12_3 = SHX6_2.z
      SHX12_3 = SHX12_3 + 2.0
      SHX13_3 = 0.0
      SHX14_3 = 0.0
      SHX15_3 = SHX7_2
      SHX16_3 = 0.7
      SHX17_3 = false
      SHX18_3 = false
      SHX19_3 = false
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
      SHX8_3 = Wait
      SHX9_3 = SHX0_3
      SHX8_3(SHX9_3)
    end
    SHX1_3 = RemoveNamedPtfxAsset
    SHX2_3 = "scr_recartheft"
    SHX1_3(SHX2_3)
  end
  SHX8_2(SHX9_2)
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = CMG
function SHX31_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX10_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.position
    SHX9_2 = SHX9_2 - SHX0_2
    SHX9_2 = #SHX9_2
    if SHX1_2 > SHX9_2 then
      SHX9_2 = SHX8_2.id
      SHX2_2[SHX9_2] = SHX8_2
    end
  end
  return SHX2_2
end
SHX30_1.getNearbyGraffitisInRangeClient = SHX31_1
SHX30_1 = RegisterNetEvent
SHX31_1 = "10f402facb"
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX11_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX0_1.maxSurfaceDistance
  SHX1_2 = nil
  SHX2_2 = pairs
  SHX3_2 = SHX10_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.position
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.getPlayerCoords
    SHX9_2 = SHX9_2()
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = #SHX8_2
    if SHX0_2 > SHX8_2 then
      SHX1_2 = SHX7_2.id
      SHX0_2 = SHX8_2
    end
  end
  SHX2_2 = SHX10_1
  if not SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~No nearby graffiti to clean."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "5b60cbfbdd"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = CMG
SHX30_1 = SHX30_1.registerDevMenuItems
SHX31_1 = "Graffiti"
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Play Local Spray"
  SHX2_2 = ""
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = TriggerEvent
      SHX4_3 = "e2e61e9a92"
      SHX3_3(SHX4_3)
      SHX3_3 = TriggerEvent
      SHX4_3 = "266f8c002a"
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.getLocalPlayerSrc
      SHX5_3 = SHX5_3()
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = CMG
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  return SHX0_2
end
SHX30_1.getNearbyGraffitis = SHX31_1
SHX30_1 = AddEventHandler
SHX31_1 = "onResourceStop"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 ~= SHX1_2 then
    return
  end
  SHX1_2 = SHX18_1
  SHX1_2()
end
SHX30_1(SHX31_1, SHX32_1)
