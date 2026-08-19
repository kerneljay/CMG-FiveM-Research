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
local cmgOperation, stateFlag19, workingValue7, dataCollection6, stateFlag26, workingValue16, workingValue17, stateFlag33, text18, text19, stateFlag2, stateFlag5, text2, text3, workingValue, text4, workingValue2, text6, workingValue3, stateFlag17, number7, number9, number10, stateFlag20, stateFlag21, stateFlag22, number13, number15, workingValue5, number17, stateFlag23, stateFlag24, number18, eventHandler, text7, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, cmgOperation4, workingValue14, workingValue15, eventHandlerRegistration, cmgOperation5, eventHandler2, text8, rageUiOperation, text9, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, cmgOperation6, text12, rageUiOperation5, rageUiOperation6, text13, cmgOperation7, stateFlag28, createVector3, dataCollection7, number21, eventHandler3, cmgOperation8, text15, dataCollection8, number22, number23, cmgOperation9, dataCollection9, stringHelper2, dataCollection10, number24, workingValue18, eventHandlerRegistration2, text17, dataCollection11
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
stateFlag19 = "cfg/cfg_prison"
-- Beginner: result below is config.
cmgOperation = cmgOperation(stateFlag19)
globalInPrison = false
stateFlag19 = false
workingValue7 = nil
dataCollection6 = {}
stateFlag26 = false
workingValue16 = nil
workingValue17 = nil
stateFlag33 = false
text18 = "anim@scripted@payphone_hits@male@"
text19 = "sf_prop_sf_phonebox_01b_s"
stateFlag2 = false
stateFlag5 = false
text2 = ""
text3 = "idle"
workingValue = nil
text4 = "idle"
workingValue2 = nil
text6 = "idle"
workingValue3 = nil
stateFlag17 = false
number7 = 0
number9 = 0
number10 = 0
stateFlag20 = false
stateFlag21 = false
stateFlag22 = false
number13 = 0
number15 = 1
workingValue5 = nil
number17 = 0
stateFlag23 = false
stateFlag24 = false
number18 = 3.0
eventHandler = RegisterNetEvent
text7 = "6d94081b17"
-- Beginner: this function handles network event "6d94081b17".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5
  localValue2 = SetPedToRagdollWithFall
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  number19 = 5000
  number20 = 5000
  stateFlag29 = 1
  stateFlag31 = localValue1.x
  number25 = localValue1.y
  number27 = localValue1.z
  number29 = 1000.0
  cmgOperation2 = 0.0
  text = 0.0
  number = 0.0
  number2 = 0.0
  stringHelper = 0.0
  text5 = 0.0
  localValue2(localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6d94081b17".
eventHandler(text7, workingValue9)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection, number6, number8
  while true do
    localValue2 = stateFlag20
    if not localValue2 then
      break
    end
    localValue2 = DrawRect
    localValue3 = 0.5
    number19 = 0.5
    number20 = 0.5
    stateFlag29 = 0.8
    stateFlag31 = 0
    number25 = 0
    number27 = 0
    number29 = 180
    localValue2(localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29)
    localValue2 = 0.0
    localValue3 = pairs
    number19 = localValue1
    localValue3, number19, number20, stateFlag29 = localValue3(number19)
    for stateFlag31, number25 in localValue3, number19, number20, stateFlag29 do
      number27 = DrawAdvancedText
      number29 = 0.5
      cmgOperation2 = 0.06 + localValue2
      text = 0.1
      number = 0.1
      number2 = 0.5
      stringHelper = string
      stringHelper = stringHelper.format
      text5 = "Name: %s | Prisoner Number: %s | Cell Number: %s | Time Left: %s minutes | Location: %s"
      number3 = number25.prisonerName
      number4 = number25.prisonerSource
      dataCollection = number25.prisonerCellNumber
      number6 = number25.prisonerTimeLeft
      number8 = number25.location
      stringHelper = stringHelper(text5, number3, number4, dataCollection, number6, number8)
      text5 = 200
      number3 = 200
      number4 = 200
      dataCollection = 255
      number6 = 4
      number8 = 0
      number27(number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection, number6, number8)
      localValue2 = localValue2 + 0.05
    end
    localValue3 = Wait
    number19 = 0
    localValue3(number19)
  end
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2, localValue3) ===
function text7(localValue1, localValue2, localValue3)
  local number19, number20, stateFlag29, stateFlag31
  if localValue1 then
    number19 = DoesEntityExist
    number20 = localValue1
    number19 = number19(number20)
    if number19 then
      number19 = DeleteEntity
      number20 = localValue1
      -- Beginner: Delete a GTA entity.
      number19(number20)
    end
  end
  if localValue3 then
    number19 = DoesEntityExist
    number20 = localValue3
    number19 = number19(number20)
    if number19 then
      number19 = SetEntityVisible
      number20 = localValue3
      stateFlag29 = true
      stateFlag31 = false
      number19(number20, stateFlag29, stateFlag31)
    end
  end
  number19 = ClearPedTasks
  number20 = localValue2
  number19(number20)
  number19 = false
  stateFlag26 = number19
  number19 = RemoveAnimDict
  number20 = text18
  number19(number20)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local number19, number20, stateFlag29, stateFlag31, number25, number27, number29
  number19 = stateFlag26
  if number19 then
    return
  end
  number19 = true
  stateFlag26 = number19
  number19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number19 = number19()
  number20 = localValue3
  if number20 and 0 ~= number20 then
    stateFlag29 = DoesEntityExist
    stateFlag31 = number20
    stateFlag29 = stateFlag29(stateFlag31)
    if stateFlag29 and number20 then
      goto continueAtStep22
      stateFlag29 = number20 or stateFlag29
    end
  end
  stateFlag29 = nil
  ::continueAtStep22::
  if stateFlag29 then
    stateFlag31 = SetEntityVisible
    number25 = number20
    number27 = false
    number29 = false
    stateFlag31(number25, number27, number29)
    stateFlag31 = GetEntityCoords
    number25 = number20
    -- Beginner: result below is entityCoords.
    stateFlag31 = stateFlag31(number25)
    localValue1 = stateFlag31
    stateFlag31 = GetEntityHeading
    number25 = number20
    -- Beginner: result below is heading.
    stateFlag31 = stateFlag31(number25)
    localValue2 = stateFlag31
  end
  stateFlag31 = Citizen
  stateFlag31 = stateFlag31.CreateThread

  -- === HELPER FUNCTION (decompiler name: number25; parameters: none) ===
  function number25()
    local localValue12, localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14
    localValue12 = GetHashKey
    localValue22 = text19
    -- Beginner: result below is hash.
    localValue12 = localValue12(localValue22)
    localValue22 = IsModelValid
    localValue32 = localValue12
    localValue22 = localValue22(localValue32)
    if not localValue22 then
      localValue22 = stateFlag29
      if localValue22 then
        localValue22 = SetEntityVisible
        localValue32 = stateFlag29
        stateFlag25 = true
        stateFlag27 = false
        localValue22(localValue32, stateFlag25, stateFlag27)
      end
      localValue22 = false
      stateFlag26 = localValue22
      return
    end
    localValue22 = RequestModel
    localValue32 = localValue12
    localValue22(localValue32)
    localValue22 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue22 = localValue22()
    localValue22 = localValue22 + 5000
    while true do
      localValue32 = HasModelLoaded
      stateFlag25 = localValue12
      localValue32 = localValue32(stateFlag25)
      if localValue32 then
        break
      end
      localValue32 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue32 = localValue32()
      if localValue22 < localValue32 then
        localValue32 = stateFlag29
        if localValue32 then
          localValue32 = SetEntityVisible
          stateFlag25 = stateFlag29
          stateFlag27 = true
          stateFlag30 = false
          localValue32(stateFlag25, stateFlag27, stateFlag30)
        end
        localValue32 = false
        stateFlag26 = localValue32
        return
      end
      localValue32 = Wait
      stateFlag25 = 0
      localValue32(stateFlag25)
    end
    localValue32 = CMG
    localValue32 = localValue32.loadAnimDict
    stateFlag25 = text18
    localValue32 = localValue32(stateFlag25)
    if not localValue32 then
      localValue32 = stateFlag29
      if localValue32 then
        localValue32 = SetEntityVisible
        stateFlag25 = stateFlag29
        stateFlag27 = true
        stateFlag30 = false
        localValue32(stateFlag25, stateFlag27, stateFlag30)
      end
      localValue32 = false
      stateFlag26 = localValue32
      return
    end
    localValue32 = CMG
    localValue32 = localValue32.requestEntitySpawn
    stateFlag25 = "prison_payphone_prop"
    stateFlag27 = localValue1
    localValue32(stateFlag25, stateFlag27)
    localValue32 = CreateObjectNoOffset
    stateFlag25 = localValue12
    stateFlag27 = localValue1.x
    stateFlag30 = localValue1.y
    stateFlag32 = localValue1.z
    stateFlag34 = true
    stateFlag35 = true
    stateFlag36 = true
    -- Beginner: result below is objectEntity.
    localValue32 = localValue32(stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36)
    stateFlag25 = SetModelAsNoLongerNeeded
    stateFlag27 = localValue12
    stateFlag25(stateFlag27)
    if localValue32 and 0 ~= localValue32 then
      stateFlag25 = DoesEntityExist
      stateFlag27 = localValue32
      stateFlag25 = stateFlag25(stateFlag27)
      if stateFlag25 then
        goto continueAtStep105
      end
    end
    stateFlag25 = stateFlag29
    if stateFlag25 then
      stateFlag25 = SetEntityVisible
      stateFlag27 = stateFlag29
      stateFlag30 = true
      stateFlag32 = false
      stateFlag25(stateFlag27, stateFlag30, stateFlag32)
    end
    stateFlag25 = false
    stateFlag26 = stateFlag25
    return
    ::continueAtStep105::
    stateFlag25 = SetEntityHeading
    stateFlag27 = localValue32
    stateFlag30 = localValue2
    -- Beginner: Change the direction an entity is facing.
    stateFlag25(stateFlag27, stateFlag30)
    stateFlag25 = SetEntityCompletelyDisableCollision
    stateFlag27 = localValue32
    stateFlag30 = false
    stateFlag32 = false
    stateFlag25(stateFlag27, stateFlag30, stateFlag32)
    stateFlag25 = stateFlag29
    if stateFlag25 then
      stateFlag25 = GetOffsetFromEntityInWorldCoords
      stateFlag27 = stateFlag29
      stateFlag30 = -0.1
      stateFlag32 = -0.85
      stateFlag34 = 0.0
      stateFlag25 = stateFlag25(stateFlag27, stateFlag30, stateFlag32, stateFlag34)
      if stateFlag25 then
        goto continueAtStep131
      end
    end
    stateFlag25 = GetOffsetFromEntityInWorldCoords
    stateFlag27 = localValue32
    stateFlag30 = -0.1
    stateFlag32 = -0.85
    stateFlag34 = 0.0
    stateFlag25 = stateFlag25(stateFlag27, stateFlag30, stateFlag32, stateFlag34)
    ::continueAtStep131::
    stateFlag27 = SetEntityCoords
    stateFlag30 = number19
    stateFlag32 = stateFlag25.x
    stateFlag34 = stateFlag25.y
    stateFlag35 = stateFlag25.z
    stateFlag36 = false
    stateFlag3 = false
    stateFlag6 = false
    stateFlag8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8)
    stateFlag27 = SetEntityHeading
    stateFlag30 = number19
    stateFlag32 = localValue2
    -- Beginner: Change the direction an entity is facing.
    stateFlag27(stateFlag30, stateFlag32)
    stateFlag27 = PlayEntityAnim
    stateFlag30 = localValue32
    stateFlag32 = "fxfr_pcn_1_intro_phone"
    stateFlag34 = text18
    stateFlag35 = 10.0
    stateFlag36 = true
    stateFlag3 = true
    stateFlag6 = true
    stateFlag8 = 0.0
    stateFlag10 = false
    stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10)
    stateFlag27 = TaskPlayAnim
    stateFlag30 = number19
    stateFlag32 = text18
    stateFlag34 = "fxfr_phl_1_intro_male"
    stateFlag35 = 8.0
    stateFlag36 = 8.0
    stateFlag3 = -1
    stateFlag6 = 14
    stateFlag8 = 0
    stateFlag10 = false
    stateFlag12 = false
    stateFlag14 = false
    -- Beginner: Play an animation on a ped.
    stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14)
    workingValue16 = localValue32
    stateFlag27 = stateFlag29
    workingValue17 = stateFlag27
    stateFlag27 = RageUI
    stateFlag27 = stateFlag27.Visible
    stateFlag30 = RMenu
    stateFlag32 = stateFlag30
    stateFlag30 = stateFlag30.Get
    stateFlag34 = "cmgPayBailMenu"
    stateFlag35 = "main"
    -- Beginner: result below is menu.
    stateFlag30 = stateFlag30(stateFlag32, stateFlag34, stateFlag35)
    stateFlag32 = true
    stateFlag27(stateFlag30, stateFlag32)
    stateFlag27 = Citizen
    stateFlag27 = stateFlag27.CreateThread

    -- === HELPER FUNCTION (decompiler name: stateFlag30; parameters: none) ===
    function stateFlag30()
      local localValue13, localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7, stateFlag9, stateFlag11, stateFlag13
      while true do
        localValue13 = RageUI
        localValue13 = localValue13.Visible
        localValue23 = RMenu
        localValue33 = localValue23
        localValue23 = localValue23.Get
        waitCall = "cmgPayBailMenu"
        text11 = "main"
        localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7, stateFlag9, stateFlag11, stateFlag13 = localValue23(localValue33, waitCall, text11)
        -- Beginner: result below is menuVisible.
        localValue13 = localValue13(localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7, stateFlag9, stateFlag11, stateFlag13)
        if not localValue13 then
          break
        end
        localValue13 = Wait
        localValue23 = 100
        localValue13(localValue23)
      end
      localValue13 = workingValue16
      localValue23 = workingValue17
      localValue33 = nil
      workingValue16 = localValue33
      localValue33 = nil
      workingValue17 = localValue33
      localValue33 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue33 = localValue33()
      waitCall = stateFlag33
      if not waitCall then
        waitCall = TaskPlayAnim
        text11 = localValue33
        text14 = text18
        text16 = "exit_left_male"
        number26 = 8.0
        number28 = 8.0
        stateFlag37 = -1
        stateFlag4 = 1
        stateFlag7 = 0
        stateFlag9 = false
        stateFlag11 = false
        stateFlag13 = false
        -- Beginner: Play an animation on a ped.
        waitCall(text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7, stateFlag9, stateFlag11, stateFlag13)
        waitCall = Wait
        text11 = 200
        waitCall(text11)
        if localValue13 then
          waitCall = DoesEntityExist
          text11 = localValue13
          waitCall = waitCall(text11)
          if waitCall then
            waitCall = StopEntityAnim
            text11 = localValue13
            text14 = "fxfr_pcn_1_intro_phone"
            text16 = text18
            number26 = 1000.0
            waitCall(text11, text14, text16, number26)
          end
        end
        waitCall = StopAnimTask
        text11 = localValue33
        text14 = text18
        text16 = "fxfr_ptj_1_male"
        number26 = 1.0
        waitCall(text11, text14, text16, number26)
        waitCall = Wait
        text11 = 2800
        waitCall(text11)
      end
      waitCall = false
      stateFlag33 = waitCall
      waitCall = text7
      text11 = localValue13
      text14 = localValue33
      text16 = localValue23
      waitCall(text11, text14, text16)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    stateFlag27(stateFlag30)
  end
  stateFlag31(number25)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection
  localValue1 = 0
  localValue2 = pairs
  localValue3 = cmgOperation.staticPrisonProps
  localValue2, localValue3, number19, number20 = localValue2(localValue3)
  for stateFlag29, stateFlag31 in localValue2, localValue3, number19, number20 do
    number25 = stateFlag31.isBailPhone
    if number25 then
      localValue1 = localValue1 + 1

      -- === HELPER FUNCTION (decompiler name: number25; parameters: none) ===
      function number25()
        local localValue12, localValue22
      end

      -- === HELPER FUNCTION (decompiler name: number27; parameters: none) ===
      function number27()
        local localValue12, localValue22
      end

      -- === HELPER FUNCTION (decompiler name: number29; parameters: localValue12) ===
      function number29(localValue12)
        local localValue22, localValue32, stateFlag25, stateFlag27
        localValue22 = stateFlag26
        if localValue22 then
          return
        end
        localValue22 = drawNativeNotification
        localValue32 = "Press ~INPUT_CONTEXT~ to call your Lawyer"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue22(localValue32)
        localValue22 = globalInPrison
        if localValue22 then
          localValue22 = IsControlJustPressed
          localValue32 = 0
          stateFlag25 = 38
          localValue22 = localValue22(localValue32, stateFlag25)
          if localValue22 then
            localValue22 = workingValue9
            localValue32 = localValue12.objectInfo
            localValue32 = localValue32.position
            stateFlag25 = localValue12.objectInfo
            stateFlag25 = stateFlag25.heading
            stateFlag27 = localValue12.objectInfo
            stateFlag27 = stateFlag27.Id
            localValue22(localValue32, stateFlag25, stateFlag27)
          end
        else
          localValue22 = IsControlJustPressed
          localValue32 = 0
          stateFlag25 = 38
          localValue22 = localValue22(localValue32, stateFlag25)
          if localValue22 then
            localValue22 = tCMG
            localValue22 = localValue22.notify
            localValue32 = "~r~You need to be in prison to pay bail."
            -- Beginner: Show a notification to the player.
            localValue22(localValue32)
          end
        end
      end
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.createArea
      text = "prison_paybail_"
      number = localValue1
      text = text .. number
      number = stateFlag31.position
      number2 = 2.5
      stringHelper = 5.0
      text5 = number25
      number3 = number27
      number4 = number29
      dataCollection = {}
      dataCollection.objectInfo = stateFlag31
      -- Beginner: Create an interaction area around a world position.
      cmgOperation2(text, number, number2, stringHelper, text5, number3, number4, dataCollection)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25
  localValue1 = pairs
  localValue2 = dataCollection6
  localValue1, localValue2, localValue3, number19 = localValue1(localValue2)
  for number20, stateFlag29 in localValue1, localValue2, localValue3, number19 do
    stateFlag31 = tCMG
    stateFlag31 = stateFlag31.removeBlip
    number25 = stateFlag29
    stateFlag31(number25)
  end
  localValue1 = {}
  dataCollection6 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper
  localValue1 = workingValue11
  localValue1()
  localValue1 = 1
  localValue2 = cmgOperation.prisonBlips
  localValue2 = #localValue2
  localValue3 = 1
  for number19 = localValue1, localValue2, localValue3 do
    number20 = cmgOperation.prisonBlips
    number20 = number20[number19]
    stateFlag29 = number20.scale
    if not stateFlag29 then
      stateFlag29 = 0.65
    end
    stateFlag31 = tCMG
    stateFlag31 = stateFlag31.addBlip
    number25 = number20.coords
    number25 = number25.x
    number27 = number20.coords
    number27 = number27.y
    number29 = number20.coords
    number29 = number29.z
    cmgOperation2 = number20.icon
    text = number20.colour
    number = number20.name
    number2 = stateFlag29
    stringHelper = false
    stateFlag31 = stateFlag31(number25, number27, number29, cmgOperation2, text, number, number2, stringHelper)
    number25 = SetBlipDisplay
    number27 = stateFlag31
    number29 = 4
    number25(number27, number29)
    number25 = SetBlipAsShortRange
    number27 = stateFlag31
    number29 = true
    number25(number27, number29)
    number25 = dataCollection6
    number25[number19] = stateFlag31
  end
  localValue1 = globalInPrison
  if localValue1 then
    localValue1 = workingValue7
    if localValue1 then
      localValue1 = cmgOperation.prisonCells
      localValue2 = workingValue7
      localValue1 = localValue1[localValue2]
      localValue2 = tCMG
      localValue2 = localValue2.addBlip
      localValue3 = localValue1.x
      number19 = localValue1.y
      number20 = localValue1.z
      stateFlag29 = 188
      stateFlag31 = 22
      number25 = "Your prison cell"
      number27 = 0.65
      number29 = false
      localValue2 = localValue2(localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29)
      localValue3 = SetBlipDisplay
      number19 = localValue2
      number20 = 4
      localValue3(number19, number20)
      localValue3 = SetBlipAsShortRange
      number19 = localValue2
      number20 = true
      localValue3(number19, number20)
      localValue3 = dataCollection6
      localValue3 = #localValue3
      number19 = localValue3 + 1
      localValue3 = dataCollection6
      localValue3[number19] = localValue2
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29
  localValue1 = 10000.0
  localValue2 = cmgOperation.policeStationCinematics
  localValue2 = localValue2[1]
  localValue3 = pairs
  number19 = cmgOperation.policeStationCinematics
  localValue3, number19, number20, stateFlag29 = localValue3(number19)
  for stateFlag31, number25 in localValue3, number19, number20, stateFlag29 do
    number27 = CMG
    number27 = number27.getPlayerCoords
    -- Beginner: result below is playerCoords.
    number27 = number27()
    number29 = number25.coords
    number27 = number27 - number29
    number27 = #number27
    if localValue1 > number27 then
      localValue1 = number27
      localValue2 = number25
    end
  end
  return localValue2
end
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2
  localValue1 = globalInPrison
  return localValue1
end
cmgOperation4.isPlayerInPrison = workingValue14
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2
  localValue1 = stateFlag21
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isPlayerInRedZone
    localValue1 = localValue1()
  end
  return localValue1
end
cmgOperation4.isPlayerNearPrison = workingValue14

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29
  localValue1 = 1
  localValue2 = cmgOperation.prisonPayPhones
  localValue2 = #localValue2
  localValue3 = 1
  for number19 = localValue1, localValue2, localValue3 do
    number20 = CMG
    number20 = number20.getPlayerCoords
    -- Beginner: result below is playerCoords.
    number20 = number20()
    stateFlag29 = cmgOperation.prisonPayPhones
    stateFlag29 = stateFlag29[number19]
    stateFlag29 = stateFlag29.coords
    number20 = number20 - stateFlag29
    number20 = #number20
    stateFlag29 = number18
    if number20 <= stateFlag29 then
      number20 = true
      return number20
    end
  end
  localValue1 = false
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3
  localValue1 = {}
  workingValue5 = localValue1
  localValue1 = RequestScriptAudioBank
  localValue2 = "ALARM_BELL_02"
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = SetTimeout
  localValue2 = 5000

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15
    localValue12 = workingValue5
    if localValue12 then
      localValue12 = pairs
      localValue22 = cmgOperation.riotAlarmPositions
      localValue12, localValue22, localValue32, stateFlag25 = localValue12(localValue22)
      for stateFlag27, stateFlag30 in localValue12, localValue22, localValue32, stateFlag25 do
        stateFlag32 = GetSoundId
        -- Beginner: result below is soundHandle.
        stateFlag32 = stateFlag32()
        stateFlag34 = PlaySoundFromCoord
        stateFlag35 = stateFlag32
        stateFlag36 = "Bell_02"
        stateFlag3 = stateFlag30.x
        stateFlag6 = stateFlag30.y
        stateFlag8 = stateFlag30.z
        stateFlag10 = "ALARMS_SOUNDSET"
        stateFlag12 = false
        stateFlag14 = 0
        stateFlag15 = false
        stateFlag34(stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15)
        stateFlag34 = table
        stateFlag34 = stateFlag34.insert
        stateFlag35 = workingValue5
        stateFlag36 = stateFlag32
        stateFlag34(stateFlag35, stateFlag36)
      end
    end
  end
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25
  localValue1 = workingValue5
  if localValue1 then
    localValue1 = pairs
    localValue2 = workingValue5
    localValue1, localValue2, localValue3, number19 = localValue1(localValue2)
    for number20, stateFlag29 in localValue1, localValue2, localValue3, number19 do
      stateFlag31 = StopSound
      number25 = stateFlag29
      stateFlag31(number25)
      stateFlag31 = ReleaseSoundId
      number25 = stateFlag29
      stateFlag31(number25)
    end
  end
  localValue1 = nil
  workingValue5 = localValue1
end
eventHandlerRegistration = AddEventHandler
cmgOperation5 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2) ===
function eventHandler2(localValue1, localValue2)
  local localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection, number6, number8, dataCollection2, number11, cmgOperation3, number12, dataCollection3, number14, dataCollection4, number16, workingValue6, workingValue8, dataCollection5
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = true
      stateFlag21 = localValue12
      localValue12 = workingValue12
      localValue12()
      localValue12 = stateFlag22
      if localValue12 then
        localValue12 = CMG
        localValue12 = localValue12.enablePunching
        localValue22 = true
        localValue12(localValue22)
        localValue12 = workingValue14
        localValue12()
      end
      localValue12 = TriggerEvent
      localValue22 = "2324ddf647"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2324ddf647".
      localValue12(localValue22)
    end

    -- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
    function number19()
      local localValue12, localValue22, localValue32, stateFlag25, stateFlag27
      localValue12 = stateFlag19
      if localValue12 then
        localValue12 = CMG
        localValue12 = localValue12.isPrisonerTagged
        localValue12 = localValue12()
        if not localValue12 then
          localValue12 = Citizen
          localValue12 = localValue12.Wait
          localValue22 = 1000
          localValue12(localValue22)
          localValue12 = CMG
          localValue12 = localValue12.isPrisonerTagged
          localValue12 = localValue12()
          if not localValue12 then
            localValue12 = TriggerServerEvent
            localValue22 = "d656c383a2"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d656c383a2".
            localValue12(localValue22)
            localValue12 = tCMG
            localValue12 = localValue12.teleport
            localValue22 = cmgOperation.prisonCells
            localValue32 = workingValue7
            localValue22 = localValue22[localValue32]
            localValue22 = localValue22.x
            localValue32 = cmgOperation.prisonCells
            stateFlag25 = workingValue7
            localValue32 = localValue32[stateFlag25]
            localValue32 = localValue32.y
            stateFlag25 = cmgOperation.prisonCells
            stateFlag27 = workingValue7
            stateFlag25 = stateFlag25[stateFlag27]
            stateFlag25 = stateFlag25.z
            localValue12(localValue22, localValue32, stateFlag25)
            localValue12 = tCMG
            localValue12 = localValue12.notify
            localValue22 = "~r~Naughty, go back."
            -- Beginner: Show a notification to the player.
            localValue12(localValue22)
          end
        end
      end
      localValue12 = stateFlag22
      if localValue12 then
        localValue12 = CMG
        localValue12 = localValue12.enablePunching
        localValue22 = false
        localValue12(localValue22)
        localValue12 = workingValue15
        localValue12()
      end
      localValue12 = false
      stateFlag21 = localValue12
      localValue12 = globalInPrison
      if not localValue12 then
        localValue12 = workingValue11
        localValue12()
      end
    end

    -- === HELPER FUNCTION (decompiler name: number20; parameters: none) ===
    function number20()
      local localValue12, localValue22
    end
    stateFlag29 = CMG
    stateFlag29 = stateFlag29.createArea
    stateFlag31 = "forceStayInPrison"
    number25 = cmgOperation.prisonMainCoords
    number27 = 225.0
    number29 = 100.0
    cmgOperation2 = localValue3
    text = number19
    number = number20
    number2 = {}
    -- Beginner: Create an interaction area around a world position.
    stateFlag29(stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2)
    stateFlag29 = cmgOperation.prisonJobs
    stateFlag29 = stateFlag29.woodworking

    -- === HELPER FUNCTION (decompiler name: stateFlag31; parameters: none) ===
    function stateFlag31()
      local localValue12, localValue22, localValue32
      localValue12 = globalInPrison
      if localValue12 then
        localValue12 = text2
        if "" == localValue12 then
          goto continueAtStep8
        end
      end
      return
      ::continueAtStep8::
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to start Woodworking"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
      localValue12 = IsControlJustPressed
      localValue22 = 0
      localValue32 = 38
      localValue12 = localValue12(localValue22, localValue32)
      if localValue12 then
        localValue12 = "woodworking"
        text2 = localValue12
        localValue12 = "fetching"
        text3 = localValue12
        localValue12 = TriggerServerEvent
        localValue22 = "8c4d6586a3"
        localValue32 = "woodworking"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8c4d6586a3".
        localValue12(localValue22, localValue32)
        localValue12 = tCMG
        localValue12 = localValue12.notify
        localValue22 = "~g~Go to the storage room to fetch wood"
        -- Beginner: Show a notification to the player.
        localValue12(localValue22)
      end
    end

    -- === HELPER FUNCTION (decompiler name: number25; parameters: none) ===
    function number25()
      local localValue12, localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, stateFlag16, number5, stateFlag18
      localValue12 = globalInPrison
      if localValue12 then
        localValue12 = text2
        if "woodworking" == localValue12 then
          localValue12 = text3
          if "fetching" == localValue12 then
            goto continueAtStep11
          end
        end
      end
      return
      ::continueAtStep11::
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to pick up wood"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
      localValue12 = IsControlJustPressed
      localValue22 = 0
      localValue32 = 38
      localValue12 = localValue12(localValue22, localValue32)
      if localValue12 then
        localValue12 = "carrying"
        text3 = localValue12
        localValue12 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue12 = localValue12()
        localValue22 = 1302435108
        localValue32 = CMG
        localValue32 = localValue32.loadModel
        stateFlag25 = localValue22
        -- Beginner: Request/load a GTA model before spawning or applying it.
        localValue32(stateFlag25)
        localValue32 = GetEntityCoords
        stateFlag25 = localValue12
        -- Beginner: result below is entityCoords.
        localValue32 = localValue32(stateFlag25)
        stateFlag25 = CMG
        stateFlag25 = stateFlag25.requestEntitySpawn
        stateFlag27 = "prison_woodworking_box"
        stateFlag30 = localValue32
        stateFlag25(stateFlag27, stateFlag30)
        stateFlag25 = CreateObject
        stateFlag27 = localValue22
        stateFlag30 = localValue32.x
        stateFlag32 = localValue32.y
        stateFlag34 = localValue32.z
        stateFlag35 = true
        stateFlag36 = true
        stateFlag3 = false
        -- Beginner: result below is objectEntity.
        stateFlag25 = stateFlag25(stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3)
        workingValue = stateFlag25
        stateFlag25 = SetEntityAsMissionEntity
        stateFlag27 = workingValue
        stateFlag30 = true
        stateFlag32 = true
        stateFlag25(stateFlag27, stateFlag30, stateFlag32)
        stateFlag25 = GetPedBoneIndex
        stateFlag27 = localValue12
        stateFlag30 = 28422
        stateFlag25 = stateFlag25(stateFlag27, stateFlag30)
        stateFlag27 = AttachEntityToEntity
        stateFlag30 = workingValue
        stateFlag32 = localValue12
        stateFlag34 = stateFlag25
        stateFlag35 = 0.0
        stateFlag36 = 0.02
        stateFlag3 = -0.02
        stateFlag6 = 0.0
        stateFlag8 = 0.0
        stateFlag10 = 0.0
        stateFlag12 = true
        stateFlag14 = true
        stateFlag15 = false
        stateFlag16 = true
        number5 = 1
        stateFlag18 = true
        -- Beginner: Attach one entity to another entity.
        stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, stateFlag16, number5, stateFlag18)
        stateFlag27 = SetModelAsNoLongerNeeded
        stateFlag30 = localValue22
        stateFlag27(stateFlag30)
        stateFlag27 = CMG
        stateFlag27 = stateFlag27.loadAnimDict
        stateFlag30 = "anim@heists@box_carry@"
        -- Beginner: Load a GTA animation dictionary before using it.
        stateFlag27(stateFlag30)
        stateFlag27 = TaskPlayAnim
        stateFlag30 = localValue12
        stateFlag32 = "anim@heists@box_carry@"
        stateFlag34 = "idle"
        stateFlag35 = 8.0
        stateFlag36 = 1.0
        stateFlag3 = -1
        stateFlag6 = 49
        stateFlag8 = 0
        stateFlag10 = false
        stateFlag12 = false
        stateFlag14 = false
        -- Beginner: Play an animation on a ped.
        stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14)
        stateFlag27 = Citizen
        stateFlag27 = stateFlag27.CreateThread

        -- === HELPER FUNCTION (decompiler name: stateFlag30; parameters: none) ===
        function stateFlag30()
          local localValue13, localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7
          while true do
            localValue13 = text3
            if "carrying" ~= localValue13 then
              break
            end
            localValue13 = IsEntityPlayingAnim
            localValue23 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            localValue23 = localValue23()
            localValue33 = "anim@heists@box_carry@"
            waitCall = "idle"
            text11 = 3
            localValue13 = localValue13(localValue23, localValue33, waitCall, text11)
            if not localValue13 then
              localValue13 = CMG
              localValue13 = localValue13.loadAnimDict
              localValue23 = "anim@heists@box_carry@"
              -- Beginner: Load a GTA animation dictionary before using it.
              localValue13(localValue23)
              localValue13 = TaskPlayAnim
              localValue23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue23 = localValue23()
              localValue33 = "anim@heists@box_carry@"
              waitCall = "idle"
              text11 = 8.0
              text14 = 1.0
              text16 = -1
              number26 = 49
              number28 = 0
              stateFlag37 = false
              stateFlag4 = false
              stateFlag7 = false
              -- Beginner: Play an animation on a ped.
              localValue13(localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7)
            end
            localValue13 = Wait
            localValue23 = 0
            localValue13(localValue23)
          end
          localValue13 = RemoveAnimDict
          localValue23 = "anim@heists@box_carry@"
          localValue13(localValue23)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        stateFlag27(stateFlag30)
        stateFlag27 = tCMG
        stateFlag27 = stateFlag27.notify
        stateFlag30 = "~g~Take the wood to a workstation"
        -- Beginner: Show a notification to the player.
        stateFlag27(stateFlag30)
      end
    end

    -- === HELPER FUNCTION (decompiler name: number27; parameters: localValue12) ===
    function number27(localValue12)
      local localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3
      localValue22 = globalInPrison
      if localValue22 then
        localValue22 = text2
        if "woodworking" == localValue22 then
          localValue22 = text3
          if "carrying" == localValue22 then
            goto continueAtStep11
          end
        end
      end
      return
      ::continueAtStep11::
      localValue22 = drawNativeNotification
      localValue32 = "Press ~INPUT_CONTEXT~ to start woodworking"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue22(localValue32)
      localValue22 = IsControlJustPressed
      localValue32 = 0
      stateFlag25 = 38
      localValue22 = localValue22(localValue32, stateFlag25)
      if localValue22 then
        localValue22 = stateFlag5
        if not localValue22 then
          localValue22 = true
          stateFlag5 = localValue22
          localValue22 = "working"
          text3 = localValue22
          localValue22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue22 = localValue22()
          localValue32 = workingValue
          if localValue32 then
            localValue32 = DoesEntityExist
            stateFlag25 = workingValue
            localValue32 = localValue32(stateFlag25)
            if localValue32 then
              localValue32 = DeleteEntity
              stateFlag25 = workingValue
              -- Beginner: Delete a GTA entity.
              localValue32(stateFlag25)
            end
          end
          localValue32 = nil
          workingValue = localValue32
          localValue32 = ClearPedTasks
          stateFlag25 = localValue22
          localValue32(stateFlag25)
          localValue32 = FreezeEntityPosition
          stateFlag25 = localValue22
          stateFlag27 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue32(stateFlag25, stateFlag27)
          localValue32 = SetEntityCoords
          stateFlag25 = localValue22
          stateFlag27 = localValue12.coords
          stateFlag27 = stateFlag27.x
          stateFlag30 = localValue12.coords
          stateFlag30 = stateFlag30.y
          stateFlag32 = localValue12.coords
          stateFlag32 = stateFlag32.z
          stateFlag32 = stateFlag32 - 1
          stateFlag34 = false
          stateFlag35 = false
          stateFlag36 = false
          stateFlag3 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          localValue32(stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3)
          localValue32 = tCMG
          localValue32 = localValue32.setCanAnim
          stateFlag25 = false
          localValue32(stateFlag25)
          localValue32 = Citizen
          localValue32 = localValue32.CreateThread

          -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
          function stateFlag25()
            local localValue13, localValue23, localValue33, waitCall, text11
            while true do
              localValue13 = text3
              if "working" ~= localValue13 then
                break
              end
              localValue13 = IsPedUsingScenario
              localValue23 = localValue22
              localValue33 = stateFlag29.workScenario
              localValue13 = localValue13(localValue23, localValue33)
              if not localValue13 then
                localValue13 = TaskStartScenarioInPlace
                localValue23 = localValue22
                localValue33 = stateFlag29.workScenario
                waitCall = 0
                text11 = true
                localValue13(localValue23, localValue33, waitCall, text11)
              end
              localValue13 = Wait
              localValue23 = 200
              localValue13(localValue23)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue32(stateFlag25)
          localValue32 = Citizen
          localValue32 = localValue32.CreateThread

          -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
          function stateFlag25()
            local localValue13, localValue23, localValue33, waitCall, text11
            localValue13 = CMG
            localValue13 = localValue13.startCircularProgressBar
            localValue23 = ""
            localValue33 = stateFlag29.workDuration
            waitCall = nil

            -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
            function text11()
              local stateFlag, workingValue4
            end
            localValue13(localValue23, localValue33, waitCall, text11)
            localValue13 = text3
            if "working" ~= localValue13 then
              return
            end
            localValue13 = FreezeEntityPosition
            localValue23 = localValue22
            localValue33 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue13(localValue23, localValue33)
            localValue13 = ClearPedTasks
            localValue23 = localValue22
            localValue13(localValue23)
            localValue13 = tCMG
            localValue13 = localValue13.setCanAnim
            localValue23 = true
            localValue13(localValue23)
            localValue13 = "idle"
            text3 = localValue13
            localValue13 = ""
            text2 = localValue13
            localValue13 = false
            stateFlag5 = localValue13
            localValue13 = TriggerServerEvent
            localValue23 = "e942632666"
            localValue33 = "woodworking"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e942632666".
            localValue13(localValue23, localValue33)
            localValue13 = tCMG
            localValue13 = localValue13.notify
            localValue23 = "~g~Woodworking complete!"
            -- Beginner: Show a notification to the player.
            localValue13(localValue23)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue32(stateFlag25)
        end
      end
    end
    number29 = CMG
    number29 = number29.createArea
    cmgOperation2 = "prisonJob_ww_start"
    text = stateFlag29.startCoords
    number = 2.0
    number2 = 5.0

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
    function text5()
      local localValue12, localValue22
    end
    number3 = stateFlag31
    number4 = {}
    -- Beginner: Create an interaction area around a world position.
    number29(cmgOperation2, text, number, number2, stringHelper, text5, number3, number4)
    number29 = tCMG
    number29 = number29.addPropMarker
    cmgOperation2 = "bzzz_marker_point_blue_anim"
    text = stateFlag29.startCoords
    text = text.x
    number = stateFlag29.startCoords
    number = number.y
    number2 = stateFlag29.startCoords
    number2 = number2.z
    stringHelper = 20.0
    -- Beginner: Create a prop-style world marker.
    number29(cmgOperation2, text, number, number2, stringHelper)
    number29 = CMG
    number29 = number29.add3DTextForCoord
    cmgOperation2 = "Woodworking"
    text = stateFlag29.startCoords
    text = text.x
    number = stateFlag29.startCoords
    number = number.y
    number2 = stateFlag29.startCoords
    number2 = number2.z
    stringHelper = 2.2
    number29(cmgOperation2, text, number, number2, stringHelper)
    number29 = CMG
    number29 = number29.createArea
    cmgOperation2 = "prisonJob_ww_storage"
    text = stateFlag29.storageCoords
    number = 2.0
    number2 = 5.0

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
    function text5()
      local localValue12, localValue22
    end
    number3 = number25
    number4 = {}
    -- Beginner: Create an interaction area around a world position.
    number29(cmgOperation2, text, number, number2, stringHelper, text5, number3, number4)
    number29 = tCMG
    number29 = number29.addPropMarker
    cmgOperation2 = "bzzz_marker_point_blue_anim"
    text = stateFlag29.storageCoords
    text = text.x
    number = stateFlag29.storageCoords
    number = number.y
    number2 = stateFlag29.storageCoords
    number2 = number2.z
    stringHelper = 20.0
    -- Beginner: Create a prop-style world marker.
    number29(cmgOperation2, text, number, number2, stringHelper)
    number29 = CMG
    number29 = number29.add3DTextForCoord
    cmgOperation2 = "Wood Storage"
    text = stateFlag29.storageCoords
    text = text.x
    number = stateFlag29.storageCoords
    number = number.y
    number2 = stateFlag29.storageCoords
    number2 = number2.z
    stringHelper = 2.2
    number29(cmgOperation2, text, number, number2, stringHelper)
    number29 = ipairs
    cmgOperation2 = stateFlag29.stations
    number29, cmgOperation2, text, number = number29(cmgOperation2)
    for number2, stringHelper in number29, cmgOperation2, text, number do
      text5 = CMG
      text5 = text5.createArea
      number3 = "prisonJob_ww_station_"
      number4 = number2
      number3 = number3 .. number4
      number4 = stringHelper
      dataCollection = 2.0
      number6 = 5.0

      -- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
      function number8()
        local localValue12, localValue22
      end

      -- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
      function dataCollection2()
        local localValue12, localValue22
      end
      number11 = number27
      cmgOperation3 = {}
      cmgOperation3.coords = stringHelper
      -- Beginner: Create an interaction area around a world position.
      text5(number3, number4, dataCollection, number6, number8, dataCollection2, number11, cmgOperation3)
      text5 = tCMG
      text5 = text5.addPropMarker
      number3 = "bzzz_marker_point_blue_anim"
      number4 = stringHelper.x
      dataCollection = stringHelper.y
      number6 = stringHelper.z
      number8 = 20.0
      -- Beginner: Create a prop-style world marker.
      text5(number3, number4, dataCollection, number6, number8)
    end
    number29 = cmgOperation.prisonJobs
    number29 = number29.metalworking

    -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
    function cmgOperation2()
      local localValue12, localValue22, localValue32
      localValue12 = globalInPrison
      if localValue12 then
        localValue12 = text2
        if "" == localValue12 then
          goto continueAtStep8
        end
      end
      return
      ::continueAtStep8::
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to start Metalworking"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
      localValue12 = IsControlJustPressed
      localValue22 = 0
      localValue32 = 38
      localValue12 = localValue12(localValue22, localValue32)
      if localValue12 then
        localValue12 = "metalworking"
        text2 = localValue12
        localValue12 = "fetching"
        text4 = localValue12
        localValue12 = TriggerServerEvent
        localValue22 = "8c4d6586a3"
        localValue32 = "metalworking"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8c4d6586a3".
        localValue12(localValue22, localValue32)
        localValue12 = tCMG
        localValue12 = localValue12.notify
        localValue22 = "~g~Go to the storage to fetch materials"
        -- Beginner: Show a notification to the player.
        localValue12(localValue22)
      end
    end

    -- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
    function text()
      local localValue12, localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, stateFlag16, number5, stateFlag18
      localValue12 = globalInPrison
      if localValue12 then
        localValue12 = text2
        if "metalworking" == localValue12 then
          localValue12 = text4
          if "fetching" == localValue12 then
            goto continueAtStep11
          end
        end
      end
      return
      ::continueAtStep11::
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to pick up materials"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
      localValue12 = IsControlJustPressed
      localValue22 = 0
      localValue32 = 38
      localValue12 = localValue12(localValue22, localValue32)
      if localValue12 then
        localValue12 = "carrying"
        text4 = localValue12
        localValue12 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue12 = localValue12()
        localValue22 = 1302435108
        localValue32 = CMG
        localValue32 = localValue32.loadModel
        stateFlag25 = localValue22
        -- Beginner: Request/load a GTA model before spawning or applying it.
        localValue32(stateFlag25)
        localValue32 = GetEntityCoords
        stateFlag25 = localValue12
        -- Beginner: result below is entityCoords.
        localValue32 = localValue32(stateFlag25)
        stateFlag25 = CMG
        stateFlag25 = stateFlag25.requestEntitySpawn
        stateFlag27 = "prison_metalworking_box"
        stateFlag30 = localValue32
        stateFlag25(stateFlag27, stateFlag30)
        stateFlag25 = CreateObject
        stateFlag27 = localValue22
        stateFlag30 = localValue32.x
        stateFlag32 = localValue32.y
        stateFlag34 = localValue32.z
        stateFlag35 = true
        stateFlag36 = true
        stateFlag3 = false
        -- Beginner: result below is objectEntity.
        stateFlag25 = stateFlag25(stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3)
        workingValue2 = stateFlag25
        stateFlag25 = SetEntityAsMissionEntity
        stateFlag27 = workingValue2
        stateFlag30 = true
        stateFlag32 = true
        stateFlag25(stateFlag27, stateFlag30, stateFlag32)
        stateFlag25 = GetPedBoneIndex
        stateFlag27 = localValue12
        stateFlag30 = 28422
        stateFlag25 = stateFlag25(stateFlag27, stateFlag30)
        stateFlag27 = AttachEntityToEntity
        stateFlag30 = workingValue2
        stateFlag32 = localValue12
        stateFlag34 = stateFlag25
        stateFlag35 = 0.0
        stateFlag36 = 0.02
        stateFlag3 = -0.02
        stateFlag6 = 0.0
        stateFlag8 = 0.0
        stateFlag10 = 0.0
        stateFlag12 = true
        stateFlag14 = true
        stateFlag15 = false
        stateFlag16 = true
        number5 = 1
        stateFlag18 = true
        -- Beginner: Attach one entity to another entity.
        stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, stateFlag16, number5, stateFlag18)
        stateFlag27 = SetModelAsNoLongerNeeded
        stateFlag30 = localValue22
        stateFlag27(stateFlag30)
        stateFlag27 = CMG
        stateFlag27 = stateFlag27.loadAnimDict
        stateFlag30 = "anim@heists@box_carry@"
        -- Beginner: Load a GTA animation dictionary before using it.
        stateFlag27(stateFlag30)
        stateFlag27 = TaskPlayAnim
        stateFlag30 = localValue12
        stateFlag32 = "anim@heists@box_carry@"
        stateFlag34 = "idle"
        stateFlag35 = 8.0
        stateFlag36 = 1.0
        stateFlag3 = -1
        stateFlag6 = 49
        stateFlag8 = 0
        stateFlag10 = false
        stateFlag12 = false
        stateFlag14 = false
        -- Beginner: Play an animation on a ped.
        stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14)
        stateFlag27 = Citizen
        stateFlag27 = stateFlag27.CreateThread

        -- === HELPER FUNCTION (decompiler name: stateFlag30; parameters: none) ===
        function stateFlag30()
          local localValue13, localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7
          while true do
            localValue13 = text4
            if "carrying" ~= localValue13 then
              break
            end
            localValue13 = IsEntityPlayingAnim
            localValue23 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            localValue23 = localValue23()
            localValue33 = "anim@heists@box_carry@"
            waitCall = "idle"
            text11 = 3
            localValue13 = localValue13(localValue23, localValue33, waitCall, text11)
            if not localValue13 then
              localValue13 = CMG
              localValue13 = localValue13.loadAnimDict
              localValue23 = "anim@heists@box_carry@"
              -- Beginner: Load a GTA animation dictionary before using it.
              localValue13(localValue23)
              localValue13 = TaskPlayAnim
              localValue23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue23 = localValue23()
              localValue33 = "anim@heists@box_carry@"
              waitCall = "idle"
              text11 = 8.0
              text14 = 1.0
              text16 = -1
              number26 = 49
              number28 = 0
              stateFlag37 = false
              stateFlag4 = false
              stateFlag7 = false
              -- Beginner: Play an animation on a ped.
              localValue13(localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7)
            end
            localValue13 = Wait
            localValue23 = 0
            localValue13(localValue23)
          end
          localValue13 = RemoveAnimDict
          localValue23 = "anim@heists@box_carry@"
          localValue13(localValue23)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        stateFlag27(stateFlag30)
        stateFlag27 = tCMG
        stateFlag27 = stateFlag27.notify
        stateFlag30 = "~g~Take the materials to a workstation"
        -- Beginner: Show a notification to the player.
        stateFlag27(stateFlag30)
      end
    end

    -- === HELPER FUNCTION (decompiler name: number; parameters: localValue12) ===
    function number(localValue12)
      local localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3
      localValue22 = globalInPrison
      if localValue22 then
        localValue22 = text2
        if "metalworking" == localValue22 then
          localValue22 = text4
          if "carrying" == localValue22 then
            goto continueAtStep11
          end
        end
      end
      return
      ::continueAtStep11::
      localValue22 = drawNativeNotification
      localValue32 = "Press ~INPUT_CONTEXT~ to start metalworking"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue22(localValue32)
      localValue22 = IsControlJustPressed
      localValue32 = 0
      stateFlag25 = 38
      localValue22 = localValue22(localValue32, stateFlag25)
      if localValue22 then
        localValue22 = stateFlag5
        if not localValue22 then
          localValue22 = true
          stateFlag5 = localValue22
          localValue22 = "working"
          text4 = localValue22
          localValue22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue22 = localValue22()
          localValue32 = workingValue2
          if localValue32 then
            localValue32 = DoesEntityExist
            stateFlag25 = workingValue2
            localValue32 = localValue32(stateFlag25)
            if localValue32 then
              localValue32 = DeleteEntity
              stateFlag25 = workingValue2
              -- Beginner: Delete a GTA entity.
              localValue32(stateFlag25)
            end
          end
          localValue32 = nil
          workingValue2 = localValue32
          localValue32 = ClearPedTasks
          stateFlag25 = localValue22
          localValue32(stateFlag25)
          localValue32 = FreezeEntityPosition
          stateFlag25 = localValue22
          stateFlag27 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue32(stateFlag25, stateFlag27)
          localValue32 = SetEntityCoords
          stateFlag25 = localValue22
          stateFlag27 = localValue12.coords
          stateFlag27 = stateFlag27.x
          stateFlag30 = localValue12.coords
          stateFlag30 = stateFlag30.y
          stateFlag32 = localValue12.coords
          stateFlag32 = stateFlag32.z
          stateFlag32 = stateFlag32 - 1
          stateFlag34 = false
          stateFlag35 = false
          stateFlag36 = false
          stateFlag3 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          localValue32(stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3)
          localValue32 = tCMG
          localValue32 = localValue32.setCanAnim
          stateFlag25 = false
          localValue32(stateFlag25)
          localValue32 = Citizen
          localValue32 = localValue32.CreateThread

          -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
          function stateFlag25()
            local localValue13, localValue23, localValue33, waitCall, text11
            while true do
              localValue13 = text4
              if "working" ~= localValue13 then
                break
              end
              localValue13 = IsPedUsingScenario
              localValue23 = localValue22
              localValue33 = number29.workScenario
              localValue13 = localValue13(localValue23, localValue33)
              if not localValue13 then
                localValue13 = TaskStartScenarioInPlace
                localValue23 = localValue22
                localValue33 = number29.workScenario
                waitCall = 0
                text11 = true
                localValue13(localValue23, localValue33, waitCall, text11)
              end
              localValue13 = Wait
              localValue23 = 200
              localValue13(localValue23)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue32(stateFlag25)
          localValue32 = Citizen
          localValue32 = localValue32.CreateThread

          -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
          function stateFlag25()
            local localValue13, localValue23, localValue33, waitCall, text11
            localValue13 = CMG
            localValue13 = localValue13.startCircularProgressBar
            localValue23 = ""
            localValue33 = number29.workDuration
            waitCall = nil

            -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
            function text11()
              local stateFlag, workingValue4
            end
            localValue13(localValue23, localValue33, waitCall, text11)
            localValue13 = text4
            if "working" ~= localValue13 then
              return
            end
            localValue13 = FreezeEntityPosition
            localValue23 = localValue22
            localValue33 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue13(localValue23, localValue33)
            localValue13 = ClearPedTasks
            localValue23 = localValue22
            localValue13(localValue23)
            localValue13 = tCMG
            localValue13 = localValue13.setCanAnim
            localValue23 = true
            localValue13(localValue23)
            localValue13 = "idle"
            text4 = localValue13
            localValue13 = ""
            text2 = localValue13
            localValue13 = false
            stateFlag5 = localValue13
            localValue13 = TriggerServerEvent
            localValue23 = "e942632666"
            localValue33 = "metalworking"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e942632666".
            localValue13(localValue23, localValue33)
            localValue13 = tCMG
            localValue13 = localValue13.notify
            localValue23 = "~g~Metalworking complete!"
            -- Beginner: Show a notification to the player.
            localValue13(localValue23)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue32(stateFlag25)
        end
      end
    end
    number2 = CMG
    number2 = number2.createArea
    stringHelper = "prisonJob_mw_start"
    text5 = number29.startCoords
    number3 = 2.0
    number4 = 5.0

    -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
    function dataCollection()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
    function number6()
      local localValue12, localValue22
    end
    number8 = cmgOperation2
    dataCollection2 = {}
    -- Beginner: Create an interaction area around a world position.
    number2(stringHelper, text5, number3, number4, dataCollection, number6, number8, dataCollection2)
    number2 = tCMG
    number2 = number2.addPropMarker
    stringHelper = "bzzz_marker_point_blue_anim"
    text5 = number29.startCoords
    text5 = text5.x
    number3 = number29.startCoords
    number3 = number3.y
    number4 = number29.startCoords
    number4 = number4.z
    dataCollection = 20.0
    -- Beginner: Create a prop-style world marker.
    number2(stringHelper, text5, number3, number4, dataCollection)
    number2 = CMG
    number2 = number2.add3DTextForCoord
    stringHelper = "Metalworking"
    text5 = number29.startCoords
    text5 = text5.x
    number3 = number29.startCoords
    number3 = number3.y
    number4 = number29.startCoords
    number4 = number4.z
    dataCollection = 2.2
    number2(stringHelper, text5, number3, number4, dataCollection)
    number2 = CMG
    number2 = number2.createArea
    stringHelper = "prisonJob_mw_storage"
    text5 = number29.storageCoords
    number3 = 2.0
    number4 = 5.0

    -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
    function dataCollection()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
    function number6()
      local localValue12, localValue22
    end
    number8 = text
    dataCollection2 = {}
    -- Beginner: Create an interaction area around a world position.
    number2(stringHelper, text5, number3, number4, dataCollection, number6, number8, dataCollection2)
    number2 = tCMG
    number2 = number2.addPropMarker
    stringHelper = "bzzz_marker_point_blue_anim"
    text5 = number29.storageCoords
    text5 = text5.x
    number3 = number29.storageCoords
    number3 = number3.y
    number4 = number29.storageCoords
    number4 = number4.z
    dataCollection = 20.0
    -- Beginner: Create a prop-style world marker.
    number2(stringHelper, text5, number3, number4, dataCollection)
    number2 = CMG
    number2 = number2.add3DTextForCoord
    stringHelper = "Metal Storage"
    text5 = number29.storageCoords
    text5 = text5.x
    number3 = number29.storageCoords
    number3 = number3.y
    number4 = number29.storageCoords
    number4 = number4.z
    dataCollection = 2.2
    number2(stringHelper, text5, number3, number4, dataCollection)
    number2 = ipairs
    stringHelper = number29.stations
    number2, stringHelper, text5, number3 = number2(stringHelper)
    for number4, dataCollection in number2, stringHelper, text5, number3 do
      number6 = CMG
      number6 = number6.createArea
      number8 = "prisonJob_mw_station_"
      dataCollection2 = number4
      number8 = number8 .. dataCollection2
      dataCollection2 = dataCollection
      number11 = 2.0
      cmgOperation3 = 5.0

      -- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
      function number12()
        local localValue12, localValue22
      end

      -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
      function dataCollection3()
        local localValue12, localValue22
      end
      number14 = number
      dataCollection4 = {}
      dataCollection4.coords = dataCollection
      -- Beginner: Create an interaction area around a world position.
      number6(number8, dataCollection2, number11, cmgOperation3, number12, dataCollection3, number14, dataCollection4)
      number6 = tCMG
      number6 = number6.addPropMarker
      number8 = "bzzz_marker_point_blue_anim"
      dataCollection2 = dataCollection.x
      number11 = dataCollection.y
      cmgOperation3 = dataCollection.z
      number12 = 20.0
      -- Beginner: Create a prop-style world marker.
      number6(number8, dataCollection2, number11, cmgOperation3, number12)
    end
    number2 = cmgOperation.prisonJobs
    number2 = number2.laundry

    -- === HELPER FUNCTION: stringHelper() ===
    function stringHelper()
      local localValue12, localValue22, localValue32
      localValue12 = globalInPrison
      if localValue12 then
        localValue12 = text2
        if "" == localValue12 then
          goto continueAtStep8
        end
      end
      return
      ::continueAtStep8::
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to start Laundry"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
      localValue12 = IsControlJustPressed
      localValue22 = 0
      localValue32 = 38
      localValue12 = localValue12(localValue22, localValue32)
      if localValue12 then
        localValue12 = "laundry"
        text2 = localValue12
        localValue12 = "fetching"
        text6 = localValue12
        localValue12 = TriggerServerEvent
        localValue22 = "8c4d6586a3"
        localValue32 = "laundry"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8c4d6586a3".
        localValue12(localValue22, localValue32)
        localValue12 = tCMG
        localValue12 = localValue12.notify
        localValue22 = "~g~Go to the storage to fetch laundry"
        -- Beginner: Show a notification to the player.
        localValue12(localValue22)
      end
    end

    -- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
    function text5()
      local localValue12, localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, stateFlag16, number5, stateFlag18
      localValue12 = globalInPrison
      if localValue12 then
        localValue12 = text2
        if "laundry" == localValue12 then
          localValue12 = text6
          if "fetching" == localValue12 then
            goto continueAtStep11
          end
        end
      end
      return
      ::continueAtStep11::
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to pick up laundry"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
      localValue12 = IsControlJustPressed
      localValue22 = 0
      localValue32 = 38
      localValue12 = localValue12(localValue22, localValue32)
      if localValue12 then
        localValue12 = "carrying"
        text6 = localValue12
        localValue12 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue12 = localValue12()
        localValue22 = 1302435108
        localValue32 = CMG
        localValue32 = localValue32.loadModel
        stateFlag25 = localValue22
        -- Beginner: Request/load a GTA model before spawning or applying it.
        localValue32(stateFlag25)
        localValue32 = GetEntityCoords
        stateFlag25 = localValue12
        -- Beginner: result below is entityCoords.
        localValue32 = localValue32(stateFlag25)
        stateFlag25 = CMG
        stateFlag25 = stateFlag25.requestEntitySpawn
        stateFlag27 = "prison_laundry_box"
        stateFlag30 = localValue32
        stateFlag25(stateFlag27, stateFlag30)
        stateFlag25 = CreateObject
        stateFlag27 = localValue22
        stateFlag30 = localValue32.x
        stateFlag32 = localValue32.y
        stateFlag34 = localValue32.z
        stateFlag35 = true
        stateFlag36 = true
        stateFlag3 = false
        -- Beginner: result below is objectEntity.
        stateFlag25 = stateFlag25(stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3)
        workingValue3 = stateFlag25
        stateFlag25 = SetEntityAsMissionEntity
        stateFlag27 = workingValue3
        stateFlag30 = true
        stateFlag32 = true
        stateFlag25(stateFlag27, stateFlag30, stateFlag32)
        stateFlag25 = GetPedBoneIndex
        stateFlag27 = localValue12
        stateFlag30 = 28422
        stateFlag25 = stateFlag25(stateFlag27, stateFlag30)
        stateFlag27 = AttachEntityToEntity
        stateFlag30 = workingValue3
        stateFlag32 = localValue12
        stateFlag34 = stateFlag25
        stateFlag35 = 0.0
        stateFlag36 = 0.02
        stateFlag3 = -0.02
        stateFlag6 = 0.0
        stateFlag8 = 0.0
        stateFlag10 = 0.0
        stateFlag12 = true
        stateFlag14 = true
        stateFlag15 = false
        stateFlag16 = true
        number5 = 1
        stateFlag18 = true
        -- Beginner: Attach one entity to another entity.
        stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, stateFlag16, number5, stateFlag18)
        stateFlag27 = SetModelAsNoLongerNeeded
        stateFlag30 = localValue22
        stateFlag27(stateFlag30)
        stateFlag27 = CMG
        stateFlag27 = stateFlag27.loadAnimDict
        stateFlag30 = "anim@heists@box_carry@"
        -- Beginner: Load a GTA animation dictionary before using it.
        stateFlag27(stateFlag30)
        stateFlag27 = TaskPlayAnim
        stateFlag30 = localValue12
        stateFlag32 = "anim@heists@box_carry@"
        stateFlag34 = "idle"
        stateFlag35 = 8.0
        stateFlag36 = 1.0
        stateFlag3 = -1
        stateFlag6 = 49
        stateFlag8 = 0
        stateFlag10 = false
        stateFlag12 = false
        stateFlag14 = false
        -- Beginner: Play an animation on a ped.
        stateFlag27(stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14)
        stateFlag27 = Citizen
        stateFlag27 = stateFlag27.CreateThread

        -- === HELPER FUNCTION (decompiler name: stateFlag30; parameters: none) ===
        function stateFlag30()
          local localValue13, localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7
          while true do
            localValue13 = text6
            if "carrying" ~= localValue13 then
              break
            end
            localValue13 = IsEntityPlayingAnim
            localValue23 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            localValue23 = localValue23()
            localValue33 = "anim@heists@box_carry@"
            waitCall = "idle"
            text11 = 3
            localValue13 = localValue13(localValue23, localValue33, waitCall, text11)
            if not localValue13 then
              localValue13 = CMG
              localValue13 = localValue13.loadAnimDict
              localValue23 = "anim@heists@box_carry@"
              -- Beginner: Load a GTA animation dictionary before using it.
              localValue13(localValue23)
              localValue13 = TaskPlayAnim
              localValue23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue23 = localValue23()
              localValue33 = "anim@heists@box_carry@"
              waitCall = "idle"
              text11 = 8.0
              text14 = 1.0
              text16 = -1
              number26 = 49
              number28 = 0
              stateFlag37 = false
              stateFlag4 = false
              stateFlag7 = false
              -- Beginner: Play an animation on a ped.
              localValue13(localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7)
            end
            localValue13 = Wait
            localValue23 = 0
            localValue13(localValue23)
          end
          localValue13 = RemoveAnimDict
          localValue23 = "anim@heists@box_carry@"
          localValue13(localValue23)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        stateFlag27(stateFlag30)
        stateFlag27 = tCMG
        stateFlag27 = stateFlag27.notify
        stateFlag30 = "~g~Take the laundry to a workstation"
        -- Beginner: Show a notification to the player.
        stateFlag27(stateFlag30)
      end
    end

    -- === HELPER FUNCTION (decompiler name: number3; parameters: localValue12) ===
    function number3(localValue12)
      local localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3
      localValue22 = globalInPrison
      if localValue22 then
        localValue22 = text2
        if "laundry" == localValue22 then
          localValue22 = text6
          if "carrying" == localValue22 then
            goto continueAtStep11
          end
        end
      end
      return
      ::continueAtStep11::
      localValue22 = drawNativeNotification
      localValue32 = "Press ~INPUT_CONTEXT~ to start laundry"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue22(localValue32)
      localValue22 = IsControlJustPressed
      localValue32 = 0
      stateFlag25 = 38
      localValue22 = localValue22(localValue32, stateFlag25)
      if localValue22 then
        localValue22 = stateFlag5
        if not localValue22 then
          localValue22 = true
          stateFlag5 = localValue22
          localValue22 = "working"
          text6 = localValue22
          localValue22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue22 = localValue22()
          localValue32 = workingValue3
          if localValue32 then
            localValue32 = DoesEntityExist
            stateFlag25 = workingValue3
            localValue32 = localValue32(stateFlag25)
            if localValue32 then
              localValue32 = DeleteEntity
              stateFlag25 = workingValue3
              -- Beginner: Delete a GTA entity.
              localValue32(stateFlag25)
            end
          end
          localValue32 = nil
          workingValue3 = localValue32
          localValue32 = ClearPedTasks
          stateFlag25 = localValue22
          localValue32(stateFlag25)
          localValue32 = FreezeEntityPosition
          stateFlag25 = localValue22
          stateFlag27 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue32(stateFlag25, stateFlag27)
          localValue32 = SetEntityCoords
          stateFlag25 = localValue22
          stateFlag27 = localValue12.coords
          stateFlag27 = stateFlag27.x
          stateFlag30 = localValue12.coords
          stateFlag30 = stateFlag30.y
          stateFlag32 = localValue12.coords
          stateFlag32 = stateFlag32.z
          stateFlag32 = stateFlag32 - 1
          stateFlag34 = false
          stateFlag35 = false
          stateFlag36 = false
          stateFlag3 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          localValue32(stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3)
          localValue32 = tCMG
          localValue32 = localValue32.setCanAnim
          stateFlag25 = false
          localValue32(stateFlag25)
          localValue32 = Citizen
          localValue32 = localValue32.CreateThread

          -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
          function stateFlag25()
            local localValue13, localValue23, localValue33, waitCall, text11
            while true do
              localValue13 = text6
              if "working" ~= localValue13 then
                break
              end
              localValue13 = IsPedUsingScenario
              localValue23 = localValue22
              localValue33 = number2.workScenario
              localValue13 = localValue13(localValue23, localValue33)
              if not localValue13 then
                localValue13 = TaskStartScenarioInPlace
                localValue23 = localValue22
                localValue33 = number2.workScenario
                waitCall = 0
                text11 = true
                localValue13(localValue23, localValue33, waitCall, text11)
              end
              localValue13 = Wait
              localValue23 = 200
              localValue13(localValue23)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue32(stateFlag25)
          localValue32 = Citizen
          localValue32 = localValue32.CreateThread

          -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
          function stateFlag25()
            local localValue13, localValue23, localValue33, waitCall, text11
            localValue13 = CMG
            localValue13 = localValue13.startCircularProgressBar
            localValue23 = ""
            localValue33 = number2.workDuration
            waitCall = nil

            -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
            function text11()
              local stateFlag, workingValue4
            end
            localValue13(localValue23, localValue33, waitCall, text11)
            localValue13 = text6
            if "working" ~= localValue13 then
              return
            end
            localValue13 = FreezeEntityPosition
            localValue23 = localValue22
            localValue33 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue13(localValue23, localValue33)
            localValue13 = ClearPedTasks
            localValue23 = localValue22
            localValue13(localValue23)
            localValue13 = tCMG
            localValue13 = localValue13.setCanAnim
            localValue23 = true
            localValue13(localValue23)
            localValue13 = "idle"
            text6 = localValue13
            localValue13 = ""
            text2 = localValue13
            localValue13 = false
            stateFlag5 = localValue13
            localValue13 = TriggerServerEvent
            localValue23 = "e942632666"
            localValue33 = "laundry"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e942632666".
            localValue13(localValue23, localValue33)
            localValue13 = tCMG
            localValue13 = localValue13.notify
            localValue23 = "~g~Laundry complete!"
            -- Beginner: Show a notification to the player.
            localValue13(localValue23)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue32(stateFlag25)
        end
      end
    end
    number4 = CMG
    number4 = number4.createArea
    dataCollection = "prisonJob_lw_start"
    number6 = number2.startCoords
    number8 = 2.0
    dataCollection2 = 5.0

    -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
    function number11()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local localValue12, localValue22
    end
    number12 = stringHelper
    dataCollection3 = {}
    -- Beginner: Create an interaction area around a world position.
    number4(dataCollection, number6, number8, dataCollection2, number11, cmgOperation3, number12, dataCollection3)
    number4 = tCMG
    number4 = number4.addPropMarker
    dataCollection = "bzzz_marker_point_blue_anim"
    number6 = number2.startCoords
    number6 = number6.x
    number8 = number2.startCoords
    number8 = number8.y
    dataCollection2 = number2.startCoords
    dataCollection2 = dataCollection2.z
    number11 = 20.0
    -- Beginner: Create a prop-style world marker.
    number4(dataCollection, number6, number8, dataCollection2, number11)
    number4 = CMG
    number4 = number4.add3DTextForCoord
    dataCollection = "Laundry"
    number6 = number2.startCoords
    number6 = number6.x
    number8 = number2.startCoords
    number8 = number8.y
    dataCollection2 = number2.startCoords
    dataCollection2 = dataCollection2.z
    number11 = 2.2
    number4(dataCollection, number6, number8, dataCollection2, number11)
    number4 = CMG
    number4 = number4.createArea
    dataCollection = "prisonJob_lw_storage"
    number6 = number2.storageCoords
    number8 = 2.0
    dataCollection2 = 5.0

    -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
    function number11()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local localValue12, localValue22
    end
    number12 = text5
    dataCollection3 = {}
    -- Beginner: Create an interaction area around a world position.
    number4(dataCollection, number6, number8, dataCollection2, number11, cmgOperation3, number12, dataCollection3)
    number4 = tCMG
    number4 = number4.addPropMarker
    dataCollection = "bzzz_marker_point_blue_anim"
    number6 = number2.storageCoords
    number6 = number6.x
    number8 = number2.storageCoords
    number8 = number8.y
    dataCollection2 = number2.storageCoords
    dataCollection2 = dataCollection2.z
    number11 = 20.0
    -- Beginner: Create a prop-style world marker.
    number4(dataCollection, number6, number8, dataCollection2, number11)
    number4 = CMG
    number4 = number4.add3DTextForCoord
    dataCollection = "Laundry Storage"
    number6 = number2.storageCoords
    number6 = number6.x
    number8 = number2.storageCoords
    number8 = number8.y
    dataCollection2 = number2.storageCoords
    dataCollection2 = dataCollection2.z
    number11 = 2.2
    number4(dataCollection, number6, number8, dataCollection2, number11)
    number4 = ipairs
    dataCollection = number2.stations
    number4, dataCollection, number6, number8 = number4(dataCollection)
    for dataCollection2, number11 in number4, dataCollection, number6, number8 do
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.createArea
      number12 = "prisonJob_lw_station_"
      dataCollection3 = dataCollection2
      number12 = number12 .. dataCollection3
      dataCollection3 = number11
      number14 = 2.0
      dataCollection4 = 5.0

      -- === HELPER FUNCTION (decompiler name: number16; parameters: none) ===
      function number16()
        local localValue12, localValue22
      end

      -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
      function workingValue6()
        local localValue12, localValue22
      end
      workingValue8 = number3
      dataCollection5 = {}
      dataCollection5.coords = number11
      -- Beginner: Create an interaction area around a world position.
      cmgOperation3(number12, dataCollection3, number14, dataCollection4, number16, workingValue6, workingValue8, dataCollection5)
      cmgOperation3 = tCMG
      cmgOperation3 = cmgOperation3.addPropMarker
      number12 = "bzzz_marker_point_blue_anim"
      dataCollection3 = number11.x
      number14 = number11.y
      dataCollection4 = number11.z
      number16 = 20.0
      -- Beginner: Create a prop-style world marker.
      cmgOperation3(number12, dataCollection3, number14, dataCollection4, number16)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(cmgOperation5, eventHandler2)

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local localValue1, localValue2, localValue3
  localValue1 = drawNativeNotification
  localValue2 = "Press ~INPUT_CONTEXT~ to call the front desk"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
  localValue1 = IsControlJustPressed
  localValue2 = 0
  localValue3 = 38
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = TriggerServerEvent
    localValue2 = "3c1b3ec57f"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c1b3ec57f".
    localValue1(localValue2)
  end
end
cmgOperation5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29
  localValue1 = cmgOperation.frontDeskCoords
  localValue2 = tCMG
  localValue2 = localValue2.addPropMarker
  localValue3 = "bzzz_marker_point_blue_anim"
  number19 = localValue1.x
  number20 = localValue1.y
  stateFlag29 = localValue1.z
  stateFlag31 = 20.0
  -- Beginner: Create a prop-style world marker.
  localValue2(localValue3, number19, number20, stateFlag29, stateFlag31)
  localValue2 = CMG
  localValue2 = localValue2.createArea
  localValue3 = "prisonFrontDesk"
  number19 = localValue1
  number20 = 2.0
  stateFlag29 = 3.0

  -- === HELPER FUNCTION (decompiler name: stateFlag31; parameters: none) ===
  function stateFlag31()
    local localValue12, localValue22
  end

  -- === HELPER FUNCTION (decompiler name: number25; parameters: none) ===
  function number25()
    local localValue12, localValue22
  end
  number27 = eventHandlerRegistration
  number29 = {}
  -- Beginner: Create an interaction area around a world position.
  localValue2(localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation5(eventHandler2)
cmgOperation5 = RMenu
cmgOperation5 = cmgOperation5.Add
eventHandler2 = "cmgCanteenMenu"
text8 = "main"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text9 = ""
text10 = "~b~Canteen"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_prisonui"
cmgOperation6 = "cmg_prisonui"
rageUiOperation, text9, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, cmgOperation6, text12, rageUiOperation5, rageUiOperation6, text13, cmgOperation7, stateFlag28, createVector3, dataCollection7, number21, eventHandler3, cmgOperation8, text15, dataCollection8, number22, number23, cmgOperation9, dataCollection9, stringHelper2, dataCollection10, number24, workingValue18, eventHandlerRegistration2, text17, dataCollection11 = rageUiOperation(text9, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, cmgOperation6)
cmgOperation5(eventHandler2, text8, rageUiOperation, text9, text10, rageUiOperation2, rageUiOperation3, rageUiOperation4, cmgOperation6, text12, rageUiOperation5, rageUiOperation6, text13, cmgOperation7, stateFlag28, createVector3, dataCollection7, number21, eventHandler3, cmgOperation8, text15, dataCollection8, number22, number23, cmgOperation9, dataCollection9, stringHelper2, dataCollection10, number24, workingValue18, eventHandlerRegistration2, text17, dataCollection11)
cmgOperation5 = RageUI
cmgOperation5 = cmgOperation5.CreateWhile
eventHandler2 = 1.0
text8 = RMenu
rageUiOperation = text8
text8 = text8.Get
text9 = "cmgCanteenMenu"
text10 = "main"
-- Beginner: result below is menu.
text8 = text8(rageUiOperation, text9, text10)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  number19 = "cmgCanteenMenu"
  number20 = "main"
  localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27 = localValue2(localValue3, number19, number20)
  -- Beginner: result below is menuVisible.
  localValue1 = localValue1(localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27)
  if localValue1 then
    localValue1 = cmgOperation.canteen
    if localValue1 then
      localValue1 = cmgOperation.canteen
      localValue1 = localValue1.locations
      if localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.getPlayerCoords
        -- Beginner: result below is playerCoords.
        localValue1 = localValue1()
        localValue2 = math
        localValue2 = localValue2.huge
        localValue3 = ipairs
        number19 = cmgOperation.canteen
        number19 = number19.locations
        localValue3, number19, number20, stateFlag29 = localValue3(number19)
        for stateFlag31, number25 in localValue3, number19, number20, stateFlag29 do
          number27 = number25.markerCoords
          number27 = localValue1 - number27
          number27 = #number27
          if localValue2 > number27 then
            localValue2 = number27
          end
        end
        if localValue2 > 3.0 then
          localValue3 = RageUI
          localValue3 = localValue3.Visible
          number19 = RMenu
          number20 = number19
          number19 = number19.Get
          stateFlag29 = "cmgCanteenMenu"
          stateFlag31 = "main"
          -- Beginner: result below is menu.
          number19 = number19(number20, stateFlag29, stateFlag31)
          number20 = false
          localValue3(number19, number20)
        end
      end
    end
  end
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  number19 = "cmgCanteenMenu"
  number20 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, number19, number20)
  localValue3 = true
  number19 = false
  number20 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag29; parameters: none) ===
  function stateFlag29()
    local localValue12, localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, stateFlag16
    localValue12 = CMG
    localValue12 = localValue12.getClientDisplayMoney
    localValue12, localValue22, localValue32, stateFlag25, stateFlag27 = localValue12()
    stateFlag30 = RageUI
    stateFlag30 = stateFlag30.Separator
    stateFlag32 = "~y~Prison Cash: \194\163"
    stateFlag34 = getMoneyStringFormatted
    stateFlag35 = stateFlag27
    stateFlag34 = stateFlag34(stateFlag35)
    stateFlag32 = stateFlag32 .. stateFlag34
    stateFlag30(stateFlag32)
    stateFlag30 = RageUI
    stateFlag30 = stateFlag30.Separator
    stateFlag32 = "--"
    stateFlag30(stateFlag32)
    stateFlag30 = cmgOperation.canteen
    if stateFlag30 then
      stateFlag30 = cmgOperation.canteen
      stateFlag30 = stateFlag30.items
      if stateFlag30 then
        stateFlag30 = ipairs
        stateFlag32 = cmgOperation.canteen
        stateFlag32 = stateFlag32.items
        stateFlag30, stateFlag32, stateFlag34, stateFlag35 = stateFlag30(stateFlag32)
        for stateFlag36, stateFlag3 in stateFlag30, stateFlag32, stateFlag34, stateFlag35 do
          stateFlag6 = RageUI
          stateFlag6 = stateFlag6.ButtonWithStyle
          stateFlag8 = stateFlag3.label
          stateFlag10 = ""
          stateFlag12 = {}
          stateFlag14 = "\194\163"
          stateFlag15 = getMoneyStringFormatted
          stateFlag16 = stateFlag3.price
          stateFlag15 = stateFlag15(stateFlag16)
          stateFlag14 = stateFlag14 .. stateFlag15
          stateFlag12.RightLabel = stateFlag14
          stateFlag14 = true

          -- === HELPER FUNCTION (decompiler name: stateFlag15; parameters: localValue13, localValue23, localValue33) ===
          function stateFlag15(localValue13, localValue23, localValue33)
            local waitCall, text11, text14
            if localValue33 then
              waitCall = TriggerServerEvent
              text11 = "da3fb82270"
              text14 = stateFlag3.itemId
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da3fb82270".
              waitCall(text11, text14)
            end
          end
          stateFlag16 = nil
          -- Beginner: Draw a selectable RageUI menu button.
          stateFlag6(stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, stateFlag16)
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag31; parameters: none) ===
  function stateFlag31()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, number19, number20, stateFlag29, stateFlag31)
end
cmgOperation5(eventHandler2, text8, rageUiOperation, text9)
cmgOperation5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection, number6, number8
  localValue1 = cmgOperation.canteen
  if localValue1 then
    localValue1 = cmgOperation.canteen
    localValue1 = localValue1.locations
    if localValue1 then
      localValue1 = cmgOperation.canteen
      localValue1 = localValue1.locations
      localValue1 = #localValue1
      if 0 ~= localValue1 then
        goto continueAtStep14
      end
    end
  end
  return
  ::continueAtStep14::
  localValue1 = ipairs
  localValue2 = cmgOperation.canteen
  localValue2 = localValue2.locations
  localValue1, localValue2, localValue3, number19 = localValue1(localValue2)
  for number20, stateFlag29 in localValue1, localValue2, localValue3, number19 do
    stateFlag31 = stateFlag29.npcCoords
    number25 = vector3
    number27 = stateFlag31.x
    number29 = stateFlag31.y
    cmgOperation2 = stateFlag31.z
    number25 = number25(number27, number29, cmgOperation2)
    number27 = stateFlag31.w
    number29 = CMG
    number29 = number29.createDynamicPed
    cmgOperation2 = -1313105063
    text = number25
    number = number27
    number2 = true
    stringHelper = nil
    text5 = nil
    number3 = 100.0
    number4 = nil

    -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
    function dataCollection()
      local localValue12, localValue22
    end
    number29(cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection)
    number29 = stateFlag29.markerCoords
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.addPropMarker
    text = "bzzz_marker_point_blue_anim"
    number = number29.x
    number2 = number29.y
    stringHelper = number29.z
    text5 = 20.0
    -- Beginner: Create a prop-style world marker.
    cmgOperation2(text, number, number2, stringHelper, text5)
    cmgOperation2 = "prisonCanteen_"
    text = number20
    cmgOperation2 = cmgOperation2 .. text

    -- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
    function text()
      local localValue12, localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32
      localValue12 = globalInPrison
      if not localValue12 then
        return
      end
      localValue12 = CMG
      localValue12 = localValue12.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue12 = localValue12()
      localValue22 = number29
      localValue22 = localValue12 - localValue22
      localValue22 = #localValue22
      if localValue22 < 2.0 then
        localValue32 = drawNativeNotification
        stateFlag25 = "Press ~INPUT_CONTEXT~ to use Canteen"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue32(stateFlag25)
        localValue32 = IsControlJustPressed
        stateFlag25 = 0
        stateFlag27 = 38
        localValue32 = localValue32(stateFlag25, stateFlag27)
        if localValue32 then
          localValue32 = RageUI
          localValue32 = localValue32.Visible
          stateFlag25 = RMenu
          stateFlag27 = stateFlag25
          stateFlag25 = stateFlag25.Get
          stateFlag30 = "cmgCanteenMenu"
          stateFlag32 = "main"
          -- Beginner: result below is menu.
          stateFlag25 = stateFlag25(stateFlag27, stateFlag30, stateFlag32)
          stateFlag27 = true
          localValue32(stateFlag25, stateFlag27)
        end
      end
    end
    number = CMG
    number = number.createArea
    number2 = cmgOperation2
    stringHelper = number29
    text5 = 2.0
    number3 = 5.0

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
    function dataCollection()
      local localValue12, localValue22
    end
    number6 = text
    number8 = {}
    -- Beginner: Create an interaction area around a world position.
    number(number2, stringHelper, text5, number3, number4, dataCollection, number6, number8)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation5(eventHandler2)

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, number19, number20
  localValue1 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue1 = localValue1()
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = globalInPrison
  if localValue3 then
    localValue3 = GetInteriorFromEntity
    number19 = localValue2
    -- Beginner: result below is interiorId.
    localValue3 = localValue3(number19)
    if 283138 == localValue3 then
      localValue3 = SetPlayerFallDistance
      number19 = localValue1
      number20 = 50.0
      localValue3(number19, number20)
  end
  else
    localValue3 = SetPlayerFallDistance
    number19 = localValue1
    number20 = 5.0
    localValue3(number19, number20)
  end
end
eventHandler2 = RegisterNetEvent
text8 = "ec52c14caa"
-- Beginner: this function handles network event "ec52c14caa".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3
  stateFlag19 = localValue1
  localValue2 = globalInPrison
  if localValue2 ~= localValue1 then
    if localValue1 then
      localValue2 = false
      stateFlag24 = localValue2
    end
    localValue2 = CMG
    localValue2 = localValue2.setCanOpenPhone
    localValue3 = not localValue1
    localValue2(localValue3)
  end
  globalInPrison = localValue1
  localValue2 = cmgOperation5
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2()
  if localValue1 then
    localValue2 = workingValue12
    localValue2()
    localValue2 = CMG
    localValue2 = localValue2.forceNearbyAreasReload
    localValue2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ec52c14caa".
eventHandler2(text8, rageUiOperation)
eventHandler2 = RegisterNetEvent
text8 = "8528e00cf5"
-- Beginner: this function handles network event "8528e00cf5".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, number19
  localValue2 = false
  stateFlag17 = localValue2
  localValue2 = math
  localValue2 = localValue2.floor
  localValue3 = localValue1 / 60
  localValue2 = localValue2(localValue3)
  if localValue2 < 60 then
    number9 = localValue2
    localValue3 = math
    localValue3 = localValue3.ceil
    number19 = number9
    number19 = number19 * 60
    localValue3 = localValue3(number19)
    localValue3 = localValue1 - localValue3
    number10 = localValue3
  else
    localValue3 = math
    localValue3 = localValue3.floor
    number19 = localValue2 / 60
    localValue3 = localValue3(number19)
    number7 = localValue3
    localValue3 = math
    localValue3 = localValue3.ceil
    number19 = number7
    number19 = number19 * 60
    localValue3 = localValue3(number19)
    localValue3 = localValue2 - localValue3
    number9 = localValue3
    localValue3 = localValue2 * 60
    localValue3 = localValue1 - localValue3
    number10 = localValue3
  end
  localValue3 = true
  stateFlag17 = localValue3
end
eventHandler2(text8, rageUiOperation)
eventHandler2 = RegisterNetEvent
text8 = "22152713e0"
-- Beginner: this function handles network event "22152713e0".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2
  localValue1 = 0
  number7 = localValue1
  localValue1 = 0
  number9 = localValue1
  localValue1 = 0
  number10 = localValue1
  localValue1 = false
  stateFlag17 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "22152713e0".
eventHandler2(text8, rageUiOperation)
eventHandler2 = Citizen
eventHandler2 = eventHandler2.CreateThread

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, number19, number20
  localValue1 = SetAmbientZoneState
  localValue2 = "az_countryside_prison_01_announcer_general"
  localValue3 = false
  number19 = true
  localValue1(localValue2, localValue3, number19)
  while true do
    localValue1 = globalInPrison
    if localValue1 then
      localValue1 = stateFlag17
      if localValue1 then
        localValue1 = number10
        localValue1 = localValue1 - 1
        number10 = localValue1
        localValue1 = number10
        if localValue1 < 0 then
          localValue1 = 59
          number10 = localValue1
          localValue1 = number9
          localValue1 = localValue1 - 1
          number9 = localValue1
          localValue1 = number9
          if localValue1 < 0 then
            localValue1 = 59
            number9 = localValue1
            localValue1 = number7
            localValue1 = localValue1 - 1
            number7 = localValue1
            localValue1 = number7
            if localValue1 < 0 then
              localValue1 = false
              stateFlag17 = localValue1
            end
          end
        end
      end
      localValue1 = cmgOperation4
      localValue1 = localValue1()
      if localValue1 then
        localValue1 = stateFlag24
        if not localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.setCanOpenPhone
          localValue2 = true
          localValue1(localValue2)
          localValue1 = true
          stateFlag24 = localValue1
        end
      else
        localValue1 = stateFlag24
        if localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.setCanOpenPhone
          localValue2 = false
          localValue1(localValue2)
          localValue1 = false
          stateFlag24 = localValue1
        end
      end
    else
      localValue1 = stateFlag24
      if localValue1 then
        localValue1 = false
        stateFlag24 = localValue1
      end
    end
    localValue1 = number17
    if 0 ~= localValue1 then
      localValue1 = cmgOperation.segregationAreas
      localValue2 = number17
      localValue1 = localValue1[localValue2]
      localValue2 = CMG
      localValue2 = localValue2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue2 = localValue2()
      localValue2 = localValue2 - localValue1
      localValue2 = #localValue2
      if localValue2 > 10.0 then
        localValue3 = CMG
        localValue3 = localValue3.teleport
        number19 = localValue1
        number20 = false
        localValue3(number19, number20)
      end
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler2(text8)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25
  localValue1 = number7
  if 0 == localValue1 then
    localValue1 = number10
    if localValue1 < 10 then
      localValue1 = number9
      localValue2 = ":"
      localValue3 = "0"
      number19 = number10
      localValue1 = localValue1 .. localValue2 .. localValue3 .. number19
      return localValue1
    end
    localValue1 = number9
    localValue2 = ":"
    localValue3 = number10
    localValue1 = localValue1 .. localValue2 .. localValue3
    return localValue1
  end
  localValue1 = number9
  if localValue1 < 10 then
    localValue1 = number10
    if localValue1 < 10 then
      localValue1 = "0"
      localValue2 = number7
      localValue3 = ":"
      number19 = "0"
      number20 = number9
      stateFlag29 = ":"
      stateFlag31 = "0"
      number25 = number10
      localValue1 = localValue1 .. localValue2 .. localValue3 .. number19 .. number20 .. stateFlag29 .. stateFlag31 .. number25
      return localValue1
    end
    localValue1 = "0"
    localValue2 = number7
    localValue3 = ":"
    number19 = "0"
    number20 = number9
    stateFlag29 = ":"
    stateFlag31 = number10
    localValue1 = localValue1 .. localValue2 .. localValue3 .. number19 .. number20 .. stateFlag29 .. stateFlag31
    return localValue1
  end
  localValue1 = "0"
  localValue2 = number7
  localValue3 = ":"
  number19 = number9
  number20 = ":"
  stateFlag29 = number10
  localValue1 = localValue1 .. localValue2 .. localValue3 .. number19 .. number20 .. stateFlag29
  return localValue1
end
text8 = CMG
text8 = text8.registerHudTimerBarProvider
rageUiOperation = "prisonHud"

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, number19
  localValue2 = globalInPrison
  if localValue2 then
    localValue2 = stateFlag17
    if localValue2 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue2 = CMG
  localValue2 = localValue2.isPrisonerTagged
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = localValue1.push
    localValue3 = "Leg Tag: "
    number19 = "Active"
    localValue2(localValue3, number19)
  end
  localValue2 = localValue1.push
  localValue3 = "Time Left: "
  number19 = eventHandler2
  number19 = number19()
  localValue2(localValue3, number19)
end
text8(rageUiOperation, text9)

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2
  localValue1 = globalInPrison
  if localValue1 then
    localValue1 = cmgOperation5
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue1()
  end
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  localValue2 = "prisonHud"
  localValue3 = globalInPrison
  if localValue3 then
    localValue3 = stateFlag17
  end
  localValue1(localValue2, localValue3)
  localValue1 = stateFlag22
  if localValue1 then
    localValue1 = stateFlag21
    if localValue1 then
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      localValue2 = number13
      localValue2 = localValue1 - localValue2
      if localValue2 > 50 then
        localValue2 = number15
        localValue2 = localValue2 + 1
        number15 = localValue2
        localValue2 = number15
        localValue3 = cmgOperation.riotLightPositions
        localValue3 = #localValue3
        if localValue2 > localValue3 then
          localValue2 = 1
          number15 = localValue2
        end
        localValue2 = cmgOperation.riotLightPositions
        localValue3 = number15
        localValue2 = localValue2[localValue3]
        localValue3 = DrawLightWithRange
        number19 = localValue2.x
        number19 = number19 - 0.5
        number20 = localValue2.y
        number20 = number20 - 0.5
        stateFlag29 = localValue2.z
        stateFlag31 = 255
        number25 = 0
        number27 = 0
        number29 = 10.0
        cmgOperation2 = 1.0
        localValue3(number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2)
        localValue3 = DrawLightWithRange
        number19 = localValue2.x
        number19 = number19 + 0.5
        number20 = localValue2.y
        number20 = number20 + 0.5
        stateFlag29 = localValue2.z
        stateFlag31 = 255
        number25 = 0
        number27 = 0
        number29 = 10.0
        cmgOperation2 = 1.0
        localValue3(number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2)
        localValue3 = DrawLightWithRange
        number19 = localValue2.x
        number20 = localValue2.y
        stateFlag29 = localValue2.z
        stateFlag31 = 255
        number25 = 0
        number27 = 0
        number29 = 10.0
        cmgOperation2 = 1.0
        localValue3(number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2)
        number13 = localValue1
      end
    end
  end
end
rageUiOperation = CMG
rageUiOperation = rageUiOperation.createThreadOnTick
text9 = text8
text10 = "Prison Timer Bars"
-- Beginner: Run a helper every game frame while this script is active.
rageUiOperation(text9, text10)
rageUiOperation = RegisterNetEvent
text9 = "dacfb5dab5"
-- Beginner: this function handles network event "dacfb5dab5".

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection, number6, number8, dataCollection2, number11, cmgOperation3
  localValue1 = false
  -- Beginner: this function handles network event "dacfb5dab5".

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22
    localValue12 = drawNativeNotification
    localValue22 = "Press ~INPUT_CONTEXT~ to start cutting the wires"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(localValue22)
  end
  -- Beginner: this function handles network event "dacfb5dab5".

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22
  end

  -- === HELPER FUNCTION (decompiler name: number19; parameters: localValue12) ===
  function number19(localValue12)
    local localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8
    localValue22 = IsControlJustPressed
    localValue32 = 0
    stateFlag25 = 38
    localValue22 = localValue22(localValue32, stateFlag25)
    if localValue22 then
      localValue22 = stateFlag2
      if not localValue22 then
        localValue22 = CMG
        localValue22 = localValue22.TriggerServerCallback
        localValue32 = "de93932868"
        localValue22 = localValue22(localValue32)
        if localValue22 then
          localValue22 = true
          stateFlag2 = localValue22
          localValue22 = CMG
          localValue22 = localValue22.loadAnimDict
          localValue32 = "anim@gangops@facility@servers@"
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue22(localValue32)
          localValue22 = FreezeEntityPosition
          localValue32 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue32 = localValue32()
          stateFlag25 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue22(localValue32, stateFlag25)
          localValue22 = TaskPlayAnim
          localValue32 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue32 = localValue32()
          stateFlag25 = "anim@gangops@facility@servers@"
          stateFlag27 = "hotwire"
          stateFlag30 = 8.0
          stateFlag32 = 1.0
          stateFlag34 = -1
          stateFlag35 = 1
          stateFlag36 = 0
          stateFlag3 = false
          stateFlag6 = false
          stateFlag8 = false
          -- Beginner: Play an animation on a ped.
          localValue22(localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8)
          localValue22 = SetEntityHeading
          localValue32 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue32 = localValue32()
          stateFlag25 = localValue12.escapePoint
          stateFlag25 = stateFlag25.heading
          -- Beginner: Change the direction an entity is facing.
          localValue22(localValue32, stateFlag25)
          localValue22 = tCMG
          localValue22 = localValue22.notify
          localValue32 = "~g~Started wire cutting (Press X to cancel)"
          -- Beginner: Show a notification to the player.
          localValue22(localValue32)
          localValue22 = Citizen
          localValue22 = localValue22.CreateThread

          -- === HELPER FUNCTION: localValue32() ===
          function localValue32()
            local localValue13, localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7
            localValue13 = SetTimeout
            localValue23 = 60000

            -- === HELPER FUNCTION: localValue33() ===
            function localValue33()
              local stateFlag, workingValue4
              stateFlag = stateFlag2
              if stateFlag then
                stateFlag = true
                localValue1 = stateFlag
                stateFlag = false
                stateFlag2 = stateFlag
              end
            end
            localValue13(localValue23, localValue33)
            while true do
              localValue13 = stateFlag2
              if not localValue13 then
                break
              end
              localValue13 = IsEntityPlayingAnim
              localValue23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue23 = localValue23()
              localValue33 = "anim@gangops@facility@servers@"
              waitCall = "hotwire"
              text11 = 3
              localValue13 = localValue13(localValue23, localValue33, waitCall, text11)
              if not localValue13 then
                localValue13 = TaskPlayAnim
                localValue23 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                localValue23 = localValue23()
                localValue33 = "anim@gangops@facility@servers@"
                waitCall = "hotwire"
                text11 = 8.0
                text14 = 1.0
                text16 = -1
                number26 = 1
                number28 = 0
                stateFlag37 = false
                stateFlag4 = false
                stateFlag7 = false
                -- Beginner: Play an animation on a ped.
                localValue13(localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7)
              end
              localValue13 = Wait
              localValue23 = 200
              localValue13(localValue23)
            end
            localValue13 = RemoveAnimDict
            localValue23 = "anim@gangops@facility@servers@"
            localValue13(localValue23)
            localValue13 = localValue1
            if localValue13 then
              localValue13 = FreezeEntityPosition
              localValue23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue23 = localValue23()
              localValue33 = false
              -- Beginner: Freeze or unfreeze an entity in place.
              localValue13(localValue23, localValue33)
              localValue13 = ClearPedTasks
              localValue23 = PlayerPedId
              localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7 = localValue23()
              localValue13(localValue23, localValue33, waitCall, text11, text14, text16, number26, number28, stateFlag37, stateFlag4, stateFlag7)
              localValue13 = TriggerServerEvent
              localValue23 = "7fce518417"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7fce518417".
              localValue13(localValue23)
              localValue13 = GetOffsetFromEntityInWorldCoords
              localValue23 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue23 = localValue23()
              localValue33 = 0.0
              waitCall = 2.5
              text11 = 0.0
              localValue13 = localValue13(localValue23, localValue33, waitCall, text11)
              localValue23 = tCMG
              localValue23 = localValue23.teleport
              localValue33 = localValue13.x
              waitCall = localValue13.y
              text11 = localValue13.z
              localValue23(localValue33, waitCall, text11)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue22(localValue32)
        else
          localValue22 = tCMG
          localValue22 = localValue22.notify
          localValue32 = "~r~You do not have the required equipment!"
          -- Beginner: Show a notification to the player.
          localValue22(localValue32)
        end
      end
    end
    localValue22 = IsControlJustPressed
    localValue32 = 0
    stateFlag25 = 73
    localValue22 = localValue22(localValue32, stateFlag25)
    if localValue22 then
      localValue22 = stateFlag2
      if localValue22 then
        localValue22 = false
        stateFlag2 = localValue22
        localValue22 = ClearPedTasks
        localValue32 = PlayerPedId
        localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8 = localValue32()
        localValue22(localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34, stateFlag35, stateFlag36, stateFlag3, stateFlag6, stateFlag8)
        localValue22 = FreezeEntityPosition
        localValue32 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue32 = localValue32()
        stateFlag25 = false
        -- Beginner: Freeze or unfreeze an entity in place.
        localValue22(localValue32, stateFlag25)
        localValue22 = tCMG
        localValue22 = localValue22.notify
        localValue32 = "~r~Wire cutting cancelled!"
        -- Beginner: Show a notification to the player.
        localValue22(localValue32)
      end
    end
  end
  number20 = 1
  stateFlag29 = cmgOperation.escapePoints
  stateFlag29 = #stateFlag29
  stateFlag31 = 1
  for number25 = number20, stateFlag29, stateFlag31 do
    number27 = tCMG
    number27 = number27.addMarker
    number29 = cmgOperation.escapePoints
    number29 = number29[number25]
    number29 = number29.coords
    number29 = number29.x
    cmgOperation2 = cmgOperation.escapePoints
    cmgOperation2 = cmgOperation2[number25]
    cmgOperation2 = cmgOperation2.coords
    cmgOperation2 = cmgOperation2.y
    text = cmgOperation.escapePoints
    text = text[number25]
    text = text.coords
    text = text.z
    number = 0.6
    number2 = 0.6
    stringHelper = 0.6
    text5 = 200
    number3 = 0
    number4 = 0
    dataCollection = 255
    number6 = 70
    number8 = 0
    dataCollection2 = false
    number11 = true
    cmgOperation3 = false
    -- Beginner: Create a world marker.
    number27(number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection, number6, number8, dataCollection2, number11, cmgOperation3)
    number27 = CMG
    number27 = number27.createArea
    number29 = "prisonEscapeArea_"
    cmgOperation2 = number25
    number29 = number29 .. cmgOperation2
    cmgOperation2 = cmgOperation.escapePoints
    cmgOperation2 = cmgOperation2[number25]
    cmgOperation2 = cmgOperation2.coords
    text = 2.0
    number = 5.0
    number2 = localValue2
    stringHelper = localValue3
    text5 = number19
    number3 = {}
    number4 = cmgOperation.escapePoints
    number4 = number4[number25]
    number3.escapePoint = number4
    -- Beginner: Create an interaction area around a world position.
    number27(number29, cmgOperation2, text, number, number2, stringHelper, text5, number3)
  end
  number20 = TriggerEvent
  stateFlag29 = "aee0b08546"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "aee0b08546".
  number20(stateFlag29)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dacfb5dab5".
rageUiOperation(text9, text10)
rageUiOperation = RegisterNetEvent
text9 = "b296a71df4"
-- Beginner: this function handles network event "b296a71df4".

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, number19, number20
  localValue1 = TriggerEvent
  localValue2 = "19f123276f"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "19f123276f".
  localValue1(localValue2)
  localValue1 = workingValue16
  if localValue1 then
    localValue1 = true
    stateFlag33 = localValue1
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    localValue3 = localValue2
    localValue2 = localValue2.Get
    number19 = "cmgPayBailMenu"
    number20 = "main"
    -- Beginner: result below is menu.
    localValue2 = localValue2(localValue3, number19, number20)
    localValue3 = false
    localValue1(localValue2, localValue3)
  end
  localValue1 = stateFlag24
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.setCanOpenPhone
    localValue2 = false
    localValue1(localValue2)
    localValue1 = false
    stateFlag24 = localValue1
  end
  localValue1 = CMG
  localValue1 = localValue1.isPrisonerTagged
  localValue1 = localValue1()
  localValue2 = false
  stateFlag19 = localValue2
  localValue2 = globalInPrison
  if localValue2 then
    localValue2 = stateFlag23
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.setCanOpenPhone
      localValue3 = true
      localValue2(localValue3)
      localValue2 = false
      stateFlag23 = localValue2
    end
  end
  localValue2 = 0
  number17 = localValue2
  globalInPrison = false
  localValue2 = cmgOperation5
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2()
  localValue2 = text2
  if "" ~= localValue2 then
    localValue2 = workingValue
    if localValue2 then
      localValue2 = DoesEntityExist
      localValue3 = workingValue
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = DeleteEntity
        localValue3 = workingValue
        -- Beginner: Delete a GTA entity.
        localValue2(localValue3)
      end
    end
    localValue2 = nil
    workingValue = localValue2
    localValue2 = "idle"
    text3 = localValue2
    localValue2 = workingValue2
    if localValue2 then
      localValue2 = DoesEntityExist
      localValue3 = workingValue2
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = DeleteEntity
        localValue3 = workingValue2
        localValue2(localValue3)
      end
    end
    localValue2 = nil
    workingValue2 = localValue2
    localValue2 = "idle"
    text4 = localValue2
    localValue2 = workingValue3
    if localValue2 then
      localValue2 = DoesEntityExist
      localValue3 = workingValue3
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = DeleteEntity
        localValue3 = workingValue3
        -- Beginner: Delete a GTA entity.
        localValue2(localValue3)
      end
    end
    localValue2 = nil
    workingValue3 = localValue2
    localValue2 = "idle"
    text6 = localValue2
    localValue2 = ""
    text2 = localValue2
    localValue2 = false
    stateFlag5 = localValue2
    localValue2 = FreezeEntityPosition
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    number19 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue2(localValue3, number19)
    localValue2 = ClearPedTasks
    localValue3 = PlayerPedId
    localValue3, number19, number20 = localValue3()
    localValue2(localValue3, number19, number20)
    localValue2 = tCMG
    localValue2 = localValue2.setCanAnim
    localValue3 = true
    localValue2(localValue3)
    localValue2 = CMG
    localValue2 = localValue2.stopCircularProgressBar
    localValue2()
  end
  localValue2 = tCMG
  localValue2 = localValue2.notify
  localValue3 = "~g~You have been released!"
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  if not localValue1 then
    localValue2 = tCMG
    localValue2 = localValue2.teleport
    localValue3 = cmgOperation.prisonLeaveCoords
    localValue3 = localValue3.x
    number19 = cmgOperation.prisonLeaveCoords
    number19 = number19.y
    number20 = cmgOperation.prisonLeaveCoords
    number20 = number20.z
    localValue2(localValue3, number19, number20)
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 100
    localValue2(localValue3)
    localValue2 = SetEntityHeading
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    number19 = 274.58
    -- Beginner: Change the direction an entity is facing.
    localValue2(localValue3, number19)
  end
  localValue2 = workingValue11
  localValue2()
  localValue2 = false
  stateFlag17 = localValue2
  localValue2 = 0
  number9 = localValue2
  localValue2 = 0
  number10 = localValue2
  if not localValue1 then
    localValue2 = GetResourceKvpString
    localValue3 = "cmg_customisation_before_prison"
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue3 = json
      localValue3 = localValue3.decode
      number19 = localValue2
      localValue3 = localValue3(number19)
      if localValue3 then
        number19 = tCMG
        number19 = number19.setCustomization
        number20 = localValue3
        number19(number20)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b296a71df4".
rageUiOperation(text9, text10)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, localValue3
  localValue1 = GetEntityModel
  localValue2 = PlayerPedId
  localValue2, localValue3 = localValue2()
  -- Beginner: result below is modelHash.
  localValue1 = localValue1(localValue2, localValue3)
  if 1885233650 == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.loadCustomisationPreset
    localValue3 = "PrisonerMale"
    localValue2(localValue3)
  else
    localValue2 = CMG
    localValue2 = localValue2.loadCustomisationPreset
    localValue3 = "PrisonerFemale"
    localValue2(localValue3)
  end
end
text9 = RegisterNetEvent
text10 = "d662821448"
-- Beginner: this function handles network event "d662821448".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2) ===
function rageUiOperation2(localValue1, localValue2)
  local localValue3, number19, number20, stateFlag29
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  number19 = 5000
  localValue3(number19)
  localValue2 = localValue2 - 5
  localValue3 = tCMG
  localValue3 = localValue3.teleport
  number19 = cmgOperation.prisonCells
  number19 = number19[localValue1]
  number19 = number19.x
  number20 = cmgOperation.prisonCells
  number20 = number20[localValue1]
  number20 = number20.y
  stateFlag29 = cmgOperation.prisonCells
  stateFlag29 = stateFlag29[localValue1]
  stateFlag29 = stateFlag29.z
  localValue3(number19, number20, stateFlag29)
  localValue3 = true
  stateFlag19 = localValue3
  localValue3 = false
  stateFlag24 = localValue3
  localValue3 = globalInPrison
  if not localValue3 then
    localValue3 = stateFlag23
    if not localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.setCanOpenPhone
      number19 = false
      localValue3(number19)
      localValue3 = true
      stateFlag23 = localValue3
    end
  end
  globalInPrison = true
  workingValue7 = localValue1
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  number19 = 100
  localValue3(number19)
  localValue3 = SetEntityHeading
  number19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number19 = number19()
  number20 = cmgOperation.prisonCells
  number20 = number20[localValue1]
  number20 = number20.w
  -- Beginner: Change the direction an entity is facing.
  localValue3(number19, number20)
  localValue3 = workingValue12
  localValue3()
  localValue3 = CMG
  localValue3 = localValue3.forceNearbyAreasReload
  localValue3()
  localValue3 = GetEntityModel
  number19 = PlayerPedId
  number19, number20, stateFlag29 = number19()
  -- Beginner: result below is modelHash.
  localValue3 = localValue3(number19, number20, stateFlag29)
  if 1885233650 ~= localValue3 and -1667301416 ~= localValue3 then
    number19 = tCMG
    number19 = number19.setCustomization
    number20 = {}
    number20.modelhash = 1885233650
    number19(number20)
  end
  number19 = Citizen
  number19 = number19.Wait
  number20 = 2000
  number19(number20)
  number19 = rageUiOperation
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  number19()
end
text9(text10, rageUiOperation2)

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text
  localValue2 = CMG
  localValue2 = localValue2.spawnVehicle
  localValue3 = -2007026063
  number19 = localValue1.vanPosition
  number19 = number19.x
  number20 = localValue1.vanPosition
  number20 = number20.y
  stateFlag29 = localValue1.vanPosition
  stateFlag29 = stateFlag29.z
  stateFlag31 = localValue1.vanPosition
  stateFlag31 = stateFlag31.w
  number25 = false
  number27 = false
  number29 = false
  localValue2 = localValue2(localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29)
  localValue3 = SetVehicleOnGroundProperly
  number19 = localValue2
  localValue3(number19)
  localValue3 = CMG
  localValue3 = localValue3.loadModel
  number19 = 1456041926
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue3(number19)
  localValue3 = CreatePedInsideVehicle
  number19 = localValue2
  number20 = 6
  stateFlag29 = 1456041926
  stateFlag31 = -1
  number25 = false
  number27 = false
  localValue3 = localValue3(number19, number20, stateFlag29, stateFlag31, number25, number27)
  number19 = SetModelAsNoLongerNeeded
  number20 = 1456041926
  number19(number20)
  number19 = TaskVehicleDriveToCoordLongrange
  number20 = localValue3
  stateFlag29 = localValue2
  stateFlag31 = cmgOperation.prisonArriveCoords
  stateFlag31 = stateFlag31.x
  number25 = cmgOperation.prisonArriveCoords
  number25 = number25.y
  number27 = cmgOperation.prisonArriveCoords
  number27 = number27.z
  number29 = 150.0
  cmgOperation2 = 1
  text = 10
  number19(number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text)
  number19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number19 = number19()
  number20 = nil
  stateFlag29 = localValue1.type
  if "focus" == stateFlag29 then
    stateFlag29 = CreateCam
    stateFlag31 = "DEFAULT_SCRIPTED_CAMERA"
    number25 = true
    -- Beginner: result below is cameraHandle.
    stateFlag29 = stateFlag29(stateFlag31, number25)
    number20 = stateFlag29
    stateFlag29 = SetCamCoord
    stateFlag31 = number20
    number25 = localValue1.camPosition
    number25 = number25.x
    number27 = localValue1.camPosition
    number27 = number27.y
    number29 = localValue1.camPosition
    number29 = number29.z
    stateFlag29(stateFlag31, number25, number27, number29)
    stateFlag29 = PointCamAtEntity
    stateFlag31 = number20
    number25 = localValue2
    number27 = 0.0
    number29 = 0.0
    cmgOperation2 = 0.0
    text = false
    stateFlag29(stateFlag31, number25, number27, number29, cmgOperation2, text)
    stateFlag29 = RenderScriptCams
    stateFlag31 = true
    number25 = false
    number27 = 0
    number29 = false
    cmgOperation2 = false
    stateFlag29(stateFlag31, number25, number27, number29, cmgOperation2)
    stateFlag29 = SetPedIntoVehicle
    stateFlag31 = number19
    number25 = localValue2
    number27 = 1
    stateFlag29(stateFlag31, number25, number27)
  else
    stateFlag29 = SetPedIntoVehicle
    stateFlag31 = number19
    number25 = localValue2
    number27 = 0
    stateFlag29(stateFlag31, number25, number27)
    stateFlag29 = SetEntityVisible
    stateFlag31 = number19
    number25 = false
    number27 = false
    stateFlag29(stateFlag31, number25, number27)
    stateFlag29 = SetFollowVehicleCamViewMode
    stateFlag31 = 4
    stateFlag29(stateFlag31)
  end
  stateFlag29 = DoScreenFadeIn
  stateFlag31 = 500
  stateFlag29(stateFlag31)
  stateFlag29 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag29 = stateFlag29()
  while true do
    stateFlag31 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag31 = stateFlag31()
    stateFlag31 = stateFlag31 - stateFlag29
    number25 = localValue1.durationMsec
    if not (stateFlag31 < number25) then
      break
    end
    stateFlag31 = GetEntityForwardVector
    number25 = localValue2
    stateFlag31 = stateFlag31(number25)
    stateFlag31 = 15.0 * stateFlag31
    number25 = SetEntityVelocity
    number27 = localValue2
    number29 = stateFlag31.x
    cmgOperation2 = stateFlag31.y
    text = stateFlag31.z
    number25(number27, number29, cmgOperation2, text)
    number25 = Wait
    number27 = 0
    number25(number27)
  end
  stateFlag31 = DoScreenFadeOut
  number25 = 500
  stateFlag31(number25)
  while true do
    stateFlag31 = IsScreenFadedOut
    stateFlag31 = stateFlag31()
    if stateFlag31 then
      break
    end
    stateFlag31 = Wait
    number25 = 0
    stateFlag31(number25)
  end
  if number20 then
    stateFlag31 = RenderScriptCams
    number25 = false
    number27 = false
    number29 = 0
    cmgOperation2 = false
    text = false
    stateFlag31(number25, number27, number29, cmgOperation2, text)
    stateFlag31 = SetCamActive
    number25 = number20
    number27 = false
    stateFlag31(number25, number27)
    stateFlag31 = DestroyCam
    number25 = number20
    number27 = false
    stateFlag31(number25, number27)
  end
  stateFlag31 = SetFollowVehicleCamViewMode
  number25 = 2
  stateFlag31(number25)
  stateFlag31 = DeleteEntity
  number25 = localValue3
  -- Beginner: Delete a GTA entity.
  stateFlag31(number25)
  stateFlag31 = DeleteEntity
  number25 = localValue2
  stateFlag31(number25)
  stateFlag31 = SetEntityVisible
  number25 = number19
  number27 = true
  number29 = true
  stateFlag31(number25, number27, number29)
  stateFlag31 = SetFollowPedCamViewMode
  number25 = 2
  stateFlag31(number25)
end
text10 = RegisterNetEvent
rageUiOperation2 = "c1a91c4aaa"
-- Beginner: this function handles network event "c1a91c4aaa".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper
  localValue2 = DoScreenFadeOut
  localValue3 = 500
  localValue2(localValue3)
  while true do
    localValue2 = IsScreenFadedOut
    localValue2 = localValue2()
    if localValue2 then
      break
    end
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = tCMG
  localValue2 = localValue2.getCustomization
  localValue2 = localValue2()
  localValue3 = SetResourceKvp
  number19 = "cmg_customisation_before_prison"
  number20 = json
  number20 = number20.encode
  stateFlag29 = localValue2
  number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper = number20(stateFlag29)
  localValue3(number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper)
  localValue3 = DetachEntity
  number19 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number19 = number19()
  number20 = false
  stateFlag29 = true
  localValue3(number19, number20, stateFlag29)
  localValue3 = rageUiOperation
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue3()
  localValue3 = workingValue13
  localValue3 = localValue3()
  number19 = tCMG
  number19 = number19.teleport
  number20 = localValue3.coords
  number20 = number20.x
  stateFlag29 = localValue3.coords
  stateFlag29 = stateFlag29.y
  stateFlag31 = localValue3.coords
  stateFlag31 = stateFlag31.z
  number19(number20, stateFlag29, stateFlag31)
  number19 = tCMG
  number19 = number19.setCanAnim
  number20 = false
  number19(number20)
  number19 = SetPlayerControl
  number20 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  number20 = number20()
  stateFlag29 = false
  stateFlag31 = 0
  number19(number20, stateFlag29, stateFlag31)
  number19 = CMG
  number19 = number19.hideAllDisplays
  number20 = "prisonbus"
  number19(number20)
  number19 = pairs
  number20 = localValue3.cinematics
  number19, number20, stateFlag29, stateFlag31 = number19(number20)
  for number25, number27 in number19, number20, stateFlag29, stateFlag31 do
    number29 = text9
    cmgOperation2 = number27
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
    number29(cmgOperation2)
  end
  number19 = CMG
  number19 = number19.spawnVehicle
  number20 = -2007026063
  stateFlag29 = cmgOperation.prisonArriveCoords
  stateFlag29 = stateFlag29.x
  stateFlag31 = cmgOperation.prisonArriveCoords
  stateFlag31 = stateFlag31.y
  number25 = cmgOperation.prisonArriveCoords
  number25 = number25.z
  number27 = cmgOperation.prisonArriveCoords
  number27 = number27.w
  number29 = false
  cmgOperation2 = false
  text = false
  number19 = number19(number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text)
  number20 = SetVehicleOnGroundProperly
  stateFlag29 = number19
  number20(stateFlag29)
  number20 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number20 = number20()
  stateFlag29 = SetEntityCoords
  stateFlag31 = number20
  number25 = cmgOperation.prisonArrivePedStart
  number25 = number25.x
  number27 = cmgOperation.prisonArrivePedStart
  number27 = number27.y
  number29 = cmgOperation.prisonArrivePedStart
  number29 = number29.z
  cmgOperation2 = true
  text = false
  number = false
  number2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag29(stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2)
  stateFlag29 = TaskGoToCoordAnyMeans
  stateFlag31 = number20
  number25 = cmgOperation.prisonArriveMainDoor
  number25 = number25.x
  number27 = cmgOperation.prisonArriveMainDoor
  number27 = number27.y
  number29 = cmgOperation.prisonArriveMainDoor
  number29 = number29.z
  cmgOperation2 = 1.0
  text = 0
  number = false
  number2 = 786603
  stringHelper = 0.0
  stateFlag29(stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper)
  stateFlag29 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag29 = stateFlag29()
  while true do
    stateFlag31 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag31 = stateFlag31()
    stateFlag31 = stateFlag31 - stateFlag29
    number25 = 8000
    if not (stateFlag31 < number25) then
      break
    end
    stateFlag31 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag31 = stateFlag31()
    stateFlag31 = stateFlag31 - stateFlag29
    number25 = 500
    if stateFlag31 > number25 then
      stateFlag31 = DoScreenFadeIn
      number25 = 500
      stateFlag31(number25)
    end
    stateFlag31 = SetFollowPedCamViewMode
    number25 = 2
    stateFlag31(number25)
    stateFlag31 = SetGameplayCamRelativePitch
    number25 = 0.0
    number27 = 1.0
    stateFlag31(number25, number27)
    stateFlag31 = SetGameplayCamRelativeHeading
    number25 = 0.0
    stateFlag31(number25)
    stateFlag31 = Wait
    number25 = 0
    stateFlag31(number25)
  end
  stateFlag31 = DoScreenFadeOut
  number25 = 500
  stateFlag31(number25)
  while true do
    stateFlag31 = IsScreenFadedOut
    stateFlag31 = stateFlag31()
    if stateFlag31 then
      break
    end
    stateFlag31 = Wait
    number25 = 0
    stateFlag31(number25)
  end
  stateFlag31 = DeleteEntity
  number25 = number19
  -- Beginner: Delete a GTA entity.
  stateFlag31(number25)
  stateFlag31 = tCMG
  stateFlag31 = stateFlag31.setCanAnim
  number25 = true
  stateFlag31(number25)
  stateFlag31 = SetPlayerControl
  number25 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  number25 = number25()
  number27 = true
  number29 = 0
  stateFlag31(number25, number27, number29)
  stateFlag31 = ClearPedTasks
  number25 = number20
  stateFlag31(number25)
  stateFlag31 = tCMG
  stateFlag31 = stateFlag31.teleport
  number25 = cmgOperation.prisonCells
  number25 = number25[localValue1]
  number25 = number25.x
  number27 = cmgOperation.prisonCells
  number27 = number27[localValue1]
  number27 = number27.y
  number29 = cmgOperation.prisonCells
  number29 = number29[localValue1]
  number29 = number29.z
  stateFlag31(number25, number27, number29)
  stateFlag31 = Citizen
  stateFlag31 = stateFlag31.Wait
  number25 = 100
  stateFlag31(number25)
  stateFlag31 = SetEntityHeading
  number25 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number25 = number25()
  number27 = cmgOperation.prisonCells
  number27 = number27[localValue1]
  number27 = number27.w
  -- Beginner: Change the direction an entity is facing.
  stateFlag31(number25, number27)
  stateFlag31 = TriggerServerEvent
  number25 = "37a28d3080"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "37a28d3080".
  stateFlag31(number25)
  stateFlag31 = true
  stateFlag19 = stateFlag31
  stateFlag31 = false
  stateFlag24 = stateFlag31
  stateFlag31 = globalInPrison
  if not stateFlag31 then
    stateFlag31 = stateFlag23
    if not stateFlag31 then
      stateFlag31 = CMG
      stateFlag31 = stateFlag31.setCanOpenPhone
      number25 = false
      stateFlag31(number25)
      stateFlag31 = true
      stateFlag23 = stateFlag31
    end
  end
  globalInPrison = true
  workingValue7 = localValue1
  stateFlag31 = workingValue12
  stateFlag31()
  stateFlag31 = DoScreenFadeIn
  number25 = 500
  stateFlag31(number25)
  stateFlag31 = CMG
  stateFlag31 = stateFlag31.showAllDisplays
  number25 = "prisonbus"
  stateFlag31(number25)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c1a91c4aaa".
text10(rageUiOperation2, rageUiOperation3)
text10 = RegisterNetEvent
rageUiOperation2 = "c1880029f0"
-- Beginner: this function handles network event "c1880029f0".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2
  localValue1 = cmgOperation.medicalBayBed
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = DoScreenFadeOut
  number19 = 300
  localValue3(number19)
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  number19 = 500
  localValue3(number19)
  localValue3 = true
  stateFlag19 = localValue3
  localValue3 = workingValue12
  localValue3()
  localValue3 = SetEntityCoords
  number19 = localValue2
  number20 = localValue1.x
  stateFlag29 = localValue1.y
  stateFlag31 = localValue1.z
  number25 = false
  number27 = false
  number29 = false
  cmgOperation2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue3(number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2)
  localValue3 = SetEntityHeading
  number19 = localValue2
  number20 = localValue1.w
  -- Beginner: Change the direction an entity is facing.
  localValue3(number19, number20)
  localValue3 = SetEntityVisible
  number19 = localValue2
  number20 = true
  stateFlag29 = false
  localValue3(number19, number20, stateFlag29)
  localValue3 = FreezeEntityPosition
  number19 = localValue2
  number20 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(number19, number20)
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  number19 = 500
  localValue3(number19)
  localValue3 = TriggerEvent
  number19 = "5276360f55"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "5276360f55".
  localValue3(number19)
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  number19 = 500
  localValue3(number19)
  localValue3 = DoScreenFadeIn
  number19 = 500
  localValue3(number19)
  localValue3 = cmgOperation.medicalBayCamera
  number19 = CreateCameraWithParams
  number20 = "DEFAULT_SCRIPTED_CAMERA"
  stateFlag29 = localValue3.x
  stateFlag31 = localValue3.y
  number25 = localValue3.z
  number27 = 0.0
  number29 = 0.0
  cmgOperation2 = 0.0
  text = 65.0
  number = false
  number2 = 2
  number19 = number19(number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2)
  number20 = PointCamAtCoord
  stateFlag29 = number19
  stateFlag31 = localValue1.x
  number25 = localValue1.y
  number27 = localValue1.z
  number27 = number27 + 0.3
  number20(stateFlag29, stateFlag31, number25, number27)
  number20 = SetCamActive
  stateFlag29 = number19
  stateFlag31 = true
  number20(stateFlag29, stateFlag31)
  number20 = RenderScriptCams
  stateFlag29 = true
  stateFlag31 = true
  number25 = 500
  number27 = true
  number29 = false
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  while true do
    number20 = CMG
    number20 = number20.isSittingOnChair
    number20 = number20()
    if not number20 then
      break
    end
    number20 = Citizen
    number20 = number20.Wait
    stateFlag29 = 200
    number20(stateFlag29)
  end
  number20 = Citizen
  number20 = number20.Wait
  stateFlag29 = 2000
  number20(stateFlag29)
  number20 = RenderScriptCams
  stateFlag29 = false
  stateFlag31 = true
  number25 = 2000
  number27 = true
  number29 = false
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = Citizen
  number20 = number20.Wait
  stateFlag29 = 2000
  number20(stateFlag29)
  number20 = DestroyCam
  stateFlag29 = number19
  stateFlag31 = false
  number20(stateFlag29, stateFlag31)
  number20 = FreezeEntityPosition
  stateFlag29 = localValue2
  stateFlag31 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  number20(stateFlag29, stateFlag31)
  number20 = CMG
  number20 = number20.showHud
  number20()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c1880029f0".
text10(rageUiOperation2, rageUiOperation3)
text10 = RegisterNetEvent
rageUiOperation2 = "f8ff0f9e26"
-- Beginner: this function handles network event "f8ff0f9e26".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, number19, number20
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 2000
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.teleport
  localValue2 = cmgOperation.prisonCells
  localValue3 = workingValue7
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2.x
  localValue3 = cmgOperation.prisonCells
  number19 = workingValue7
  localValue3 = localValue3[number19]
  localValue3 = localValue3.y
  number19 = cmgOperation.prisonCells
  number20 = workingValue7
  number19 = number19[number20]
  number19 = number19.z
  localValue1(localValue2, localValue3, number19)
  localValue1 = true
  stateFlag19 = localValue1
  localValue1 = workingValue12
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f8ff0f9e26".
text10(rageUiOperation2, rageUiOperation3)
text10 = RMenu
text10 = text10.Add
rageUiOperation2 = "cmgPayBailMenu"
rageUiOperation3 = "main"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateMenu
cmgOperation6 = ""
text12 = "~b~Pay Bail"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6 = rageUiOperation6()
text13 = "cmg_prisonui"
cmgOperation7 = "cmg_prisonui"
rageUiOperation4, cmgOperation6, text12, rageUiOperation5, rageUiOperation6, text13, cmgOperation7, stateFlag28, createVector3, dataCollection7, number21, eventHandler3, cmgOperation8, text15, dataCollection8, number22, number23, cmgOperation9, dataCollection9, stringHelper2, dataCollection10, number24, workingValue18, eventHandlerRegistration2, text17, dataCollection11 = rageUiOperation4(cmgOperation6, text12, rageUiOperation5, rageUiOperation6, text13, cmgOperation7)
text10(rageUiOperation2, rageUiOperation3, rageUiOperation4, cmgOperation6, text12, rageUiOperation5, rageUiOperation6, text13, cmgOperation7, stateFlag28, createVector3, dataCollection7, number21, eventHandler3, cmgOperation8, text15, dataCollection8, number22, number23, cmgOperation9, dataCollection9, stringHelper2, dataCollection10, number24, workingValue18, eventHandlerRegistration2, text17, dataCollection11)
text10 = RageUI
text10 = text10.CreateWhile
rageUiOperation2 = 1.0
rageUiOperation3 = RMenu
rageUiOperation4 = rageUiOperation3
rageUiOperation3 = rageUiOperation3.Get
cmgOperation6 = "cmgPayBailMenu"
text12 = "main"
-- Beginner: result below is menu.
rageUiOperation3 = rageUiOperation3(rageUiOperation4, cmgOperation6, text12)
rageUiOperation4 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  number19 = "cmgPayBailMenu"
  number20 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, number19, number20)
  localValue3 = true
  number19 = false
  number20 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag29; parameters: none) ===
  function stateFlag29()
    local localValue12, localValue22, localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34
    localValue12 = cmgOperation.bailPricePerMinute
    localValue22 = number9
    localValue12 = localValue12 * localValue22
    if 0 == localValue12 then
      localValue12 = cmgOperation.bailPricePerMinute
    end
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = "Pay your bail to get out of jail early"
    localValue22(localValue32)
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = "Bail price \194\163"
    stateFlag25 = getMoneyStringFormatted
    stateFlag27 = localValue12
    stateFlag25 = stateFlag25(stateFlag27)
    localValue32 = localValue32 .. stateFlag25
    localValue22(localValue32)
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = "--"
    localValue22(localValue32)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Pay Bail"
    stateFlag25 = ""
    stateFlag27 = {}
    stateFlag27.RightLabel = "\240\159\145\174"
    stateFlag30 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag32; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag32(localValue13, localValue23, localValue33)
      local waitCall, text11
      if localValue33 then
        waitCall = TriggerServerEvent
        text11 = "34ab200e5c"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "34ab200e5c".
        waitCall(text11)
      end
    end
    stateFlag34 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, stateFlag25, stateFlag27, stateFlag30, stateFlag32, stateFlag34)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag31; parameters: none) ===
  function stateFlag31()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, number19, number20, stateFlag29, stateFlag31)
end
text10(rageUiOperation2, rageUiOperation3, rageUiOperation4, cmgOperation6)
text10 = RegisterCommand
rageUiOperation2 = "viewprisoners"
-- Beginner: this function is the command handler for "viewprisoners".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "prisonguard.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = stateFlag20
    if localValue1 then
      localValue1 = false
      stateFlag20 = localValue1
    else
      localValue1 = CMG
      localValue1 = localValue1.TriggerServerCallback
      localValue2 = "794bd36646"
      localValue1 = localValue1(localValue2)
      if nil ~= localValue1 then
        localValue2 = true
        stateFlag20 = localValue2
        localValue2 = eventHandler
        localValue3 = localValue1
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        localValue2(localValue3)
      end
    end
  end
end
rageUiOperation4 = false
-- Beginner: Register a chat/console command. Event/command: "viewprisoners".
text10(rageUiOperation2, rageUiOperation3, rageUiOperation4)
text10 = exports
rageUiOperation2 = "isPlayerNearPrison"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.isPlayerNearPrison
text10(rageUiOperation2, rageUiOperation3)
text10 = exports
rageUiOperation2 = "isPlayerInPrison"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.isPlayerInPrison
text10(rageUiOperation2, rageUiOperation3)
text10 = true

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, localValue3, number19
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CanPedRagdoll
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  text10 = localValue2
  localValue2 = SetPedCanRagdoll
  localValue3 = localValue1
  number19 = false
  localValue2(localValue3, number19)
  localValue2 = SetPedCanRagdollFromPlayerImpact
  localValue3 = localValue1
  number19 = false
  localValue2(localValue3, number19)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, number19
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = SetPedCanRagdoll
  localValue3 = localValue1
  number19 = text10
  localValue2(localValue3, number19)
  localValue2 = SetPedCanRagdollFromPlayerImpact
  localValue3 = localValue1
  number19 = text10
  localValue2(localValue3, number19)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, number19
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedRagdoll
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = IsPedBeingStunned
    localValue3 = localValue1
    number19 = 0
    localValue2 = localValue2(localValue3, number19)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasCustomStunEffect
      localValue2 = localValue2()
      if not localValue2 then
        localValue2 = ClearPedTasksImmediately
        localValue3 = localValue1
        localValue2(localValue3)
      end
    end
  end
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.createArea
text12 = "prison_noragdoll"
rageUiOperation5 = vector3
rageUiOperation6 = 1763.9005126953
text13 = 2592.86328125
cmgOperation7 = 50.549797058105
rageUiOperation5 = rageUiOperation5(rageUiOperation6, text13, cmgOperation7)
rageUiOperation6 = 7.5
text13 = 5.0
cmgOperation7 = rageUiOperation2
stateFlag28 = rageUiOperation3
createVector3 = rageUiOperation4
dataCollection7 = {}
-- Beginner: Create an interaction area around a world position.
cmgOperation6(text12, rageUiOperation5, rageUiOperation6, text13, cmgOperation7, stateFlag28, createVector3, dataCollection7)
cmgOperation6 = vector3
text12 = 1684.822266
rageUiOperation5 = 2581.853516
rageUiOperation6 = 62.2134246
cmgOperation6 = cmgOperation6(text12, rageUiOperation5, rageUiOperation6)
text12 = 230.0
rageUiOperation5 = 205.0

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: none) ===
function rageUiOperation6()
  local localValue1, localValue2
  localValue1 = tonumber
  localValue2 = GlobalState
  localValue2 = localValue2.cmgHackingPrisonNoFlyDisabledUntil
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = 0
  end
  if localValue1 <= 0 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.getEstimatedServerOsTime
  localValue2 = localValue2()
  localValue2 = localValue1 > localValue2
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
function text13()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4
  localValue1 = rageUiOperation6
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  localValue1, localValue2 = localValue1()
  if 0 == localValue1 or not localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  number19 = localValue3.xy
  number20 = cmgOperation6.xy
  number19 = number19 - number20
  number19 = #number19
  number20 = text12
  if not (number19 > number20) then
    number20 = localValue3.z
    stateFlag29 = 45.2
    if not (number20 < stateFlag29) then
      goto continueAtStep30
    end
  end
  return
  ::continueAtStep30::
  number20 = GetEntityHeightAboveGround
  stateFlag29 = localValue1
  number20 = number20(stateFlag29)
  if number20 < 5.0 then
    return
  end
  stateFlag29 = GetEntityModel
  stateFlag31 = localValue1
  -- Beginner: result below is modelHash.
  stateFlag29 = stateFlag29(stateFlag31)
  stateFlag31 = IsThisModelAHeli
  number25 = stateFlag29
  stateFlag31 = stateFlag31(number25)
  if not stateFlag31 then
    stateFlag31 = IsThisModelAPlane
    number25 = stateFlag29
    stateFlag31 = stateFlag31(number25)
    if not stateFlag31 then
      goto continueAtStep50
    end
  end
  return
  ::continueAtStep50::
  stateFlag31 = rageUiOperation5
  stateFlag31 = number19 - stateFlag31
  number25 = math
  number25 = number25.max
  number27 = text12
  number29 = rageUiOperation5
  number27 = number27 - number29
  number27 = stateFlag31 / number27
  number29 = 0.0
  number25 = number25(number27, number29)
  number27 = number25 * 111.76
  number29 = 1.0
  number29 = number29 - number25
  number29 = number29 * 25.0
  cmgOperation2 = norm
  text = cmgOperation6
  text = text - localValue3
  cmgOperation2 = cmgOperation2(text)
  text = GetEntityVelocity
  number = localValue1
  text = text(number)
  text = text * cmgOperation2
  text = #text
  if number27 < text then
    number = cmgOperation2 * number27
    number2 = vector3
    stringHelper = 0.0
    text5 = 0.0
    number3 = -1.0
    number2 = number2(stringHelper, text5, number3)
    number2 = number2 * number29
    number = number + number2
    number2 = SetEntityVelocity
    stringHelper = localValue1
    text5 = number.x
    number3 = number.y
    number4 = number.z
    number2(stringHelper, text5, number3, number4)
  end
end
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.createArea
stateFlag28 = "prison_nofly"
createVector3 = vector3
dataCollection7 = 1684.822266
number21 = 2581.853516
eventHandler3 = 62.797512
createVector3 = createVector3(dataCollection7, number21, eventHandler3)
dataCollection7 = 300.0
number21 = 1000.0

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: none) ===
function cmgOperation8()
  local localValue1, localValue2
end
text15 = text13
dataCollection8 = {}
-- Beginner: Create an interaction area around a world position.
cmgOperation7(stateFlag28, createVector3, dataCollection7, number21, eventHandler3, cmgOperation8, text15, dataCollection8)

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: localValue1) ===
function cmgOperation7(localValue1)
  local localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = pairs
  number19 = GetGamePool
  number20 = "CPed"
  number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2 = number19(number20)
  localValue3, number19, number20, stateFlag29 = localValue3(number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2)
  for stateFlag31, number25 in localValue3, number19, number20, stateFlag29 do
    if number25 ~= localValue2 then
      number27 = GetEntityCoords
      number29 = number25
      cmgOperation2 = true
      -- Beginner: result below is entityCoords.
      number27 = number27(number29, cmgOperation2)
      number27 = number27.xy
      number29 = localValue1.xy
      number27 = number27 - number29
      number27 = #number27
      if number27 < 1.0 then
        number27 = true
        return number27
      end
    end
  end
  localValue3 = false
  return localValue3
end
stateFlag28 = false

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1, localValue2) ===
function createVector3(localValue1, localValue2)
  local localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number
  localValue3 = tCMG
  localValue3 = localValue3.setCanAnim
  number19 = false
  localValue3(number19)
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  number19 = TaskStartScenarioAtPosition
  number20 = localValue3
  stateFlag29 = "PROP_HUMAN_STAND_IMPATIENT"
  stateFlag31 = localValue2.x
  number25 = localValue2.y
  number27 = localValue2.z
  number29 = localValue2.w
  cmgOperation2 = 10000
  text = false
  number = true
  -- Beginner: Make an NPC start a GTA scenario/ambient animation.
  number19(number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number)
  number19 = TriggerServerEvent
  number20 = "c5158af8ec"
  stateFlag29 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c5158af8ec".
  number19(number20, stateFlag29)
  number19 = tCMG
  number19 = number19.getCustomization
  number19 = number19()
  number20 = SetPedComponentVariation
  stateFlag29 = localValue3
  stateFlag31 = 9
  number25 = 0
  number27 = 0
  number29 = 0
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = SetPedComponentVariation
  stateFlag29 = localValue3
  stateFlag31 = 6
  number25 = CMG
  number25 = number25.getModelGender
  number25 = number25()
  if "male" == number25 then
    number25 = 34
    if number25 then
      goto continueAtStep44
    end
  end
  number25 = 35
  ::continueAtStep44::
  number27 = 0
  number29 = 0
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = SetPedComponentVariation
  stateFlag29 = localValue3
  stateFlag31 = 7
  number25 = 0
  number27 = 0
  number29 = 0
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = SetPedComponentVariation
  stateFlag29 = localValue3
  stateFlag31 = 4
  number25 = CMG
  number25 = number25.getModelGender
  number25 = number25()
  if "male" == number25 then
    number25 = 61
    if number25 then
      goto continueAtStep66
    end
  end
  number25 = 14
  ::continueAtStep66::
  number27 = 0
  number29 = 0
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = SetPedComponentVariation
  stateFlag29 = localValue3
  stateFlag31 = 5
  number25 = 0
  number27 = 0
  number29 = 0
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = SetPedComponentVariation
  stateFlag29 = localValue3
  stateFlag31 = 11
  number25 = CMG
  number25 = number25.getModelGender
  number25 = number25()
  if "male" == number25 then
    number25 = 252
    if number25 then
      goto continueAtStep88
    end
  end
  number25 = 74
  ::continueAtStep88::
  number27 = 0
  number29 = 0
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = SetPedComponentVariation
  stateFlag29 = localValue3
  stateFlag31 = 8
  number25 = 15
  number27 = 0
  number29 = 0
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = SetPedComponentVariation
  stateFlag29 = localValue3
  stateFlag31 = 3
  number25 = 15
  number27 = 0
  number29 = 0
  number20(stateFlag29, stateFlag31, number25, number27, number29)
  number20 = Citizen
  number20 = number20.Wait
  stateFlag29 = 20000
  number20(stateFlag29)
  number20 = ClearPedTasks
  stateFlag29 = localValue3
  number20(stateFlag29)
  number20 = Citizen
  number20 = number20.Wait
  stateFlag29 = 3000
  number20(stateFlag29)
  number20 = tCMG
  number20 = number20.setCanAnim
  stateFlag29 = true
  number20(stateFlag29)
  number20 = tCMG
  number20 = number20.setCustomization
  stateFlag29 = number19
  number20(stateFlag29)
  number20 = false
  stateFlag28 = number20
end

-- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: localValue1) ===
function dataCollection7(localValue1)
  local localValue2, localValue3
  localValue2 = cmgOperation7
  localValue3 = localValue1.position
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = stateFlag28
    if not localValue2 then
      localValue2 = drawNativeNotification
      localValue3 = "Press ~INPUT_CONTEXT~ to shower"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue2(localValue3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: number21; parameters: localValue1) ===
function number21(localValue1)
  local localValue2, localValue3, number19
  localValue2 = IsControlJustPressed
  localValue3 = 0
  number19 = 51
  localValue2 = localValue2(localValue3, number19)
  if localValue2 then
    localValue2 = stateFlag28
    if not localValue2 then
      localValue2 = cmgOperation7
      localValue3 = localValue1.position
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = notify
        localValue3 = "~r~This shower is already occupied by another player."
        -- Beginner: Show a notification to the player.
        localValue2(localValue3)
      else
        localValue2 = true
        stateFlag28 = localValue2
        localValue2 = Citizen
        localValue2 = localValue2.CreateThread

        -- === HELPER FUNCTION: localValue3() ===
        function localValue3()
          local localValue12, localValue22, localValue32
          localValue12 = createVector3
          localValue22 = localValue1.index
          localValue32 = localValue1.position
          localValue12(localValue22, localValue32)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue2(localValue3)
      end
    end
  end
end
eventHandler3 = pairs
cmgOperation8 = cmgOperation.showerCoords
eventHandler3, cmgOperation8, text15, dataCollection8 = eventHandler3(cmgOperation8)
for number22, number23 in eventHandler3, cmgOperation8, text15, dataCollection8 do
  cmgOperation9 = CMG
  cmgOperation9 = cmgOperation9.createArea
  dataCollection9 = "prisonshower_"
  stringHelper2 = tostring
  dataCollection10 = number22
  stringHelper2 = stringHelper2(dataCollection10)
  dataCollection9 = dataCollection9 .. stringHelper2
  stringHelper2 = number23.xyz
  dataCollection10 = 1.5
  number24 = 2.0
  workingValue18 = dataCollection7

  -- === HELPER FUNCTION: eventHandlerRegistration2() ===
  function eventHandlerRegistration2()
    local localValue1, localValue2
  end
  text17 = number21
  dataCollection11 = {}
  dataCollection11.index = number22
  dataCollection11.position = number23
  -- Beginner: Create an interaction area around a world position.
  cmgOperation9(dataCollection9, stringHelper2, dataCollection10, number24, workingValue18, eventHandlerRegistration2, text17, dataCollection11)
end
eventHandler3 = RegisterNetEvent
cmgOperation8 = "c5158af8ec"
-- Beginner: this function handles network event "c5158af8ec".

-- === HELPER FUNCTION (decompiler name: text15; parameters: localValue1) ===
function text15(localValue1)
  local localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection, number6
  localValue2 = cmgOperation.showerCoords
  localValue2 = localValue2[localValue1]
  localValue3 = {}
  number19 = 1
  number20 = 8
  stateFlag29 = 1
  for stateFlag31 = number19, number20, stateFlag29 do
    number25 = CMG
    number25 = number25.loadPtfx
    number27 = "core"
    number25(number27)
    number25 = StartParticleFxLoopedAtCoord
    number27 = "ent_sht_water"
    number29 = localValue2.x
    cmgOperation2 = localValue2.y
    text = localValue2.z
    text = text + 1.55
    number = 0.0
    number2 = 0.0
    stringHelper = 0.0
    text5 = 1.0
    number3 = false
    number4 = false
    dataCollection = false
    number6 = false
    number25 = number25(number27, number29, cmgOperation2, text, number, number2, stringHelper, text5, number3, number4, dataCollection, number6)
    number27 = table
    number27 = number27.insert
    number29 = localValue3
    cmgOperation2 = number25
    number27(number29, cmgOperation2)
    number27 = Citizen
    number27 = number27.Wait
    number29 = 2500
    number27(number29)
  end
  number19 = pairs
  number20 = localValue3
  number19, number20, stateFlag29, stateFlag31 = number19(number20)
  for number25, number27 in number19, number20, stateFlag29, stateFlag31 do
    number29 = StopParticleFxLooped
    cmgOperation2 = number27
    text = false
    number29(cmgOperation2, text)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c5158af8ec".
eventHandler3(cmgOperation8, text15)
eventHandler3 = RegisterNetEvent
cmgOperation8 = "fc2357d33e"
-- Beginner: this function handles network event "fc2357d33e".

-- === HELPER FUNCTION (decompiler name: text15; parameters: localValue1) ===
function text15(localValue1)
  local localValue2, localValue3
  localValue2 = stateFlag21
  if localValue2 then
    if localValue1 then
      localValue2 = stateFlag22
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.enablePunching
        localValue3 = true
        localValue2(localValue3)
        localValue2 = workingValue14
        localValue2()
    end
    elseif not localValue1 then
      localValue2 = stateFlag22
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.enablePunching
        localValue3 = false
        localValue2(localValue3)
        localValue2 = workingValue15
        localValue2()
      end
    end
  end
  stateFlag22 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fc2357d33e".
eventHandler3(cmgOperation8, text15)

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2, localValue3, number19, number20
  localValue1 = globalInPrison
  if localValue1 then
    localValue1 = stateFlag22
    if not localValue1 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue1 = CMG
  localValue1 = localValue1.getTakeHostagePlayerAndType
  localValue1, localValue2 = localValue1()
  if not localValue1 or "agressor" ~= localValue2 then
    return
  end
  localValue3 = drawNativeNotification
  number19 = "Press ~INPUT_CONTEXT_SECONDARY~ to start a riot"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue3(number19)
  localValue3 = IsControlJustPressed
  number19 = 0
  number20 = 52
  localValue3 = localValue3(number19, number20)
  if localValue3 then
    localValue3 = TriggerServerEvent
    number19 = "dd273ed7d1"
    number20 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dd273ed7d1".
    localValue3(number19, number20)
  end
end
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.createArea
text15 = "prisonRiotInitLocation"
dataCollection8 = cmgOperation.prisonMainCoords
number22 = 400.0
number23 = 5.0

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
function cmgOperation9()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: none) ===
function dataCollection9()
  local localValue1, localValue2
end
stringHelper2 = eventHandler3
dataCollection10 = {}
-- Beginner: Create an interaction area around a world position.
cmgOperation8(text15, dataCollection8, number22, number23, cmgOperation9, dataCollection9, stringHelper2, dataCollection10)
cmgOperation8 = RegisterNetEvent
text15 = "a91c36f550"
-- Beginner: this function handles network event "a91c36f550".

-- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: localValue1) ===
function dataCollection8(localValue1)
  local localValue2, localValue3, number19, number20
  number17 = localValue1
  localValue2 = number17
  if 0 ~= localValue2 then
    localValue2 = cmgOperation.segregationAreas
    localValue3 = number17
    localValue2 = localValue2[localValue3]
    localValue3 = CMG
    localValue3 = localValue3.teleport
    number19 = localValue2
    number20 = false
    localValue3(number19, number20)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a91c36f550".
cmgOperation8(text15, dataCollection8)
cmgOperation8 = RegisterNetEvent
text15 = "ee56a72a5a"
-- Beginner: this function handles network event "ee56a72a5a".

-- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: localValue1) ===
function dataCollection8(localValue1)
  local localValue2, localValue3
  if localValue1 then
    localValue2 = stateFlag24
    if localValue2 then
      localValue2 = false
      stateFlag24 = localValue2
    end
  end
  if localValue1 then
    localValue2 = stateFlag23
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.setCanOpenPhone
      localValue3 = true
      localValue2(localValue3)
      localValue2 = false
      stateFlag23 = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ee56a72a5a".
cmgOperation8(text15, dataCollection8)
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.registerDevMenuItems
text15 = "Prison"

-- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: none) ===
function dataCollection8()
  local localValue1, localValue2, localValue3, number19, number20
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Test Cinematic"
  localValue3 = "Plays the cinematic of driving from the cell to the prison"
  number19 = true

  -- === HELPER FUNCTION (decompiler name: number20; parameters: localValue12, localValue22, localValue32) ===
  function number20(localValue12, localValue22, localValue32)
    local stateFlag25, stateFlag27, stateFlag30
    if localValue32 then
      stateFlag25 = TriggerEvent
      stateFlag27 = "c1a91c4aaa"
      stateFlag30 = 1
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c1a91c4aaa".
      stateFlag25(stateFlag27, stateFlag30)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, number19, number20)
end
cmgOperation8(text15, dataCollection8)
cmgOperation8 = AddEventHandler
text15 = "62fa42ee34"
-- Beginner: this function runs when client event "62fa42ee34" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: localValue1) ===
function dataCollection8(localValue1)
  local localValue2, localValue3
  if "HMP Training Grounds" == localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "82dc3b07c6"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "82dc3b07c6".
    localValue2(localValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "62fa42ee34".
cmgOperation8(text15, dataCollection8)
cmgOperation8 = {}
text15 = nil
dataCollection8 = false
number22 = 1885233650
number23 = 1672152130
cmgOperation9 = {}
cmgOperation9.version = 2
cmgOperation9.modelHash = 1885233650
cmgOperation9.build = 3258
dataCollection9 = {}
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataCollection9[1] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 7
dataCollection9[2] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = "Male_freemode_mpLTS"
stringHelper2.collectionIndex = 0
dataCollection9[3] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = "mp_m_clothing"
stringHelper2.collectionIndex = 48
dataCollection9[4] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataCollection9[5] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = "Male_Heist"
stringHelper2.collectionIndex = 0
dataCollection9[6] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataCollection9[7] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 15
dataCollection9[8] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 8
stringHelper2.collectionName = "mp_m_factions"
stringHelper2.collectionIndex = 17
dataCollection9[9] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataCollection9[10] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 1
stringHelper2.collectionName = "mp_m_factions"
stringHelper2.collectionIndex = 27
dataCollection9[11] = stringHelper2
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 0
dataCollection9[0] = stringHelper2
cmgOperation9.components = dataCollection9
dataCollection9 = {}
stringHelper2 = {}
stringHelper2.textureIndex = 0
stringHelper2.collectionName = ""
stringHelper2.collectionIndex = 6
dataCollection9[1] = stringHelper2
cmgOperation9.props = dataCollection9

-- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: none) ===
function dataCollection9()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31
  localValue1 = false
  dataCollection8 = localValue1
  localValue1 = 1
  localValue2 = cmgOperation8
  localValue2 = #localValue2
  localValue3 = 1
  for number19 = localValue1, localValue2, localValue3 do
    number20 = cmgOperation8
    number20 = number20[number19]
    if number20 then
      stateFlag29 = DoesEntityExist
      stateFlag31 = number20
      stateFlag29 = stateFlag29(stateFlag31)
      if stateFlag29 then
        stateFlag29 = DeleteEntity
        stateFlag31 = number20
        -- Beginner: Delete a GTA entity.
        stateFlag29(stateFlag31)
      end
    end
    stateFlag29 = cmgOperation8
    stateFlag29[number19] = nil
  end
end

-- === HELPER FUNCTION: stringHelper2() ===
function stringHelper2()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2
  localValue1 = text15
  if not localValue1 then
    localValue1 = AddRelationshipGroup
    localValue2 = "aiPrisonGuards"
    localValue1, localValue2 = localValue1(localValue2)
    text15 = localValue2
  end
  localValue1 = RequestModel
  localValue2 = number22
  localValue1(localValue2)
  while true do
    localValue1 = HasModelLoaded
    localValue2 = number22
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = 1
  localValue2 = cmgOperation.aiPrisonGuardSpawns
  localValue2 = #localValue2
  localValue3 = 1
  for number19 = localValue1, localValue2, localValue3 do
    number20 = cmgOperation.aiPrisonGuardSpawns
    number20 = number20[number19]
    number20 = number20.coords
    stateFlag29 = CreatePed
    stateFlag31 = 30
    number25 = number22
    number27 = number20.x
    number29 = number20.y
    cmgOperation2 = number20.z
    text = 0.0
    number = false
    number2 = false
    -- Beginner: result below is pedEntity.
    stateFlag29 = stateFlag29(stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2)
    while true do
      stateFlag31 = DoesEntityExist
      number25 = stateFlag29
      stateFlag31 = stateFlag31(number25)
      if stateFlag31 then
        break
      end
      stateFlag31 = Citizen
      stateFlag31 = stateFlag31.Wait
      number25 = 0
      stateFlag31(number25)
    end
    stateFlag31 = SetEntityAsMissionEntity
    number25 = stateFlag29
    number27 = true
    number29 = true
    stateFlag31(number25, number27, number29)
    stateFlag31 = SetEntityInvincible
    number25 = stateFlag29
    number27 = true
    stateFlag31(number25, number27)
    stateFlag31 = SetPedRelationshipGroupHash
    number25 = stateFlag29
    number27 = text15
    stateFlag31(number25, number27)
    stateFlag31 = SetPedDropsWeaponsWhenDead
    number25 = stateFlag29
    number27 = false
    stateFlag31(number25, number27)
    stateFlag31 = SetPedAccuracy
    number25 = stateFlag29
    number27 = 100
    stateFlag31(number25, number27)
    stateFlag31 = SetPedArmour
    number25 = stateFlag29
    number27 = 100
    stateFlag31(number25, number27)
    stateFlag31 = GiveWeaponToPed
    number25 = stateFlag29
    number27 = number23
    number29 = 9999
    cmgOperation2 = false
    text = true
    stateFlag31(number25, number27, number29, cmgOperation2, text)
    stateFlag31 = "{\"eyebrow\":18,\"dadmumpercent\":4,\"skinproblem\":0,\"hairtint\":0,\"facepaints\":0,\"dad\":12,\"eyeshadowcolour\":0,\"hair\":2,\"beard\":14,\"facepaintscolour\":0,\"eyeshadow\":0,\"beardopacity\":3,\"acne\":1,\"mum\":27,\"lipstick\":0,\"wrinkle\":0,\"haircolor\":0,\"freckle\":0,\"eyebrowopacity\":17,\"eyecolor\":5,\"wrinkleopacity\":0,\"beardcolor\":0,\"skin\":0,\"lipstickcolour\":0}"
    number25 = TriggerEvent
    number27 = "daf420849d"
    number29 = stateFlag31
    cmgOperation2 = stateFlag31
    text = stateFlag29
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "daf420849d".
    number25(number27, number29, cmgOperation2, text)
    number25 = tCMG
    number25 = number25.setPedCustomization
    number27 = stateFlag29
    number29 = cmgOperation9
    number25(number27, number29)
    number25 = cmgOperation8
    number25[number19] = stateFlag29
  end
  localValue1 = SetModelAsNoLongerNeeded
  localValue2 = number22
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: dataCollection10; parameters: none) ===
function dataCollection10()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text
  localValue1 = cmgOperation8
  localValue1 = #localValue1
  if 0 == localValue1 then
    localValue1 = stringHelper2
    localValue1()
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetPedRelationshipGroupHash
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = text15
  if not localValue3 then
    return
  end
  localValue3 = 1
  number19 = cmgOperation8
  number19 = #number19
  number20 = 1
  for stateFlag29 = localValue3, number19, number20 do
    stateFlag31 = cmgOperation8
    stateFlag31 = stateFlag31[stateFlag29]
    if stateFlag31 then
      number25 = DoesEntityExist
      number27 = stateFlag31
      number25 = number25(number27)
      if number25 then
        number25 = SetEntityInvincible
        number27 = stateFlag31
        number29 = true
        number25(number27, number29)
        number25 = SetPedRelationshipGroupHash
        number27 = stateFlag31
        number29 = text15
        number25(number27, number29)
        number25 = SetPedDropsWeaponsWhenDead
        number27 = stateFlag31
        number29 = false
        number25(number27, number29)
        number25 = SetPedAccuracy
        number27 = stateFlag31
        number29 = 100
        number25(number27, number29)
      end
    end
  end
  localValue3 = rageUiOperation6
  localValue3 = localValue3()
  if localValue3 then
    return
  end
  localValue3 = IsPedInAnyHeli
  number19 = localValue1
  localValue3 = localValue3(number19)
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.hasClientPermission
    number19 = "nhs.onduty.permission"
    localValue3 = localValue3(number19)
    if not localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.hasClientPermission
      number19 = "police.onduty.permission"
      localValue3 = localValue3(number19)
      if not localValue3 then
        localValue3 = CMG
        localValue3 = localValue3.hasClientPermission
        number19 = "prisonguard.onduty.permission"
        localValue3 = localValue3(number19)
        if not localValue3 then
          localValue3 = ClearRelationshipBetweenGroups
          number19 = 0
          number20 = text15
          stateFlag29 = localValue2
          localValue3(number19, number20, stateFlag29)
          localValue3 = ClearRelationshipBetweenGroups
          number19 = 0
          number20 = localValue2
          stateFlag29 = text15
          localValue3(number19, number20, stateFlag29)
          localValue3 = 1
          number19 = cmgOperation8
          number19 = #number19
          number20 = 1
          for stateFlag29 = localValue3, number19, number20 do
            stateFlag31 = cmgOperation8
            stateFlag31 = stateFlag31[stateFlag29]
            if stateFlag31 then
              number25 = DoesEntityExist
              number27 = stateFlag31
              number25 = number25(number27)
              if number25 then
                number25 = TaskCombatPed
                number27 = stateFlag31
                number29 = localValue1
                cmgOperation2 = 0
                text = 16
                number25(number27, number29, cmgOperation2, text)
              end
            end
          end
      end
    end
  end
  else
    localValue3 = SetRelationshipBetweenGroups
    number19 = 0
    number20 = text15
    stateFlag29 = localValue2
    localValue3(number19, number20, stateFlag29)
    localValue3 = SetRelationshipBetweenGroups
    number19 = 0
    number20 = localValue2
    stateFlag29 = text15
    localValue3(number19, number20, stateFlag29)
  end
end

-- === HELPER FUNCTION (decompiler name: number24; parameters: none) ===
function number24()
  local localValue1, localValue2
  localValue1 = dataCollection9
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = rageUiOperation6
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = text15
    if localValue2 then
      localValue2 = cmgOperation8
      localValue2 = #localValue2
      if localValue2 > 0 then
        localValue2 = GetPedRelationshipGroupHash
        localValue3 = localValue1
        localValue2 = localValue2(localValue3)
        localValue3 = SetRelationshipBetweenGroups
        number19 = 0
        number20 = text15
        stateFlag29 = localValue2
        localValue3(number19, number20, stateFlag29)
        localValue3 = SetRelationshipBetweenGroups
        number19 = 0
        number20 = localValue2
        stateFlag29 = text15
        localValue3(number19, number20, stateFlag29)
        localValue3 = 1
        number19 = cmgOperation8
        number19 = #number19
        number20 = 1
        for stateFlag29 = localValue3, number19, number20 do
          stateFlag31 = cmgOperation8
          stateFlag31 = stateFlag31[stateFlag29]
          if stateFlag31 then
            number25 = DoesEntityExist
            number27 = stateFlag31
            number25 = number25(number27)
            if number25 then
              number25 = RemoveWeaponFromPed
              number27 = stateFlag31
              number29 = number23
              number25(number27, number29)
              number25 = ClearPedTasksImmediately
              number27 = stateFlag31
              number25(number27)
            end
          end
        end
        localValue3 = true
        dataCollection8 = localValue3
      end
    end
    return
  end
  localValue2 = dataCollection8
  if localValue2 then
    localValue2 = 1
    localValue3 = cmgOperation8
    localValue3 = #localValue3
    number19 = 1
    for number20 = localValue2, localValue3, number19 do
      stateFlag29 = cmgOperation8
      stateFlag29 = stateFlag29[number20]
      if stateFlag29 then
        stateFlag31 = DoesEntityExist
        number25 = stateFlag29
        stateFlag31 = stateFlag31(number25)
        if stateFlag31 then
          stateFlag31 = GiveWeaponToPed
          number25 = stateFlag29
          number27 = number23
          number29 = 9999
          cmgOperation2 = false
          text = true
          stateFlag31(number25, number27, number29, cmgOperation2, text)
        end
      end
    end
    localValue2 = false
    dataCollection8 = localValue2
  end
  localValue2 = IsPedInAnyHeli
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "nhs.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "police.onduty.permission"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.hasClientPermission
        localValue3 = "prisonguard.onduty.permission"
        localValue2 = localValue2(localValue3)
        if not localValue2 then
          localValue2 = text15
          if not localValue2 then
            return
          end
          localValue2 = ClearRelationshipBetweenGroups
          localValue3 = 0
          number19 = text15
          number20 = GetPedRelationshipGroupHash
          stateFlag29 = localValue1
          number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text = number20(stateFlag29)
          localValue2(localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text)
          localValue2 = ClearRelationshipBetweenGroups
          localValue3 = 0
          number19 = GetPedRelationshipGroupHash
          number20 = localValue1
          number19 = number19(number20)
          number20 = text15
          localValue2(localValue3, number19, number20)
          localValue2 = 1
          localValue3 = cmgOperation8
          localValue3 = #localValue3
          number19 = 1
          for number20 = localValue2, localValue3, number19 do
            stateFlag29 = cmgOperation8
            stateFlag29 = stateFlag29[number20]
            if stateFlag29 then
              stateFlag31 = DoesEntityExist
              number25 = stateFlag29
              stateFlag31 = stateFlag31(number25)
              if stateFlag31 then
                stateFlag31 = TaskCombatPed
                number25 = stateFlag29
                number27 = localValue1
                number29 = 0
                cmgOperation2 = 16
                stateFlag31(number25, number27, number29, cmgOperation2)
              end
            end
          end
      end
    end
  end
  else
    localValue2 = 1
    localValue3 = cmgOperation8
    localValue3 = #localValue3
    number19 = 1
    for number20 = localValue2, localValue3, number19 do
      stateFlag29 = cmgOperation8
      stateFlag29 = stateFlag29[number20]
      if stateFlag29 then
        stateFlag31 = DoesEntityExist
        number25 = stateFlag29
        stateFlag31 = stateFlag31(number25)
        if stateFlag31 then
          stateFlag31 = ClearPedTasks
          number25 = stateFlag29
          stateFlag31(number25)
        end
      end
    end
  end
end
eventHandlerRegistration2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text17; parameters: none) ===
function text17()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  localValue2 = "prisonGuardShoot"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.createArea
  localValue2 = "prisonGuardShoot"
  localValue3 = cmgOperation.prisonMainCoords
  number19 = 250.0
  number20 = 300.0
  stateFlag29 = dataCollection10
  stateFlag31 = number24
  number25 = workingValue18
  number27 = {}
  -- Beginner: Create an interaction area around a world position.
  localValue1(localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration2(text17)
eventHandlerRegistration2 = AddEventHandler
text17 = "onClientResourceStop"
-- Beginner: this function runs when client event "onClientResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection11; parameters: localValue1) ===
function dataCollection11(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = dataCollection9
    localValue2()
    localValue2 = nil
    text15 = localValue2
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onClientResourceStop".
eventHandlerRegistration2(text17, dataCollection11)
eventHandlerRegistration2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text17; parameters: none) ===
function text17()
  local localValue1, localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27, number29, cmgOperation2, text, number, number2
  localValue1 = pairs
  localValue2 = cmgOperation.staticPrisonProps
  localValue1, localValue2, localValue3, number19 = localValue1(localValue2)
  for number20, stateFlag29 in localValue1, localValue2, localValue3, number19 do
    stateFlag31 = CMG
    stateFlag31 = stateFlag31.loadModel
    number25 = stateFlag29.model
    -- Beginner: Request/load a GTA model before spawning or applying it.
    stateFlag31(number25)
    stateFlag31 = CreateObjectNoOffset
    number25 = stateFlag29.model
    number27 = stateFlag29.position
    number27 = number27.x
    number29 = stateFlag29.position
    number29 = number29.y
    cmgOperation2 = stateFlag29.position
    cmgOperation2 = cmgOperation2.z
    text = false
    number = false
    number2 = false
    -- Beginner: result below is objectEntity.
    stateFlag31 = stateFlag31(number25, number27, number29, cmgOperation2, text, number, number2)
    stateFlag29.Id = stateFlag31
    stateFlag31 = FreezeEntityPosition
    number25 = stateFlag29.Id
    number27 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag31(number25, number27)
    stateFlag31 = SetEntityHeading
    number25 = stateFlag29.Id
    number27 = stateFlag29.heading
    -- Beginner: Change the direction an entity is facing.
    stateFlag31(number25, number27)
  end
  localValue1 = workingValue10
  localValue1()
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration2(text17)
eventHandlerRegistration2 = AddEventHandler
text17 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection11; parameters: localValue1) ===
function dataCollection11(localValue1)
  local localValue2, localValue3, number19, number20, stateFlag29, stateFlag31, number25, number27
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = pairs
    localValue3 = cmgOperation.staticPrisonProps
    localValue2, localValue3, number19, number20 = localValue2(localValue3)
    for stateFlag29, stateFlag31 in localValue2, localValue3, number19, number20 do
      number25 = stateFlag31.Id
      if number25 then
        number25 = DeleteObject
        number27 = stateFlag31.Id
        number25(number27)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandlerRegistration2(text17, dataCollection11)
