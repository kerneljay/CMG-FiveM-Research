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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local flag, flag11, cmgCall4, textValue5, workValue5, workValue6, workValue8, cmgCall5, cmgCall6, cmgCall7, textValue, textValue2, dataTable, cmgCall2, eventRegistration, cmgCall3, textValue4, workValue, flag10
flag = false
flag11 = false
cmgCall4 = CMG
cmgCall4 = cmgCall4.loadModule
textValue5 = "cfg/events/cfg_battleroyale"
-- Beginner: result below is config.
cmgCall4 = cmgCall4(textValue5)
textValue5 = nil

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, dataTable3
  arg1 = {}
  arg2 = {}
  arg2.radius = 0.0
  arg2.coords = nil
  arg2.isActive = false
  dataTable3 = {}
  dataTable3.minutes = 2
  dataTable3.seconds = 0
  arg2.timeUntilNext = dataTable3
  arg2.numRounds = 0
  arg1.gas = arg2
  arg2 = {}
  arg2.plane = 0
  dataTable3 = {}
  arg2.lootBoxes = dataTable3
  dataTable3 = {}
  arg2.armourPlates = dataTable3
  arg2.timer = 15
  dataTable3 = {}
  arg2.leaderboard = dataTable3
  arg1.data = arg2
  arg2 = {}
  arg2.canExitPlane = false
  arg2.isInWinnerScreen = false
  arg2.hasJumped = false
  arg1.player = arg2
  arg2 = {}
  arg1.players = arg2
  arg1.isInPlaneTransition = false
  arg1.planeCamera = 0
  arg1.killPlane = false
  return arg1
end
workValue6 = workValue5
workValue6 = workValue6()

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4
  arg1 = flag
  if arg1 then
    arg1 = CMG
    arg1 = arg1.isSpectatingEvent
    arg1 = arg1()
    if not arg1 then
      arg1 = DrawRect
      arg2 = 0.493
      dataTable3 = 0.944
      numberValue11 = 0.14
      numberValue13 = 0.074
      numberValue15 = 0
      stringHelper = 180
      numberValue17 = 93
      numberValue19 = 134
      arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19)
      arg1 = workValue6.data
      arg1 = arg1.timer
      if arg1 > 0 then
        arg1 = DrawAdvancedText
        arg2 = 0.587
        dataTable3 = 0.934
        numberValue11 = 0.005
        numberValue13 = 0.0028
        numberValue15 = 0.971
        stringHelper = tostring
        numberValue17 = workValue6.data
        numberValue17 = numberValue17.timer
        stringHelper = stringHelper(numberValue17)
        numberValue17 = 255
        numberValue19 = 255
        numberValue20 = 255
        numberValue = 255
        numberValue3 = 4
        numberValue4 = 0
        arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4)
      else
        arg1 = DrawAdvancedText
        arg2 = 0.587
        dataTable3 = 0.934
        numberValue11 = 0.005
        numberValue13 = 0.0028
        numberValue15 = 0.971
        stringHelper = "JUMP"
        numberValue17 = 255
        numberValue19 = 255
        numberValue20 = 255
        numberValue = 255
        numberValue3 = 4
        numberValue4 = 0
        arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4)
      end
    end
  end
end
cmgCall5 = CMG
cmgCall5 = cmgCall5.createThreadOnTick
cmgCall6 = workValue8
cmgCall7 = "Battle Royale GUI"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall5(cmgCall6, cmgCall7)

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4
  arg1 = workValue6.player
  arg1 = arg1.isInWinnerScreen
  if arg1 then
    arg1 = DrawRect
    arg2 = 0.486
    dataTable3 = 0.064
    numberValue11 = 1.081
    numberValue13 = 0.202
    numberValue15 = 0
    stringHelper = 0
    numberValue17 = 0
    numberValue19 = 150
    arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19)
    arg1 = DrawAdvancedText
    arg2 = 0.262
    dataTable3 = 0.067
    numberValue11 = 0.005
    numberValue13 = 0.0028
    numberValue15 = 0.96599999999999
    stringHelper = "WINNER WINNER CHICKEN DINNER!"
    numberValue17 = 255
    numberValue19 = 255
    numberValue20 = 255
    numberValue = 255
    numberValue3 = 6
    numberValue4 = 0
    arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4)
    arg1 = DrawRect
    arg2 = 0.478
    dataTable3 = 0.933
    numberValue11 = 1.054
    numberValue13 = 0.194
    numberValue15 = 0
    stringHelper = 0
    numberValue17 = 0
    numberValue19 = 150
    arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19)
    arg1 = DrawAdvancedText
    arg2 = 0.582
    dataTable3 = 0.905
    numberValue11 = 0.005
    numberValue13 = 0.0028
    numberValue15 = 0.96599999999999
    stringHelper = "#1 "
    numberValue17 = CMG
    numberValue17 = numberValue17.getPlayerName
    numberValue19 = PlayerId
    numberValue19, numberValue20, numberValue, numberValue3, numberValue4 = numberValue19()
    numberValue17 = numberValue17(numberValue19, numberValue20, numberValue, numberValue3, numberValue4)
    stringHelper = stringHelper .. numberValue17
    numberValue17 = 255
    numberValue19 = 255
    numberValue20 = 255
    numberValue = 255
    numberValue3 = 6
    numberValue4 = 0
    arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4)
    arg1 = CursorInArea
    arg2 = GetArea
    dataTable3 = 0.092
    numberValue11 = 0.925
    numberValue13 = 0.154
    numberValue15 = 0.096
    arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4 = arg2(dataTable3, numberValue11, numberValue13, numberValue15)
    arg1 = arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4)
    if arg1 then
      arg1 = DrawRect
      arg2 = 0.092
      dataTable3 = 0.925
      numberValue11 = 0.154
      numberValue13 = 0.096
      numberValue15 = 100
      stringHelper = 0
      numberValue17 = 0
      numberValue19 = 174
      arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19)
    else
      arg1 = DrawRect
      arg2 = 0.092
      dataTable3 = 0.925
      numberValue11 = 0.154
      numberValue13 = 0.096
      numberValue15 = 78
      stringHelper = 0
      numberValue17 = 0
      numberValue19 = 174
      arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19)
    end
    arg1 = DrawAdvancedText
    arg2 = 0.185
    dataTable3 = 0.91
    numberValue11 = 0.005
    numberValue13 = 0.0028
    numberValue15 = 0.971
    stringHelper = "LEAVE"
    numberValue17 = 255
    numberValue19 = 255
    numberValue20 = 255
    numberValue = 255
    numberValue3 = 6
    numberValue4 = 0
    arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4)
  end
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.createThreadOnTick
cmgCall7 = cmgCall5
textValue = "Battle Royale Winner GUI"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall6(cmgCall7, textValue)

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper
  arg1 = flag
  if arg1 then
    arg1 = DisableAllControlActions
    arg2 = 0
    arg1(arg2)
    arg1 = EnableControlAction
    arg2 = 0
    dataTable3 = 1
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 0
    dataTable3 = 2
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 0
    dataTable3 = 3
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 0
    dataTable3 = 4
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 0
    dataTable3 = 5
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 0
    dataTable3 = 6
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 0
    dataTable3 = 329
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 1
    dataTable3 = 329
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 2
    dataTable3 = 239
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = EnableControlAction
    arg2 = 2
    dataTable3 = 240
    numberValue11 = true
    arg1(arg2, dataTable3, numberValue11)
    arg1 = workValue6.player
    arg1 = arg1.canExitPlane
    if arg1 then
      arg1 = drawNativeNotification
      arg2 = "Press ~INPUT_JUMP~ to exit the plane"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg1(arg2)
    end
    arg1 = IsDisabledControlJustPressed
    arg2 = 1
    dataTable3 = 22
    arg1 = arg1(arg2, dataTable3)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.isSpectatingEvent
      arg1 = arg1()
      if not arg1 then
        arg1 = workValue6.player
        arg1 = arg1.canExitPlane
        if arg1 then
          arg1 = workValue6.player
          arg1 = arg1.hasJumped
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.setPlayerCanOpenLeaderboard
            arg2 = true
            arg1(arg2)
            arg1 = PlaySound
            arg2 = -1
            dataTable3 = "SELECT"
            numberValue11 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            numberValue13 = false
            numberValue15 = 0
            stringHelper = true
            arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper)
            arg1 = TaskLeaveVehicle
            arg2 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            arg2 = arg2()
            dataTable3 = workValue6.data
            dataTable3 = dataTable3.plane
            numberValue11 = 0
            arg1(arg2, dataTable3, numberValue11)
            arg1 = SetEntityVisible
            arg2 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            arg2 = arg2()
            dataTable3 = true
            numberValue11 = true
            arg1(arg2, dataTable3, numberValue11)
            arg1 = workValue6.player
            arg1.hasJumped = true
            arg1 = SetTimeout
            arg2 = 2500

            -- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
            function dataTable3()
              local arg12, arg22, flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9
              arg12 = SetCamActive
              arg22 = workValue6.planeCamera
              flag16 = false
              arg12(arg22, flag16)
              arg12 = RenderScriptCams
              arg22 = false
              flag16 = false
              numberValue12 = 0
              flag17 = false
              flag18 = false
              arg12(arg22, flag16, numberValue12, flag17, flag18)
              arg12 = DestroyCam
              arg22 = workValue6.planeCamera
              flag16 = false
              arg12(arg22, flag16)
              arg12 = DeleteEntity
              arg22 = workValue6.data
              arg22 = arg22.plane
              -- Beginner: Delete a GTA entity.
              arg12(arg22)
              arg12 = currentEvent
              arg12 = arg12.isActive
              if arg12 then
                arg12 = pairs
                arg22 = GetActivePlayers
                arg22, flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9 = arg22()
                arg12, arg22, flag16, numberValue12 = arg12(arg22, flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9)
                for flag17, flag18 in arg12, arg22, flag16, numberValue12 do
                  workValue9 = PlayerId
                  -- Beginner: result below is localPlayerIndex.
                  workValue9 = workValue9()
                  if flag18 ~= workValue9 then
                    workValue9 = NetworkConcealPlayer
                    playerPed2 = flag18
                    flag19 = false
                    flag21 = false
                    workValue9(playerPed2, flag19, flag21)
                    workValue9 = SetEntityVisible
                    playerPed2 = GetPlayerPed
                    flag19 = flag18
                    -- Beginner: result below is playerPed.
                    playerPed2 = playerPed2(flag19)
                    flag19 = true
                    flag21 = true
                    workValue9(playerPed2, flag19, flag21)
                  end
                end
              end
              arg12 = SetTimeout
              arg22 = 5000

              -- === HELPER FUNCTION (decompiler name: flag16; parameters: none) ===
              function flag16()
                local cmgCall, flag12
                cmgCall = false
                flag11 = cmgCall
                cmgCall = MumbleSetActive
                flag12 = true
                cmgCall(flag12)
              end
              arg12(arg22, flag16)
              arg12 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg12 = arg12()
              arg22 = false
              while true do
                flag16 = HasPedGotWeapon
                numberValue12 = arg12
                flag17 = -72657034
                flag18 = false
                flag16 = flag16(numberValue12, flag17, flag18)
                if not flag16 then
                  break
                end
                flag16 = GetEntityHeightAboveGround
                numberValue12 = arg12
                flag16 = flag16(numberValue12)
                if flag16 > 10.0 then
                  numberValue12 = HasEntityCollidedWithAnything
                  flag17 = arg12
                  numberValue12 = numberValue12(flag17)
                  if not numberValue12 then
                    numberValue12 = IsPedInParachuteFreeFall
                    flag17 = arg12
                    numberValue12 = numberValue12(flag17)
                    if numberValue12 then
                      numberValue12 = ApplyForceToEntity
                      flag17 = arg12
                      flag18 = 1
                      workValue9 = 0.0
                      playerPed2 = 25.0
                      flag19 = 2.5
                      flag21 = 0.0
                      flag2 = 0.0
                      flag3 = 0.0
                      flag4 = 0
                      flag5 = true
                      flag6 = false
                      flag7 = false
                      flag8 = false
                      flag9 = true
                      numberValue12(flag17, flag18, workValue9, playerPed2, flag19, flag21, flag2, flag3, flag4, flag5, flag6, flag7, flag8, flag9)
                    end
                  end
                end
                if flag16 > 10.0 then
                  numberValue12 = 250.0
                  if flag16 < numberValue12 then
                    numberValue12 = IsPedInParachuteFreeFall
                    flag17 = arg12
                    numberValue12 = numberValue12(flag17)
                    if numberValue12 then
                      numberValue12 = drawNativeNotification
                      flag17 = "Press ~INPUT_PARACHUTE_DEPLOY~ to deploy your parachute."
                      -- Beginner: Show a GTA-style notification/help prompt.
                      numberValue12(flag17)
                      if flag16 < 100.0 and not arg22 then
                        numberValue12 = SetControlNormal
                        flag17 = 0
                        flag18 = 144
                        workValue9 = 1.0
                        numberValue12(flag17, flag18, workValue9)
                        arg22 = true
                      end
                    end
                  end
                end
                numberValue12 = Citizen
                numberValue12 = numberValue12.Wait
                flag17 = 0
                numberValue12(flag17)
              end
            end
            arg1(arg2, dataTable3)
            arg1 = false
            flag = arg1
            arg1 = CMG
            arg1 = arg1.showAllDisplays
            arg2 = "battlegrounds"
            arg1(arg2)
          end
        end
      end
    end
  end
  arg1 = workValue6.player
  arg1 = arg1.isInWinnerScreen
  if arg1 then
    arg1 = CursorInArea
    arg2 = GetArea
    dataTable3 = 0.092
    numberValue11 = 0.925
    numberValue13 = 0.154
    numberValue15 = 0.096
    arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper = arg2(dataTable3, numberValue11, numberValue13, numberValue15)
    arg1 = arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper)
    if arg1 then
      arg1 = IsControlJustPressed
      arg2 = 1
      dataTable3 = 329
      arg1 = arg1(arg2, dataTable3)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        dataTable3 = 329
        arg1 = arg1(arg2, dataTable3)
        if not arg1 then
          goto flow_label_165
        end
      end
      arg1 = PlaySound
      arg2 = -1
      dataTable3 = "SELECT"
      numberValue11 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      numberValue13 = false
      numberValue15 = 0
      stringHelper = true
      arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper)
      arg1 = workValue6.player
      arg1.isInWinnerScreen = false
      arg1 = false
      flag = arg1
      arg1 = workValue5
      arg1 = arg1()
      workValue6 = arg1
      arg1 = CMG
      arg1 = arg1.showAllDisplays
      arg2 = "battlegrounds"
      arg1(arg2)
    end
  end
  ::flow_label_165::
end
cmgCall7 = CMG
cmgCall7 = cmgCall7.createThreadOnTick
textValue = cmgCall6
textValue2 = "Battle Royale Clicks"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall7(textValue, textValue2)
cmgCall7 = RegisterNetEvent
textValue = "024a3022e5"
-- Beginner: this function handles network event "024a3022e5".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3, numberValue7, numberValue8, numberValue9, dataTable2
  dataTable3 = workValue6.data
  numberValue11 = table
  numberValue11 = numberValue11.copy
  numberValue13 = cmgCall4.lootBoxes
  numberValue13 = numberValue13[arg2]
  numberValue11 = numberValue11(numberValue13)
  dataTable3.lootBoxes = numberValue11
  dataTable3 = workValue6.data
  numberValue11 = table
  numberValue11 = numberValue11.copy
  numberValue13 = cmgCall4.armourPlates
  numberValue13 = numberValue13[arg2]
  numberValue11 = numberValue11(numberValue13)
  dataTable3.armourPlates = numberValue11
  dataTable3 = CMG
  dataTable3 = dataTable3.loadModel
  numberValue11 = -1422265815
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataTable3(numberValue11)
  dataTable3 = pairs
  numberValue11 = workValue6.data
  numberValue11 = numberValue11.lootBoxes
  dataTable3, numberValue11, numberValue13, numberValue15 = dataTable3(numberValue11)
  for stringHelper, numberValue17 in dataTable3, numberValue11, numberValue13, numberValue15 do
    numberValue19 = numberValue17.coords
    numberValue20 = workValue6.gas
    numberValue20 = numberValue20.coords
    numberValue19 = numberValue19 - numberValue20
    numberValue19 = #numberValue19
    numberValue20 = workValue6.gas
    numberValue20 = numberValue20.radius
    numberValue20 = numberValue20 / 2
    if numberValue19 < numberValue20 then
      numberValue19 = workValue6.data
      numberValue19 = numberValue19.lootBoxes
      numberValue19 = numberValue19[stringHelper]
      numberValue20 = "cmgbr_lootbox_"
      numberValue = stringHelper
      numberValue20 = numberValue20 .. numberValue
      numberValue19.areaId = numberValue20
      numberValue19 = tCMG
      numberValue19 = numberValue19.setNamedBlip
      numberValue20 = "cmgbr_lootbox_"
      numberValue = stringHelper
      numberValue20 = numberValue20 .. numberValue
      numberValue = numberValue17.coords
      numberValue = numberValue.x
      numberValue3 = numberValue17.coords
      numberValue3 = numberValue3.y
      numberValue4 = numberValue17.coords
      numberValue4 = numberValue4.z
      numberValue5 = 478
      numberValue6 = 1
      textValue3 = "Lootbox"
      numberValue7 = 0.5
      numberValue19(numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3, numberValue7)

      -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: arg12) ===
      function numberValue19(arg12)
        local arg22, flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21
        arg22 = workValue6.data
        arg22 = arg22.lootBoxes
        flag16 = arg12.box
        arg22 = arg22[flag16]
        if arg22 then
          arg22 = workValue6.data
          arg22 = arg22.lootBoxes
          flag16 = arg12.box
          arg22 = arg22[flag16]
          arg22 = arg22.entity
          if nil == arg22 then
            arg22 = workValue6.data
            arg22 = arg22.lootBoxes
            flag16 = arg12.box
            arg22 = arg22[flag16]
            flag16 = CreateObject
            numberValue12 = -1422265815
            flag17 = numberValue17.coords
            flag17 = flag17.x
            flag18 = numberValue17.coords
            flag18 = flag18.y
            workValue9 = numberValue17.coords
            workValue9 = workValue9.z
            playerPed2 = false
            flag19 = false
            flag21 = false
            -- Beginner: result below is objectEntity.
            flag16 = flag16(numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21)
            arg22.entity = flag16
            arg22 = DecorSetInt
            flag16 = workValue6.data
            flag16 = flag16.lootBoxes
            numberValue12 = arg12.box
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            numberValue12 = "5f7af1c5ce"
            flag18 = arg12.box
            flag17 = arg1
            flag17 = flag17[flag18]
            arg22(flag16, numberValue12, flag17)
            arg22 = SetEntityHeading
            flag16 = workValue6.data
            flag16 = flag16.lootBoxes
            numberValue12 = arg12.box
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            numberValue12 = 10.0
            -- Beginner: Change the direction an entity is facing.
            arg22(flag16, numberValue12)
            arg22 = PlaceObjectOnGroundProperly
            flag16 = workValue6.data
            flag16 = flag16.lootBoxes
            numberValue12 = arg12.box
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            arg22(flag16)
            arg22 = FreezeEntityPosition
            flag16 = workValue6.data
            flag16 = flag16.lootBoxes
            numberValue12 = arg12.box
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            numberValue12 = true
            -- Beginner: Freeze or unfreeze an entity in place.
            arg22(flag16, numberValue12)
          end
        else
          arg22 = print
          flag16 = string
          flag16 = flag16.format
          numberValue12 = "[CMG] lootbox with ID: %s is nil"
          flag17 = arg12.box
          flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21 = flag16(numberValue12, flag17)
          arg22(flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21)
        end
      end

      -- === HELPER FUNCTION (decompiler name: numberValue20; parameters: arg12) ===
      function numberValue20(arg12)
        local arg22, flag16, numberValue12
        arg22 = workValue6.data
        arg22 = arg22.lootBoxes
        flag16 = arg12.box
        arg22 = arg22[flag16]
        if arg22 then
          arg22 = workValue6.data
          arg22 = arg22.lootBoxes
          flag16 = arg12.box
          arg22 = arg22[flag16]
          arg22 = arg22.entity
          if arg22 then
            arg22 = DoesEntityExist
            flag16 = workValue6.data
            flag16 = flag16.lootBoxes
            numberValue12 = arg12.box
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            arg22 = arg22(flag16)
            if arg22 then
              arg22 = DeleteEntity
              flag16 = workValue6.data
              flag16 = flag16.lootBoxes
              numberValue12 = arg12.box
              flag16 = flag16[numberValue12]
              flag16 = flag16.entity
              -- Beginner: Delete a GTA entity.
              arg22(flag16)
              arg22 = workValue6.data
              arg22 = arg22.lootBoxes
              flag16 = stringHelper
              arg22 = arg22[flag16]
              arg22.entity = nil
            end
          end
        end
      end

      -- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
      function numberValue()
        local arg12, arg22
      end
      numberValue3 = CMG
      numberValue3 = numberValue3.createArea
      numberValue4 = "cmgbr_lootbox_"
      numberValue5 = stringHelper
      numberValue4 = numberValue4 .. numberValue5
      numberValue5 = numberValue17.coords
      numberValue6 = 200.0
      textValue3 = 6
      numberValue7 = numberValue19
      numberValue8 = numberValue20
      numberValue9 = numberValue
      dataTable2 = {}
      dataTable2.box = stringHelper
      -- Beginner: Create an interaction area around a world position.
      numberValue3(numberValue4, numberValue5, numberValue6, textValue3, numberValue7, numberValue8, numberValue9, dataTable2)
    end
  end
  dataTable3 = SetModelAsNoLongerNeeded
  numberValue11 = -1422265815
  dataTable3(numberValue11)
  dataTable3 = CMG
  dataTable3 = dataTable3.loadModel
  numberValue11 = 701173564
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataTable3(numberValue11)
  dataTable3 = pairs
  numberValue11 = workValue6.data
  numberValue11 = numberValue11.armourPlates
  dataTable3, numberValue11, numberValue13, numberValue15 = dataTable3(numberValue11)
  for stringHelper, numberValue17 in dataTable3, numberValue11, numberValue13, numberValue15 do
    numberValue19 = numberValue17.coords
    numberValue20 = workValue6.gas
    numberValue20 = numberValue20.coords
    numberValue19 = numberValue19 - numberValue20
    numberValue19 = #numberValue19
    numberValue20 = workValue6.gas
    numberValue20 = numberValue20.radius
    numberValue20 = numberValue20 / 2
    if numberValue19 < numberValue20 then
      numberValue19 = tCMG
      numberValue19 = numberValue19.setNamedBlip
      numberValue20 = "cmgbr_armour_"
      numberValue = stringHelper
      numberValue20 = numberValue20 .. numberValue
      numberValue = numberValue17.coords
      numberValue = numberValue.x
      numberValue3 = numberValue17.coords
      numberValue3 = numberValue3.y
      numberValue4 = numberValue17.coords
      numberValue4 = numberValue4.z
      numberValue5 = 175
      numberValue6 = 1
      textValue3 = "Lootbox"
      numberValue7 = 0.5
      numberValue19(numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3, numberValue7)

      -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: arg12) ===
      function numberValue19(arg12)
        local arg22, flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21
        arg22 = workValue6.data
        arg22 = arg22.armourPlates
        flag16 = arg12.plateId
        arg22 = arg22[flag16]
        if arg22 then
          arg22 = workValue6.data
          arg22 = arg22.armourPlates
          flag16 = arg12.plateId
          arg22 = arg22[flag16]
          arg22 = arg22.entity
          if nil == arg22 then
            arg22 = workValue6.data
            arg22 = arg22.armourPlates
            flag16 = arg12.plateId
            arg22 = arg22[flag16]
            flag16 = CreateObject
            numberValue12 = 701173564
            flag17 = numberValue17.coords
            flag17 = flag17.x
            flag18 = numberValue17.coords
            flag18 = flag18.y
            workValue9 = numberValue17.coords
            workValue9 = workValue9.z
            playerPed2 = false
            flag19 = false
            flag21 = false
            -- Beginner: result below is objectEntity.
            flag16 = flag16(numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21)
            arg22.entity = flag16
            arg22 = SetEntityHeading
            flag16 = workValue6.data
            flag16 = flag16.armourPlates
            numberValue12 = arg12.plateId
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            numberValue12 = 10.0
            -- Beginner: Change the direction an entity is facing.
            arg22(flag16, numberValue12)
            arg22 = PlaceObjectOnGroundProperly
            flag16 = workValue6.data
            flag16 = flag16.armourPlates
            numberValue12 = arg12.plateId
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            arg22(flag16)
            arg22 = FreezeEntityPosition
            flag16 = workValue6.data
            flag16 = flag16.armourPlates
            numberValue12 = arg12.plateId
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            numberValue12 = true
            -- Beginner: Freeze or unfreeze an entity in place.
            arg22(flag16, numberValue12)
          end
        else
          arg22 = print
          flag16 = string
          flag16 = flag16.format
          numberValue12 = "[CMG Events] body armour with ID of %s is nil in table (onEnter)"
          flag17 = arg12.plateId
          flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21 = flag16(numberValue12, flag17)
          arg22(flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21)
        end
      end

      -- === HELPER FUNCTION (decompiler name: numberValue20; parameters: arg12) ===
      function numberValue20(arg12)
        local arg22, flag16, numberValue12, flag17
        arg22 = workValue6.data
        arg22 = arg22.armourPlates
        flag16 = arg12.plateId
        arg22 = arg22[flag16]
        if arg22 then
          arg22 = workValue6.data
          arg22 = arg22.armourPlates
          flag16 = arg12.plateId
          arg22 = arg22[flag16]
          arg22 = arg22.entity
          if arg22 then
            arg22 = DoesEntityExist
            flag16 = workValue6.data
            flag16 = flag16.armourPlates
            numberValue12 = arg12.plateId
            flag16 = flag16[numberValue12]
            flag16 = flag16.entity
            arg22 = arg22(flag16)
            if arg22 then
              arg22 = DeleteEntity
              flag16 = workValue6.data
              flag16 = flag16.armourPlates
              numberValue12 = arg12.plateId
              flag16 = flag16[numberValue12]
              flag16 = flag16.entity
              -- Beginner: Delete a GTA entity.
              arg22(flag16)
              arg22 = workValue6.data
              arg22 = arg22.armourPlates
              flag16 = arg12.plateId
              arg22 = arg22[flag16]
              arg22.entity = nil
            end
          end
        else
          arg22 = print
          flag16 = string
          flag16 = flag16.format
          numberValue12 = "[CMG Events] body armour with ID of %s is nil in table (onLeave)"
          flag17 = arg12.plateId
          flag16, numberValue12, flag17 = flag16(numberValue12, flag17)
          arg22(flag16, numberValue12, flag17)
        end
      end

      -- === HELPER FUNCTION (decompiler name: numberValue; parameters: arg12) ===
      function numberValue(arg12)
        local arg22, flag16, numberValue12, flag17, flag18, workValue9, playerPed2
        arg22 = workValue6.data
        arg22 = arg22.armourPlates
        flag16 = arg12.plateId
        arg22 = arg22[flag16]
        if arg22 then
          arg22 = arg12.distance
          flag16 = 1.5
          if arg22 <= flag16 then
            arg22 = workValue6.data
            arg22 = arg22.armourPlates
            flag16 = arg12.plateId
            arg22 = arg22[flag16]
            arg22 = arg22.coords
            flag16 = CMG
            flag16 = flag16.DrawText3D
            numberValue12 = vector3
            flag17 = arg22.x
            flag18 = arg22.y
            workValue9 = arg22.z
            workValue9 = workValue9 - 0.5
            numberValue12 = numberValue12(flag17, flag18, workValue9)
            flag17 = "Press [E] to pickup armour."
            flag18 = 0.2
            flag16(numberValue12, flag17, flag18)
            flag16 = IsControlJustPressed
            numberValue12 = 0
            flag17 = 51
            flag16 = flag16(numberValue12, flag17)
            if flag16 then
              flag16 = TriggerServerEvent
              numberValue12 = "d1ee91a187"
              flag17 = arg12.plateId
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d1ee91a187".
              flag16(numberValue12, flag17)
              flag16 = SetPedComponentVariation
              numberValue12 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              numberValue12 = numberValue12()
              flag17 = 9
              flag18 = 15
              workValue9 = 3
              playerPed2 = 0
              flag16(numberValue12, flag17, flag18, workValue9, playerPed2)
            end
          end
        end
      end
      numberValue3 = CMG
      numberValue3 = numberValue3.createArea
      numberValue4 = "cmgbr_armour_"
      numberValue5 = stringHelper
      numberValue4 = numberValue4 .. numberValue5
      numberValue5 = numberValue17.coords
      numberValue6 = 200.0
      textValue3 = 6
      numberValue7 = numberValue19
      numberValue8 = numberValue20
      numberValue9 = numberValue
      dataTable2 = {}
      dataTable2.plateId = stringHelper
      -- Beginner: Create an interaction area around a world position.
      numberValue3(numberValue4, numberValue5, numberValue6, textValue3, numberValue7, numberValue8, numberValue9, dataTable2)
      numberValue3 = workValue6.data
      numberValue3 = numberValue3.armourPlates
      numberValue3 = numberValue3[stringHelper]
      numberValue4 = "cmgbr_armour_"
      numberValue5 = stringHelper
      numberValue4 = numberValue4 .. numberValue5
      numberValue3.areaId = numberValue4
    end
  end
  dataTable3 = SetModelAsNoLongerNeeded
  numberValue11 = 701173564
  dataTable3(numberValue11)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "024a3022e5".
cmgCall7(textValue, textValue2)
cmgCall7 = RegisterNetEvent
textValue = "1d514b8bc4"
-- Beginner: this function handles network event "1d514b8bc4".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, dataTable3, numberValue11
  arg2 = tCMG
  arg2 = arg2.removeArea
  dataTable3 = "cmgbr_lootbox_"
  numberValue11 = arg1
  dataTable3 = dataTable3 .. numberValue11
  arg2(dataTable3)
  arg2 = tCMG
  arg2 = arg2.removeNamedBlip
  dataTable3 = "cmgbr_lootbox_"
  numberValue11 = arg1
  dataTable3 = dataTable3 .. numberValue11
  arg2(dataTable3)
  arg2 = workValue6.data
  arg2 = arg2.lootBoxes
  arg2 = arg2[arg1]
  arg2 = arg2.entity
  if arg2 then
    arg2 = DoesEntityExist
    dataTable3 = workValue6.data
    dataTable3 = dataTable3.lootBoxes
    dataTable3 = dataTable3[arg1]
    dataTable3 = dataTable3.entity
    arg2 = arg2(dataTable3)
    if arg2 then
      arg2 = DeleteEntity
      dataTable3 = workValue6.data
      dataTable3 = dataTable3.lootBoxes
      dataTable3 = dataTable3[arg1]
      dataTable3 = dataTable3.entity
      -- Beginner: Delete a GTA entity.
      arg2(dataTable3)
      arg2 = workValue6.data
      arg2 = arg2.lootBoxes
      arg2 = arg2[arg1]
      arg2.entity = nil
    end
  end
  arg2 = workValue6.data
  arg2 = arg2.lootBoxes
  arg2[arg1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1d514b8bc4".
cmgCall7(textValue, textValue2)
cmgCall7 = RegisterNetEvent
textValue = "670a809e32"
-- Beginner: this function handles network event "670a809e32".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, dataTable3, numberValue11
  arg2 = tCMG
  arg2 = arg2.removeArea
  dataTable3 = "cmgbr_armour_"
  numberValue11 = arg1
  dataTable3 = dataTable3 .. numberValue11
  arg2(dataTable3)
  arg2 = tCMG
  arg2 = arg2.removeNamedBlip
  dataTable3 = "cmgbr_armour_"
  numberValue11 = arg1
  dataTable3 = dataTable3 .. numberValue11
  arg2(dataTable3)
  arg2 = workValue6.data
  arg2 = arg2.armourPlates
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = workValue6.data
    arg2 = arg2.armourPlates
    arg2 = arg2[arg1]
    arg2 = arg2.entity
    if arg2 then
      arg2 = DoesEntityExist
      dataTable3 = workValue6.data
      dataTable3 = dataTable3.armourPlates
      dataTable3 = dataTable3[arg1]
      dataTable3 = dataTable3.entity
      arg2 = arg2(dataTable3)
      if arg2 then
        arg2 = DeleteEntity
        dataTable3 = workValue6.data
        dataTable3 = dataTable3.armourPlates
        dataTable3 = dataTable3[arg1]
        dataTable3 = dataTable3.entity
        -- Beginner: Delete a GTA entity.
        arg2(dataTable3)
        arg2 = workValue6.data
        arg2 = arg2.armourPlates
        arg2 = arg2[arg1]
        arg2.entity = nil
      end
    end
    arg2 = workValue6.data
    arg2 = arg2.armourPlates
    arg2[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "670a809e32".
cmgCall7(textValue, textValue2)

-- === HELPER FUNCTION (decompiler name: cmgCall7; parameters: none) ===
function cmgCall7()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6
  workValue6.isInPlaneTransition = true
  arg1 = CMG
  arg1 = arg1.hideAllDisplays
  arg2 = "battlegrounds"
  arg1(arg2)
  arg1 = cmgCall4.locations
  arg2 = textValue5
  arg1 = arg1[arg2]
  arg1 = arg1.planeStart
  arg2 = cmgCall4.locations
  dataTable3 = textValue5
  arg2 = arg2[dataTable3]
  arg2 = arg2.planeHeading
  dataTable3 = CMG
  dataTable3 = dataTable3.spawnVehicle
  numberValue11 = 368211810
  numberValue13 = arg1.x
  numberValue15 = arg1.y
  stringHelper = arg1.z
  numberValue17 = arg2
  numberValue19 = false
  numberValue20 = false
  numberValue = false
  dataTable3 = dataTable3(numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue)
  numberValue11 = SetVehicleEngineOn
  numberValue13 = dataTable3
  numberValue15 = true
  stringHelper = true
  numberValue17 = false
  numberValue11(numberValue13, numberValue15, stringHelper, numberValue17)
  numberValue11 = FreezeEntityPosition
  numberValue13 = dataTable3
  numberValue15 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue11(numberValue13, numberValue15)
  numberValue11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue11 = numberValue11()
  numberValue13 = SetPedIntoVehicle
  numberValue15 = numberValue11
  stringHelper = dataTable3
  numberValue17 = -1
  numberValue13(numberValue15, stringHelper, numberValue17)
  numberValue13 = SetEntityVisible
  numberValue15 = numberValue11
  stringHelper = false
  numberValue17 = false
  numberValue13(numberValue15, stringHelper, numberValue17)
  numberValue13 = SetEntityHealth
  numberValue15 = numberValue11
  stringHelper = 200
  numberValue13(numberValue15, stringHelper)
  numberValue13 = CreateCam
  numberValue15 = "DEFAULT_SCRIPTED_CAMERA"
  stringHelper = true
  -- Beginner: result below is cameraHandle.
  numberValue13 = numberValue13(numberValue15, stringHelper)
  workValue6.planeCamera = numberValue13
  numberValue13 = RenderScriptCams
  numberValue15 = true
  stringHelper = true
  numberValue17 = 0
  numberValue19 = true
  numberValue20 = true
  numberValue13(numberValue15, stringHelper, numberValue17, numberValue19, numberValue20)
  numberValue13 = ShakeCam
  numberValue15 = workValue6.planeCamera
  stringHelper = "SKY_DIVING_SHAKE"
  numberValue17 = 1.0
  numberValue13(numberValue15, stringHelper, numberValue17)
  numberValue13 = SetCamShakeAmplitude
  numberValue15 = workValue6.planeCamera
  stringHelper = 1.0
  numberValue13(numberValue15, stringHelper)
  numberValue13 = SetCamFov
  numberValue15 = workValue6.planeCamera
  stringHelper = 25.0
  numberValue13(numberValue15, stringHelper)
  numberValue13 = SendNUIMessage
  numberValue15 = {}
  numberValue15.transactionType = "planeintro"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  numberValue13(numberValue15)
  numberValue13 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  numberValue13 = numberValue13()
  while true do
    numberValue15 = currentEvent
    if numberValue15 then
      numberValue15 = currentEvent
      numberValue15 = numberValue15.isActive
      if numberValue15 then
        goto flow_label_99
      end
    end
    numberValue15 = CMG
    numberValue15 = numberValue15.showAllDisplays
    stringHelper = "battlegrounds"
    numberValue15(stringHelper)
    numberValue15 = DeleteEntity
    stringHelper = dataTable3
    -- Beginner: Delete a GTA entity.
    numberValue15(stringHelper)
    numberValue15 = nil
    return numberValue15
    ::flow_label_99::
    numberValue15 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue15 = numberValue15()
    numberValue15 = numberValue15 - numberValue13
    numberValue15 = numberValue15 / 3500
    if numberValue15 > 1.0 then
      break
    end
    stringHelper = 1.0
    stringHelper = stringHelper - numberValue15
    stringHelper = -60.0 * stringHelper
    stringHelper = stringHelper + 2.0
    numberValue17 = GetOffsetFromEntityInWorldCoords
    numberValue19 = dataTable3
    numberValue20 = 0.0
    numberValue = 25.0 * numberValue15
    numberValue3 = 90.0
    numberValue = numberValue3 - numberValue
    numberValue3 = stringHelper
    numberValue17 = numberValue17(numberValue19, numberValue20, numberValue, numberValue3)
    numberValue19 = SetCamCoord
    numberValue20 = workValue6.planeCamera
    numberValue = numberValue17.x
    numberValue3 = numberValue17.y
    numberValue4 = numberValue17.z
    numberValue19(numberValue20, numberValue, numberValue3, numberValue4)
    numberValue19 = SetCamRot
    numberValue20 = workValue6.planeCamera
    numberValue = 90.0 * numberValue15
    numberValue3 = 90.0
    numberValue = numberValue3 - numberValue
    numberValue3 = 0.0
    numberValue4 = arg2 + 180.0
    numberValue5 = 2
    numberValue19(numberValue20, numberValue, numberValue3, numberValue4, numberValue5)
    numberValue19 = numberValue15 - 0.65
    numberValue19 = numberValue19 * 5.0
    if numberValue19 > 0.0 and numberValue19 < 1.0 then
      numberValue20 = SetCamFov
      numberValue = workValue6.planeCamera
      numberValue3 = 30.0 * numberValue19
      numberValue3 = 25.0 + numberValue3
      numberValue20(numberValue, numberValue3)
    end
    numberValue20 = Citizen
    numberValue20 = numberValue20.Wait
    numberValue = 0
    numberValue20(numberValue)
  end
  numberValue15 = false
  stringHelper = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stringHelper = stringHelper()
  while true do
    numberValue17 = currentEvent
    if numberValue17 then
      numberValue17 = currentEvent
      numberValue17 = numberValue17.isActive
      if numberValue17 then
        goto flow_label_181
      end
    end
    numberValue17 = CMG
    numberValue17 = numberValue17.showAllDisplays
    numberValue19 = "battlegrounds"
    numberValue17(numberValue19)
    numberValue17 = DeleteEntity
    numberValue19 = dataTable3
    -- Beginner: Delete a GTA entity.
    numberValue17(numberValue19)
    numberValue17 = nil
    return numberValue17
    ::flow_label_181::
    numberValue17 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue17 = numberValue17()
    numberValue17 = numberValue17 - stringHelper
    numberValue19 = numberValue17 / 2500
    if numberValue19 > 1.0 then
      break
    end
    if not numberValue15 then
      numberValue20 = 2250
      if numberValue17 >= numberValue20 then
        numberValue20 = DoScreenFadeOut
        numberValue = 250
        numberValue20(numberValue)
        numberValue15 = true
      end
    end
    numberValue20 = GetOffsetFromEntityInWorldCoords
    numberValue = dataTable3
    numberValue3 = 0.0
    numberValue4 = 25.0 * numberValue19
    numberValue5 = 65.0
    numberValue4 = numberValue5 - numberValue4
    numberValue5 = 2.0
    numberValue20 = numberValue20(numberValue, numberValue3, numberValue4, numberValue5)
    numberValue = SetCamCoord
    numberValue3 = workValue6.planeCamera
    numberValue4 = numberValue20.x
    numberValue5 = numberValue20.y
    numberValue6 = numberValue20.z
    numberValue(numberValue3, numberValue4, numberValue5, numberValue6)
    numberValue = SetCamFov
    numberValue3 = workValue6.planeCamera
    numberValue4 = 40.0 * numberValue19
    numberValue5 = 55.0
    numberValue4 = numberValue5 - numberValue4
    numberValue(numberValue3, numberValue4)
    numberValue = Citizen
    numberValue = numberValue.Wait
    numberValue3 = 0
    numberValue(numberValue3)
  end
  numberValue17 = Citizen
  numberValue17 = numberValue17.Wait
  numberValue19 = 2000
  numberValue17(numberValue19)
  numberValue17 = DoScreenFadeIn
  numberValue19 = 250
  numberValue17(numberValue19)
  numberValue17 = currentEvent
  if numberValue17 then
    numberValue17 = currentEvent
    numberValue17 = numberValue17.isActive
    if numberValue17 then
      goto flow_label_250
    end
  end
  numberValue17 = CMG
  numberValue17 = numberValue17.showAllDisplays
  numberValue19 = "battlegrounds"
  numberValue17(numberValue19)
  numberValue17 = DeleteEntity
  numberValue19 = dataTable3
  -- Beginner: Delete a GTA entity.
  numberValue17(numberValue19)
  numberValue17 = nil
  return numberValue17
  ::flow_label_250::
  numberValue17 = ShakeCam
  numberValue19 = workValue6.planeCamera
  numberValue20 = "HAND_SHAKE"
  numberValue = 0.5
  numberValue17(numberValue19, numberValue20, numberValue)
  numberValue17 = SetCamShakeAmplitude
  numberValue19 = workValue6.planeCamera
  numberValue20 = 0.5
  numberValue17(numberValue19, numberValue20)
  numberValue17 = SendNUIMessage
  numberValue19 = {}
  numberValue19.transactionType = "planeoutro"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  numberValue17(numberValue19)
  workValue6.isInPlaneTransition = false
  numberValue17 = Citizen
  numberValue17 = numberValue17.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: none) ===
  function numberValue19()
    local arg12, arg22, flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19, flag21, flag2, flag3, flag4
    arg12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg12 = arg12()
    while true do
      arg22 = workValue6
      if arg22 then
        arg22 = workValue6.killPlane
        if arg22 then
          arg22 = FreezeEntityPosition
          flag16 = dataTable3
          numberValue12 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          arg22(flag16, numberValue12)
          arg22 = nil
          return arg22
        end
      end
      arg22 = currentEvent
      if arg22 then
        arg22 = currentEvent
        arg22 = arg22.isActive
        if arg22 then
          goto flow_label_27
        end
      end
      arg22 = DeleteEntity
      flag16 = dataTable3
      -- Beginner: Delete a GTA entity.
      arg22(flag16)
      arg22 = nil
      return arg22
      ::flow_label_27::
      arg22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg22 = arg22()
      arg22 = arg22 - arg12
      arg22 = arg22 / 1500
      if arg22 <= 1.0 then
        flag16 = SetCamFov
        numberValue12 = workValue6.planeCamera
        flag17 = 50.0 * arg22
        flag17 = 20.0 + flag17
        flag16(numberValue12, flag17)
      else
        flag16 = SetCamFov
        numberValue12 = workValue6.planeCamera
        flag17 = 70.0
        flag16(numberValue12, flag17)
      end
      flag16 = GetEntityForwardVector
      numberValue12 = dataTable3
      flag16 = flag16(numberValue12)
      numberValue12 = GetEntityCoords
      flag17 = dataTable3
      flag18 = true
      -- Beginner: result below is entityCoords.
      numberValue12 = numberValue12(flag17, flag18)
      flag17 = flag16 * 50.0
      flag18 = GetFrameTime
      flag18 = flag18()
      flag17 = flag17 * flag18
      flag17 = numberValue12 + flag17
      flag18 = SetEntityCoordsNoOffset
      workValue9 = dataTable3
      playerPed2 = flag17.x
      flag19 = flag17.y
      flag21 = flag17.z
      flag2 = true
      flag3 = false
      flag4 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      flag18(workValue9, playerPed2, flag19, flag21, flag2, flag3, flag4)
      flag18 = GetOffsetFromEntityInWorldCoords
      workValue9 = dataTable3
      playerPed2 = 0.0
      flag19 = -50.0
      flag21 = 45.0
      flag18 = flag18(workValue9, playerPed2, flag19, flag21)
      workValue9 = SetCamCoord
      playerPed2 = workValue6.planeCamera
      flag19 = flag18.x
      flag21 = flag18.y
      flag2 = flag18.z
      workValue9(playerPed2, flag19, flag21, flag2)
      workValue9 = PointCamAtEntity
      playerPed2 = workValue6.planeCamera
      flag19 = dataTable3
      flag21 = 0.0
      flag2 = 0.0
      flag3 = 0.0
      flag4 = false
      workValue9(playerPed2, flag19, flag21, flag2, flag3, flag4)
      workValue9 = Citizen
      workValue9 = workValue9.Wait
      playerPed2 = 0
      workValue9(playerPed2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue17(numberValue19)
  return dataTable3
end
textValue = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2
  arg1 = flag11
  return arg1
end
textValue.isInBattleGroundsPlaneIntro = textValue2
textValue = RegisterNetEvent
textValue2 = "541b03f649"
-- Beginner: this function handles network event "541b03f649".

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1) ===
function dataTable(arg1)
  local arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3
  arg2 = MumbleSetActive
  dataTable3 = false
  arg2(dataTable3)
  arg2 = true
  flag11 = arg2
  arg2 = FreezeEntityPosition
  dataTable3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  dataTable3 = dataTable3()
  numberValue11 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(dataTable3, numberValue11)
  textValue5 = arg1
  arg2 = CMG
  arg2 = arg2.startGas
  dataTable3 = cmgCall4.locations
  numberValue11 = textValue5
  dataTable3 = dataTable3[numberValue11]
  dataTable3 = dataTable3.gas
  dataTable3 = dataTable3.initalRadius
  numberValue11 = cmgCall4.locations
  numberValue13 = textValue5
  numberValue11 = numberValue11[numberValue13]
  numberValue11 = numberValue11.gas
  numberValue11 = numberValue11.centre
  arg2(dataTable3, numberValue11)
  arg2 = DoScreenFadeOut
  dataTable3 = 1500
  arg2(dataTable3)
  arg2 = Wait
  dataTable3 = 1500
  arg2(dataTable3)
  arg2 = currentEvent
  arg2.minigameName = "Battle Royale"
  arg2 = CMG
  arg2 = arg2.hideAllDisplays
  dataTable3 = "battlegrounds"
  arg2(dataTable3)
  arg2 = CMG
  arg2 = arg2.stopEventSequence
  dataTable3 = true
  arg2(dataTable3)
  arg2 = CMG
  arg2 = arg2.giveWeapons
  dataTable3 = {}
  numberValue11 = {}
  numberValue13 = 2
  numberValue11[1] = numberValue13
  dataTable3.GADGET_PARACHUTE = numberValue11
  arg2(dataTable3)
  arg2 = CMG
  arg2 = arg2.loadModel
  dataTable3 = 1981688531
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(dataTable3)
  arg2 = cmgCall4.locations
  dataTable3 = textValue5
  arg2 = arg2[dataTable3]
  arg2 = arg2.planeStart
  dataTable3 = SetEntityCoords
  numberValue11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue11 = numberValue11()
  numberValue13 = arg2.x
  numberValue15 = arg2.y
  stringHelper = arg2.z
  numberValue17 = true
  numberValue19 = false
  numberValue20 = false
  numberValue = false
  -- Beginner: Move/teleport an entity to new coordinates.
  dataTable3(numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue)
  dataTable3 = pairs
  numberValue11 = GetActivePlayers
  numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3 = numberValue11()
  dataTable3, numberValue11, numberValue13, numberValue15 = dataTable3(numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3)
  for stringHelper, numberValue17 in dataTable3, numberValue11, numberValue13, numberValue15 do
    numberValue19 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    numberValue19 = numberValue19()
    if numberValue17 ~= numberValue19 then
      numberValue19 = NetworkConcealPlayer
      numberValue20 = numberValue17
      numberValue = true
      numberValue3 = false
      numberValue19(numberValue20, numberValue, numberValue3)
      numberValue19 = SetEntityVisible
      numberValue20 = GetPlayerPed
      numberValue = numberValue17
      -- Beginner: result below is playerPed.
      numberValue20 = numberValue20(numberValue)
      numberValue = false
      numberValue3 = false
      numberValue19(numberValue20, numberValue, numberValue3)
    end
  end
  dataTable3 = DoScreenFadeIn
  numberValue11 = 1500
  dataTable3(numberValue11)
  dataTable3 = FreezeEntityPosition
  numberValue11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue11 = numberValue11()
  numberValue13 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  dataTable3(numberValue11, numberValue13)
  dataTable3 = cmgCall7
  dataTable3 = dataTable3()
  if nil == dataTable3 then
    return
  end
  numberValue11 = workValue6.data
  numberValue11.plane = dataTable3
  numberValue11 = flag
  numberValue11 = not numberValue11
  flag = numberValue11
  numberValue11 = Wait
  numberValue13 = 1500
  numberValue11(numberValue13)
  numberValue11 = Citizen
  numberValue11 = numberValue11.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue13; parameters: none) ===
  function numberValue13()
    local arg12, arg22
    while true do
      arg12 = workValue6.player
      arg12 = arg12.canExitPlane
      if arg12 then
        break
      end
      arg12 = currentEvent
      arg12 = arg12.isActive
      if not arg12 then
        break
      end
      arg12 = workValue6.data
      arg22 = workValue6.data
      arg22 = arg22.timer
      arg22 = arg22 - 1
      arg12.timer = arg22
      arg12 = Wait
      arg22 = 1000
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue11(numberValue13)
  numberValue11 = SetTimeout
  numberValue13 = 15000

  -- === HELPER FUNCTION (decompiler name: numberValue15; parameters: none) ===
  function numberValue15()
    local arg12, arg22, flag16
    arg12 = currentEvent
    arg12 = arg12.isActive
    if arg12 then
      arg12 = workValue6.player
      arg12.canExitPlane = true
      arg12 = SetTimeout
      arg22 = 50000

      -- === HELPER FUNCTION (decompiler name: flag16; parameters: none) ===
      function flag16()
        local cmgCall, flag12, workValue4, playerPed, numberValue14, workValue7, numberValue16, numberValue18, flag20, flag22, numberValue2
        cmgCall = CMG
        cmgCall = cmgCall.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgCall = cmgCall()
        flag12 = currentEvent
        flag12 = flag12.isActive
        if flag12 then
          flag12 = workValue6.data
          flag12 = flag12.plane
          if flag12 == cmgCall then
            flag12 = GetEntityCoords
            workValue4 = workValue6.data
            workValue4 = workValue4.plane
            playerPed = true
            -- Beginner: result below is entityCoords.
            flag12 = flag12(workValue4, playerPed)
            workValue4 = AddExplosion
            playerPed = flag12.x
            numberValue14 = flag12.y
            workValue7 = flag12.z
            numberValue16 = 0
            numberValue18 = 1.0
            flag20 = true
            flag22 = false
            numberValue2 = 1.0
            workValue4(playerPed, numberValue14, workValue7, numberValue16, numberValue18, flag20, flag22, numberValue2)
            workValue4 = SetEntityHealth
            playerPed = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            playerPed = playerPed()
            numberValue14 = 0
            workValue4(playerPed, numberValue14)
            workValue6.killPlane = true
          end
        end
      end
      arg12(arg22, flag16)
    end
  end
  numberValue11(numberValue13, numberValue15)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "541b03f649".
textValue(textValue2, dataTable)
textValue = CMG
textValue = textValue.registerMinigameCleanupHandler
textValue2 = "Battlegrounds"

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
function dataTable()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17
  arg1 = MumbleSetActive
  arg2 = true
  arg1(arg2)
  arg1 = currentEvent
  arg1.isActive = false
  arg1 = CMG
  arg1 = arg1.setPlayerCanOpenLeaderboard
  arg2 = false
  arg1(arg2)
  arg1 = pairs
  arg2 = workValue6.data
  arg2 = arg2.lootBoxes
  arg1, arg2, dataTable3, numberValue11 = arg1(arg2)
  for numberValue13, numberValue15 in arg1, arg2, dataTable3, numberValue11 do
    stringHelper = numberValue15.areaId
    if stringHelper then
      stringHelper = tCMG
      stringHelper = stringHelper.removeArea
      numberValue17 = numberValue15.areaId
      stringHelper(numberValue17)
      stringHelper = tCMG
      stringHelper = stringHelper.removeNamedBlip
      numberValue17 = numberValue15.areaId
      stringHelper(numberValue17)
    end
    stringHelper = DoesEntityExist
    numberValue17 = numberValue15.entity
    stringHelper = stringHelper(numberValue17)
    if stringHelper then
      stringHelper = DeleteEntity
      numberValue17 = numberValue15.entity
      -- Beginner: Delete a GTA entity.
      stringHelper(numberValue17)
    end
  end
  arg1 = SetCamActive
  arg2 = workValue6.planeCamera
  dataTable3 = false
  arg1(arg2, dataTable3)
  arg1 = RenderScriptCams
  arg2 = false
  dataTable3 = false
  numberValue11 = 0
  numberValue13 = false
  numberValue15 = false
  arg1(arg2, dataTable3, numberValue11, numberValue13, numberValue15)
  arg1 = DestroyCam
  arg2 = workValue6.planeCamera
  dataTable3 = false
  arg1(arg2, dataTable3)
  arg1 = pairs
  arg2 = workValue6.data
  arg2 = arg2.armourPlates
  arg1, arg2, dataTable3, numberValue11 = arg1(arg2)
  for numberValue13, numberValue15 in arg1, arg2, dataTable3, numberValue11 do
    stringHelper = numberValue15.areaId
    if stringHelper then
      stringHelper = tCMG
      stringHelper = stringHelper.removeArea
      numberValue17 = numberValue15.areaId
      stringHelper(numberValue17)
      stringHelper = tCMG
      stringHelper = stringHelper.removeNamedBlip
      numberValue17 = numberValue15.areaId
      stringHelper(numberValue17)
    end
    stringHelper = DoesEntityExist
    numberValue17 = numberValue15.entity
    stringHelper = stringHelper(numberValue17)
    if stringHelper then
      stringHelper = DeleteEntity
      numberValue17 = numberValue15.entity
      -- Beginner: Delete a GTA entity.
      stringHelper(numberValue17)
    end
  end
  arg1 = RemoveBlip
  arg2 = workValue6.gas
  arg2 = arg2.blip
  arg1(arg2)
  arg1 = false
  flag11 = arg1
  arg1 = workValue6.player
  arg1 = arg1.isInWinnerScreen
  if not arg1 then
    arg1 = false
    flag = arg1
    arg1 = workValue5
    arg1 = arg1()
    workValue6 = arg1
  end
end
textValue(textValue2, dataTable)
textValue = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17
  dataTable3 = workValue6.gas
  dataTable3.coords = arg2
  dataTable3 = workValue6.gas
  dataTable3.radius = arg1
  dataTable3 = workValue6.gas
  numberValue11 = AddBlipForRadius
  numberValue13 = arg2.x
  numberValue15 = arg2.y
  stringHelper = arg2.z
  numberValue17 = arg1 / 2.0
  -- Beginner: result below is blipHandle.
  numberValue11 = numberValue11(numberValue13, numberValue15, stringHelper, numberValue17)
  dataTable3.blip = numberValue11
  dataTable3 = SetBlipColour
  numberValue11 = workValue6.gas
  numberValue11 = numberValue11.blip
  numberValue13 = 1
  dataTable3(numberValue11, numberValue13)
  dataTable3 = SetBlipAlpha
  numberValue11 = workValue6.gas
  numberValue11 = numberValue11.blip
  numberValue13 = 155
  dataTable3(numberValue11, numberValue13)
  dataTable3 = workValue6.gas
  numberValue11 = workValue6.gas
  numberValue11 = numberValue11.isActive
  numberValue11 = not numberValue11
  dataTable3.isActive = numberValue11
end
textValue.startGas = textValue2
textValue = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue
  arg2 = SendNUIMessage
  dataTable3 = {}
  dataTable3.transactionType = "br-gas"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg2(dataTable3)
  arg2 = workValue6.gas
  dataTable3 = workValue6.gas
  dataTable3 = dataTable3.numRounds
  dataTable3 = dataTable3 + 1
  arg2.numRounds = dataTable3
  arg2 = math
  arg2 = arg2.max
  dataTable3 = 30
  numberValue11 = workValue6.gas
  numberValue11 = numberValue11.numRounds
  numberValue11 = numberValue11 * 15
  numberValue13 = 120
  numberValue11 = numberValue13 - numberValue11
  arg2 = arg2(dataTable3, numberValue11)
  dataTable3 = workValue6.gas
  numberValue11 = {}
  numberValue13 = math
  numberValue13 = numberValue13.floor
  numberValue15 = arg2 / 60
  numberValue13 = numberValue13(numberValue15)
  numberValue11.minutes = numberValue13
  numberValue13 = arg2 % 60
  numberValue11.seconds = numberValue13
  dataTable3.timeUntilNext = numberValue11
  dataTable3 = CMG
  dataTable3 = dataTable3.announceMpBigMsg
  numberValue11 = "~r~GAS MOVING"
  numberValue13 = "The gas is closing in!"
  numberValue15 = 5000
  stringHelper = nil
  numberValue17 = nil
  numberValue19 = vector2
  numberValue20 = 0.5
  numberValue = 0.2
  numberValue19, numberValue20, numberValue = numberValue19(numberValue20, numberValue)
  dataTable3(numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue)
  dataTable3 = Wait
  numberValue11 = 4000
  dataTable3(numberValue11)
  dataTable3 = Citizen
  dataTable3 = dataTable3.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
  function numberValue11()
    local arg12, arg22, flag16, numberValue12, flag17, flag18
    while true do
      arg12 = workValue6.gas
      arg12 = arg12.isActive
      if not arg12 then
        break
      end
      arg12 = workValue6.gas
      arg12 = arg12.radius
      arg22 = tonumber
      flag16 = arg1
      arg22 = arg22(flag16)
      if not (arg12 > arg22) then
        break
      end
      arg12 = currentEvent
      arg12 = arg12.isActive
      if not arg12 then
        break
      end
      arg12 = workValue6.gas
      arg22 = workValue6.gas
      arg22 = arg22.radius
      flag16 = workValue6.gas
      flag16 = flag16.radius
      flag16 = flag16 * 0.008
      numberValue12 = GetFrameTime
      numberValue12 = numberValue12()
      flag16 = flag16 * numberValue12
      arg22 = arg22 - flag16
      arg12.radius = arg22
      arg12 = RemoveBlip
      arg22 = workValue6.gas
      arg22 = arg22.blip
      arg12(arg22)
      arg12 = workValue6.gas
      arg22 = AddBlipForRadius
      flag16 = workValue6.gas
      flag16 = flag16.coords
      flag16 = flag16.x
      numberValue12 = workValue6.gas
      numberValue12 = numberValue12.coords
      numberValue12 = numberValue12.y
      flag17 = workValue6.gas
      flag17 = flag17.coords
      flag17 = flag17.z
      flag18 = workValue6.gas
      flag18 = flag18.radius
      flag18 = flag18 / 2.0
      -- Beginner: result below is blipHandle.
      arg22 = arg22(flag16, numberValue12, flag17, flag18)
      arg12.blip = arg22
      arg12 = SetBlipColour
      arg22 = workValue6.gas
      arg22 = arg22.blip
      flag16 = 1
      arg12(arg22, flag16)
      arg12 = SetBlipAlpha
      arg22 = workValue6.gas
      arg22 = arg22.blip
      flag16 = 155
      arg12(arg22, flag16)
      arg12 = Wait
      arg22 = 0
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  dataTable3(numberValue11)
end
textValue.changeGasRadius = textValue2
textValue = CMG
textValue = textValue.createThreadOnTick

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3, numberValue7, numberValue8, numberValue9, dataTable2, flag13, numberValue10, flag14, workValue2, workValue3, flag15
  arg1 = workValue6.gas
  arg1 = arg1.isActive
  if arg1 then
    arg1 = workValue6.gas
    arg1 = arg1.radius
    arg2 = 1800.0
    if arg1 >= arg2 then
      arg1 = arg1 - 17.5
    else
      arg2 = 1400.0
      if arg1 >= arg2 then
        arg1 = arg1 - 15.0
      else
        arg2 = 1000
        if arg1 >= arg2 then
          arg1 = arg1 - 12.5
        else
          arg2 = 600
          if arg1 >= arg2 then
            arg1 = arg1 - 10.0
          else
            arg2 = 250
            if arg1 >= arg2 then
              arg1 = arg1 - 5.0
            end
          end
        end
      end
    end
    arg2 = DrawMarker
    dataTable3 = 1
    numberValue11 = workValue6.gas
    numberValue11 = numberValue11.coords
    numberValue11 = numberValue11.x
    numberValue13 = workValue6.gas
    numberValue13 = numberValue13.coords
    numberValue13 = numberValue13.y
    numberValue15 = 0.0
    stringHelper = 0.0
    numberValue17 = 0.0
    numberValue19 = 0.0
    numberValue20 = 1.0
    numberValue = 1.0
    numberValue3 = 1.0
    numberValue4 = arg1
    numberValue5 = arg1
    numberValue6 = 6000.0
    textValue3 = 255
    numberValue7 = 0
    numberValue8 = 0
    numberValue9 = 155
    dataTable2 = false
    flag13 = false
    numberValue10 = 2
    flag14 = false
    workValue2 = nil
    workValue3 = nil
    flag15 = false
    arg2(dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3, numberValue7, numberValue8, numberValue9, dataTable2, flag13, numberValue10, flag14, workValue2, workValue3, flag15)
  end
end
dataTable = "Battle Royale Gas Marker"
-- Beginner: Run a helper every game frame while this script is active.
textValue(textValue2, dataTable)
textValue = {}
textValue[1] = "1st"
textValue[2] = "2nd"
textValue[3] = "3rd"
textValue2 = {}
textValue2[1] = 4
textValue2[2] = 3
textValue2[3] = 2
dataTable = {}
dataTable[1] = "~HUD_COLOUR_GOLD~"
dataTable[2] = "~HUD_COLOUR_SILVER~"
dataTable[3] = "~HUD_COLOUR_BRONZE~"
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20
  arg1 = currentEvent
  arg1 = arg1.isActive
  if arg1 then
    arg1 = currentEvent
    arg1 = arg1.minigameName
    if "Battle Royale" == arg1 then
      arg1 = workValue6
      if arg1 then
        arg1 = workValue6.isInPlaneTransition
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.createTimerBars
          -- Beginner: result below is timerBars.
          arg1 = arg1()
          arg2 = arg1.push
          dataTable3 = "~y~GAS:~w~"
          numberValue11 = string
          numberValue11 = numberValue11.format
          numberValue13 = "~y~%02d:%02d"
          numberValue15 = workValue6.gas
          numberValue15 = numberValue15.timeUntilNext
          numberValue15 = numberValue15.minutes
          stringHelper = workValue6.gas
          stringHelper = stringHelper.timeUntilNext
          stringHelper = stringHelper.seconds
          numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20 = numberValue11(numberValue13, numberValue15, stringHelper)
          arg2(dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20)
          arg2 = 3
          dataTable3 = 1
          numberValue11 = -1
          for numberValue13 = arg2, dataTable3, numberValue11 do
            numberValue15 = workValue6.data
            numberValue15 = numberValue15.leaderboard
            numberValue15 = numberValue15[numberValue13]
            if numberValue15 then
              numberValue15 = arg1.push
              stringHelper = dataTable
              stringHelper = stringHelper[numberValue13]
              numberValue17 = textValue
              numberValue17 = numberValue17[numberValue13]
              numberValue19 = " "
              numberValue20 = workValue6.data
              numberValue20 = numberValue20.leaderboard
              numberValue20 = numberValue20[numberValue13]
              numberValue20 = numberValue20.name
              stringHelper = stringHelper .. numberValue17 .. numberValue19 .. numberValue20
              numberValue17 = dataTable
              numberValue17 = numberValue17[numberValue13]
              numberValue19 = workValue6.data
              numberValue19 = numberValue19.leaderboard
              numberValue19 = numberValue19[numberValue13]
              numberValue19 = numberValue19.kills
              numberValue17 = numberValue17 .. numberValue19
              numberValue15(stringHelper, numberValue17)
            end
          end
          arg2 = arg1.draw
          arg2()
        end
      end
    end
  end
end
cmgCall3 = "Battle Royale Timer Bars"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(eventRegistration, cmgCall3)
cmgCall2 = Citizen
cmgCall2 = cmgCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2
  while true do
    arg1 = workValue6.gas
    arg1 = arg1.isActive
    if arg1 then
      arg1 = workValue6.gas
      arg1 = arg1.timeUntilNext
      arg1 = arg1.seconds
      if arg1 > 0 then
        arg1 = workValue6.gas
        arg1 = arg1.timeUntilNext
        arg2 = workValue6.gas
        arg2 = arg2.timeUntilNext
        arg2 = arg2.seconds
        arg2 = arg2 - 1
        arg1.seconds = arg2
      else
        arg1 = workValue6.gas
        arg1 = arg1.timeUntilNext
        arg1 = arg1.seconds
        if 0 == arg1 then
          arg1 = workValue6.gas
          arg1 = arg1.timeUntilNext
          arg1 = arg1.minutes
          if 0 == arg1 then
            arg1 = CMG
            arg1 = arg1.changeGasRadius
            arg2 = workValue6.gas
            arg2 = arg2.radius
            arg2 = arg2 - 400
            arg1(arg2)
        end
        else
          arg1 = workValue6.gas
          arg1 = arg1.timeUntilNext
          arg1.seconds = 59
          arg1 = workValue6.gas
          arg1 = arg1.timeUntilNext
          arg2 = workValue6.gas
          arg2 = arg2.timeUntilNext
          arg2 = arg2.minutes
          arg2 = arg2 - 1
          arg1.minutes = arg2
        end
      end
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(eventRegistration)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17
  arg1 = sortedKeys
  arg2 = workValue6.players

  -- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg12, arg22) ===
  function dataTable3(arg12, arg22)
    local flag16, numberValue12
    flag16 = workValue6.players
    flag16 = flag16[arg12]
    flag16 = flag16.kills
    numberValue12 = workValue6.players
    numberValue12 = numberValue12[arg22]
    numberValue12 = numberValue12.kills
    flag16 = flag16 > numberValue12
    return flag16
  end
  arg1 = arg1(arg2, dataTable3)
  arg2 = 1
  dataTable3 = 3
  numberValue11 = 1
  for numberValue13 = arg2, dataTable3, numberValue11 do
    numberValue15 = workValue6.players
    stringHelper = arg1[numberValue13]
    numberValue15 = numberValue15[stringHelper]
    if numberValue15 then
      numberValue15 = workValue6.players
      stringHelper = arg1[numberValue13]
      numberValue15 = numberValue15[stringHelper]
      numberValue15.leaderboardPos = numberValue13
      numberValue15 = workValue6.data
      numberValue15 = numberValue15.leaderboard
      stringHelper = workValue6.players
      numberValue17 = arg1[numberValue13]
      stringHelper = stringHelper[numberValue17]
      numberValue15[numberValue13] = stringHelper
    end
  end
end
eventRegistration = RegisterNetEvent
cmgCall3 = "24b9d7db9c"
-- Beginner: this function handles network event "24b9d7db9c".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local dataTable3, numberValue11, numberValue13, numberValue15
  dataTable3 = workValue6.players
  dataTable3 = dataTable3[arg1]
  if dataTable3 then
    dataTable3 = workValue6.players
    dataTable3 = dataTable3[arg1]
    numberValue11 = workValue6.players
    numberValue11 = numberValue11[arg1]
    numberValue11 = numberValue11.kills
    numberValue11 = numberValue11 + 1
    dataTable3.kills = numberValue11
  else
    dataTable3 = workValue6.players
    numberValue11 = {}
    numberValue11.source = arg1
    numberValue11.name = arg2
    numberValue11.kills = 1
    dataTable3[arg1] = numberValue11
  end
  dataTable3 = CMG
  dataTable3 = dataTable3.updateScoreboard
  numberValue11 = arg1
  numberValue13 = 5
  numberValue15 = workValue6.players
  numberValue15 = numberValue15[arg1]
  numberValue15 = numberValue15.kills
  dataTable3(numberValue11, numberValue13, numberValue15)
  dataTable3 = cmgCall2
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  dataTable3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "24b9d7db9c".
eventRegistration(cmgCall3, textValue4)
eventRegistration = RegisterNetEvent
cmgCall3 = "8ec3705e18"
-- Beginner: this function handles network event "8ec3705e18".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, dataTable3, numberValue11
  arg2 = workValue6.players
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = table
    arg2 = arg2.copy
    dataTable3 = workValue6.players
    dataTable3 = dataTable3[arg1]
    arg2 = arg2(dataTable3)
    dataTable3 = workValue6.players
    dataTable3[arg1] = nil
    dataTable3 = arg2.leaderboardPos
    if dataTable3 then
      dataTable3 = workValue6.data
      dataTable3 = dataTable3.leaderboard
      numberValue11 = arg2.leaderboardPos
      dataTable3[numberValue11] = nil
      dataTable3 = cmgCall2
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      dataTable3()
    end
  end
  arg2 = CMG
  arg2 = arg2.removePlayerFromLeaderboard
  dataTable3 = arg1
  arg2(dataTable3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8ec3705e18".
eventRegistration(cmgCall3, textValue4)
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, dataTable3, numberValue11, numberValue13
  while true do
    arg1 = workValue6.gas
    arg1 = arg1.isActive
    if arg1 then
      arg1 = workValue6.player
      arg1 = arg1.hasJumped
      if arg1 then
        arg1 = IsPedInParachuteFreeFall
        arg2 = PlayerPedId
        arg2, dataTable3, numberValue11, numberValue13 = arg2()
        arg1 = arg1(arg2, dataTable3, numberValue11, numberValue13)
        if not arg1 then
          arg1 = GetPedParachuteState
          arg2 = PlayerPedId
          arg2, dataTable3, numberValue11, numberValue13 = arg2()
          arg1 = arg1(arg2, dataTable3, numberValue11, numberValue13)
          if arg1 <= 2 then
            arg1 = currentEvent
            arg1 = arg1.isActive
            if arg1 then
              arg1 = CMG
              arg1 = arg1.isSpectatingEvent
              arg1 = arg1()
              if not arg1 then
                arg1 = CMG
                arg1 = arg1.getPlayerCoords
                -- Beginner: result below is playerCoords.
                arg1 = arg1()
                arg1 = arg1.xy
                arg2 = workValue6.gas
                arg2 = arg2.coords
                arg2 = arg2.xy
                arg1 = arg1 - arg2
                arg1 = #arg1
                arg2 = workValue6.gas
                arg2 = arg2.radius
                arg2 = arg2 / 2.0
                if arg1 > arg2 then
                  arg1 = drawNativeText
                  arg2 = "~r~You are in the gas. Get to the safe zone before you suffocate."
                  -- Beginner: Draw GTA-style text on screen.
                  arg1(arg2)
                  arg1 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  arg1 = arg1()
                  arg2 = GetEntityHealth
                  dataTable3 = arg1
                  -- Beginner: result below is health.
                  arg2 = arg2(dataTable3)
                  dataTable3 = SetEntityHealth
                  numberValue11 = arg1
                  numberValue13 = arg2 - 3
                  dataTable3(numberValue11, numberValue13)
                end
              end
            end
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 500
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(cmgCall3)
eventRegistration = {}
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerCommand
textValue4 = "editbrcoords"

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, dataTable3, numberValue11, numberValue13, numberValue15, stringHelper, numberValue17, numberValue19, numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3
  arg1 = CMG
  arg1 = arg1.isDevMode
  arg1 = arg1()
  if arg1 then
    arg1 = ""

    -- === HELPER FUNCTION: arg2(arg12) ===
    function arg2(arg12)
      local arg22, flag16, numberValue12, flag17, flag18, workValue9, playerPed2, flag19
      arg22 = arg1
      flag16 = "vector3("
      numberValue12 = tostring
      flag17 = arg12.x
      numberValue12 = numberValue12(flag17)
      flag17 = ","
      flag18 = tostring
      workValue9 = arg12.y
      flag18 = flag18(workValue9)
      workValue9 = ","
      playerPed2 = tostring
      flag19 = arg12.z
      playerPed2 = playerPed2(flag19)
      flag19 = "),\n"
      arg22 = arg22 .. flag16 .. numberValue12 .. flag17 .. flag18 .. workValue9 .. playerPed2 .. flag19
      arg1 = arg22
    end
    dataTable3 = pairs
    numberValue11 = eventRegistration
    dataTable3, numberValue11, numberValue13, numberValue15 = dataTable3(numberValue11)
    for stringHelper, numberValue17 in dataTable3, numberValue11, numberValue13, numberValue15 do
      numberValue19 = SetEntityCoordsNoOffset
      numberValue20 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      numberValue20 = numberValue20()
      numberValue = numberValue17.x
      numberValue3 = numberValue17.y
      numberValue4 = numberValue17.z
      numberValue5 = true
      numberValue6 = false
      textValue3 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      numberValue19(numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3)
      while true do
        numberValue19 = IsControlJustPressed
        numberValue20 = 0
        numberValue = 237
        numberValue19 = numberValue19(numberValue20, numberValue)
        if numberValue19 then
          numberValue19 = print
          numberValue20 = "Ignored: "
          numberValue = tostring
          numberValue3 = stringHelper
          numberValue = numberValue(numberValue3)
          numberValue3 = "/"
          numberValue4 = tostring
          numberValue5 = eventRegistration
          numberValue5 = #numberValue5
          numberValue4 = numberValue4(numberValue5)
          numberValue = numberValue .. numberValue3 .. numberValue4
          numberValue19(numberValue20, numberValue)
          numberValue19 = arg2
          numberValue20 = numberValue17
          numberValue19(numberValue20)
          break
        else
          numberValue19 = IsControlJustPressed
          numberValue20 = 0
          numberValue = 238
          numberValue19 = numberValue19(numberValue20, numberValue)
          if numberValue19 then
            numberValue19 = print
            numberValue20 = "Changed: "
            numberValue = tostring
            numberValue3 = stringHelper
            numberValue = numberValue(numberValue3)
            numberValue3 = "/"
            numberValue4 = tostring
            numberValue5 = eventRegistration
            numberValue5 = #numberValue5
            numberValue4 = numberValue4(numberValue5)
            numberValue = numberValue .. numberValue3 .. numberValue4
            numberValue19(numberValue20, numberValue)
            numberValue19 = arg2
            numberValue20 = CMG
            numberValue20 = numberValue20.getPlayerCoords
            numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3 = numberValue20()
            numberValue19(numberValue20, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, textValue3)
            break
          end
        end
        numberValue19 = Citizen
        numberValue19 = numberValue19.Wait
        numberValue20 = 0
        numberValue19(numberValue20)
      end
      numberValue19 = Citizen
      numberValue19 = numberValue19.Wait
      numberValue20 = 0
      numberValue19(numberValue20)
    end
    dataTable3 = TriggerServerEvent
    numberValue11 = "8cd3730b86"
    numberValue13 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8cd3730b86".
    dataTable3(numberValue11, numberValue13)
  end
end
flag10 = false
cmgCall3(textValue4, workValue, flag10)
