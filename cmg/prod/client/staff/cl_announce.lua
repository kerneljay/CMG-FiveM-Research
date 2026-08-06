-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = false
SHX1_1 = RegisterNetEvent
SHX2_1 = "6bdd89917d"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX0_1 = SHX0_2
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RegisterNetEvent
SHX2_1 = "0be1483154"
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if nil ~= SHX0_2 then
    SHX3_2 = CreateThread
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      while true do
        SHX0_3 = SHX2_2
        if -1 == SHX0_3 then
          break
        end
        SHX0_3 = SHX2_2
        SHX0_3 = SHX0_3 - 1
        SHX2_2 = SHX0_3
        SHX0_3 = Wait
        SHX1_3 = 1000
        SHX0_3(SHX1_3)
      end
    end
    SHX3_2(SHX4_2)
    SHX3_2 = nil
    SHX4_2 = CreateThread
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      while true do
        SHX0_3 = SHX2_2
        if -1 == SHX0_3 then
          break
        end
        SHX0_3 = RequestScaleformMovie
        SHX1_3 = "MIDSIZED_MESSAGE"
        SHX0_3 = SHX0_3(SHX1_3)
        SHX3_2 = SHX0_3
        while true do
          SHX0_3 = HasScaleformMovieLoaded
          SHX1_3 = SHX3_2
          SHX0_3 = SHX0_3(SHX1_3)
          if SHX0_3 then
            break
          end
          SHX0_3 = Wait
          SHX1_3 = 0
          SHX0_3(SHX1_3)
        end
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX3_2
        SHX2_3 = "SHOW_SHARD_MIDSIZED_MESSAGE"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = SHX1_2
        if SHX0_3 then
          SHX0_3 = _ENV
          SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
          SHX0_3 = SHX0_3[SHX1_3]
          SHX1_3 = "~r~Scheduled Server Restart"
          SHX0_3(SHX1_3)
        else
          SHX0_3 = _ENV
          SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
          SHX0_3 = SHX0_3[SHX1_3]
          SHX1_3 = "~r~Unscheduled Server Restart"
          SHX0_3(SHX1_3)
        end
        SHX0_3 = SHX2_2
        if 0 ~= SHX0_3 then
          SHX0_3 = _ENV
          SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
          SHX0_3 = SHX0_3[SHX1_3]
          SHX1_3 = "In ~r~"
          SHX2_3 = SHX2_2
          SHX3_3 = "~s~ seconds!"
          SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
          SHX0_3(SHX1_3)
        else
          SHX0_3 = _ENV
          SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
          SHX0_3 = SHX0_3[SHX1_3]
          SHX1_3 = "~r~Restarting"
          SHX0_3(SHX1_3)
        end
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = Wait
        SHX1_3 = 1000
        SHX0_3(SHX1_3)
        SHX0_3 = SHX0_1
        if SHX0_3 then
          SHX0_3 = false
          SHX0_1 = SHX0_3
          return
        end
      end
    end
    SHX4_2(SHX5_2)
    SHX4_2 = CreateThread
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = Wait
      SHX1_3 = 200
      SHX0_3(SHX1_3)
      while true do
        SHX0_3 = SHX3_2
        if SHX0_3 then
          SHX0_3 = DrawScaleformMovieFullscreen
          SHX1_3 = SHX3_2
          SHX2_3 = 255
          SHX3_3 = 255
          SHX4_3 = 255
          SHX5_3 = 255
          SHX6_3 = 0
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        end
        SHX0_3 = SHX0_1
        if SHX0_3 then
          return
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX4_2(SHX5_2)
  end
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RegisterNetEvent
SHX2_1 = "3d47766955"
SHX1_1(SHX2_1)
SHX1_1 = AddEventHandler
SHX2_1 = "3d47766955"
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if nil ~= SHX0_2 then
    SHX1_2 = CreateThread
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      SHX0_3 = GetGameTimer
      SHX0_3 = SHX0_3()
      SHX1_3 = RequestScaleformMovie
      SHX2_3 = "MIDSIZED_MESSAGE"
      SHX1_3 = SHX1_3(SHX2_3)
      while true do
        SHX2_3 = HasScaleformMovieLoaded
        SHX3_3 = SHX1_3
        SHX2_3 = SHX2_3(SHX3_3)
        if SHX2_3 then
          break
        end
        SHX2_3 = Wait
        SHX3_3 = 0
        SHX2_3(SHX3_3)
      end
      SHX2_3 = BeginScaleformMovieMethod
      SHX3_3 = SHX1_3
      SHX4_3 = "SHOW_SHARD_MIDSIZED_MESSAGE"
      SHX2_3(SHX3_3, SHX4_3)
      SHX2_3 = _ENV
      SHX3_3 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX2_3 = SHX2_3[SHX3_3]
      SHX3_3 = "~y~CMG Announcement"
      SHX2_3(SHX3_3)
      SHX2_3 = _ENV
      SHX3_3 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX2_3 = SHX2_3[SHX3_3]
      SHX3_3 = SHX0_2
      SHX2_3(SHX3_3)
      SHX2_3 = ScaleformMovieMethodAddParamInt
      SHX3_3 = 5
      SHX2_3(SHX3_3)
      SHX2_3 = ScaleformMovieMethodAddParamBool
      SHX3_3 = true
      SHX2_3(SHX3_3)
      SHX2_3 = ScaleformMovieMethodAddParamBool
      SHX3_3 = false
      SHX2_3(SHX3_3)
      SHX2_3 = EndScaleformMovieMethod
      SHX2_3()
      while true do
        SHX2_3 = SHX0_3 + 6000
        SHX3_3 = GetGameTimer
        SHX3_3 = SHX3_3()
        if not (SHX2_3 > SHX3_3) then
          break
        end
        SHX2_3 = DrawScaleformMovieFullscreen
        SHX3_3 = SHX1_3
        SHX4_3 = 255
        SHX5_3 = 255
        SHX6_3 = 255
        SHX7_3 = 255
        SHX8_3 = 0
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
        SHX2_3 = Wait
        SHX3_3 = 0
        SHX2_3(SHX3_3)
      end
    end
    SHX1_2(SHX2_2)
  end
end
SHX1_1(SHX2_1, SHX3_1)
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX0_2 then
    SHX1_2 = #SHX0_2
    if 8 == SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  SHX1_2 = nil
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.sub
  SHX3_2 = 1
  SHX4_2 = 7
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if "LOOKOUT" ~= SHX1_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = tonumber
  SHX3_2 = SHX0_2
  SHX2_2 = SHX0_2.sub
  SHX4_2 = 8
  SHX5_2 = 8
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if not SHX1_2 or SHX1_2 < 1 or SHX1_2 > 5 then
    SHX2_2 = nil
    return SHX2_2
  end
  return SHX1_2
end
SHX2_1 = RegisterNetEvent
SHX3_1 = "d87daca74d"
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX4_2 = SHX1_1
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.isGangLookoutAlertDisabled
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      return
    end
  end
  if SHX4_2 then
    SHX0_2 = "LOOKOUT"
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.announceMpSmallMsg
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX3_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = CMG
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX4_2 = Scaleform
  SHX5_2 = "MIDSIZED_MESSAGE"
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX4_2.RunFunction
  SHX6_2 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  SHX7_2 = {}
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = false
  SHX12_2 = false
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX7_2[4] = SHX11_2
  SHX7_2[5] = SHX12_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = PlaySoundFrontend
  SHX6_2 = -1
  SHX7_2 = "CHECKPOINT_NORMAL"
  SHX8_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX9_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = false
  SHX6_2 = SetTimeout
  SHX7_2 = SHX3_2
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX5_2 = SHX0_3
  end
  SHX6_2(SHX7_2, SHX8_2)
  while not SHX5_2 do
    SHX6_2 = SHX4_2.Render2D
    SHX6_2()
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
end
SHX2_1.announceMpSmallMsg = SHX3_1
