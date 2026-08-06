-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = CMG
SHX2_1 = SHX2_1.loadModule
SHX3_1 = "cfg/events/cfg_battleroyale"
SHX2_1 = SHX2_1(SHX3_1)
SHX3_1 = nil
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = {}
  SHX1_2 = {}
  SHX1_2.radius = 0.0
  SHX1_2.coords = nil
  SHX1_2.isActive = false
  SHX2_2 = {}
  SHX2_2.minutes = 2
  SHX2_2.seconds = 0
  SHX1_2.timeUntilNext = SHX2_2
  SHX1_2.numRounds = 0
  SHX0_2.gas = SHX1_2
  SHX1_2 = {}
  SHX1_2.plane = 0
  SHX2_2 = {}
  SHX1_2.lootBoxes = SHX2_2
  SHX2_2 = {}
  SHX1_2.armourPlates = SHX2_2
  SHX1_2.timer = 15
  SHX2_2 = {}
  SHX1_2.leaderboard = SHX2_2
  SHX0_2.data = SHX1_2
  SHX1_2 = {}
  SHX1_2.canExitPlane = false
  SHX1_2.isInWinnerScreen = false
  SHX1_2.hasJumped = false
  SHX0_2.player = SHX1_2
  SHX1_2 = {}
  SHX0_2.players = SHX1_2
  SHX0_2.isInPlaneTransition = false
  SHX0_2.planeCamera = 0
  SHX0_2.killPlane = false
  return SHX0_2
end
SHX5_1 = SHX4_1
SHX5_1 = SHX5_1()
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isSpectatingEvent
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.493
      SHX2_2 = 0.944
      SHX3_2 = 0.14
      SHX4_2 = 0.074
      SHX5_2 = 0
      SHX6_2 = 180
      SHX7_2 = 93
      SHX8_2 = 134
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = SHX5_1.data
      SHX0_2 = SHX0_2.timer
      if SHX0_2 > 0 then
        SHX0_2 = DrawAdvancedText
        SHX1_2 = 0.587
        SHX2_2 = 0.934
        SHX3_2 = 0.005
        SHX4_2 = 0.0028
        SHX5_2 = 0.971
        SHX6_2 = tostring
        SHX7_2 = SHX5_1.data
        SHX7_2 = SHX7_2.timer
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = 255
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 4
        SHX12_2 = 0
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      else
        SHX0_2 = DrawAdvancedText
        SHX1_2 = 0.587
        SHX2_2 = 0.934
        SHX3_2 = 0.005
        SHX4_2 = 0.0028
        SHX5_2 = 0.971
        SHX6_2 = "JUMP"
        SHX7_2 = 255
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 4
        SHX12_2 = 0
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      end
    end
  end
end
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
SHX8_1 = SHX6_1
SHX9_1 = "Battle Royale GUI"
SHX7_1(SHX8_1, SHX9_1)
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX5_1.player
  SHX0_2 = SHX0_2.isInWinnerScreen
  if SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.486
    SHX2_2 = 0.064
    SHX3_2 = 1.081
    SHX4_2 = 0.202
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.262
    SHX2_2 = 0.067
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.96599999999999
    SHX6_2 = "WINNER WINNER CHICKEN DINNER!"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.478
    SHX2_2 = 0.933
    SHX3_2 = 1.054
    SHX4_2 = 0.194
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.582
    SHX2_2 = 0.905
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.96599999999999
    SHX6_2 = "#1 "
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerName
    SHX8_2 = PlayerId
    SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2()
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = CursorInArea
    SHX1_2 = GetArea
    SHX2_2 = 0.092
    SHX3_2 = 0.925
    SHX4_2 = 0.154
    SHX5_2 = 0.096
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    if SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.092
      SHX2_2 = 0.925
      SHX3_2 = 0.154
      SHX4_2 = 0.096
      SHX5_2 = 100
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 174
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    else
      SHX0_2 = DrawRect
      SHX1_2 = 0.092
      SHX2_2 = 0.925
      SHX3_2 = 0.154
      SHX4_2 = 0.096
      SHX5_2 = 78
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 174
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.185
    SHX2_2 = 0.91
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.971
    SHX6_2 = "LEAVE"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX8_1 = CMG
SHX8_1 = SHX8_1.createThreadOnTick
SHX9_1 = SHX7_1
SHX10_1 = "Battle Royale Winner GUI"
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
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
    SHX2_2 = 3
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 4
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 5
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 6
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 329
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 1
    SHX2_2 = 329
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 2
    SHX2_2 = 239
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 2
    SHX2_2 = 240
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX5_1.player
    SHX0_2 = SHX0_2.canExitPlane
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Press ~INPUT_JUMP~ to exit the plane"
      SHX0_2(SHX1_2)
    end
    SHX0_2 = IsDisabledControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 22
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isSpectatingEvent
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = SHX5_1.player
        SHX0_2 = SHX0_2.canExitPlane
        if SHX0_2 then
          SHX0_2 = SHX5_1.player
          SHX0_2 = SHX0_2.hasJumped
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.setPlayerCanOpenLeaderboard
            SHX1_2 = true
            SHX0_2(SHX1_2)
            SHX0_2 = PlaySound
            SHX1_2 = -1
            SHX2_2 = "SELECT"
            SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX4_2 = false
            SHX5_2 = 0
            SHX6_2 = true
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            SHX0_2 = TaskLeaveVehicle
            SHX1_2 = PlayerPedId
            SHX1_2 = SHX1_2()
            SHX2_2 = SHX5_1.data
            SHX2_2 = SHX2_2.plane
            SHX3_2 = 0
            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
            SHX0_2 = SetEntityVisible
            SHX1_2 = PlayerPedId
            SHX1_2 = SHX1_2()
            SHX2_2 = true
            SHX3_2 = true
            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
            SHX0_2 = SHX5_1.player
            SHX0_2.hasJumped = true
            SHX0_2 = SetTimeout
            SHX1_2 = 2500
            function SHX2_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
              SHX0_3 = SetCamActive
              SHX1_3 = SHX5_1.planeCamera
              SHX2_3 = false
              SHX0_3(SHX1_3, SHX2_3)
              SHX0_3 = RenderScriptCams
              SHX1_3 = false
              SHX2_3 = false
              SHX3_3 = 0
              SHX4_3 = false
              SHX5_3 = false
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
              SHX0_3 = DestroyCam
              SHX1_3 = SHX5_1.planeCamera
              SHX2_3 = false
              SHX0_3(SHX1_3, SHX2_3)
              SHX0_3 = DeleteEntity
              SHX1_3 = SHX5_1.data
              SHX1_3 = SHX1_3.plane
              SHX0_3(SHX1_3)
              SHX0_3 = currentEvent
              SHX0_3 = SHX0_3.isActive
              if SHX0_3 then
                SHX0_3 = pairs
                SHX1_3 = GetActivePlayers
                SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX1_3()
                SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
                for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
                  SHX6_3 = PlayerId
                  SHX6_3 = SHX6_3()
                  if SHX5_3 ~= SHX6_3 then
                    SHX6_3 = NetworkConcealPlayer
                    SHX7_3 = SHX5_3
                    SHX8_3 = false
                    SHX9_3 = false
                    SHX6_3(SHX7_3, SHX8_3, SHX9_3)
                    SHX6_3 = SetEntityVisible
                    SHX7_3 = GetPlayerPed
                    SHX8_3 = SHX5_3
                    SHX7_3 = SHX7_3(SHX8_3)
                    SHX8_3 = true
                    SHX9_3 = true
                    SHX6_3(SHX7_3, SHX8_3, SHX9_3)
                  end
                end
              end
              SHX0_3 = SetTimeout
              SHX1_3 = 5000
              function SHX2_3()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_4, SHX1_4
                SHX0_4 = false
                SHX1_1 = SHX0_4
                SHX0_4 = MumbleSetActive
                SHX1_4 = true
                SHX0_4(SHX1_4)
              end
              SHX0_3(SHX1_3, SHX2_3)
              SHX0_3 = PlayerPedId
              SHX0_3 = SHX0_3()
              SHX1_3 = false
              while true do
                SHX2_3 = HasPedGotWeapon
                SHX3_3 = SHX0_3
                SHX4_3 = -72657034
                SHX5_3 = false
                SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
                if not SHX2_3 then
                  break
                end
                SHX2_3 = GetEntityHeightAboveGround
                SHX3_3 = SHX0_3
                SHX2_3 = SHX2_3(SHX3_3)
                if SHX2_3 > 10.0 then
                  SHX3_3 = HasEntityCollidedWithAnything
                  SHX4_3 = SHX0_3
                  SHX3_3 = SHX3_3(SHX4_3)
                  if not SHX3_3 then
                    SHX3_3 = IsPedInParachuteFreeFall
                    SHX4_3 = SHX0_3
                    SHX3_3 = SHX3_3(SHX4_3)
                    if SHX3_3 then
                      SHX3_3 = ApplyForceToEntity
                      SHX4_3 = SHX0_3
                      SHX5_3 = 1
                      SHX6_3 = 0.0
                      SHX7_3 = 25.0
                      SHX8_3 = 2.5
                      SHX9_3 = 0.0
                      SHX10_3 = 0.0
                      SHX11_3 = 0.0
                      SHX12_3 = 0
                      SHX13_3 = true
                      SHX14_3 = false
                      SHX15_3 = false
                      SHX16_3 = false
                      SHX17_3 = true
                      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
                    end
                  end
                end
                if SHX2_3 > 10.0 then
                  SHX3_3 = 250.0
                  if SHX2_3 < SHX3_3 then
                    SHX3_3 = IsPedInParachuteFreeFall
                    SHX4_3 = SHX0_3
                    SHX3_3 = SHX3_3(SHX4_3)
                    if SHX3_3 then
                      SHX3_3 = drawNativeNotification
                      SHX4_3 = "Press ~INPUT_PARACHUTE_DEPLOY~ to deploy your parachute."
                      SHX3_3(SHX4_3)
                      if SHX2_3 < 100.0 and not SHX1_3 then
                        SHX3_3 = SetControlNormal
                        SHX4_3 = 0
                        SHX5_3 = 144
                        SHX6_3 = 1.0
                        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
                        SHX1_3 = true
                      end
                    end
                  end
                end
                SHX3_3 = Citizen
                SHX3_3 = SHX3_3.Wait
                SHX4_3 = 0
                SHX3_3(SHX4_3)
              end
            end
            SHX0_2(SHX1_2, SHX2_2)
            SHX0_2 = false
            SHX0_1 = SHX0_2
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.showAllDisplays
            SHX1_2 = "battlegrounds"
            SHX0_2(SHX1_2)
          end
        end
      end
    end
  end
  SHX0_2 = SHX5_1.player
  SHX0_2 = SHX0_2.isInWinnerScreen
  if SHX0_2 then
    SHX0_2 = CursorInArea
    SHX1_2 = GetArea
    SHX2_2 = 0.092
    SHX3_2 = 0.925
    SHX4_2 = 0.154
    SHX5_2 = 0.096
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if SHX0_2 then
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          goto SHX_LABEL_165
        end
      end
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX5_1.player
      SHX0_2.isInWinnerScreen = false
      SHX0_2 = false
      SHX0_1 = SHX0_2
      SHX0_2 = SHX4_1
      SHX0_2 = SHX0_2()
      SHX5_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.showAllDisplays
      SHX1_2 = "battlegrounds"
      SHX0_2(SHX1_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_165:: outside nested blocks until all 'goto SHX_LABEL_165' can see it
  ::SHX_LABEL_165::
end
SHX9_1 = CMG
SHX9_1 = SHX9_1.createThreadOnTick
SHX10_1 = SHX8_1
SHX11_1 = "Battle Royale Clicks"
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "024a3022e5"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = SHX5_1.data
  SHX3_2 = table
  SHX3_2 = SHX3_2.copy
  SHX4_2 = SHX2_1.lootBoxes
  SHX4_2 = SHX4_2[SHX1_2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2.lootBoxes = SHX3_2
  SHX2_2 = SHX5_1.data
  SHX3_2 = table
  SHX3_2 = SHX3_2.copy
  SHX4_2 = SHX2_1.armourPlates
  SHX4_2 = SHX4_2[SHX1_2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2.armourPlates = SHX3_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = -1422265815
  SHX2_2(SHX3_2)
  SHX2_2 = pairs
  SHX3_2 = SHX5_1.data
  SHX3_2 = SHX3_2.lootBoxes
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.coords
    SHX9_2 = SHX5_1.gas
    SHX9_2 = SHX9_2.coords
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = #SHX8_2
    SHX9_2 = SHX5_1.gas
    SHX9_2 = SHX9_2.radius
    SHX9_2 = SHX9_2 / 2
    if SHX8_2 < SHX9_2 then
      SHX8_2 = SHX5_1.data
      SHX8_2 = SHX8_2.lootBoxes
      SHX8_2 = SHX8_2[SHX6_2]
      SHX9_2 = "cmgbr_lootbox_"
      SHX10_2 = SHX6_2
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX8_2.areaId = SHX9_2
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.setNamedBlip
      SHX9_2 = "cmgbr_lootbox_"
      SHX10_2 = SHX6_2
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX10_2 = SHX7_2.coords
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX7_2.coords
      SHX11_2 = SHX11_2.y
      SHX12_2 = SHX7_2.coords
      SHX12_2 = SHX12_2.z
      SHX13_2 = 478
      SHX14_2 = 1
      SHX15_2 = "Lootbox"
      SHX16_2 = 0.5
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      function SHX8_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
        SHX1_3 = SHX5_1.data
        SHX1_3 = SHX1_3.lootBoxes
        SHX2_3 = SHX0_3.box
        SHX1_3 = SHX1_3[SHX2_3]
        if SHX1_3 then
          SHX1_3 = SHX5_1.data
          SHX1_3 = SHX1_3.lootBoxes
          SHX2_3 = SHX0_3.box
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3 = SHX1_3.entity
          if nil == SHX1_3 then
            SHX1_3 = SHX5_1.data
            SHX1_3 = SHX1_3.lootBoxes
            SHX2_3 = SHX0_3.box
            SHX1_3 = SHX1_3[SHX2_3]
            SHX2_3 = CreateObject
            SHX3_3 = -1422265815
            SHX4_3 = SHX7_2.coords
            SHX4_3 = SHX4_3.x
            SHX5_3 = SHX7_2.coords
            SHX5_3 = SHX5_3.y
            SHX6_3 = SHX7_2.coords
            SHX6_3 = SHX6_3.z
            SHX7_3 = false
            SHX8_3 = false
            SHX9_3 = false
            SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
            SHX1_3.entity = SHX2_3
            SHX1_3 = DecorSetInt
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.lootBoxes
            SHX3_3 = SHX0_3.box
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX3_3 = "5f7af1c5ce"
            SHX5_3 = SHX0_3.box
            SHX4_3 = SHX0_2
            SHX4_3 = SHX4_3[SHX5_3]
            SHX1_3(SHX2_3, SHX3_3, SHX4_3)
            SHX1_3 = SetEntityHeading
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.lootBoxes
            SHX3_3 = SHX0_3.box
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX3_3 = 10.0
            SHX1_3(SHX2_3, SHX3_3)
            SHX1_3 = PlaceObjectOnGroundProperly
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.lootBoxes
            SHX3_3 = SHX0_3.box
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX1_3(SHX2_3)
            SHX1_3 = FreezeEntityPosition
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.lootBoxes
            SHX3_3 = SHX0_3.box
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX3_3 = true
            SHX1_3(SHX2_3, SHX3_3)
          end
        else
          SHX1_3 = print
          SHX2_3 = string
          SHX2_3 = SHX2_3.format
          SHX3_3 = "[CMG] lootbox with ID: %s is nil"
          SHX4_3 = SHX0_3.box
          SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX2_3(SHX3_3, SHX4_3)
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
        end
      end
      function SHX9_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3
        SHX1_3 = SHX5_1.data
        SHX1_3 = SHX1_3.lootBoxes
        SHX2_3 = SHX0_3.box
        SHX1_3 = SHX1_3[SHX2_3]
        if SHX1_3 then
          SHX1_3 = SHX5_1.data
          SHX1_3 = SHX1_3.lootBoxes
          SHX2_3 = SHX0_3.box
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3 = SHX1_3.entity
          if SHX1_3 then
            SHX1_3 = DoesEntityExist
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.lootBoxes
            SHX3_3 = SHX0_3.box
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX1_3 = SHX1_3(SHX2_3)
            if SHX1_3 then
              SHX1_3 = DeleteEntity
              SHX2_3 = SHX5_1.data
              SHX2_3 = SHX2_3.lootBoxes
              SHX3_3 = SHX0_3.box
              SHX2_3 = SHX2_3[SHX3_3]
              SHX2_3 = SHX2_3.entity
              SHX1_3(SHX2_3)
              SHX1_3 = SHX5_1.data
              SHX1_3 = SHX1_3.lootBoxes
              SHX2_3 = SHX6_2
              SHX1_3 = SHX1_3[SHX2_3]
              SHX1_3.entity = nil
            end
          end
        end
      end
      function SHX10_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "cmgbr_lootbox_"
      SHX13_2 = SHX6_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX7_2.coords
      SHX14_2 = 200.0
      SHX15_2 = 6
      SHX16_2 = SHX8_2
      SHX17_2 = SHX9_2
      SHX18_2 = SHX10_2
      SHX19_2 = {}
      SHX19_2.box = SHX6_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
  end
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = -1422265815
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = 701173564
  SHX2_2(SHX3_2)
  SHX2_2 = pairs
  SHX3_2 = SHX5_1.data
  SHX3_2 = SHX3_2.armourPlates
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.coords
    SHX9_2 = SHX5_1.gas
    SHX9_2 = SHX9_2.coords
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = #SHX8_2
    SHX9_2 = SHX5_1.gas
    SHX9_2 = SHX9_2.radius
    SHX9_2 = SHX9_2 / 2
    if SHX8_2 < SHX9_2 then
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.setNamedBlip
      SHX9_2 = "cmgbr_armour_"
      SHX10_2 = SHX6_2
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX10_2 = SHX7_2.coords
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX7_2.coords
      SHX11_2 = SHX11_2.y
      SHX12_2 = SHX7_2.coords
      SHX12_2 = SHX12_2.z
      SHX13_2 = 175
      SHX14_2 = 1
      SHX15_2 = "Lootbox"
      SHX16_2 = 0.5
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      function SHX8_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
        SHX1_3 = SHX5_1.data
        SHX1_3 = SHX1_3.armourPlates
        SHX2_3 = SHX0_3.plateId
        SHX1_3 = SHX1_3[SHX2_3]
        if SHX1_3 then
          SHX1_3 = SHX5_1.data
          SHX1_3 = SHX1_3.armourPlates
          SHX2_3 = SHX0_3.plateId
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3 = SHX1_3.entity
          if nil == SHX1_3 then
            SHX1_3 = SHX5_1.data
            SHX1_3 = SHX1_3.armourPlates
            SHX2_3 = SHX0_3.plateId
            SHX1_3 = SHX1_3[SHX2_3]
            SHX2_3 = CreateObject
            SHX3_3 = 701173564
            SHX4_3 = SHX7_2.coords
            SHX4_3 = SHX4_3.x
            SHX5_3 = SHX7_2.coords
            SHX5_3 = SHX5_3.y
            SHX6_3 = SHX7_2.coords
            SHX6_3 = SHX6_3.z
            SHX7_3 = false
            SHX8_3 = false
            SHX9_3 = false
            SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
            SHX1_3.entity = SHX2_3
            SHX1_3 = SetEntityHeading
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.armourPlates
            SHX3_3 = SHX0_3.plateId
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX3_3 = 10.0
            SHX1_3(SHX2_3, SHX3_3)
            SHX1_3 = PlaceObjectOnGroundProperly
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.armourPlates
            SHX3_3 = SHX0_3.plateId
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX1_3(SHX2_3)
            SHX1_3 = FreezeEntityPosition
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.armourPlates
            SHX3_3 = SHX0_3.plateId
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX3_3 = true
            SHX1_3(SHX2_3, SHX3_3)
          end
        else
          SHX1_3 = print
          SHX2_3 = string
          SHX2_3 = SHX2_3.format
          SHX3_3 = "[CMG Events] body armour with ID of %s is nil in table (onEnter)"
          SHX4_3 = SHX0_3.plateId
          SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX2_3(SHX3_3, SHX4_3)
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
        end
      end
      function SHX9_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3
        SHX1_3 = SHX5_1.data
        SHX1_3 = SHX1_3.armourPlates
        SHX2_3 = SHX0_3.plateId
        SHX1_3 = SHX1_3[SHX2_3]
        if SHX1_3 then
          SHX1_3 = SHX5_1.data
          SHX1_3 = SHX1_3.armourPlates
          SHX2_3 = SHX0_3.plateId
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3 = SHX1_3.entity
          if SHX1_3 then
            SHX1_3 = DoesEntityExist
            SHX2_3 = SHX5_1.data
            SHX2_3 = SHX2_3.armourPlates
            SHX3_3 = SHX0_3.plateId
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.entity
            SHX1_3 = SHX1_3(SHX2_3)
            if SHX1_3 then
              SHX1_3 = DeleteEntity
              SHX2_3 = SHX5_1.data
              SHX2_3 = SHX2_3.armourPlates
              SHX3_3 = SHX0_3.plateId
              SHX2_3 = SHX2_3[SHX3_3]
              SHX2_3 = SHX2_3.entity
              SHX1_3(SHX2_3)
              SHX1_3 = SHX5_1.data
              SHX1_3 = SHX1_3.armourPlates
              SHX2_3 = SHX0_3.plateId
              SHX1_3 = SHX1_3[SHX2_3]
              SHX1_3.entity = nil
            end
          end
        else
          SHX1_3 = print
          SHX2_3 = string
          SHX2_3 = SHX2_3.format
          SHX3_3 = "[CMG Events] body armour with ID of %s is nil in table (onLeave)"
          SHX4_3 = SHX0_3.plateId
          SHX2_3, SHX3_3, SHX4_3 = SHX2_3(SHX3_3, SHX4_3)
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        end
      end
      function SHX10_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
        SHX1_3 = SHX5_1.data
        SHX1_3 = SHX1_3.armourPlates
        SHX2_3 = SHX0_3.plateId
        SHX1_3 = SHX1_3[SHX2_3]
        if SHX1_3 then
          SHX1_3 = SHX0_3.distance
          SHX2_3 = 1.5
          if SHX1_3 <= SHX2_3 then
            SHX1_3 = SHX5_1.data
            SHX1_3 = SHX1_3.armourPlates
            SHX2_3 = SHX0_3.plateId
            SHX1_3 = SHX1_3[SHX2_3]
            SHX1_3 = SHX1_3.coords
            SHX2_3 = CMG
            SHX2_3 = SHX2_3.DrawText3D
            SHX3_3 = vector3
            SHX4_3 = SHX1_3.x
            SHX5_3 = SHX1_3.y
            SHX6_3 = SHX1_3.z
            SHX6_3 = SHX6_3 - 0.5
            SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
            SHX4_3 = "Press [E] to pickup armour."
            SHX5_3 = 0.2
            SHX2_3(SHX3_3, SHX4_3, SHX5_3)
            SHX2_3 = IsControlJustPressed
            SHX3_3 = 0
            SHX4_3 = 51
            SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
            if SHX2_3 then
              SHX2_3 = TriggerServerEvent
              SHX3_3 = "d1ee91a187"
              SHX4_3 = SHX0_3.plateId
              SHX2_3(SHX3_3, SHX4_3)
              SHX2_3 = SetPedComponentVariation
              SHX3_3 = PlayerPedId
              SHX3_3 = SHX3_3()
              SHX4_3 = 9
              SHX5_3 = 15
              SHX6_3 = 3
              SHX7_3 = 0
              SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
            end
          end
        end
      end
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "cmgbr_armour_"
      SHX13_2 = SHX6_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX7_2.coords
      SHX14_2 = 200.0
      SHX15_2 = 6
      SHX16_2 = SHX8_2
      SHX17_2 = SHX9_2
      SHX18_2 = SHX10_2
      SHX19_2 = {}
      SHX19_2.plateId = SHX6_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX11_2 = SHX5_1.data
      SHX11_2 = SHX11_2.armourPlates
      SHX11_2 = SHX11_2[SHX6_2]
      SHX12_2 = "cmgbr_armour_"
      SHX13_2 = SHX6_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX11_2.areaId = SHX12_2
    end
  end
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = 701173564
  SHX2_2(SHX3_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "1d514b8bc4"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeArea
  SHX2_2 = "cmgbr_lootbox_"
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeNamedBlip
  SHX2_2 = "cmgbr_lootbox_"
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX5_1.data
  SHX1_2 = SHX1_2.lootBoxes
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.entity
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX5_1.data
    SHX2_2 = SHX2_2.lootBoxes
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.entity
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX5_1.data
      SHX2_2 = SHX2_2.lootBoxes
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2.entity
      SHX1_2(SHX2_2)
      SHX1_2 = SHX5_1.data
      SHX1_2 = SHX1_2.lootBoxes
      SHX1_2 = SHX1_2[SHX0_2]
      SHX1_2.entity = nil
    end
  end
  SHX1_2 = SHX5_1.data
  SHX1_2 = SHX1_2.lootBoxes
  SHX1_2[SHX0_2] = nil
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "670a809e32"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeArea
  SHX2_2 = "cmgbr_armour_"
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeNamedBlip
  SHX2_2 = "cmgbr_armour_"
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX5_1.data
  SHX1_2 = SHX1_2.armourPlates
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX5_1.data
    SHX1_2 = SHX1_2.armourPlates
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2.entity
    if SHX1_2 then
      SHX1_2 = DoesEntityExist
      SHX2_2 = SHX5_1.data
      SHX2_2 = SHX2_2.armourPlates
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2.entity
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = DeleteEntity
        SHX2_2 = SHX5_1.data
        SHX2_2 = SHX2_2.armourPlates
        SHX2_2 = SHX2_2[SHX0_2]
        SHX2_2 = SHX2_2.entity
        SHX1_2(SHX2_2)
        SHX1_2 = SHX5_1.data
        SHX1_2 = SHX1_2.armourPlates
        SHX1_2 = SHX1_2[SHX0_2]
        SHX1_2.entity = nil
      end
    end
    SHX1_2 = SHX5_1.data
    SHX1_2 = SHX1_2.armourPlates
    SHX1_2[SHX0_2] = nil
  end
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX5_1.isInPlaneTransition = true
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideAllDisplays
  SHX1_2 = "battlegrounds"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX2_1.locations
  SHX1_2 = SHX3_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.planeStart
  SHX1_2 = SHX2_1.locations
  SHX2_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.planeHeading
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.spawnVehicle
  SHX3_2 = 368211810
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = SHX1_2
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = SetVehicleEngineOn
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SetPedIntoVehicle
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2
  SHX7_2 = -1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetEntityVisible
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetEntityHealth
  SHX5_2 = SHX3_2
  SHX6_2 = 200
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CreateCam
  SHX5_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_1.planeCamera = SHX4_2
  SHX4_2 = RenderScriptCams
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = 0
  SHX8_2 = true
  SHX9_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = ShakeCam
  SHX5_2 = SHX5_1.planeCamera
  SHX6_2 = "SKY_DIVING_SHAKE"
  SHX7_2 = 1.0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetCamShakeAmplitude
  SHX5_2 = SHX5_1.planeCamera
  SHX6_2 = 1.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetCamFov
  SHX5_2 = SHX5_1.planeCamera
  SHX6_2 = 25.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SendNUIMessage
  SHX5_2 = {}
  SHX5_2.transactionType = "planeintro"
  SHX4_2(SHX5_2)
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  while true do
    SHX5_2 = currentEvent
    if SHX5_2 then
      SHX5_2 = currentEvent
      SHX5_2 = SHX5_2.isActive
      if SHX5_2 then
        goto SHX_LABEL_99
      end
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.showAllDisplays
    SHX6_2 = "battlegrounds"
    SHX5_2(SHX6_2)
    SHX5_2 = DeleteEntity
    SHX6_2 = SHX2_2
    SHX5_2(SHX6_2)
    SHX5_2 = nil
    return SHX5_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_99:: outside nested blocks until all 'goto SHX_LABEL_99' can see it
    ::SHX_LABEL_99::
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    SHX5_2 = SHX5_2 / 3500
    if SHX5_2 > 1.0 then
      break
    end
    SHX6_2 = 1.0
    SHX6_2 = SHX6_2 - SHX5_2
    SHX6_2 = -60.0 * SHX6_2
    SHX6_2 = SHX6_2 + 2.0
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX2_2
    SHX9_2 = 0.0
    SHX10_2 = 25.0 * SHX5_2
    SHX11_2 = 90.0
    SHX10_2 = SHX11_2 - SHX10_2
    SHX11_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = SetCamCoord
    SHX9_2 = SHX5_1.planeCamera
    SHX10_2 = SHX7_2.x
    SHX11_2 = SHX7_2.y
    SHX12_2 = SHX7_2.z
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX8_2 = SetCamRot
    SHX9_2 = SHX5_1.planeCamera
    SHX10_2 = 90.0 * SHX5_2
    SHX11_2 = 90.0
    SHX10_2 = SHX11_2 - SHX10_2
    SHX11_2 = 0.0
    SHX12_2 = SHX1_2 + 180.0
    SHX13_2 = 2
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_2 = SHX5_2 - 0.65
    SHX8_2 = SHX8_2 * 5.0
    if SHX8_2 > 0.0 and SHX8_2 < 1.0 then
      SHX9_2 = SetCamFov
      SHX10_2 = SHX5_1.planeCamera
      SHX11_2 = 30.0 * SHX8_2
      SHX11_2 = 25.0 + SHX11_2
      SHX9_2(SHX10_2, SHX11_2)
    end
    SHX9_2 = Citizen
    SHX9_2 = SHX9_2.Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
  SHX5_2 = false
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  while true do
    SHX7_2 = currentEvent
    if SHX7_2 then
      SHX7_2 = currentEvent
      SHX7_2 = SHX7_2.isActive
      if SHX7_2 then
        goto SHX_LABEL_181
      end
    end
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.showAllDisplays
    SHX8_2 = "battlegrounds"
    SHX7_2(SHX8_2)
    SHX7_2 = DeleteEntity
    SHX8_2 = SHX2_2
    SHX7_2(SHX8_2)
    SHX7_2 = nil
    return SHX7_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_181:: outside nested blocks until all 'goto SHX_LABEL_181' can see it
    ::SHX_LABEL_181::
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX7_2 = SHX7_2 - SHX6_2
    SHX8_2 = SHX7_2 / 2500
    if SHX8_2 > 1.0 then
      break
    end
    if not SHX5_2 then
      SHX9_2 = 2250
      if SHX7_2 >= SHX9_2 then
        SHX9_2 = DoScreenFadeOut
        SHX10_2 = 250
        SHX9_2(SHX10_2)
        SHX5_2 = true
      end
    end
    SHX9_2 = GetOffsetFromEntityInWorldCoords
    SHX10_2 = SHX2_2
    SHX11_2 = 0.0
    SHX12_2 = 25.0 * SHX8_2
    SHX13_2 = 65.0
    SHX12_2 = SHX13_2 - SHX12_2
    SHX13_2 = 2.0
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SetCamCoord
    SHX11_2 = SHX5_1.planeCamera
    SHX12_2 = SHX9_2.x
    SHX13_2 = SHX9_2.y
    SHX14_2 = SHX9_2.z
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX10_2 = SetCamFov
    SHX11_2 = SHX5_1.planeCamera
    SHX12_2 = 40.0 * SHX8_2
    SHX13_2 = 55.0
    SHX12_2 = SHX13_2 - SHX12_2
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = Citizen
    SHX10_2 = SHX10_2.Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.Wait
  SHX8_2 = 2000
  SHX7_2(SHX8_2)
  SHX7_2 = DoScreenFadeIn
  SHX8_2 = 250
  SHX7_2(SHX8_2)
  SHX7_2 = currentEvent
  if SHX7_2 then
    SHX7_2 = currentEvent
    SHX7_2 = SHX7_2.isActive
    if SHX7_2 then
      goto SHX_LABEL_250
    end
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.showAllDisplays
  SHX8_2 = "battlegrounds"
  SHX7_2(SHX8_2)
  SHX7_2 = DeleteEntity
  SHX8_2 = SHX2_2
  SHX7_2(SHX8_2)
  SHX7_2 = nil
  return SHX7_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_250:: outside nested blocks until all 'goto SHX_LABEL_250' can see it
  ::SHX_LABEL_250::
  SHX7_2 = ShakeCam
  SHX8_2 = SHX5_1.planeCamera
  SHX9_2 = "HAND_SHAKE"
  SHX10_2 = 0.5
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetCamShakeAmplitude
  SHX8_2 = SHX5_1.planeCamera
  SHX9_2 = 0.5
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SendNUIMessage
  SHX8_2 = {}
  SHX8_2.transactionType = "planeoutro"
  SHX7_2(SHX8_2)
  SHX5_1.isInPlaneTransition = false
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.CreateThread
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    while true do
      SHX1_3 = SHX5_1
      if SHX1_3 then
        SHX1_3 = SHX5_1.killPlane
        if SHX1_3 then
          SHX1_3 = FreezeEntityPosition
          SHX2_3 = SHX2_2
          SHX3_3 = false
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = nil
          return SHX1_3
        end
      end
      SHX1_3 = currentEvent
      if SHX1_3 then
        SHX1_3 = currentEvent
        SHX1_3 = SHX1_3.isActive
        if SHX1_3 then
          goto SHX_LABEL_27
        end
      end
      SHX1_3 = DeleteEntity
      SHX2_3 = SHX2_2
      SHX1_3(SHX2_3)
      SHX1_3 = nil
      return SHX1_3
      -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
      ::SHX_LABEL_27::
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX1_3 = SHX1_3 / 1500
      if SHX1_3 <= 1.0 then
        SHX2_3 = SetCamFov
        SHX3_3 = SHX5_1.planeCamera
        SHX4_3 = 50.0 * SHX1_3
        SHX4_3 = 20.0 + SHX4_3
        SHX2_3(SHX3_3, SHX4_3)
      else
        SHX2_3 = SetCamFov
        SHX3_3 = SHX5_1.planeCamera
        SHX4_3 = 70.0
        SHX2_3(SHX3_3, SHX4_3)
      end
      SHX2_3 = GetEntityForwardVector
      SHX3_3 = SHX2_2
      SHX2_3 = SHX2_3(SHX3_3)
      SHX3_3 = GetEntityCoords
      SHX4_3 = SHX2_2
      SHX5_3 = true
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
      SHX4_3 = SHX2_3 * 50.0
      SHX5_3 = GetFrameTime
      SHX5_3 = SHX5_3()
      SHX4_3 = SHX4_3 * SHX5_3
      SHX4_3 = SHX3_3 + SHX4_3
      SHX5_3 = SetEntityCoordsNoOffset
      SHX6_3 = SHX2_2
      SHX7_3 = SHX4_3.x
      SHX8_3 = SHX4_3.y
      SHX9_3 = SHX4_3.z
      SHX10_3 = true
      SHX11_3 = false
      SHX12_3 = false
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX5_3 = GetOffsetFromEntityInWorldCoords
      SHX6_3 = SHX2_2
      SHX7_3 = 0.0
      SHX8_3 = -50.0
      SHX9_3 = 45.0
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX6_3 = SetCamCoord
      SHX7_3 = SHX5_1.planeCamera
      SHX8_3 = SHX5_3.x
      SHX9_3 = SHX5_3.y
      SHX10_3 = SHX5_3.z
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
      SHX6_3 = PointCamAtEntity
      SHX7_3 = SHX5_1.planeCamera
      SHX8_3 = SHX2_2
      SHX9_3 = 0.0
      SHX10_3 = 0.0
      SHX11_3 = 0.0
      SHX12_3 = false
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX6_3 = Citizen
      SHX6_3 = SHX6_3.Wait
      SHX7_3 = 0
      SHX6_3(SHX7_3)
    end
  end
  SHX7_2(SHX8_2)
  return SHX2_2
end
SHX10_1 = CMG
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX10_1.isInBattleGroundsPlaneIntro = SHX11_1
SHX10_1 = RegisterNetEvent
SHX11_1 = "541b03f649"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = MumbleSetActive
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = true
  SHX1_1 = SHX1_2
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX3_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.startGas
  SHX2_2 = SHX2_1.locations
  SHX3_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.gas
  SHX2_2 = SHX2_2.initalRadius
  SHX3_2 = SHX2_1.locations
  SHX4_2 = SHX3_1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2.gas
  SHX3_2 = SHX3_2.centre
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 1500
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 1500
  SHX1_2(SHX2_2)
  SHX1_2 = currentEvent
  SHX1_2.minigameName = "Battle Royale"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hideAllDisplays
  SHX2_2 = "battlegrounds"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.stopEventSequence
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.giveWeapons
  SHX2_2 = {}
  SHX3_2 = {}
  SHX4_2 = 2
  SHX3_2[1] = SHX4_2
  SHX2_2.GADGET_PARACHUTE = SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = 1981688531
  SHX1_2(SHX2_2)
  SHX1_2 = SHX2_1.locations
  SHX2_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.planeStart
  SHX2_2 = SetEntityCoords
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = true
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = pairs
  SHX3_2 = GetActivePlayers
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2()
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = PlayerId
    SHX8_2 = SHX8_2()
    if SHX7_2 ~= SHX8_2 then
      SHX8_2 = NetworkConcealPlayer
      SHX9_2 = SHX7_2
      SHX10_2 = true
      SHX11_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = SetEntityVisible
      SHX9_2 = GetPlayerPed
      SHX10_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = false
      SHX11_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    end
  end
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 1500
  SHX2_2(SHX3_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX9_1
  SHX2_2 = SHX2_2()
  if nil == SHX2_2 then
    return
  end
  SHX3_2 = SHX5_1.data
  SHX3_2.plane = SHX2_2
  SHX3_2 = SHX0_1
  SHX3_2 = not SHX3_2
  SHX0_1 = SHX3_2
  SHX3_2 = Wait
  SHX4_2 = 1500
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX5_1.player
      SHX0_3 = SHX0_3.canExitPlane
      if SHX0_3 then
        break
      end
      SHX0_3 = currentEvent
      SHX0_3 = SHX0_3.isActive
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX5_1.data
      SHX1_3 = SHX5_1.data
      SHX1_3 = SHX1_3.timer
      SHX1_3 = SHX1_3 - 1
      SHX0_3.timer = SHX1_3
      SHX0_3 = Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2(SHX4_2)
  SHX3_2 = SetTimeout
  SHX4_2 = 15000
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = currentEvent
    SHX0_3 = SHX0_3.isActive
    if SHX0_3 then
      SHX0_3 = SHX5_1.player
      SHX0_3.canExitPlane = true
      SHX0_3 = SetTimeout
      SHX1_3 = 50000
      function SHX2_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4
        SHX0_4 = CMG
        SHX0_4 = SHX0_4.getPlayerVehicle
        SHX0_4 = SHX0_4()
        SHX1_4 = currentEvent
        SHX1_4 = SHX1_4.isActive
        if SHX1_4 then
          SHX1_4 = SHX5_1.data
          SHX1_4 = SHX1_4.plane
          if SHX1_4 == SHX0_4 then
            SHX1_4 = GetEntityCoords
            SHX2_4 = SHX5_1.data
            SHX2_4 = SHX2_4.plane
            SHX3_4 = true
            SHX1_4 = SHX1_4(SHX2_4, SHX3_4)
            SHX2_4 = AddExplosion
            SHX3_4 = SHX1_4.x
            SHX4_4 = SHX1_4.y
            SHX5_4 = SHX1_4.z
            SHX6_4 = 0
            SHX7_4 = 1.0
            SHX8_4 = true
            SHX9_4 = false
            SHX10_4 = 1.0
            SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4)
            SHX2_4 = SetEntityHealth
            SHX3_4 = PlayerPedId
            SHX3_4 = SHX3_4()
            SHX4_4 = 0
            SHX2_4(SHX3_4, SHX4_4)
            SHX5_1.killPlane = true
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3)
    end
  end
  SHX3_2(SHX4_2, SHX5_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = CMG
SHX10_1 = SHX10_1.registerMinigameCleanupHandler
SHX11_1 = "Battlegrounds"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = MumbleSetActive
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = currentEvent
  SHX0_2.isActive = false
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCanOpenLeaderboard
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX5_1.data
  SHX1_2 = SHX1_2.lootBoxes
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.areaId
    if SHX6_2 then
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeArea
      SHX7_2 = SHX5_2.areaId
      SHX6_2(SHX7_2)
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeNamedBlip
      SHX7_2 = SHX5_2.areaId
      SHX6_2(SHX7_2)
    end
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2.entity
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2.entity
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = SetCamActive
  SHX1_2 = SHX5_1.planeCamera
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 0
  SHX4_2 = false
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = DestroyCam
  SHX1_2 = SHX5_1.planeCamera
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = pairs
  SHX1_2 = SHX5_1.data
  SHX1_2 = SHX1_2.armourPlates
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.areaId
    if SHX6_2 then
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeArea
      SHX7_2 = SHX5_2.areaId
      SHX6_2(SHX7_2)
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeNamedBlip
      SHX7_2 = SHX5_2.areaId
      SHX6_2(SHX7_2)
    end
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2.entity
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2.entity
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = RemoveBlip
  SHX1_2 = SHX5_1.gas
  SHX1_2 = SHX1_2.blip
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = SHX5_1.player
  SHX0_2 = SHX0_2.isInWinnerScreen
  if not SHX0_2 then
    SHX0_2 = false
    SHX0_1 = SHX0_2
    SHX0_2 = SHX4_1
    SHX0_2 = SHX0_2()
    SHX5_1 = SHX0_2
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = CMG
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX5_1.gas
  SHX2_2.coords = SHX1_2
  SHX2_2 = SHX5_1.gas
  SHX2_2.radius = SHX0_2
  SHX2_2 = SHX5_1.gas
  SHX3_2 = AddBlipForRadius
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = SHX0_2 / 2.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2.blip = SHX3_2
  SHX2_2 = SetBlipColour
  SHX3_2 = SHX5_1.gas
  SHX3_2 = SHX3_2.blip
  SHX4_2 = 1
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipAlpha
  SHX3_2 = SHX5_1.gas
  SHX3_2 = SHX3_2.blip
  SHX4_2 = 155
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX5_1.gas
  SHX3_2 = SHX5_1.gas
  SHX3_2 = SHX3_2.isActive
  SHX3_2 = not SHX3_2
  SHX2_2.isActive = SHX3_2
end
SHX10_1.startGas = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.transactionType = "br-gas"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX5_1.gas
  SHX2_2 = SHX5_1.gas
  SHX2_2 = SHX2_2.numRounds
  SHX2_2 = SHX2_2 + 1
  SHX1_2.numRounds = SHX2_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.max
  SHX2_2 = 30
  SHX3_2 = SHX5_1.gas
  SHX3_2 = SHX3_2.numRounds
  SHX3_2 = SHX3_2 * 15
  SHX4_2 = 120
  SHX3_2 = SHX4_2 - SHX3_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SHX5_1.gas
  SHX3_2 = {}
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX1_2 / 60
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2.minutes = SHX4_2
  SHX4_2 = SHX1_2 % 60
  SHX3_2.seconds = SHX4_2
  SHX2_2.timeUntilNext = SHX3_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.announceMpBigMsg
  SHX3_2 = "~r~GAS MOVING"
  SHX4_2 = "The gas is closing in!"
  SHX5_2 = 5000
  SHX6_2 = nil
  SHX7_2 = nil
  SHX8_2 = vector2
  SHX9_2 = 0.5
  SHX10_2 = 0.2
  SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = Wait
  SHX3_2 = 4000
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    while true do
      SHX0_3 = SHX5_1.gas
      SHX0_3 = SHX0_3.isActive
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX5_1.gas
      SHX0_3 = SHX0_3.radius
      SHX1_3 = tonumber
      SHX2_3 = SHX0_2
      SHX1_3 = SHX1_3(SHX2_3)
      if not (SHX0_3 > SHX1_3) then
        break
      end
      SHX0_3 = currentEvent
      SHX0_3 = SHX0_3.isActive
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX5_1.gas
      SHX1_3 = SHX5_1.gas
      SHX1_3 = SHX1_3.radius
      SHX2_3 = SHX5_1.gas
      SHX2_3 = SHX2_3.radius
      SHX2_3 = SHX2_3 * 0.008
      SHX3_3 = GetFrameTime
      SHX3_3 = SHX3_3()
      SHX2_3 = SHX2_3 * SHX3_3
      SHX1_3 = SHX1_3 - SHX2_3
      SHX0_3.radius = SHX1_3
      SHX0_3 = RemoveBlip
      SHX1_3 = SHX5_1.gas
      SHX1_3 = SHX1_3.blip
      SHX0_3(SHX1_3)
      SHX0_3 = SHX5_1.gas
      SHX1_3 = AddBlipForRadius
      SHX2_3 = SHX5_1.gas
      SHX2_3 = SHX2_3.coords
      SHX2_3 = SHX2_3.x
      SHX3_3 = SHX5_1.gas
      SHX3_3 = SHX3_3.coords
      SHX3_3 = SHX3_3.y
      SHX4_3 = SHX5_1.gas
      SHX4_3 = SHX4_3.coords
      SHX4_3 = SHX4_3.z
      SHX5_3 = SHX5_1.gas
      SHX5_3 = SHX5_3.radius
      SHX5_3 = SHX5_3 / 2.0
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3.blip = SHX1_3
      SHX0_3 = SetBlipColour
      SHX1_3 = SHX5_1.gas
      SHX1_3 = SHX1_3.blip
      SHX2_3 = 1
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = SetBlipAlpha
      SHX1_3 = SHX5_1.gas
      SHX1_3 = SHX1_3.blip
      SHX2_3 = 155
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX2_2(SHX3_2)
end
SHX10_1.changeGasRadius = SHX11_1
SHX10_1 = CMG
SHX10_1 = SHX10_1.createThreadOnTick
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX0_2 = SHX5_1.gas
  SHX0_2 = SHX0_2.isActive
  if SHX0_2 then
    SHX0_2 = SHX5_1.gas
    SHX0_2 = SHX0_2.radius
    SHX1_2 = 1800.0
    if SHX0_2 >= SHX1_2 then
      SHX0_2 = SHX0_2 - 17.5
    else
      SHX1_2 = 1400.0
      if SHX0_2 >= SHX1_2 then
        SHX0_2 = SHX0_2 - 15.0
      else
        SHX1_2 = 1000
        if SHX0_2 >= SHX1_2 then
          SHX0_2 = SHX0_2 - 12.5
        else
          SHX1_2 = 600
          if SHX0_2 >= SHX1_2 then
            SHX0_2 = SHX0_2 - 10.0
          else
            SHX1_2 = 250
            if SHX0_2 >= SHX1_2 then
              SHX0_2 = SHX0_2 - 5.0
            end
          end
        end
      end
    end
    SHX1_2 = DrawMarker
    SHX2_2 = 1
    SHX3_2 = SHX5_1.gas
    SHX3_2 = SHX3_2.coords
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX5_1.gas
    SHX4_2 = SHX4_2.coords
    SHX4_2 = SHX4_2.y
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX9_2 = 1.0
    SHX10_2 = 1.0
    SHX11_2 = 1.0
    SHX12_2 = SHX0_2
    SHX13_2 = SHX0_2
    SHX14_2 = 6000.0
    SHX15_2 = 255
    SHX16_2 = 0
    SHX17_2 = 0
    SHX18_2 = 155
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = 2
    SHX22_2 = false
    SHX23_2 = nil
    SHX24_2 = nil
    SHX25_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  end
end
SHX12_1 = "Battle Royale Gas Marker"
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = {}
SHX10_1[1] = "1st"
SHX10_1[2] = "2nd"
SHX10_1[3] = "3rd"
SHX11_1 = {}
SHX11_1[1] = 4
SHX11_1[2] = 3
SHX11_1[3] = 2
SHX12_1 = {}
SHX12_1[1] = "~HUD_COLOUR_GOLD~"
SHX12_1[2] = "~HUD_COLOUR_SILVER~"
SHX12_1[3] = "~HUD_COLOUR_BRONZE~"
SHX13_1 = CMG
SHX13_1 = SHX13_1.createThreadOnTick
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = currentEvent
  SHX0_2 = SHX0_2.isActive
  if SHX0_2 then
    SHX0_2 = currentEvent
    SHX0_2 = SHX0_2.minigameName
    if "Battle Royale" == SHX0_2 then
      SHX0_2 = SHX5_1
      if SHX0_2 then
        SHX0_2 = SHX5_1.isInPlaneTransition
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.createTimerBars
          SHX0_2 = SHX0_2()
          SHX1_2 = SHX0_2.push
          SHX2_2 = "~y~GAS:~w~"
          SHX3_2 = string
          SHX3_2 = SHX3_2.format
          SHX4_2 = "~y~%02d:%02d"
          SHX5_2 = SHX5_1.gas
          SHX5_2 = SHX5_2.timeUntilNext
          SHX5_2 = SHX5_2.minutes
          SHX6_2 = SHX5_1.gas
          SHX6_2 = SHX6_2.timeUntilNext
          SHX6_2 = SHX6_2.seconds
          SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          SHX1_2 = 3
          SHX2_2 = 1
          SHX3_2 = -1
          for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
            SHX5_2 = SHX5_1.data
            SHX5_2 = SHX5_2.leaderboard
            SHX5_2 = SHX5_2[SHX4_2]
            if SHX5_2 then
              SHX5_2 = SHX0_2.push
              SHX6_2 = SHX12_1
              SHX6_2 = SHX6_2[SHX4_2]
              SHX7_2 = SHX10_1
              SHX7_2 = SHX7_2[SHX4_2]
              SHX8_2 = " "
              SHX9_2 = SHX5_1.data
              SHX9_2 = SHX9_2.leaderboard
              SHX9_2 = SHX9_2[SHX4_2]
              SHX9_2 = SHX9_2.name
              SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2
              SHX7_2 = SHX12_1
              SHX7_2 = SHX7_2[SHX4_2]
              SHX8_2 = SHX5_1.data
              SHX8_2 = SHX8_2.leaderboard
              SHX8_2 = SHX8_2[SHX4_2]
              SHX8_2 = SHX8_2.kills
              SHX7_2 = SHX7_2 .. SHX8_2
              SHX5_2(SHX6_2, SHX7_2)
            end
          end
          SHX1_2 = SHX0_2.draw
          SHX1_2()
        end
      end
    end
  end
end
SHX15_1 = "Battle Royale Timer Bars"
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = Citizen
SHX13_1 = SHX13_1.CreateThread
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX5_1.gas
    SHX0_2 = SHX0_2.isActive
    if SHX0_2 then
      SHX0_2 = SHX5_1.gas
      SHX0_2 = SHX0_2.timeUntilNext
      SHX0_2 = SHX0_2.seconds
      if SHX0_2 > 0 then
        SHX0_2 = SHX5_1.gas
        SHX0_2 = SHX0_2.timeUntilNext
        SHX1_2 = SHX5_1.gas
        SHX1_2 = SHX1_2.timeUntilNext
        SHX1_2 = SHX1_2.seconds
        SHX1_2 = SHX1_2 - 1
        SHX0_2.seconds = SHX1_2
      else
        SHX0_2 = SHX5_1.gas
        SHX0_2 = SHX0_2.timeUntilNext
        SHX0_2 = SHX0_2.seconds
        if 0 == SHX0_2 then
          SHX0_2 = SHX5_1.gas
          SHX0_2 = SHX0_2.timeUntilNext
          SHX0_2 = SHX0_2.minutes
          if 0 == SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.changeGasRadius
            SHX1_2 = SHX5_1.gas
            SHX1_2 = SHX1_2.radius
            SHX1_2 = SHX1_2 - 400
            SHX0_2(SHX1_2)
        end
        else
          SHX0_2 = SHX5_1.gas
          SHX0_2 = SHX0_2.timeUntilNext
          SHX0_2.seconds = 59
          SHX0_2 = SHX5_1.gas
          SHX0_2 = SHX0_2.timeUntilNext
          SHX1_2 = SHX5_1.gas
          SHX1_2 = SHX1_2.timeUntilNext
          SHX1_2 = SHX1_2.minutes
          SHX1_2 = SHX1_2 - 1
          SHX0_2.minutes = SHX1_2
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX13_1(SHX14_1)
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = sortedKeys
  SHX1_2 = SHX5_1.players
  function SHX2_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX5_1.players
    SHX2_3 = SHX2_3[SHX0_3]
    SHX2_3 = SHX2_3.kills
    SHX3_3 = SHX5_1.players
    SHX3_3 = SHX3_3[SHX1_3]
    SHX3_3 = SHX3_3.kills
    SHX2_3 = SHX2_3 > SHX3_3
    return SHX2_3
  end
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = 1
  SHX2_2 = 3
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX5_1.players
    SHX6_2 = SHX0_2[SHX4_2]
    SHX5_2 = SHX5_2[SHX6_2]
    if SHX5_2 then
      SHX5_2 = SHX5_1.players
      SHX6_2 = SHX0_2[SHX4_2]
      SHX5_2 = SHX5_2[SHX6_2]
      SHX5_2.leaderboardPos = SHX4_2
      SHX5_2 = SHX5_1.data
      SHX5_2 = SHX5_2.leaderboard
      SHX6_2 = SHX5_1.players
      SHX7_2 = SHX0_2[SHX4_2]
      SHX6_2 = SHX6_2[SHX7_2]
      SHX5_2[SHX4_2] = SHX6_2
    end
  end
end
SHX14_1 = RegisterNetEvent
SHX15_1 = "24b9d7db9c"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX5_1.players
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2 = SHX5_1.players
    SHX2_2 = SHX2_2[SHX0_2]
    SHX3_2 = SHX5_1.players
    SHX3_2 = SHX3_2[SHX0_2]
    SHX3_2 = SHX3_2.kills
    SHX3_2 = SHX3_2 + 1
    SHX2_2.kills = SHX3_2
  else
    SHX2_2 = SHX5_1.players
    SHX3_2 = {}
    SHX3_2.source = SHX0_2
    SHX3_2.name = SHX1_2
    SHX3_2.kills = 1
    SHX2_2[SHX0_2] = SHX3_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.updateScoreboard
  SHX3_2 = SHX0_2
  SHX4_2 = 5
  SHX5_2 = SHX5_1.players
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.kills
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SHX13_1
  SHX2_2()
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "8ec3705e18"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX5_1.players
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = table
    SHX1_2 = SHX1_2.copy
    SHX2_2 = SHX5_1.players
    SHX2_2 = SHX2_2[SHX0_2]
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = SHX5_1.players
    SHX2_2[SHX0_2] = nil
    SHX2_2 = SHX1_2.leaderboardPos
    if SHX2_2 then
      SHX2_2 = SHX5_1.data
      SHX2_2 = SHX2_2.leaderboard
      SHX3_2 = SHX1_2.leaderboardPos
      SHX2_2[SHX3_2] = nil
      SHX2_2 = SHX13_1
      SHX2_2()
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.removePlayerFromLeaderboard
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = Citizen
SHX14_1 = SHX14_1.CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = SHX5_1.gas
    SHX0_2 = SHX0_2.isActive
    if SHX0_2 then
      SHX0_2 = SHX5_1.player
      SHX0_2 = SHX0_2.hasJumped
      if SHX0_2 then
        SHX0_2 = IsPedInParachuteFreeFall
        SHX1_2 = PlayerPedId
        SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
        if not SHX0_2 then
          SHX0_2 = GetPedParachuteState
          SHX1_2 = PlayerPedId
          SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
          if SHX0_2 <= 2 then
            SHX0_2 = currentEvent
            SHX0_2 = SHX0_2.isActive
            if SHX0_2 then
              SHX0_2 = CMG
              SHX0_2 = SHX0_2.isSpectatingEvent
              SHX0_2 = SHX0_2()
              if not SHX0_2 then
                SHX0_2 = CMG
                SHX0_2 = SHX0_2.getPlayerCoords
                SHX0_2 = SHX0_2()
                SHX0_2 = SHX0_2.xy
                SHX1_2 = SHX5_1.gas
                SHX1_2 = SHX1_2.coords
                SHX1_2 = SHX1_2.xy
                SHX0_2 = SHX0_2 - SHX1_2
                SHX0_2 = #SHX0_2
                SHX1_2 = SHX5_1.gas
                SHX1_2 = SHX1_2.radius
                SHX1_2 = SHX1_2 / 2.0
                if SHX0_2 > SHX1_2 then
                  SHX0_2 = drawNativeText
                  SHX1_2 = "~r~You are in the gas. Get to the safe zone before you suffocate."
                  SHX0_2(SHX1_2)
                  SHX0_2 = PlayerPedId
                  SHX0_2 = SHX0_2()
                  SHX1_2 = GetEntityHealth
                  SHX2_2 = SHX0_2
                  SHX1_2 = SHX1_2(SHX2_2)
                  SHX2_2 = SetEntityHealth
                  SHX3_2 = SHX0_2
                  SHX4_2 = SHX1_2 - 3
                  SHX2_2(SHX3_2, SHX4_2)
                end
              end
            end
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
  end
end
SHX14_1(SHX15_1)
SHX14_1 = {}
SHX15_1 = CMG
SHX15_1 = SHX15_1.registerCommand
SHX16_1 = "editbrcoords"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = ""
    function SHX1_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      SHX1_3 = SHX0_2
      SHX2_3 = "vector3("
      SHX3_3 = tostring
      SHX4_3 = SHX0_3.x
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = ","
      SHX5_3 = tostring
      SHX6_3 = SHX0_3.y
      SHX5_3 = SHX5_3(SHX6_3)
      SHX6_3 = ","
      SHX7_3 = tostring
      SHX8_3 = SHX0_3.z
      SHX7_3 = SHX7_3(SHX8_3)
      SHX8_3 = "),\n"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3 .. SHX7_3 .. SHX8_3
      SHX0_2 = SHX1_3
    end
    SHX2_2 = pairs
    SHX3_2 = SHX14_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SetEntityCoordsNoOffset
      SHX9_2 = PlayerPedId
      SHX9_2 = SHX9_2()
      SHX10_2 = SHX7_2.x
      SHX11_2 = SHX7_2.y
      SHX12_2 = SHX7_2.z
      SHX13_2 = true
      SHX14_2 = false
      SHX15_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      while true do
        SHX8_2 = IsControlJustPressed
        SHX9_2 = 0
        SHX10_2 = 237
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        if SHX8_2 then
          SHX8_2 = print
          SHX9_2 = "Ignored: "
          SHX10_2 = tostring
          SHX11_2 = SHX6_2
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = "/"
          SHX12_2 = tostring
          SHX13_2 = SHX14_1
          SHX13_2 = #SHX13_2
          SHX12_2 = SHX12_2(SHX13_2)
          SHX10_2 = SHX10_2 .. SHX11_2 .. SHX12_2
          SHX8_2(SHX9_2, SHX10_2)
          SHX8_2 = SHX1_2
          SHX9_2 = SHX7_2
          SHX8_2(SHX9_2)
          break
        else
          SHX8_2 = IsControlJustPressed
          SHX9_2 = 0
          SHX10_2 = 238
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
          if SHX8_2 then
            SHX8_2 = print
            SHX9_2 = "Changed: "
            SHX10_2 = tostring
            SHX11_2 = SHX6_2
            SHX10_2 = SHX10_2(SHX11_2)
            SHX11_2 = "/"
            SHX12_2 = tostring
            SHX13_2 = SHX14_1
            SHX13_2 = #SHX13_2
            SHX12_2 = SHX12_2(SHX13_2)
            SHX10_2 = SHX10_2 .. SHX11_2 .. SHX12_2
            SHX8_2(SHX9_2, SHX10_2)
            SHX8_2 = SHX1_2
            SHX9_2 = CMG
            SHX9_2 = SHX9_2.getPlayerCoords
            SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX9_2()
            SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            break
          end
        end
        SHX8_2 = Citizen
        SHX8_2 = SHX8_2.Wait
        SHX9_2 = 0
        SHX8_2(SHX9_2)
      end
      SHX8_2 = Citizen
      SHX8_2 = SHX8_2.Wait
      SHX9_2 = 0
      SHX8_2(SHX9_2)
    end
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "8cd3730b86"
    SHX4_2 = SHX0_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX18_1 = false
SHX15_1(SHX16_1, SHX17_1, SHX18_1)
