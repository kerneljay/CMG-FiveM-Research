-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = {}
SHX0_1.VideoType = "CASINO_DIA_PL"
SHX1_1 = nil
SHX2_1 = false
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetTvChannelPlaylist
  SHX1_2 = 0
  SHX2_2 = SHX0_1.VideoType
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SetTvAudioFrontend
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = SetTvVolume
  SHX1_2 = -100.0
  SHX0_2(SHX1_2)
  SHX0_2 = SetTvChannel
  SHX1_2 = 0
  SHX0_2(SHX1_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetTvChannelPlaylist
  SHX1_2 = 0
  SHX2_2 = "CASINO_WIN_PL"
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SetTvAudioFrontend
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = SetTvVolume
  SHX1_2 = -100.0
  SHX0_2(SHX1_2)
  SHX0_2 = SetTvChannel
  SHX1_2 = -1
  SHX0_2(SHX1_2)
  SHX0_2 = SetTvChannel
  SHX1_2 = 0
  SHX0_2(SHX1_2)
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = RequestStreamedTextureDict
  SHX1_2 = "Prop_Screen_Vinewood"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = HasStreamedTextureDictLoaded
    SHX1_2 = "Prop_Screen_Vinewood"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
  end
  SHX0_2 = RegisterNamedRendertarget
  SHX1_2 = "casinoscreen_01"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = LinkNamedRendertarget
  SHX1_2 = 1800987616
  SHX0_2(SHX1_2)
  SHX0_2 = GetNamedRendertargetRenderId
  SHX1_2 = "casinoscreen_01"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = 0
    while true do
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.isInsideDiamondCasino
      SHX1_3 = SHX1_3()
      if not SHX1_3 then
        SHX1_3 = ReleaseNamedRendertarget
        SHX2_3 = "casinoscreen_01"
        SHX1_3(SHX2_3)
        SHX1_3 = nil
        SHX1_1 = SHX1_3
        SHX1_3 = false
        SHX2_1 = SHX1_3
        break
      end
      SHX1_3 = SHX1_1
      if SHX1_3 then
        SHX1_3 = GetGameTimer
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX2_1
        if SHX2_3 then
          SHX2_3 = SHX4_1
          SHX2_3()
          SHX2_3 = GetGameTimer
          SHX2_3 = SHX2_3()
          SHX0_3 = SHX2_3 - 33666
          SHX2_3 = false
          SHX2_1 = SHX2_3
        else
          SHX2_3 = SHX1_3 - SHX0_3
          SHX3_3 = 42666
          if SHX2_3 >= SHX3_3 then
            SHX2_3 = SHX3_1
            SHX2_3()
            SHX0_3 = SHX1_3
          end
        end
        SHX2_3 = SetTextRenderId
        SHX3_3 = SHX1_1
        SHX2_3(SHX3_3)
        SHX2_3 = SetScriptGfxDrawOrder
        SHX3_3 = 4
        SHX2_3(SHX3_3)
        SHX2_3 = SetScriptGfxDrawBehindPausemenu
        SHX3_3 = true
        SHX2_3(SHX3_3)
        SHX2_3 = DrawInteractiveSprite
        SHX3_3 = "Prop_Screen_Vinewood"
        SHX4_3 = "BG_Wall_Colour_4x4"
        SHX5_3 = 0.25
        SHX6_3 = 0.5
        SHX7_3 = 0.5
        SHX8_3 = 1.0
        SHX9_3 = 0.0
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX13_3 = 255
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
        SHX2_3 = DrawTvChannel
        SHX3_3 = 0.5
        SHX4_3 = 0.5
        SHX5_3 = 1.0
        SHX6_3 = 1.0
        SHX7_3 = 0.0
        SHX8_3 = 255
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        SHX2_3 = SetTextRenderId
        SHX3_3 = GetDefaultScriptRendertargetRenderId
        SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX3_3()
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      end
    end
  end
  SHX0_2(SHX1_2)
end
SHX6_1 = AddEventHandler
SHX7_1 = "4d7b29b4ae"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  SHX0_2()
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = AddEventHandler
SHX7_1 = "33636c4bf6"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isInsideDiamondCasino
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX2_1 = SHX0_2
end
SHX6_1(SHX7_1, SHX8_1)
