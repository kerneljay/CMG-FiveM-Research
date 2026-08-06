-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "CMGtattoos"
SHX2_1 = "mainMenu"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "Tattoo Store"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "shopui_title_tattoos2"
SHX9_1 = "shopui_title_tattoos2"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/ped_cfg/cfg_tattoos"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = -1
SHX2_1 = false
SHX3_1 = {}
SHX4_1 = {}
SHX4_1.name = "Part 1"
SHX4_1.value = "mpbeach_overlays"
SHX4_1.currentListIndex = 1
SHX5_1 = {}
SHX5_1.name = "Part 2"
SHX5_1.value = "mpbusiness_overlays"
SHX5_1.currentListIndex = 1
SHX6_1 = {}
SHX6_1.name = "Part 3"
SHX6_1.value = "mphipster_overlays"
SHX6_1.currentListIndex = 1
SHX7_1 = {}
SHX7_1.name = "Part 4"
SHX7_1.value = "mpbiker_overlays"
SHX7_1.currentListIndex = 1
SHX8_1 = {}
SHX8_1.name = "Part 5"
SHX8_1.value = "mpairraces_overlays"
SHX8_1.currentListIndex = 1
SHX9_1 = {}
SHX9_1.name = "Part 6"
SHX9_1.value = "mpbeach_overlays"
SHX9_1.currentListIndex = 1
SHX10_1 = {}
SHX10_1.name = "Part 7"
SHX10_1.value = "mpchristmas2_overlays"
SHX10_1.currentListIndex = 1
SHX11_1 = {}
SHX11_1.name = "Part 8"
SHX11_1.value = "mpgunrunning_overlays"
SHX11_1.currentListIndex = 1
SHX12_1 = {}
SHX12_1.name = "Part 9"
SHX12_1.value = "mpimportexport_overlays"
SHX12_1.currentListIndex = 1
SHX13_1 = {}
SHX13_1.name = "Part 10"
SHX13_1.value = "mplowrider2_overlays"
SHX13_1.currentListIndex = 1
SHX14_1 = {}
SHX14_1.name = "Part 11"
SHX14_1.value = "mplowrider_overlays"
SHX14_1.currentListIndex = 1
SHX15_1 = {}
SHX15_1.name = "Custom Tattoos"
SHX15_1.value = "new_overlays"
SHX15_1.currentListIndex = 1
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX3_1[5] = SHX8_1
SHX3_1[6] = SHX9_1
SHX3_1[7] = SHX10_1
SHX3_1[8] = SHX11_1
SHX3_1[9] = SHX12_1
SHX3_1[10] = SHX13_1
SHX3_1[11] = SHX14_1
SHX3_1[12] = SHX15_1
SHX4_1 = SHX0_1.tattoosList
SHX5_1 = SHX0_1.tattoosShops
SHX6_1 = {}
SHX7_1 = {}
SHX8_1 = nil
SHX9_1 = false
SHX10_1 = false
SHX11_1 = {}
SHX12_1 = {}
SHX13_1 = false
SHX14_1 = false
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.GetRageInputText
  SHX1_2 = "Enter tattoo ID you want to wear"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = false
    SHX10_1 = SHX1_2
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if nil ~= SHX1_2 then
      SHX2_2 = SHX1_2 + 1
      SHX11_1.id = SHX2_2
    else
      SHX2_2 = SHX12_1.index
      SHX11_1.id = SHX2_2
    end
    SHX2_2 = true
    SHX9_1 = SHX2_2
    return SHX0_2
  end
  SHX1_2 = false
  SHX10_1 = SHX1_2
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = nil
  if "table" == SHX1_2 then
    SHX3_2 = {}
    SHX2_2 = SHX3_2
    SHX3_2 = next
    SHX4_2 = SHX0_2
    SHX5_2 = nil
    SHX6_2 = nil
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX16_1
      SHX10_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = SHX16_1
      SHX11_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX2_2[SHX9_2] = SHX10_2
    end
    SHX3_2 = setmetatable
    SHX4_2 = SHX2_2
    SHX5_2 = SHX16_1
    SHX6_2 = getmetatable
    SHX7_2 = SHX0_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2)
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  else
    SHX2_2 = SHX0_2
  end
  return SHX2_2
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = #SHX1_2
  SHX1_2 = SHX1_2 - 1
  SHX2_2 = {}
  SHX3_2 = "0/"
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX2_2[1] = SHX3_2
  SHX3_2 = 1
  SHX4_2 = SHX4_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = #SHX4_2
  SHX4_2 = SHX4_2 - 1
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = #SHX2_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = SHX6_2
    SHX9_2 = "/"
    SHX10_2 = SHX1_2
    SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
    SHX2_2[SHX7_2] = SHX8_2
  end
  return SHX2_2
end
function SHX18_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = SetEntityHeading
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = 297.7296
  SHX3_2(SHX4_2, SHX5_2)
  if nil ~= SHX0_2 and nil ~= SHX1_2 and nil ~= SHX2_2 then
    SHX3_2 = SHX14_1
    if SHX3_2 then
      SHX3_2 = 1
      SHX4_2 = SHX7_1
      SHX4_2 = #SHX4_2
      SHX5_2 = 1
      for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
        SHX7_2 = SHX7_1
        SHX7_2 = SHX7_2[SHX6_2]
        if nil ~= SHX7_2 then
          SHX7_2 = SHX7_1
          SHX7_2 = SHX7_2[SHX6_2]
          SHX7_2 = SHX7_2.current
          if SHX7_2 == SHX0_2 then
            SHX7_2 = table
            SHX7_2 = SHX7_2.remove
            SHX8_2 = SHX7_1
            SHX9_2 = SHX6_2
            SHX7_2(SHX8_2, SHX9_2)
          end
        end
      end
      SHX3_2 = ClearPedDecorations
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX3_2 = 1
      SHX4_2 = SHX7_1
      SHX4_2 = #SHX4_2
      SHX5_2 = 1
      for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
        SHX7_2 = AddPedDecorationFromHashes
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getPlayerPed
        SHX8_2 = SHX8_2()
        SHX9_2 = GetHashKey
        SHX10_2 = SHX7_1
        SHX10_2 = SHX10_2[SHX6_2]
        SHX10_2 = SHX10_2.collection
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = GetHashKey
        SHX11_2 = SHX7_1
        SHX11_2 = SHX11_2[SHX6_2]
        SHX12_2 = SHX11_2.collection
        SHX11_2 = SHX4_1
        SHX11_2 = SHX11_2[SHX12_2]
        SHX12_2 = SHX7_1
        SHX12_2 = SHX12_2[SHX6_2]
        SHX12_2 = SHX12_2.current
        SHX11_2 = SHX11_2[SHX12_2]
        SHX11_2 = SHX11_2.nameHash
        SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2)
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      end
      SHX3_2 = false
      SHX14_1 = SHX3_2
    else
      SHX3_2 = GetEntityModel
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      if -1667301416 == SHX3_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.loadCustomisationPreset
        SHX4_2 = "TattooMale"
        SHX3_2(SHX4_2)
      else
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.loadCustomisationPreset
        SHX4_2 = "TattooFemale"
        SHX3_2(SHX4_2)
      end
      SHX3_2 = ClearPedDecorations
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX3_2 = 1
      SHX4_2 = SHX7_1
      SHX4_2 = #SHX4_2
      SHX5_2 = 1
      for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
        SHX7_2 = AddPedDecorationFromHashes
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getPlayerPed
        SHX8_2 = SHX8_2()
        SHX9_2 = GetHashKey
        SHX10_2 = SHX7_1
        SHX10_2 = SHX10_2[SHX6_2]
        SHX10_2 = SHX10_2.collection
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = GetHashKey
        SHX11_2 = SHX7_1
        SHX11_2 = SHX11_2[SHX6_2]
        SHX12_2 = SHX11_2.collection
        SHX11_2 = SHX4_1
        SHX11_2 = SHX11_2[SHX12_2]
        SHX12_2 = SHX7_1
        SHX12_2 = SHX12_2[SHX6_2]
        SHX12_2 = SHX12_2.current
        SHX11_2 = SHX11_2[SHX12_2]
        SHX11_2 = SHX11_2.nameHash
        SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2)
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      end
      SHX3_2 = AddPedDecorationFromHashes
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2 = SHX4_2()
      SHX5_2 = GetHashKey
      SHX6_2 = SHX1_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = GetHashKey
      SHX7_2 = SHX4_1
      SHX7_2 = SHX7_2[SHX1_2]
      SHX7_2 = SHX7_2[SHX0_2]
      SHX7_2 = SHX7_2.nameHash
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX6_2(SHX7_2)
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX3_2 = DoesCamExist
      SHX4_2 = SHX1_1
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = CreateCam
        SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
        SHX5_2 = true
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX1_1 = SHX3_2
        SHX3_2 = GetEntityCoords
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getPlayerPed
        SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX4_2 = SetCamCoord
        SHX5_2 = SHX1_1
        SHX6_2 = SHX3_2.x
        SHX7_2 = SHX3_2.y
        SHX8_2 = SHX3_2.z
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX4_2 = SetCamRot
        SHX5_2 = SHX1_1
        SHX6_2 = 0.0
        SHX7_2 = 0.0
        SHX8_2 = 0.0
        SHX9_2 = 2
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX4_2 = SetCamActive
        SHX5_2 = SHX1_1
        SHX6_2 = true
        SHX4_2(SHX5_2, SHX6_2)
        SHX4_2 = RenderScriptCams
        SHX5_2 = true
        SHX6_2 = false
        SHX7_2 = 0
        SHX8_2 = true
        SHX9_2 = true
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX4_2 = SetCamCoord
        SHX5_2 = SHX1_1
        SHX6_2 = SHX3_2.x
        SHX7_2 = SHX3_2.y
        SHX8_2 = SHX3_2.z
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX3_2 = table
      SHX3_2 = SHX3_2.unpack
      SHX4_2 = GetEntityCoords
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPlayerPed
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2()
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX6_2 = SetCamCoord
      SHX7_2 = SHX1_1
      SHX8_2 = SHX4_1
      SHX8_2 = SHX8_2[SHX1_2]
      SHX8_2 = SHX8_2[SHX0_2]
      SHX8_2 = SHX8_2.addedX
      SHX8_2 = SHX3_2 + SHX8_2
      SHX9_2 = SHX4_1
      SHX9_2 = SHX9_2[SHX1_2]
      SHX9_2 = SHX9_2[SHX0_2]
      SHX9_2 = SHX9_2.addedY
      SHX9_2 = SHX4_2 + SHX9_2
      SHX10_2 = SHX4_1
      SHX10_2 = SHX10_2[SHX1_2]
      SHX10_2 = SHX10_2[SHX0_2]
      SHX10_2 = SHX10_2.addedZ
      SHX10_2 = SHX5_2 + SHX10_2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX6_2 = SetCamRot
      SHX7_2 = SHX1_1
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX10_2 = SHX4_1
      SHX10_2 = SHX10_2[SHX1_2]
      SHX10_2 = SHX10_2[SHX0_2]
      SHX10_2 = SHX10_2.rotZ
      SHX11_2 = 2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
  end
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = {}
  SHX1_2 = {}
  SHX1_2.label = "Enter Tattoo ID "
  SHX1_2.button = "~INPUT_CELLPHONE_EXTRA_OPTION~"
  SHX2_2 = {}
  SHX2_2.label = "Remove Current Tattoo "
  SHX2_2.button = "~INPUT_CELLPHONE_OPTION~"
  SHX3_2 = {}
  SHX3_2.label = "Purchase Current Tattoo "
  SHX3_2.button = "~INPUT_CELLPHONE_SELECT~"
  SHX4_2 = {}
  SHX4_2.label = "Next Index "
  SHX4_2.button = "~INPUT_CELLPHONE_RIGHT~"
  SHX5_2 = {}
  SHX5_2.label = "Previous Index "
  SHX5_2.button = "~INPUT_CELLPHONE_LEFT~"
  SHX0_2[1] = SHX1_2
  SHX0_2[2] = SHX2_2
  SHX0_2[3] = SHX3_2
  SHX0_2[4] = SHX4_2
  SHX0_2[5] = SHX5_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = Wait
    SHX1_3 = 0
    SHX0_3(SHX1_3)
    SHX0_3 = RequestScaleformMovie
    SHX1_3 = "instructional_buttons"
    SHX0_3 = SHX0_3(SHX1_3)
    while true do
      SHX1_3 = HasScaleformMovieLoaded
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        break
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "CLEAR_ALL"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "TOGGLE_MOUSE_BUTTONS"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = ScaleformMovieMethodAddParamBool
    SHX2_3 = false
    SHX1_3(SHX2_3)
    SHX1_3 = EndScaleformMovieMethod
    SHX1_3()
    SHX1_3 = ipairs
    SHX2_3 = SHX0_2
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = BeginScaleformMovieMethod
      SHX8_3 = SHX0_3
      SHX9_3 = "SET_DATA_SLOT"
      SHX7_3(SHX8_3, SHX9_3)
      SHX7_3 = ScaleformMovieMethodAddParamInt
      SHX8_3 = SHX5_3 - 1
      SHX7_3(SHX8_3)
      SHX7_3 = _ENV
      SHX8_3 = "ScaleformMovieMethodAddParamPlayerNameString"
      SHX7_3 = SHX7_3[SHX8_3]
      SHX8_3 = SHX6_3.button
      SHX7_3(SHX8_3)
      SHX7_3 = _ENV
      SHX8_3 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX7_3 = SHX7_3[SHX8_3]
      SHX8_3 = SHX6_3.label
      SHX7_3(SHX8_3)
      SHX7_3 = EndScaleformMovieMethod
      SHX7_3()
    end
    SHX1_3 = BeginScaleformMovieMethod
    SHX2_3 = SHX0_3
    SHX3_3 = "DRAW_INSTRUCTIONAL_BUTTONS"
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = ScaleformMovieMethodAddParamInt
    SHX2_3 = -1
    SHX1_3(SHX2_3)
    SHX1_3 = EndScaleformMovieMethod
    SHX1_3()
    while true do
      SHX1_3 = SHX2_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
      SHX1_3 = DrawScaleformMovieFullscreen
      SHX2_3 = SHX0_3
      SHX3_3 = 255
      SHX4_3 = 255
      SHX5_3 = 255
      SHX6_3 = 255
      SHX7_3 = 0
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
    SHX1_3 = false
    SHX13_1 = SHX1_3
  end
  SHX1_2(SHX2_2)
end
SHX20_1 = AddEventHandler
SHX21_1 = "CMG:onClientSpawn"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = TriggerServerEvent
      SHX1_3 = "195b53ce8c"
      SHX0_3(SHX1_3)
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 500
      SHX0_3(SHX1_3)
      SHX0_3 = true
      SHX2_1 = SHX0_3
      SHX0_3 = SHX16_1
      SHX1_3 = SHX6_1
      SHX0_3 = SHX0_3(SHX1_3)
      SHX7_1 = SHX0_3
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.getCustomization
      SHX0_3 = SHX0_3()
      SHX8_1 = SHX0_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "CMGtattoos"
      SHX4_3 = "mainMenu"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = true
      SHX0_3(SHX1_3, SHX2_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
      SHX0_3 = DoesCamExist
      SHX1_3 = SHX1_1
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 then
        SHX0_3 = RenderScriptCams
        SHX1_3 = false
        SHX2_3 = false
        SHX3_3 = 0
        SHX4_3 = true
        SHX5_3 = false
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX0_3 = DestroyCam
        SHX1_3 = SHX1_1
        SHX2_3 = false
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "CMGtattoos"
      SHX4_3 = "mainMenu"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = false
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.setCustomization
      SHX1_3 = SHX8_1
      SHX0_3(SHX1_3)
      SHX0_3 = nil
      SHX8_1 = SHX0_3
      SHX0_3 = ClearPedDecorations
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerPed
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX1_3()
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX0_3 = 1
      SHX1_3 = SHX7_1
      SHX1_3 = #SHX1_3
      SHX2_3 = 1
      for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
        SHX4_3 = AddPedDecorationFromHashes
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.getPlayerPed
        SHX5_3 = SHX5_3()
        SHX6_3 = GetHashKey
        SHX7_3 = SHX7_1
        SHX7_3 = SHX7_3[SHX3_3]
        SHX7_3 = SHX7_3.collection
        SHX6_3 = SHX6_3(SHX7_3)
        SHX7_3 = GetHashKey
        SHX8_3 = SHX7_1
        SHX8_3 = SHX8_3[SHX3_3]
        SHX9_3 = SHX8_3.collection
        SHX8_3 = SHX4_1
        SHX8_3 = SHX8_3[SHX9_3]
        SHX9_3 = SHX7_1
        SHX9_3 = SHX9_3[SHX3_3]
        SHX9_3 = SHX9_3.current
        SHX8_3 = SHX8_3[SHX9_3]
        SHX8_3 = SHX8_3.nameHash
        SHX7_3, SHX8_3, SHX9_3 = SHX7_3(SHX8_3)
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      end
      SHX0_3 = false
      SHX2_1 = SHX0_3
      SHX0_3 = {}
      SHX6_1 = SHX0_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        SHX0_3 = SHX13_1
        if not SHX0_3 then
          SHX0_3 = SHX19_1
          SHX0_3()
          SHX0_3 = true
          SHX13_1 = SHX0_3
        end
      end
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "CMGtattoos"
      SHX4_3 = "mainMenu"
      SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      if SHX0_3 then
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 179
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = SHX10_1
          if not SHX0_3 then
            SHX0_3 = true
            SHX10_1 = SHX0_3
            SHX0_3 = SHX15_1
            SHX0_3()
          end
        end
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX5_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = RequestStreamedTextureDict
      SHX12_2 = "mptattoos1"
      SHX13_2 = false
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = Wait
      SHX12_2 = 100
      SHX11_2(SHX12_2)
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "tattoParlour_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addBlip
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX15_2 = 75
      SHX16_2 = 0
      SHX17_2 = "Tattoo Parlour"
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX15_2 = 0.6
      SHX16_2 = 0.6
      SHX17_2 = 0.6
      SHX18_2 = 10
      SHX19_2 = 255
      SHX20_2 = 81
      SHX21_2 = 170
      SHX22_2 = 50
      SHX23_2 = 9
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = true
      SHX27_2 = "mptattoos1"
      SHX28_2 = "tattoo_defend_safehouse"
      SHX29_2 = 90.0
      SHX30_2 = 90.0
      SHX31_2 = 0.0
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
    end
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = Citizen
SHX20_1 = SHX20_1.CreateThread
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = false
  while true do
    SHX1_2 = Wait
    SHX2_2 = 500
    SHX1_2(SHX2_2)
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.isInComa
    SHX1_2 = SHX1_2()
    if SHX1_2 and not SHX0_2 then
      SHX0_2 = true
    end
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.isInComa
    SHX1_2 = SHX1_2()
    if not SHX1_2 and SHX0_2 then
      SHX1_2 = Wait
      SHX2_2 = 5000
      SHX1_2(SHX2_2)
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "195b53ce8c"
      SHX1_2(SHX2_2)
      SHX0_2 = false
    end
  end
end
SHX20_1(SHX21_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "9bb006b498"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.unpackTable
  SHX2_2 = SHX0_2
  SHX3_2 = {}
  SHX4_2 = "current"
  SHX5_2 = "part"
  SHX6_2 = "collection"
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = 1
  SHX3_2 = #SHX1_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = 1
    SHX7_2 = SHX3_1
    SHX7_2 = #SHX7_2
    SHX8_2 = 1
    for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = SHX3_1
      SHX10_2 = SHX10_2[SHX9_2]
      SHX10_2 = SHX10_2.name
      SHX11_2 = SHX1_2[SHX5_2]
      SHX11_2 = SHX11_2.part
      if SHX10_2 == SHX11_2 then
        SHX10_2 = SHX3_1
        SHX10_2 = SHX10_2[SHX9_2]
        SHX11_2 = SHX1_2[SHX5_2]
        SHX11_2 = SHX11_2.current
        SHX10_2.currentListIndex = SHX11_2
      end
    end
    SHX6_2 = AddPedDecorationFromHashes
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerPed
    SHX7_2 = SHX7_2()
    SHX8_2 = GetHashKey
    SHX9_2 = SHX1_2[SHX5_2]
    SHX9_2 = SHX9_2.collection
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = GetHashKey
    SHX10_2 = SHX1_2[SHX5_2]
    SHX11_2 = SHX10_2.collection
    SHX10_2 = SHX4_1
    SHX10_2 = SHX10_2[SHX11_2]
    SHX11_2 = SHX1_2[SHX5_2]
    SHX11_2 = SHX11_2.current
    SHX10_2 = SHX10_2[SHX11_2]
    SHX10_2 = SHX10_2.nameHash
    SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = table
    SHX6_2 = SHX6_2.insert
    SHX7_2 = SHX6_1
    SHX8_2 = SHX1_2[SHX5_2]
    SHX6_2(SHX7_2, SHX8_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
function SHX20_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = pairs
  SHX4_2 = SHX6_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.part
    if SHX9_2 == SHX0_2 then
      SHX9_2 = SHX8_2.collection
      if SHX9_2 == SHX1_2 then
        SHX9_2 = SHX8_2.current
        if SHX9_2 == SHX2_2 then
          SHX9_2 = true
          return SHX9_2
        end
      end
    end
  end
  SHX3_2 = false
  return SHX3_2
end
SHX21_1 = RageUI
SHX21_1 = SHX21_1.CreateWhile
SHX22_1 = 1.0
SHX23_1 = RMenu
SHX24_1 = SHX23_1
SHX23_1 = SHX23_1.Get
SHX25_1 = "CMGtattoos"
SHX26_1 = "mainMenu"
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX24_1 = nil
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX10_1
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsVisible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "CMGtattoos"
    SHX4_2 = "mainMenu"
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
      SHX0_3 = 1
      SHX1_3 = SHX3_1
      SHX1_3 = #SHX1_3
      SHX2_3 = 1
      for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
        SHX4_3 = SHX3_1
        SHX4_3 = SHX4_3[SHX3_3]
        SHX12_1 = SHX4_3
        SHX5_3 = RageUI
        SHX5_3 = SHX5_3.List
        SHX6_3 = SHX4_3.name
        SHX7_3 = SHX17_1
        SHX8_3 = SHX4_3.value
        SHX7_3 = SHX7_3(SHX8_3)
        SHX8_3 = SHX3_1
        SHX8_3 = SHX8_3[SHX3_3]
        SHX8_3 = SHX8_3.currentListIndex
        SHX9_3 = "Tattoo Add/Removal Price: \194\1631,000"
        SHX10_3 = {}
        SHX11_3 = true
        function SHX12_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
          if SHX1_4 then
            SHX4_4 = IsControlJustPressed
            SHX5_4 = 0
            SHX6_4 = 177
            SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
            if not SHX4_4 then
              SHX4_4 = IsControlJustPressed
              SHX5_4 = 0
              SHX6_4 = 194
              SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
              if not SHX4_4 then
                SHX4_4 = IsControlJustPressed
                SHX5_4 = 0
                SHX6_4 = 202
                SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
                if not SHX4_4 then
                  goto SHX_LABEL_37
                end
              end
            end
            SHX4_4 = DoesCamExist
            SHX5_4 = SHX1_1
            SHX4_4 = SHX4_4(SHX5_4)
            if SHX4_4 then
              SHX4_4 = RenderScriptCams
              SHX5_4 = false
              SHX6_4 = false
              SHX7_4 = 0
              SHX8_4 = true
              SHX9_4 = false
              SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4)
              SHX4_4 = DestroyCam
              SHX5_4 = SHX1_1
              SHX6_4 = false
              SHX4_4(SHX5_4, SHX6_4)
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_37:: outside nested blocks until all 'goto SHX_LABEL_37' can see it
            ::SHX_LABEL_37::
            SHX4_4 = IsControlJustPressed
            SHX5_4 = 0
            SHX6_4 = 172
            SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
            if not SHX4_4 then
              SHX4_4 = IsControlJustPressed
              SHX5_4 = 0
              SHX6_4 = 241
              SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
              if not SHX4_4 then
                SHX4_4 = IsControlJustPressed
                SHX5_4 = 0
                SHX6_4 = 173
                SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
                if not SHX4_4 then
                  SHX4_4 = IsControlJustPressed
                  SHX5_4 = 0
                  SHX6_4 = 242
                  SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
                  if not SHX4_4 then
                    goto SHX_LABEL_67
                  end
                end
              end
            end
            SHX4_4 = SHX4_3.index
            SHX5_4 = SHX12_1.index
            if SHX4_4 ~= SHX5_4 then
              SHX4_4 = SHX4_3
              SHX12_1 = SHX4_4
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_67:: outside nested blocks until all 'goto SHX_LABEL_67' can see it
            ::SHX_LABEL_67::
            SHX4_4 = SHX4_3.name
            SHX5_4 = SHX12_1.name
            if SHX4_4 == SHX5_4 then
              SHX4_4 = SHX9_1
              if SHX4_4 then
                SHX4_4 = SHX11_1
                if nil ~= SHX4_4 then
                  SHX4_4 = SHX11_1.id
                  SHX5_4 = SHX17_1
                  SHX6_4 = SHX4_3.value
                  SHX5_4 = SHX5_4(SHX6_4)
                  SHX5_4 = #SHX5_4
                  if SHX4_4 <= SHX5_4 then
                    SHX4_4 = SHX11_1.id
                    if SHX4_4 >= 0 then
                      SHX3_4 = SHX11_1.id
                      SHX4_4 = SHX18_1
                      SHX5_4 = SHX3_4
                      SHX6_4 = SHX12_1.value
                      SHX7_4 = SHX4_3.name
                      SHX4_4(SHX5_4, SHX6_4, SHX7_4)
                      SHX4_4 = false
                      SHX9_1 = SHX4_4
                  end
                end
                else
                  SHX4_4 = false
                  SHX9_1 = SHX4_4
                end
              else
                SHX5_4 = SHX3_3
                SHX4_4 = SHX3_1
                SHX4_4 = SHX4_4[SHX5_4]
                SHX4_4 = SHX4_4.currentListIndex
                if SHX4_4 ~= SHX3_4 then
                  SHX4_4 = SHX18_1
                  SHX5_4 = SHX3_4
                  SHX6_4 = SHX12_1.value
                  SHX7_4 = SHX4_3.name
                  SHX4_4(SHX5_4, SHX6_4, SHX7_4)
                end
              end
              SHX5_4 = SHX3_3
              SHX4_4 = SHX3_1
              SHX4_4 = SHX4_4[SHX5_4]
              SHX4_4.currentListIndex = SHX3_4
            end
            SHX4_4 = SHX2_1
            if SHX4_4 then
              SHX4_4 = SHX10_1
              if not SHX4_4 then
                SHX4_4 = IsControlJustReleased
                SHX5_4 = 0
                SHX6_4 = 178
                SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
                if SHX4_4 then
                  SHX4_4 = true
                  SHX14_1 = SHX4_4
                  SHX4_4 = SHX18_1
                  SHX5_4 = SHX3_4
                  SHX6_4 = SHX12_1.value
                  SHX7_4 = SHX12_1.name
                  SHX4_4(SHX5_4, SHX6_4, SHX7_4)
                  SHX4_4 = TriggerServerEvent
                  SHX5_4 = "4e23f069b7"
                  SHX6_4 = SHX7_1
                  SHX7_4 = 1000
                  SHX4_4(SHX5_4, SHX6_4, SHX7_4)
                end
              end
            end
          end
          if SHX2_4 then
            SHX4_4 = SHX20_1
            SHX5_4 = SHX4_3.name
            SHX6_4 = SHX12_1.value
            SHX7_4 = SHX3_4
            SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            if not SHX4_4 then
              SHX4_4 = table
              SHX4_4 = SHX4_4.insert
              SHX5_4 = SHX7_1
              SHX6_4 = {}
              SHX7_4 = SHX4_3.name
              SHX6_4.part = SHX7_4
              SHX7_4 = SHX12_1.value
              SHX6_4.collection = SHX7_4
              SHX6_4.current = SHX3_4
              SHX4_4(SHX5_4, SHX6_4)
              SHX4_4 = TriggerServerEvent
              SHX5_4 = "4e23f069b7"
              SHX6_4 = SHX7_1
              SHX7_4 = 1000
              SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            else
              SHX4_4 = notify
              SHX5_4 = "~r~You have already purchased this tattoo."
              SHX4_4(SHX5_4)
            end
          end
        end
        function SHX13_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
        end
        SHX14_3 = nil
        SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
      end
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
end
SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1)
