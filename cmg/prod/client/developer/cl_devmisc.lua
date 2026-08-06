-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/weapons"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.registerDevMenuState
SHX2_1 = "Dev Misc"
SHX3_1 = {}
SHX3_1.selectingCrosshairPosition = false
SHX3_1.selectCrosshairDistance = 0.1
SHX1_1 = SHX1_1(SHX2_1, SHX3_1)
SHX2_1 = {}
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = 0
SHX6_1 = {}
SHX7_1 = 0
SHX8_1 = 30000
SHX9_1 = CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getClientUserId
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.isDeveloper
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = SHX6_1
        SHX1_2 = #SHX1_2
        if SHX1_2 > 0 then
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX7_1
          if SHX1_2 < SHX2_2 then
            SHX1_2 = ipairs
            SHX2_2 = SHX6_1
            SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
            for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
              SHX7_2 = SHX6_2.coords
              SHX8_2 = DrawMarker
              SHX9_2 = 28
              SHX10_2 = SHX7_2.x
              SHX11_2 = SHX7_2.y
              SHX12_2 = SHX7_2.z
              SHX13_2 = 0.0
              SHX14_2 = 0.0
              SHX15_2 = 0.0
              SHX16_2 = 0.0
              SHX17_2 = 0.0
              SHX18_2 = 0.0
              SHX19_2 = 0.35
              SHX20_2 = 0.35
              SHX21_2 = 0.5
              SHX22_2 = 255
              SHX23_2 = 200
              SHX24_2 = 0
              SHX25_2 = 180
              SHX26_2 = false
              SHX27_2 = false
              SHX28_2 = 2
              SHX29_2 = false
              SHX30_2 = nil
              SHX31_2 = nil
              SHX32_2 = false
              SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
              SHX8_2 = CMG
              SHX8_2 = SHX8_2.DrawText3D
              SHX9_2 = vector3
              SHX10_2 = SHX7_2.x
              SHX11_2 = SHX7_2.y
              SHX12_2 = SHX7_2.z
              SHX12_2 = SHX12_2 + 0.6
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
              SHX10_2 = SHX6_2.label
              SHX11_2 = 0.35
              SHX12_2 = 4
              SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
            end
        end
        else
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX7_1
          if SHX1_2 >= SHX2_2 then
            SHX1_2 = SHX6_1
            SHX1_2 = #SHX1_2
            if SHX1_2 > 0 then
              SHX1_2 = {}
              SHX6_1 = SHX1_2
            end
          end
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX9_1(SHX10_1)
SHX9_1 = CMG
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX0_2 then
    SHX0_2 = 15.0
  end
  if SHX1_2 then
    SHX6_1 = SHX1_2
  else
    SHX4_2 = {}
    SHX5_2 = ipairs
    SHX6_2 = GetGamePool
    SHX7_2 = "CObject"
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX6_2(SHX7_2)
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = DoesEntityExist
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      if not SHX11_2 then
      else
        SHX11_2 = GetEntityCoords
        SHX12_2 = SHX10_2
        SHX11_2 = SHX11_2(SHX12_2)
        SHX12_2 = SHX3_2 - SHX11_2
        SHX12_2 = #SHX12_2
        if SHX0_2 >= SHX12_2 then
          SHX13_2 = #SHX4_2
          SHX13_2 = SHX13_2 + 1
          SHX14_2 = {}
          SHX14_2.coords = SHX11_2
          SHX15_2 = GetEntityHeading
          SHX16_2 = SHX10_2
          SHX15_2 = SHX15_2(SHX16_2)
          SHX14_2.heading = SHX15_2
          SHX14_2.dist = SHX12_2
          SHX15_2 = GetEntityModel
          SHX16_2 = SHX10_2
          SHX15_2 = SHX15_2(SHX16_2)
          SHX14_2.hash = SHX15_2
          SHX4_2[SHX13_2] = SHX14_2
        end
      end
    end
    SHX5_2 = table
    SHX5_2 = SHX5_2.sort
    SHX6_2 = SHX4_2
    function SHX7_2(SHX0_3, SHX1_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_3, SHX3_3
      SHX2_3 = SHX0_3.dist
      SHX3_3 = SHX1_3.dist
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    end
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = {}
    SHX6_1 = SHX5_2
    SHX5_2 = ipairs
    SHX6_2 = SHX4_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = SHX10_2.coords
      SHX12_2 = SHX6_1
      SHX12_2 = #SHX12_2
      SHX13_2 = SHX12_2 + 1
      SHX12_2 = SHX6_1
      SHX14_2 = {}
      SHX14_2.coords = SHX11_2
      SHX15_2 = string
      SHX15_2 = SHX15_2.format
      SHX16_2 = "#%d hash %d (%.1fm)"
      SHX17_2 = SHX9_2
      SHX18_2 = SHX10_2.hash
      SHX19_2 = SHX10_2.dist
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX14_2.label = SHX15_2
      SHX12_2[SHX13_2] = SHX14_2
    end
    SHX5_2 = print
    SHX6_2 = "[devmenu] Nearby objects within "
    SHX7_2 = SHX0_2
    SHX8_2 = "m (check F8 for list):"
    SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
    SHX5_2(SHX6_2)
    SHX5_2 = ipairs
    SHX6_2 = SHX4_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = SHX10_2.coords
      SHX12_2 = print
      SHX13_2 = string
      SHX13_2 = SHX13_2.format
      SHX14_2 = "  %d: hash %d  coords vector3(%.4f, %.4f, %.4f)  heading %.2f  (%.1fm)"
      SHX15_2 = SHX9_2
      SHX16_2 = SHX10_2.hash
      SHX17_2 = SHX11_2.x
      SHX18_2 = SHX11_2.y
      SHX19_2 = SHX11_2.z
      SHX20_2 = SHX10_2.heading
      SHX21_2 = SHX10_2.dist
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    end
    SHX5_2 = #SHX4_2
    if 0 == SHX5_2 then
      SHX5_2 = print
      SHX6_2 = "[devmenu] No objects in range."
      SHX5_2(SHX6_2)
    else
      SHX5_2 = print
      SHX6_2 = "[devmenu] Markers shown in-world for "
      SHX7_2 = SHX8_1
      SHX7_2 = SHX7_2 / 1000
      SHX8_2 = "s."
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX5_2(SHX6_2)
    end
  end
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX8_1
  SHX4_2 = SHX4_2 + SHX5_2
  SHX7_1 = SHX4_2
end
SHX9_1.showNearbyObjectMarkers = SHX10_1
SHX9_1 = 0.25
SHX10_1 = 0.05
SHX11_1 = 5.0
SHX12_1 = 1.0
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = IsModelInCdimage
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = IsModelValid
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = RequestModel
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = HasModelLoaded
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 5000
    if SHX2_2 > SHX3_2 then
      SHX2_2 = false
      return SHX2_2
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = true
  return SHX2_2
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = GetGameplayCamRot
  SHX1_2 = 2
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = math
  SHX1_2 = SHX1_2.rad
  SHX2_2 = SHX0_2.x
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.rad
  SHX3_2 = SHX0_2.z
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.cos
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = vector3
  SHX5_2 = math
  SHX5_2 = SHX5_2.sin
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = -SHX5_2
  SHX5_2 = SHX5_2 * SHX3_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.cos
  SHX7_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = SHX6_2 * SHX3_2
  SHX7_2 = math
  SHX7_2 = SHX7_2.sin
  SHX8_2 = SHX1_2
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = vector3
  SHX6_2 = SHX4_2.y
  SHX6_2 = -SHX6_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = 0.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = SHX4_2
  SHX7_2 = SHX5_2
  return SHX6_2, SHX7_2
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = 0.78
  SHX2_2 = 0.985
  SHX3_2 = ipairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SetTextFont
    SHX10_2 = 0
    SHX9_2(SHX10_2)
    SHX9_2 = SetTextScale
    SHX10_2 = 0.3
    SHX11_2 = 0.3
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = SetTextColour
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 200
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX9_2 = SetTextOutline
    SHX9_2()
    SHX9_2 = SetTextRightJustify
    SHX10_2 = true
    SHX9_2(SHX10_2)
    SHX9_2 = SetTextWrap
    SHX10_2 = 0.0
    SHX11_2 = SHX2_2
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = BeginTextCommandDisplayText
    SHX10_2 = "STRING"
    SHX9_2(SHX10_2)
    SHX9_2 = AddTextComponentSubstringPlayerName
    SHX10_2 = SHX8_2
    SHX9_2(SHX10_2)
    SHX9_2 = EndTextCommandDisplayText
    SHX10_2 = SHX2_2
    SHX11_2 = SHX1_2
    SHX9_2(SHX10_2, SHX11_2)
    SHX1_2 = SHX1_2 + 0.02
  end
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = GetGameplayCamCoord
  SHX1_2 = SHX1_2()
  SHX2_2 = select
  SHX3_2 = 1
  SHX4_2 = SHX14_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX4_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX3_2 = SHX2_2 * SHX0_2
  SHX3_2 = SHX1_2 + SHX3_2
  SHX4_2 = StartShapeTestRay
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = -1
  SHX12_2 = -1
  SHX13_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = GetShapeTestResult
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
  if 1 == SHX6_2 then
    return SHX7_2
  else
    return SHX3_2
  end
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CreateObjectNoOffset
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = SetEntityAlpha
  SHX4_2 = SHX2_2
  SHX5_2 = 120
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetEntityCollision
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetEntityCompletelyDisableCollision
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetEntityHasGravity
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityDynamic
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetCanClimbOnEntity
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  return SHX2_2
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = GetEntityCoords
  SHX1_2 = SHX4_1
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX4_1
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CreateObjectNoOffset
  SHX3_2 = SHX5_1
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = SetEntityHeading
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = PlaceObjectOnGroundProperly
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ResetEntityAlpha
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = SetEntityCollision
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Placed object: model=%d at vector3(%.3f, %.3f, %.3f), heading=%.2f"
  SHX5_2 = SHX5_1
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX9_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = print
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = TriggerEvent
  SHX5_2 = "chat:addMessage"
  SHX6_2 = {}
  SHX7_2 = {}
  SHX8_2 = "placer"
  SHX9_2 = SHX3_2
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX6_2.args = SHX7_2
  SHX4_2(SHX5_2, SHX6_2)
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX4_1
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = DeleteObject
    SHX1_2 = SHX4_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = SHX5_1
  SHX0_2(SHX1_2)
  SHX0_2 = nil
  SHX4_1 = SHX0_2
  SHX0_2 = false
  SHX3_1 = SHX0_2
  SHX0_2 = 0
  SHX5_1 = SHX0_2
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX0_2 = SHX0_2 % 360.0
  if SHX0_2 < 0.0 then
    SHX0_2 = SHX0_2 + 360.0
  end
  return SHX0_2
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableAllControlActions
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 1
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 2
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 21
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 172
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 173
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 174
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 175
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 10
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 11
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 45
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 74
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 44
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 38
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 47
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 29
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 23
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = EnableControlAction
  SHX1_2 = 0
  SHX2_2 = 177
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX22_1 = CMG
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX3_1
  if SHX1_2 then
    SHX1_2 = TriggerEvent
    SHX2_2 = "chat:addMessage"
    SHX3_2 = {}
    SHX4_2 = {}
    SHX5_2 = "placer"
    SHX6_2 = "^3Already placing. Press ^7Backspace ^3to cancel or ^7F ^3to confirm."
    SHX4_2[1] = SHX5_2
    SHX4_2[2] = SHX6_2
    SHX3_2.args = SHX4_2
    SHX1_2(SHX2_2, SHX3_2)
    return
  end
  SHX1_2 = SHX0_2
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = tonumber
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX5_1 = SHX2_2
  else
    SHX2_2 = GetHashKey
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX5_1 = SHX2_2
  end
  SHX2_2 = SHX13_1
  SHX3_2 = SHX5_1
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = TriggerEvent
    SHX3_2 = "chat:addMessage"
    SHX4_2 = {}
    SHX5_2 = {}
    SHX6_2 = "placer"
    SHX7_2 = "^1Failed to load model."
    SHX5_2[1] = SHX6_2
    SHX5_2[2] = SHX7_2
    SHX4_2.args = SHX5_2
    SHX2_2(SHX3_2, SHX4_2)
    return
  end
  SHX2_2 = SHX16_1
  SHX3_2 = 5.0
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX17_1
  SHX4_2 = SHX2_2
  SHX5_2 = SHX5_1
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_1 = SHX3_2
  SHX3_2 = true
  SHX3_1 = SHX3_2
  SHX3_2 = CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3
    SHX0_3 = SHX9_1
    SHX1_3 = 90
    SHX2_3 = 140
    SHX3_3 = {}
    function SHX4_3(SHX0_4, SHX1_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_4, SHX3_4, SHX4_4, SHX5_4
      SHX2_4 = GetGameTimer
      SHX2_4 = SHX2_4()
      if SHX1_4 then
        SHX3_4 = SHX2_3
        if SHX3_4 then
          goto SHX_LABEL_9
        end
      end
      SHX3_4 = SHX1_3
      -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
      ::SHX_LABEL_9::
      SHX4_4 = SHX3_3
      SHX4_4 = SHX4_4[SHX0_4]
      if SHX4_4 then
        SHX4_4 = SHX3_3
        SHX4_4 = SHX4_4[SHX0_4]
        if not (SHX2_4 >= SHX4_4) then
          goto SHX_LABEL_23
        end
      end
      SHX4_4 = SHX3_3
      SHX5_4 = SHX2_4 + SHX3_4
      SHX4_4[SHX0_4] = SHX5_4
      SHX4_4 = true
      return SHX4_4
      -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
      ::SHX_LABEL_23::
      SHX4_4 = false
      return SHX4_4
    end
    while true do
      SHX5_3 = SHX3_1
      if not SHX5_3 then
        break
      end
      SHX5_3 = Wait
      SHX6_3 = 0
      SHX5_3(SHX6_3)
      SHX5_3 = SHX21_1
      SHX5_3()
      SHX5_3 = IsControlPressed
      SHX6_3 = 0
      SHX7_3 = 21
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
      if SHX5_3 then
        SHX6_3 = SHX10_1
        if SHX6_3 then
          goto SHX_LABEL_25
        end
      end
      SHX6_3 = SHX0_3
      -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
      ::SHX_LABEL_25::
      if SHX5_3 then
        SHX7_3 = SHX12_1
        if SHX7_3 then
          goto SHX_LABEL_31
        end
      end
      SHX7_3 = SHX11_1
      -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
      ::SHX_LABEL_31::
      SHX8_3 = SHX4_1
      if SHX8_3 then
        SHX8_3 = DoesEntityExist
        SHX9_3 = SHX4_1
        SHX8_3 = SHX8_3(SHX9_3)
        if SHX8_3 then
          goto SHX_LABEL_42
        end
      end
      SHX8_3 = SHX19_1
      SHX8_3()
      do break end
      -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
      ::SHX_LABEL_42::
      SHX8_3 = GetEntityCoords
      SHX9_3 = SHX4_1
      SHX10_3 = true
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3)
      SHX9_3 = GetEntityHeading
      SHX10_3 = SHX4_1
      SHX9_3 = SHX9_3(SHX10_3)
      SHX10_3 = SHX14_1
      SHX10_3, SHX11_3 = SHX10_3()
      SHX12_3 = IsControlPressed
      SHX13_3 = 0
      SHX14_3 = 172
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX4_3
        SHX13_3 = "mf"
        SHX14_3 = SHX5_3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        if SHX12_3 then
          SHX12_3 = SHX10_3 * SHX6_3
          SHX8_3 = SHX8_3 + SHX12_3
        end
      end
      SHX12_3 = IsControlPressed
      SHX13_3 = 0
      SHX14_3 = 173
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX4_3
        SHX13_3 = "mb"
        SHX14_3 = SHX5_3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        if SHX12_3 then
          SHX12_3 = SHX10_3 * SHX6_3
          SHX8_3 = SHX8_3 - SHX12_3
        end
      end
      SHX12_3 = IsControlPressed
      SHX13_3 = 0
      SHX14_3 = 174
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX4_3
        SHX13_3 = "ml"
        SHX14_3 = SHX5_3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        if SHX12_3 then
          SHX12_3 = SHX11_3 * SHX6_3
          SHX8_3 = SHX8_3 - SHX12_3
        end
      end
      SHX12_3 = IsControlPressed
      SHX13_3 = 0
      SHX14_3 = 175
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX4_3
        SHX13_3 = "mr"
        SHX14_3 = SHX5_3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        if SHX12_3 then
          SHX12_3 = SHX11_3 * SHX6_3
          SHX8_3 = SHX8_3 + SHX12_3
        end
      end
      SHX12_3 = IsControlPressed
      SHX13_3 = 0
      SHX14_3 = 10
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX4_3
        SHX13_3 = "mz+"
        SHX14_3 = SHX5_3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        if SHX12_3 then
          SHX12_3 = vector3
          SHX13_3 = 0.0
          SHX14_3 = 0.0
          SHX15_3 = SHX6_3
          SHX12_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
          SHX8_3 = SHX8_3 + SHX12_3
        end
      end
      SHX12_3 = IsControlPressed
      SHX13_3 = 0
      SHX14_3 = 11
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX4_3
        SHX13_3 = "mz-"
        SHX14_3 = SHX5_3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        if SHX12_3 then
          SHX12_3 = vector3
          SHX13_3 = 0.0
          SHX14_3 = 0.0
          SHX15_3 = SHX6_3
          SHX12_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
          SHX8_3 = SHX8_3 - SHX12_3
        end
      end
      SHX12_3 = IsControlJustPressed
      SHX13_3 = 0
      SHX14_3 = 45
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX16_1
        SHX13_3 = 10.0
        SHX12_3 = SHX12_3(SHX13_3)
        SHX8_3 = SHX12_3
      end
      SHX12_3 = IsControlJustPressed
      SHX13_3 = 0
      SHX14_3 = 74
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SetEntityCoordsNoOffset
        SHX13_3 = SHX4_1
        SHX14_3 = SHX8_3.x
        SHX15_3 = SHX8_3.y
        SHX16_3 = SHX8_3.z
        SHX17_3 = true
        SHX18_3 = true
        SHX19_3 = true
        SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX12_3 = PlaceObjectOnGroundProperly
        SHX13_3 = SHX4_1
        SHX12_3(SHX13_3)
        SHX12_3 = GetEntityCoords
        SHX13_3 = SHX4_1
        SHX14_3 = true
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        SHX8_3 = SHX12_3
      end
      SHX12_3 = IsControlPressed
      SHX13_3 = 0
      SHX14_3 = 44
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX4_3
        SHX13_3 = "rq"
        SHX14_3 = SHX5_3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        if SHX12_3 then
          SHX9_3 = SHX9_3 - SHX7_3
        end
      end
      SHX12_3 = IsControlPressed
      SHX13_3 = 0
      SHX14_3 = 38
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX4_3
        SHX13_3 = "re"
        SHX14_3 = SHX5_3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        if SHX12_3 then
          SHX9_3 = SHX9_3 + SHX7_3
        end
      end
      SHX12_3 = SHX20_1
      SHX13_3 = SHX9_3
      SHX12_3 = SHX12_3(SHX13_3)
      SHX9_3 = SHX12_3
      SHX12_3 = IsControlJustPressed
      SHX13_3 = 0
      SHX14_3 = 47
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = math
        SHX12_3 = SHX12_3.max
        SHX13_3 = 0.01
        SHX14_3 = SHX0_3 / 2.0
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        SHX0_3 = SHX12_3
        SHX12_3 = TriggerEvent
        SHX13_3 = "chat:addMessage"
        SHX14_3 = {}
        SHX15_3 = {}
        SHX16_3 = "placer"
        SHX17_3 = "Grid step: %.3f"
        SHX18_3 = SHX17_3
        SHX17_3 = SHX17_3.format
        SHX19_3 = SHX0_3
        SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3 = SHX17_3(SHX18_3, SHX19_3)
        SHX15_3[1] = SHX16_3
        SHX15_3[2] = SHX17_3
        SHX15_3[3] = SHX18_3
        SHX15_3[4] = SHX19_3
        SHX15_3[5] = SHX20_3
        SHX15_3[6] = SHX21_3
        SHX15_3[7] = SHX22_3
        SHX15_3[8] = SHX23_3
        SHX15_3[9] = SHX24_3
        SHX15_3[10] = SHX25_3
        SHX15_3[11] = SHX26_3
        SHX15_3[12] = SHX27_3
        SHX15_3[13] = SHX28_3
        SHX15_3[14] = SHX29_3
        SHX15_3[15] = SHX30_3
        SHX15_3[16] = SHX31_3
        SHX15_3[17] = SHX32_3
        SHX15_3[18] = SHX33_3
        SHX15_3[19] = SHX34_3
        SHX15_3[20] = SHX35_3
        SHX15_3[21] = SHX36_3
        SHX14_3.args = SHX15_3
        SHX12_3(SHX13_3, SHX14_3)
      end
      SHX12_3 = IsControlJustPressed
      SHX13_3 = 0
      SHX14_3 = 29
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = math
        SHX12_3 = SHX12_3.min
        SHX13_3 = 10.0
        SHX14_3 = SHX0_3 * 2.0
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
        SHX0_3 = SHX12_3
        SHX12_3 = TriggerEvent
        SHX13_3 = "chat:addMessage"
        SHX14_3 = {}
        SHX15_3 = {}
        SHX16_3 = "placer"
        SHX17_3 = "Grid step: %.3f"
        SHX18_3 = SHX17_3
        SHX17_3 = SHX17_3.format
        SHX19_3 = SHX0_3
        SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3 = SHX17_3(SHX18_3, SHX19_3)
        SHX15_3[1] = SHX16_3
        SHX15_3[2] = SHX17_3
        SHX15_3[3] = SHX18_3
        SHX15_3[4] = SHX19_3
        SHX15_3[5] = SHX20_3
        SHX15_3[6] = SHX21_3
        SHX15_3[7] = SHX22_3
        SHX15_3[8] = SHX23_3
        SHX15_3[9] = SHX24_3
        SHX15_3[10] = SHX25_3
        SHX15_3[11] = SHX26_3
        SHX15_3[12] = SHX27_3
        SHX15_3[13] = SHX28_3
        SHX15_3[14] = SHX29_3
        SHX15_3[15] = SHX30_3
        SHX15_3[16] = SHX31_3
        SHX15_3[17] = SHX32_3
        SHX15_3[18] = SHX33_3
        SHX15_3[19] = SHX34_3
        SHX15_3[20] = SHX35_3
        SHX15_3[21] = SHX36_3
        SHX14_3.args = SHX15_3
        SHX12_3(SHX13_3, SHX14_3)
      end
      SHX12_3 = IsControlJustPressed
      SHX13_3 = 0
      SHX14_3 = 23
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX18_1
        SHX12_3()
        SHX12_3 = SHX19_1
        SHX12_3()
        break
      end
      SHX12_3 = IsControlJustPressed
      SHX13_3 = 0
      SHX14_3 = 177
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      if SHX12_3 then
        SHX12_3 = SHX19_1
        SHX12_3()
        SHX12_3 = TriggerEvent
        SHX13_3 = "chat:addMessage"
        SHX14_3 = {}
        SHX15_3 = {}
        SHX16_3 = "placer"
        SHX17_3 = "^3Placement cancelled."
        SHX15_3[1] = SHX16_3
        SHX15_3[2] = SHX17_3
        SHX14_3.args = SHX15_3
        SHX12_3(SHX13_3, SHX14_3)
        break
      end
      SHX12_3 = SetEntityCoordsNoOffset
      SHX13_3 = SHX4_1
      SHX14_3 = SHX8_3.x
      SHX15_3 = SHX8_3.y
      SHX16_3 = SHX8_3.z
      SHX17_3 = true
      SHX18_3 = true
      SHX19_3 = true
      SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
      SHX12_3 = SetEntityHeading
      SHX13_3 = SHX4_1
      SHX14_3 = SHX9_3
      SHX12_3(SHX13_3, SHX14_3)
      SHX12_3 = DrawMarker
      SHX13_3 = 28
      SHX14_3 = SHX8_3.x
      SHX15_3 = SHX8_3.y
      SHX16_3 = SHX8_3.z
      SHX16_3 = SHX16_3 - 0.02
      SHX17_3 = 0.0
      SHX18_3 = 0.0
      SHX19_3 = 0.0
      SHX20_3 = 0.0
      SHX21_3 = 0.0
      SHX22_3 = 0.0
      SHX23_3 = 0.12
      SHX24_3 = 0.12
      SHX25_3 = 0.12
      SHX26_3 = 255
      SHX27_3 = 255
      SHX28_3 = 255
      SHX29_3 = 120
      SHX30_3 = false
      SHX31_3 = true
      SHX32_3 = 2
      SHX33_3 = false
      SHX34_3 = nil
      SHX35_3 = nil
      SHX36_3 = false
      SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3)
      SHX12_3 = SHX15_1
      SHX13_3 = {}
      SHX14_3 = "~b~Object Placer~s~  (Step: %.3f | Rot: %.1f)"
      SHX15_3 = SHX14_3
      SHX14_3 = SHX14_3.format
      SHX16_3 = SHX6_3
      SHX17_3 = SHX7_3
      SHX14_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
      SHX15_3 = "Arrows: move  |  PgUp/PgDn: Z"
      SHX16_3 = "Q/E: rotate   |  H: snap to ground  |  R: snap to aim"
      SHX17_3 = "G/B: grid step +/-"
      SHX18_3 = "F: confirm    |  Backspace: cancel"
      SHX13_3[1] = SHX14_3
      SHX13_3[2] = SHX15_3
      SHX13_3[3] = SHX16_3
      SHX13_3[4] = SHX17_3
      SHX13_3[5] = SHX18_3
      SHX12_3(SHX13_3)
    end
  end
  SHX3_2(SHX4_2)
end
SHX22_1.placeObject = SHX23_1
SHX22_1 = CMG
SHX22_1 = SHX22_1.registerDevMenuItems
SHX23_1 = "Spawning"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Spawn Vehicle By Name"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.getPlayerCoords
      SHX3_3 = SHX3_3()
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.clientPrompt
      SHX5_3 = "Spawn Code"
      SHX6_3 = ""
      function SHX7_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
        SHX1_4 = CMG
        SHX1_4 = SHX1_4.requestEntitySpawn
        SHX2_4 = "devmenu"
        SHX3_4 = SHX0_4
        SHX1_4(SHX2_4, SHX3_4)
        SHX1_4 = CMG
        SHX1_4 = SHX1_4.spawnVehicle
        SHX2_4 = SHX0_4
        SHX3_4 = SHX3_3.x
        SHX4_4 = SHX3_3.y
        SHX5_4 = SHX3_3.z
        SHX6_4 = GetEntityHeading
        SHX7_4 = CMG
        SHX7_4 = SHX7_4.getPlayerPed
        SHX7_4, SHX8_4, SHX9_4 = SHX7_4()
        SHX6_4 = SHX6_4(SHX7_4, SHX8_4, SHX9_4)
        SHX7_4 = true
        SHX8_4 = true
        SHX9_4 = true
        SHX1_4 = SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4)
        SHX2_4 = CMG
        SHX2_4 = SHX2_4.applyMaxDefaultModsToVehicle
        SHX3_4 = SHX1_4
        SHX2_4(SHX3_4)
      end
      SHX4_3(SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Spawn Object By Name"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Object Name"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4
        SHX1_4 = CMG
        SHX1_4 = SHX1_4.placeObject
        SHX2_4 = SHX0_4
        SHX1_4(SHX2_4)
        SHX1_4 = RageUI
        SHX1_4 = SHX1_4.CloseAll
        SHX1_4()
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Spawn Object By Hash"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Object Name"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4
        SHX1_4 = CMG
        SHX1_4 = SHX1_4.placeObject
        SHX2_4 = SHX0_4
        SHX1_4(SHX2_4)
        SHX1_4 = RageUI
        SHX1_4 = SHX1_4.CloseAll
        SHX1_4()
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Spawn Weapon"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Weapon:"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if nil ~= SHX0_4 and "" ~= SHX0_4 then
          SHX1_4 = GiveWeaponToPed
          SHX2_4 = PlayerPedId
          SHX2_4 = SHX2_4()
          SHX3_4 = GetHashKey
          SHX4_4 = SHX0_4
          SHX3_4 = SHX3_4(SHX4_4)
          SHX4_4 = 250
          SHX5_4 = false
          SHX6_4 = false
          SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Clear Vehicles"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = ExecuteCommand
      SHX4_3 = "clearvehicles"
      SHX3_3(SHX4_3)
      SHX3_3 = notify
      SHX4_3 = "~g~Triggered clear vehicles"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Clear Objects"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = ExecuteCommand
      SHX4_3 = "clearobjects"
      SHX3_3(SHX4_3)
      SHX3_3 = notify
      SHX4_3 = "~g~Triggered clear objects"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Clear Peds"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = ExecuteCommand
      SHX4_3 = "clearpeds"
      SHX3_3(SHX4_3)
      SHX3_3 = notify
      SHX4_3 = "~g~Triggered clear peds"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Clear Weapons"
  SHX2_2 = nil
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
      SHX3_3 = RemoveAllPedWeapons
      SHX4_3 = PlayerPedId
      SHX4_3 = SHX4_3()
      SHX5_3 = false
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = CMG
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getVehicleIdFromModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX2_2 = "Vehicle"
    SHX3_2 = SHX1_2
    return SHX2_2, SHX3_2
  end
  SHX2_2 = SHX0_1.weaponHashToModels
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = "Weapon"
    SHX4_2 = SHX2_2
    return SHX3_2, SHX4_2
  end
  SHX3_2 = GetLabelText
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 and "NULL" ~= SHX3_2 then
    SHX4_2 = "LabelText"
    SHX5_2 = SHX3_2
    return SHX4_2, SHX5_2
  end
  SHX4_2 = "Unknown"
  SHX5_2 = tostring
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  return SHX4_2, SHX5_2, SHX6_2
end
SHX22_1.resolveHash = SHX23_1
SHX22_1 = nil
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
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
    while true do
      SHX0_3 = SHX22_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = ipairs
      SHX1_3 = GetGamePool
      SHX2_3 = "CObject"
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX1_3(SHX2_3)
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = GetEntityModel
        SHX7_3 = SHX5_3
        SHX6_3 = SHX6_3(SHX7_3)
        SHX7_3 = SHX22_1
        if SHX6_3 == SHX7_3 then
          SHX6_3 = SetEntityDrawOutline
          SHX7_3 = SHX5_3
          SHX8_3 = true
          SHX6_3(SHX7_3, SHX8_3)
        end
      end
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX0_2(SHX1_2)
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.clientPrompt
  SHX1_2 = "Enter Model List"
  SHX2_2 = ""
  function SHX3_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerCoords
    SHX1_3 = SHX1_3()
    SHX2_3 = GetEntityForwardVector
    SHX3_3 = PlayerPedId
    SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX3_3()
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    SHX2_3 = SHX2_3 * 5.0
    SHX1_3 = SHX1_3 + SHX2_3
    SHX2_3 = 0
    SHX3_3 = splitString
    SHX4_3 = SHX0_3
    SHX5_3 = "\n"
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
    SHX4_3 = pairs
    SHX5_3 = SHX3_3
    SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
    for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
      SHX10_3 = GetHashKey
      SHX11_3 = SHX9_3
      SHX10_3 = SHX10_3(SHX11_3)
      SHX11_3 = IsModelValid
      SHX12_3 = SHX10_3
      SHX11_3 = SHX11_3(SHX12_3)
      if SHX11_3 then
        while SHX2_3 > 15 do
          SHX11_3 = Wait
          SHX12_3 = 0
          SHX11_3(SHX12_3)
        end
        SHX2_3 = SHX2_3 + 1
        SHX11_3 = Citizen
        SHX11_3 = SHX11_3.CreateThread
        function SHX12_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
          SHX0_4 = CMG
          SHX0_4 = SHX0_4.loadModel
          SHX1_4 = SHX10_3
          SHX0_4 = SHX0_4(SHX1_4)
          if SHX0_4 then
            SHX1_4 = 0
            SHX2_4 = IsModelAVehicle
            SHX3_4 = SHX10_3
            SHX2_4 = SHX2_4(SHX3_4)
            if SHX2_4 then
              SHX2_4 = CreateVehicle
              SHX3_4 = SHX10_3
              SHX4_4 = SHX1_3.x
              SHX5_4 = SHX1_3.y
              SHX6_4 = SHX1_3.z
              SHX7_4 = 0.0
              SHX8_4 = false
              SHX9_4 = false
              SHX2_4 = SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4)
              SHX1_4 = SHX2_4
              SHX2_4 = CMG
              SHX2_4 = SHX2_4.initLocalVehicle
              SHX3_4 = SHX1_4
              SHX2_4(SHX3_4)
            else
              SHX2_4 = CreateObjectNoOffset
              SHX3_4 = SHX10_3
              SHX4_4 = SHX1_3.x
              SHX5_4 = SHX1_3.y
              SHX6_4 = SHX1_3.z
              SHX7_4 = false
              SHX8_4 = false
              SHX9_4 = false
              SHX2_4 = SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4)
              SHX1_4 = SHX2_4
            end
            SHX2_4 = Wait
            SHX3_4 = 2000
            SHX2_4(SHX3_4)
            SHX2_4 = DeleteEntity
            SHX3_4 = SHX1_4
            SHX2_4(SHX3_4)
          end
          SHX1_4 = SHX2_3
          SHX1_4 = SHX1_4 - 1
          SHX2_3 = SHX1_4
        end
        SHX11_3(SHX12_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX25_1 = 0
SHX26_1 = CMG
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Get Customization [JSON]"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Customization [JSON]"
      SHX5_3 = json
      SHX5_3 = SHX5_3.encode
      SHX6_3 = tCMG
      SHX6_3 = SHX6_3.getCustomization
      SHX6_3 = SHX6_3()
      SHX5_3 = SHX5_3(SHX6_3)
      if not SHX5_3 then
        SHX5_3 = ""
      end
      function SHX6_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Set Customization [JSON]"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Customization [JSON]"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4
        SHX1_4 = tCMG
        SHX1_4 = SHX1_4.setCustomization
        SHX2_4 = json
        SHX2_4 = SHX2_4.decode
        SHX3_4 = SHX0_4
        SHX2_4, SHX3_4 = SHX2_4(SHX3_4)
        SHX1_4(SHX2_4, SHX3_4)
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX26_1.drawCustomisationDebugButtons = SHX27_1
SHX26_1 = CMG
SHX26_1 = SHX26_1.registerDevMenuItems
SHX27_1 = "Customisation"
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.drawCustomisationDebugButtons
  SHX0_2()
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = CMG
SHX26_1 = SHX26_1.registerDevMenuItems
SHX27_1 = "Miscellaneous"
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Show nearby objects"
  SHX2_2 = "Lists all objects within 15m and draws markers with hash/distance. Check F8."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.showNearbyObjectMarkers
      SHX4_3 = 15.0
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Drop Lootbag"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "e968644885"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Preview Daily Reward Crate"
  SHX2_2 = "Opens the loot box animation without granting a reward."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "d3ffce18f5"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Reset Daily Reward"
  SHX2_2 = "Sets last claim to yesterday so you can claim again today."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "1ca287f0e0"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Open Scene Menu (RP)"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerEvent
      SHX4_3 = "acaf25d389"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Preview Marker"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3
    SHX3_3 = SHX25_1
    if SHX3_3 then
      SHX3_3 = SHX25_1
      if SHX3_3 > 0 then
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.getPlayerCoords
        SHX3_3 = SHX3_3()
        SHX4_3 = GetEntityForwardVector
        SHX5_3 = PlayerPedId
        SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3 = SHX5_3()
        SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3)
        SHX4_3 = SHX4_3 * 2.0
        SHX3_3 = SHX3_3 + SHX4_3
        SHX4_3 = DrawMarker
        SHX5_3 = SHX25_1
        SHX6_3 = SHX3_3.x
        SHX7_3 = SHX3_3.y
        SHX8_3 = SHX3_3.z
        SHX9_3 = 0.0
        SHX10_3 = 0.0
        SHX11_3 = 0.0
        SHX12_3 = 0.0
        SHX13_3 = 0.0
        SHX14_3 = 0.0
        SHX15_3 = 1.0
        SHX16_3 = 1.0
        SHX17_3 = 1.0
        SHX18_3 = 0
        SHX19_3 = 255
        SHX20_3 = 125
        SHX21_3 = 125
        SHX22_3 = false
        SHX23_3 = false
        SHX24_3 = 2
        SHX25_3 = false
        SHX26_3 = nil
        SHX27_3 = nil
        SHX28_3 = false
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3)
      end
    end
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter ID"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if not SHX1_4 then
          SHX1_4 = 0
        end
        SHX25_1 = SHX1_4
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Get Camera Pos & Rot"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    if SHX2_3 then
      SHX3_3 = GetFinalRenderedCamCoord
      SHX3_3 = SHX3_3()
      SHX4_3 = GetFinalRenderedCamRot
      SHX5_3 = 2
      SHX4_3 = SHX4_3(SHX5_3)
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.clientPrompt
      SHX6_3 = "Pos & Rot"
      SHX7_3 = string
      SHX7_3 = SHX7_3.format
      SHX8_3 = "vector3(%s, %s, %s), vector3(%s, %s, %s)"
      SHX9_3 = SHX3_3.x
      SHX10_3 = SHX3_3.y
      SHX11_3 = SHX3_3.z
      SHX12_3 = SHX4_3.x
      SHX13_3 = SHX4_3.y
      SHX14_3 = SHX4_3.z
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
      function SHX8_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX5_3(SHX6_3, SHX7_3, SHX8_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Clear Watchlist Of Old Staff"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "5f546e002c"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Test Models"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX24_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Resolve Hash"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter Number"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if not SHX1_4 then
          SHX2_4 = notify
          SHX3_4 = "~r~This is not a number dumbass."
          SHX2_4(SHX3_4)
          return
        end
        SHX2_4 = CMG
        SHX2_4 = SHX2_4.resolveHash
        SHX3_4 = SHX1_4 & 4294967295
        SHX2_4, SHX3_4 = SHX2_4(SHX3_4)
        if "Unknown" == SHX2_4 then
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.resolveHash
          SHX5_4 = SHX1_4
          SHX4_4, SHX5_4 = SHX4_4(SHX5_4)
          SHX3_4 = SHX5_4
          SHX2_4 = SHX4_4
        end
        SHX4_4 = notify
        SHX5_4 = string
        SHX5_4 = SHX5_4.format
        SHX6_4 = [[
~y~Resolved Information:
Type: %s
Name: %s]]
        SHX7_4 = SHX2_4
        SHX8_4 = SHX3_4
        SHX5_4, SHX6_4, SHX7_4, SHX8_4 = SHX5_4(SHX6_4, SHX7_4, SHX8_4)
        SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4)
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Highlight Object"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Object Name / Hash"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4
        if "" == SHX0_4 then
          SHX1_4 = nil
          SHX22_1 = SHX1_4
        else
          SHX1_4 = tonumber
          SHX2_4 = SHX0_4
          SHX1_4 = SHX1_4(SHX2_4)
          if not SHX1_4 then
            SHX2_4 = GetHashKey
            SHX3_4 = SHX0_4
            SHX2_4 = SHX2_4(SHX3_4)
            SHX1_4 = SHX2_4
          end
          SHX2_4 = IsModelInCdimage
          SHX3_4 = SHX1_4
          SHX2_4 = SHX2_4(SHX3_4)
          if SHX2_4 then
            SHX2_4 = IsModelValid
            SHX3_4 = SHX1_4
            SHX2_4 = SHX2_4(SHX3_4)
            if SHX2_4 then
              goto SHX_LABEL_33
            end
          end
          SHX2_4 = notify
          SHX3_4 = string
          SHX3_4 = SHX3_4.format
          SHX4_4 = "Model %s is not valid"
          SHX5_4 = SHX0_4
          SHX3_4, SHX4_4, SHX5_4 = SHX3_4(SHX4_4, SHX5_4)
          SHX2_4(SHX3_4, SHX4_4, SHX5_4)
          return
          -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
          ::SHX_LABEL_33::
          SHX2_4 = SHX22_1
          if not SHX2_4 then
            SHX2_4 = SHX23_1
            SHX2_4()
          end
          SHX22_1 = SHX1_4
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Select Position In Crosshair"
  SHX2_2 = ""
  SHX3_2 = SHX1_1.selectingCrosshairPosition
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX1_1.selectingCrosshairPosition = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Select Crosshair Distance"
  SHX2_2 = ""
  SHX3_2 = {}
  SHX4_2 = SHX1_1.selectCrosshairDistance
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter Value:"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX1_1.selectCrosshairDistance = SHX1_4
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Get Camera Position"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    if SHX2_3 then
      SHX3_3 = GetFinalRenderedCamCoord
      SHX3_3 = SHX3_3()
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.clientPrompt
      SHX5_3 = ""
      SHX6_3 = string
      SHX6_3 = SHX6_3.format
      SHX7_3 = "vector3(%s, %s, %s)"
      SHX8_3 = SHX3_3.x
      SHX9_3 = SHX3_3.y
      SHX10_3 = SHX3_3.z
      SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
      function SHX7_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX4_3(SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Get Camera Rotation"
  SHX2_2 = nil
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    if SHX2_3 then
      SHX3_3 = GetFinalRenderedCamRot
      SHX4_3 = 2
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.clientPrompt
      SHX5_3 = ""
      SHX6_3 = string
      SHX6_3 = SHX6_3.format
      SHX7_3 = "vector3(%s, %s, %s)"
      SHX8_3 = SHX3_3.x
      SHX9_3 = SHX3_3.y
      SHX10_3 = SHX3_3.z
      SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
      function SHX7_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX4_3(SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "351e7015f2"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientUserId
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isDeveloper
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 and SHX0_2 then
      SHX2_2 = ""
      SHX3_2 = load
      SHX4_2 = "return "
      SHX5_2 = SHX0_2
      SHX4_2 = SHX4_2 .. SHX5_2
      SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
      if SHX4_2 then
        SHX5_2 = load
        SHX6_2 = SHX0_2
        SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
        SHX4_2 = SHX6_2
        SHX3_2 = SHX5_2
      end
      if SHX4_2 then
        SHX5_2 = TriggerEvent
        SHX6_2 = "chatMessage"
        SHX7_2 = "[SS-RunCode]"
        SHX8_2 = {}
        SHX9_2 = 187
        SHX10_2 = 0
        SHX11_2 = 0
        SHX8_2[1] = SHX9_2
        SHX8_2[2] = SHX10_2
        SHX8_2[3] = SHX11_2
        SHX9_2 = "CRun Error: "
        SHX10_2 = tostring
        SHX11_2 = SHX4_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX9_2 = SHX9_2 .. SHX10_2
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX5_2 = false
        return SHX5_2
      end
      SHX5_2 = {}
      SHX6_2 = pcall
      SHX7_2 = SHX3_2
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX6_2(SHX7_2)
      SHX5_2[1] = SHX6_2
      SHX5_2[2] = SHX7_2
      SHX5_2[3] = SHX8_2
      SHX5_2[4] = SHX9_2
      SHX5_2[5] = SHX10_2
      SHX5_2[6] = SHX11_2
      SHX5_2[7] = SHX12_2
      SHX5_2[8] = SHX13_2
      SHX5_2[9] = SHX14_2
      SHX5_2[10] = SHX15_2
      SHX5_2[11] = SHX16_2
      SHX6_2 = SHX5_2[1]
      if not SHX6_2 then
        SHX6_2 = TriggerEvent
        SHX7_2 = "chatMessage"
        SHX8_2 = "[SS-RunCode]"
        SHX9_2 = {}
        SHX10_2 = 187
        SHX11_2 = 0
        SHX12_2 = 0
        SHX9_2[1] = SHX10_2
        SHX9_2[2] = SHX11_2
        SHX9_2[3] = SHX12_2
        SHX10_2 = "CRun Error: "
        SHX11_2 = tostring
        SHX12_2 = SHX5_2[2]
        SHX11_2 = SHX11_2(SHX12_2)
        SHX10_2 = SHX10_2 .. SHX11_2
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX6_2 = false
        return SHX6_2
      end
      SHX6_2 = 2
      SHX7_2 = #SHX5_2
      SHX8_2 = 1
      for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
        SHX10_2 = SHX2_2
        SHX11_2 = ", "
        SHX10_2 = SHX10_2 .. SHX11_2
        SHX2_2 = SHX10_2
        SHX10_2 = type
        SHX11_2 = SHX5_2[SHX9_2]
        SHX10_2 = SHX10_2(SHX11_2)
        SHX11_2 = SHX5_2[SHX9_2]
        SHX12_2 = type
        SHX13_2 = SHX11_2
        SHX12_2 = SHX12_2(SHX13_2)
        if "number" == SHX12_2 then
          SHX12_2 = IsAnEntity
          SHX13_2 = SHX11_2
          SHX12_2 = SHX12_2(SHX13_2)
          if SHX12_2 then
            SHX12_2 = "entity:"
            SHX13_2 = tostring
            SHX14_2 = GetEntityType
            SHX15_2 = SHX11_2
            SHX14_2, SHX15_2, SHX16_2 = SHX14_2(SHX15_2)
            SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
            SHX12_2 = SHX12_2 .. SHX13_2
            SHX10_2 = SHX12_2
          end
        end
        SHX12_2 = SHX2_2
        SHX13_2 = tostring
        SHX14_2 = SHX5_2[SHX9_2]
        SHX13_2 = SHX13_2(SHX14_2)
        SHX14_2 = " ["
        SHX15_2 = SHX10_2
        SHX16_2 = "]"
        SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2
        SHX2_2 = SHX12_2
      end
      SHX6_2 = #SHX5_2
      if SHX6_2 > 1 then
        SHX6_2 = TriggerEvent
        SHX7_2 = "chatMessage"
        SHX8_2 = "[SS-RunCode]"
        SHX9_2 = {}
        SHX10_2 = 187
        SHX11_2 = 0
        SHX12_2 = 0
        SHX9_2[1] = SHX10_2
        SHX9_2[2] = SHX11_2
        SHX9_2[3] = SHX12_2
        SHX10_2 = "CRun Command Result: "
        SHX11_2 = tostring
        SHX12_2 = SHX2_2
        SHX11_2 = SHX11_2(SHX12_2)
        SHX10_2 = SHX10_2 .. SHX11_2
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX6_2 = true
        return SHX6_2
      end
    end
  end
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "0f125feacd"
function SHX28_1(...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = print
  SHX1_2 = ...
  SHX0_2(SHX1_2)
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = CMG
SHX26_1 = SHX26_1.registerDevMenuThread
SHX27_1 = "Dev Misc"
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2
  SHX0_2 = SHX1_1.selectingCrosshairPosition
  if SHX0_2 then
    SHX0_2 = GetGameplayCamCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = GetGameplayCamRot
    SHX2_2 = 2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.rotationToDirection
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2 = SHX2_2 * 100.0
    SHX2_2 = SHX0_2 + SHX2_2
    SHX3_2 = _ENV
    SHX4_2 = "StartExpensiveSynchronousShapeTestLosProbe"
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = SHX0_2.x
    SHX5_2 = SHX0_2.y
    SHX6_2 = SHX0_2.z
    SHX7_2 = SHX2_2.x
    SHX8_2 = SHX2_2.y
    SHX9_2 = SHX2_2.z
    SHX10_2 = -1
    SHX11_2 = PlayerPedId
    SHX11_2 = SHX11_2()
    SHX12_2 = 7
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX4_2 = GetShapeTestResult
    SHX5_2 = SHX3_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    SHX8_2 = DisableControlAction
    SHX9_2 = 0
    SHX10_2 = 26
    SHX11_2 = true
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    if SHX5_2 then
      SHX8_2 = SHX1_1.selectCrosshairDistance
      SHX8_2 = SHX7_2 * SHX8_2
      SHX8_2 = SHX6_2 + SHX8_2
      SHX9_2 = DrawMarker
      SHX10_2 = 28
      SHX11_2 = SHX8_2.x
      SHX12_2 = SHX8_2.y
      SHX13_2 = SHX8_2.z
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = 0.0
      SHX20_2 = 0.05
      SHX21_2 = 0.05
      SHX22_2 = 0.05
      SHX23_2 = 255
      SHX24_2 = 0
      SHX25_2 = 0
      SHX26_2 = 255
      SHX27_2 = false
      SHX28_2 = false
      SHX29_2 = 2
      SHX30_2 = false
      SHX31_2 = nil
      SHX32_2 = nil
      SHX33_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
      SHX9_2 = SHX7_2 * 5.0
      SHX9_2 = SHX6_2 + SHX9_2
      SHX10_2 = DrawLine
      SHX11_2 = SHX6_2.x
      SHX12_2 = SHX6_2.y
      SHX13_2 = SHX6_2.z
      SHX14_2 = SHX9_2.x
      SHX15_2 = SHX9_2.y
      SHX16_2 = SHX9_2.z
      SHX17_2 = 255
      SHX18_2 = 255
      SHX19_2 = 255
      SHX20_2 = 255
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX10_2 = IsDisabledControlPressed
      SHX11_2 = 0
      SHX12_2 = 36
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if SHX10_2 then
        SHX10_2 = IsDisabledControlJustPressed
        SHX11_2 = 0
        SHX12_2 = 26
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        if SHX10_2 then
          SHX10_2 = CMG
          SHX10_2 = SHX10_2.copyToClipboard
          SHX11_2 = string
          SHX11_2 = SHX11_2.gsub
          SHX12_2 = tostring
          SHX13_2 = SHX8_2
          SHX12_2 = SHX12_2(SHX13_2)
          SHX13_2 = "vec3"
          SHX14_2 = "vector3"
          SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
          SHX10_2 = notify
          SHX11_2 = "~g~Copied coordinates to clipboard"
          SHX10_2(SHX11_2)
        end
      end
    end
  end
  SHX0_2 = pairs
  SHX1_2 = SHX2_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.DrawText
    SHX7_2 = 0.05
    SHX8_2 = SHX4_2 * 0.025
    SHX8_2 = 0.1 + SHX8_2
    SHX9_2 = SHX5_2
    SHX10_2 = 0.4
    SHX11_2 = nil
    SHX12_2 = nil
    SHX13_2 = {}
    SHX14_2 = 255
    SHX15_2 = 0
    SHX16_2 = 0
    SHX17_2 = 255
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX13_2[4] = SHX17_2
    SHX14_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX2_1
  SHX0_2(SHX1_2)
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = CMG
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = DrawLine
  SHX3_2 = SHX0_2.x
  SHX3_2 = SHX3_2 - SHX1_2
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = SHX0_2.x
  SHX6_2 = SHX6_2 + SHX1_2
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX9_2 = 255
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = 255
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX2_2 = DrawLine
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX4_2 = SHX4_2 - SHX1_2
  SHX5_2 = SHX0_2.z
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX7_2 = SHX7_2 + SHX1_2
  SHX8_2 = SHX0_2.z
  SHX9_2 = 0
  SHX10_2 = 255
  SHX11_2 = 0
  SHX12_2 = 255
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX2_2 = DrawLine
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX5_2 = SHX5_2 - SHX1_2
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX8_2 = SHX8_2 + SHX1_2
  SHX9_2 = 0
  SHX10_2 = 0
  SHX11_2 = 255
  SHX12_2 = 255
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX26_1.drawAxisOnPoint = SHX27_1
SHX26_1 = CMG
function SHX27_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = vector3
  SHX4_2 = SHX0_2.x
  SHX5_2 = math
  SHX5_2 = SHX5_2.sin
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = SHX2_2 * SHX5_2
  SHX4_2 = SHX4_2 + SHX5_2
  SHX5_2 = SHX0_2.y
  SHX6_2 = math
  SHX6_2 = SHX6_2.cos
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = SHX2_2 * SHX6_2
  SHX5_2 = SHX5_2 + SHX6_2
  SHX6_2 = SHX0_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = DrawLine
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = 255
  SHX12_2 = 255
  SHX13_2 = 255
  SHX14_2 = 255
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
end
SHX26_1.drawHeadingFromPoint = SHX27_1
SHX26_1 = CMG
function SHX27_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX2_1
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = SHX0_2
  SHX5_2 = ...
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX26_1.drawDebugText = SHX27_1
SHX26_1 = CMG
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  if not SHX1_2 then
    SHX1_2 = 2.5
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetEntityForwardVector
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = vector3
  SHX6_2 = SHX4_2.y
  SHX6_2 = -SHX6_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = 0.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = SHX4_2 * 5.0
  SHX6_2 = SHX3_2 + SHX6_2
  SHX7_2 = #SHX0_2
  SHX7_2 = SHX7_2 - 1
  SHX7_2 = SHX7_2 / 2
  SHX8_2 = ipairs
  SHX9_2 = SHX0_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
  for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
    SHX14_2 = tonumber
    SHX15_2 = SHX13_2
    SHX14_2 = SHX14_2(SHX15_2)
    if not SHX14_2 then
      SHX14_2 = GetHashKey
      SHX15_2 = SHX13_2
      SHX14_2 = SHX14_2(SHX15_2)
    end
    SHX15_2 = IsModelInCdimage
    SHX16_2 = SHX14_2
    SHX15_2 = SHX15_2(SHX16_2)
    if SHX15_2 then
      SHX15_2 = IsModelValid
      SHX16_2 = SHX14_2
      SHX15_2 = SHX15_2(SHX16_2)
      if SHX15_2 then
        goto SHX_LABEL_56
      end
    end
    SHX15_2 = print
    SHX16_2 = "Invalid model skipped: %s"
    SHX17_2 = SHX16_2
    SHX16_2 = SHX16_2.format
    SHX18_2 = SHX13_2
    SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX16_2(SHX17_2, SHX18_2)
    SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    goto SHX_LABEL_107
    -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
    ::SHX_LABEL_56::
    SHX15_2 = SHX13_1
    SHX16_2 = SHX14_2
    SHX15_2 = SHX15_2(SHX16_2)
    if not SHX15_2 then
      SHX15_2 = print
      SHX16_2 = "Failed to load model: %s"
      SHX17_2 = SHX16_2
      SHX16_2 = SHX16_2.format
      SHX18_2 = SHX13_2
      SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX16_2(SHX17_2, SHX18_2)
      SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    else
      SHX15_2 = SHX12_2 - 1
      SHX15_2 = SHX15_2 - SHX7_2
      SHX15_2 = SHX15_2 * SHX1_2
      SHX16_2 = SHX5_2 * SHX15_2
      SHX16_2 = SHX6_2 + SHX16_2
      SHX17_2 = CreateObjectNoOffset
      SHX18_2 = SHX14_2
      SHX19_2 = SHX16_2.x
      SHX20_2 = SHX16_2.y
      SHX21_2 = SHX16_2.z
      SHX22_2 = false
      SHX23_2 = false
      SHX24_2 = false
      SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX18_2 = PlaceObjectOnGroundProperly
      SHX19_2 = SHX17_2
      SHX18_2(SHX19_2)
      SHX18_2 = FreezeEntityPosition
      SHX19_2 = SHX17_2
      SHX20_2 = true
      SHX18_2(SHX19_2, SHX20_2)
      SHX18_2 = SetModelAsNoLongerNeeded
      SHX19_2 = SHX14_2
      SHX18_2(SHX19_2)
      SHX18_2 = CMG
      SHX18_2 = SHX18_2.add3DTextForCoord
      SHX19_2 = SHX13_2
      SHX20_2 = SHX16_2.x
      SHX21_2 = SHX16_2.y
      SHX22_2 = SHX16_2.z
      SHX22_2 = SHX22_2 + 1.0
      SHX23_2 = 5.0
      SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
    ::SHX_LABEL_107::
  end
  SHX8_2 = notify
  SHX9_2 = "~g~Spawned %d objects in a row"
  SHX10_2 = SHX9_2
  SHX9_2 = SHX9_2.format
  SHX11_2 = #SHX0_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
end
SHX26_1.spawnObjectRow = SHX27_1
SHX26_1 = CMG
SHX26_1 = SHX26_1.loadModule
SHX27_1 = "cfg/heists/cfg_heist"
SHX26_1 = SHX26_1(SHX27_1)
SHX27_1 = CMG
SHX27_1 = SHX27_1.registerDevMenuItems
SHX28_1 = "Bank Heists"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = ipairs
  SHX1_2 = SHX26_1.setups
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RageUI
    SHX6_2 = SHX6_2.Button
    SHX7_2 = SHX5_2.title
    SHX8_2 = SHX5_2.description
    SHX9_2 = [[


Starts this setup instantly (dev only, no cost).]]
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX9_2 = true
    function SHX10_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3
      if SHX2_3 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "7177498edd"
        SHX5_3 = SHX4_2
        SHX3_3(SHX4_3, SHX5_3)
      end
    end
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = CMG
SHX27_1 = SHX27_1.registerDevMenuItems
SHX28_1 = "Events/Chat Mini-Event"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Trigger Now"
  SHX2_2 = "Immediately starts a random chat mini-event round (dev only)."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "95d9175710"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX27_1(SHX28_1, SHX29_1)
