-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1
SHX0_1 = RegisterNetEvent
SHX1_1 = "RageUI:Popup"
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Popup
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RageUI
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = ClearPrints
  SHX1_2()
  SHX1_2 = SHX0_2.colors
  if nil == SHX1_2 then
    SHX1_2 = ThefeedSetNextPostBackgroundColor
    SHX2_2 = 140
    SHX1_2(SHX2_2)
  else
    SHX1_2 = ThefeedSetNextPostBackgroundColor
    SHX2_2 = SHX0_2.colors
    SHX1_2(SHX2_2)
  end
  SHX1_2 = BeginTextCommandThefeedPost
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.message
  if nil == SHX1_2 then
    SHX1_2 = error
    SHX2_2 = "Missing arguments, message"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = AddTextComponentSubstringPlayerName
    SHX2_2 = tostring
    SHX3_2 = SHX0_2.message
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
  SHX1_2 = EndTextCommandThefeedPostTicker
  SHX2_2 = false
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.sound
  if nil ~= SHX1_2 then
    SHX1_2 = SHX0_2.sound
    SHX1_2 = SHX1_2.audio_name
    if nil ~= SHX1_2 then
      SHX1_2 = SHX0_2.sound
      SHX1_2 = SHX1_2.audio_ref
      if nil ~= SHX1_2 then
        SHX1_2 = PlaySoundFrontend
        SHX2_2 = -1
        SHX3_2 = SHX0_2.sound
        SHX3_2 = SHX3_2.audio_name
        SHX4_2 = SHX0_2.sound
        SHX4_2 = SHX4_2.audio_ref
        SHX5_2 = true
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      else
        SHX1_2 = error
        SHX2_2 = "Missing arguments, audio_ref"
        SHX1_2(SHX2_2)
      end
    else
      SHX1_2 = error
      SHX2_2 = "Missing arguments, audio_name"
      SHX1_2(SHX2_2)
    end
  end
end
SHX0_1.Popup = SHX1_1
SHX0_1 = RageUI
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2.colors
  if nil == SHX1_2 then
    SHX1_2 = ThefeedSetNextPostBackgroundColor
    SHX2_2 = 140
    SHX1_2(SHX2_2)
  else
    SHX1_2 = ThefeedSetNextPostBackgroundColor
    SHX2_2 = SHX0_2.colors
    SHX1_2(SHX2_2)
  end
  SHX1_2 = BeginTextCommandThefeedPost
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.message
  if nil == SHX1_2 then
    SHX1_2 = error
    SHX2_2 = "Missing arguments, message"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = AddTextComponentSubstringPlayerName
    SHX2_2 = tostring
    SHX3_2 = SHX0_2.message
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX2_2(SHX3_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
  SHX1_2 = SHX0_2.request_stream_texture_dics
  if nil ~= SHX1_2 then
    SHX1_2 = RequestStreamedTextureDict
    SHX2_2 = SHX0_2.request_stream_texture_dics
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX0_2.picture
  if nil ~= SHX1_2 then
    SHX1_2 = SHX0_2.iconTypes
    if 1 ~= SHX1_2 then
      SHX1_2 = SHX0_2.iconTypes
      if 2 ~= SHX1_2 then
        SHX1_2 = SHX0_2.iconTypes
        if 3 ~= SHX1_2 then
          SHX1_2 = SHX0_2.iconTypes
          if 7 ~= SHX1_2 then
            SHX1_2 = SHX0_2.iconTypes
            if 8 ~= SHX1_2 then
              SHX1_2 = SHX0_2.iconTypes
              if 9 ~= SHX1_2 then
                goto SHX_LABEL_67
              end
            end
          end
        end
      end
    end
    SHX1_2 = EndTextCommandThefeedPostMessagetext
    SHX2_2 = tostring
    SHX3_2 = SHX0_2.picture
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = tostring
    SHX4_2 = SHX0_2.picture
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = true
    SHX5_2 = SHX0_2.iconTypes
    SHX6_2 = SHX0_2.sender
    SHX7_2 = SHX0_2.title
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    goto SHX_LABEL_115
    -- [FIX IF ERROR] Move ::SHX_LABEL_67:: outside nested blocks until all 'goto SHX_LABEL_67' can see it
    ::SHX_LABEL_67::
    SHX1_2 = EndTextCommandThefeedPostMessagetext
    SHX2_2 = tostring
    SHX3_2 = SHX0_2.picture
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = tostring
    SHX4_2 = SHX0_2.picture
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = true
    SHX5_2 = 4
    SHX6_2 = SHX0_2.sender
    SHX7_2 = SHX0_2.title
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  else
    SHX1_2 = SHX0_2.iconTypes
    if 1 ~= SHX1_2 then
      SHX1_2 = SHX0_2.iconTypes
      if 2 ~= SHX1_2 then
        SHX1_2 = SHX0_2.iconTypes
        if 3 ~= SHX1_2 then
          SHX1_2 = SHX0_2.iconTypes
          if 7 ~= SHX1_2 then
            SHX1_2 = SHX0_2.iconTypes
            if 8 ~= SHX1_2 then
              SHX1_2 = SHX0_2.iconTypes
              if 9 ~= SHX1_2 then
                goto SHX_LABEL_107
              end
            end
          end
        end
      end
    end
    SHX1_2 = EndTextCommandThefeedPostMessagetext
    SHX2_2 = "CHAR_ALL_PLAYERS_CONF"
    SHX3_2 = "CHAR_ALL_PLAYERS_CONF"
    SHX4_2 = true
    SHX5_2 = SHX0_2.iconTypes
    SHX6_2 = SHX0_2.sender
    SHX7_2 = SHX0_2.title
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    goto SHX_LABEL_115
    -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
    ::SHX_LABEL_107::
    SHX1_2 = EndTextCommandThefeedPostMessagetext
    SHX2_2 = "CHAR_ALL_PLAYERS_CONF"
    SHX3_2 = "CHAR_ALL_PLAYERS_CONF"
    SHX4_2 = true
    SHX5_2 = 4
    SHX6_2 = SHX0_2.sender
    SHX7_2 = SHX0_2.title
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_115:: outside nested blocks until all 'goto SHX_LABEL_115' can see it
  ::SHX_LABEL_115::
  SHX1_2 = SHX0_2.sound
  if nil ~= SHX1_2 then
    SHX1_2 = SHX0_2.sound
    SHX1_2 = SHX1_2.audio_name
    if nil ~= SHX1_2 then
      SHX1_2 = SHX0_2.sound
      SHX1_2 = SHX1_2.audio_ref
      if nil ~= SHX1_2 then
        SHX1_2 = PlaySoundFrontend
        SHX2_2 = -1
        SHX3_2 = SHX0_2.sound
        SHX3_2 = SHX3_2.audio_name
        SHX4_2 = SHX0_2.sound
        SHX4_2 = SHX4_2.audio_ref
        SHX5_2 = true
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      else
        SHX1_2 = error
        SHX2_2 = "Missing arguments, audio_ref"
        SHX1_2(SHX2_2)
      end
    else
      SHX1_2 = error
      SHX2_2 = "Missing arguments, audio_name"
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = EndTextCommandThefeedPostTicker
  SHX2_2 = false
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX0_1.PopupChar = SHX1_1
SHX0_1 = RageUI
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = ClearPrints
  SHX1_2()
  SHX1_2 = BeginTextCommandPrint
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.message
  if nil ~= SHX1_2 then
    SHX1_2 = AddTextComponentSubstringPlayerName
    SHX2_2 = tostring
    SHX3_2 = SHX0_2.message
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  else
    SHX1_2 = error
    SHX2_2 = "Missing arguments, message"
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX0_2.time_display
  if nil ~= SHX1_2 then
    SHX1_2 = EndTextCommandPrint
    SHX2_2 = tonumber
    SHX3_2 = SHX0_2.time_display
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = 0
    end
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = EndTextCommandPrint
    SHX2_2 = 6000
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX0_2.sound
  if nil ~= SHX1_2 then
    SHX1_2 = SHX0_2.sound
    SHX1_2 = SHX1_2.audio_name
    if nil ~= SHX1_2 then
      SHX1_2 = SHX0_2.sound
      SHX1_2 = SHX1_2.audio_ref
      if nil ~= SHX1_2 then
        SHX1_2 = PlaySoundFrontend
        SHX2_2 = -1
        SHX3_2 = SHX0_2.sound
        SHX3_2 = SHX3_2.audio_name
        SHX4_2 = SHX0_2.sound
        SHX4_2 = SHX4_2.audio_ref
        SHX5_2 = true
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      else
        SHX1_2 = error
        SHX2_2 = "Missing arguments, audio_ref"
        SHX1_2(SHX2_2)
      end
    else
      SHX1_2 = error
      SHX2_2 = "Missing arguments, audio_name"
      SHX1_2(SHX2_2)
    end
  end
end
SHX0_1.Text = SHX1_1
