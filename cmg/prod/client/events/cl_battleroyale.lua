--[[
    LEVEL 1 BEGINNER GUIDE — Battleroyale
    ==========================================

    File: cmg/prod/client/events/cl_battleroyale.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Battleroyale feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 36
      * Background threads: 0
      * Always-running loops: 9
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    IMPORTANT — decompiler temporary names have been normalized for readability.
      Names like workingValue12, text4, dataCollection7, stateFlag3, cmgOperation2,
      localValue1/localValue2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workingValue = GetEntityCoords
        dataCollection2 = workingValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      Temporary variables use conservative plain-English fallback names.
      Decompiled code can reuse one temporary for several purposes, so API calls
      and nearby comments explain the exact role at each point.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local stateFlag, stateFlag11, cmgOperation4, text5, workingValue5, workingValue6, workingValue8, cmgOperation5, cmgOperation6, cmgOperation7, text, text2, dataCollection, cmgOperation2, eventHandler, cmgOperation3, text4, workingValue, stateFlag10
stateFlag = false
stateFlag11 = false
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.loadModule
text5 = "cfg/events/cfg_battleroyale"
-- Beginner: result below is config.
cmgOperation4 = cmgOperation4(text5)
text5 = nil

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, dataCollection3
  localValue1 = {}
  localValue2 = {}
  localValue2.radius = 0.0
  localValue2.coords = nil
  localValue2.isActive = false
  dataCollection3 = {}
  dataCollection3.minutes = 2
  dataCollection3.seconds = 0
  localValue2.timeUntilNext = dataCollection3
  localValue2.numRounds = 0
  localValue1.gas = localValue2
  localValue2 = {}
  localValue2.plane = 0
  dataCollection3 = {}
  localValue2.lootBoxes = dataCollection3
  dataCollection3 = {}
  localValue2.armourPlates = dataCollection3
  localValue2.timer = 15
  dataCollection3 = {}
  localValue2.leaderboard = dataCollection3
  localValue1.data = localValue2
  localValue2 = {}
  localValue2.canExitPlane = false
  localValue2.isInWinnerScreen = false
  localValue2.hasJumped = false
  localValue1.player = localValue2
  localValue2 = {}
  localValue1.players = localValue2
  localValue1.isInPlaneTransition = false
  localValue1.planeCamera = 0
  localValue1.killPlane = false
  return localValue1
end
workingValue6 = workingValue5
workingValue6 = workingValue6()

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isSpectatingEvent
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = DrawRect
      localValue2 = 0.493
      dataCollection3 = 0.944
      number11 = 0.14
      number13 = 0.074
      number15 = 0
      stringHelper = 180
      number17 = 93
      number19 = 134
      localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19)
      localValue1 = workingValue6.data
      localValue1 = localValue1.timer
      if localValue1 > 0 then
        localValue1 = DrawAdvancedText
        localValue2 = 0.587
        dataCollection3 = 0.934
        number11 = 0.005
        number13 = 0.0028
        number15 = 0.971
        stringHelper = tostring
        number17 = workingValue6.data
        number17 = number17.timer
        stringHelper = stringHelper(number17)
        number17 = 255
        number19 = 255
        number20 = 255
        number = 255
        number3 = 4
        number4 = 0
        localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4)
      else
        localValue1 = DrawAdvancedText
        localValue2 = 0.587
        dataCollection3 = 0.934
        number11 = 0.005
        number13 = 0.0028
        number15 = 0.971
        stringHelper = "JUMP"
        number17 = 255
        number19 = 255
        number20 = 255
        number = 255
        number3 = 4
        number4 = 0
        localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4)
      end
    end
  end
end
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.createThreadOnTick
cmgOperation6 = workingValue8
cmgOperation7 = "Battle Royale GUI"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation5(cmgOperation6, cmgOperation7)

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4
  localValue1 = workingValue6.player
  localValue1 = localValue1.isInWinnerScreen
  if localValue1 then
    localValue1 = DrawRect
    localValue2 = 0.486
    dataCollection3 = 0.064
    number11 = 1.081
    number13 = 0.202
    number15 = 0
    stringHelper = 0
    number17 = 0
    number19 = 150
    localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19)
    localValue1 = DrawAdvancedText
    localValue2 = 0.262
    dataCollection3 = 0.067
    number11 = 0.005
    number13 = 0.0028
    number15 = 0.96599999999999
    stringHelper = "WINNER WINNER CHICKEN DINNER!"
    number17 = 255
    number19 = 255
    number20 = 255
    number = 255
    number3 = 6
    number4 = 0
    localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4)
    localValue1 = DrawRect
    localValue2 = 0.478
    dataCollection3 = 0.933
    number11 = 1.054
    number13 = 0.194
    number15 = 0
    stringHelper = 0
    number17 = 0
    number19 = 150
    localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19)
    localValue1 = DrawAdvancedText
    localValue2 = 0.582
    dataCollection3 = 0.905
    number11 = 0.005
    number13 = 0.0028
    number15 = 0.96599999999999
    stringHelper = "#1 "
    number17 = CMG
    number17 = number17.getPlayerName
    number19 = PlayerId
    number19, number20, number, number3, number4 = number19()
    number17 = number17(number19, number20, number, number3, number4)
    stringHelper = stringHelper .. number17
    number17 = 255
    number19 = 255
    number20 = 255
    number = 255
    number3 = 6
    number4 = 0
    localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4)
    localValue1 = CursorInArea
    localValue2 = GetArea
    dataCollection3 = 0.092
    number11 = 0.925
    number13 = 0.154
    number15 = 0.096
    localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4 = localValue2(dataCollection3, number11, number13, number15)
    localValue1 = localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4)
    if localValue1 then
      localValue1 = DrawRect
      localValue2 = 0.092
      dataCollection3 = 0.925
      number11 = 0.154
      number13 = 0.096
      number15 = 100
      stringHelper = 0
      number17 = 0
      number19 = 174
      localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19)
    else
      localValue1 = DrawRect
      localValue2 = 0.092
      dataCollection3 = 0.925
      number11 = 0.154
      number13 = 0.096
      number15 = 78
      stringHelper = 0
      number17 = 0
      number19 = 174
      localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19)
    end
    localValue1 = DrawAdvancedText
    localValue2 = 0.185
    dataCollection3 = 0.91
    number11 = 0.005
    number13 = 0.0028
    number15 = 0.971
    stringHelper = "LEAVE"
    number17 = 255
    number19 = 255
    number20 = 255
    number = 255
    number3 = 6
    number4 = 0
    localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4)
  end
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.createThreadOnTick
cmgOperation7 = cmgOperation5
text = "Battle Royale Winner GUI"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation6(cmgOperation7, text)

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = DisableAllControlActions
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = EnableControlAction
    localValue2 = 0
    dataCollection3 = 1
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 0
    dataCollection3 = 2
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 0
    dataCollection3 = 3
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 0
    dataCollection3 = 4
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 0
    dataCollection3 = 5
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 0
    dataCollection3 = 6
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 0
    dataCollection3 = 329
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 1
    dataCollection3 = 329
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 2
    dataCollection3 = 239
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = EnableControlAction
    localValue2 = 2
    dataCollection3 = 240
    number11 = true
    localValue1(localValue2, dataCollection3, number11)
    localValue1 = workingValue6.player
    localValue1 = localValue1.canExitPlane
    if localValue1 then
      localValue1 = drawNativeNotification
      localValue2 = "Press ~INPUT_JUMP~ to exit the plane"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue1(localValue2)
    end
    localValue1 = IsDisabledControlJustPressed
    localValue2 = 1
    dataCollection3 = 22
    localValue1 = localValue1(localValue2, dataCollection3)
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isSpectatingEvent
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = workingValue6.player
        localValue1 = localValue1.canExitPlane
        if localValue1 then
          localValue1 = workingValue6.player
          localValue1 = localValue1.hasJumped
          if not localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.setPlayerCanOpenLeaderboard
            localValue2 = true
            localValue1(localValue2)
            localValue1 = PlaySound
            localValue2 = -1
            dataCollection3 = "SELECT"
            number11 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            number13 = false
            number15 = 0
            stringHelper = true
            localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper)
            localValue1 = TaskLeaveVehicle
            localValue2 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            localValue2 = localValue2()
            dataCollection3 = workingValue6.data
            dataCollection3 = dataCollection3.plane
            number11 = 0
            localValue1(localValue2, dataCollection3, number11)
            localValue1 = SetEntityVisible
            localValue2 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            localValue2 = localValue2()
            dataCollection3 = true
            number11 = true
            localValue1(localValue2, dataCollection3, number11)
            localValue1 = workingValue6.player
            localValue1.hasJumped = true
            localValue1 = SetTimeout
            localValue2 = 2500

            -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
            function dataCollection3()
              local localValue12, localValue22, stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9
              localValue12 = SetCamActive
              localValue22 = workingValue6.planeCamera
              stateFlag16 = false
              localValue12(localValue22, stateFlag16)
              localValue12 = RenderScriptCams
              localValue22 = false
              stateFlag16 = false
              number12 = 0
              stateFlag17 = false
              stateFlag18 = false
              localValue12(localValue22, stateFlag16, number12, stateFlag17, stateFlag18)
              localValue12 = DestroyCam
              localValue22 = workingValue6.planeCamera
              stateFlag16 = false
              localValue12(localValue22, stateFlag16)
              localValue12 = DeleteEntity
              localValue22 = workingValue6.data
              localValue22 = localValue22.plane
              -- Beginner: Delete a GTA entity.
              localValue12(localValue22)
              localValue12 = currentEvent
              localValue12 = localValue12.isActive
              if localValue12 then
                localValue12 = pairs
                localValue22 = GetActivePlayers
                localValue22, stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9 = localValue22()
                localValue12, localValue22, stateFlag16, number12 = localValue12(localValue22, stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
                for stateFlag17, stateFlag18 in localValue12, localValue22, stateFlag16, number12 do
                  workingValue9 = PlayerId
                  -- Beginner: result below is localPlayerIndex.
                  workingValue9 = workingValue9()
                  if stateFlag18 ~= workingValue9 then
                    workingValue9 = NetworkConcealPlayer
                    playerPed2 = stateFlag18
                    stateFlag19 = false
                    stateFlag21 = false
                    workingValue9(playerPed2, stateFlag19, stateFlag21)
                    workingValue9 = SetEntityVisible
                    playerPed2 = GetPlayerPed
                    stateFlag19 = stateFlag18
                    -- Beginner: result below is playerPed.
                    playerPed2 = playerPed2(stateFlag19)
                    stateFlag19 = true
                    stateFlag21 = true
                    workingValue9(playerPed2, stateFlag19, stateFlag21)
                  end
                end
              end
              localValue12 = SetTimeout
              localValue22 = 5000

              -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
              function stateFlag16()
                local cmgOperation, stateFlag12
                cmgOperation = false
                stateFlag11 = cmgOperation
                cmgOperation = MumbleSetActive
                stateFlag12 = true
                cmgOperation(stateFlag12)
              end
              localValue12(localValue22, stateFlag16)
              localValue12 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue12 = localValue12()
              localValue22 = false
              while true do
                stateFlag16 = HasPedGotWeapon
                number12 = localValue12
                stateFlag17 = -72657034
                stateFlag18 = false
                stateFlag16 = stateFlag16(number12, stateFlag17, stateFlag18)
                if not stateFlag16 then
                  break
                end
                stateFlag16 = GetEntityHeightAboveGround
                number12 = localValue12
                stateFlag16 = stateFlag16(number12)
                if stateFlag16 > 10.0 then
                  number12 = HasEntityCollidedWithAnything
                  stateFlag17 = localValue12
                  number12 = number12(stateFlag17)
                  if not number12 then
                    number12 = IsPedInParachuteFreeFall
                    stateFlag17 = localValue12
                    number12 = number12(stateFlag17)
                    if number12 then
                      number12 = ApplyForceToEntity
                      stateFlag17 = localValue12
                      stateFlag18 = 1
                      workingValue9 = 0.0
                      playerPed2 = 25.0
                      stateFlag19 = 2.5
                      stateFlag21 = 0.0
                      stateFlag2 = 0.0
                      stateFlag3 = 0.0
                      stateFlag4 = 0
                      stateFlag5 = true
                      stateFlag6 = false
                      stateFlag7 = false
                      stateFlag8 = false
                      stateFlag9 = true
                      number12(stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
                    end
                  end
                end
                if stateFlag16 > 10.0 then
                  number12 = 250.0
                  if stateFlag16 < number12 then
                    number12 = IsPedInParachuteFreeFall
                    stateFlag17 = localValue12
                    number12 = number12(stateFlag17)
                    if number12 then
                      number12 = drawNativeNotification
                      stateFlag17 = "Press ~INPUT_PARACHUTE_DEPLOY~ to deploy your parachute."
                      -- Beginner: Show a GTA-style notification/help prompt.
                      number12(stateFlag17)
                      if stateFlag16 < 100.0 and not localValue22 then
                        number12 = SetControlNormal
                        stateFlag17 = 0
                        stateFlag18 = 144
                        workingValue9 = 1.0
                        number12(stateFlag17, stateFlag18, workingValue9)
                        localValue22 = true
                      end
                    end
                  end
                end
                number12 = Citizen
                number12 = number12.Wait
                stateFlag17 = 0
                number12(stateFlag17)
              end
            end
            localValue1(localValue2, dataCollection3)
            localValue1 = false
            stateFlag = localValue1
            localValue1 = CMG
            localValue1 = localValue1.showAllDisplays
            localValue2 = "battlegrounds"
            localValue1(localValue2)
          end
        end
      end
    end
  end
  localValue1 = workingValue6.player
  localValue1 = localValue1.isInWinnerScreen
  if localValue1 then
    localValue1 = CursorInArea
    localValue2 = GetArea
    dataCollection3 = 0.092
    number11 = 0.925
    number13 = 0.154
    number15 = 0.096
    localValue2, dataCollection3, number11, number13, number15, stringHelper = localValue2(dataCollection3, number11, number13, number15)
    localValue1 = localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper)
    if localValue1 then
      localValue1 = IsControlJustPressed
      localValue2 = 1
      dataCollection3 = 329
      localValue1 = localValue1(localValue2, dataCollection3)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        dataCollection3 = 329
        localValue1 = localValue1(localValue2, dataCollection3)
        if not localValue1 then
          goto continueAtStep165
        end
      end
      localValue1 = PlaySound
      localValue2 = -1
      dataCollection3 = "SELECT"
      number11 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      number13 = false
      number15 = 0
      stringHelper = true
      localValue1(localValue2, dataCollection3, number11, number13, number15, stringHelper)
      localValue1 = workingValue6.player
      localValue1.isInWinnerScreen = false
      localValue1 = false
      stateFlag = localValue1
      localValue1 = workingValue5
      localValue1 = localValue1()
      workingValue6 = localValue1
      localValue1 = CMG
      localValue1 = localValue1.showAllDisplays
      localValue2 = "battlegrounds"
      localValue1(localValue2)
    end
  end
  ::continueAtStep165::
end
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.createThreadOnTick
text = cmgOperation6
text2 = "Battle Royale Clicks"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation7(text, text2)
cmgOperation7 = RegisterNetEvent
text = "024a3022e5"
-- Beginner: this function handles network event "024a3022e5".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4, number5, number6, text3, number7, number8, number9, dataCollection2
  dataCollection3 = workingValue6.data
  number11 = table
  number11 = number11.copy
  number13 = cmgOperation4.lootBoxes
  number13 = number13[localValue2]
  number11 = number11(number13)
  dataCollection3.lootBoxes = number11
  dataCollection3 = workingValue6.data
  number11 = table
  number11 = number11.copy
  number13 = cmgOperation4.armourPlates
  number13 = number13[localValue2]
  number11 = number11(number13)
  dataCollection3.armourPlates = number11
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.loadModel
  number11 = -1422265815
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataCollection3(number11)
  dataCollection3 = pairs
  number11 = workingValue6.data
  number11 = number11.lootBoxes
  dataCollection3, number11, number13, number15 = dataCollection3(number11)
  for stringHelper, number17 in dataCollection3, number11, number13, number15 do
    number19 = number17.coords
    number20 = workingValue6.gas
    number20 = number20.coords
    number19 = number19 - number20
    number19 = #number19
    number20 = workingValue6.gas
    number20 = number20.radius
    number20 = number20 / 2
    if number19 < number20 then
      number19 = workingValue6.data
      number19 = number19.lootBoxes
      number19 = number19[stringHelper]
      number20 = "cmgbr_lootbox_"
      number = stringHelper
      number20 = number20 .. number
      number19.areaId = number20
      number19 = tCMG
      number19 = number19.setNamedBlip
      number20 = "cmgbr_lootbox_"
      number = stringHelper
      number20 = number20 .. number
      number = number17.coords
      number = number.x
      number3 = number17.coords
      number3 = number3.y
      number4 = number17.coords
      number4 = number4.z
      number5 = 478
      number6 = 1
      text3 = "Lootbox"
      number7 = 0.5
      number19(number20, number, number3, number4, number5, number6, text3, number7)

      -- === HELPER FUNCTION (decompiler name: number19; parameters: localValue12) ===
      function number19(localValue12)
        local localValue22, stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21
        localValue22 = workingValue6.data
        localValue22 = localValue22.lootBoxes
        stateFlag16 = localValue12.box
        localValue22 = localValue22[stateFlag16]
        if localValue22 then
          localValue22 = workingValue6.data
          localValue22 = localValue22.lootBoxes
          stateFlag16 = localValue12.box
          localValue22 = localValue22[stateFlag16]
          localValue22 = localValue22.entity
          if nil == localValue22 then
            localValue22 = workingValue6.data
            localValue22 = localValue22.lootBoxes
            stateFlag16 = localValue12.box
            localValue22 = localValue22[stateFlag16]
            stateFlag16 = CreateObject
            number12 = -1422265815
            stateFlag17 = number17.coords
            stateFlag17 = stateFlag17.x
            stateFlag18 = number17.coords
            stateFlag18 = stateFlag18.y
            workingValue9 = number17.coords
            workingValue9 = workingValue9.z
            playerPed2 = false
            stateFlag19 = false
            stateFlag21 = false
            -- Beginner: result below is objectEntity.
            stateFlag16 = stateFlag16(number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21)
            localValue22.entity = stateFlag16
            localValue22 = DecorSetInt
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.lootBoxes
            number12 = localValue12.box
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            number12 = "5f7af1c5ce"
            stateFlag18 = localValue12.box
            stateFlag17 = localValue1
            stateFlag17 = stateFlag17[stateFlag18]
            localValue22(stateFlag16, number12, stateFlag17)
            localValue22 = SetEntityHeading
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.lootBoxes
            number12 = localValue12.box
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            number12 = 10.0
            -- Beginner: Change the direction an entity is facing.
            localValue22(stateFlag16, number12)
            localValue22 = PlaceObjectOnGroundProperly
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.lootBoxes
            number12 = localValue12.box
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            localValue22(stateFlag16)
            localValue22 = FreezeEntityPosition
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.lootBoxes
            number12 = localValue12.box
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            number12 = true
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue22(stateFlag16, number12)
          end
        else
          localValue22 = print
          stateFlag16 = string
          stateFlag16 = stateFlag16.format
          number12 = "[CMG] lootbox with ID: %s is nil"
          stateFlag17 = localValue12.box
          stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21 = stateFlag16(number12, stateFlag17)
          localValue22(stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21)
        end
      end

      -- === HELPER FUNCTION (decompiler name: number20; parameters: localValue12) ===
      function number20(localValue12)
        local localValue22, stateFlag16, number12
        localValue22 = workingValue6.data
        localValue22 = localValue22.lootBoxes
        stateFlag16 = localValue12.box
        localValue22 = localValue22[stateFlag16]
        if localValue22 then
          localValue22 = workingValue6.data
          localValue22 = localValue22.lootBoxes
          stateFlag16 = localValue12.box
          localValue22 = localValue22[stateFlag16]
          localValue22 = localValue22.entity
          if localValue22 then
            localValue22 = DoesEntityExist
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.lootBoxes
            number12 = localValue12.box
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            localValue22 = localValue22(stateFlag16)
            if localValue22 then
              localValue22 = DeleteEntity
              stateFlag16 = workingValue6.data
              stateFlag16 = stateFlag16.lootBoxes
              number12 = localValue12.box
              stateFlag16 = stateFlag16[number12]
              stateFlag16 = stateFlag16.entity
              -- Beginner: Delete a GTA entity.
              localValue22(stateFlag16)
              localValue22 = workingValue6.data
              localValue22 = localValue22.lootBoxes
              stateFlag16 = stringHelper
              localValue22 = localValue22[stateFlag16]
              localValue22.entity = nil
            end
          end
        end
      end

      -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
      function number()
        local localValue12, localValue22
      end
      number3 = CMG
      number3 = number3.createArea
      number4 = "cmgbr_lootbox_"
      number5 = stringHelper
      number4 = number4 .. number5
      number5 = number17.coords
      number6 = 200.0
      text3 = 6
      number7 = number19
      number8 = number20
      number9 = number
      dataCollection2 = {}
      dataCollection2.box = stringHelper
      -- Beginner: Create an interaction area around a world position.
      number3(number4, number5, number6, text3, number7, number8, number9, dataCollection2)
    end
  end
  dataCollection3 = SetModelAsNoLongerNeeded
  number11 = -1422265815
  dataCollection3(number11)
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.loadModel
  number11 = 701173564
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataCollection3(number11)
  dataCollection3 = pairs
  number11 = workingValue6.data
  number11 = number11.armourPlates
  dataCollection3, number11, number13, number15 = dataCollection3(number11)
  for stringHelper, number17 in dataCollection3, number11, number13, number15 do
    number19 = number17.coords
    number20 = workingValue6.gas
    number20 = number20.coords
    number19 = number19 - number20
    number19 = #number19
    number20 = workingValue6.gas
    number20 = number20.radius
    number20 = number20 / 2
    if number19 < number20 then
      number19 = tCMG
      number19 = number19.setNamedBlip
      number20 = "cmgbr_armour_"
      number = stringHelper
      number20 = number20 .. number
      number = number17.coords
      number = number.x
      number3 = number17.coords
      number3 = number3.y
      number4 = number17.coords
      number4 = number4.z
      number5 = 175
      number6 = 1
      text3 = "Lootbox"
      number7 = 0.5
      number19(number20, number, number3, number4, number5, number6, text3, number7)

      -- === HELPER FUNCTION (decompiler name: number19; parameters: localValue12) ===
      function number19(localValue12)
        local localValue22, stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21
        localValue22 = workingValue6.data
        localValue22 = localValue22.armourPlates
        stateFlag16 = localValue12.plateId
        localValue22 = localValue22[stateFlag16]
        if localValue22 then
          localValue22 = workingValue6.data
          localValue22 = localValue22.armourPlates
          stateFlag16 = localValue12.plateId
          localValue22 = localValue22[stateFlag16]
          localValue22 = localValue22.entity
          if nil == localValue22 then
            localValue22 = workingValue6.data
            localValue22 = localValue22.armourPlates
            stateFlag16 = localValue12.plateId
            localValue22 = localValue22[stateFlag16]
            stateFlag16 = CreateObject
            number12 = 701173564
            stateFlag17 = number17.coords
            stateFlag17 = stateFlag17.x
            stateFlag18 = number17.coords
            stateFlag18 = stateFlag18.y
            workingValue9 = number17.coords
            workingValue9 = workingValue9.z
            playerPed2 = false
            stateFlag19 = false
            stateFlag21 = false
            -- Beginner: result below is objectEntity.
            stateFlag16 = stateFlag16(number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21)
            localValue22.entity = stateFlag16
            localValue22 = SetEntityHeading
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.armourPlates
            number12 = localValue12.plateId
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            number12 = 10.0
            -- Beginner: Change the direction an entity is facing.
            localValue22(stateFlag16, number12)
            localValue22 = PlaceObjectOnGroundProperly
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.armourPlates
            number12 = localValue12.plateId
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            localValue22(stateFlag16)
            localValue22 = FreezeEntityPosition
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.armourPlates
            number12 = localValue12.plateId
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            number12 = true
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue22(stateFlag16, number12)
          end
        else
          localValue22 = print
          stateFlag16 = string
          stateFlag16 = stateFlag16.format
          number12 = "[CMG Events] body armour with ID of %s is nil in table (onEnter)"
          stateFlag17 = localValue12.plateId
          stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21 = stateFlag16(number12, stateFlag17)
          localValue22(stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21)
        end
      end

      -- === HELPER FUNCTION (decompiler name: number20; parameters: localValue12) ===
      function number20(localValue12)
        local localValue22, stateFlag16, number12, stateFlag17
        localValue22 = workingValue6.data
        localValue22 = localValue22.armourPlates
        stateFlag16 = localValue12.plateId
        localValue22 = localValue22[stateFlag16]
        if localValue22 then
          localValue22 = workingValue6.data
          localValue22 = localValue22.armourPlates
          stateFlag16 = localValue12.plateId
          localValue22 = localValue22[stateFlag16]
          localValue22 = localValue22.entity
          if localValue22 then
            localValue22 = DoesEntityExist
            stateFlag16 = workingValue6.data
            stateFlag16 = stateFlag16.armourPlates
            number12 = localValue12.plateId
            stateFlag16 = stateFlag16[number12]
            stateFlag16 = stateFlag16.entity
            localValue22 = localValue22(stateFlag16)
            if localValue22 then
              localValue22 = DeleteEntity
              stateFlag16 = workingValue6.data
              stateFlag16 = stateFlag16.armourPlates
              number12 = localValue12.plateId
              stateFlag16 = stateFlag16[number12]
              stateFlag16 = stateFlag16.entity
              -- Beginner: Delete a GTA entity.
              localValue22(stateFlag16)
              localValue22 = workingValue6.data
              localValue22 = localValue22.armourPlates
              stateFlag16 = localValue12.plateId
              localValue22 = localValue22[stateFlag16]
              localValue22.entity = nil
            end
          end
        else
          localValue22 = print
          stateFlag16 = string
          stateFlag16 = stateFlag16.format
          number12 = "[CMG Events] body armour with ID of %s is nil in table (onLeave)"
          stateFlag17 = localValue12.plateId
          stateFlag16, number12, stateFlag17 = stateFlag16(number12, stateFlag17)
          localValue22(stateFlag16, number12, stateFlag17)
        end
      end

      -- === HELPER FUNCTION (decompiler name: number; parameters: localValue12) ===
      function number(localValue12)
        local localValue22, stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2
        localValue22 = workingValue6.data
        localValue22 = localValue22.armourPlates
        stateFlag16 = localValue12.plateId
        localValue22 = localValue22[stateFlag16]
        if localValue22 then
          localValue22 = localValue12.distance
          stateFlag16 = 1.5
          if localValue22 <= stateFlag16 then
            localValue22 = workingValue6.data
            localValue22 = localValue22.armourPlates
            stateFlag16 = localValue12.plateId
            localValue22 = localValue22[stateFlag16]
            localValue22 = localValue22.coords
            stateFlag16 = CMG
            stateFlag16 = stateFlag16.DrawText3D
            number12 = vector3
            stateFlag17 = localValue22.x
            stateFlag18 = localValue22.y
            workingValue9 = localValue22.z
            workingValue9 = workingValue9 - 0.5
            number12 = number12(stateFlag17, stateFlag18, workingValue9)
            stateFlag17 = "Press [E] to pickup armour."
            stateFlag18 = 0.2
            stateFlag16(number12, stateFlag17, stateFlag18)
            stateFlag16 = IsControlJustPressed
            number12 = 0
            stateFlag17 = 51
            stateFlag16 = stateFlag16(number12, stateFlag17)
            if stateFlag16 then
              stateFlag16 = TriggerServerEvent
              number12 = "d1ee91a187"
              stateFlag17 = localValue12.plateId
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d1ee91a187".
              stateFlag16(number12, stateFlag17)
              stateFlag16 = SetPedComponentVariation
              number12 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              number12 = number12()
              stateFlag17 = 9
              stateFlag18 = 15
              workingValue9 = 3
              playerPed2 = 0
              stateFlag16(number12, stateFlag17, stateFlag18, workingValue9, playerPed2)
            end
          end
        end
      end
      number3 = CMG
      number3 = number3.createArea
      number4 = "cmgbr_armour_"
      number5 = stringHelper
      number4 = number4 .. number5
      number5 = number17.coords
      number6 = 200.0
      text3 = 6
      number7 = number19
      number8 = number20
      number9 = number
      dataCollection2 = {}
      dataCollection2.plateId = stringHelper
      -- Beginner: Create an interaction area around a world position.
      number3(number4, number5, number6, text3, number7, number8, number9, dataCollection2)
      number3 = workingValue6.data
      number3 = number3.armourPlates
      number3 = number3[stringHelper]
      number4 = "cmgbr_armour_"
      number5 = stringHelper
      number4 = number4 .. number5
      number3.areaId = number4
    end
  end
  dataCollection3 = SetModelAsNoLongerNeeded
  number11 = 701173564
  dataCollection3(number11)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "024a3022e5".
cmgOperation7(text, text2)
cmgOperation7 = RegisterNetEvent
text = "1d514b8bc4"
-- Beginner: this function handles network event "1d514b8bc4".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, dataCollection3, number11
  localValue2 = tCMG
  localValue2 = localValue2.removeArea
  dataCollection3 = "cmgbr_lootbox_"
  number11 = localValue1
  dataCollection3 = dataCollection3 .. number11
  localValue2(dataCollection3)
  localValue2 = tCMG
  localValue2 = localValue2.removeNamedBlip
  dataCollection3 = "cmgbr_lootbox_"
  number11 = localValue1
  dataCollection3 = dataCollection3 .. number11
  localValue2(dataCollection3)
  localValue2 = workingValue6.data
  localValue2 = localValue2.lootBoxes
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.entity
  if localValue2 then
    localValue2 = DoesEntityExist
    dataCollection3 = workingValue6.data
    dataCollection3 = dataCollection3.lootBoxes
    dataCollection3 = dataCollection3[localValue1]
    dataCollection3 = dataCollection3.entity
    localValue2 = localValue2(dataCollection3)
    if localValue2 then
      localValue2 = DeleteEntity
      dataCollection3 = workingValue6.data
      dataCollection3 = dataCollection3.lootBoxes
      dataCollection3 = dataCollection3[localValue1]
      dataCollection3 = dataCollection3.entity
      -- Beginner: Delete a GTA entity.
      localValue2(dataCollection3)
      localValue2 = workingValue6.data
      localValue2 = localValue2.lootBoxes
      localValue2 = localValue2[localValue1]
      localValue2.entity = nil
    end
  end
  localValue2 = workingValue6.data
  localValue2 = localValue2.lootBoxes
  localValue2[localValue1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1d514b8bc4".
cmgOperation7(text, text2)
cmgOperation7 = RegisterNetEvent
text = "670a809e32"
-- Beginner: this function handles network event "670a809e32".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, dataCollection3, number11
  localValue2 = tCMG
  localValue2 = localValue2.removeArea
  dataCollection3 = "cmgbr_armour_"
  number11 = localValue1
  dataCollection3 = dataCollection3 .. number11
  localValue2(dataCollection3)
  localValue2 = tCMG
  localValue2 = localValue2.removeNamedBlip
  dataCollection3 = "cmgbr_armour_"
  number11 = localValue1
  dataCollection3 = dataCollection3 .. number11
  localValue2(dataCollection3)
  localValue2 = workingValue6.data
  localValue2 = localValue2.armourPlates
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = workingValue6.data
    localValue2 = localValue2.armourPlates
    localValue2 = localValue2[localValue1]
    localValue2 = localValue2.entity
    if localValue2 then
      localValue2 = DoesEntityExist
      dataCollection3 = workingValue6.data
      dataCollection3 = dataCollection3.armourPlates
      dataCollection3 = dataCollection3[localValue1]
      dataCollection3 = dataCollection3.entity
      localValue2 = localValue2(dataCollection3)
      if localValue2 then
        localValue2 = DeleteEntity
        dataCollection3 = workingValue6.data
        dataCollection3 = dataCollection3.armourPlates
        dataCollection3 = dataCollection3[localValue1]
        dataCollection3 = dataCollection3.entity
        -- Beginner: Delete a GTA entity.
        localValue2(dataCollection3)
        localValue2 = workingValue6.data
        localValue2 = localValue2.armourPlates
        localValue2 = localValue2[localValue1]
        localValue2.entity = nil
      end
    end
    localValue2 = workingValue6.data
    localValue2 = localValue2.armourPlates
    localValue2[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "670a809e32".
cmgOperation7(text, text2)

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4, number5, number6
  workingValue6.isInPlaneTransition = true
  localValue1 = CMG
  localValue1 = localValue1.hideAllDisplays
  localValue2 = "battlegrounds"
  localValue1(localValue2)
  localValue1 = cmgOperation4.locations
  localValue2 = text5
  localValue1 = localValue1[localValue2]
  localValue1 = localValue1.planeStart
  localValue2 = cmgOperation4.locations
  dataCollection3 = text5
  localValue2 = localValue2[dataCollection3]
  localValue2 = localValue2.planeHeading
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.spawnVehicle
  number11 = 368211810
  number13 = localValue1.x
  number15 = localValue1.y
  stringHelper = localValue1.z
  number17 = localValue2
  number19 = false
  number20 = false
  number = false
  dataCollection3 = dataCollection3(number11, number13, number15, stringHelper, number17, number19, number20, number)
  number11 = SetVehicleEngineOn
  number13 = dataCollection3
  number15 = true
  stringHelper = true
  number17 = false
  number11(number13, number15, stringHelper, number17)
  number11 = FreezeEntityPosition
  number13 = dataCollection3
  number15 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  number11(number13, number15)
  number11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number11 = number11()
  number13 = SetPedIntoVehicle
  number15 = number11
  stringHelper = dataCollection3
  number17 = -1
  number13(number15, stringHelper, number17)
  number13 = SetEntityVisible
  number15 = number11
  stringHelper = false
  number17 = false
  number13(number15, stringHelper, number17)
  number13 = SetEntityHealth
  number15 = number11
  stringHelper = 200
  number13(number15, stringHelper)
  number13 = CreateCam
  number15 = "DEFAULT_SCRIPTED_CAMERA"
  stringHelper = true
  -- Beginner: result below is cameraHandle.
  number13 = number13(number15, stringHelper)
  workingValue6.planeCamera = number13
  number13 = RenderScriptCams
  number15 = true
  stringHelper = true
  number17 = 0
  number19 = true
  number20 = true
  number13(number15, stringHelper, number17, number19, number20)
  number13 = ShakeCam
  number15 = workingValue6.planeCamera
  stringHelper = "SKY_DIVING_SHAKE"
  number17 = 1.0
  number13(number15, stringHelper, number17)
  number13 = SetCamShakeAmplitude
  number15 = workingValue6.planeCamera
  stringHelper = 1.0
  number13(number15, stringHelper)
  number13 = SetCamFov
  number15 = workingValue6.planeCamera
  stringHelper = 25.0
  number13(number15, stringHelper)
  number13 = SendNUIMessage
  number15 = {}
  number15.transactionType = "planeintro"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  number13(number15)
  number13 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  number13 = number13()
  while true do
    number15 = currentEvent
    if number15 then
      number15 = currentEvent
      number15 = number15.isActive
      if number15 then
        goto continueAtStep99
      end
    end
    number15 = CMG
    number15 = number15.showAllDisplays
    stringHelper = "battlegrounds"
    number15(stringHelper)
    number15 = DeleteEntity
    stringHelper = dataCollection3
    -- Beginner: Delete a GTA entity.
    number15(stringHelper)
    number15 = nil
    return number15
    ::continueAtStep99::
    number15 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number15 = number15()
    number15 = number15 - number13
    number15 = number15 / 3500
    if number15 > 1.0 then
      break
    end
    stringHelper = 1.0
    stringHelper = stringHelper - number15
    stringHelper = -60.0 * stringHelper
    stringHelper = stringHelper + 2.0
    number17 = GetOffsetFromEntityInWorldCoords
    number19 = dataCollection3
    number20 = 0.0
    number = 25.0 * number15
    number3 = 90.0
    number = number3 - number
    number3 = stringHelper
    number17 = number17(number19, number20, number, number3)
    number19 = SetCamCoord
    number20 = workingValue6.planeCamera
    number = number17.x
    number3 = number17.y
    number4 = number17.z
    number19(number20, number, number3, number4)
    number19 = SetCamRot
    number20 = workingValue6.planeCamera
    number = 90.0 * number15
    number3 = 90.0
    number = number3 - number
    number3 = 0.0
    number4 = localValue2 + 180.0
    number5 = 2
    number19(number20, number, number3, number4, number5)
    number19 = number15 - 0.65
    number19 = number19 * 5.0
    if number19 > 0.0 and number19 < 1.0 then
      number20 = SetCamFov
      number = workingValue6.planeCamera
      number3 = 30.0 * number19
      number3 = 25.0 + number3
      number20(number, number3)
    end
    number20 = Citizen
    number20 = number20.Wait
    number = 0
    number20(number)
  end
  number15 = false
  stringHelper = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stringHelper = stringHelper()
  while true do
    number17 = currentEvent
    if number17 then
      number17 = currentEvent
      number17 = number17.isActive
      if number17 then
        goto continueAtStep181
      end
    end
    number17 = CMG
    number17 = number17.showAllDisplays
    number19 = "battlegrounds"
    number17(number19)
    number17 = DeleteEntity
    number19 = dataCollection3
    -- Beginner: Delete a GTA entity.
    number17(number19)
    number17 = nil
    return number17
    ::continueAtStep181::
    number17 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number17 = number17()
    number17 = number17 - stringHelper
    number19 = number17 / 2500
    if number19 > 1.0 then
      break
    end
    if not number15 then
      number20 = 2250
      if number17 >= number20 then
        number20 = DoScreenFadeOut
        number = 250
        number20(number)
        number15 = true
      end
    end
    number20 = GetOffsetFromEntityInWorldCoords
    number = dataCollection3
    number3 = 0.0
    number4 = 25.0 * number19
    number5 = 65.0
    number4 = number5 - number4
    number5 = 2.0
    number20 = number20(number, number3, number4, number5)
    number = SetCamCoord
    number3 = workingValue6.planeCamera
    number4 = number20.x
    number5 = number20.y
    number6 = number20.z
    number(number3, number4, number5, number6)
    number = SetCamFov
    number3 = workingValue6.planeCamera
    number4 = 40.0 * number19
    number5 = 55.0
    number4 = number5 - number4
    number(number3, number4)
    number = Citizen
    number = number.Wait
    number3 = 0
    number(number3)
  end
  number17 = Citizen
  number17 = number17.Wait
  number19 = 2000
  number17(number19)
  number17 = DoScreenFadeIn
  number19 = 250
  number17(number19)
  number17 = currentEvent
  if number17 then
    number17 = currentEvent
    number17 = number17.isActive
    if number17 then
      goto continueAtStep250
    end
  end
  number17 = CMG
  number17 = number17.showAllDisplays
  number19 = "battlegrounds"
  number17(number19)
  number17 = DeleteEntity
  number19 = dataCollection3
  -- Beginner: Delete a GTA entity.
  number17(number19)
  number17 = nil
  return number17
  ::continueAtStep250::
  number17 = ShakeCam
  number19 = workingValue6.planeCamera
  number20 = "HAND_SHAKE"
  number = 0.5
  number17(number19, number20, number)
  number17 = SetCamShakeAmplitude
  number19 = workingValue6.planeCamera
  number20 = 0.5
  number17(number19, number20)
  number17 = SendNUIMessage
  number19 = {}
  number19.transactionType = "planeoutro"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  number17(number19)
  workingValue6.isInPlaneTransition = false
  number17 = Citizen
  number17 = number17.CreateThread

  -- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
  function number19()
    local localValue12, localValue22, stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19, stateFlag21, stateFlag2, stateFlag3, stateFlag4
    localValue12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue12 = localValue12()
    while true do
      localValue22 = workingValue6
      if localValue22 then
        localValue22 = workingValue6.killPlane
        if localValue22 then
          localValue22 = FreezeEntityPosition
          stateFlag16 = dataCollection3
          number12 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue22(stateFlag16, number12)
          localValue22 = nil
          return localValue22
        end
      end
      localValue22 = currentEvent
      if localValue22 then
        localValue22 = currentEvent
        localValue22 = localValue22.isActive
        if localValue22 then
          goto continueAtStep27
        end
      end
      localValue22 = DeleteEntity
      stateFlag16 = dataCollection3
      -- Beginner: Delete a GTA entity.
      localValue22(stateFlag16)
      localValue22 = nil
      return localValue22
      ::continueAtStep27::
      localValue22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue22 = localValue22()
      localValue22 = localValue22 - localValue12
      localValue22 = localValue22 / 1500
      if localValue22 <= 1.0 then
        stateFlag16 = SetCamFov
        number12 = workingValue6.planeCamera
        stateFlag17 = 50.0 * localValue22
        stateFlag17 = 20.0 + stateFlag17
        stateFlag16(number12, stateFlag17)
      else
        stateFlag16 = SetCamFov
        number12 = workingValue6.planeCamera
        stateFlag17 = 70.0
        stateFlag16(number12, stateFlag17)
      end
      stateFlag16 = GetEntityForwardVector
      number12 = dataCollection3
      stateFlag16 = stateFlag16(number12)
      number12 = GetEntityCoords
      stateFlag17 = dataCollection3
      stateFlag18 = true
      -- Beginner: result below is entityCoords.
      number12 = number12(stateFlag17, stateFlag18)
      stateFlag17 = stateFlag16 * 50.0
      stateFlag18 = GetFrameTime
      stateFlag18 = stateFlag18()
      stateFlag17 = stateFlag17 * stateFlag18
      stateFlag17 = number12 + stateFlag17
      stateFlag18 = SetEntityCoordsNoOffset
      workingValue9 = dataCollection3
      playerPed2 = stateFlag17.x
      stateFlag19 = stateFlag17.y
      stateFlag21 = stateFlag17.z
      stateFlag2 = true
      stateFlag3 = false
      stateFlag4 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      stateFlag18(workingValue9, playerPed2, stateFlag19, stateFlag21, stateFlag2, stateFlag3, stateFlag4)
      stateFlag18 = GetOffsetFromEntityInWorldCoords
      workingValue9 = dataCollection3
      playerPed2 = 0.0
      stateFlag19 = -50.0
      stateFlag21 = 45.0
      stateFlag18 = stateFlag18(workingValue9, playerPed2, stateFlag19, stateFlag21)
      workingValue9 = SetCamCoord
      playerPed2 = workingValue6.planeCamera
      stateFlag19 = stateFlag18.x
      stateFlag21 = stateFlag18.y
      stateFlag2 = stateFlag18.z
      workingValue9(playerPed2, stateFlag19, stateFlag21, stateFlag2)
      workingValue9 = PointCamAtEntity
      playerPed2 = workingValue6.planeCamera
      stateFlag19 = dataCollection3
      stateFlag21 = 0.0
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      stateFlag4 = false
      workingValue9(playerPed2, stateFlag19, stateFlag21, stateFlag2, stateFlag3, stateFlag4)
      workingValue9 = Citizen
      workingValue9 = workingValue9.Wait
      playerPed2 = 0
      workingValue9(playerPed2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number17(number19)
  return dataCollection3
end
text = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = stateFlag11
  return localValue1
end
text.isInBattleGroundsPlaneIntro = text2
text = RegisterNetEvent
text2 = "541b03f649"
-- Beginner: this function handles network event "541b03f649".

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3
  localValue2 = MumbleSetActive
  dataCollection3 = false
  localValue2(dataCollection3)
  localValue2 = true
  stateFlag11 = localValue2
  localValue2 = FreezeEntityPosition
  dataCollection3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  dataCollection3 = dataCollection3()
  number11 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(dataCollection3, number11)
  text5 = localValue1
  localValue2 = CMG
  localValue2 = localValue2.startGas
  dataCollection3 = cmgOperation4.locations
  number11 = text5
  dataCollection3 = dataCollection3[number11]
  dataCollection3 = dataCollection3.gas
  dataCollection3 = dataCollection3.initalRadius
  number11 = cmgOperation4.locations
  number13 = text5
  number11 = number11[number13]
  number11 = number11.gas
  number11 = number11.centre
  localValue2(dataCollection3, number11)
  localValue2 = DoScreenFadeOut
  dataCollection3 = 1500
  localValue2(dataCollection3)
  localValue2 = Wait
  dataCollection3 = 1500
  localValue2(dataCollection3)
  localValue2 = currentEvent
  localValue2.minigameName = "Battle Royale"
  localValue2 = CMG
  localValue2 = localValue2.hideAllDisplays
  dataCollection3 = "battlegrounds"
  localValue2(dataCollection3)
  localValue2 = CMG
  localValue2 = localValue2.stopEventSequence
  dataCollection3 = true
  localValue2(dataCollection3)
  localValue2 = CMG
  localValue2 = localValue2.giveWeapons
  dataCollection3 = {}
  number11 = {}
  number13 = 2
  number11[1] = number13
  dataCollection3.GADGET_PARACHUTE = number11
  localValue2(dataCollection3)
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  dataCollection3 = 1981688531
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue2(dataCollection3)
  localValue2 = cmgOperation4.locations
  dataCollection3 = text5
  localValue2 = localValue2[dataCollection3]
  localValue2 = localValue2.planeStart
  dataCollection3 = SetEntityCoords
  number11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number11 = number11()
  number13 = localValue2.x
  number15 = localValue2.y
  stringHelper = localValue2.z
  number17 = true
  number19 = false
  number20 = false
  number = false
  -- Beginner: Move/teleport an entity to new coordinates.
  dataCollection3(number11, number13, number15, stringHelper, number17, number19, number20, number)
  dataCollection3 = pairs
  number11 = GetActivePlayers
  number11, number13, number15, stringHelper, number17, number19, number20, number, number3 = number11()
  dataCollection3, number11, number13, number15 = dataCollection3(number11, number13, number15, stringHelper, number17, number19, number20, number, number3)
  for stringHelper, number17 in dataCollection3, number11, number13, number15 do
    number19 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    number19 = number19()
    if number17 ~= number19 then
      number19 = NetworkConcealPlayer
      number20 = number17
      number = true
      number3 = false
      number19(number20, number, number3)
      number19 = SetEntityVisible
      number20 = GetPlayerPed
      number = number17
      -- Beginner: result below is playerPed.
      number20 = number20(number)
      number = false
      number3 = false
      number19(number20, number, number3)
    end
  end
  dataCollection3 = DoScreenFadeIn
  number11 = 1500
  dataCollection3(number11)
  dataCollection3 = FreezeEntityPosition
  number11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number11 = number11()
  number13 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  dataCollection3(number11, number13)
  dataCollection3 = cmgOperation7
  dataCollection3 = dataCollection3()
  if nil == dataCollection3 then
    return
  end
  number11 = workingValue6.data
  number11.plane = dataCollection3
  number11 = stateFlag
  number11 = not number11
  stateFlag = number11
  number11 = Wait
  number13 = 1500
  number11(number13)
  number11 = Citizen
  number11 = number11.CreateThread

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local localValue12, localValue22
    while true do
      localValue12 = workingValue6.player
      localValue12 = localValue12.canExitPlane
      if localValue12 then
        break
      end
      localValue12 = currentEvent
      localValue12 = localValue12.isActive
      if not localValue12 then
        break
      end
      localValue12 = workingValue6.data
      localValue22 = workingValue6.data
      localValue22 = localValue22.timer
      localValue22 = localValue22 - 1
      localValue12.timer = localValue22
      localValue12 = Wait
      localValue22 = 1000
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number11(number13)
  number11 = SetTimeout
  number13 = 15000

  -- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
  function number15()
    local localValue12, localValue22, stateFlag16
    localValue12 = currentEvent
    localValue12 = localValue12.isActive
    if localValue12 then
      localValue12 = workingValue6.player
      localValue12.canExitPlane = true
      localValue12 = SetTimeout
      localValue22 = 50000

      -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
      function stateFlag16()
        local cmgOperation, stateFlag12, workingValue4, playerPed, number14, workingValue7, number16, number18, stateFlag20, stateFlag22, number2
        cmgOperation = CMG
        cmgOperation = cmgOperation.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgOperation = cmgOperation()
        stateFlag12 = currentEvent
        stateFlag12 = stateFlag12.isActive
        if stateFlag12 then
          stateFlag12 = workingValue6.data
          stateFlag12 = stateFlag12.plane
          if stateFlag12 == cmgOperation then
            stateFlag12 = GetEntityCoords
            workingValue4 = workingValue6.data
            workingValue4 = workingValue4.plane
            playerPed = true
            -- Beginner: result below is entityCoords.
            stateFlag12 = stateFlag12(workingValue4, playerPed)
            workingValue4 = AddExplosion
            playerPed = stateFlag12.x
            number14 = stateFlag12.y
            workingValue7 = stateFlag12.z
            number16 = 0
            number18 = 1.0
            stateFlag20 = true
            stateFlag22 = false
            number2 = 1.0
            workingValue4(playerPed, number14, workingValue7, number16, number18, stateFlag20, stateFlag22, number2)
            workingValue4 = SetEntityHealth
            playerPed = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            playerPed = playerPed()
            number14 = 0
            workingValue4(playerPed, number14)
            workingValue6.killPlane = true
          end
        end
      end
      localValue12(localValue22, stateFlag16)
    end
  end
  number11(number13, number15)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "541b03f649".
text(text2, dataCollection)
text = CMG
text = text.registerMinigameCleanupHandler
text2 = "Battlegrounds"

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper, number17
  localValue1 = MumbleSetActive
  localValue2 = true
  localValue1(localValue2)
  localValue1 = currentEvent
  localValue1.isActive = false
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCanOpenLeaderboard
  localValue2 = false
  localValue1(localValue2)
  localValue1 = pairs
  localValue2 = workingValue6.data
  localValue2 = localValue2.lootBoxes
  localValue1, localValue2, dataCollection3, number11 = localValue1(localValue2)
  for number13, number15 in localValue1, localValue2, dataCollection3, number11 do
    stringHelper = number15.areaId
    if stringHelper then
      stringHelper = tCMG
      stringHelper = stringHelper.removeArea
      number17 = number15.areaId
      stringHelper(number17)
      stringHelper = tCMG
      stringHelper = stringHelper.removeNamedBlip
      number17 = number15.areaId
      stringHelper(number17)
    end
    stringHelper = DoesEntityExist
    number17 = number15.entity
    stringHelper = stringHelper(number17)
    if stringHelper then
      stringHelper = DeleteEntity
      number17 = number15.entity
      -- Beginner: Delete a GTA entity.
      stringHelper(number17)
    end
  end
  localValue1 = SetCamActive
  localValue2 = workingValue6.planeCamera
  dataCollection3 = false
  localValue1(localValue2, dataCollection3)
  localValue1 = RenderScriptCams
  localValue2 = false
  dataCollection3 = false
  number11 = 0
  number13 = false
  number15 = false
  localValue1(localValue2, dataCollection3, number11, number13, number15)
  localValue1 = DestroyCam
  localValue2 = workingValue6.planeCamera
  dataCollection3 = false
  localValue1(localValue2, dataCollection3)
  localValue1 = pairs
  localValue2 = workingValue6.data
  localValue2 = localValue2.armourPlates
  localValue1, localValue2, dataCollection3, number11 = localValue1(localValue2)
  for number13, number15 in localValue1, localValue2, dataCollection3, number11 do
    stringHelper = number15.areaId
    if stringHelper then
      stringHelper = tCMG
      stringHelper = stringHelper.removeArea
      number17 = number15.areaId
      stringHelper(number17)
      stringHelper = tCMG
      stringHelper = stringHelper.removeNamedBlip
      number17 = number15.areaId
      stringHelper(number17)
    end
    stringHelper = DoesEntityExist
    number17 = number15.entity
    stringHelper = stringHelper(number17)
    if stringHelper then
      stringHelper = DeleteEntity
      number17 = number15.entity
      -- Beginner: Delete a GTA entity.
      stringHelper(number17)
    end
  end
  localValue1 = RemoveBlip
  localValue2 = workingValue6.gas
  localValue2 = localValue2.blip
  localValue1(localValue2)
  localValue1 = false
  stateFlag11 = localValue1
  localValue1 = workingValue6.player
  localValue1 = localValue1.isInWinnerScreen
  if not localValue1 then
    localValue1 = false
    stateFlag = localValue1
    localValue1 = workingValue5
    localValue1 = localValue1()
    workingValue6 = localValue1
  end
end
text(text2, dataCollection)
text = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local dataCollection3, number11, number13, number15, stringHelper, number17
  dataCollection3 = workingValue6.gas
  dataCollection3.coords = localValue2
  dataCollection3 = workingValue6.gas
  dataCollection3.radius = localValue1
  dataCollection3 = workingValue6.gas
  number11 = AddBlipForRadius
  number13 = localValue2.x
  number15 = localValue2.y
  stringHelper = localValue2.z
  number17 = localValue1 / 2.0
  -- Beginner: result below is blipHandle.
  number11 = number11(number13, number15, stringHelper, number17)
  dataCollection3.blip = number11
  dataCollection3 = SetBlipColour
  number11 = workingValue6.gas
  number11 = number11.blip
  number13 = 1
  dataCollection3(number11, number13)
  dataCollection3 = SetBlipAlpha
  number11 = workingValue6.gas
  number11 = number11.blip
  number13 = 155
  dataCollection3(number11, number13)
  dataCollection3 = workingValue6.gas
  number11 = workingValue6.gas
  number11 = number11.isActive
  number11 = not number11
  dataCollection3.isActive = number11
end
text.startGas = text2
text = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number
  localValue2 = SendNUIMessage
  dataCollection3 = {}
  dataCollection3.transactionType = "br-gas"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue2(dataCollection3)
  localValue2 = workingValue6.gas
  dataCollection3 = workingValue6.gas
  dataCollection3 = dataCollection3.numRounds
  dataCollection3 = dataCollection3 + 1
  localValue2.numRounds = dataCollection3
  localValue2 = math
  localValue2 = localValue2.max
  dataCollection3 = 30
  number11 = workingValue6.gas
  number11 = number11.numRounds
  number11 = number11 * 15
  number13 = 120
  number11 = number13 - number11
  localValue2 = localValue2(dataCollection3, number11)
  dataCollection3 = workingValue6.gas
  number11 = {}
  number13 = math
  number13 = number13.floor
  number15 = localValue2 / 60
  number13 = number13(number15)
  number11.minutes = number13
  number13 = localValue2 % 60
  number11.seconds = number13
  dataCollection3.timeUntilNext = number11
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.announceMpBigMsg
  number11 = "~r~GAS MOVING"
  number13 = "The gas is closing in!"
  number15 = 5000
  stringHelper = nil
  number17 = nil
  number19 = vector2
  number20 = 0.5
  number = 0.2
  number19, number20, number = number19(number20, number)
  dataCollection3(number11, number13, number15, stringHelper, number17, number19, number20, number)
  dataCollection3 = Wait
  number11 = 4000
  dataCollection3(number11)
  dataCollection3 = Citizen
  dataCollection3 = dataCollection3.CreateThread

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local localValue12, localValue22, stateFlag16, number12, stateFlag17, stateFlag18
    while true do
      localValue12 = workingValue6.gas
      localValue12 = localValue12.isActive
      if not localValue12 then
        break
      end
      localValue12 = workingValue6.gas
      localValue12 = localValue12.radius
      localValue22 = tonumber
      stateFlag16 = localValue1
      localValue22 = localValue22(stateFlag16)
      if not (localValue12 > localValue22) then
        break
      end
      localValue12 = currentEvent
      localValue12 = localValue12.isActive
      if not localValue12 then
        break
      end
      localValue12 = workingValue6.gas
      localValue22 = workingValue6.gas
      localValue22 = localValue22.radius
      stateFlag16 = workingValue6.gas
      stateFlag16 = stateFlag16.radius
      stateFlag16 = stateFlag16 * 0.008
      number12 = GetFrameTime
      number12 = number12()
      stateFlag16 = stateFlag16 * number12
      localValue22 = localValue22 - stateFlag16
      localValue12.radius = localValue22
      localValue12 = RemoveBlip
      localValue22 = workingValue6.gas
      localValue22 = localValue22.blip
      localValue12(localValue22)
      localValue12 = workingValue6.gas
      localValue22 = AddBlipForRadius
      stateFlag16 = workingValue6.gas
      stateFlag16 = stateFlag16.coords
      stateFlag16 = stateFlag16.x
      number12 = workingValue6.gas
      number12 = number12.coords
      number12 = number12.y
      stateFlag17 = workingValue6.gas
      stateFlag17 = stateFlag17.coords
      stateFlag17 = stateFlag17.z
      stateFlag18 = workingValue6.gas
      stateFlag18 = stateFlag18.radius
      stateFlag18 = stateFlag18 / 2.0
      -- Beginner: result below is blipHandle.
      localValue22 = localValue22(stateFlag16, number12, stateFlag17, stateFlag18)
      localValue12.blip = localValue22
      localValue12 = SetBlipColour
      localValue22 = workingValue6.gas
      localValue22 = localValue22.blip
      stateFlag16 = 1
      localValue12(localValue22, stateFlag16)
      localValue12 = SetBlipAlpha
      localValue22 = workingValue6.gas
      localValue22 = localValue22.blip
      stateFlag16 = 155
      localValue12(localValue22, stateFlag16)
      localValue12 = Wait
      localValue22 = 0
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  dataCollection3(number11)
end
text.changeGasRadius = text2
text = CMG
text = text.createThreadOnTick

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4, number5, number6, text3, number7, number8, number9, dataCollection2, stateFlag13, number10, stateFlag14, workingValue2, workingValue3, stateFlag15
  localValue1 = workingValue6.gas
  localValue1 = localValue1.isActive
  if localValue1 then
    localValue1 = workingValue6.gas
    localValue1 = localValue1.radius
    localValue2 = 1800.0
    if localValue1 >= localValue2 then
      localValue1 = localValue1 - 17.5
    else
      localValue2 = 1400.0
      if localValue1 >= localValue2 then
        localValue1 = localValue1 - 15.0
      else
        localValue2 = 1000
        if localValue1 >= localValue2 then
          localValue1 = localValue1 - 12.5
        else
          localValue2 = 600
          if localValue1 >= localValue2 then
            localValue1 = localValue1 - 10.0
          else
            localValue2 = 250
            if localValue1 >= localValue2 then
              localValue1 = localValue1 - 5.0
            end
          end
        end
      end
    end
    localValue2 = DrawMarker
    dataCollection3 = 1
    number11 = workingValue6.gas
    number11 = number11.coords
    number11 = number11.x
    number13 = workingValue6.gas
    number13 = number13.coords
    number13 = number13.y
    number15 = 0.0
    stringHelper = 0.0
    number17 = 0.0
    number19 = 0.0
    number20 = 1.0
    number = 1.0
    number3 = 1.0
    number4 = localValue1
    number5 = localValue1
    number6 = 6000.0
    text3 = 255
    number7 = 0
    number8 = 0
    number9 = 155
    dataCollection2 = false
    stateFlag13 = false
    number10 = 2
    stateFlag14 = false
    workingValue2 = nil
    workingValue3 = nil
    stateFlag15 = false
    localValue2(dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4, number5, number6, text3, number7, number8, number9, dataCollection2, stateFlag13, number10, stateFlag14, workingValue2, workingValue3, stateFlag15)
  end
end
dataCollection = "Battle Royale Gas Marker"
-- Beginner: Run a helper every game frame while this script is active.
text(text2, dataCollection)
text = {}
text[1] = "1st"
text[2] = "2nd"
text[3] = "3rd"
text2 = {}
text2[1] = 4
text2[2] = 3
text2[3] = 2
dataCollection = {}
dataCollection[1] = "~HUD_COLOUR_GOLD~"
dataCollection[2] = "~HUD_COLOUR_SILVER~"
dataCollection[3] = "~HUD_COLOUR_BRONZE~"
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20
  localValue1 = currentEvent
  localValue1 = localValue1.isActive
  if localValue1 then
    localValue1 = currentEvent
    localValue1 = localValue1.minigameName
    if "Battle Royale" == localValue1 then
      localValue1 = workingValue6
      if localValue1 then
        localValue1 = workingValue6.isInPlaneTransition
        if not localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.createTimerBars
          -- Beginner: result below is timerBars.
          localValue1 = localValue1()
          localValue2 = localValue1.push
          dataCollection3 = "~y~GAS:~w~"
          number11 = string
          number11 = number11.format
          number13 = "~y~%02d:%02d"
          number15 = workingValue6.gas
          number15 = number15.timeUntilNext
          number15 = number15.minutes
          stringHelper = workingValue6.gas
          stringHelper = stringHelper.timeUntilNext
          stringHelper = stringHelper.seconds
          number11, number13, number15, stringHelper, number17, number19, number20 = number11(number13, number15, stringHelper)
          localValue2(dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20)
          localValue2 = 3
          dataCollection3 = 1
          number11 = -1
          for number13 = localValue2, dataCollection3, number11 do
            number15 = workingValue6.data
            number15 = number15.leaderboard
            number15 = number15[number13]
            if number15 then
              number15 = localValue1.push
              stringHelper = dataCollection
              stringHelper = stringHelper[number13]
              number17 = text
              number17 = number17[number13]
              number19 = " "
              number20 = workingValue6.data
              number20 = number20.leaderboard
              number20 = number20[number13]
              number20 = number20.name
              stringHelper = stringHelper .. number17 .. number19 .. number20
              number17 = dataCollection
              number17 = number17[number13]
              number19 = workingValue6.data
              number19 = number19.leaderboard
              number19 = number19[number13]
              number19 = number19.kills
              number17 = number17 .. number19
              number15(stringHelper, number17)
            end
          end
          localValue2 = localValue1.draw
          localValue2()
        end
      end
    end
  end
end
cmgOperation3 = "Battle Royale Timer Bars"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(eventHandler, cmgOperation3)
cmgOperation2 = Citizen
cmgOperation2 = cmgOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  while true do
    localValue1 = workingValue6.gas
    localValue1 = localValue1.isActive
    if localValue1 then
      localValue1 = workingValue6.gas
      localValue1 = localValue1.timeUntilNext
      localValue1 = localValue1.seconds
      if localValue1 > 0 then
        localValue1 = workingValue6.gas
        localValue1 = localValue1.timeUntilNext
        localValue2 = workingValue6.gas
        localValue2 = localValue2.timeUntilNext
        localValue2 = localValue2.seconds
        localValue2 = localValue2 - 1
        localValue1.seconds = localValue2
      else
        localValue1 = workingValue6.gas
        localValue1 = localValue1.timeUntilNext
        localValue1 = localValue1.seconds
        if 0 == localValue1 then
          localValue1 = workingValue6.gas
          localValue1 = localValue1.timeUntilNext
          localValue1 = localValue1.minutes
          if 0 == localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.changeGasRadius
            localValue2 = workingValue6.gas
            localValue2 = localValue2.radius
            localValue2 = localValue2 - 400
            localValue1(localValue2)
        end
        else
          localValue1 = workingValue6.gas
          localValue1 = localValue1.timeUntilNext
          localValue1.seconds = 59
          localValue1 = workingValue6.gas
          localValue1 = localValue1.timeUntilNext
          localValue2 = workingValue6.gas
          localValue2 = localValue2.timeUntilNext
          localValue2 = localValue2.minutes
          localValue2 = localValue2 - 1
          localValue1.minutes = localValue2
        end
      end
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation2(eventHandler)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper, number17
  localValue1 = sortedKeys
  localValue2 = workingValue6.players

  -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue12, localValue22) ===
  function dataCollection3(localValue12, localValue22)
    local stateFlag16, number12
    stateFlag16 = workingValue6.players
    stateFlag16 = stateFlag16[localValue12]
    stateFlag16 = stateFlag16.kills
    number12 = workingValue6.players
    number12 = number12[localValue22]
    number12 = number12.kills
    stateFlag16 = stateFlag16 > number12
    return stateFlag16
  end
  localValue1 = localValue1(localValue2, dataCollection3)
  localValue2 = 1
  dataCollection3 = 3
  number11 = 1
  for number13 = localValue2, dataCollection3, number11 do
    number15 = workingValue6.players
    stringHelper = localValue1[number13]
    number15 = number15[stringHelper]
    if number15 then
      number15 = workingValue6.players
      stringHelper = localValue1[number13]
      number15 = number15[stringHelper]
      number15.leaderboardPos = number13
      number15 = workingValue6.data
      number15 = number15.leaderboard
      stringHelper = workingValue6.players
      number17 = localValue1[number13]
      stringHelper = stringHelper[number17]
      number15[number13] = stringHelper
    end
  end
end
eventHandler = RegisterNetEvent
cmgOperation3 = "24b9d7db9c"
-- Beginner: this function handles network event "24b9d7db9c".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local dataCollection3, number11, number13, number15
  dataCollection3 = workingValue6.players
  dataCollection3 = dataCollection3[localValue1]
  if dataCollection3 then
    dataCollection3 = workingValue6.players
    dataCollection3 = dataCollection3[localValue1]
    number11 = workingValue6.players
    number11 = number11[localValue1]
    number11 = number11.kills
    number11 = number11 + 1
    dataCollection3.kills = number11
  else
    dataCollection3 = workingValue6.players
    number11 = {}
    number11.source = localValue1
    number11.name = localValue2
    number11.kills = 1
    dataCollection3[localValue1] = number11
  end
  dataCollection3 = CMG
  dataCollection3 = dataCollection3.updateScoreboard
  number11 = localValue1
  number13 = 5
  number15 = workingValue6.players
  number15 = number15[localValue1]
  number15 = number15.kills
  dataCollection3(number11, number13, number15)
  dataCollection3 = cmgOperation2
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  dataCollection3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "24b9d7db9c".
eventHandler(cmgOperation3, text4)
eventHandler = RegisterNetEvent
cmgOperation3 = "8ec3705e18"
-- Beginner: this function handles network event "8ec3705e18".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, dataCollection3, number11
  localValue2 = workingValue6.players
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = table
    localValue2 = localValue2.copy
    dataCollection3 = workingValue6.players
    dataCollection3 = dataCollection3[localValue1]
    localValue2 = localValue2(dataCollection3)
    dataCollection3 = workingValue6.players
    dataCollection3[localValue1] = nil
    dataCollection3 = localValue2.leaderboardPos
    if dataCollection3 then
      dataCollection3 = workingValue6.data
      dataCollection3 = dataCollection3.leaderboard
      number11 = localValue2.leaderboardPos
      dataCollection3[number11] = nil
      dataCollection3 = cmgOperation2
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      dataCollection3()
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.removePlayerFromLeaderboard
  dataCollection3 = localValue1
  localValue2(dataCollection3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8ec3705e18".
eventHandler(cmgOperation3, text4)
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, dataCollection3, number11, number13
  while true do
    localValue1 = workingValue6.gas
    localValue1 = localValue1.isActive
    if localValue1 then
      localValue1 = workingValue6.player
      localValue1 = localValue1.hasJumped
      if localValue1 then
        localValue1 = IsPedInParachuteFreeFall
        localValue2 = PlayerPedId
        localValue2, dataCollection3, number11, number13 = localValue2()
        localValue1 = localValue1(localValue2, dataCollection3, number11, number13)
        if not localValue1 then
          localValue1 = GetPedParachuteState
          localValue2 = PlayerPedId
          localValue2, dataCollection3, number11, number13 = localValue2()
          localValue1 = localValue1(localValue2, dataCollection3, number11, number13)
          if localValue1 <= 2 then
            localValue1 = currentEvent
            localValue1 = localValue1.isActive
            if localValue1 then
              localValue1 = CMG
              localValue1 = localValue1.isSpectatingEvent
              localValue1 = localValue1()
              if not localValue1 then
                localValue1 = CMG
                localValue1 = localValue1.getPlayerCoords
                -- Beginner: result below is playerCoords.
                localValue1 = localValue1()
                localValue1 = localValue1.xy
                localValue2 = workingValue6.gas
                localValue2 = localValue2.coords
                localValue2 = localValue2.xy
                localValue1 = localValue1 - localValue2
                localValue1 = #localValue1
                localValue2 = workingValue6.gas
                localValue2 = localValue2.radius
                localValue2 = localValue2 / 2.0
                if localValue1 > localValue2 then
                  localValue1 = drawNativeText
                  localValue2 = "~r~You are in the gas. Get to the safe zone before you suffocate."
                  -- Beginner: Draw GTA-style text on screen.
                  localValue1(localValue2)
                  localValue1 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  localValue1 = localValue1()
                  localValue2 = GetEntityHealth
                  dataCollection3 = localValue1
                  -- Beginner: result below is health.
                  localValue2 = localValue2(dataCollection3)
                  dataCollection3 = SetEntityHealth
                  number11 = localValue1
                  number13 = localValue2 - 3
                  dataCollection3(number11, number13)
                end
              end
            end
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 500
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(cmgOperation3)
eventHandler = {}
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerCommand
text4 = "editbrcoords"

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, dataCollection3, number11, number13, number15, stringHelper, number17, number19, number20, number, number3, number4, number5, number6, text3
  localValue1 = CMG
  localValue1 = localValue1.isDevMode
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = ""

    -- === HELPER FUNCTION: localValue2(localValue12) ===
    function localValue2(localValue12)
      local localValue22, stateFlag16, number12, stateFlag17, stateFlag18, workingValue9, playerPed2, stateFlag19
      localValue22 = localValue1
      stateFlag16 = "vector3("
      number12 = tostring
      stateFlag17 = localValue12.x
      number12 = number12(stateFlag17)
      stateFlag17 = ","
      stateFlag18 = tostring
      workingValue9 = localValue12.y
      stateFlag18 = stateFlag18(workingValue9)
      workingValue9 = ","
      playerPed2 = tostring
      stateFlag19 = localValue12.z
      playerPed2 = playerPed2(stateFlag19)
      stateFlag19 = "),\n"
      localValue22 = localValue22 .. stateFlag16 .. number12 .. stateFlag17 .. stateFlag18 .. workingValue9 .. playerPed2 .. stateFlag19
      localValue1 = localValue22
    end
    dataCollection3 = pairs
    number11 = eventHandler
    dataCollection3, number11, number13, number15 = dataCollection3(number11)
    for stringHelper, number17 in dataCollection3, number11, number13, number15 do
      number19 = SetEntityCoordsNoOffset
      number20 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      number20 = number20()
      number = number17.x
      number3 = number17.y
      number4 = number17.z
      number5 = true
      number6 = false
      text3 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      number19(number20, number, number3, number4, number5, number6, text3)
      while true do
        number19 = IsControlJustPressed
        number20 = 0
        number = 237
        number19 = number19(number20, number)
        if number19 then
          number19 = print
          number20 = "Ignored: "
          number = tostring
          number3 = stringHelper
          number = number(number3)
          number3 = "/"
          number4 = tostring
          number5 = eventHandler
          number5 = #number5
          number4 = number4(number5)
          number = number .. number3 .. number4
          number19(number20, number)
          number19 = localValue2
          number20 = number17
          number19(number20)
          break
        else
          number19 = IsControlJustPressed
          number20 = 0
          number = 238
          number19 = number19(number20, number)
          if number19 then
            number19 = print
            number20 = "Changed: "
            number = tostring
            number3 = stringHelper
            number = number(number3)
            number3 = "/"
            number4 = tostring
            number5 = eventHandler
            number5 = #number5
            number4 = number4(number5)
            number = number .. number3 .. number4
            number19(number20, number)
            number19 = localValue2
            number20 = CMG
            number20 = number20.getPlayerCoords
            number20, number, number3, number4, number5, number6, text3 = number20()
            number19(number20, number, number3, number4, number5, number6, text3)
            break
          end
        end
        number19 = Citizen
        number19 = number19.Wait
        number20 = 0
        number19(number20)
      end
      number19 = Citizen
      number19 = number19.Wait
      number20 = 0
      number19(number20)
    end
    dataCollection3 = TriggerServerEvent
    number11 = "8cd3730b86"
    number13 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8cd3730b86".
    dataCollection3(number11, number13)
  end
end
stateFlag10 = false
cmgOperation3(text4, workingValue, stateFlag10)
