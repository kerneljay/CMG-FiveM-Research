-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_jewelryHeist"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
SHX2_1 = false
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = 0
SHX6_1 = 0
SHX7_1 = nil
SHX8_1 = nil
SHX9_1 = {}
SHX10_1 = false
SHX11_1 = false
SHX12_1 = {}
SHX13_1 = {}
SHX13_1.label = "Confirm Selections"
SHX13_1.button = "~INPUT_CELLPHONE_EXTRA_OPTION~"
SHX14_1 = {}
SHX14_1.label = "Select"
SHX14_1.button = "~INPUT_CELLPHONE_SELECT~"
SHX15_1 = {}
SHX15_1.label = "Next Cell"
SHX15_1.button = "~INPUT_CELLPHONE_RIGHT~"
SHX16_1 = {}
SHX16_1.label = "Previous Cell"
SHX16_1.button = "~INPUT_CELLPHONE_LEFT~"
SHX12_1[1] = SHX13_1
SHX12_1[2] = SHX14_1
SHX12_1[3] = SHX15_1
SHX12_1[4] = SHX16_1
SHX13_1 = {}
SHX14_1 = {}
SHX14_1.label = "Select"
SHX14_1.button = "~INPUT_ATTACK~"
SHX13_1[1] = SHX14_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = nil
  if "door" == SHX0_2 then
    SHX1_2 = SHX12_1
  else
    SHX1_2 = SHX13_1
  end
  SHX2_2 = RequestScaleformMovie
  SHX3_2 = "instructional_buttons"
  SHX2_2 = SHX2_2(SHX3_2)
  while true do
    SHX3_2 = HasScaleformMovieLoaded
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "CLEAR_ALL"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "TOGGLE_MOUSE_BUTTONS"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ScaleformMovieMethodAddParamBool
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = ipairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = BeginScaleformMovieMethod
    SHX10_2 = SHX2_2
    SHX11_2 = "SET_DATA_SLOT"
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = ScaleformMovieMethodAddParamInt
    SHX10_2 = SHX7_2 - 1
    SHX9_2(SHX10_2)
    SHX9_2 = _ENV
    SHX10_2 = "ScaleformMovieMethodAddParamPlayerNameString"
    SHX9_2 = SHX9_2[SHX10_2]
    SHX10_2 = SHX8_2.button
    SHX9_2(SHX10_2)
    SHX9_2 = _ENV
    SHX10_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX9_2 = SHX9_2[SHX10_2]
    SHX10_2 = SHX8_2.label
    SHX9_2(SHX10_2)
    SHX9_2 = EndScaleformMovieMethod
    SHX9_2()
  end
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = -1
  SHX3_2(SHX4_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  while true do
    SHX3_2 = SHX11_1
    if not SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
    SHX3_2 = DrawScaleformMovieFullscreen
    SHX4_2 = SHX2_2
    SHX5_2 = 255
    SHX6_2 = 255
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
  SHX3_2 = SetScaleformMovieAsNoLongerNeeded
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "467e878893"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "4ad99ff8df"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addMarker
  SHX2_2 = SHX0_2.coords
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_2.coords
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_2.coords
  SHX4_2 = SHX4_2.z
  SHX4_2 = SHX4_2 - 0.35
  SHX5_2 = 0.3
  SHX6_2 = 0.3
  SHX7_2 = 0.3
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 200
  SHX12_2 = 30
  SHX13_2 = 0
  SHX14_2 = false
  SHX15_2 = true
  SHX16_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX5_1 = SHX1_2
  SHX1_2 = AddBlipForRadius
  SHX2_2 = SHX0_2.coords
  SHX2_2 = SHX2_2.x
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX4_2 = -15
  SHX5_2 = 15
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2 + SHX3_2
  SHX3_2 = SHX0_2.coords
  SHX3_2 = SHX3_2.y
  SHX4_2 = math
  SHX4_2 = SHX4_2.random
  SHX5_2 = -15
  SHX6_2 = 15
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX3_2 = SHX3_2 + SHX4_2
  SHX4_2 = SHX0_2.coords
  SHX4_2 = SHX4_2.z
  SHX5_2 = 20.0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX4_1 = SHX1_2
  SHX1_2 = SetBlipColour
  SHX2_2 = SHX4_1
  SHX3_2 = 1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipAlpha
  SHX2_2 = SHX4_1
  SHX3_2 = 200
  SHX1_2(SHX2_2, SHX3_2)
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_CONTEXT~ to collect the device"
    SHX0_3(SHX1_3)
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 0
    SHX2_3 = 38
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = SHX3_1
      if not SHX0_3 then
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.notify
        SHX1_3 = "~g~Collecting..."
        SHX0_3(SHX1_3)
        SHX0_3 = true
        SHX3_1 = SHX0_3
        SHX0_3 = "anim@heists@ornate_bank@hack"
        SHX1_3 = RequestAnimDict
        SHX2_3 = SHX0_3
        SHX1_3(SHX2_3)
        SHX1_3 = RequestModel
        SHX2_3 = "hei_prop_hst_laptop"
        SHX1_3(SHX2_3)
        SHX1_3 = RequestModel
        SHX2_3 = "hei_p_m_bag_var22_arm_s"
        SHX1_3(SHX2_3)
        SHX1_3 = RequestModel
        SHX2_3 = "hei_prop_heist_card_hack_02"
        SHX1_3(SHX2_3)
        while true do
          SHX1_3 = HasAnimDictLoaded
          SHX2_3 = SHX0_3
          SHX1_3 = SHX1_3(SHX2_3)
          if SHX1_3 then
            SHX1_3 = HasModelLoaded
            SHX2_3 = "hei_prop_hst_laptop"
            SHX1_3 = SHX1_3(SHX2_3)
            if SHX1_3 then
              SHX1_3 = HasModelLoaded
              SHX2_3 = "hei_p_m_bag_var22_arm_s"
              SHX1_3 = SHX1_3(SHX2_3)
              if SHX1_3 then
                SHX1_3 = HasModelLoaded
                SHX2_3 = "hei_prop_heist_card_hack_02"
                SHX1_3 = SHX1_3(SHX2_3)
                if SHX1_3 then
                  break
                end
              end
            end
          end
          SHX1_3 = Citizen
          SHX1_3 = SHX1_3.Wait
          SHX2_3 = 100
          SHX1_3(SHX2_3)
        end
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = GetEntityCoords
        SHX3_3 = SHX1_3
        SHX2_3 = SHX2_3(SHX3_3)
        SHX3_3 = GetEntityRotation
        SHX4_3 = SHX1_3
        SHX3_3 = SHX3_3(SHX4_3)
        SHX4_3 = GetAnimInitialOffsetPosition
        SHX5_3 = SHX0_3
        SHX6_3 = "hack_enter"
        SHX7_3 = SHX0_2.coords
        SHX7_3 = SHX7_3.x
        SHX8_3 = SHX0_2.coords
        SHX8_3 = SHX8_3.y
        SHX9_3 = SHX0_2.coords
        SHX9_3 = SHX9_3.z
        SHX9_3 = SHX9_3 + 0.692
        SHX10_3 = SHX0_2.coords
        SHX10_3 = SHX10_3.x
        SHX11_3 = SHX0_2.coords
        SHX11_3 = SHX11_3.y
        SHX12_3 = SHX0_2.coords
        SHX12_3 = SHX12_3.z
        SHX12_3 = SHX12_3 + 0.692
        SHX13_3 = 0
        SHX14_3 = 2
        SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        SHX5_3 = GetAnimInitialOffsetPosition
        SHX6_3 = SHX0_3
        SHX7_3 = "hack_loop"
        SHX8_3 = SHX0_2.coords
        SHX8_3 = SHX8_3.x
        SHX9_3 = SHX0_2.coords
        SHX9_3 = SHX9_3.y
        SHX10_3 = SHX0_2.coords
        SHX10_3 = SHX10_3.z
        SHX10_3 = SHX10_3 + 0.692
        SHX11_3 = SHX0_2.coords
        SHX11_3 = SHX11_3.x
        SHX12_3 = SHX0_2.coords
        SHX12_3 = SHX12_3.y
        SHX13_3 = SHX0_2.coords
        SHX13_3 = SHX13_3.z
        SHX13_3 = SHX13_3 + 0.692
        SHX14_3 = 0
        SHX15_3 = 2
        SHX5_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
        SHX6_3 = GetAnimInitialOffsetPosition
        SHX7_3 = SHX0_3
        SHX8_3 = "hack_exit"
        SHX9_3 = SHX0_2.coords
        SHX9_3 = SHX9_3.x
        SHX10_3 = SHX0_2.coords
        SHX10_3 = SHX10_3.y
        SHX11_3 = SHX0_2.coords
        SHX11_3 = SHX11_3.z
        SHX11_3 = SHX11_3 + 0.692
        SHX12_3 = SHX0_2.coords
        SHX12_3 = SHX12_3.x
        SHX13_3 = SHX0_2.coords
        SHX13_3 = SHX13_3.y
        SHX14_3 = SHX0_2.coords
        SHX14_3 = SHX14_3.z
        SHX14_3 = SHX14_3 + 0.692
        SHX15_3 = 0
        SHX16_3 = 2
        SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
        SHX7_3 = FreezeEntityPosition
        SHX8_3 = SHX1_3
        SHX9_3 = true
        SHX7_3(SHX8_3, SHX9_3)
        SHX7_3 = SetEntityHeading
        SHX8_3 = CMG
        SHX8_3 = SHX8_3.getPlayerPed
        SHX8_3 = SHX8_3()
        SHX9_3 = SHX0_2.h
        SHX7_3(SHX8_3, SHX9_3)
        SHX7_3 = NetworkCreateSynchronisedScene
        SHX8_3 = SHX4_3.x
        SHX9_3 = SHX4_3.y
        SHX10_3 = SHX4_3.z
        SHX11_3 = SHX3_3.x
        SHX12_3 = SHX3_3.y
        SHX13_3 = SHX3_3.z
        SHX14_3 = 2
        SHX15_3 = false
        SHX16_3 = false
        SHX17_3 = 1065353216
        SHX18_3 = 0
        SHX19_3 = 1.3
        SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX8_3 = CMG
        SHX8_3 = SHX8_3.requestEntitySpawn
        SHX9_3 = "jewelryheist_bag"
        SHX8_3(SHX9_3)
        SHX8_3 = CreateObject
        SHX9_3 = GetHashKey
        SHX10_3 = "hei_p_m_bag_var22_arm_s"
        SHX9_3 = SHX9_3(SHX10_3)
        SHX10_3 = SHX2_3.x
        SHX11_3 = SHX2_3.y
        SHX12_3 = SHX2_3.z
        SHX13_3 = true
        SHX14_3 = true
        SHX15_3 = false
        SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
        SHX9_3 = CMG
        SHX9_3 = SHX9_3.requestEntitySpawn
        SHX10_3 = "jewelryheist_laptop"
        SHX9_3(SHX10_3)
        SHX9_3 = CreateObject
        SHX10_3 = GetHashKey
        SHX11_3 = "hei_prop_hst_laptop"
        SHX10_3 = SHX10_3(SHX11_3)
        SHX11_3 = SHX2_3.x
        SHX12_3 = SHX2_3.y
        SHX13_3 = SHX2_3.z
        SHX14_3 = true
        SHX15_3 = true
        SHX16_3 = false
        SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
        SHX10_3 = CMG
        SHX10_3 = SHX10_3.requestEntitySpawn
        SHX11_3 = "jewelryheist_card"
        SHX10_3(SHX11_3)
        SHX10_3 = CreateObject
        SHX11_3 = GetHashKey
        SHX12_3 = "hei_prop_heist_card_hack_02"
        SHX11_3 = SHX11_3(SHX12_3)
        SHX12_3 = SHX2_3.x
        SHX13_3 = SHX2_3.y
        SHX14_3 = SHX2_3.z
        SHX15_3 = true
        SHX16_3 = true
        SHX17_3 = false
        SHX10_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
        SHX11_3 = SetModelAsNoLongerNeeded
        SHX12_3 = -676527372
        SHX11_3(SHX12_3)
        SHX11_3 = SetModelAsNoLongerNeeded
        SHX12_3 = -944468481
        SHX11_3(SHX12_3)
        SHX11_3 = SetModelAsNoLongerNeeded
        SHX12_3 = -411901183
        SHX11_3(SHX12_3)
        SHX11_3 = NetworkAddPedToSynchronisedScene
        SHX12_3 = SHX1_3
        SHX13_3 = SHX7_3
        SHX14_3 = SHX0_3
        SHX15_3 = "hack_enter"
        SHX16_3 = 1.5
        SHX17_3 = -4.0
        SHX18_3 = 1
        SHX19_3 = 16
        SHX20_3 = 1148846080
        SHX21_3 = 0
        SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3)
        SHX11_3 = NetworkAddEntityToSynchronisedScene
        SHX12_3 = SHX8_3
        SHX13_3 = SHX7_3
        SHX14_3 = SHX0_3
        SHX15_3 = "hack_enter_bag"
        SHX16_3 = 4.0
        SHX17_3 = -8.0
        SHX18_3 = 1
        SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
        SHX11_3 = NetworkAddEntityToSynchronisedScene
        SHX12_3 = SHX9_3
        SHX13_3 = SHX7_3
        SHX14_3 = SHX0_3
        SHX15_3 = "hack_enter_laptop"
        SHX16_3 = 4.0
        SHX17_3 = -8.0
        SHX18_3 = 1
        SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
        SHX11_3 = NetworkAddEntityToSynchronisedScene
        SHX12_3 = SHX10_3
        SHX13_3 = SHX7_3
        SHX14_3 = SHX0_3
        SHX15_3 = "hack_enter_card"
        SHX16_3 = 4.0
        SHX17_3 = -8.0
        SHX18_3 = 1
        SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
        SHX11_3 = NetworkCreateSynchronisedScene
        SHX12_3 = SHX5_3.x
        SHX13_3 = SHX5_3.y
        SHX14_3 = SHX5_3.z
        SHX15_3 = SHX3_3.x
        SHX16_3 = SHX3_3.y
        SHX17_3 = SHX3_3.z
        SHX18_3 = 2
        SHX19_3 = false
        SHX20_3 = true
        SHX21_3 = 1065353216
        SHX22_3 = 0
        SHX23_3 = 1.3
        SHX11_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3)
        SHX12_3 = NetworkAddPedToSynchronisedScene
        SHX13_3 = SHX1_3
        SHX14_3 = SHX11_3
        SHX15_3 = SHX0_3
        SHX16_3 = "hack_loop"
        SHX17_3 = 1.5
        SHX18_3 = -4.0
        SHX19_3 = 1
        SHX20_3 = 16
        SHX21_3 = 1148846080
        SHX22_3 = 0
        SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3)
        SHX12_3 = NetworkAddEntityToSynchronisedScene
        SHX13_3 = SHX8_3
        SHX14_3 = SHX11_3
        SHX15_3 = SHX0_3
        SHX16_3 = "hack_loop_bag"
        SHX17_3 = 4.0
        SHX18_3 = -8.0
        SHX19_3 = 1
        SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX12_3 = NetworkAddEntityToSynchronisedScene
        SHX13_3 = SHX9_3
        SHX14_3 = SHX11_3
        SHX15_3 = SHX0_3
        SHX16_3 = "hack_loop_laptop"
        SHX17_3 = 4.0
        SHX18_3 = -8.0
        SHX19_3 = 1
        SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX12_3 = NetworkAddEntityToSynchronisedScene
        SHX13_3 = SHX10_3
        SHX14_3 = SHX11_3
        SHX15_3 = SHX0_3
        SHX16_3 = "hack_loop_card"
        SHX17_3 = 4.0
        SHX18_3 = -8.0
        SHX19_3 = 1
        SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX12_3 = NetworkCreateSynchronisedScene
        SHX13_3 = SHX6_3.x
        SHX14_3 = SHX6_3.y
        SHX15_3 = SHX6_3.z
        SHX16_3 = SHX3_3.x
        SHX17_3 = SHX3_3.y
        SHX18_3 = SHX3_3.z
        SHX19_3 = 2
        SHX20_3 = false
        SHX21_3 = false
        SHX22_3 = 1065353216
        SHX23_3 = 0
        SHX24_3 = 1.3
        SHX12_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3)
        SHX13_3 = NetworkAddPedToSynchronisedScene
        SHX14_3 = SHX1_3
        SHX15_3 = SHX12_3
        SHX16_3 = SHX0_3
        SHX17_3 = "hack_exit"
        SHX18_3 = 1.5
        SHX19_3 = -4.0
        SHX20_3 = 1
        SHX21_3 = 16
        SHX22_3 = 1148846080
        SHX23_3 = 0
        SHX13_3(SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3)
        SHX13_3 = NetworkAddEntityToSynchronisedScene
        SHX14_3 = SHX8_3
        SHX15_3 = SHX12_3
        SHX16_3 = SHX0_3
        SHX17_3 = "hack_exit_bag"
        SHX18_3 = 4.0
        SHX19_3 = -8.0
        SHX20_3 = 1
        SHX13_3(SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
        SHX13_3 = NetworkAddEntityToSynchronisedScene
        SHX14_3 = SHX9_3
        SHX15_3 = SHX12_3
        SHX16_3 = SHX0_3
        SHX17_3 = "hack_exit_laptop"
        SHX18_3 = 4.0
        SHX19_3 = -8.0
        SHX20_3 = 1
        SHX13_3(SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
        SHX13_3 = NetworkAddEntityToSynchronisedScene
        SHX14_3 = SHX10_3
        SHX15_3 = SHX12_3
        SHX16_3 = SHX0_3
        SHX17_3 = "hack_exit_card"
        SHX18_3 = 4.0
        SHX19_3 = -8.0
        SHX20_3 = 1
        SHX13_3(SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
        SHX13_3 = NetworkStartSynchronisedScene
        SHX14_3 = SHX7_3
        SHX13_3(SHX14_3)
        SHX13_3 = NetworkStartSynchronisedScene
        SHX14_3 = SHX11_3
        SHX13_3(SHX14_3)
        SHX13_3 = NetworkStartSynchronisedScene
        SHX14_3 = SHX12_3
        SHX13_3(SHX14_3)
        SHX13_3 = Citizen
        SHX13_3 = SHX13_3.CreateThread
        function SHX14_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4
          SHX0_4 = Wait
          SHX1_4 = 20000
          SHX0_4(SHX1_4)
          SHX0_4 = TriggerServerEvent
          SHX1_4 = "35d0aa7978"
          SHX0_4(SHX1_4)
          SHX0_4 = FreezeEntityPosition
          SHX1_4 = CMG
          SHX1_4 = SHX1_4.getPlayerPed
          SHX1_4 = SHX1_4()
          SHX2_4 = false
          SHX0_4(SHX1_4, SHX2_4)
          SHX0_4 = ClearPedTasks
          SHX1_4 = CMG
          SHX1_4 = SHX1_4.getPlayerPed
          SHX1_4, SHX2_4, SHX3_4 = SHX1_4()
          SHX0_4(SHX1_4, SHX2_4, SHX3_4)
          SHX0_4 = tCMG
          SHX0_4 = SHX0_4.teleport
          SHX1_4 = SHX0_2.coords
          SHX1_4 = SHX1_4.x
          SHX2_4 = SHX0_2.coords
          SHX2_4 = SHX2_4.y
          SHX3_4 = SHX0_2.coords
          SHX3_4 = SHX3_4.z
          SHX0_4(SHX1_4, SHX2_4, SHX3_4)
          SHX0_4 = false
          SHX3_1 = SHX0_4
          SHX0_4 = RemoveAnimDict
          SHX1_4 = SHX0_3
          SHX0_4(SHX1_4)
        end
        SHX13_3(SHX14_3)
      end
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createArea
  SHX5_2 = "jewelry_collect_device"
  SHX6_2 = SHX0_2.coords
  SHX7_2 = 1.25
  SHX8_2 = 10
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = {}
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = SetTimeout
  SHX5_2 = 600000
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.removeArea
    SHX1_3 = "jewelry_collect_device"
    SHX0_3(SHX1_3)
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.removeBlip
    SHX1_3 = SHX4_1
    SHX0_3(SHX1_3)
  end
  SHX4_2(SHX5_2, SHX6_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "bc45a4ab25"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "jewelry_collect_device"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeMarker
  SHX1_2 = SHX5_1
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeBlip
  SHX1_2 = SHX4_1
  SHX0_2(SHX1_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "310cd6d4da"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Wait
    SHX1_3 = 2500
    SHX0_3(SHX1_3)
    SHX0_3 = true
    SHX11_1 = SHX0_3
    SHX0_3 = SHX14_1
    SHX0_3()
  end
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCombatTimer
  SHX1_2 = 300
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerEvent
  SHX1_2 = "utk_fingerprint:Start"
  SHX2_2 = 4
  SHX3_2 = 1
  SHX4_2 = 2
  function SHX5_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    if SHX0_3 then
      SHX2_3 = tCMG
      SHX2_3 = SHX2_3.notify
      SHX3_3 = "~g~Succesfully hacked!"
      SHX2_3(SHX3_3)
      SHX2_3 = TriggerServerEvent
      SHX3_3 = "cd95eba9b2"
      SHX2_3(SHX3_3)
    else
      SHX2_3 = tCMG
      SHX2_3 = SHX2_3.notify
      SHX3_3 = "~r~Failed. Reason: "
      SHX4_3 = SHX1_3
      SHX3_3 = SHX3_3 .. SHX4_3
      SHX2_3(SHX3_3)
    end
    SHX2_3 = false
    SHX11_1 = SHX2_3
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.setPlayerCombatTimer
    SHX3_3 = 300
    SHX4_3 = false
    SHX2_3(SHX3_3, SHX4_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "260aad147f"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Wait
    SHX1_3 = 2500
    SHX0_3(SHX1_3)
    SHX0_3 = true
    SHX11_1 = SHX0_3
    SHX0_3 = SHX14_1
    SHX0_3()
  end
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCombatTimer
  SHX1_2 = 300
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.startDataCrackMinigame
  SHX1_2 = 5
  function SHX2_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    if SHX0_3 then
      SHX1_3 = TriggerServerEvent
      SHX2_3 = "d4f413ecfa"
      SHX1_3(SHX2_3)
    else
      SHX1_3 = TriggerServerEvent
      SHX2_3 = "8c2687cf85"
      SHX1_3(SHX2_3)
    end
    SHX1_3 = false
    SHX11_1 = SHX1_3
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.setPlayerCombatTimer
    SHX2_3 = 300
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX0_2(SHX1_2, SHX2_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "9cd2581e01"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX1_2 = SHX6_1
    if 0 ~= SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX6_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "dd5ea1245d"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 then
    SHX1_2 = PrepareAlarm
    SHX2_2 = "JEWEL_STORE_HEIST_ALARMS"
    SHX1_2(SHX2_2)
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
    SHX1_2 = StartAlarm
    SHX2_2 = "JEWEL_STORE_HEIST_ALARMS"
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = StopAlarm
    SHX2_2 = "JEWEL_STORE_HEIST_ALARMS"
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "01ab20498d"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = true
  SHX1_2 = 0
  SHX2_2 = 0
  SHX3_2 = SetTimeout
  SHX4_2 = 600000
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX0_2 = SHX0_3
  end
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = 9
    SHX1_3 = 0
    SHX2_3 = -1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX1_2 = SHX3_3
      SHX4_3 = 59
      SHX5_3 = 0
      SHX6_3 = -1
      for SHX7_3 = SHX4_3, SHX5_3, SHX6_3 do
        SHX2_2 = SHX7_3
        SHX8_3 = Wait
        SHX9_3 = 1000
        SHX8_3(SHX9_3)
      end
      SHX4_3 = Wait
      SHX5_3 = 1000
      SHX4_3(SHX5_3)
    end
  end
  SHX3_2(SHX4_2)
  while SHX0_2 do
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.createTimerBars
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX2_2 / 10
    if SHX4_2 < 1 then
      SHX4_2 = SHX3_2.push
      SHX5_2 = "TIME TO LOOT:"
      SHX6_2 = SHX1_2
      SHX7_2 = ":"
      SHX8_2 = "0"
      SHX9_2 = SHX2_2
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2
      SHX4_2(SHX5_2, SHX6_2)
    else
      SHX4_2 = SHX3_2.push
      SHX5_2 = "TIME TO LOOT:"
      SHX6_2 = SHX1_2
      SHX7_2 = ":"
      SHX8_2 = SHX2_2
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX4_2(SHX5_2, SHX6_2)
    end
    SHX4_2 = SHX3_2.draw
    SHX4_2()
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "fd6817347b"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if SHX0_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX0_1.hackDoorCoords
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX0_1.hackDoorCoords
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX0_1.hackDoorCoords
    SHX4_2 = SHX4_2.z
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.5
    SHX8_2 = 200
    SHX9_2 = 0
    SHX10_2 = 0
    SHX11_2 = 255
    SHX12_2 = 30
    SHX13_2 = 27
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX7_1 = SHX1_2
    function SHX1_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.hasClientPermission
      SHX1_3 = "police.onduty.permission"
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        SHX0_3 = drawNativeNotification
        SHX1_3 = "Press ~INPUT_CONTEXT~ to hack the keypad"
        SHX0_3(SHX1_3)
      end
    end
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.hasClientPermission
      SHX1_3 = "police.onduty.permission"
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 38
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
          SHX0_3()
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "f3e7651548"
          SHX0_3(SHX1_3)
        end
      end
    end
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.createArea
    SHX5_2 = "jewelry_hack_door"
    SHX6_2 = SHX0_1.hackDoorCoords
    SHX7_2 = 1.25
    SHX8_2 = 10
    SHX9_2 = SHX1_2
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = {}
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeArea
    SHX2_2 = "jewelry_hack_door"
    SHX1_2(SHX2_2)
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeMarker
    SHX2_2 = SHX7_1
    SHX1_2(SHX2_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "1282769acf"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if SHX0_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX0_1.hackComputerCoords
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX0_1.hackComputerCoords
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX0_1.hackComputerCoords
    SHX4_2 = SHX4_2.z
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.5
    SHX8_2 = 200
    SHX9_2 = 0
    SHX10_2 = 0
    SHX11_2 = 255
    SHX12_2 = 30
    SHX13_2 = 27
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX8_1 = SHX1_2
    function SHX1_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.hasClientPermission
      SHX1_3 = "police.onduty.permission"
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        SHX0_3 = drawNativeNotification
        SHX1_3 = "Press ~INPUT_CONTEXT~ to hack the computer"
        SHX0_3(SHX1_3)
      end
    end
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.hasClientPermission
      SHX1_3 = "police.onduty.permission"
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 38
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
          SHX0_3()
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "bc593643a6"
          SHX0_3(SHX1_3)
        end
      end
    end
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.createArea
    SHX5_2 = "jewelry_hack_computer"
    SHX6_2 = SHX0_1.hackComputerCoords
    SHX7_2 = 1.25
    SHX8_2 = 10
    SHX9_2 = SHX1_2
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = {}
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeArea
    SHX2_2 = "jewelry_hack_computer"
    SHX1_2(SHX2_2)
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeMarker
    SHX2_2 = SHX8_1
    SHX1_2(SHX2_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "8e9dbb00b3"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = SHX0_1.jewelryCases
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.coords
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = #SHX1_2
  SHX2_2 = 350
  if SHX1_2 <= SHX2_2 then
    SHX1_2 = GetClosestObjectOfType
    SHX2_2 = SHX0_1.jewelryCases
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.coords
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX0_1.jewelryCases
    SHX3_2 = SHX3_2[SHX0_2]
    SHX3_2 = SHX3_2.coords
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX0_1.jewelryCases
    SHX4_2 = SHX4_2[SHX0_2]
    SHX4_2 = SHX4_2.coords
    SHX4_2 = SHX4_2.z
    SHX5_2 = 0.5
    SHX6_2 = SHX0_1.jewelryCases
    SHX6_2 = SHX6_2[SHX0_2]
    SHX6_2 = SHX6_2.modelHash
    SHX7_2 = false
    SHX8_2 = true
    SHX9_2 = true
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    if nil ~= SHX1_2 then
      SHX2_2 = nil
      SHX3_2 = SHX0_1.jewelryCases
      SHX3_2 = SHX3_2[SHX0_2]
      SHX3_2 = SHX3_2.modelHash
      if 37228785 == SHX3_2 then
        SHX2_2 = -1469834270
        SHX3_2 = RequestModel
        SHX4_2 = SHX2_2
        SHX3_2(SHX4_2)
        while true do
          SHX3_2 = HasModelLoaded
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            break
          end
          SHX3_2 = Citizen
          SHX3_2 = SHX3_2.Wait
          SHX4_2 = 0
          SHX3_2(SHX4_2)
        end
      else
        SHX3_2 = SHX0_1.jewelryCases
        SHX3_2 = SHX3_2[SHX0_2]
        SHX3_2 = SHX3_2.modelHash
        if -1846370968 == SHX3_2 then
          SHX2_2 = 1097883532
          SHX3_2 = RequestModel
          SHX4_2 = SHX2_2
          SHX3_2(SHX4_2)
          while true do
            SHX3_2 = HasModelLoaded
            SHX4_2 = SHX2_2
            SHX3_2 = SHX3_2(SHX4_2)
            if SHX3_2 then
              break
            end
            SHX3_2 = Citizen
            SHX3_2 = SHX3_2.Wait
            SHX4_2 = 0
            SHX3_2(SHX4_2)
          end
        else
          SHX3_2 = SHX0_1.jewelryCases
          SHX3_2 = SHX3_2[SHX0_2]
          SHX3_2 = SHX3_2.modelHash
          if 1768229041 == SHX3_2 then
            SHX2_2 = 2103335194
            SHX3_2 = RequestModel
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
            while true do
              SHX3_2 = HasModelLoaded
              SHX4_2 = SHX2_2
              SHX3_2 = SHX3_2(SHX4_2)
              if SHX3_2 then
                break
              end
              SHX3_2 = Citizen
              SHX3_2 = SHX3_2.Wait
              SHX4_2 = 0
              SHX3_2(SHX4_2)
            end
          else
            SHX3_2 = SHX0_1.jewelryCases
            SHX3_2 = SHX3_2[SHX0_2]
            SHX3_2 = SHX3_2.modelHash
            if -1880169779 == SHX3_2 then
              SHX2_2 = -677416883
              SHX3_2 = RequestModel
              SHX4_2 = SHX2_2
              SHX3_2(SHX4_2)
              while true do
                SHX3_2 = HasModelLoaded
                SHX4_2 = SHX2_2
                SHX3_2 = SHX3_2(SHX4_2)
                if SHX3_2 then
                  break
                end
                SHX3_2 = Citizen
                SHX3_2 = SHX3_2.Wait
                SHX4_2 = 0
                SHX3_2(SHX4_2)
              end
            end
          end
        end
      end
      SHX3_2 = CreateModelSwap
      SHX4_2 = SHX0_1.jewelryCases
      SHX4_2 = SHX4_2[SHX0_2]
      SHX4_2 = SHX4_2.coords
      SHX4_2 = SHX4_2.x
      SHX5_2 = SHX0_1.jewelryCases
      SHX5_2 = SHX5_2[SHX0_2]
      SHX5_2 = SHX5_2.coords
      SHX5_2 = SHX5_2.y
      SHX6_2 = SHX0_1.jewelryCases
      SHX6_2 = SHX6_2[SHX0_2]
      SHX6_2 = SHX6_2.coords
      SHX6_2 = SHX6_2.z
      SHX7_2 = 1.25
      SHX8_2 = SHX0_1.jewelryCases
      SHX8_2 = SHX8_2[SHX0_2]
      SHX8_2 = SHX8_2.modelHash
      SHX9_2 = SHX2_2
      SHX10_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX3_2 = SetModelAsNoLongerNeeded
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
    end
  end
end
SHX15_1(SHX16_1, SHX17_1)
function SHX15_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = CreateCam
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = SHX0_2
  SHX6_2 = 1.5
  SHX7_2 = 0.0
  SHX8_2 = 1.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = GetOffsetFromEntityInWorldCoords
  SHX6_2 = SHX0_2
  SHX7_2 = 0.0
  SHX8_2 = 1.0
  SHX9_2 = 1.5
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetCamCoord
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = PointCamAtCoord
  SHX7_2 = SHX3_2
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerCoords
  SHX8_2 = SHX8_2()
  SHX8_2 = SHX8_2.x
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerCoords
  SHX9_2 = SHX9_2()
  SHX9_2 = SHX9_2.y
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.getPlayerCoords
  SHX10_2 = SHX10_2()
  SHX10_2 = SHX10_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SetCamActive
  SHX7_2 = SHX3_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = RenderScriptCams
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = 0
  SHX10_2 = true
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = RequestModel
  SHX7_2 = -1386034965
  SHX6_2(SHX7_2)
  while true do
    SHX6_2 = HasModelLoaded
    SHX7_2 = -1386034965
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      break
    end
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.Wait
  SHX7_2 = 1500
  SHX6_2(SHX7_2)
  SHX6_2 = SetCamCoord
  SHX7_2 = SHX3_2
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = PointCamAtCoord
  SHX7_2 = SHX3_2
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerCoords
  SHX8_2 = SHX8_2()
  SHX8_2 = SHX8_2.x
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerCoords
  SHX9_2 = SHX9_2()
  SHX9_2 = SHX9_2.y
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.getPlayerCoords
  SHX10_2 = SHX10_2()
  SHX10_2 = SHX10_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  if SHX2_2 then
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 1250
    SHX6_2(SHX7_2)
  else
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 2700
    SHX6_2(SHX7_2)
  end
  SHX6_2 = RenderScriptCams
  SHX7_2 = false
  SHX8_2 = true
  SHX9_2 = 400
  SHX10_2 = true
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = DestroyCam
  SHX7_2 = SHX3_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = ClearPedTasks
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getPlayerPed
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2()
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = CreateCam
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = SHX0_2
  SHX6_2 = 2.5
  SHX7_2 = 1.0
  SHX8_2 = 1.5
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetCamCoord
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = SetCamFov
  SHX6_2 = SHX3_2
  SHX7_2 = 35.2071
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerCoords
  SHX5_2 = SHX5_2()
  SHX6_2 = PointCamAtCoord
  SHX7_2 = SHX3_2
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SetCamActive
  SHX7_2 = SHX3_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = RenderScriptCams
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = 3000
  SHX10_2 = true
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = RequestModel
  SHX7_2 = -1386034965
  SHX6_2(SHX7_2)
  while true do
    SHX6_2 = HasModelLoaded
    SHX7_2 = -1386034965
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      break
    end
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  if SHX2_2 then
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 2900
    SHX6_2(SHX7_2)
  else
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 3700
    SHX6_2(SHX7_2)
  end
  SHX6_2 = RenderScriptCams
  SHX7_2 = false
  SHX8_2 = true
  SHX9_2 = 400
  SHX10_2 = true
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = DestroyCam
  SHX7_2 = SHX3_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = ClearPedTasks
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getPlayerPed
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2()
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = SHX9_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    function SHX1_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to break the glass"
      SHX0_3(SHX1_3)
    end
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX10_1
        if not SHX1_3 then
          SHX1_3 = GetEntityHealth
          SHX2_3 = PlayerPedId
          SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX2_3()
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
          if SHX1_3 > 102 then
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.hasClientPermission
            SHX2_3 = "police.onduty.permission"
            SHX1_3 = SHX1_3(SHX2_3)
            if not SHX1_3 then
              SHX1_3 = GetSelectedPedWeapon
              SHX2_3 = CMG
              SHX2_3 = SHX2_3.getPlayerPed
              SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX2_3()
              SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
              if -1569615261 ~= SHX1_3 then
                SHX1_3 = RequestScriptAudioBank
                SHX2_3 = "DLC_CMGHEIST\\GLASS_BREAK"
                SHX3_3 = false
                SHX1_3(SHX2_3, SHX3_3)
                SHX1_3 = math
                SHX1_3 = SHX1_3.random
                SHX2_3 = 1
                SHX3_3 = 3
                SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
                SHX2_3 = true
                SHX10_1 = SHX2_3
                SHX2_3 = CMG
                SHX2_3 = SHX2_3.getPlayerCoords
                SHX2_3 = SHX2_3()
                SHX3_3 = GetClosestObjectOfType
                SHX4_3 = SHX2_3.x
                SHX5_3 = SHX2_3.y
                SHX6_3 = SHX2_3.z
                SHX7_3 = 0.5
                SHX8_3 = SHX0_3.modelHash
                SHX9_3 = false
                SHX10_3 = true
                SHX11_3 = true
                SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
                SHX4_3 = FreezeEntityPosition
                SHX5_3 = CMG
                SHX5_3 = SHX5_3.getPlayerPed
                SHX5_3 = SHX5_3()
                SHX6_3 = true
                SHX4_3(SHX5_3, SHX6_3)
                if 0 ~= SHX3_3 then
                  SHX4_3 = GetEntityCoords
                  SHX5_3 = SHX3_3
                  SHX4_3 = SHX4_3(SHX5_3)
                  SHX5_3 = RequestAnimDict
                  SHX6_3 = "missheist_jewel"
                  SHX5_3(SHX6_3)
                  while true do
                    SHX5_3 = HasAnimDictLoaded
                    SHX6_3 = "missheist_jewel"
                    SHX5_3 = SHX5_3(SHX6_3)
                    if SHX5_3 then
                      break
                    end
                    SHX5_3 = Citizen
                    SHX5_3 = SHX5_3.Wait
                    SHX6_3 = 0
                    SHX5_3(SHX6_3)
                  end
                  SHX5_3 = ""
                  SHX6_3 = SHX0_3.modelHash
                  if 37228785 == SHX6_3 then
                    SHX5_3 = -1469834270
                    SHX6_3 = RequestModel
                    SHX7_3 = SHX5_3
                    SHX6_3(SHX7_3)
                    while true do
                      SHX6_3 = HasModelLoaded
                      SHX7_3 = SHX5_3
                      SHX6_3 = SHX6_3(SHX7_3)
                      if SHX6_3 then
                        break
                      end
                      SHX6_3 = Citizen
                      SHX6_3 = SHX6_3.Wait
                      SHX7_3 = 0
                      SHX6_3(SHX7_3)
                    end
                  else
                    SHX6_3 = SHX0_3.modelHash
                    if -1846370968 == SHX6_3 then
                      SHX5_3 = 1097883532
                      SHX6_3 = RequestModel
                      SHX7_3 = SHX5_3
                      SHX6_3(SHX7_3)
                      while true do
                        SHX6_3 = HasModelLoaded
                        SHX7_3 = SHX5_3
                        SHX6_3 = SHX6_3(SHX7_3)
                        if SHX6_3 then
                          break
                        end
                        SHX6_3 = Citizen
                        SHX6_3 = SHX6_3.Wait
                        SHX7_3 = 0
                        SHX6_3(SHX7_3)
                      end
                    else
                      SHX6_3 = SHX0_3.modelHash
                      if 1768229041 == SHX6_3 then
                        SHX5_3 = 2103335194
                        SHX6_3 = RequestModel
                        SHX7_3 = SHX5_3
                        SHX6_3(SHX7_3)
                        while true do
                          SHX6_3 = HasModelLoaded
                          SHX7_3 = SHX5_3
                          SHX6_3 = SHX6_3(SHX7_3)
                          if SHX6_3 then
                            break
                          end
                          SHX6_3 = Citizen
                          SHX6_3 = SHX6_3.Wait
                          SHX7_3 = 0
                          SHX6_3(SHX7_3)
                        end
                      else
                        SHX6_3 = SHX0_3.modelHash
                        if -1880169779 == SHX6_3 then
                          SHX5_3 = -677416883
                          SHX6_3 = RequestModel
                          SHX7_3 = SHX5_3
                          SHX6_3(SHX7_3)
                          while true do
                            SHX6_3 = HasModelLoaded
                            SHX7_3 = SHX5_3
                            SHX6_3 = SHX6_3(SHX7_3)
                            if SHX6_3 then
                              break
                            end
                            SHX6_3 = Citizen
                            SHX6_3 = SHX6_3.Wait
                            SHX7_3 = 0
                            SHX6_3(SHX7_3)
                          end
                        end
                      end
                    end
                  end
                  SHX6_3 = RequestNamedPtfxAsset
                  SHX7_3 = "scr_jewelheist"
                  SHX6_3(SHX7_3)
                  while true do
                    SHX6_3 = HasNamedPtfxAssetLoaded
                    SHX7_3 = "scr_jewelheist"
                    SHX6_3 = SHX6_3(SHX7_3)
                    if SHX6_3 then
                      break
                    end
                    SHX6_3 = Citizen
                    SHX6_3 = SHX6_3.Wait
                    SHX7_3 = 0
                    SHX6_3(SHX7_3)
                  end
                  SHX6_3 = UseParticleFxAsset
                  SHX7_3 = "scr_jewelheist"
                  SHX6_3(SHX7_3)
                  SHX6_3 = StartParticleFxNonLoopedOnEntity
                  SHX7_3 = "scr_jewel_cab_smash"
                  SHX8_3 = GetCurrentPedWeaponEntityIndex
                  SHX9_3 = CMG
                  SHX9_3 = SHX9_3.getPlayerPed
                  SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX9_3()
                  SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
                  SHX9_3 = 0.0
                  SHX10_3 = 0.0
                  SHX11_3 = 0.0
                  SHX12_3 = 0.0
                  SHX13_3 = 0.0
                  SHX14_3 = 0.0
                  SHX15_3 = 1065353216
                  SHX16_3 = false
                  SHX17_3 = false
                  SHX18_3 = false
                  SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
                  SHX6_3 = CreateModelSwap
                  SHX7_3 = SHX4_3.x
                  SHX8_3 = SHX4_3.y
                  SHX9_3 = SHX4_3.z
                  SHX10_3 = 1.25
                  SHX11_3 = SHX0_3.modelHash
                  SHX12_3 = SHX5_3
                  SHX13_3 = true
                  SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
                  SHX6_3 = SetEntityHeading
                  SHX7_3 = CMG
                  SHX7_3 = SHX7_3.getPlayerPed
                  SHX7_3 = SHX7_3()
                  SHX8_3 = SHX0_1.jewelryCases
                  SHX9_3 = SHX0_2
                  SHX8_3 = SHX8_3[SHX9_3]
                  SHX8_3 = SHX8_3.heading
                  SHX6_3(SHX7_3, SHX8_3)
                  SHX6_3 = SetModelAsNoLongerNeeded
                  SHX7_3 = SHX5_3
                  SHX6_3(SHX7_3)
                  SHX6_3 = RemoveNamedPtfxAsset
                  SHX7_3 = "scr_jewelheist"
                  SHX6_3(SHX7_3)
                end
                SHX4_3 = nil
                SHX5_3 = math
                SHX5_3 = SHX5_3.random
                SHX6_3 = 1
                SHX7_3 = 2
                SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
                if 1 == SHX5_3 then
                  SHX4_3 = SHX15_1
                elseif 2 == SHX5_3 then
                  SHX4_3 = SHX16_1
                end
                SHX6_3 = CMG
                SHX6_3 = SHX6_3.getPlayerCoords
                SHX6_3 = SHX6_3()
                SHX7_3 = PlaySoundFromCoord
                SHX8_3 = -1
                SHX9_3 = "glass_break_"
                SHX10_3 = SHX1_3
                SHX9_3 = SHX9_3 .. SHX10_3
                SHX10_3 = SHX6_3.x
                SHX11_3 = SHX6_3.y
                SHX12_3 = SHX6_3.z
                SHX13_3 = "dlc_cmgheist_soundset"
                SHX14_3 = false
                SHX15_3 = 20.0
                SHX16_3 = false
                SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
                SHX7_3 = SHX0_3.modelHash
                if -1880169779 == SHX7_3 then
                  SHX7_3 = TaskPlayAnim
                  SHX8_3 = CMG
                  SHX8_3 = SHX8_3.getPlayerPed
                  SHX8_3 = SHX8_3()
                  SHX9_3 = "missheist_jewel"
                  SHX10_3 = "smash_case_necklace_skull"
                  SHX11_3 = 1000.0
                  SHX12_3 = -4.0
                  SHX13_3 = -1
                  SHX14_3 = 1
                  SHX15_3 = 1148846080
                  SHX16_3 = false
                  SHX17_3 = false
                  SHX18_3 = false
                  SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
                  SHX7_3 = SHX4_3
                  SHX8_3 = CMG
                  SHX8_3 = SHX8_3.getPlayerPed
                  SHX8_3 = SHX8_3()
                  SHX9_3 = CMG
                  SHX9_3 = SHX9_3.getPlayerCoords
                  SHX9_3 = SHX9_3()
                  SHX10_3 = true
                  SHX7_3(SHX8_3, SHX9_3, SHX10_3)
                else
                  SHX7_3 = TaskPlayAnim
                  SHX8_3 = CMG
                  SHX8_3 = SHX8_3.getPlayerPed
                  SHX8_3 = SHX8_3()
                  SHX9_3 = "missheist_jewel"
                  SHX10_3 = "smash_case"
                  SHX11_3 = 1000.0
                  SHX12_3 = -4.0
                  SHX13_3 = -1
                  SHX14_3 = 1
                  SHX15_3 = 1148846080
                  SHX16_3 = false
                  SHX17_3 = false
                  SHX18_3 = false
                  SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
                  SHX7_3 = SHX4_3
                  SHX8_3 = CMG
                  SHX8_3 = SHX8_3.getPlayerPed
                  SHX8_3 = SHX8_3()
                  SHX9_3 = CMG
                  SHX9_3 = SHX9_3.getPlayerCoords
                  SHX9_3 = SHX9_3()
                  SHX10_3 = false
                  SHX7_3(SHX8_3, SHX9_3, SHX10_3)
                end
                SHX7_3 = FreezeEntityPosition
                SHX8_3 = CMG
                SHX8_3 = SHX8_3.getPlayerPed
                SHX8_3 = SHX8_3()
                SHX9_3 = false
                SHX7_3(SHX8_3, SHX9_3)
                SHX7_3 = TriggerServerEvent
                SHX8_3 = "5c0b4e086f"
                SHX9_3 = SHX0_3.caseId
                SHX7_3(SHX8_3, SHX9_3)
                SHX7_3 = CMG
                SHX7_3 = SHX7_3.setPlayerCombatTimer
                SHX8_3 = 300
                SHX9_3 = false
                SHX7_3(SHX8_3, SHX9_3)
                SHX7_3 = Citizen
                SHX7_3 = SHX7_3.Wait
                SHX8_3 = 1000
                SHX7_3(SHX8_3)
                SHX7_3 = SetModelAsNoLongerNeeded
                SHX8_3 = -1386034965
                SHX7_3(SHX8_3)
                SHX7_3 = RemoveAnimDict
                SHX8_3 = "missheist_jewel"
                SHX7_3(SHX8_3)
                SHX7_3 = false
                SHX10_1 = SHX7_3
              else
                SHX1_3 = tCMG
                SHX1_3 = SHX1_3.notify
                SHX2_3 = "~r~You must be holding a weapon to smash the glass!"
                SHX1_3(SHX2_3)
              end
            else
              SHX1_3 = TriggerServerEvent
              SHX2_3 = "9cf990fd76"
              SHX3_3 = SHX0_3.caseId
              SHX1_3(SHX2_3, SHX3_3)
              SHX1_3 = tCMG
              SHX1_3 = SHX1_3.removeArea
              SHX2_3 = "break_glass_"
              SHX3_3 = SHX0_3.caseId
              SHX2_3 = SHX2_3 .. SHX3_3
              SHX1_3(SHX2_3)
            end
          end
        end
      end
    end
    SHX4_2 = SHX9_1
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addMarker
    SHX6_2 = SHX0_1.jewelryCases
    SHX6_2 = SHX6_2[SHX0_2]
    SHX6_2 = SHX6_2.coords
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX0_1.jewelryCases
    SHX7_2 = SHX7_2[SHX0_2]
    SHX7_2 = SHX7_2.coords
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX0_1.jewelryCases
    SHX8_2 = SHX8_2[SHX0_2]
    SHX8_2 = SHX8_2.coords
    SHX8_2 = SHX8_2.z
    SHX8_2 = SHX8_2 - 0.35
    SHX9_2 = 0.2
    SHX10_2 = 0.2
    SHX11_2 = 0.2
    SHX12_2 = 255
    SHX13_2 = 255
    SHX14_2 = 0
    SHX15_2 = 200
    SHX16_2 = 30
    SHX17_2 = 0
    SHX18_2 = false
    SHX19_2 = true
    SHX20_2 = false
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX4_2[SHX0_2] = SHX5_2
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.createArea
    SHX5_2 = "break_glass_"
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX6_2 = SHX0_1.jewelryCases
    SHX6_2 = SHX6_2[SHX0_2]
    SHX6_2 = SHX6_2.coords
    SHX7_2 = 1.25
    SHX8_2 = 10
    SHX9_2 = SHX1_2
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = {}
    SHX12_2.caseId = SHX0_2
    SHX13_2 = SHX0_1.jewelryCases
    SHX13_2 = SHX13_2[SHX0_2]
    SHX13_2 = SHX13_2.modelHash
    SHX12_2.modelHash = SHX13_2
    SHX13_2 = SHX0_1.jewelryCases
    SHX13_2 = SHX13_2[SHX0_2]
    SHX13_2 = SHX13_2.heading
    SHX12_2.heading = SHX13_2
    SHX13_2 = SHX0_1.jewelryCases
    SHX13_2 = SHX13_2[SHX0_2]
    SHX13_2 = SHX13_2.coords
    SHX12_2.caseCoords = SHX13_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX18_1 = RegisterNetEvent
SHX19_1 = "b26b1159ef"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  if SHX1_2 then
    SHX2_2 = SHX17_1
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeArea
    SHX3_2 = "break_glass_"
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX2_2(SHX3_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeMarker
    SHX3_2 = SHX9_1
    SHX3_2 = SHX3_2[SHX0_2]
    SHX2_2(SHX3_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = AddEventHandler
SHX19_1 = "CMG:onClientSpawn"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to exit via the roof"
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SetEntityHeading
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = 217.38
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.teleport
        SHX1_3 = SHX0_1.exitTeleporterCoords
        SHX1_3 = SHX1_3.x
        SHX2_3 = SHX0_1.exitTeleporterCoords
        SHX2_3 = SHX2_3.y
        SHX3_3 = SHX0_1.exitTeleporterCoords
        SHX3_3 = SHX3_3.z
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
    end
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addBlip
    SHX6_2 = SHX0_1.enterTeleporterCoords
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX0_1.enterTeleporterCoords
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX0_1.enterTeleporterCoords
    SHX8_2 = SHX8_2.z
    SHX9_2 = 617
    SHX10_2 = 0
    SHX11_2 = "Jewelry Store"
    SHX12_2 = 0.7
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.addBlipContext
    SHX7_2 = "Civilian"
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addMarker
    SHX7_2 = SHX0_1.enterTeleporterCoords
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX0_1.enterTeleporterCoords
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX0_1.enterTeleporterCoords
    SHX9_2 = SHX9_2.z
    SHX9_2 = SHX9_2 - 1
    SHX10_2 = 0.4
    SHX11_2 = 0.4
    SHX12_2 = 0.5
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 255
    SHX17_2 = 30
    SHX18_2 = 27
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "jewelry_teleport"
    SHX8_2 = SHX0_1.enterTeleporterCoords
    SHX9_2 = 1.25
    SHX10_2 = 10
    SHX11_2 = SHX2_2
    SHX12_2 = SHX3_2
    SHX13_2 = SHX4_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to enter the jewelry store"
      SHX0_3(SHX1_3)
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
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SetEntityHeading
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = 217.38
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.teleport
        SHX1_3 = SHX0_1.enterTeleporterCoords
        SHX1_3 = SHX1_3.x
        SHX2_3 = SHX0_1.enterTeleporterCoords
        SHX2_3 = SHX2_3.y
        SHX3_3 = SHX0_1.enterTeleporterCoords
        SHX3_3 = SHX3_3.z
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
    end
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addMarker
    SHX10_2 = SHX0_1.exitTeleporterCoords
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX0_1.exitTeleporterCoords
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX0_1.exitTeleporterCoords
    SHX12_2 = SHX12_2.z
    SHX12_2 = SHX12_2 - 1
    SHX13_2 = 0.4
    SHX14_2 = 0.4
    SHX15_2 = 0.5
    SHX16_2 = 255
    SHX17_2 = 255
    SHX18_2 = 255
    SHX19_2 = 255
    SHX20_2 = 30
    SHX21_2 = 27
    SHX22_2 = false
    SHX23_2 = false
    SHX24_2 = false
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "jewelry_teleport2"
    SHX11_2 = SHX0_1.exitTeleporterCoords
    SHX12_2 = 1.25
    SHX13_2 = 10
    SHX14_2 = SHX6_2
    SHX15_2 = SHX7_2
    SHX16_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = AddEventHandler
SHX19_1 = "CMG:onClientSpawn"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to enter the facility"
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SHX2_1
        if SHX0_3 then
          SHX0_3 = tCMG
          SHX0_3 = SHX0_3.teleport
          SHX1_3 = SHX0_1.aiMissionTeleporterExit
          SHX1_3 = SHX1_3.x
          SHX2_3 = SHX0_1.aiMissionTeleporterExit
          SHX2_3 = SHX2_3.y
          SHX3_3 = SHX0_1.aiMissionTeleporterExit
          SHX3_3 = SHX3_3.z
          SHX0_3(SHX1_3, SHX2_3, SHX3_3)
          SHX0_3 = true
          SHX1_1 = SHX0_3
          SHX0_3 = Citizen
          SHX0_3 = SHX0_3.Wait
          SHX1_3 = 1000
          SHX0_3(SHX1_3)
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "2f5c0de9d4"
          SHX0_3(SHX1_3)
        else
          SHX0_3 = tCMG
          SHX0_3 = SHX0_3.notify
          SHX1_3 = "~r~You cannot enter right now."
          SHX0_3(SHX1_3)
        end
      end
    end
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addBlip
    SHX6_2 = SHX0_1.aiMissionTeleporterEnter
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX0_1.aiMissionTeleporterEnter
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX0_1.aiMissionTeleporterEnter
    SHX8_2 = SHX8_2.z
    SHX9_2 = 619
    SHX10_2 = 3
    SHX11_2 = "Jewelry Store Setup"
    SHX12_2 = 0.7
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.addBlipContext
    SHX7_2 = "Civilian"
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addMarker
    SHX7_2 = SHX0_1.aiMissionTeleporterEnter
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX0_1.aiMissionTeleporterEnter
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX0_1.aiMissionTeleporterEnter
    SHX9_2 = SHX9_2.z
    SHX9_2 = SHX9_2 - 0.35
    SHX10_2 = 0.3
    SHX11_2 = 0.3
    SHX12_2 = 0.3
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 200
    SHX17_2 = 30
    SHX18_2 = 0
    SHX19_2 = false
    SHX20_2 = true
    SHX21_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "ai_mission_teleport"
    SHX8_2 = SHX0_1.aiMissionTeleporterEnter
    SHX9_2 = 3.0
    SHX10_2 = 10
    SHX11_2 = SHX2_2
    SHX12_2 = SHX3_2
    SHX13_2 = SHX4_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to exit the facility"
      SHX0_3(SHX1_3)
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
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.teleport
        SHX1_3 = SHX0_1.aiMissionTeleporterEnter
        SHX1_3 = SHX1_3.x
        SHX2_3 = SHX0_1.aiMissionTeleporterEnter
        SHX2_3 = SHX2_3.y
        SHX3_3 = SHX0_1.aiMissionTeleporterEnter
        SHX3_3 = SHX3_3.z
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = false
        SHX1_1 = SHX0_3
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "1fe477143e"
        SHX0_3(SHX1_3)
      end
    end
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addMarker
    SHX10_2 = SHX0_1.aiMissionTeleporterExit
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX0_1.aiMissionTeleporterExit
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX0_1.aiMissionTeleporterExit
    SHX12_2 = SHX12_2.z
    SHX12_2 = SHX12_2 - 0.35
    SHX13_2 = 0.3
    SHX14_2 = 0.3
    SHX15_2 = 0.3
    SHX16_2 = 255
    SHX17_2 = 255
    SHX18_2 = 255
    SHX19_2 = 200
    SHX20_2 = 30
    SHX21_2 = 0
    SHX22_2 = false
    SHX23_2 = true
    SHX24_2 = false
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "ai_mission_teleport2"
    SHX11_2 = SHX0_1.aiMissionTeleporterExit
    SHX12_2 = 3.0
    SHX13_2 = 10
    SHX14_2 = SHX6_2
    SHX15_2 = SHX7_2
    SHX16_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = AddEventHandler
SHX19_1 = "CMG:onClientSpawn"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if SHX1_2 then
    SHX2_2 = AddRelationshipGroup
    SHX3_2 = "aiHeist"
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 10000
    SHX2_2(SHX3_2)
    SHX2_2 = GetClosestObjectOfType
    SHX3_2 = SHX0_1.hackDoorCoords
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX0_1.hackDoorCoords
    SHX4_2 = SHX4_2.y
    SHX5_2 = SHX0_1.hackDoorCoords
    SHX5_2 = SHX5_2.z
    SHX6_2 = 2.0
    SHX7_2 = 1335309163
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX6_1 = SHX2_2
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = AddEventHandler
SHX19_1 = "309d290ea8"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if "killed" == SHX0_2 then
    SHX1_2 = SHX1_1
    if SHX1_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "1fe477143e"
      SHX1_2(SHX2_2)
      SHX1_2 = TriggerEvent
      SHX2_2 = "bc45a4ab25"
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX1_1 = SHX1_2
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "6cebc32739"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX1_2 = NetworkDoesEntityExistWithNetworkId
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = print
  SHX2_2 = SHX0_2
  SHX3_2 = " exists"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "jewelryMakePedsAttack"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SetPedRelationshipGroupHash
  SHX3_2 = SHX1_2
  SHX4_2 = "aiHeist"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetRelationshipBetweenGroups
  SHX3_2 = 5
  SHX4_2 = "aiHeist"
  SHX5_2 = GetPedRelationshipGroupHash
  SHX6_2 = GetPlayerPed
  SHX7_2 = -1
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetPedDropsWeaponsWhenDead
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = TaskCombatPed
  SHX3_2 = SHX1_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = 0
  SHX6_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SetPedAccuracy
  SHX3_2 = SHX1_2
  SHX4_2 = 30
  SHX2_2(SHX3_2, SHX4_2)
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "30cfc13bf7"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.announceMpSmallMsg
  SHX1_2 = "ALERT"
  SHX2_2 = "An alarm has been triggered at the jewelry store"
  SHX3_2 = 9
  SHX4_2 = 10000
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX18_1(SHX19_1, SHX20_1)
