-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = 3533.4428710938
SHX4_1 = 3713.8090820313
SHX5_1 = 36.17896270752
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.coords = SHX2_1
SHX1_1.radius = 150
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = 1459.3325195313
SHX5_1 = 6350.8974609375
SHX6_1 = 23.534168243408
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.coords = SHX3_1
SHX2_1.radius = 150
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 1359.7745361328
SHX6_1 = 4371.7626953125
SHX7_1 = 44.287654876709
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.coords = SHX4_1
SHX3_1.radius = 150
SHX4_1 = {}
SHX5_1 = vector3
SHX6_1 = 2506.5634765625
SHX7_1 = -390.224609375
SHX8_1 = 94.119445800781
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.coords = SHX5_1
SHX4_1.radius = 150
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = -1498.1591796875
SHX8_1 = -215.69320678711
SHX9_1 = 50.195583343506
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.coords = SHX6_1
SHX5_1.radius = 20
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = -3171.8498535156
SHX9_1 = 1085.7032470703
SHX10_1 = 20.838762283325
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.coords = SHX7_1
SHX6_1.radius = 45
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX1_1 = 0
function SHX2_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = true
  SHX4_2 = false
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    repeat
      SHX0_3 = SHX0_2
      if SHX0_3 > 0 then
        SHX0_3 = PlaySoundFrontend
        SHX1_3 = -1
        SHX2_3 = "3_2_1"
        SHX3_3 = "HUD_MINI_GAME_SOUNDSET"
        SHX4_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      else
        SHX0_3 = PlaySoundFrontend
        SHX1_3 = -1
        SHX2_3 = "Countdown_GO"
        SHX3_3 = "DLC_SR_TR_General_Sounds"
        SHX4_3 = false
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = ClearPedTasksImmediately
        SHX1_3 = SHX5_2
        SHX0_3(SHX1_3)
      end
      SHX0_3 = Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
      SHX0_3 = SHX0_2
      SHX0_3 = SHX0_3 - 1
      SHX0_2 = SHX0_3
      SHX0_3 = SHX4_2
      if SHX0_3 then
        SHX0_3 = -1
        SHX0_2 = SHX0_3
      end
      SHX0_3 = SHX0_2
    until -1 == SHX0_3
    SHX0_3 = SHX4_2
    if not SHX0_3 then
      SHX0_3 = DoScreenFadeOut
      SHX1_3 = 350
      SHX0_3(SHX1_3)
      SHX0_3 = Wait
      SHX1_3 = 500
      SHX0_3(SHX1_3)
      SHX0_3 = SetEntityCoords
      SHX1_3 = SHX5_2
      SHX2_3 = SHX2_2.x
      SHX3_3 = SHX2_2.y
      SHX4_3 = SHX2_2.z
      SHX4_3 = SHX4_3 + 1.5
      SHX5_3 = false
      SHX6_3 = false
      SHX7_3 = false
      SHX8_3 = false
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      SHX0_3 = Wait
      SHX1_3 = 500
      SHX0_3(SHX1_3)
      SHX0_3 = DoScreenFadeIn
      SHX1_3 = 500
      SHX0_3(SHX1_3)
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.notifyPicture
      SHX1_3 = "polnotification"
      SHX2_3 = "notification"
      SHX3_3 = [[
Attempting to telport to surface... 

If you are still not on the surface please use /calladmin.]]
      SHX4_3 = "CMG"
      SHX5_3 = "Utilities"
      SHX6_3 = nil
      SHX7_3 = nil
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = TriggerServerEvent
      SHX1_3 = "021f583c2c"
      SHX2_3 = SHX1_2
      SHX3_3 = SHX2_2
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    else
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.notifyPicture
      SHX1_3 = "polnotification"
      SHX2_3 = "notification"
      SHX3_3 = "You moved during the countdown so the teleportation was cancelled."
      SHX4_3 = "CMG"
      SHX5_3 = "Utilities"
      SHX6_3 = nil
      SHX7_3 = nil
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
    SHX0_3 = false
    SHX3_2 = SHX0_3
    SHX0_3 = false
    SHX4_2 = SHX0_3
  end
  SHX6_2(SHX7_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = Scaleform
    SHX1_3 = "mp_big_message_freemode"
    SHX0_3 = SHX0_3(SHX1_3)
    while true do
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
      SHX1_3 = IsControlJustReleased
      SHX2_3 = 0
      SHX3_3 = 73
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = true
        SHX4_2 = SHX1_3
        SHX1_3 = ClearPedTasksImmediately
        SHX2_3 = SHX5_2
        SHX1_3(SHX2_3)
      end
      SHX1_3 = SHX3_2
      if SHX1_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerCoords
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX1_2
        SHX2_3 = SHX1_3 - SHX2_3
        SHX2_3 = #SHX2_3
        SHX3_3 = 0.5
        if not (SHX2_3 < SHX3_3) then
          SHX2_3 = SHX2_2
          SHX2_3 = SHX1_3 - SHX2_3
          SHX2_3 = #SHX2_3
          SHX3_3 = 0.5
          if not (SHX2_3 < SHX3_3) then
            goto SHX_LABEL_107
          end
          SHX2_3 = SHX4_2
          if SHX2_3 then
            goto SHX_LABEL_107
          end
        end
        SHX2_3 = SHX0_2
        if SHX2_3 > -1 then
          SHX2_3 = DisablePlayerFiring
          SHX3_3 = PlayerId
          SHX3_3 = SHX3_3()
          SHX4_3 = true
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = DisableControlAction
          SHX3_3 = 1
          SHX4_3 = 140
          SHX5_3 = true
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX2_3 = DisableControlAction
          SHX3_3 = 1
          SHX4_3 = 141
          SHX5_3 = true
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX2_3 = DisableControlAction
          SHX3_3 = 1
          SHX4_3 = 142
          SHX5_3 = true
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX2_3 = SHX0_3.RunFunction
          SHX3_3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
          SHX4_3 = {}
          SHX5_3 = "~r~DONT MOVE"
          SHX6_3 = "You will be telported to the surface in "
          SHX7_3 = SHX0_2
          SHX8_3 = " seconds."
          SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
          SHX4_3[1] = SHX5_3
          SHX4_3[2] = SHX6_3
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = SHX0_3.Render2D
          SHX2_3()
          SHX2_3 = PlayerPedId
          SHX2_3 = SHX2_3()
          SHX5_2 = SHX2_3
          SHX2_3 = IsEntityPlayingAnim
          SHX3_3 = SHX5_2
          SHX4_3 = "timetable@amanda@ig_4"
          SHX5_3 = "ig_4_base"
          SHX6_3 = 3
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
          if not SHX2_3 then
            SHX2_3 = SHX4_2
            if not SHX2_3 then
              SHX2_3 = TaskPlayAnim
              SHX3_3 = SHX5_2
              SHX4_3 = "timetable@amanda@ig_4"
              SHX5_3 = "ig_4_base"
              SHX6_3 = 8.0
              SHX7_3 = -8.0
              SHX8_3 = -1
              SHX9_3 = 0
              SHX10_3 = 0.0
              SHX11_3 = false
              SHX12_3 = false
              SHX13_3 = false
              SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
            end
          end
        else
          do break end
          goto SHX_LABEL_161
          -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
          ::SHX_LABEL_107::
          SHX2_3 = DisablePlayerFiring
          SHX3_3 = PlayerId
          SHX3_3 = SHX3_3()
          SHX4_3 = true
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = DisableControlAction
          SHX3_3 = 1
          SHX4_3 = 140
          SHX5_3 = true
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX2_3 = DisableControlAction
          SHX3_3 = 1
          SHX4_3 = 141
          SHX5_3 = true
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX2_3 = DisableControlAction
          SHX3_3 = 1
          SHX4_3 = 142
          SHX5_3 = true
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          if SHX0_3 then
            SHX2_3 = BeginScaleformMovieMethod
            SHX3_3 = SHX0_3.Handle
            SHX4_3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
            SHX2_3(SHX3_3, SHX4_3)
            SHX2_3 = BeginTextCommandScaleformString
            SHX3_3 = "STRING"
            SHX2_3(SHX3_3)
            SHX2_3 = _ENV
            SHX3_3 = "ScaleformMovieMethodAddParamTextureNameString"
            SHX2_3 = SHX2_3[SHX3_3]
            SHX3_3 = "~r~CANCELLED"
            SHX2_3(SHX3_3)
            SHX2_3 = _ENV
            SHX3_3 = "ScaleformMovieMethodAddParamTextureNameString"
            SHX2_3 = SHX2_3[SHX3_3]
            SHX3_3 = "You moved during the countdown."
            SHX2_3(SHX3_3)
            SHX2_3 = EndTextCommandScaleformString
            SHX2_3()
            SHX2_3 = EndScaleformMovieMethod
            SHX2_3()
            SHX2_3 = DrawScaleformMovieFullscreen
            SHX3_3 = SHX0_3.Handle
            SHX4_3 = 255
            SHX5_3 = 255
            SHX6_3 = 255
            SHX7_3 = 255
            SHX8_3 = 0
            SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          end
          SHX2_3 = true
          SHX4_2 = SHX2_3
          break
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_161:: outside nested blocks until all 'goto SHX_LABEL_161' can see it
      ::SHX_LABEL_161::
    end
  end
  SHX6_2(SHX7_2)
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = ipairs
  SHX2_2 = SHX0_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.coords
    SHX7_2 = SHX0_2 - SHX7_2
    SHX7_2 = #SHX7_2
    SHX8_2 = SHX6_2.radius
    if SHX7_2 < SHX8_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = GetNthClosestVehicleNode
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.z
  SHX6_2 = 1
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCombatTimer
  SHX4_2 = SHX4_2()
  if SHX4_2 > 0 then
    SHX4_2 = false
    SHX5_2 = SHX3_2
    return SHX4_2, SHX5_2
  end
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX1_1
  SHX4_2 = SHX4_2 - SHX5_2
  SHX5_2 = 10000
  if SHX4_2 < SHX5_2 then
    SHX4_2 = false
    SHX5_2 = SHX3_2
    return SHX4_2, SHX5_2
  end
  SHX4_2 = vector3
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX3_2.z
  SHX5_2 = SHX1_2.z
  SHX4_2 = SHX3_1
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = GetRoomKeyFromEntity
  SHX5_2 = PlayerPedId
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = IsEntityInWater
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = IsPedInAnyVehicle
  SHX5_2 = SHX0_2
  SHX6_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX3_2 ~= SHX4_2 and SHX4_2
  SHX5_2 = SHX3_2
  return SHX4_2, SHX5_2
end
SHX5_1 = RegisterCommand
SHX6_1 = "unstuck"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX4_1
  SHX1_2, SHX2_2 = SHX1_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.inEvent
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    return
  end
  if not SHX1_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.notifyPicture
    SHX4_2 = "CHAR_BLOCKED"
    SHX5_2 = "CHAR_BLOCKED"
    SHX6_2 = "You are unable to use this right now. Use /calladmin if you still need assistance."
    SHX7_2 = "CMG"
    SHX8_2 = "Utilities"
    SHX9_2 = nil
    SHX10_2 = nil
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  else
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX1_1 = SHX3_2
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "timetable@amanda@ig_4"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX0_2
    SHX5_2 = "timetable@amanda@ig_4"
    SHX6_2 = "ig_4_base"
    SHX7_2 = 8.0
    SHX8_2 = -8.0
    SHX9_2 = -1
    SHX10_2 = 0
    SHX11_2 = 0.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "timetable@amanda@ig_4"
    SHX3_2(SHX4_2)
    SHX3_2 = Wait
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
    SHX3_2 = SHX2_1
    SHX4_2 = 45
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerCoords
    SHX5_2 = SHX5_2()
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX8_1 = false
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CPed"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityAttachedTo
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 == SHX0_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX6_1 = false
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inEvent
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCombatTimer
    SHX0_2 = SHX0_2()
    SHX0_2 = SHX3_1
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerVehicle
      SHX0_2 = SHX0_2()
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX1_1
      SHX0_2 = SHX0_2 - SHX1_2
      SHX1_2 = 10000
      SHX0_2 = SHX5_1
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = GetEntityAttachedTo
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2)
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.inOrganHesit
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isPlayingEmote
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            SHX0_2 = globalInPrison
            if not SHX0_2 then
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.canAnim
              SHX0_2 = SHX0_2()
              SHX0_2 = SHX0_2 > 0 or SHX0_2
            end
          end
        end
      end
    end
  end
  return SHX0_2
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 3000
    if not (SHX1_2 < SHX2_2) then
      break
    end
    SHX1_2 = SHX7_1
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = false
      return SHX1_2
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = true
  return SHX1_2
end
SHX9_1 = RegisterCommand
SHX10_1 = "reset"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = notify
    SHX1_2 = "~r~Command in progress, please wait."
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = true
  SHX6_1 = SHX0_2
  SHX0_2 = notify
  SHX1_2 = "~y~Please wait 3 seconds..."
  SHX0_2(SHX1_2)
  SHX0_2 = SHX8_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.notifyPicture
    SHX1_2 = "CHAR_BLOCKED"
    SHX2_2 = "CHAR_BLOCKED"
    SHX3_2 = "You are unable to use this right now. Use /calladmin if you still need assistance."
    SHX4_2 = "CMG"
    SHX5_2 = "Utilities"
    SHX6_2 = nil
    SHX7_2 = nil
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  else
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = GetSelectedPedWeapon
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.teleport
    SHX4_2 = 254.61375427246
    SHX5_2 = 7424.9809570312
    SHX6_2 = 16.024713516235
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 200
    SHX3_2(SHX4_2)
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.teleport
    SHX4_2 = SHX0_2.x
    SHX5_2 = SHX0_2.y
    SHX6_2 = SHX0_2.z
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 100
    SHX3_2(SHX4_2)
    SHX3_2 = SetCurrentPedWeapon
    SHX4_2 = SHX1_2
    SHX5_2 = SHX2_2
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX0_2 = false
  SHX6_1 = SHX0_2
end
SHX12_1 = false
SHX9_1(SHX10_1, SHX11_1, SHX12_1)
