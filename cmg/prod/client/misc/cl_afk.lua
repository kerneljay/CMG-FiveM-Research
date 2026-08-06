-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = 900
SHX1_1 = true
SHX2_1 = false
SHX3_1 = 900
SHX4_1 = false
SHX5_1 = false
SHX6_1 = nil
function SHX7_1()
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = RequestScaleformMovie
    SHX1_3 = "mp_big_message_freemode"
    SHX0_3 = SHX0_3(SHX1_3)
    while true do
      SHX1_3 = HasScaleformMovieLoaded
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        break
      end
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
      while true do
        SHX1_3 = SHX2_1
        if not SHX1_3 then
          break
        end
        SHX1_3 = Citizen
        SHX1_3 = SHX1_3.Wait
        SHX2_3 = 0
        SHX1_3(SHX2_3)
        SHX1_3 = BeginScaleformMovieMethod
        SHX2_3 = SHX0_3
        SHX3_3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = _ENV
        SHX2_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX1_3 = SHX1_3[SHX2_3]
        SHX2_3 = "~r~WARNING"
        SHX1_3(SHX2_3)
        SHX1_3 = _ENV
        SHX2_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX1_3 = SHX1_3[SHX2_3]
        SHX2_3 = string
        SHX2_3 = SHX2_3.format
        SHX3_3 = "You will be set to AFK in %s seconds"
        SHX4_3 = SHX3_1
        SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX2_3(SHX3_3, SHX4_3)
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        SHX1_3 = ScaleformMovieMethodAddParamInt
        SHX2_3 = 5
        SHX1_3(SHX2_3)
        SHX1_3 = EndScaleformMovieMethod
        SHX1_3()
        SHX1_3 = DrawScaleformMovieFullscreen
        SHX2_3 = SHX0_3
        SHX3_3 = 255
        SHX4_3 = 255
        SHX5_3 = 255
        SHX6_3 = 255
        SHX7_3 = 0
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      end
    end
  end
  SHX0_2(SHX1_2)
end
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = DisableIdleCamera
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX1_2 = GetGameplayCamRot
      SHX2_2 = 2
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isEmergencyService
      SHX2_2 = SHX2_2()
      if not SHX2_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.isClientClockedOnOrganisation
        SHX2_2 = SHX2_2()
      end
      SHX3_2 = false
      SHX4_2 = GetRenderingCam
      SHX4_2 = SHX4_2()
      if -1 == SHX4_2 then
        SHX4_2 = IsControlPressed
        SHX5_2 = 0
        SHX6_2 = 249
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        if not SHX4_2 then
          goto SHX_LABEL_39
        end
      end
      SHX3_2 = true
      -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
      ::SHX_LABEL_39::
      SHX4_2 = SHX6_1
      if SHX1_2 == SHX4_2 and not SHX3_2 then
        SHX4_2 = SHX3_1
        if SHX4_2 > 0 then
          if SHX2_2 then
            SHX4_2 = SHX3_1
            SHX5_2 = 600
            if SHX4_2 < SHX5_2 then
              SHX4_2 = SHX4_1
              if not SHX4_2 then
                SHX4_2 = true
                SHX4_1 = SHX4_2
                SHX4_2 = TriggerServerEvent
                SHX5_2 = "2729884a22"
                SHX6_2 = "5 minutes"
                SHX4_2(SHX5_2, SHX6_2)
              end
            end
          end
          SHX4_2 = SHX3_1
          if 302 == SHX4_2 then
            SHX4_2 = false
            SHX4_1 = SHX4_2
          end
          SHX4_2 = SHX3_1
          if 301 == SHX4_2 then
            SHX4_2 = SHX4_1
            if not SHX4_2 and SHX2_2 then
              SHX4_2 = TriggerServerEvent
              SHX5_2 = "2729884a22"
              SHX6_2 = "10 minutes"
              SHX4_2(SHX5_2, SHX6_2)
              SHX4_2 = true
              SHX4_1 = SHX4_2
            end
          end
          SHX4_2 = SHX1_1
          if SHX4_2 then
            SHX4_2 = SHX3_1
            SHX5_2 = math
            SHX5_2 = SHX5_2.ceil
            SHX6_2 = SHX0_1
            SHX6_2 = SHX6_2 / 4
            SHX5_2 = SHX5_2(SHX6_2)
            if SHX4_2 == SHX5_2 then
              SHX4_2 = SHX7_1
              SHX4_2()
            end
          end
          SHX4_2 = SHX1_1
          if SHX4_2 then
            SHX4_2 = SHX3_1
            SHX5_2 = math
            SHX5_2 = SHX5_2.ceil
            SHX6_2 = SHX0_1
            SHX6_2 = SHX6_2 / 2
            SHX5_2 = SHX5_2(SHX6_2)
            if SHX4_2 == SHX5_2 then
              SHX4_2 = tCMG
              SHX4_2 = SHX4_2.notify
              SHX5_2 = string
              SHX5_2 = SHX5_2.format
              SHX6_2 = "~r~You will be set to AFK in: %s seconds"
              SHX7_2 = SHX3_1
              SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
              SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            end
          end
          SHX4_2 = SHX3_1
          SHX4_2 = SHX4_2 - 1
          SHX3_1 = SHX4_2
          SHX4_2 = true
          SHX2_1 = SHX4_2
        else
          SHX4_2 = SHX5_1
          if not SHX4_2 then
            if SHX2_2 then
              SHX4_2 = TriggerServerEvent
              SHX5_2 = "2729884a22"
              SHX6_2 = "15 minutes - Player set to AFK"
              SHX4_2(SHX5_2, SHX6_2)
              SHX4_2 = TriggerServerEvent
              SHX5_2 = "b2bd09d434"
              SHX4_2(SHX5_2)
            end
            SHX4_2 = true
            SHX5_1 = SHX4_2
          end
        end
      else
        SHX4_2 = SHX4_1
        if SHX4_2 and SHX2_2 then
          SHX4_2 = TriggerServerEvent
          SHX5_2 = "2729884a22"
          SHX6_2 = "No longer AFK - player moved again"
          SHX4_2(SHX5_2, SHX6_2)
          SHX4_2 = false
          SHX4_1 = SHX4_2
        end
        SHX4_2 = SHX5_1
        if SHX4_2 then
          SHX4_2 = TriggerServerEvent
          SHX5_2 = "5fee351479"
          SHX4_2(SHX5_2)
        end
        SHX4_2 = false
        SHX2_1 = SHX4_2
        SHX4_2 = SHX0_1
        SHX3_1 = SHX4_2
        SHX4_2 = false
        SHX5_1 = SHX4_2
      end
      SHX6_1 = SHX1_2
    end
    SHX1_2 = Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
  end
end
SHX8_1(SHX9_1)
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  return SHX0_2
end
SHX8_1.isClientAFK = SHX9_1
