--[[
    LEVEL 1 BEGINNER GUIDE — Prison
    ====================================

    File: cmg/prod/client/hmp/cl_prison.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: prison gameplay, specifically the Prison feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 133
      * Background threads: 0
      * Always-running loops: 19
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
local cmgCall, flag19, workValue7, dataTable6, flag26, workValue16, workValue17, flag33, textValue18, textValue19, flag2, flag5, textValue2, textValue3, workValue, textValue4, workValue2, textValue6, workValue3, flag17, numberValue7, numberValue9, numberValue10, flag20, flag21, flag22, numberValue13, numberValue15, workValue5, numberValue17, flag23, flag24, numberValue18, eventRegistration, textValue7, workValue9, workValue10, workValue11, workValue12, workValue13, cmgCall4, workValue14, workValue15, eventHandlerRegistration, cmgCall5, eventRegistration2, textValue8, rageUiCall, textValue9, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, cmgCall6, textValue12, rageUiCall5, rageUiCall6, textValue13, cmgCall7, flag28, vector3Builder, dataTable7, numberValue21, eventRegistration3, cmgCall8, textValue15, dataTable8, numberValue22, numberValue23, cmgCall9, dataTable9, stringHelper2, dataTable10, numberValue24, workValue18, eventHandlerRegistration2, textValue17, dataTable11
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag19 = "cfg/cfg_prison"
-- Beginner: result below is config.
cmgCall = cmgCall(flag19)
globalInPrison = false
flag19 = false
workValue7 = nil
dataTable6 = {}
flag26 = false
workValue16 = nil
workValue17 = nil
flag33 = false
textValue18 = "anim@scripted@payphone_hits@male@"
textValue19 = "sf_prop_sf_phonebox_01b_s"
flag2 = false
flag5 = false
textValue2 = ""
textValue3 = "idle"
workValue = nil
textValue4 = "idle"
workValue2 = nil
textValue6 = "idle"
workValue3 = nil
flag17 = false
numberValue7 = 0
numberValue9 = 0
numberValue10 = 0
flag20 = false
flag21 = false
flag22 = false
numberValue13 = 0
numberValue15 = 1
workValue5 = nil
numberValue17 = 0
flag23 = false
flag24 = false
numberValue18 = 3.0
eventRegistration = RegisterNetEvent
textValue7 = "6d94081b17"
-- Beginner: this function handles network event "6d94081b17".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5
  arg2 = SetPedToRagdollWithFall
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  numberValue19 = 5000
  numberValue20 = 5000
  flag29 = 1
  flag31 = arg1.x
  numberValue25 = arg1.y
  numberValue27 = arg1.z
  numberValue29 = 1000.0
  cmgCall2 = 0.0
  textValue = 0.0
  numberValue = 0.0
  numberValue2 = 0.0
  stringHelper = 0.0
  textValue5 = 0.0
  arg2(arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6d94081b17".
eventRegistration(textValue7, workValue9)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8
  while true do
    arg2 = flag20
    if not arg2 then
      break
    end
    arg2 = DrawRect
    arg3 = 0.5
    numberValue19 = 0.5
    numberValue20 = 0.5
    flag29 = 0.8
    flag31 = 0
    numberValue25 = 0
    numberValue27 = 0
    numberValue29 = 180
    arg2(arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29)
    arg2 = 0.0
    arg3 = pairs
    numberValue19 = arg1
    arg3, numberValue19, numberValue20, flag29 = arg3(numberValue19)
    for flag31, numberValue25 in arg3, numberValue19, numberValue20, flag29 do
      numberValue27 = DrawAdvancedText
      numberValue29 = 0.5
      cmgCall2 = 0.06 + arg2
      textValue = 0.1
      numberValue = 0.1
      numberValue2 = 0.5
      stringHelper = string
      stringHelper = stringHelper.format
      textValue5 = "Name: %s | Prisoner Number: %s | Cell Number: %s | Time Left: %s minutes | Location: %s"
      numberValue3 = numberValue25.prisonerName
      numberValue4 = numberValue25.prisonerSource
      dataTable = numberValue25.prisonerCellNumber
      numberValue6 = numberValue25.prisonerTimeLeft
      numberValue8 = numberValue25.location
      stringHelper = stringHelper(textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8)
      textValue5 = 200
      numberValue3 = 200
      numberValue4 = 200
      dataTable = 255
      numberValue6 = 4
      numberValue8 = 0
      numberValue27(numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8)
      arg2 = arg2 + 0.05
    end
    arg3 = Wait
    numberValue19 = 0
    arg3(numberValue19)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1, arg2, arg3) ===
function textValue7(arg1, arg2, arg3)
  local numberValue19, numberValue20, flag29, flag31
  if arg1 then
    numberValue19 = DoesEntityExist
    numberValue20 = arg1
    numberValue19 = numberValue19(numberValue20)
    if numberValue19 then
      numberValue19 = DeleteEntity
      numberValue20 = arg1
      -- Beginner: Delete a GTA entity.
      numberValue19(numberValue20)
    end
  end
  if arg3 then
    numberValue19 = DoesEntityExist
    numberValue20 = arg3
    numberValue19 = numberValue19(numberValue20)
    if numberValue19 then
      numberValue19 = SetEntityVisible
      numberValue20 = arg3
      flag29 = true
      flag31 = false
      numberValue19(numberValue20, flag29, flag31)
    end
  end
  numberValue19 = ClearPedTasks
  numberValue20 = arg2
  numberValue19(numberValue20)
  numberValue19 = false
  flag26 = numberValue19
  numberValue19 = RemoveAnimDict
  numberValue20 = textValue18
  numberValue19(numberValue20)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3) ===
function workValue9(arg1, arg2, arg3)
  local numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29
  numberValue19 = flag26
  if numberValue19 then
    return
  end
  numberValue19 = true
  flag26 = numberValue19
  numberValue19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue19 = numberValue19()
  numberValue20 = arg3
  if numberValue20 and 0 ~= numberValue20 then
    flag29 = DoesEntityExist
    flag31 = numberValue20
    flag29 = flag29(flag31)
    if flag29 and numberValue20 then
      goto flow_label_22
      flag29 = numberValue20 or flag29
    end
  end
  flag29 = nil
  ::flow_label_22::
  if flag29 then
    flag31 = SetEntityVisible
    numberValue25 = numberValue20
    numberValue27 = false
    numberValue29 = false
    flag31(numberValue25, numberValue27, numberValue29)
    flag31 = GetEntityCoords
    numberValue25 = numberValue20
    -- Beginner: result below is entityCoords.
    flag31 = flag31(numberValue25)
    arg1 = flag31
    flag31 = GetEntityHeading
    numberValue25 = numberValue20
    -- Beginner: result below is heading.
    flag31 = flag31(numberValue25)
    arg2 = flag31
  end
  flag31 = Citizen
  flag31 = flag31.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: none) ===
  function numberValue25()
    local arg12, arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14
    arg12 = GetHashKey
    arg22 = textValue19
    -- Beginner: result below is hash.
    arg12 = arg12(arg22)
    arg22 = IsModelValid
    arg32 = arg12
    arg22 = arg22(arg32)
    if not arg22 then
      arg22 = flag29
      if arg22 then
        arg22 = SetEntityVisible
        arg32 = flag29
        flag25 = true
        flag27 = false
        arg22(arg32, flag25, flag27)
      end
      arg22 = false
      flag26 = arg22
      return
    end
    arg22 = RequestModel
    arg32 = arg12
    arg22(arg32)
    arg22 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg22 = arg22()
    arg22 = arg22 + 5000
    while true do
      arg32 = HasModelLoaded
      flag25 = arg12
      arg32 = arg32(flag25)
      if arg32 then
        break
      end
      arg32 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg32 = arg32()
      if arg22 < arg32 then
        arg32 = flag29
        if arg32 then
          arg32 = SetEntityVisible
          flag25 = flag29
          flag27 = true
          flag30 = false
          arg32(flag25, flag27, flag30)
        end
        arg32 = false
        flag26 = arg32
        return
      end
      arg32 = Wait
      flag25 = 0
      arg32(flag25)
    end
    arg32 = CMG
    arg32 = arg32.loadAnimDict
    flag25 = textValue18
    arg32 = arg32(flag25)
    if not arg32 then
      arg32 = flag29
      if arg32 then
        arg32 = SetEntityVisible
        flag25 = flag29
        flag27 = true
        flag30 = false
        arg32(flag25, flag27, flag30)
      end
      arg32 = false
      flag26 = arg32
      return
    end
    arg32 = CMG
    arg32 = arg32.requestEntitySpawn
    flag25 = "prison_payphone_prop"
    flag27 = arg1
    arg32(flag25, flag27)
    arg32 = CreateObjectNoOffset
    flag25 = arg12
    flag27 = arg1.x
    flag30 = arg1.y
    flag32 = arg1.z
    flag34 = true
    flag35 = true
    flag36 = true
    -- Beginner: result below is objectEntity.
    arg32 = arg32(flag25, flag27, flag30, flag32, flag34, flag35, flag36)
    flag25 = SetModelAsNoLongerNeeded
    flag27 = arg12
    flag25(flag27)
    if arg32 and 0 ~= arg32 then
      flag25 = DoesEntityExist
      flag27 = arg32
      flag25 = flag25(flag27)
      if flag25 then
        goto flow_label_105
      end
    end
    flag25 = flag29
    if flag25 then
      flag25 = SetEntityVisible
      flag27 = flag29
      flag30 = true
      flag32 = false
      flag25(flag27, flag30, flag32)
    end
    flag25 = false
    flag26 = flag25
    return
    ::flow_label_105::
    flag25 = SetEntityHeading
    flag27 = arg32
    flag30 = arg2
    -- Beginner: Change the direction an entity is facing.
    flag25(flag27, flag30)
    flag25 = SetEntityCompletelyDisableCollision
    flag27 = arg32
    flag30 = false
    flag32 = false
    flag25(flag27, flag30, flag32)
    flag25 = flag29
    if flag25 then
      flag25 = GetOffsetFromEntityInWorldCoords
      flag27 = flag29
      flag30 = -0.1
      flag32 = -0.85
      flag34 = 0.0
      flag25 = flag25(flag27, flag30, flag32, flag34)
      if flag25 then
        goto flow_label_131
      end
    end
    flag25 = GetOffsetFromEntityInWorldCoords
    flag27 = arg32
    flag30 = -0.1
    flag32 = -0.85
    flag34 = 0.0
    flag25 = flag25(flag27, flag30, flag32, flag34)
    ::flow_label_131::
    flag27 = SetEntityCoords
    flag30 = numberValue19
    flag32 = flag25.x
    flag34 = flag25.y
    flag35 = flag25.z
    flag36 = false
    flag3 = false
    flag6 = false
    flag8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8)
    flag27 = SetEntityHeading
    flag30 = numberValue19
    flag32 = arg2
    -- Beginner: Change the direction an entity is facing.
    flag27(flag30, flag32)
    flag27 = PlayEntityAnim
    flag30 = arg32
    flag32 = "fxfr_pcn_1_intro_phone"
    flag34 = textValue18
    flag35 = 10.0
    flag36 = true
    flag3 = true
    flag6 = true
    flag8 = 0.0
    flag10 = false
    flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10)
    flag27 = TaskPlayAnim
    flag30 = numberValue19
    flag32 = textValue18
    flag34 = "fxfr_phl_1_intro_male"
    flag35 = 8.0
    flag36 = 8.0
    flag3 = -1
    flag6 = 14
    flag8 = 0
    flag10 = false
    flag12 = false
    flag14 = false
    -- Beginner: Play an animation on a ped.
    flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14)
    workValue16 = arg32
    flag27 = flag29
    workValue17 = flag27
    flag27 = RageUI
    flag27 = flag27.Visible
    flag30 = RMenu
    flag32 = flag30
    flag30 = flag30.Get
    flag34 = "cmgPayBailMenu"
    flag35 = "main"
    -- Beginner: result below is menu.
    flag30 = flag30(flag32, flag34, flag35)
    flag32 = true
    flag27(flag30, flag32)
    flag27 = Citizen
    flag27 = flag27.CreateThread

    -- === HELPER FUNCTION (decompiler name: flag30; parameters: none) ===
    function flag30()
      local arg13, arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7, flag9, flag11, flag13
      while true do
        arg13 = RageUI
        arg13 = arg13.Visible
        arg23 = RMenu
        arg33 = arg23
        arg23 = arg23.Get
        waitCall = "cmgPayBailMenu"
        textValue11 = "main"
        arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7, flag9, flag11, flag13 = arg23(arg33, waitCall, textValue11)
        -- Beginner: result below is menuVisible.
        arg13 = arg13(arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7, flag9, flag11, flag13)
        if not arg13 then
          break
        end
        arg13 = Wait
        arg23 = 100
        arg13(arg23)
      end
      arg13 = workValue16
      arg23 = workValue17
      arg33 = nil
      workValue16 = arg33
      arg33 = nil
      workValue17 = arg33
      arg33 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg33 = arg33()
      waitCall = flag33
      if not waitCall then
        waitCall = TaskPlayAnim
        textValue11 = arg33
        textValue14 = textValue18
        textValue16 = "exit_left_male"
        numberValue26 = 8.0
        numberValue28 = 8.0
        flag37 = -1
        flag4 = 1
        flag7 = 0
        flag9 = false
        flag11 = false
        flag13 = false
        -- Beginner: Play an animation on a ped.
        waitCall(textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7, flag9, flag11, flag13)
        waitCall = Wait
        textValue11 = 200
        waitCall(textValue11)
        if arg13 then
          waitCall = DoesEntityExist
          textValue11 = arg13
          waitCall = waitCall(textValue11)
          if waitCall then
            waitCall = StopEntityAnim
            textValue11 = arg13
            textValue14 = "fxfr_pcn_1_intro_phone"
            textValue16 = textValue18
            numberValue26 = 1000.0
            waitCall(textValue11, textValue14, textValue16, numberValue26)
          end
        end
        waitCall = StopAnimTask
        textValue11 = arg33
        textValue14 = textValue18
        textValue16 = "fxfr_ptj_1_male"
        numberValue26 = 1.0
        waitCall(textValue11, textValue14, textValue16, numberValue26)
        waitCall = Wait
        textValue11 = 2800
        waitCall(textValue11)
      end
      waitCall = false
      flag33 = waitCall
      waitCall = textValue7
      textValue11 = arg13
      textValue14 = arg33
      textValue16 = arg23
      waitCall(textValue11, textValue14, textValue16)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    flag27(flag30)
  end
  flag31(numberValue25)
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable
  arg1 = 0
  arg2 = pairs
  arg3 = cmgCall.staticPrisonProps
  arg2, arg3, numberValue19, numberValue20 = arg2(arg3)
  for flag29, flag31 in arg2, arg3, numberValue19, numberValue20 do
    numberValue25 = flag31.isBailPhone
    if numberValue25 then
      arg1 = arg1 + 1

      -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: none) ===
      function numberValue25()
        local arg12, arg22
      end

      -- === HELPER FUNCTION (decompiler name: numberValue27; parameters: none) ===
      function numberValue27()
        local arg12, arg22
      end

      -- === HELPER FUNCTION (decompiler name: numberValue29; parameters: arg12) ===
      function numberValue29(arg12)
        local arg22, arg32, flag25, flag27
        arg22 = flag26
        if arg22 then
          return
        end
        arg22 = drawNativeNotification
        arg32 = "Press ~INPUT_CONTEXT~ to call your Lawyer"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg22(arg32)
        arg22 = globalInPrison
        if arg22 then
          arg22 = IsControlJustPressed
          arg32 = 0
          flag25 = 38
          arg22 = arg22(arg32, flag25)
          if arg22 then
            arg22 = workValue9
            arg32 = arg12.objectInfo
            arg32 = arg32.position
            flag25 = arg12.objectInfo
            flag25 = flag25.heading
            flag27 = arg12.objectInfo
            flag27 = flag27.Id
            arg22(arg32, flag25, flag27)
          end
        else
          arg22 = IsControlJustPressed
          arg32 = 0
          flag25 = 38
          arg22 = arg22(arg32, flag25)
          if arg22 then
            arg22 = tCMG
            arg22 = arg22.notify
            arg32 = "~r~You need to be in prison to pay bail."
            -- Beginner: Show a notification to the player.
            arg22(arg32)
          end
        end
      end
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.createArea
      textValue = "prison_paybail_"
      numberValue = arg1
      textValue = textValue .. numberValue
      numberValue = flag31.position
      numberValue2 = 2.5
      stringHelper = 5.0
      textValue5 = numberValue25
      numberValue3 = numberValue27
      numberValue4 = numberValue29
      dataTable = {}
      dataTable.objectInfo = flag31
      -- Beginner: Create an interaction area around a world position.
      cmgCall2(textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25
  arg1 = pairs
  arg2 = dataTable6
  arg1, arg2, arg3, numberValue19 = arg1(arg2)
  for numberValue20, flag29 in arg1, arg2, arg3, numberValue19 do
    flag31 = tCMG
    flag31 = flag31.removeBlip
    numberValue25 = flag29
    flag31(numberValue25)
  end
  arg1 = {}
  dataTable6 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper
  arg1 = workValue11
  arg1()
  arg1 = 1
  arg2 = cmgCall.prisonBlips
  arg2 = #arg2
  arg3 = 1
  for numberValue19 = arg1, arg2, arg3 do
    numberValue20 = cmgCall.prisonBlips
    numberValue20 = numberValue20[numberValue19]
    flag29 = numberValue20.scale
    if not flag29 then
      flag29 = 0.65
    end
    flag31 = tCMG
    flag31 = flag31.addBlip
    numberValue25 = numberValue20.coords
    numberValue25 = numberValue25.x
    numberValue27 = numberValue20.coords
    numberValue27 = numberValue27.y
    numberValue29 = numberValue20.coords
    numberValue29 = numberValue29.z
    cmgCall2 = numberValue20.icon
    textValue = numberValue20.colour
    numberValue = numberValue20.name
    numberValue2 = flag29
    stringHelper = false
    flag31 = flag31(numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper)
    numberValue25 = SetBlipDisplay
    numberValue27 = flag31
    numberValue29 = 4
    numberValue25(numberValue27, numberValue29)
    numberValue25 = SetBlipAsShortRange
    numberValue27 = flag31
    numberValue29 = true
    numberValue25(numberValue27, numberValue29)
    numberValue25 = dataTable6
    numberValue25[numberValue19] = flag31
  end
  arg1 = globalInPrison
  if arg1 then
    arg1 = workValue7
    if arg1 then
      arg1 = cmgCall.prisonCells
      arg2 = workValue7
      arg1 = arg1[arg2]
      arg2 = tCMG
      arg2 = arg2.addBlip
      arg3 = arg1.x
      numberValue19 = arg1.y
      numberValue20 = arg1.z
      flag29 = 188
      flag31 = 22
      numberValue25 = "Your prison cell"
      numberValue27 = 0.65
      numberValue29 = false
      arg2 = arg2(arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29)
      arg3 = SetBlipDisplay
      numberValue19 = arg2
      numberValue20 = 4
      arg3(numberValue19, numberValue20)
      arg3 = SetBlipAsShortRange
      numberValue19 = arg2
      numberValue20 = true
      arg3(numberValue19, numberValue20)
      arg3 = dataTable6
      arg3 = #arg3
      numberValue19 = arg3 + 1
      arg3 = dataTable6
      arg3[numberValue19] = arg2
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29
  arg1 = 10000.0
  arg2 = cmgCall.policeStationCinematics
  arg2 = arg2[1]
  arg3 = pairs
  numberValue19 = cmgCall.policeStationCinematics
  arg3, numberValue19, numberValue20, flag29 = arg3(numberValue19)
  for flag31, numberValue25 in arg3, numberValue19, numberValue20, flag29 do
    numberValue27 = CMG
    numberValue27 = numberValue27.getPlayerCoords
    -- Beginner: result below is playerCoords.
    numberValue27 = numberValue27()
    numberValue29 = numberValue25.coords
    numberValue27 = numberValue27 - numberValue29
    numberValue27 = #numberValue27
    if arg1 > numberValue27 then
      arg1 = numberValue27
      arg2 = numberValue25
    end
  end
  return arg2
end
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2
  arg1 = globalInPrison
  return arg1
end
cmgCall4.isPlayerInPrison = workValue14
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2
  arg1 = flag21
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.isPlayerInRedZone
    arg1 = arg1()
  end
  return arg1
end
cmgCall4.isPlayerNearPrison = workValue14

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29
  arg1 = 1
  arg2 = cmgCall.prisonPayPhones
  arg2 = #arg2
  arg3 = 1
  for numberValue19 = arg1, arg2, arg3 do
    numberValue20 = CMG
    numberValue20 = numberValue20.getPlayerCoords
    -- Beginner: result below is playerCoords.
    numberValue20 = numberValue20()
    flag29 = cmgCall.prisonPayPhones
    flag29 = flag29[numberValue19]
    flag29 = flag29.coords
    numberValue20 = numberValue20 - flag29
    numberValue20 = #numberValue20
    flag29 = numberValue18
    if numberValue20 <= flag29 then
      numberValue20 = true
      return numberValue20
    end
  end
  arg1 = false
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3
  arg1 = {}
  workValue5 = arg1
  arg1 = RequestScriptAudioBank
  arg2 = "ALARM_BELL_02"
  arg3 = false
  arg1(arg2, arg3)
  arg1 = SetTimeout
  arg2 = 5000

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15
    arg12 = workValue5
    if arg12 then
      arg12 = pairs
      arg22 = cmgCall.riotAlarmPositions
      arg12, arg22, arg32, flag25 = arg12(arg22)
      for flag27, flag30 in arg12, arg22, arg32, flag25 do
        flag32 = GetSoundId
        -- Beginner: result below is soundHandle.
        flag32 = flag32()
        flag34 = PlaySoundFromCoord
        flag35 = flag32
        flag36 = "Bell_02"
        flag3 = flag30.x
        flag6 = flag30.y
        flag8 = flag30.z
        flag10 = "ALARMS_SOUNDSET"
        flag12 = false
        flag14 = 0
        flag15 = false
        flag34(flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15)
        flag34 = table
        flag34 = flag34.insert
        flag35 = workValue5
        flag36 = flag32
        flag34(flag35, flag36)
      end
    end
  end
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25
  arg1 = workValue5
  if arg1 then
    arg1 = pairs
    arg2 = workValue5
    arg1, arg2, arg3, numberValue19 = arg1(arg2)
    for numberValue20, flag29 in arg1, arg2, arg3, numberValue19 do
      flag31 = StopSound
      numberValue25 = flag29
      flag31(numberValue25)
      flag31 = ReleaseSoundId
      numberValue25 = flag29
      flag31(numberValue25)
    end
  end
  arg1 = nil
  workValue5 = arg1
end
eventHandlerRegistration = AddEventHandler
cmgCall5 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2) ===
function eventRegistration2(arg1, arg2)
  local arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8, dataTable2, numberValue11, cmgCall3, numberValue12, dataTable3, numberValue14, dataTable4, numberValue16, workValue6, workValue8, dataTable5
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = true
      flag21 = arg12
      arg12 = workValue12
      arg12()
      arg12 = flag22
      if arg12 then
        arg12 = CMG
        arg12 = arg12.enablePunching
        arg22 = true
        arg12(arg22)
        arg12 = workValue14
        arg12()
      end
      arg12 = TriggerEvent
      arg22 = "2324ddf647"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2324ddf647".
      arg12(arg22)
    end

    -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: none) ===
    function numberValue19()
      local arg12, arg22, arg32, flag25, flag27
      arg12 = flag19
      if arg12 then
        arg12 = CMG
        arg12 = arg12.isPrisonerTagged
        arg12 = arg12()
        if not arg12 then
          arg12 = Citizen
          arg12 = arg12.Wait
          arg22 = 1000
          arg12(arg22)
          arg12 = CMG
          arg12 = arg12.isPrisonerTagged
          arg12 = arg12()
          if not arg12 then
            arg12 = TriggerServerEvent
            arg22 = "d656c383a2"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d656c383a2".
            arg12(arg22)
            arg12 = tCMG
            arg12 = arg12.teleport
            arg22 = cmgCall.prisonCells
            arg32 = workValue7
            arg22 = arg22[arg32]
            arg22 = arg22.x
            arg32 = cmgCall.prisonCells
            flag25 = workValue7
            arg32 = arg32[flag25]
            arg32 = arg32.y
            flag25 = cmgCall.prisonCells
            flag27 = workValue7
            flag25 = flag25[flag27]
            flag25 = flag25.z
            arg12(arg22, arg32, flag25)
            arg12 = tCMG
            arg12 = arg12.notify
            arg22 = "~r~Naughty, go back."
            -- Beginner: Show a notification to the player.
            arg12(arg22)
          end
        end
      end
      arg12 = flag22
      if arg12 then
        arg12 = CMG
        arg12 = arg12.enablePunching
        arg22 = false
        arg12(arg22)
        arg12 = workValue15
        arg12()
      end
      arg12 = false
      flag21 = arg12
      arg12 = globalInPrison
      if not arg12 then
        arg12 = workValue11
        arg12()
      end
    end

    -- === HELPER FUNCTION (decompiler name: numberValue20; parameters: none) ===
    function numberValue20()
      local arg12, arg22
    end
    flag29 = CMG
    flag29 = flag29.createArea
    flag31 = "forceStayInPrison"
    numberValue25 = cmgCall.prisonMainCoords
    numberValue27 = 225.0
    numberValue29 = 100.0
    cmgCall2 = arg3
    textValue = numberValue19
    numberValue = numberValue20
    numberValue2 = {}
    -- Beginner: Create an interaction area around a world position.
    flag29(flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2)
    flag29 = cmgCall.prisonJobs
    flag29 = flag29.woodworking

    -- === HELPER FUNCTION (decompiler name: flag31; parameters: none) ===
    function flag31()
      local arg12, arg22, arg32
      arg12 = globalInPrison
      if arg12 then
        arg12 = textValue2
        if "" == arg12 then
          goto flow_label_8
        end
      end
      return
      ::flow_label_8::
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to start Woodworking"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg32 = 38
      arg12 = arg12(arg22, arg32)
      if arg12 then
        arg12 = "woodworking"
        textValue2 = arg12
        arg12 = "fetching"
        textValue3 = arg12
        arg12 = TriggerServerEvent
        arg22 = "8c4d6586a3"
        arg32 = "woodworking"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8c4d6586a3".
        arg12(arg22, arg32)
        arg12 = tCMG
        arg12 = arg12.notify
        arg22 = "~g~Go to the storage room to fetch wood"
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
    end

    -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: none) ===
    function numberValue25()
      local arg12, arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15, flag16, numberValue5, flag18
      arg12 = globalInPrison
      if arg12 then
        arg12 = textValue2
        if "woodworking" == arg12 then
          arg12 = textValue3
          if "fetching" == arg12 then
            goto flow_label_11
          end
        end
      end
      return
      ::flow_label_11::
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to pick up wood"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg32 = 38
      arg12 = arg12(arg22, arg32)
      if arg12 then
        arg12 = "carrying"
        textValue3 = arg12
        arg12 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg12 = arg12()
        arg22 = 1302435108
        arg32 = CMG
        arg32 = arg32.loadModel
        flag25 = arg22
        -- Beginner: Request/load a GTA model before spawning or applying it.
        arg32(flag25)
        arg32 = GetEntityCoords
        flag25 = arg12
        -- Beginner: result below is entityCoords.
        arg32 = arg32(flag25)
        flag25 = CMG
        flag25 = flag25.requestEntitySpawn
        flag27 = "prison_woodworking_box"
        flag30 = arg32
        flag25(flag27, flag30)
        flag25 = CreateObject
        flag27 = arg22
        flag30 = arg32.x
        flag32 = arg32.y
        flag34 = arg32.z
        flag35 = true
        flag36 = true
        flag3 = false
        -- Beginner: result below is objectEntity.
        flag25 = flag25(flag27, flag30, flag32, flag34, flag35, flag36, flag3)
        workValue = flag25
        flag25 = SetEntityAsMissionEntity
        flag27 = workValue
        flag30 = true
        flag32 = true
        flag25(flag27, flag30, flag32)
        flag25 = GetPedBoneIndex
        flag27 = arg12
        flag30 = 28422
        flag25 = flag25(flag27, flag30)
        flag27 = AttachEntityToEntity
        flag30 = workValue
        flag32 = arg12
        flag34 = flag25
        flag35 = 0.0
        flag36 = 0.02
        flag3 = -0.02
        flag6 = 0.0
        flag8 = 0.0
        flag10 = 0.0
        flag12 = true
        flag14 = true
        flag15 = false
        flag16 = true
        numberValue5 = 1
        flag18 = true
        -- Beginner: Attach one entity to another entity.
        flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15, flag16, numberValue5, flag18)
        flag27 = SetModelAsNoLongerNeeded
        flag30 = arg22
        flag27(flag30)
        flag27 = CMG
        flag27 = flag27.loadAnimDict
        flag30 = "anim@heists@box_carry@"
        -- Beginner: Load a GTA animation dictionary before using it.
        flag27(flag30)
        flag27 = TaskPlayAnim
        flag30 = arg12
        flag32 = "anim@heists@box_carry@"
        flag34 = "idle"
        flag35 = 8.0
        flag36 = 1.0
        flag3 = -1
        flag6 = 49
        flag8 = 0
        flag10 = false
        flag12 = false
        flag14 = false
        -- Beginner: Play an animation on a ped.
        flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14)
        flag27 = Citizen
        flag27 = flag27.CreateThread

        -- === HELPER FUNCTION (decompiler name: flag30; parameters: none) ===
        function flag30()
          local arg13, arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7
          while true do
            arg13 = textValue3
            if "carrying" ~= arg13 then
              break
            end
            arg13 = IsEntityPlayingAnim
            arg23 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            arg23 = arg23()
            arg33 = "anim@heists@box_carry@"
            waitCall = "idle"
            textValue11 = 3
            arg13 = arg13(arg23, arg33, waitCall, textValue11)
            if not arg13 then
              arg13 = CMG
              arg13 = arg13.loadAnimDict
              arg23 = "anim@heists@box_carry@"
              -- Beginner: Load a GTA animation dictionary before using it.
              arg13(arg23)
              arg13 = TaskPlayAnim
              arg23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg23 = arg23()
              arg33 = "anim@heists@box_carry@"
              waitCall = "idle"
              textValue11 = 8.0
              textValue14 = 1.0
              textValue16 = -1
              numberValue26 = 49
              numberValue28 = 0
              flag37 = false
              flag4 = false
              flag7 = false
              -- Beginner: Play an animation on a ped.
              arg13(arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7)
            end
            arg13 = Wait
            arg23 = 0
            arg13(arg23)
          end
          arg13 = RemoveAnimDict
          arg23 = "anim@heists@box_carry@"
          arg13(arg23)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        flag27(flag30)
        flag27 = tCMG
        flag27 = flag27.notify
        flag30 = "~g~Take the wood to a workstation"
        -- Beginner: Show a notification to the player.
        flag27(flag30)
      end
    end

    -- === HELPER FUNCTION (decompiler name: numberValue27; parameters: arg12) ===
    function numberValue27(arg12)
      local arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3
      arg22 = globalInPrison
      if arg22 then
        arg22 = textValue2
        if "woodworking" == arg22 then
          arg22 = textValue3
          if "carrying" == arg22 then
            goto flow_label_11
          end
        end
      end
      return
      ::flow_label_11::
      arg22 = drawNativeNotification
      arg32 = "Press ~INPUT_CONTEXT~ to start woodworking"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg22(arg32)
      arg22 = IsControlJustPressed
      arg32 = 0
      flag25 = 38
      arg22 = arg22(arg32, flag25)
      if arg22 then
        arg22 = flag5
        if not arg22 then
          arg22 = true
          flag5 = arg22
          arg22 = "working"
          textValue3 = arg22
          arg22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg22 = arg22()
          arg32 = workValue
          if arg32 then
            arg32 = DoesEntityExist
            flag25 = workValue
            arg32 = arg32(flag25)
            if arg32 then
              arg32 = DeleteEntity
              flag25 = workValue
              -- Beginner: Delete a GTA entity.
              arg32(flag25)
            end
          end
          arg32 = nil
          workValue = arg32
          arg32 = ClearPedTasks
          flag25 = arg22
          arg32(flag25)
          arg32 = FreezeEntityPosition
          flag25 = arg22
          flag27 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg32(flag25, flag27)
          arg32 = SetEntityCoords
          flag25 = arg22
          flag27 = arg12.coords
          flag27 = flag27.x
          flag30 = arg12.coords
          flag30 = flag30.y
          flag32 = arg12.coords
          flag32 = flag32.z
          flag32 = flag32 - 1
          flag34 = false
          flag35 = false
          flag36 = false
          flag3 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          arg32(flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3)
          arg32 = tCMG
          arg32 = arg32.setCanAnim
          flag25 = false
          arg32(flag25)
          arg32 = Citizen
          arg32 = arg32.CreateThread

          -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
          function flag25()
            local arg13, arg23, arg33, waitCall, textValue11
            while true do
              arg13 = textValue3
              if "working" ~= arg13 then
                break
              end
              arg13 = IsPedUsingScenario
              arg23 = arg22
              arg33 = flag29.workScenario
              arg13 = arg13(arg23, arg33)
              if not arg13 then
                arg13 = TaskStartScenarioInPlace
                arg23 = arg22
                arg33 = flag29.workScenario
                waitCall = 0
                textValue11 = true
                arg13(arg23, arg33, waitCall, textValue11)
              end
              arg13 = Wait
              arg23 = 200
              arg13(arg23)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg32(flag25)
          arg32 = Citizen
          arg32 = arg32.CreateThread

          -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
          function flag25()
            local arg13, arg23, arg33, waitCall, textValue11
            arg13 = CMG
            arg13 = arg13.startCircularProgressBar
            arg23 = ""
            arg33 = flag29.workDuration
            waitCall = nil

            -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
            function textValue11()
              local flag, workValue4
            end
            arg13(arg23, arg33, waitCall, textValue11)
            arg13 = textValue3
            if "working" ~= arg13 then
              return
            end
            arg13 = FreezeEntityPosition
            arg23 = arg22
            arg33 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            arg13(arg23, arg33)
            arg13 = ClearPedTasks
            arg23 = arg22
            arg13(arg23)
            arg13 = tCMG
            arg13 = arg13.setCanAnim
            arg23 = true
            arg13(arg23)
            arg13 = "idle"
            textValue3 = arg13
            arg13 = ""
            textValue2 = arg13
            arg13 = false
            flag5 = arg13
            arg13 = TriggerServerEvent
            arg23 = "e942632666"
            arg33 = "woodworking"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e942632666".
            arg13(arg23, arg33)
            arg13 = tCMG
            arg13 = arg13.notify
            arg23 = "~g~Woodworking complete!"
            -- Beginner: Show a notification to the player.
            arg13(arg23)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg32(flag25)
        end
      end
    end
    numberValue29 = CMG
    numberValue29 = numberValue29.createArea
    cmgCall2 = "prisonJob_ww_start"
    textValue = flag29.startCoords
    numberValue = 2.0
    numberValue2 = 5.0

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local arg12, arg22
    end

    -- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
    function textValue5()
      local arg12, arg22
    end
    numberValue3 = flag31
    numberValue4 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue29(cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4)
    numberValue29 = tCMG
    numberValue29 = numberValue29.addPropMarker
    cmgCall2 = "bzzz_marker_point_blue_anim"
    textValue = flag29.startCoords
    textValue = textValue.x
    numberValue = flag29.startCoords
    numberValue = numberValue.y
    numberValue2 = flag29.startCoords
    numberValue2 = numberValue2.z
    stringHelper = 20.0
    -- Beginner: Create a prop-style world marker.
    numberValue29(cmgCall2, textValue, numberValue, numberValue2, stringHelper)
    numberValue29 = CMG
    numberValue29 = numberValue29.add3DTextForCoord
    cmgCall2 = "Woodworking"
    textValue = flag29.startCoords
    textValue = textValue.x
    numberValue = flag29.startCoords
    numberValue = numberValue.y
    numberValue2 = flag29.startCoords
    numberValue2 = numberValue2.z
    stringHelper = 2.2
    numberValue29(cmgCall2, textValue, numberValue, numberValue2, stringHelper)
    numberValue29 = CMG
    numberValue29 = numberValue29.createArea
    cmgCall2 = "prisonJob_ww_storage"
    textValue = flag29.storageCoords
    numberValue = 2.0
    numberValue2 = 5.0

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local arg12, arg22
    end

    -- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
    function textValue5()
      local arg12, arg22
    end
    numberValue3 = numberValue25
    numberValue4 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue29(cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4)
    numberValue29 = tCMG
    numberValue29 = numberValue29.addPropMarker
    cmgCall2 = "bzzz_marker_point_blue_anim"
    textValue = flag29.storageCoords
    textValue = textValue.x
    numberValue = flag29.storageCoords
    numberValue = numberValue.y
    numberValue2 = flag29.storageCoords
    numberValue2 = numberValue2.z
    stringHelper = 20.0
    -- Beginner: Create a prop-style world marker.
    numberValue29(cmgCall2, textValue, numberValue, numberValue2, stringHelper)
    numberValue29 = CMG
    numberValue29 = numberValue29.add3DTextForCoord
    cmgCall2 = "Wood Storage"
    textValue = flag29.storageCoords
    textValue = textValue.x
    numberValue = flag29.storageCoords
    numberValue = numberValue.y
    numberValue2 = flag29.storageCoords
    numberValue2 = numberValue2.z
    stringHelper = 2.2
    numberValue29(cmgCall2, textValue, numberValue, numberValue2, stringHelper)
    numberValue29 = ipairs
    cmgCall2 = flag29.stations
    numberValue29, cmgCall2, textValue, numberValue = numberValue29(cmgCall2)
    for numberValue2, stringHelper in numberValue29, cmgCall2, textValue, numberValue do
      textValue5 = CMG
      textValue5 = textValue5.createArea
      numberValue3 = "prisonJob_ww_station_"
      numberValue4 = numberValue2
      numberValue3 = numberValue3 .. numberValue4
      numberValue4 = stringHelper
      dataTable = 2.0
      numberValue6 = 5.0

      -- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
      function numberValue8()
        local arg12, arg22
      end

      -- === HELPER FUNCTION (decompiler name: dataTable2; parameters: none) ===
      function dataTable2()
        local arg12, arg22
      end
      numberValue11 = numberValue27
      cmgCall3 = {}
      cmgCall3.coords = stringHelper
      -- Beginner: Create an interaction area around a world position.
      textValue5(numberValue3, numberValue4, dataTable, numberValue6, numberValue8, dataTable2, numberValue11, cmgCall3)
      textValue5 = tCMG
      textValue5 = textValue5.addPropMarker
      numberValue3 = "bzzz_marker_point_blue_anim"
      numberValue4 = stringHelper.x
      dataTable = stringHelper.y
      numberValue6 = stringHelper.z
      numberValue8 = 20.0
      -- Beginner: Create a prop-style world marker.
      textValue5(numberValue3, numberValue4, dataTable, numberValue6, numberValue8)
    end
    numberValue29 = cmgCall.prisonJobs
    numberValue29 = numberValue29.metalworking

    -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
    function cmgCall2()
      local arg12, arg22, arg32
      arg12 = globalInPrison
      if arg12 then
        arg12 = textValue2
        if "" == arg12 then
          goto flow_label_8
        end
      end
      return
      ::flow_label_8::
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to start Metalworking"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg32 = 38
      arg12 = arg12(arg22, arg32)
      if arg12 then
        arg12 = "metalworking"
        textValue2 = arg12
        arg12 = "fetching"
        textValue4 = arg12
        arg12 = TriggerServerEvent
        arg22 = "8c4d6586a3"
        arg32 = "metalworking"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8c4d6586a3".
        arg12(arg22, arg32)
        arg12 = tCMG
        arg12 = arg12.notify
        arg22 = "~g~Go to the storage to fetch materials"
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
    end

    -- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
    function textValue()
      local arg12, arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15, flag16, numberValue5, flag18
      arg12 = globalInPrison
      if arg12 then
        arg12 = textValue2
        if "metalworking" == arg12 then
          arg12 = textValue4
          if "fetching" == arg12 then
            goto flow_label_11
          end
        end
      end
      return
      ::flow_label_11::
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to pick up materials"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg32 = 38
      arg12 = arg12(arg22, arg32)
      if arg12 then
        arg12 = "carrying"
        textValue4 = arg12
        arg12 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg12 = arg12()
        arg22 = 1302435108
        arg32 = CMG
        arg32 = arg32.loadModel
        flag25 = arg22
        -- Beginner: Request/load a GTA model before spawning or applying it.
        arg32(flag25)
        arg32 = GetEntityCoords
        flag25 = arg12
        -- Beginner: result below is entityCoords.
        arg32 = arg32(flag25)
        flag25 = CMG
        flag25 = flag25.requestEntitySpawn
        flag27 = "prison_metalworking_box"
        flag30 = arg32
        flag25(flag27, flag30)
        flag25 = CreateObject
        flag27 = arg22
        flag30 = arg32.x
        flag32 = arg32.y
        flag34 = arg32.z
        flag35 = true
        flag36 = true
        flag3 = false
        -- Beginner: result below is objectEntity.
        flag25 = flag25(flag27, flag30, flag32, flag34, flag35, flag36, flag3)
        workValue2 = flag25
        flag25 = SetEntityAsMissionEntity
        flag27 = workValue2
        flag30 = true
        flag32 = true
        flag25(flag27, flag30, flag32)
        flag25 = GetPedBoneIndex
        flag27 = arg12
        flag30 = 28422
        flag25 = flag25(flag27, flag30)
        flag27 = AttachEntityToEntity
        flag30 = workValue2
        flag32 = arg12
        flag34 = flag25
        flag35 = 0.0
        flag36 = 0.02
        flag3 = -0.02
        flag6 = 0.0
        flag8 = 0.0
        flag10 = 0.0
        flag12 = true
        flag14 = true
        flag15 = false
        flag16 = true
        numberValue5 = 1
        flag18 = true
        -- Beginner: Attach one entity to another entity.
        flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15, flag16, numberValue5, flag18)
        flag27 = SetModelAsNoLongerNeeded
        flag30 = arg22
        flag27(flag30)
        flag27 = CMG
        flag27 = flag27.loadAnimDict
        flag30 = "anim@heists@box_carry@"
        -- Beginner: Load a GTA animation dictionary before using it.
        flag27(flag30)
        flag27 = TaskPlayAnim
        flag30 = arg12
        flag32 = "anim@heists@box_carry@"
        flag34 = "idle"
        flag35 = 8.0
        flag36 = 1.0
        flag3 = -1
        flag6 = 49
        flag8 = 0
        flag10 = false
        flag12 = false
        flag14 = false
        -- Beginner: Play an animation on a ped.
        flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14)
        flag27 = Citizen
        flag27 = flag27.CreateThread

        -- === HELPER FUNCTION (decompiler name: flag30; parameters: none) ===
        function flag30()
          local arg13, arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7
          while true do
            arg13 = textValue4
            if "carrying" ~= arg13 then
              break
            end
            arg13 = IsEntityPlayingAnim
            arg23 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            arg23 = arg23()
            arg33 = "anim@heists@box_carry@"
            waitCall = "idle"
            textValue11 = 3
            arg13 = arg13(arg23, arg33, waitCall, textValue11)
            if not arg13 then
              arg13 = CMG
              arg13 = arg13.loadAnimDict
              arg23 = "anim@heists@box_carry@"
              -- Beginner: Load a GTA animation dictionary before using it.
              arg13(arg23)
              arg13 = TaskPlayAnim
              arg23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg23 = arg23()
              arg33 = "anim@heists@box_carry@"
              waitCall = "idle"
              textValue11 = 8.0
              textValue14 = 1.0
              textValue16 = -1
              numberValue26 = 49
              numberValue28 = 0
              flag37 = false
              flag4 = false
              flag7 = false
              -- Beginner: Play an animation on a ped.
              arg13(arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7)
            end
            arg13 = Wait
            arg23 = 0
            arg13(arg23)
          end
          arg13 = RemoveAnimDict
          arg23 = "anim@heists@box_carry@"
          arg13(arg23)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        flag27(flag30)
        flag27 = tCMG
        flag27 = flag27.notify
        flag30 = "~g~Take the materials to a workstation"
        -- Beginner: Show a notification to the player.
        flag27(flag30)
      end
    end

    -- === HELPER FUNCTION (decompiler name: numberValue; parameters: arg12) ===
    function numberValue(arg12)
      local arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3
      arg22 = globalInPrison
      if arg22 then
        arg22 = textValue2
        if "metalworking" == arg22 then
          arg22 = textValue4
          if "carrying" == arg22 then
            goto flow_label_11
          end
        end
      end
      return
      ::flow_label_11::
      arg22 = drawNativeNotification
      arg32 = "Press ~INPUT_CONTEXT~ to start metalworking"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg22(arg32)
      arg22 = IsControlJustPressed
      arg32 = 0
      flag25 = 38
      arg22 = arg22(arg32, flag25)
      if arg22 then
        arg22 = flag5
        if not arg22 then
          arg22 = true
          flag5 = arg22
          arg22 = "working"
          textValue4 = arg22
          arg22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg22 = arg22()
          arg32 = workValue2
          if arg32 then
            arg32 = DoesEntityExist
            flag25 = workValue2
            arg32 = arg32(flag25)
            if arg32 then
              arg32 = DeleteEntity
              flag25 = workValue2
              -- Beginner: Delete a GTA entity.
              arg32(flag25)
            end
          end
          arg32 = nil
          workValue2 = arg32
          arg32 = ClearPedTasks
          flag25 = arg22
          arg32(flag25)
          arg32 = FreezeEntityPosition
          flag25 = arg22
          flag27 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg32(flag25, flag27)
          arg32 = SetEntityCoords
          flag25 = arg22
          flag27 = arg12.coords
          flag27 = flag27.x
          flag30 = arg12.coords
          flag30 = flag30.y
          flag32 = arg12.coords
          flag32 = flag32.z
          flag32 = flag32 - 1
          flag34 = false
          flag35 = false
          flag36 = false
          flag3 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          arg32(flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3)
          arg32 = tCMG
          arg32 = arg32.setCanAnim
          flag25 = false
          arg32(flag25)
          arg32 = Citizen
          arg32 = arg32.CreateThread

          -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
          function flag25()
            local arg13, arg23, arg33, waitCall, textValue11
            while true do
              arg13 = textValue4
              if "working" ~= arg13 then
                break
              end
              arg13 = IsPedUsingScenario
              arg23 = arg22
              arg33 = numberValue29.workScenario
              arg13 = arg13(arg23, arg33)
              if not arg13 then
                arg13 = TaskStartScenarioInPlace
                arg23 = arg22
                arg33 = numberValue29.workScenario
                waitCall = 0
                textValue11 = true
                arg13(arg23, arg33, waitCall, textValue11)
              end
              arg13 = Wait
              arg23 = 200
              arg13(arg23)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg32(flag25)
          arg32 = Citizen
          arg32 = arg32.CreateThread

          -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
          function flag25()
            local arg13, arg23, arg33, waitCall, textValue11
            arg13 = CMG
            arg13 = arg13.startCircularProgressBar
            arg23 = ""
            arg33 = numberValue29.workDuration
            waitCall = nil

            -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
            function textValue11()
              local flag, workValue4
            end
            arg13(arg23, arg33, waitCall, textValue11)
            arg13 = textValue4
            if "working" ~= arg13 then
              return
            end
            arg13 = FreezeEntityPosition
            arg23 = arg22
            arg33 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            arg13(arg23, arg33)
            arg13 = ClearPedTasks
            arg23 = arg22
            arg13(arg23)
            arg13 = tCMG
            arg13 = arg13.setCanAnim
            arg23 = true
            arg13(arg23)
            arg13 = "idle"
            textValue4 = arg13
            arg13 = ""
            textValue2 = arg13
            arg13 = false
            flag5 = arg13
            arg13 = TriggerServerEvent
            arg23 = "e942632666"
            arg33 = "metalworking"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e942632666".
            arg13(arg23, arg33)
            arg13 = tCMG
            arg13 = arg13.notify
            arg23 = "~g~Metalworking complete!"
            -- Beginner: Show a notification to the player.
            arg13(arg23)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg32(flag25)
        end
      end
    end
    numberValue2 = CMG
    numberValue2 = numberValue2.createArea
    stringHelper = "prisonJob_mw_start"
    textValue5 = numberValue29.startCoords
    numberValue3 = 2.0
    numberValue4 = 5.0

    -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
    function dataTable()
      local arg12, arg22
    end

    -- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
    function numberValue6()
      local arg12, arg22
    end
    numberValue8 = cmgCall2
    dataTable2 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue2(stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8, dataTable2)
    numberValue2 = tCMG
    numberValue2 = numberValue2.addPropMarker
    stringHelper = "bzzz_marker_point_blue_anim"
    textValue5 = numberValue29.startCoords
    textValue5 = textValue5.x
    numberValue3 = numberValue29.startCoords
    numberValue3 = numberValue3.y
    numberValue4 = numberValue29.startCoords
    numberValue4 = numberValue4.z
    dataTable = 20.0
    -- Beginner: Create a prop-style world marker.
    numberValue2(stringHelper, textValue5, numberValue3, numberValue4, dataTable)
    numberValue2 = CMG
    numberValue2 = numberValue2.add3DTextForCoord
    stringHelper = "Metalworking"
    textValue5 = numberValue29.startCoords
    textValue5 = textValue5.x
    numberValue3 = numberValue29.startCoords
    numberValue3 = numberValue3.y
    numberValue4 = numberValue29.startCoords
    numberValue4 = numberValue4.z
    dataTable = 2.2
    numberValue2(stringHelper, textValue5, numberValue3, numberValue4, dataTable)
    numberValue2 = CMG
    numberValue2 = numberValue2.createArea
    stringHelper = "prisonJob_mw_storage"
    textValue5 = numberValue29.storageCoords
    numberValue3 = 2.0
    numberValue4 = 5.0

    -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
    function dataTable()
      local arg12, arg22
    end

    -- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
    function numberValue6()
      local arg12, arg22
    end
    numberValue8 = textValue
    dataTable2 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue2(stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8, dataTable2)
    numberValue2 = tCMG
    numberValue2 = numberValue2.addPropMarker
    stringHelper = "bzzz_marker_point_blue_anim"
    textValue5 = numberValue29.storageCoords
    textValue5 = textValue5.x
    numberValue3 = numberValue29.storageCoords
    numberValue3 = numberValue3.y
    numberValue4 = numberValue29.storageCoords
    numberValue4 = numberValue4.z
    dataTable = 20.0
    -- Beginner: Create a prop-style world marker.
    numberValue2(stringHelper, textValue5, numberValue3, numberValue4, dataTable)
    numberValue2 = CMG
    numberValue2 = numberValue2.add3DTextForCoord
    stringHelper = "Metal Storage"
    textValue5 = numberValue29.storageCoords
    textValue5 = textValue5.x
    numberValue3 = numberValue29.storageCoords
    numberValue3 = numberValue3.y
    numberValue4 = numberValue29.storageCoords
    numberValue4 = numberValue4.z
    dataTable = 2.2
    numberValue2(stringHelper, textValue5, numberValue3, numberValue4, dataTable)
    numberValue2 = ipairs
    stringHelper = numberValue29.stations
    numberValue2, stringHelper, textValue5, numberValue3 = numberValue2(stringHelper)
    for numberValue4, dataTable in numberValue2, stringHelper, textValue5, numberValue3 do
      numberValue6 = CMG
      numberValue6 = numberValue6.createArea
      numberValue8 = "prisonJob_mw_station_"
      dataTable2 = numberValue4
      numberValue8 = numberValue8 .. dataTable2
      dataTable2 = dataTable
      numberValue11 = 2.0
      cmgCall3 = 5.0

      -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: none) ===
      function numberValue12()
        local arg12, arg22
      end

      -- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
      function dataTable3()
        local arg12, arg22
      end
      numberValue14 = numberValue
      dataTable4 = {}
      dataTable4.coords = dataTable
      -- Beginner: Create an interaction area around a world position.
      numberValue6(numberValue8, dataTable2, numberValue11, cmgCall3, numberValue12, dataTable3, numberValue14, dataTable4)
      numberValue6 = tCMG
      numberValue6 = numberValue6.addPropMarker
      numberValue8 = "bzzz_marker_point_blue_anim"
      dataTable2 = dataTable.x
      numberValue11 = dataTable.y
      cmgCall3 = dataTable.z
      numberValue12 = 20.0
      -- Beginner: Create a prop-style world marker.
      numberValue6(numberValue8, dataTable2, numberValue11, cmgCall3, numberValue12)
    end
    numberValue2 = cmgCall.prisonJobs
    numberValue2 = numberValue2.laundry

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local arg12, arg22, arg32
      arg12 = globalInPrison
      if arg12 then
        arg12 = textValue2
        if "" == arg12 then
          goto flow_label_8
        end
      end
      return
      ::flow_label_8::
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to start Laundry"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg32 = 38
      arg12 = arg12(arg22, arg32)
      if arg12 then
        arg12 = "laundry"
        textValue2 = arg12
        arg12 = "fetching"
        textValue6 = arg12
        arg12 = TriggerServerEvent
        arg22 = "8c4d6586a3"
        arg32 = "laundry"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8c4d6586a3".
        arg12(arg22, arg32)
        arg12 = tCMG
        arg12 = arg12.notify
        arg22 = "~g~Go to the storage to fetch laundry"
        -- Beginner: Show a notification to the player.
        arg12(arg22)
      end
    end

    -- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
    function textValue5()
      local arg12, arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15, flag16, numberValue5, flag18
      arg12 = globalInPrison
      if arg12 then
        arg12 = textValue2
        if "laundry" == arg12 then
          arg12 = textValue6
          if "fetching" == arg12 then
            goto flow_label_11
          end
        end
      end
      return
      ::flow_label_11::
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to pick up laundry"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
      arg12 = IsControlJustPressed
      arg22 = 0
      arg32 = 38
      arg12 = arg12(arg22, arg32)
      if arg12 then
        arg12 = "carrying"
        textValue6 = arg12
        arg12 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg12 = arg12()
        arg22 = 1302435108
        arg32 = CMG
        arg32 = arg32.loadModel
        flag25 = arg22
        -- Beginner: Request/load a GTA model before spawning or applying it.
        arg32(flag25)
        arg32 = GetEntityCoords
        flag25 = arg12
        -- Beginner: result below is entityCoords.
        arg32 = arg32(flag25)
        flag25 = CMG
        flag25 = flag25.requestEntitySpawn
        flag27 = "prison_laundry_box"
        flag30 = arg32
        flag25(flag27, flag30)
        flag25 = CreateObject
        flag27 = arg22
        flag30 = arg32.x
        flag32 = arg32.y
        flag34 = arg32.z
        flag35 = true
        flag36 = true
        flag3 = false
        -- Beginner: result below is objectEntity.
        flag25 = flag25(flag27, flag30, flag32, flag34, flag35, flag36, flag3)
        workValue3 = flag25
        flag25 = SetEntityAsMissionEntity
        flag27 = workValue3
        flag30 = true
        flag32 = true
        flag25(flag27, flag30, flag32)
        flag25 = GetPedBoneIndex
        flag27 = arg12
        flag30 = 28422
        flag25 = flag25(flag27, flag30)
        flag27 = AttachEntityToEntity
        flag30 = workValue3
        flag32 = arg12
        flag34 = flag25
        flag35 = 0.0
        flag36 = 0.02
        flag3 = -0.02
        flag6 = 0.0
        flag8 = 0.0
        flag10 = 0.0
        flag12 = true
        flag14 = true
        flag15 = false
        flag16 = true
        numberValue5 = 1
        flag18 = true
        -- Beginner: Attach one entity to another entity.
        flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15, flag16, numberValue5, flag18)
        flag27 = SetModelAsNoLongerNeeded
        flag30 = arg22
        flag27(flag30)
        flag27 = CMG
        flag27 = flag27.loadAnimDict
        flag30 = "anim@heists@box_carry@"
        -- Beginner: Load a GTA animation dictionary before using it.
        flag27(flag30)
        flag27 = TaskPlayAnim
        flag30 = arg12
        flag32 = "anim@heists@box_carry@"
        flag34 = "idle"
        flag35 = 8.0
        flag36 = 1.0
        flag3 = -1
        flag6 = 49
        flag8 = 0
        flag10 = false
        flag12 = false
        flag14 = false
        -- Beginner: Play an animation on a ped.
        flag27(flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14)
        flag27 = Citizen
        flag27 = flag27.CreateThread

        -- === HELPER FUNCTION (decompiler name: flag30; parameters: none) ===
        function flag30()
          local arg13, arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7
          while true do
            arg13 = textValue6
            if "carrying" ~= arg13 then
              break
            end
            arg13 = IsEntityPlayingAnim
            arg23 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            arg23 = arg23()
            arg33 = "anim@heists@box_carry@"
            waitCall = "idle"
            textValue11 = 3
            arg13 = arg13(arg23, arg33, waitCall, textValue11)
            if not arg13 then
              arg13 = CMG
              arg13 = arg13.loadAnimDict
              arg23 = "anim@heists@box_carry@"
              -- Beginner: Load a GTA animation dictionary before using it.
              arg13(arg23)
              arg13 = TaskPlayAnim
              arg23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg23 = arg23()
              arg33 = "anim@heists@box_carry@"
              waitCall = "idle"
              textValue11 = 8.0
              textValue14 = 1.0
              textValue16 = -1
              numberValue26 = 49
              numberValue28 = 0
              flag37 = false
              flag4 = false
              flag7 = false
              -- Beginner: Play an animation on a ped.
              arg13(arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7)
            end
            arg13 = Wait
            arg23 = 0
            arg13(arg23)
          end
          arg13 = RemoveAnimDict
          arg23 = "anim@heists@box_carry@"
          arg13(arg23)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        flag27(flag30)
        flag27 = tCMG
        flag27 = flag27.notify
        flag30 = "~g~Take the laundry to a workstation"
        -- Beginner: Show a notification to the player.
        flag27(flag30)
      end
    end

    -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg12) ===
    function numberValue3(arg12)
      local arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3
      arg22 = globalInPrison
      if arg22 then
        arg22 = textValue2
        if "laundry" == arg22 then
          arg22 = textValue6
          if "carrying" == arg22 then
            goto flow_label_11
          end
        end
      end
      return
      ::flow_label_11::
      arg22 = drawNativeNotification
      arg32 = "Press ~INPUT_CONTEXT~ to start laundry"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg22(arg32)
      arg22 = IsControlJustPressed
      arg32 = 0
      flag25 = 38
      arg22 = arg22(arg32, flag25)
      if arg22 then
        arg22 = flag5
        if not arg22 then
          arg22 = true
          flag5 = arg22
          arg22 = "working"
          textValue6 = arg22
          arg22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg22 = arg22()
          arg32 = workValue3
          if arg32 then
            arg32 = DoesEntityExist
            flag25 = workValue3
            arg32 = arg32(flag25)
            if arg32 then
              arg32 = DeleteEntity
              flag25 = workValue3
              -- Beginner: Delete a GTA entity.
              arg32(flag25)
            end
          end
          arg32 = nil
          workValue3 = arg32
          arg32 = ClearPedTasks
          flag25 = arg22
          arg32(flag25)
          arg32 = FreezeEntityPosition
          flag25 = arg22
          flag27 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg32(flag25, flag27)
          arg32 = SetEntityCoords
          flag25 = arg22
          flag27 = arg12.coords
          flag27 = flag27.x
          flag30 = arg12.coords
          flag30 = flag30.y
          flag32 = arg12.coords
          flag32 = flag32.z
          flag32 = flag32 - 1
          flag34 = false
          flag35 = false
          flag36 = false
          flag3 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          arg32(flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3)
          arg32 = tCMG
          arg32 = arg32.setCanAnim
          flag25 = false
          arg32(flag25)
          arg32 = Citizen
          arg32 = arg32.CreateThread

          -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
          function flag25()
            local arg13, arg23, arg33, waitCall, textValue11
            while true do
              arg13 = textValue6
              if "working" ~= arg13 then
                break
              end
              arg13 = IsPedUsingScenario
              arg23 = arg22
              arg33 = numberValue2.workScenario
              arg13 = arg13(arg23, arg33)
              if not arg13 then
                arg13 = TaskStartScenarioInPlace
                arg23 = arg22
                arg33 = numberValue2.workScenario
                waitCall = 0
                textValue11 = true
                arg13(arg23, arg33, waitCall, textValue11)
              end
              arg13 = Wait
              arg23 = 200
              arg13(arg23)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg32(flag25)
          arg32 = Citizen
          arg32 = arg32.CreateThread

          -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
          function flag25()
            local arg13, arg23, arg33, waitCall, textValue11
            arg13 = CMG
            arg13 = arg13.startCircularProgressBar
            arg23 = ""
            arg33 = numberValue2.workDuration
            waitCall = nil

            -- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
            function textValue11()
              local flag, workValue4
            end
            arg13(arg23, arg33, waitCall, textValue11)
            arg13 = textValue6
            if "working" ~= arg13 then
              return
            end
            arg13 = FreezeEntityPosition
            arg23 = arg22
            arg33 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            arg13(arg23, arg33)
            arg13 = ClearPedTasks
            arg23 = arg22
            arg13(arg23)
            arg13 = tCMG
            arg13 = arg13.setCanAnim
            arg23 = true
            arg13(arg23)
            arg13 = "idle"
            textValue6 = arg13
            arg13 = ""
            textValue2 = arg13
            arg13 = false
            flag5 = arg13
            arg13 = TriggerServerEvent
            arg23 = "e942632666"
            arg33 = "laundry"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e942632666".
            arg13(arg23, arg33)
            arg13 = tCMG
            arg13 = arg13.notify
            arg23 = "~g~Laundry complete!"
            -- Beginner: Show a notification to the player.
            arg13(arg23)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg32(flag25)
        end
      end
    end
    numberValue4 = CMG
    numberValue4 = numberValue4.createArea
    dataTable = "prisonJob_lw_start"
    numberValue6 = numberValue2.startCoords
    numberValue8 = 2.0
    dataTable2 = 5.0

    -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
    function numberValue11()
      local arg12, arg22
    end

    -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
    function cmgCall3()
      local arg12, arg22
    end
    numberValue12 = stringHelper
    dataTable3 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue4(dataTable, numberValue6, numberValue8, dataTable2, numberValue11, cmgCall3, numberValue12, dataTable3)
    numberValue4 = tCMG
    numberValue4 = numberValue4.addPropMarker
    dataTable = "bzzz_marker_point_blue_anim"
    numberValue6 = numberValue2.startCoords
    numberValue6 = numberValue6.x
    numberValue8 = numberValue2.startCoords
    numberValue8 = numberValue8.y
    dataTable2 = numberValue2.startCoords
    dataTable2 = dataTable2.z
    numberValue11 = 20.0
    -- Beginner: Create a prop-style world marker.
    numberValue4(dataTable, numberValue6, numberValue8, dataTable2, numberValue11)
    numberValue4 = CMG
    numberValue4 = numberValue4.add3DTextForCoord
    dataTable = "Laundry"
    numberValue6 = numberValue2.startCoords
    numberValue6 = numberValue6.x
    numberValue8 = numberValue2.startCoords
    numberValue8 = numberValue8.y
    dataTable2 = numberValue2.startCoords
    dataTable2 = dataTable2.z
    numberValue11 = 2.2
    numberValue4(dataTable, numberValue6, numberValue8, dataTable2, numberValue11)
    numberValue4 = CMG
    numberValue4 = numberValue4.createArea
    dataTable = "prisonJob_lw_storage"
    numberValue6 = numberValue2.storageCoords
    numberValue8 = 2.0
    dataTable2 = 5.0

    -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
    function numberValue11()
      local arg12, arg22
    end

    -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
    function cmgCall3()
      local arg12, arg22
    end
    numberValue12 = textValue5
    dataTable3 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue4(dataTable, numberValue6, numberValue8, dataTable2, numberValue11, cmgCall3, numberValue12, dataTable3)
    numberValue4 = tCMG
    numberValue4 = numberValue4.addPropMarker
    dataTable = "bzzz_marker_point_blue_anim"
    numberValue6 = numberValue2.storageCoords
    numberValue6 = numberValue6.x
    numberValue8 = numberValue2.storageCoords
    numberValue8 = numberValue8.y
    dataTable2 = numberValue2.storageCoords
    dataTable2 = dataTable2.z
    numberValue11 = 20.0
    -- Beginner: Create a prop-style world marker.
    numberValue4(dataTable, numberValue6, numberValue8, dataTable2, numberValue11)
    numberValue4 = CMG
    numberValue4 = numberValue4.add3DTextForCoord
    dataTable = "Laundry Storage"
    numberValue6 = numberValue2.storageCoords
    numberValue6 = numberValue6.x
    numberValue8 = numberValue2.storageCoords
    numberValue8 = numberValue8.y
    dataTable2 = numberValue2.storageCoords
    dataTable2 = dataTable2.z
    numberValue11 = 2.2
    numberValue4(dataTable, numberValue6, numberValue8, dataTable2, numberValue11)
    numberValue4 = ipairs
    dataTable = numberValue2.stations
    numberValue4, dataTable, numberValue6, numberValue8 = numberValue4(dataTable)
    for dataTable2, numberValue11 in numberValue4, dataTable, numberValue6, numberValue8 do
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.createArea
      numberValue12 = "prisonJob_lw_station_"
      dataTable3 = dataTable2
      numberValue12 = numberValue12 .. dataTable3
      dataTable3 = numberValue11
      numberValue14 = 2.0
      dataTable4 = 5.0

      -- === HELPER FUNCTION (decompiler name: numberValue16; parameters: none) ===
      function numberValue16()
        local arg12, arg22
      end

      -- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
      function workValue6()
        local arg12, arg22
      end
      workValue8 = numberValue3
      dataTable5 = {}
      dataTable5.coords = numberValue11
      -- Beginner: Create an interaction area around a world position.
      cmgCall3(numberValue12, dataTable3, numberValue14, dataTable4, numberValue16, workValue6, workValue8, dataTable5)
      cmgCall3 = tCMG
      cmgCall3 = cmgCall3.addPropMarker
      numberValue12 = "bzzz_marker_point_blue_anim"
      dataTable3 = numberValue11.x
      numberValue14 = numberValue11.y
      dataTable4 = numberValue11.z
      numberValue16 = 20.0
      -- Beginner: Create a prop-style world marker.
      cmgCall3(numberValue12, dataTable3, numberValue14, dataTable4, numberValue16)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgCall5, eventRegistration2)

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local arg1, arg2, arg3
  arg1 = drawNativeNotification
  arg2 = "Press ~INPUT_CONTEXT~ to call the front desk"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
  arg1 = IsControlJustPressed
  arg2 = 0
  arg3 = 38
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = TriggerServerEvent
    arg2 = "3c1b3ec57f"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c1b3ec57f".
    arg1(arg2)
  end
end
cmgCall5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29
  arg1 = cmgCall.frontDeskCoords
  arg2 = tCMG
  arg2 = arg2.addPropMarker
  arg3 = "bzzz_marker_point_blue_anim"
  numberValue19 = arg1.x
  numberValue20 = arg1.y
  flag29 = arg1.z
  flag31 = 20.0
  -- Beginner: Create a prop-style world marker.
  arg2(arg3, numberValue19, numberValue20, flag29, flag31)
  arg2 = CMG
  arg2 = arg2.createArea
  arg3 = "prisonFrontDesk"
  numberValue19 = arg1
  numberValue20 = 2.0
  flag29 = 3.0

  -- === HELPER FUNCTION (decompiler name: flag31; parameters: none) ===
  function flag31()
    local arg12, arg22
  end

  -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: none) ===
  function numberValue25()
    local arg12, arg22
  end
  numberValue27 = eventHandlerRegistration
  numberValue29 = {}
  -- Beginner: Create an interaction area around a world position.
  arg2(arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall5(eventRegistration2)
cmgCall5 = RMenu
cmgCall5 = cmgCall5.Add
eventRegistration2 = "cmgCanteenMenu"
textValue8 = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue9 = ""
textValue10 = "~b~Canteen"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_prisonui"
cmgCall6 = "cmg_prisonui"
rageUiCall, textValue9, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, cmgCall6, textValue12, rageUiCall5, rageUiCall6, textValue13, cmgCall7, flag28, vector3Builder, dataTable7, numberValue21, eventRegistration3, cmgCall8, textValue15, dataTable8, numberValue22, numberValue23, cmgCall9, dataTable9, stringHelper2, dataTable10, numberValue24, workValue18, eventHandlerRegistration2, textValue17, dataTable11 = rageUiCall(textValue9, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, cmgCall6)
cmgCall5(eventRegistration2, textValue8, rageUiCall, textValue9, textValue10, rageUiCall2, rageUiCall3, rageUiCall4, cmgCall6, textValue12, rageUiCall5, rageUiCall6, textValue13, cmgCall7, flag28, vector3Builder, dataTable7, numberValue21, eventRegistration3, cmgCall8, textValue15, dataTable8, numberValue22, numberValue23, cmgCall9, dataTable9, stringHelper2, dataTable10, numberValue24, workValue18, eventHandlerRegistration2, textValue17, dataTable11)
cmgCall5 = RageUI
cmgCall5 = cmgCall5.CreateWhile
eventRegistration2 = 1.0
textValue8 = RMenu
rageUiCall = textValue8
textValue8 = textValue8.Get
textValue9 = "cmgCanteenMenu"
textValue10 = "main"
-- Beginner: result below is menu.
textValue8 = textValue8(rageUiCall, textValue9, textValue10)
rageUiCall = nil

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  numberValue19 = "cmgCanteenMenu"
  numberValue20 = "main"
  arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27 = arg2(arg3, numberValue19, numberValue20)
  -- Beginner: result below is menuVisible.
  arg1 = arg1(arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27)
  if arg1 then
    arg1 = cmgCall.canteen
    if arg1 then
      arg1 = cmgCall.canteen
      arg1 = arg1.locations
      if arg1 then
        arg1 = CMG
        arg1 = arg1.getPlayerCoords
        -- Beginner: result below is playerCoords.
        arg1 = arg1()
        arg2 = math
        arg2 = arg2.huge
        arg3 = ipairs
        numberValue19 = cmgCall.canteen
        numberValue19 = numberValue19.locations
        arg3, numberValue19, numberValue20, flag29 = arg3(numberValue19)
        for flag31, numberValue25 in arg3, numberValue19, numberValue20, flag29 do
          numberValue27 = numberValue25.markerCoords
          numberValue27 = arg1 - numberValue27
          numberValue27 = #numberValue27
          if arg2 > numberValue27 then
            arg2 = numberValue27
          end
        end
        if arg2 > 3.0 then
          arg3 = RageUI
          arg3 = arg3.Visible
          numberValue19 = RMenu
          numberValue20 = numberValue19
          numberValue19 = numberValue19.Get
          flag29 = "cmgCanteenMenu"
          flag31 = "main"
          -- Beginner: result below is menu.
          numberValue19 = numberValue19(numberValue20, flag29, flag31)
          numberValue20 = false
          arg3(numberValue19, numberValue20)
        end
      end
    end
  end
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  numberValue19 = "cmgCanteenMenu"
  numberValue20 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, numberValue19, numberValue20)
  arg3 = true
  numberValue19 = false
  numberValue20 = true

  -- === HELPER FUNCTION (decompiler name: flag29; parameters: none) ===
  function flag29()
    local arg12, arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8, flag10, flag12, flag14, flag15, flag16
    arg12 = CMG
    arg12 = arg12.getClientDisplayMoney
    arg12, arg22, arg32, flag25, flag27 = arg12()
    flag30 = RageUI
    flag30 = flag30.Separator
    flag32 = "~y~Prison Cash: \194\163"
    flag34 = getMoneyStringFormatted
    flag35 = flag27
    flag34 = flag34(flag35)
    flag32 = flag32 .. flag34
    flag30(flag32)
    flag30 = RageUI
    flag30 = flag30.Separator
    flag32 = "--"
    flag30(flag32)
    flag30 = cmgCall.canteen
    if flag30 then
      flag30 = cmgCall.canteen
      flag30 = flag30.items
      if flag30 then
        flag30 = ipairs
        flag32 = cmgCall.canteen
        flag32 = flag32.items
        flag30, flag32, flag34, flag35 = flag30(flag32)
        for flag36, flag3 in flag30, flag32, flag34, flag35 do
          flag6 = RageUI
          flag6 = flag6.ButtonWithStyle
          flag8 = flag3.label
          flag10 = ""
          flag12 = {}
          flag14 = "\194\163"
          flag15 = getMoneyStringFormatted
          flag16 = flag3.price
          flag15 = flag15(flag16)
          flag14 = flag14 .. flag15
          flag12.RightLabel = flag14
          flag14 = true

          -- === HELPER FUNCTION (decompiler name: flag15; parameters: arg13, arg23, arg33) ===
          function flag15(arg13, arg23, arg33)
            local waitCall, textValue11, textValue14
            if arg33 then
              waitCall = TriggerServerEvent
              textValue11 = "da3fb82270"
              textValue14 = flag3.itemId
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3fb82270".
              waitCall(textValue11, textValue14)
            end
          end
          flag16 = nil
          -- Beginner: Draw a selectable RageUI menu button.
          flag6(flag8, flag10, flag12, flag14, flag15, flag16)
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: flag31; parameters: none) ===
  function flag31()
    local arg12, arg22
  end
  arg1(arg2, arg3, numberValue19, numberValue20, flag29, flag31)
end
cmgCall5(eventRegistration2, textValue8, rageUiCall, textValue9)
cmgCall5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8
  arg1 = cmgCall.canteen
  if arg1 then
    arg1 = cmgCall.canteen
    arg1 = arg1.locations
    if arg1 then
      arg1 = cmgCall.canteen
      arg1 = arg1.locations
      arg1 = #arg1
      if 0 ~= arg1 then
        goto flow_label_14
      end
    end
  end
  return
  ::flow_label_14::
  arg1 = ipairs
  arg2 = cmgCall.canteen
  arg2 = arg2.locations
  arg1, arg2, arg3, numberValue19 = arg1(arg2)
  for numberValue20, flag29 in arg1, arg2, arg3, numberValue19 do
    flag31 = flag29.npcCoords
    numberValue25 = vector3
    numberValue27 = flag31.x
    numberValue29 = flag31.y
    cmgCall2 = flag31.z
    numberValue25 = numberValue25(numberValue27, numberValue29, cmgCall2)
    numberValue27 = flag31.w
    numberValue29 = CMG
    numberValue29 = numberValue29.createDynamicPed
    cmgCall2 = -1313105063
    textValue = numberValue25
    numberValue = numberValue27
    numberValue2 = true
    stringHelper = nil
    textValue5 = nil
    numberValue3 = 100.0
    numberValue4 = nil

    -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
    function dataTable()
      local arg12, arg22
    end
    numberValue29(cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable)
    numberValue29 = flag29.markerCoords
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.addPropMarker
    textValue = "bzzz_marker_point_blue_anim"
    numberValue = numberValue29.x
    numberValue2 = numberValue29.y
    stringHelper = numberValue29.z
    textValue5 = 20.0
    -- Beginner: Create a prop-style world marker.
    cmgCall2(textValue, numberValue, numberValue2, stringHelper, textValue5)
    cmgCall2 = "prisonCanteen_"
    textValue = numberValue20
    cmgCall2 = cmgCall2 .. textValue

    -- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
    function textValue()
      local arg12, arg22, arg32, flag25, flag27, flag30, flag32
      arg12 = globalInPrison
      if not arg12 then
        return
      end
      arg12 = CMG
      arg12 = arg12.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg12 = arg12()
      arg22 = numberValue29
      arg22 = arg12 - arg22
      arg22 = #arg22
      if arg22 < 2.0 then
        arg32 = drawNativeNotification
        flag25 = "Press ~INPUT_CONTEXT~ to use Canteen"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg32(flag25)
        arg32 = IsControlJustPressed
        flag25 = 0
        flag27 = 38
        arg32 = arg32(flag25, flag27)
        if arg32 then
          arg32 = RageUI
          arg32 = arg32.Visible
          flag25 = RMenu
          flag27 = flag25
          flag25 = flag25.Get
          flag30 = "cmgCanteenMenu"
          flag32 = "main"
          -- Beginner: result below is menu.
          flag25 = flag25(flag27, flag30, flag32)
          flag27 = true
          arg32(flag25, flag27)
        end
      end
    end
    numberValue = CMG
    numberValue = numberValue.createArea
    numberValue2 = cmgCall2
    stringHelper = numberValue29
    textValue5 = 2.0
    numberValue3 = 5.0

    -- === HELPER FUNCTION (decompiler name: numberValue4; parameters: none) ===
    function numberValue4()
      local arg12, arg22
    end

    -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
    function dataTable()
      local arg12, arg22
    end
    numberValue6 = textValue
    numberValue8 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue(numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall5(eventRegistration2)

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, numberValue19, numberValue20
  arg1 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg1 = arg1()
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = globalInPrison
  if arg3 then
    arg3 = GetInteriorFromEntity
    numberValue19 = arg2
    -- Beginner: result below is interiorId.
    arg3 = arg3(numberValue19)
    if 283138 == arg3 then
      arg3 = SetPlayerFallDistance
      numberValue19 = arg1
      numberValue20 = 50.0
      arg3(numberValue19, numberValue20)
  end
  else
    arg3 = SetPlayerFallDistance
    numberValue19 = arg1
    numberValue20 = 5.0
    arg3(numberValue19, numberValue20)
  end
end
eventRegistration2 = RegisterNetEvent
textValue8 = "ec52c14caa"
-- Beginner: this function handles network event "ec52c14caa".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, arg3
  flag19 = arg1
  arg2 = globalInPrison
  if arg2 ~= arg1 then
    if arg1 then
      arg2 = false
      flag24 = arg2
    end
    arg2 = CMG
    arg2 = arg2.setCanOpenPhone
    arg3 = not arg1
    arg2(arg3)
  end
  globalInPrison = arg1
  arg2 = cmgCall5
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2()
  if arg1 then
    arg2 = workValue12
    arg2()
    arg2 = CMG
    arg2 = arg2.forceNearbyAreasReload
    arg2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ec52c14caa".
eventRegistration2(textValue8, rageUiCall)
eventRegistration2 = RegisterNetEvent
textValue8 = "8528e00cf5"
-- Beginner: this function handles network event "8528e00cf5".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, arg3, numberValue19
  arg2 = false
  flag17 = arg2
  arg2 = math
  arg2 = arg2.floor
  arg3 = arg1 / 60
  arg2 = arg2(arg3)
  if arg2 < 60 then
    numberValue9 = arg2
    arg3 = math
    arg3 = arg3.ceil
    numberValue19 = numberValue9
    numberValue19 = numberValue19 * 60
    arg3 = arg3(numberValue19)
    arg3 = arg1 - arg3
    numberValue10 = arg3
  else
    arg3 = math
    arg3 = arg3.floor
    numberValue19 = arg2 / 60
    arg3 = arg3(numberValue19)
    numberValue7 = arg3
    arg3 = math
    arg3 = arg3.ceil
    numberValue19 = numberValue7
    numberValue19 = numberValue19 * 60
    arg3 = arg3(numberValue19)
    arg3 = arg2 - arg3
    numberValue9 = arg3
    arg3 = arg2 * 60
    arg3 = arg1 - arg3
    numberValue10 = arg3
  end
  arg3 = true
  flag17 = arg3
end
eventRegistration2(textValue8, rageUiCall)
eventRegistration2 = RegisterNetEvent
textValue8 = "22152713e0"
-- Beginner: this function handles network event "22152713e0".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2
  arg1 = 0
  numberValue7 = arg1
  arg1 = 0
  numberValue9 = arg1
  arg1 = 0
  numberValue10 = arg1
  arg1 = false
  flag17 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "22152713e0".
eventRegistration2(textValue8, rageUiCall)
eventRegistration2 = Citizen
eventRegistration2 = eventRegistration2.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, numberValue19, numberValue20
  arg1 = SetAmbientZoneState
  arg2 = "az_countryside_prison_01_announcer_general"
  arg3 = false
  numberValue19 = true
  arg1(arg2, arg3, numberValue19)
  while true do
    arg1 = globalInPrison
    if arg1 then
      arg1 = flag17
      if arg1 then
        arg1 = numberValue10
        arg1 = arg1 - 1
        numberValue10 = arg1
        arg1 = numberValue10
        if arg1 < 0 then
          arg1 = 59
          numberValue10 = arg1
          arg1 = numberValue9
          arg1 = arg1 - 1
          numberValue9 = arg1
          arg1 = numberValue9
          if arg1 < 0 then
            arg1 = 59
            numberValue9 = arg1
            arg1 = numberValue7
            arg1 = arg1 - 1
            numberValue7 = arg1
            arg1 = numberValue7
            if arg1 < 0 then
              arg1 = false
              flag17 = arg1
            end
          end
        end
      end
      arg1 = cmgCall4
      arg1 = arg1()
      if arg1 then
        arg1 = flag24
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.setCanOpenPhone
          arg2 = true
          arg1(arg2)
          arg1 = true
          flag24 = arg1
        end
      else
        arg1 = flag24
        if arg1 then
          arg1 = CMG
          arg1 = arg1.setCanOpenPhone
          arg2 = false
          arg1(arg2)
          arg1 = false
          flag24 = arg1
        end
      end
    else
      arg1 = flag24
      if arg1 then
        arg1 = false
        flag24 = arg1
      end
    end
    arg1 = numberValue17
    if 0 ~= arg1 then
      arg1 = cmgCall.segregationAreas
      arg2 = numberValue17
      arg1 = arg1[arg2]
      arg2 = CMG
      arg2 = arg2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg2 = arg2()
      arg2 = arg2 - arg1
      arg2 = #arg2
      if arg2 > 10.0 then
        arg3 = CMG
        arg3 = arg3.teleport
        numberValue19 = arg1
        numberValue20 = false
        arg3(numberValue19, numberValue20)
      end
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration2(textValue8)

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25
  arg1 = numberValue7
  if 0 == arg1 then
    arg1 = numberValue10
    if arg1 < 10 then
      arg1 = numberValue9
      arg2 = ":"
      arg3 = "0"
      numberValue19 = numberValue10
      arg1 = arg1 .. arg2 .. arg3 .. numberValue19
      return arg1
    end
    arg1 = numberValue9
    arg2 = ":"
    arg3 = numberValue10
    arg1 = arg1 .. arg2 .. arg3
    return arg1
  end
  arg1 = numberValue9
  if arg1 < 10 then
    arg1 = numberValue10
    if arg1 < 10 then
      arg1 = "0"
      arg2 = numberValue7
      arg3 = ":"
      numberValue19 = "0"
      numberValue20 = numberValue9
      flag29 = ":"
      flag31 = "0"
      numberValue25 = numberValue10
      arg1 = arg1 .. arg2 .. arg3 .. numberValue19 .. numberValue20 .. flag29 .. flag31 .. numberValue25
      return arg1
    end
    arg1 = "0"
    arg2 = numberValue7
    arg3 = ":"
    numberValue19 = "0"
    numberValue20 = numberValue9
    flag29 = ":"
    flag31 = numberValue10
    arg1 = arg1 .. arg2 .. arg3 .. numberValue19 .. numberValue20 .. flag29 .. flag31
    return arg1
  end
  arg1 = "0"
  arg2 = numberValue7
  arg3 = ":"
  numberValue19 = numberValue9
  numberValue20 = ":"
  flag29 = numberValue10
  arg1 = arg1 .. arg2 .. arg3 .. numberValue19 .. numberValue20 .. flag29
  return arg1
end
textValue8 = CMG
textValue8 = textValue8.registerHudTimerBarProvider
rageUiCall = "prisonHud"

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1) ===
function textValue9(arg1)
  local arg2, arg3, numberValue19
  arg2 = globalInPrison
  if arg2 then
    arg2 = flag17
    if arg2 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg2 = CMG
  arg2 = arg2.isPrisonerTagged
  arg2 = arg2()
  if arg2 then
    arg2 = arg1.push
    arg3 = "Leg Tag: "
    numberValue19 = "Active"
    arg2(arg3, numberValue19)
  end
  arg2 = arg1.push
  arg3 = "Time Left: "
  numberValue19 = eventRegistration2
  numberValue19 = numberValue19()
  arg2(arg3, numberValue19)
end
textValue8(rageUiCall, textValue9)

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2
  arg1 = globalInPrison
  if arg1 then
    arg1 = cmgCall5
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg1()
  end
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  arg2 = "prisonHud"
  arg3 = globalInPrison
  if arg3 then
    arg3 = flag17
  end
  arg1(arg2, arg3)
  arg1 = flag22
  if arg1 then
    arg1 = flag21
    if arg1 then
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      arg2 = numberValue13
      arg2 = arg1 - arg2
      if arg2 > 50 then
        arg2 = numberValue15
        arg2 = arg2 + 1
        numberValue15 = arg2
        arg2 = numberValue15
        arg3 = cmgCall.riotLightPositions
        arg3 = #arg3
        if arg2 > arg3 then
          arg2 = 1
          numberValue15 = arg2
        end
        arg2 = cmgCall.riotLightPositions
        arg3 = numberValue15
        arg2 = arg2[arg3]
        arg3 = DrawLightWithRange
        numberValue19 = arg2.x
        numberValue19 = numberValue19 - 0.5
        numberValue20 = arg2.y
        numberValue20 = numberValue20 - 0.5
        flag29 = arg2.z
        flag31 = 255
        numberValue25 = 0
        numberValue27 = 0
        numberValue29 = 10.0
        cmgCall2 = 1.0
        arg3(numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2)
        arg3 = DrawLightWithRange
        numberValue19 = arg2.x
        numberValue19 = numberValue19 + 0.5
        numberValue20 = arg2.y
        numberValue20 = numberValue20 + 0.5
        flag29 = arg2.z
        flag31 = 255
        numberValue25 = 0
        numberValue27 = 0
        numberValue29 = 10.0
        cmgCall2 = 1.0
        arg3(numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2)
        arg3 = DrawLightWithRange
        numberValue19 = arg2.x
        numberValue20 = arg2.y
        flag29 = arg2.z
        flag31 = 255
        numberValue25 = 0
        numberValue27 = 0
        numberValue29 = 10.0
        cmgCall2 = 1.0
        arg3(numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2)
        numberValue13 = arg1
      end
    end
  end
end
rageUiCall = CMG
rageUiCall = rageUiCall.createThreadOnTick
textValue9 = textValue8
textValue10 = "Prison Timer Bars"
-- Beginner: Run a helper every game frame while this script is active.
rageUiCall(textValue9, textValue10)
rageUiCall = RegisterNetEvent
textValue9 = "dacfb5dab5"
-- Beginner: this function handles network event "dacfb5dab5".

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8, dataTable2, numberValue11, cmgCall3
  arg1 = false
  -- Beginner: this function handles network event "dacfb5dab5".

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, arg22
    arg12 = drawNativeNotification
    arg22 = "Press ~INPUT_CONTEXT~ to start cutting the wires"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(arg22)
  end
  -- Beginner: this function handles network event "dacfb5dab5".

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, arg22
  end

  -- === HELPER FUNCTION (decompiler name: numberValue19; parameters: arg12) ===
  function numberValue19(arg12)
    local arg22, arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8
    arg22 = IsControlJustPressed
    arg32 = 0
    flag25 = 38
    arg22 = arg22(arg32, flag25)
    if arg22 then
      arg22 = flag2
      if not arg22 then
        arg22 = CMG
        arg22 = arg22.TriggerServerCallback
        arg32 = "de93932868"
        arg22 = arg22(arg32)
        if arg22 then
          arg22 = true
          flag2 = arg22
          arg22 = CMG
          arg22 = arg22.loadAnimDict
          arg32 = "anim@gangops@facility@servers@"
          -- Beginner: Load a GTA animation dictionary before using it.
          arg22(arg32)
          arg22 = FreezeEntityPosition
          arg32 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg32 = arg32()
          flag25 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          arg22(arg32, flag25)
          arg22 = TaskPlayAnim
          arg32 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg32 = arg32()
          flag25 = "anim@gangops@facility@servers@"
          flag27 = "hotwire"
          flag30 = 8.0
          flag32 = 1.0
          flag34 = -1
          flag35 = 1
          flag36 = 0
          flag3 = false
          flag6 = false
          flag8 = false
          -- Beginner: Play an animation on a ped.
          arg22(arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8)
          arg22 = SetEntityHeading
          arg32 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg32 = arg32()
          flag25 = arg12.escapePoint
          flag25 = flag25.heading
          -- Beginner: Change the direction an entity is facing.
          arg22(arg32, flag25)
          arg22 = tCMG
          arg22 = arg22.notify
          arg32 = "~g~Started wire cutting (Press X to cancel)"
          -- Beginner: Show a notification to the player.
          arg22(arg32)
          arg22 = Citizen
          arg22 = arg22.CreateThread

          -- === HELPER FUNCTION: arg32() ===
          function arg32()
            local arg13, arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7
            arg13 = SetTimeout
            arg23 = 60000

            -- === HELPER FUNCTION: arg33() ===
            function arg33()
              local flag, workValue4
              flag = flag2
              if flag then
                flag = true
                arg1 = flag
                flag = false
                flag2 = flag
              end
            end
            arg13(arg23, arg33)
            while true do
              arg13 = flag2
              if not arg13 then
                break
              end
              arg13 = IsEntityPlayingAnim
              arg23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg23 = arg23()
              arg33 = "anim@gangops@facility@servers@"
              waitCall = "hotwire"
              textValue11 = 3
              arg13 = arg13(arg23, arg33, waitCall, textValue11)
              if not arg13 then
                arg13 = TaskPlayAnim
                arg23 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                arg23 = arg23()
                arg33 = "anim@gangops@facility@servers@"
                waitCall = "hotwire"
                textValue11 = 8.0
                textValue14 = 1.0
                textValue16 = -1
                numberValue26 = 1
                numberValue28 = 0
                flag37 = false
                flag4 = false
                flag7 = false
                -- Beginner: Play an animation on a ped.
                arg13(arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7)
              end
              arg13 = Wait
              arg23 = 200
              arg13(arg23)
            end
            arg13 = RemoveAnimDict
            arg23 = "anim@gangops@facility@servers@"
            arg13(arg23)
            arg13 = arg1
            if arg13 then
              arg13 = FreezeEntityPosition
              arg23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg23 = arg23()
              arg33 = false
              -- Beginner: Freeze or unfreeze an entity in place.
              arg13(arg23, arg33)
              arg13 = ClearPedTasks
              arg23 = PlayerPedId
              arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7 = arg23()
              arg13(arg23, arg33, waitCall, textValue11, textValue14, textValue16, numberValue26, numberValue28, flag37, flag4, flag7)
              arg13 = TriggerServerEvent
              arg23 = "7fce518417"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fce518417".
              arg13(arg23)
              arg13 = GetOffsetFromEntityInWorldCoords
              arg23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg23 = arg23()
              arg33 = 0.0
              waitCall = 2.5
              textValue11 = 0.0
              arg13 = arg13(arg23, arg33, waitCall, textValue11)
              arg23 = tCMG
              arg23 = arg23.teleport
              arg33 = arg13.x
              waitCall = arg13.y
              textValue11 = arg13.z
              arg23(arg33, waitCall, textValue11)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg22(arg32)
        else
          arg22 = tCMG
          arg22 = arg22.notify
          arg32 = "~r~You do not have the required equipment!"
          -- Beginner: Show a notification to the player.
          arg22(arg32)
        end
      end
    end
    arg22 = IsControlJustPressed
    arg32 = 0
    flag25 = 73
    arg22 = arg22(arg32, flag25)
    if arg22 then
      arg22 = flag2
      if arg22 then
        arg22 = false
        flag2 = arg22
        arg22 = ClearPedTasks
        arg32 = PlayerPedId
        arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8 = arg32()
        arg22(arg32, flag25, flag27, flag30, flag32, flag34, flag35, flag36, flag3, flag6, flag8)
        arg22 = FreezeEntityPosition
        arg32 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg32 = arg32()
        flag25 = false
        -- Beginner: Freeze or unfreeze an entity in place.
        arg22(arg32, flag25)
        arg22 = tCMG
        arg22 = arg22.notify
        arg32 = "~r~Wire cutting cancelled!"
        -- Beginner: Show a notification to the player.
        arg22(arg32)
      end
    end
  end
  numberValue20 = 1
  flag29 = cmgCall.escapePoints
  flag29 = #flag29
  flag31 = 1
  for numberValue25 = numberValue20, flag29, flag31 do
    numberValue27 = tCMG
    numberValue27 = numberValue27.addMarker
    numberValue29 = cmgCall.escapePoints
    numberValue29 = numberValue29[numberValue25]
    numberValue29 = numberValue29.coords
    numberValue29 = numberValue29.x
    cmgCall2 = cmgCall.escapePoints
    cmgCall2 = cmgCall2[numberValue25]
    cmgCall2 = cmgCall2.coords
    cmgCall2 = cmgCall2.y
    textValue = cmgCall.escapePoints
    textValue = textValue[numberValue25]
    textValue = textValue.coords
    textValue = textValue.z
    numberValue = 0.6
    numberValue2 = 0.6
    stringHelper = 0.6
    textValue5 = 200
    numberValue3 = 0
    numberValue4 = 0
    dataTable = 255
    numberValue6 = 70
    numberValue8 = 0
    dataTable2 = false
    numberValue11 = true
    cmgCall3 = false
    -- Beginner: Create a world marker.
    numberValue27(numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6, numberValue8, dataTable2, numberValue11, cmgCall3)
    numberValue27 = CMG
    numberValue27 = numberValue27.createArea
    numberValue29 = "prisonEscapeArea_"
    cmgCall2 = numberValue25
    numberValue29 = numberValue29 .. cmgCall2
    cmgCall2 = cmgCall.escapePoints
    cmgCall2 = cmgCall2[numberValue25]
    cmgCall2 = cmgCall2.coords
    textValue = 2.0
    numberValue = 5.0
    numberValue2 = arg2
    stringHelper = arg3
    textValue5 = numberValue19
    numberValue3 = {}
    numberValue4 = cmgCall.escapePoints
    numberValue4 = numberValue4[numberValue25]
    numberValue3.escapePoint = numberValue4
    -- Beginner: Create an interaction area around a world position.
    numberValue27(numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3)
  end
  numberValue20 = TriggerEvent
  flag29 = "aee0b08546"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "aee0b08546".
  numberValue20(flag29)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dacfb5dab5".
rageUiCall(textValue9, textValue10)
rageUiCall = RegisterNetEvent
textValue9 = "b296a71df4"
-- Beginner: this function handles network event "b296a71df4".

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2, arg3, numberValue19, numberValue20
  arg1 = TriggerEvent
  arg2 = "19f123276f"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "19f123276f".
  arg1(arg2)
  arg1 = workValue16
  if arg1 then
    arg1 = true
    flag33 = arg1
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    arg3 = arg2
    arg2 = arg2.Get
    numberValue19 = "cmgPayBailMenu"
    numberValue20 = "main"
    -- Beginner: result below is menu.
    arg2 = arg2(arg3, numberValue19, numberValue20)
    arg3 = false
    arg1(arg2, arg3)
  end
  arg1 = flag24
  if arg1 then
    arg1 = CMG
    arg1 = arg1.setCanOpenPhone
    arg2 = false
    arg1(arg2)
    arg1 = false
    flag24 = arg1
  end
  arg1 = CMG
  arg1 = arg1.isPrisonerTagged
  arg1 = arg1()
  arg2 = false
  flag19 = arg2
  arg2 = globalInPrison
  if arg2 then
    arg2 = flag23
    if arg2 then
      arg2 = CMG
      arg2 = arg2.setCanOpenPhone
      arg3 = true
      arg2(arg3)
      arg2 = false
      flag23 = arg2
    end
  end
  arg2 = 0
  numberValue17 = arg2
  globalInPrison = false
  arg2 = cmgCall5
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2()
  arg2 = textValue2
  if "" ~= arg2 then
    arg2 = workValue
    if arg2 then
      arg2 = DoesEntityExist
      arg3 = workValue
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = DeleteEntity
        arg3 = workValue
        -- Beginner: Delete a GTA entity.
        arg2(arg3)
      end
    end
    arg2 = nil
    workValue = arg2
    arg2 = "idle"
    textValue3 = arg2
    arg2 = workValue2
    if arg2 then
      arg2 = DoesEntityExist
      arg3 = workValue2
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = DeleteEntity
        arg3 = workValue2
        arg2(arg3)
      end
    end
    arg2 = nil
    workValue2 = arg2
    arg2 = "idle"
    textValue4 = arg2
    arg2 = workValue3
    if arg2 then
      arg2 = DoesEntityExist
      arg3 = workValue3
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = DeleteEntity
        arg3 = workValue3
        -- Beginner: Delete a GTA entity.
        arg2(arg3)
      end
    end
    arg2 = nil
    workValue3 = arg2
    arg2 = "idle"
    textValue6 = arg2
    arg2 = ""
    textValue2 = arg2
    arg2 = false
    flag5 = arg2
    arg2 = FreezeEntityPosition
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    numberValue19 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg2(arg3, numberValue19)
    arg2 = ClearPedTasks
    arg3 = PlayerPedId
    arg3, numberValue19, numberValue20 = arg3()
    arg2(arg3, numberValue19, numberValue20)
    arg2 = tCMG
    arg2 = arg2.setCanAnim
    arg3 = true
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.stopCircularProgressBar
    arg2()
  end
  arg2 = tCMG
  arg2 = arg2.notify
  arg3 = "~g~You have been released!"
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  if not arg1 then
    arg2 = tCMG
    arg2 = arg2.teleport
    arg3 = cmgCall.prisonLeaveCoords
    arg3 = arg3.x
    numberValue19 = cmgCall.prisonLeaveCoords
    numberValue19 = numberValue19.y
    numberValue20 = cmgCall.prisonLeaveCoords
    numberValue20 = numberValue20.z
    arg2(arg3, numberValue19, numberValue20)
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 100
    arg2(arg3)
    arg2 = SetEntityHeading
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    numberValue19 = 274.58
    -- Beginner: Change the direction an entity is facing.
    arg2(arg3, numberValue19)
  end
  arg2 = workValue11
  arg2()
  arg2 = false
  flag17 = arg2
  arg2 = 0
  numberValue9 = arg2
  arg2 = 0
  numberValue10 = arg2
  if not arg1 then
    arg2 = GetResourceKvpString
    arg3 = "cmg_customisation_before_prison"
    arg2 = arg2(arg3)
    if arg2 then
      arg3 = json
      arg3 = arg3.decode
      numberValue19 = arg2
      arg3 = arg3(numberValue19)
      if arg3 then
        numberValue19 = tCMG
        numberValue19 = numberValue19.setCustomization
        numberValue20 = arg3
        numberValue19(numberValue20)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b296a71df4".
rageUiCall(textValue9, textValue10)

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, arg3
  arg1 = GetEntityModel
  arg2 = PlayerPedId
  arg2, arg3 = arg2()
  -- Beginner: result below is modelHash.
  arg1 = arg1(arg2, arg3)
  if 1885233650 == arg1 then
    arg2 = CMG
    arg2 = arg2.loadCustomisationPreset
    arg3 = "PrisonerMale"
    arg2(arg3)
  else
    arg2 = CMG
    arg2 = arg2.loadCustomisationPreset
    arg3 = "PrisonerFemale"
    arg2(arg3)
  end
end
textValue9 = RegisterNetEvent
textValue10 = "d662821448"
-- Beginner: this function handles network event "d662821448".

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: arg1, arg2) ===
function rageUiCall2(arg1, arg2)
  local arg3, numberValue19, numberValue20, flag29
  arg3 = Citizen
  arg3 = arg3.Wait
  numberValue19 = 5000
  arg3(numberValue19)
  arg2 = arg2 - 5
  arg3 = tCMG
  arg3 = arg3.teleport
  numberValue19 = cmgCall.prisonCells
  numberValue19 = numberValue19[arg1]
  numberValue19 = numberValue19.x
  numberValue20 = cmgCall.prisonCells
  numberValue20 = numberValue20[arg1]
  numberValue20 = numberValue20.y
  flag29 = cmgCall.prisonCells
  flag29 = flag29[arg1]
  flag29 = flag29.z
  arg3(numberValue19, numberValue20, flag29)
  arg3 = true
  flag19 = arg3
  arg3 = false
  flag24 = arg3
  arg3 = globalInPrison
  if not arg3 then
    arg3 = flag23
    if not arg3 then
      arg3 = CMG
      arg3 = arg3.setCanOpenPhone
      numberValue19 = false
      arg3(numberValue19)
      arg3 = true
      flag23 = arg3
    end
  end
  globalInPrison = true
  workValue7 = arg1
  arg3 = Citizen
  arg3 = arg3.Wait
  numberValue19 = 100
  arg3(numberValue19)
  arg3 = SetEntityHeading
  numberValue19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue19 = numberValue19()
  numberValue20 = cmgCall.prisonCells
  numberValue20 = numberValue20[arg1]
  numberValue20 = numberValue20.w
  -- Beginner: Change the direction an entity is facing.
  arg3(numberValue19, numberValue20)
  arg3 = workValue12
  arg3()
  arg3 = CMG
  arg3 = arg3.forceNearbyAreasReload
  arg3()
  arg3 = GetEntityModel
  numberValue19 = PlayerPedId
  numberValue19, numberValue20, flag29 = numberValue19()
  -- Beginner: result below is modelHash.
  arg3 = arg3(numberValue19, numberValue20, flag29)
  if 1885233650 ~= arg3 and -1667301416 ~= arg3 then
    numberValue19 = tCMG
    numberValue19 = numberValue19.setCustomization
    numberValue20 = {}
    numberValue20.modelhash = 1885233650
    numberValue19(numberValue20)
  end
  numberValue19 = Citizen
  numberValue19 = numberValue19.Wait
  numberValue20 = 2000
  numberValue19(numberValue20)
  numberValue19 = rageUiCall
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  numberValue19()
end
textValue9(textValue10, rageUiCall2)

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1) ===
function textValue9(arg1)
  local arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue
  arg2 = CMG
  arg2 = arg2.spawnVehicle
  arg3 = -2007026063
  numberValue19 = arg1.vanPosition
  numberValue19 = numberValue19.x
  numberValue20 = arg1.vanPosition
  numberValue20 = numberValue20.y
  flag29 = arg1.vanPosition
  flag29 = flag29.z
  flag31 = arg1.vanPosition
  flag31 = flag31.w
  numberValue25 = false
  numberValue27 = false
  numberValue29 = false
  arg2 = arg2(arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29)
  arg3 = SetVehicleOnGroundProperly
  numberValue19 = arg2
  arg3(numberValue19)
  arg3 = CMG
  arg3 = arg3.loadModel
  numberValue19 = 1456041926
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg3(numberValue19)
  arg3 = CreatePedInsideVehicle
  numberValue19 = arg2
  numberValue20 = 6
  flag29 = 1456041926
  flag31 = -1
  numberValue25 = false
  numberValue27 = false
  arg3 = arg3(numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27)
  numberValue19 = SetModelAsNoLongerNeeded
  numberValue20 = 1456041926
  numberValue19(numberValue20)
  numberValue19 = TaskVehicleDriveToCoordLongrange
  numberValue20 = arg3
  flag29 = arg2
  flag31 = cmgCall.prisonArriveCoords
  flag31 = flag31.x
  numberValue25 = cmgCall.prisonArriveCoords
  numberValue25 = numberValue25.y
  numberValue27 = cmgCall.prisonArriveCoords
  numberValue27 = numberValue27.z
  numberValue29 = 150.0
  cmgCall2 = 1
  textValue = 10
  numberValue19(numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue)
  numberValue19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue19 = numberValue19()
  numberValue20 = nil
  flag29 = arg1.type
  if "focus" == flag29 then
    flag29 = CreateCam
    flag31 = "DEFAULT_SCRIPTED_CAMERA"
    numberValue25 = true
    -- Beginner: result below is cameraHandle.
    flag29 = flag29(flag31, numberValue25)
    numberValue20 = flag29
    flag29 = SetCamCoord
    flag31 = numberValue20
    numberValue25 = arg1.camPosition
    numberValue25 = numberValue25.x
    numberValue27 = arg1.camPosition
    numberValue27 = numberValue27.y
    numberValue29 = arg1.camPosition
    numberValue29 = numberValue29.z
    flag29(flag31, numberValue25, numberValue27, numberValue29)
    flag29 = PointCamAtEntity
    flag31 = numberValue20
    numberValue25 = arg2
    numberValue27 = 0.0
    numberValue29 = 0.0
    cmgCall2 = 0.0
    textValue = false
    flag29(flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue)
    flag29 = RenderScriptCams
    flag31 = true
    numberValue25 = false
    numberValue27 = 0
    numberValue29 = false
    cmgCall2 = false
    flag29(flag31, numberValue25, numberValue27, numberValue29, cmgCall2)
    flag29 = SetPedIntoVehicle
    flag31 = numberValue19
    numberValue25 = arg2
    numberValue27 = 1
    flag29(flag31, numberValue25, numberValue27)
  else
    flag29 = SetPedIntoVehicle
    flag31 = numberValue19
    numberValue25 = arg2
    numberValue27 = 0
    flag29(flag31, numberValue25, numberValue27)
    flag29 = SetEntityVisible
    flag31 = numberValue19
    numberValue25 = false
    numberValue27 = false
    flag29(flag31, numberValue25, numberValue27)
    flag29 = SetFollowVehicleCamViewMode
    flag31 = 4
    flag29(flag31)
  end
  flag29 = DoScreenFadeIn
  flag31 = 500
  flag29(flag31)
  flag29 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag29 = flag29()
  while true do
    flag31 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag31 = flag31()
    flag31 = flag31 - flag29
    numberValue25 = arg1.durationMsec
    if not (flag31 < numberValue25) then
      break
    end
    flag31 = GetEntityForwardVector
    numberValue25 = arg2
    flag31 = flag31(numberValue25)
    flag31 = 15.0 * flag31
    numberValue25 = SetEntityVelocity
    numberValue27 = arg2
    numberValue29 = flag31.x
    cmgCall2 = flag31.y
    textValue = flag31.z
    numberValue25(numberValue27, numberValue29, cmgCall2, textValue)
    numberValue25 = Wait
    numberValue27 = 0
    numberValue25(numberValue27)
  end
  flag31 = DoScreenFadeOut
  numberValue25 = 500
  flag31(numberValue25)
  while true do
    flag31 = IsScreenFadedOut
    flag31 = flag31()
    if flag31 then
      break
    end
    flag31 = Wait
    numberValue25 = 0
    flag31(numberValue25)
  end
  if numberValue20 then
    flag31 = RenderScriptCams
    numberValue25 = false
    numberValue27 = false
    numberValue29 = 0
    cmgCall2 = false
    textValue = false
    flag31(numberValue25, numberValue27, numberValue29, cmgCall2, textValue)
    flag31 = SetCamActive
    numberValue25 = numberValue20
    numberValue27 = false
    flag31(numberValue25, numberValue27)
    flag31 = DestroyCam
    numberValue25 = numberValue20
    numberValue27 = false
    flag31(numberValue25, numberValue27)
  end
  flag31 = SetFollowVehicleCamViewMode
  numberValue25 = 2
  flag31(numberValue25)
  flag31 = DeleteEntity
  numberValue25 = arg3
  -- Beginner: Delete a GTA entity.
  flag31(numberValue25)
  flag31 = DeleteEntity
  numberValue25 = arg2
  flag31(numberValue25)
  flag31 = SetEntityVisible
  numberValue25 = numberValue19
  numberValue27 = true
  numberValue29 = true
  flag31(numberValue25, numberValue27, numberValue29)
  flag31 = SetFollowPedCamViewMode
  numberValue25 = 2
  flag31(numberValue25)
end
textValue10 = RegisterNetEvent
rageUiCall2 = "c1a91c4aaa"
-- Beginner: this function handles network event "c1a91c4aaa".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg1) ===
function rageUiCall3(arg1)
  local arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper
  arg2 = DoScreenFadeOut
  arg3 = 500
  arg2(arg3)
  while true do
    arg2 = IsScreenFadedOut
    arg2 = arg2()
    if arg2 then
      break
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = tCMG
  arg2 = arg2.getCustomization
  arg2 = arg2()
  arg3 = SetResourceKvp
  numberValue19 = "cmg_customisation_before_prison"
  numberValue20 = json
  numberValue20 = numberValue20.encode
  flag29 = arg2
  numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper = numberValue20(flag29)
  arg3(numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper)
  arg3 = DetachEntity
  numberValue19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue19 = numberValue19()
  numberValue20 = false
  flag29 = true
  arg3(numberValue19, numberValue20, flag29)
  arg3 = rageUiCall
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg3()
  arg3 = workValue13
  arg3 = arg3()
  numberValue19 = tCMG
  numberValue19 = numberValue19.teleport
  numberValue20 = arg3.coords
  numberValue20 = numberValue20.x
  flag29 = arg3.coords
  flag29 = flag29.y
  flag31 = arg3.coords
  flag31 = flag31.z
  numberValue19(numberValue20, flag29, flag31)
  numberValue19 = tCMG
  numberValue19 = numberValue19.setCanAnim
  numberValue20 = false
  numberValue19(numberValue20)
  numberValue19 = SetPlayerControl
  numberValue20 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  numberValue20 = numberValue20()
  flag29 = false
  flag31 = 0
  numberValue19(numberValue20, flag29, flag31)
  numberValue19 = CMG
  numberValue19 = numberValue19.hideAllDisplays
  numberValue20 = "prisonbus"
  numberValue19(numberValue20)
  numberValue19 = pairs
  numberValue20 = arg3.cinematics
  numberValue19, numberValue20, flag29, flag31 = numberValue19(numberValue20)
  for numberValue25, numberValue27 in numberValue19, numberValue20, flag29, flag31 do
    numberValue29 = textValue9
    cmgCall2 = numberValue27
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
    numberValue29(cmgCall2)
  end
  numberValue19 = CMG
  numberValue19 = numberValue19.spawnVehicle
  numberValue20 = -2007026063
  flag29 = cmgCall.prisonArriveCoords
  flag29 = flag29.x
  flag31 = cmgCall.prisonArriveCoords
  flag31 = flag31.y
  numberValue25 = cmgCall.prisonArriveCoords
  numberValue25 = numberValue25.z
  numberValue27 = cmgCall.prisonArriveCoords
  numberValue27 = numberValue27.w
  numberValue29 = false
  cmgCall2 = false
  textValue = false
  numberValue19 = numberValue19(numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue)
  numberValue20 = SetVehicleOnGroundProperly
  flag29 = numberValue19
  numberValue20(flag29)
  numberValue20 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue20 = numberValue20()
  flag29 = SetEntityCoords
  flag31 = numberValue20
  numberValue25 = cmgCall.prisonArrivePedStart
  numberValue25 = numberValue25.x
  numberValue27 = cmgCall.prisonArrivePedStart
  numberValue27 = numberValue27.y
  numberValue29 = cmgCall.prisonArrivePedStart
  numberValue29 = numberValue29.z
  cmgCall2 = true
  textValue = false
  numberValue = false
  numberValue2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  flag29(flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2)
  flag29 = TaskGoToCoordAnyMeans
  flag31 = numberValue20
  numberValue25 = cmgCall.prisonArriveMainDoor
  numberValue25 = numberValue25.x
  numberValue27 = cmgCall.prisonArriveMainDoor
  numberValue27 = numberValue27.y
  numberValue29 = cmgCall.prisonArriveMainDoor
  numberValue29 = numberValue29.z
  cmgCall2 = 1.0
  textValue = 0
  numberValue = false
  numberValue2 = 786603
  stringHelper = 0.0
  flag29(flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper)
  flag29 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag29 = flag29()
  while true do
    flag31 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag31 = flag31()
    flag31 = flag31 - flag29
    numberValue25 = 8000
    if not (flag31 < numberValue25) then
      break
    end
    flag31 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag31 = flag31()
    flag31 = flag31 - flag29
    numberValue25 = 500
    if flag31 > numberValue25 then
      flag31 = DoScreenFadeIn
      numberValue25 = 500
      flag31(numberValue25)
    end
    flag31 = SetFollowPedCamViewMode
    numberValue25 = 2
    flag31(numberValue25)
    flag31 = SetGameplayCamRelativePitch
    numberValue25 = 0.0
    numberValue27 = 1.0
    flag31(numberValue25, numberValue27)
    flag31 = SetGameplayCamRelativeHeading
    numberValue25 = 0.0
    flag31(numberValue25)
    flag31 = Wait
    numberValue25 = 0
    flag31(numberValue25)
  end
  flag31 = DoScreenFadeOut
  numberValue25 = 500
  flag31(numberValue25)
  while true do
    flag31 = IsScreenFadedOut
    flag31 = flag31()
    if flag31 then
      break
    end
    flag31 = Wait
    numberValue25 = 0
    flag31(numberValue25)
  end
  flag31 = DeleteEntity
  numberValue25 = numberValue19
  -- Beginner: Delete a GTA entity.
  flag31(numberValue25)
  flag31 = tCMG
  flag31 = flag31.setCanAnim
  numberValue25 = true
  flag31(numberValue25)
  flag31 = SetPlayerControl
  numberValue25 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  numberValue25 = numberValue25()
  numberValue27 = true
  numberValue29 = 0
  flag31(numberValue25, numberValue27, numberValue29)
  flag31 = ClearPedTasks
  numberValue25 = numberValue20
  flag31(numberValue25)
  flag31 = tCMG
  flag31 = flag31.teleport
  numberValue25 = cmgCall.prisonCells
  numberValue25 = numberValue25[arg1]
  numberValue25 = numberValue25.x
  numberValue27 = cmgCall.prisonCells
  numberValue27 = numberValue27[arg1]
  numberValue27 = numberValue27.y
  numberValue29 = cmgCall.prisonCells
  numberValue29 = numberValue29[arg1]
  numberValue29 = numberValue29.z
  flag31(numberValue25, numberValue27, numberValue29)
  flag31 = Citizen
  flag31 = flag31.Wait
  numberValue25 = 100
  flag31(numberValue25)
  flag31 = SetEntityHeading
  numberValue25 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue25 = numberValue25()
  numberValue27 = cmgCall.prisonCells
  numberValue27 = numberValue27[arg1]
  numberValue27 = numberValue27.w
  -- Beginner: Change the direction an entity is facing.
  flag31(numberValue25, numberValue27)
  flag31 = TriggerServerEvent
  numberValue25 = "37a28d3080"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "37a28d3080".
  flag31(numberValue25)
  flag31 = true
  flag19 = flag31
  flag31 = false
  flag24 = flag31
  flag31 = globalInPrison
  if not flag31 then
    flag31 = flag23
    if not flag31 then
      flag31 = CMG
      flag31 = flag31.setCanOpenPhone
      numberValue25 = false
      flag31(numberValue25)
      flag31 = true
      flag23 = flag31
    end
  end
  globalInPrison = true
  workValue7 = arg1
  flag31 = workValue12
  flag31()
  flag31 = DoScreenFadeIn
  numberValue25 = 500
  flag31(numberValue25)
  flag31 = CMG
  flag31 = flag31.showAllDisplays
  numberValue25 = "prisonbus"
  flag31(numberValue25)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c1a91c4aaa".
textValue10(rageUiCall2, rageUiCall3)
textValue10 = RegisterNetEvent
rageUiCall2 = "c1880029f0"
-- Beginner: this function handles network event "c1880029f0".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2
  arg1 = cmgCall.medicalBayBed
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = DoScreenFadeOut
  numberValue19 = 300
  arg3(numberValue19)
  arg3 = Citizen
  arg3 = arg3.Wait
  numberValue19 = 500
  arg3(numberValue19)
  arg3 = true
  flag19 = arg3
  arg3 = workValue12
  arg3()
  arg3 = SetEntityCoords
  numberValue19 = arg2
  numberValue20 = arg1.x
  flag29 = arg1.y
  flag31 = arg1.z
  numberValue25 = false
  numberValue27 = false
  numberValue29 = false
  cmgCall2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg3(numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2)
  arg3 = SetEntityHeading
  numberValue19 = arg2
  numberValue20 = arg1.w
  -- Beginner: Change the direction an entity is facing.
  arg3(numberValue19, numberValue20)
  arg3 = SetEntityVisible
  numberValue19 = arg2
  numberValue20 = true
  flag29 = false
  arg3(numberValue19, numberValue20, flag29)
  arg3 = FreezeEntityPosition
  numberValue19 = arg2
  numberValue20 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(numberValue19, numberValue20)
  arg3 = Citizen
  arg3 = arg3.Wait
  numberValue19 = 500
  arg3(numberValue19)
  arg3 = TriggerEvent
  numberValue19 = "5276360f55"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "5276360f55".
  arg3(numberValue19)
  arg3 = Citizen
  arg3 = arg3.Wait
  numberValue19 = 500
  arg3(numberValue19)
  arg3 = DoScreenFadeIn
  numberValue19 = 500
  arg3(numberValue19)
  arg3 = cmgCall.medicalBayCamera
  numberValue19 = CreateCameraWithParams
  numberValue20 = "DEFAULT_SCRIPTED_CAMERA"
  flag29 = arg3.x
  flag31 = arg3.y
  numberValue25 = arg3.z
  numberValue27 = 0.0
  numberValue29 = 0.0
  cmgCall2 = 0.0
  textValue = 65.0
  numberValue = false
  numberValue2 = 2
  numberValue19 = numberValue19(numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2)
  numberValue20 = PointCamAtCoord
  flag29 = numberValue19
  flag31 = arg1.x
  numberValue25 = arg1.y
  numberValue27 = arg1.z
  numberValue27 = numberValue27 + 0.3
  numberValue20(flag29, flag31, numberValue25, numberValue27)
  numberValue20 = SetCamActive
  flag29 = numberValue19
  flag31 = true
  numberValue20(flag29, flag31)
  numberValue20 = RenderScriptCams
  flag29 = true
  flag31 = true
  numberValue25 = 500
  numberValue27 = true
  numberValue29 = false
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  while true do
    numberValue20 = CMG
    numberValue20 = numberValue20.isSittingOnChair
    numberValue20 = numberValue20()
    if not numberValue20 then
      break
    end
    numberValue20 = Citizen
    numberValue20 = numberValue20.Wait
    flag29 = 200
    numberValue20(flag29)
  end
  numberValue20 = Citizen
  numberValue20 = numberValue20.Wait
  flag29 = 2000
  numberValue20(flag29)
  numberValue20 = RenderScriptCams
  flag29 = false
  flag31 = true
  numberValue25 = 2000
  numberValue27 = true
  numberValue29 = false
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = Citizen
  numberValue20 = numberValue20.Wait
  flag29 = 2000
  numberValue20(flag29)
  numberValue20 = DestroyCam
  flag29 = numberValue19
  flag31 = false
  numberValue20(flag29, flag31)
  numberValue20 = FreezeEntityPosition
  flag29 = arg2
  flag31 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue20(flag29, flag31)
  numberValue20 = CMG
  numberValue20 = numberValue20.showHud
  numberValue20()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c1880029f0".
textValue10(rageUiCall2, rageUiCall3)
textValue10 = RegisterNetEvent
rageUiCall2 = "f8ff0f9e26"
-- Beginner: this function handles network event "f8ff0f9e26".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, arg3, numberValue19, numberValue20
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 2000
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.teleport
  arg2 = cmgCall.prisonCells
  arg3 = workValue7
  arg2 = arg2[arg3]
  arg2 = arg2.x
  arg3 = cmgCall.prisonCells
  numberValue19 = workValue7
  arg3 = arg3[numberValue19]
  arg3 = arg3.y
  numberValue19 = cmgCall.prisonCells
  numberValue20 = workValue7
  numberValue19 = numberValue19[numberValue20]
  numberValue19 = numberValue19.z
  arg1(arg2, arg3, numberValue19)
  arg1 = true
  flag19 = arg1
  arg1 = workValue12
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f8ff0f9e26".
textValue10(rageUiCall2, rageUiCall3)
textValue10 = RMenu
textValue10 = textValue10.Add
rageUiCall2 = "cmgPayBailMenu"
rageUiCall3 = "main"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateMenu
cmgCall6 = ""
textValue12 = "~b~Pay Bail"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6 = rageUiCall6()
textValue13 = "cmg_prisonui"
cmgCall7 = "cmg_prisonui"
rageUiCall4, cmgCall6, textValue12, rageUiCall5, rageUiCall6, textValue13, cmgCall7, flag28, vector3Builder, dataTable7, numberValue21, eventRegistration3, cmgCall8, textValue15, dataTable8, numberValue22, numberValue23, cmgCall9, dataTable9, stringHelper2, dataTable10, numberValue24, workValue18, eventHandlerRegistration2, textValue17, dataTable11 = rageUiCall4(cmgCall6, textValue12, rageUiCall5, rageUiCall6, textValue13, cmgCall7)
textValue10(rageUiCall2, rageUiCall3, rageUiCall4, cmgCall6, textValue12, rageUiCall5, rageUiCall6, textValue13, cmgCall7, flag28, vector3Builder, dataTable7, numberValue21, eventRegistration3, cmgCall8, textValue15, dataTable8, numberValue22, numberValue23, cmgCall9, dataTable9, stringHelper2, dataTable10, numberValue24, workValue18, eventHandlerRegistration2, textValue17, dataTable11)
textValue10 = RageUI
textValue10 = textValue10.CreateWhile
rageUiCall2 = 1.0
rageUiCall3 = RMenu
rageUiCall4 = rageUiCall3
rageUiCall3 = rageUiCall3.Get
cmgCall6 = "cmgPayBailMenu"
textValue12 = "main"
-- Beginner: result below is menu.
rageUiCall3 = rageUiCall3(rageUiCall4, cmgCall6, textValue12)
rageUiCall4 = nil

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  numberValue19 = "cmgPayBailMenu"
  numberValue20 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, numberValue19, numberValue20)
  arg3 = true
  numberValue19 = false
  numberValue20 = true

  -- === HELPER FUNCTION (decompiler name: flag29; parameters: none) ===
  function flag29()
    local arg12, arg22, arg32, flag25, flag27, flag30, flag32, flag34
    arg12 = cmgCall.bailPricePerMinute
    arg22 = numberValue9
    arg12 = arg12 * arg22
    if 0 == arg12 then
      arg12 = cmgCall.bailPricePerMinute
    end
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = "Pay your bail to get out of jail early"
    arg22(arg32)
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = "Bail price \194\163"
    flag25 = getMoneyStringFormatted
    flag27 = arg12
    flag25 = flag25(flag27)
    arg32 = arg32 .. flag25
    arg22(arg32)
    arg22 = RageUI
    arg22 = arg22.Separator
    arg32 = "--"
    arg22(arg32)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    arg32 = "Pay Bail"
    flag25 = ""
    flag27 = {}
    flag27.RightLabel = "\240\159\145\174"
    flag30 = true

    -- === HELPER FUNCTION (decompiler name: flag32; parameters: arg13, arg23, arg33) ===
    function flag32(arg13, arg23, arg33)
      local waitCall, textValue11
      if arg33 then
        waitCall = TriggerServerEvent
        textValue11 = "34ab200e5c"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "34ab200e5c".
        waitCall(textValue11)
      end
    end
    flag34 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(arg32, flag25, flag27, flag30, flag32, flag34)
  end

  -- === HELPER FUNCTION (decompiler name: flag31; parameters: none) ===
  function flag31()
    local arg12, arg22
  end
  arg1(arg2, arg3, numberValue19, numberValue20, flag29, flag31)
end
textValue10(rageUiCall2, rageUiCall3, rageUiCall4, cmgCall6)
textValue10 = RegisterCommand
rageUiCall2 = "viewprisoners"
-- Beginner: this function is the command handler for "viewprisoners".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "prisonguard.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = flag20
    if arg1 then
      arg1 = false
      flag20 = arg1
    else
      arg1 = CMG
      arg1 = arg1.TriggerServerCallback
      arg2 = "794bd36646"
      arg1 = arg1(arg2)
      if nil ~= arg1 then
        arg2 = true
        flag20 = arg2
        arg2 = eventRegistration
        arg3 = arg1
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        arg2(arg3)
      end
    end
  end
end
rageUiCall4 = false
-- Beginner: Register a chat/console command. Event/command: "viewprisoners".
textValue10(rageUiCall2, rageUiCall3, rageUiCall4)
textValue10 = exports
rageUiCall2 = "isPlayerNearPrison"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.isPlayerNearPrison
textValue10(rageUiCall2, rageUiCall3)
textValue10 = exports
rageUiCall2 = "isPlayerInPrison"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.isPlayerInPrison
textValue10(rageUiCall2, rageUiCall3)
textValue10 = true

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2, arg3, numberValue19
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CanPedRagdoll
  arg3 = arg1
  arg2 = arg2(arg3)
  textValue10 = arg2
  arg2 = SetPedCanRagdoll
  arg3 = arg1
  numberValue19 = false
  arg2(arg3, numberValue19)
  arg2 = SetPedCanRagdollFromPlayerImpact
  arg3 = arg1
  numberValue19 = false
  arg2(arg3, numberValue19)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, arg3, numberValue19
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = SetPedCanRagdoll
  arg3 = arg1
  numberValue19 = textValue10
  arg2(arg3, numberValue19)
  arg2 = SetPedCanRagdollFromPlayerImpact
  arg3 = arg1
  numberValue19 = textValue10
  arg2(arg3, numberValue19)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: none) ===
function rageUiCall4()
  local arg1, arg2, arg3, numberValue19
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedRagdoll
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = IsPedBeingStunned
    arg3 = arg1
    numberValue19 = 0
    arg2 = arg2(arg3, numberValue19)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.hasCustomStunEffect
      arg2 = arg2()
      if not arg2 then
        arg2 = ClearPedTasksImmediately
        arg3 = arg1
        arg2(arg3)
      end
    end
  end
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.createArea
textValue12 = "prison_noragdoll"
rageUiCall5 = vector3
rageUiCall6 = 1763.9005126953
textValue13 = 2592.86328125
cmgCall7 = 50.549797058105
rageUiCall5 = rageUiCall5(rageUiCall6, textValue13, cmgCall7)
rageUiCall6 = 7.5
textValue13 = 5.0
cmgCall7 = rageUiCall2
flag28 = rageUiCall3
vector3Builder = rageUiCall4
dataTable7 = {}
-- Beginner: Create an interaction area around a world position.
cmgCall6(textValue12, rageUiCall5, rageUiCall6, textValue13, cmgCall7, flag28, vector3Builder, dataTable7)
cmgCall6 = vector3
textValue12 = 1684.822266
rageUiCall5 = 2581.853516
rageUiCall6 = 62.2134246
cmgCall6 = cmgCall6(textValue12, rageUiCall5, rageUiCall6)
textValue12 = 230.0
rageUiCall5 = 205.0

-- === HELPER FUNCTION (decompiler name: rageUiCall6; parameters: none) ===
function rageUiCall6()
  local arg1, arg2
  arg1 = tonumber
  arg2 = GlobalState
  arg2 = arg2.cmgHackingPrisonNoFlyDisabledUntil
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = 0
  end
  if arg1 <= 0 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.getEstimatedServerOsTime
  arg2 = arg2()
  arg2 = arg1 > arg2
  return arg2
end

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: none) ===
function textValue13()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4
  arg1 = rageUiCall6
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 == arg1 or not arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  numberValue19 = arg3.xy
  numberValue20 = cmgCall6.xy
  numberValue19 = numberValue19 - numberValue20
  numberValue19 = #numberValue19
  numberValue20 = textValue12
  if not (numberValue19 > numberValue20) then
    numberValue20 = arg3.z
    flag29 = 45.2
    if not (numberValue20 < flag29) then
      goto flow_label_30
    end
  end
  return
  ::flow_label_30::
  numberValue20 = GetEntityHeightAboveGround
  flag29 = arg1
  numberValue20 = numberValue20(flag29)
  if numberValue20 < 5.0 then
    return
  end
  flag29 = GetEntityModel
  flag31 = arg1
  -- Beginner: result below is modelHash.
  flag29 = flag29(flag31)
  flag31 = IsThisModelAHeli
  numberValue25 = flag29
  flag31 = flag31(numberValue25)
  if not flag31 then
    flag31 = IsThisModelAPlane
    numberValue25 = flag29
    flag31 = flag31(numberValue25)
    if not flag31 then
      goto flow_label_50
    end
  end
  return
  ::flow_label_50::
  flag31 = rageUiCall5
  flag31 = numberValue19 - flag31
  numberValue25 = math
  numberValue25 = numberValue25.max
  numberValue27 = textValue12
  numberValue29 = rageUiCall5
  numberValue27 = numberValue27 - numberValue29
  numberValue27 = flag31 / numberValue27
  numberValue29 = 0.0
  numberValue25 = numberValue25(numberValue27, numberValue29)
  numberValue27 = numberValue25 * 111.76
  numberValue29 = 1.0
  numberValue29 = numberValue29 - numberValue25
  numberValue29 = numberValue29 * 25.0
  cmgCall2 = norm
  textValue = cmgCall6
  textValue = textValue - arg3
  cmgCall2 = cmgCall2(textValue)
  textValue = GetEntityVelocity
  numberValue = arg1
  textValue = textValue(numberValue)
  textValue = textValue * cmgCall2
  textValue = #textValue
  if numberValue27 < textValue then
    numberValue = cmgCall2 * numberValue27
    numberValue2 = vector3
    stringHelper = 0.0
    textValue5 = 0.0
    numberValue3 = -1.0
    numberValue2 = numberValue2(stringHelper, textValue5, numberValue3)
    numberValue2 = numberValue2 * numberValue29
    numberValue = numberValue + numberValue2
    numberValue2 = SetEntityVelocity
    stringHelper = arg1
    textValue5 = numberValue.x
    numberValue3 = numberValue.y
    numberValue4 = numberValue.z
    numberValue2(stringHelper, textValue5, numberValue3, numberValue4)
  end
end
cmgCall7 = CMG
cmgCall7 = cmgCall7.createArea
flag28 = "prison_nofly"
vector3Builder = vector3
dataTable7 = 1684.822266
numberValue21 = 2581.853516
eventRegistration3 = 62.797512
vector3Builder = vector3Builder(dataTable7, numberValue21, eventRegistration3)
dataTable7 = 300.0
numberValue21 = 1000.0

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: none) ===
function eventRegistration3()
  local arg1, arg2
end

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: none) ===
function cmgCall8()
  local arg1, arg2
end
textValue15 = textValue13
dataTable8 = {}
-- Beginner: Create an interaction area around a world position.
cmgCall7(flag28, vector3Builder, dataTable7, numberValue21, eventRegistration3, cmgCall8, textValue15, dataTable8)

-- === HELPER FUNCTION (decompiler name: cmgCall7; parameters: arg1) ===
function cmgCall7(arg1)
  local arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = pairs
  numberValue19 = GetGamePool
  numberValue20 = "CPed"
  numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2 = numberValue19(numberValue20)
  arg3, numberValue19, numberValue20, flag29 = arg3(numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2)
  for flag31, numberValue25 in arg3, numberValue19, numberValue20, flag29 do
    if numberValue25 ~= arg2 then
      numberValue27 = GetEntityCoords
      numberValue29 = numberValue25
      cmgCall2 = true
      -- Beginner: result below is entityCoords.
      numberValue27 = numberValue27(numberValue29, cmgCall2)
      numberValue27 = numberValue27.xy
      numberValue29 = arg1.xy
      numberValue27 = numberValue27 - numberValue29
      numberValue27 = #numberValue27
      if numberValue27 < 1.0 then
        numberValue27 = true
        return numberValue27
      end
    end
  end
  arg3 = false
  return arg3
end
flag28 = false

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1, arg2) ===
function vector3Builder(arg1, arg2)
  local arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue
  arg3 = tCMG
  arg3 = arg3.setCanAnim
  numberValue19 = false
  arg3(numberValue19)
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  numberValue19 = TaskStartScenarioAtPosition
  numberValue20 = arg3
  flag29 = "PROP_HUMAN_STAND_IMPATIENT"
  flag31 = arg2.x
  numberValue25 = arg2.y
  numberValue27 = arg2.z
  numberValue29 = arg2.w
  cmgCall2 = 10000
  textValue = false
  numberValue = true
  -- Beginner: Make an NPC start a GTA scenario/ambient animation.
  numberValue19(numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue)
  numberValue19 = TriggerServerEvent
  numberValue20 = "c5158af8ec"
  flag29 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c5158af8ec".
  numberValue19(numberValue20, flag29)
  numberValue19 = tCMG
  numberValue19 = numberValue19.getCustomization
  numberValue19 = numberValue19()
  numberValue20 = SetPedComponentVariation
  flag29 = arg3
  flag31 = 9
  numberValue25 = 0
  numberValue27 = 0
  numberValue29 = 0
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = SetPedComponentVariation
  flag29 = arg3
  flag31 = 6
  numberValue25 = CMG
  numberValue25 = numberValue25.getModelGender
  numberValue25 = numberValue25()
  if "male" == numberValue25 then
    numberValue25 = 34
    if numberValue25 then
      goto flow_label_44
    end
  end
  numberValue25 = 35
  ::flow_label_44::
  numberValue27 = 0
  numberValue29 = 0
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = SetPedComponentVariation
  flag29 = arg3
  flag31 = 7
  numberValue25 = 0
  numberValue27 = 0
  numberValue29 = 0
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = SetPedComponentVariation
  flag29 = arg3
  flag31 = 4
  numberValue25 = CMG
  numberValue25 = numberValue25.getModelGender
  numberValue25 = numberValue25()
  if "male" == numberValue25 then
    numberValue25 = 61
    if numberValue25 then
      goto flow_label_66
    end
  end
  numberValue25 = 14
  ::flow_label_66::
  numberValue27 = 0
  numberValue29 = 0
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = SetPedComponentVariation
  flag29 = arg3
  flag31 = 5
  numberValue25 = 0
  numberValue27 = 0
  numberValue29 = 0
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = SetPedComponentVariation
  flag29 = arg3
  flag31 = 11
  numberValue25 = CMG
  numberValue25 = numberValue25.getModelGender
  numberValue25 = numberValue25()
  if "male" == numberValue25 then
    numberValue25 = 252
    if numberValue25 then
      goto flow_label_88
    end
  end
  numberValue25 = 74
  ::flow_label_88::
  numberValue27 = 0
  numberValue29 = 0
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = SetPedComponentVariation
  flag29 = arg3
  flag31 = 8
  numberValue25 = 15
  numberValue27 = 0
  numberValue29 = 0
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = SetPedComponentVariation
  flag29 = arg3
  flag31 = 3
  numberValue25 = 15
  numberValue27 = 0
  numberValue29 = 0
  numberValue20(flag29, flag31, numberValue25, numberValue27, numberValue29)
  numberValue20 = Citizen
  numberValue20 = numberValue20.Wait
  flag29 = 20000
  numberValue20(flag29)
  numberValue20 = ClearPedTasks
  flag29 = arg3
  numberValue20(flag29)
  numberValue20 = Citizen
  numberValue20 = numberValue20.Wait
  flag29 = 3000
  numberValue20(flag29)
  numberValue20 = tCMG
  numberValue20 = numberValue20.setCanAnim
  flag29 = true
  numberValue20(flag29)
  numberValue20 = tCMG
  numberValue20 = numberValue20.setCustomization
  flag29 = numberValue19
  numberValue20(flag29)
  numberValue20 = false
  flag28 = numberValue20
end

-- === HELPER FUNCTION (decompiler name: dataTable7; parameters: arg1) ===
function dataTable7(arg1)
  local arg2, arg3
  arg2 = cmgCall7
  arg3 = arg1.position
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = flag28
    if not arg2 then
      arg2 = drawNativeNotification
      arg3 = "Press ~INPUT_CONTEXT~ to shower"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg2(arg3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue21; parameters: arg1) ===
function numberValue21(arg1)
  local arg2, arg3, numberValue19
  arg2 = IsControlJustPressed
  arg3 = 0
  numberValue19 = 51
  arg2 = arg2(arg3, numberValue19)
  if arg2 then
    arg2 = flag28
    if not arg2 then
      arg2 = cmgCall7
      arg3 = arg1.position
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = notify
        arg3 = "~r~This shower is already occupied by another player."
        -- Beginner: Show a notification to the player.
        arg2(arg3)
      else
        arg2 = true
        flag28 = arg2
        arg2 = Citizen
        arg2 = arg2.CreateThread

        -- === HELPER FUNCTION: arg3() ===
        function arg3()
          local arg12, arg22, arg32
          arg12 = vector3Builder
          arg22 = arg1.index
          arg32 = arg1.position
          arg12(arg22, arg32)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg2(arg3)
      end
    end
  end
end
eventRegistration3 = pairs
cmgCall8 = cmgCall.showerCoords
eventRegistration3, cmgCall8, textValue15, dataTable8 = eventRegistration3(cmgCall8)
for numberValue22, numberValue23 in eventRegistration3, cmgCall8, textValue15, dataTable8 do
  cmgCall9 = CMG
  cmgCall9 = cmgCall9.createArea
  dataTable9 = "prisonshower_"
  stringHelper2 = tostring
  dataTable10 = numberValue22
  stringHelper2 = stringHelper2(dataTable10)
  dataTable9 = dataTable9 .. stringHelper2
  stringHelper2 = numberValue23.xyz
  dataTable10 = 1.5
  numberValue24 = 2.0
  workValue18 = dataTable7

  -- === HELPER FUNCTION: eventHandlerRegistration2() ===
  function eventHandlerRegistration2()
    local arg1, arg2
  end
  textValue17 = numberValue21
  dataTable11 = {}
  dataTable11.index = numberValue22
  dataTable11.position = numberValue23
  -- Beginner: Create an interaction area around a world position.
  cmgCall9(dataTable9, stringHelper2, dataTable10, numberValue24, workValue18, eventHandlerRegistration2, textValue17, dataTable11)
end
eventRegistration3 = RegisterNetEvent
cmgCall8 = "c5158af8ec"
-- Beginner: this function handles network event "c5158af8ec".

-- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg1) ===
function textValue15(arg1)
  local arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6
  arg2 = cmgCall.showerCoords
  arg2 = arg2[arg1]
  arg3 = {}
  numberValue19 = 1
  numberValue20 = 8
  flag29 = 1
  for flag31 = numberValue19, numberValue20, flag29 do
    numberValue25 = CMG
    numberValue25 = numberValue25.loadPtfx
    numberValue27 = "core"
    numberValue25(numberValue27)
    numberValue25 = StartParticleFxLoopedAtCoord
    numberValue27 = "ent_sht_water"
    numberValue29 = arg2.x
    cmgCall2 = arg2.y
    textValue = arg2.z
    textValue = textValue + 1.55
    numberValue = 0.0
    numberValue2 = 0.0
    stringHelper = 0.0
    textValue5 = 1.0
    numberValue3 = false
    numberValue4 = false
    dataTable = false
    numberValue6 = false
    numberValue25 = numberValue25(numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2, stringHelper, textValue5, numberValue3, numberValue4, dataTable, numberValue6)
    numberValue27 = table
    numberValue27 = numberValue27.insert
    numberValue29 = arg3
    cmgCall2 = numberValue25
    numberValue27(numberValue29, cmgCall2)
    numberValue27 = Citizen
    numberValue27 = numberValue27.Wait
    numberValue29 = 2500
    numberValue27(numberValue29)
  end
  numberValue19 = pairs
  numberValue20 = arg3
  numberValue19, numberValue20, flag29, flag31 = numberValue19(numberValue20)
  for numberValue25, numberValue27 in numberValue19, numberValue20, flag29, flag31 do
    numberValue29 = StopParticleFxLooped
    cmgCall2 = numberValue27
    textValue = false
    numberValue29(cmgCall2, textValue)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c5158af8ec".
eventRegistration3(cmgCall8, textValue15)
eventRegistration3 = RegisterNetEvent
cmgCall8 = "fc2357d33e"
-- Beginner: this function handles network event "fc2357d33e".

-- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg1) ===
function textValue15(arg1)
  local arg2, arg3
  arg2 = flag21
  if arg2 then
    if arg1 then
      arg2 = flag22
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.enablePunching
        arg3 = true
        arg2(arg3)
        arg2 = workValue14
        arg2()
    end
    elseif not arg1 then
      arg2 = flag22
      if arg2 then
        arg2 = CMG
        arg2 = arg2.enablePunching
        arg3 = false
        arg2(arg3)
        arg2 = workValue15
        arg2()
      end
    end
  end
  flag22 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fc2357d33e".
eventRegistration3(cmgCall8, textValue15)

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: none) ===
function eventRegistration3()
  local arg1, arg2, arg3, numberValue19, numberValue20
  arg1 = globalInPrison
  if arg1 then
    arg1 = flag22
    if not arg1 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg1 = CMG
  arg1 = arg1.getTakeHostagePlayerAndType
  arg1, arg2 = arg1()
  if not arg1 or "agressor" ~= arg2 then
    return
  end
  arg3 = drawNativeNotification
  numberValue19 = "Press ~INPUT_CONTEXT_SECONDARY~ to start a riot"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg3(numberValue19)
  arg3 = IsControlJustPressed
  numberValue19 = 0
  numberValue20 = 52
  arg3 = arg3(numberValue19, numberValue20)
  if arg3 then
    arg3 = TriggerServerEvent
    numberValue19 = "dd273ed7d1"
    numberValue20 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dd273ed7d1".
    arg3(numberValue19, numberValue20)
  end
end
cmgCall8 = CMG
cmgCall8 = cmgCall8.createArea
textValue15 = "prisonRiotInitLocation"
dataTable8 = cmgCall.prisonMainCoords
numberValue22 = 400.0
numberValue23 = 5.0

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: none) ===
function cmgCall9()
  local arg1, arg2
end

-- === HELPER FUNCTION (decompiler name: dataTable9; parameters: none) ===
function dataTable9()
  local arg1, arg2
end
stringHelper2 = eventRegistration3
dataTable10 = {}
-- Beginner: Create an interaction area around a world position.
cmgCall8(textValue15, dataTable8, numberValue22, numberValue23, cmgCall9, dataTable9, stringHelper2, dataTable10)
cmgCall8 = RegisterNetEvent
textValue15 = "a91c36f550"
-- Beginner: this function handles network event "a91c36f550".

-- === HELPER FUNCTION (decompiler name: dataTable8; parameters: arg1) ===
function dataTable8(arg1)
  local arg2, arg3, numberValue19, numberValue20
  numberValue17 = arg1
  arg2 = numberValue17
  if 0 ~= arg2 then
    arg2 = cmgCall.segregationAreas
    arg3 = numberValue17
    arg2 = arg2[arg3]
    arg3 = CMG
    arg3 = arg3.teleport
    numberValue19 = arg2
    numberValue20 = false
    arg3(numberValue19, numberValue20)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a91c36f550".
cmgCall8(textValue15, dataTable8)
cmgCall8 = RegisterNetEvent
textValue15 = "ee56a72a5a"
-- Beginner: this function handles network event "ee56a72a5a".

-- === HELPER FUNCTION (decompiler name: dataTable8; parameters: arg1) ===
function dataTable8(arg1)
  local arg2, arg3
  if arg1 then
    arg2 = flag24
    if arg2 then
      arg2 = false
      flag24 = arg2
    end
  end
  if arg1 then
    arg2 = flag23
    if arg2 then
      arg2 = CMG
      arg2 = arg2.setCanOpenPhone
      arg3 = true
      arg2(arg3)
      arg2 = false
      flag23 = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ee56a72a5a".
cmgCall8(textValue15, dataTable8)
cmgCall8 = CMG
cmgCall8 = cmgCall8.registerDevMenuItems
textValue15 = "Prison"

-- === HELPER FUNCTION (decompiler name: dataTable8; parameters: none) ===
function dataTable8()
  local arg1, arg2, arg3, numberValue19, numberValue20
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Test Cinematic"
  arg3 = "Plays the cinematic of driving from the cell to the prison"
  numberValue19 = true

  -- === HELPER FUNCTION (decompiler name: numberValue20; parameters: arg12, arg22, arg32) ===
  function numberValue20(arg12, arg22, arg32)
    local flag25, flag27, flag30
    if arg32 then
      flag25 = TriggerEvent
      flag27 = "c1a91c4aaa"
      flag30 = 1
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c1a91c4aaa".
      flag25(flag27, flag30)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, numberValue19, numberValue20)
end
cmgCall8(textValue15, dataTable8)
cmgCall8 = AddEventHandler
textValue15 = "62fa42ee34"
-- Beginner: this function runs when client event "62fa42ee34" fires.

-- === HELPER FUNCTION (decompiler name: dataTable8; parameters: arg1) ===
function dataTable8(arg1)
  local arg2, arg3
  if "HMP Training Grounds" == arg1 then
    arg2 = TriggerServerEvent
    arg3 = "82dc3b07c6"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "82dc3b07c6".
    arg2(arg3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "62fa42ee34".
cmgCall8(textValue15, dataTable8)
cmgCall8 = {}
textValue15 = nil
dataTable8 = false
numberValue22 = 1885233650
numberValue23 = 1672152130
cmgCall9 = {}
cmgCall9.version = 2
cmgCall9.modelHash = 1885233650
cmgCall9.build = 3258
dataTable9 = {}
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataTable9[1] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 7
dataTable9[2] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = "Male_freemode_mpLTS"
stringHelper2.collectionIndex = 0
dataTable9[3] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = "mp_m_clothing"
stringHelper2.collectionIndex = 48
dataTable9[4] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataTable9[5] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = "Male_Heist"
stringHelper2.collectionIndex = 0
dataTable9[6] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataTable9[7] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 15
dataTable9[8] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 8
stringHelper2.collectionName = "mp_m_factions"
stringHelper2.collectionIndex = 17
dataTable9[9] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataTable9[10] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 1
stringHelper2.collectionName = "mp_m_factions"
stringHelper2.collectionIndex = 27
dataTable9[11] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataTable9[0] = stringHelper2
cmgCall9.components = dataTable9
dataTable9 = {}
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 6
dataTable9[1] = stringHelper2
cmgCall9.props = dataTable9

-- === HELPER FUNCTION (decompiler name: dataTable9; parameters: none) ===
function dataTable9()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31
  arg1 = false
  dataTable8 = arg1
  arg1 = 1
  arg2 = cmgCall8
  arg2 = #arg2
  arg3 = 1
  for numberValue19 = arg1, arg2, arg3 do
    numberValue20 = cmgCall8
    numberValue20 = numberValue20[numberValue19]
    if numberValue20 then
      flag29 = DoesEntityExist
      flag31 = numberValue20
      flag29 = flag29(flag31)
      if flag29 then
        flag29 = DeleteEntity
        flag31 = numberValue20
        -- Beginner: Delete a GTA entity.
        flag29(flag31)
      end
    end
    flag29 = cmgCall8
    flag29[numberValue19] = nil
  end
end

-- === HELPER FUNCTION: stringHelper2() ===
function stringHelper2()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2
  arg1 = textValue15
  if not arg1 then
    arg1 = AddRelationshipGroup
    arg2 = "aiPrisonGuards"
    arg1, arg2 = arg1(arg2)
    textValue15 = arg2
  end
  arg1 = RequestModel
  arg2 = numberValue22
  arg1(arg2)
  while true do
    arg1 = HasModelLoaded
    arg2 = numberValue22
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = 1
  arg2 = cmgCall.aiPrisonGuardSpawns
  arg2 = #arg2
  arg3 = 1
  for numberValue19 = arg1, arg2, arg3 do
    numberValue20 = cmgCall.aiPrisonGuardSpawns
    numberValue20 = numberValue20[numberValue19]
    numberValue20 = numberValue20.coords
    flag29 = CreatePed
    flag31 = 30
    numberValue25 = numberValue22
    numberValue27 = numberValue20.x
    numberValue29 = numberValue20.y
    cmgCall2 = numberValue20.z
    textValue = 0.0
    numberValue = false
    numberValue2 = false
    -- Beginner: result below is pedEntity.
    flag29 = flag29(flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2)
    while true do
      flag31 = DoesEntityExist
      numberValue25 = flag29
      flag31 = flag31(numberValue25)
      if flag31 then
        break
      end
      flag31 = Citizen
      flag31 = flag31.Wait
      numberValue25 = 0
      flag31(numberValue25)
    end
    flag31 = SetEntityAsMissionEntity
    numberValue25 = flag29
    numberValue27 = true
    numberValue29 = true
    flag31(numberValue25, numberValue27, numberValue29)
    flag31 = SetEntityInvincible
    numberValue25 = flag29
    numberValue27 = true
    flag31(numberValue25, numberValue27)
    flag31 = SetPedRelationshipGroupHash
    numberValue25 = flag29
    numberValue27 = textValue15
    flag31(numberValue25, numberValue27)
    flag31 = SetPedDropsWeaponsWhenDead
    numberValue25 = flag29
    numberValue27 = false
    flag31(numberValue25, numberValue27)
    flag31 = SetPedAccuracy
    numberValue25 = flag29
    numberValue27 = 100
    flag31(numberValue25, numberValue27)
    flag31 = SetPedArmour
    numberValue25 = flag29
    numberValue27 = 100
    flag31(numberValue25, numberValue27)
    flag31 = GiveWeaponToPed
    numberValue25 = flag29
    numberValue27 = numberValue23
    numberValue29 = 9999
    cmgCall2 = false
    textValue = true
    flag31(numberValue25, numberValue27, numberValue29, cmgCall2, textValue)
    flag31 = "{\"eyebrow\":18,\"dadmumpercent\":4,\"skinproblem\":0,\"hairtint\":0,\"facepaints\":0,\"dad\":12,\"eyeshadowcolour\":0,\"hair\":2,\"beard\":14,\"facepaintscolour\":0,\"eyeshadow\":0,\"beardopacity\":3,\"acne\":1,\"mum\":27,\"lipstick\":0,\"wrinkle\":0,\"haircolor\":0,\"freckle\":0,\"eyebrowopacity\":17,\"eyecolor\":5,\"wrinkleopacity\":0,\"beardcolor\":0,\"skin\":0,\"lipstickcolour\":0}"
    numberValue25 = TriggerEvent
    numberValue27 = "daf420849d"
    numberValue29 = flag31
    cmgCall2 = flag31
    textValue = flag29
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "daf420849d".
    numberValue25(numberValue27, numberValue29, cmgCall2, textValue)
    numberValue25 = tCMG
    numberValue25 = numberValue25.setPedCustomization
    numberValue27 = flag29
    numberValue29 = cmgCall9
    numberValue25(numberValue27, numberValue29)
    numberValue25 = cmgCall8
    numberValue25[numberValue19] = flag29
  end
  arg1 = SetModelAsNoLongerNeeded
  arg2 = numberValue22
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: dataTable10; parameters: none) ===
function dataTable10()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue
  arg1 = cmgCall8
  arg1 = #arg1
  if 0 == arg1 then
    arg1 = stringHelper2
    arg1()
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetPedRelationshipGroupHash
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = textValue15
  if not arg3 then
    return
  end
  arg3 = 1
  numberValue19 = cmgCall8
  numberValue19 = #numberValue19
  numberValue20 = 1
  for flag29 = arg3, numberValue19, numberValue20 do
    flag31 = cmgCall8
    flag31 = flag31[flag29]
    if flag31 then
      numberValue25 = DoesEntityExist
      numberValue27 = flag31
      numberValue25 = numberValue25(numberValue27)
      if numberValue25 then
        numberValue25 = SetEntityInvincible
        numberValue27 = flag31
        numberValue29 = true
        numberValue25(numberValue27, numberValue29)
        numberValue25 = SetPedRelationshipGroupHash
        numberValue27 = flag31
        numberValue29 = textValue15
        numberValue25(numberValue27, numberValue29)
        numberValue25 = SetPedDropsWeaponsWhenDead
        numberValue27 = flag31
        numberValue29 = false
        numberValue25(numberValue27, numberValue29)
        numberValue25 = SetPedAccuracy
        numberValue27 = flag31
        numberValue29 = 100
        numberValue25(numberValue27, numberValue29)
      end
    end
  end
  arg3 = rageUiCall6
  arg3 = arg3()
  if arg3 then
    return
  end
  arg3 = IsPedInAnyHeli
  numberValue19 = arg1
  arg3 = arg3(numberValue19)
  if arg3 then
    arg3 = CMG
    arg3 = arg3.hasClientPermission
    numberValue19 = "nhs.onduty.permission"
    arg3 = arg3(numberValue19)
    if not arg3 then
      arg3 = CMG
      arg3 = arg3.hasClientPermission
      numberValue19 = "police.onduty.permission"
      arg3 = arg3(numberValue19)
      if not arg3 then
        arg3 = CMG
        arg3 = arg3.hasClientPermission
        numberValue19 = "prisonguard.onduty.permission"
        arg3 = arg3(numberValue19)
        if not arg3 then
          arg3 = ClearRelationshipBetweenGroups
          numberValue19 = 0
          numberValue20 = textValue15
          flag29 = arg2
          arg3(numberValue19, numberValue20, flag29)
          arg3 = ClearRelationshipBetweenGroups
          numberValue19 = 0
          numberValue20 = arg2
          flag29 = textValue15
          arg3(numberValue19, numberValue20, flag29)
          arg3 = 1
          numberValue19 = cmgCall8
          numberValue19 = #numberValue19
          numberValue20 = 1
          for flag29 = arg3, numberValue19, numberValue20 do
            flag31 = cmgCall8
            flag31 = flag31[flag29]
            if flag31 then
              numberValue25 = DoesEntityExist
              numberValue27 = flag31
              numberValue25 = numberValue25(numberValue27)
              if numberValue25 then
                numberValue25 = TaskCombatPed
                numberValue27 = flag31
                numberValue29 = arg1
                cmgCall2 = 0
                textValue = 16
                numberValue25(numberValue27, numberValue29, cmgCall2, textValue)
              end
            end
          end
      end
    end
  end
  else
    arg3 = SetRelationshipBetweenGroups
    numberValue19 = 0
    numberValue20 = textValue15
    flag29 = arg2
    arg3(numberValue19, numberValue20, flag29)
    arg3 = SetRelationshipBetweenGroups
    numberValue19 = 0
    numberValue20 = arg2
    flag29 = textValue15
    arg3(numberValue19, numberValue20, flag29)
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue24; parameters: none) ===
function numberValue24()
  local arg1, arg2
  arg1 = dataTable9
  arg1()
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: none) ===
function workValue18()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = rageUiCall6
  arg2 = arg2()
  if arg2 then
    arg2 = textValue15
    if arg2 then
      arg2 = cmgCall8
      arg2 = #arg2
      if arg2 > 0 then
        arg2 = GetPedRelationshipGroupHash
        arg3 = arg1
        arg2 = arg2(arg3)
        arg3 = SetRelationshipBetweenGroups
        numberValue19 = 0
        numberValue20 = textValue15
        flag29 = arg2
        arg3(numberValue19, numberValue20, flag29)
        arg3 = SetRelationshipBetweenGroups
        numberValue19 = 0
        numberValue20 = arg2
        flag29 = textValue15
        arg3(numberValue19, numberValue20, flag29)
        arg3 = 1
        numberValue19 = cmgCall8
        numberValue19 = #numberValue19
        numberValue20 = 1
        for flag29 = arg3, numberValue19, numberValue20 do
          flag31 = cmgCall8
          flag31 = flag31[flag29]
          if flag31 then
            numberValue25 = DoesEntityExist
            numberValue27 = flag31
            numberValue25 = numberValue25(numberValue27)
            if numberValue25 then
              numberValue25 = RemoveWeaponFromPed
              numberValue27 = flag31
              numberValue29 = numberValue23
              numberValue25(numberValue27, numberValue29)
              numberValue25 = ClearPedTasksImmediately
              numberValue27 = flag31
              numberValue25(numberValue27)
            end
          end
        end
        arg3 = true
        dataTable8 = arg3
      end
    end
    return
  end
  arg2 = dataTable8
  if arg2 then
    arg2 = 1
    arg3 = cmgCall8
    arg3 = #arg3
    numberValue19 = 1
    for numberValue20 = arg2, arg3, numberValue19 do
      flag29 = cmgCall8
      flag29 = flag29[numberValue20]
      if flag29 then
        flag31 = DoesEntityExist
        numberValue25 = flag29
        flag31 = flag31(numberValue25)
        if flag31 then
          flag31 = GiveWeaponToPed
          numberValue25 = flag29
          numberValue27 = numberValue23
          numberValue29 = 9999
          cmgCall2 = false
          textValue = true
          flag31(numberValue25, numberValue27, numberValue29, cmgCall2, textValue)
        end
      end
    end
    arg2 = false
    dataTable8 = arg2
  end
  arg2 = IsPedInAnyHeli
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "nhs.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "police.onduty.permission"
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.hasClientPermission
        arg3 = "prisonguard.onduty.permission"
        arg2 = arg2(arg3)
        if not arg2 then
          arg2 = textValue15
          if not arg2 then
            return
          end
          arg2 = ClearRelationshipBetweenGroups
          arg3 = 0
          numberValue19 = textValue15
          numberValue20 = GetPedRelationshipGroupHash
          flag29 = arg1
          numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue = numberValue20(flag29)
          arg2(arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue)
          arg2 = ClearRelationshipBetweenGroups
          arg3 = 0
          numberValue19 = GetPedRelationshipGroupHash
          numberValue20 = arg1
          numberValue19 = numberValue19(numberValue20)
          numberValue20 = textValue15
          arg2(arg3, numberValue19, numberValue20)
          arg2 = 1
          arg3 = cmgCall8
          arg3 = #arg3
          numberValue19 = 1
          for numberValue20 = arg2, arg3, numberValue19 do
            flag29 = cmgCall8
            flag29 = flag29[numberValue20]
            if flag29 then
              flag31 = DoesEntityExist
              numberValue25 = flag29
              flag31 = flag31(numberValue25)
              if flag31 then
                flag31 = TaskCombatPed
                numberValue25 = flag29
                numberValue27 = arg1
                numberValue29 = 0
                cmgCall2 = 16
                flag31(numberValue25, numberValue27, numberValue29, cmgCall2)
              end
            end
          end
      end
    end
  end
  else
    arg2 = 1
    arg3 = cmgCall8
    arg3 = #arg3
    numberValue19 = 1
    for numberValue20 = arg2, arg3, numberValue19 do
      flag29 = cmgCall8
      flag29 = flag29[numberValue20]
      if flag29 then
        flag31 = DoesEntityExist
        numberValue25 = flag29
        flag31 = flag31(numberValue25)
        if flag31 then
          flag31 = ClearPedTasks
          numberValue25 = flag29
          flag31(numberValue25)
        end
      end
    end
  end
end
eventHandlerRegistration2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue17; parameters: none) ===
function textValue17()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27
  arg1 = tCMG
  arg1 = arg1.removeArea
  arg2 = "prisonGuardShoot"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.createArea
  arg2 = "prisonGuardShoot"
  arg3 = cmgCall.prisonMainCoords
  numberValue19 = 250.0
  numberValue20 = 300.0
  flag29 = dataTable10
  flag31 = numberValue24
  numberValue25 = workValue18
  numberValue27 = {}
  -- Beginner: Create an interaction area around a world position.
  arg1(arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration2(textValue17)
eventHandlerRegistration2 = AddEventHandler
textValue17 = "onClientResourceStop"
-- Beginner: this function runs when client event "onClientResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: dataTable11; parameters: arg1) ===
function dataTable11(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = dataTable9
    arg2()
    arg2 = nil
    textValue15 = arg2
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onClientResourceStop".
eventHandlerRegistration2(textValue17, dataTable11)
eventHandlerRegistration2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue17; parameters: none) ===
function textValue17()
  local arg1, arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2
  arg1 = pairs
  arg2 = cmgCall.staticPrisonProps
  arg1, arg2, arg3, numberValue19 = arg1(arg2)
  for numberValue20, flag29 in arg1, arg2, arg3, numberValue19 do
    flag31 = CMG
    flag31 = flag31.loadModel
    numberValue25 = flag29.model
    -- Beginner: Request/load a GTA model before spawning or applying it.
    flag31(numberValue25)
    flag31 = CreateObjectNoOffset
    numberValue25 = flag29.model
    numberValue27 = flag29.position
    numberValue27 = numberValue27.x
    numberValue29 = flag29.position
    numberValue29 = numberValue29.y
    cmgCall2 = flag29.position
    cmgCall2 = cmgCall2.z
    textValue = false
    numberValue = false
    numberValue2 = false
    -- Beginner: result below is objectEntity.
    flag31 = flag31(numberValue25, numberValue27, numberValue29, cmgCall2, textValue, numberValue, numberValue2)
    flag29.Id = flag31
    flag31 = FreezeEntityPosition
    numberValue25 = flag29.Id
    numberValue27 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag31(numberValue25, numberValue27)
    flag31 = SetEntityHeading
    numberValue25 = flag29.Id
    numberValue27 = flag29.heading
    -- Beginner: Change the direction an entity is facing.
    flag31(numberValue25, numberValue27)
  end
  arg1 = workValue10
  arg1()
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration2(textValue17)
eventHandlerRegistration2 = AddEventHandler
textValue17 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: dataTable11; parameters: arg1) ===
function dataTable11(arg1)
  local arg2, arg3, numberValue19, numberValue20, flag29, flag31, numberValue25, numberValue27
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = pairs
    arg3 = cmgCall.staticPrisonProps
    arg2, arg3, numberValue19, numberValue20 = arg2(arg3)
    for flag29, flag31 in arg2, arg3, numberValue19, numberValue20 do
      numberValue25 = flag31.Id
      if numberValue25 then
        numberValue25 = DeleteObject
        numberValue27 = flag31.Id
        numberValue25(numberValue27)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandlerRegistration2(textValue17, dataTable11)
