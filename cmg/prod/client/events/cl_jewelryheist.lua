--[[
    LEVEL 1 BEGINNER GUIDE — Jewelryheist
    ==========================================

    File: cmg/prod/client/events/cl_jewelryheist.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Jewelryheist feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 54
      * Background threads: 0
      * Always-running loops: 17
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
local cmgOperation, stateFlag12, stateFlag19, stateFlag21, workingValue4, number11, number12, workingValue7, workingValue8, dataCollection6, stateFlag, stateFlag2, dataCollection, dataCollection3, dataCollection4, eventHandler, dataCollection5, workingValue, eventHandler2, cmgOperation2, workingValue2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
stateFlag12 = "cfg/cfg_jewelryHeist"
-- Beginner: result below is config.
cmgOperation = cmgOperation(stateFlag12)
stateFlag12 = false
stateFlag19 = false
stateFlag21 = false
workingValue4 = nil
number11 = 0
number12 = 0
workingValue7 = nil
workingValue8 = nil
dataCollection6 = {}
stateFlag = false
stateFlag2 = false
dataCollection = {}
dataCollection3 = {}
dataCollection3.label = "Confirm Selections"
dataCollection3.button = "~INPUT_CELLPHONE_EXTRA_OPTION~"
dataCollection4 = {}
dataCollection4.label = "Select"
dataCollection4.button = "~INPUT_CELLPHONE_SELECT~"
eventHandler = {}
eventHandler.label = "Next Cell"
eventHandler.button = "~INPUT_CELLPHONE_RIGHT~"
dataCollection5 = {}
dataCollection5.label = "Previous Cell"
dataCollection5.button = "~INPUT_CELLPHONE_LEFT~"
dataCollection[1] = dataCollection3
dataCollection[2] = dataCollection4
dataCollection[3] = eventHandler
dataCollection[4] = dataCollection5
dataCollection3 = {}
dataCollection4 = {}
dataCollection4.label = "Select"
dataCollection4.button = "~INPUT_ATTACK~"
dataCollection3[1] = dataCollection4

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2
  localValue2 = nil
  if "door" == localValue1 then
    localValue2 = dataCollection
  else
    localValue2 = dataCollection3
  end
  localValue3 = RequestScaleformMovie
  waitCall = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  localValue3 = localValue3(waitCall)
  while true do
    waitCall = HasScaleformMovieLoaded
    number10 = localValue3
    waitCall = waitCall(number10)
    if waitCall then
      break
    end
    waitCall = Wait
    number10 = 0
    waitCall(number10)
  end
  waitCall = BeginScaleformMovieMethod
  number10 = localValue3
  text4 = "CLEAR_ALL"
  waitCall(number10, text4)
  waitCall = BeginScaleformMovieMethod
  number10 = localValue3
  text4 = "TOGGLE_MOUSE_BUTTONS"
  waitCall(number10, text4)
  waitCall = ScaleformMovieMethodAddParamBool
  number10 = false
  waitCall(number10)
  waitCall = EndScaleformMovieMethod
  waitCall()
  waitCall = ipairs
  number10 = localValue2
  waitCall, number10, text4, number13 = waitCall(number10)
  for number14, number15 in waitCall, number10, text4, number13 do
    workingValue9 = BeginScaleformMovieMethod
    text = localValue3
    text2 = "SET_DATA_SLOT"
    workingValue9(text, text2)
    workingValue9 = ScaleformMovieMethodAddParamInt
    text = number14 - 1
    workingValue9(text)
    workingValue9 = _ENV
    text = "ScaleformMovieMethodAddParamPlayerNameString"
    workingValue9 = workingValue9[text]
    text = number15.button
    workingValue9(text)
    workingValue9 = _ENV
    text = "ScaleformMovieMethodAddParamTextureNameString"
    workingValue9 = workingValue9[text]
    text = number15.label
    workingValue9(text)
    workingValue9 = EndScaleformMovieMethod
    workingValue9()
  end
  waitCall = BeginScaleformMovieMethod
  number10 = localValue3
  text4 = "DRAW_INSTRUCTIONAL_BUTTONS"
  waitCall(number10, text4)
  waitCall = ScaleformMovieMethodAddParamInt
  number10 = -1
  waitCall(number10)
  waitCall = EndScaleformMovieMethod
  waitCall()
  while true do
    waitCall = stateFlag2
    if not waitCall then
      break
    end
    waitCall = Wait
    number10 = 0
    waitCall(number10)
    waitCall = DrawScaleformMovieFullscreen
    number10 = localValue3
    text4 = 255
    number13 = 255
    number14 = 255
    number15 = 255
    workingValue9 = 0
    waitCall(number10, text4, number13, number14, number15, workingValue9)
  end
  waitCall = SetScaleformMovieAsNoLongerNeeded
  number10 = localValue3
  waitCall(number10)
end
eventHandler = RegisterNetEvent
dataCollection5 = "467e878893"
-- Beginner: this function handles network event "467e878893".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2
  stateFlag19 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "467e878893".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "4ad99ff8df"
-- Beginner: this function handles network event "4ad99ff8df".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6
  localValue2 = tCMG
  localValue2 = localValue2.addMarker
  localValue3 = localValue1.coords
  localValue3 = localValue3.x
  waitCall = localValue1.coords
  waitCall = waitCall.y
  number10 = localValue1.coords
  number10 = number10.z
  number10 = number10 - 0.35
  text4 = 0.3
  number13 = 0.3
  number14 = 0.3
  number15 = 255
  workingValue9 = 255
  text = 255
  text2 = 200
  dataCollection2 = 30
  number = 0
  stateFlag3 = false
  stateFlag4 = true
  stateFlag6 = false
  localValue2 = localValue2(localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6)
  number11 = localValue2
  localValue2 = AddBlipForRadius
  localValue3 = localValue1.coords
  localValue3 = localValue3.x
  waitCall = math
  waitCall = waitCall.random
  number10 = -15
  text4 = 15
  waitCall = waitCall(number10, text4)
  localValue3 = localValue3 + waitCall
  waitCall = localValue1.coords
  waitCall = waitCall.y
  number10 = math
  number10 = number10.random
  text4 = -15
  number13 = 15
  number10 = number10(text4, number13)
  waitCall = waitCall + number10
  number10 = localValue1.coords
  number10 = number10.z
  text4 = 20.0
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(localValue3, waitCall, number10, text4)
  workingValue4 = localValue2
  localValue2 = SetBlipColour
  localValue3 = workingValue4
  waitCall = 1
  localValue2(localValue3, waitCall)
  localValue2 = SetBlipAlpha
  localValue3 = workingValue4
  waitCall = 200
  localValue2(localValue3, waitCall)

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22
    localValue12 = drawNativeNotification
    localValue22 = "Press ~INPUT_CONTEXT~ to collect the device"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(localValue22)
  end

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22
  end

  -- === HELPER FUNCTION: waitCall() ===
  function waitCall()
    local localValue12, localValue22, text3, workingValue3, workingValue5, workingValue6, text5, text6, position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14, number6, number7, number8, number9
    localValue12 = IsControlJustPressed
    localValue22 = 0
    text3 = 38
    localValue12 = localValue12(localValue22, text3)
    if localValue12 then
      localValue12 = stateFlag21
      if not localValue12 then
        localValue12 = tCMG
        localValue12 = localValue12.notify
        localValue22 = "~g~Collecting..."
        -- Beginner: Show a notification to the player.
        localValue12(localValue22)
        localValue12 = true
        stateFlag21 = localValue12
        localValue12 = "anim@heists@ornate_bank@hack"
        localValue22 = RequestAnimDict
        text3 = localValue12
        localValue22(text3)
        localValue22 = RequestModel
        text3 = "hei_prop_hst_laptop"
        localValue22(text3)
        localValue22 = RequestModel
        text3 = "hei_p_m_bag_var22_arm_s"
        localValue22(text3)
        localValue22 = RequestModel
        text3 = "hei_prop_heist_card_hack_02"
        localValue22(text3)
        while true do
          localValue22 = HasAnimDictLoaded
          text3 = localValue12
          localValue22 = localValue22(text3)
          if localValue22 then
            localValue22 = HasModelLoaded
            text3 = "hei_prop_hst_laptop"
            localValue22 = localValue22(text3)
            if localValue22 then
              localValue22 = HasModelLoaded
              text3 = "hei_p_m_bag_var22_arm_s"
              localValue22 = localValue22(text3)
              if localValue22 then
                localValue22 = HasModelLoaded
                text3 = "hei_prop_heist_card_hack_02"
                localValue22 = localValue22(text3)
                if localValue22 then
                  break
                end
              end
            end
          end
          localValue22 = Citizen
          localValue22 = localValue22.Wait
          text3 = 100
          localValue22(text3)
        end
        localValue22 = CMG
        localValue22 = localValue22.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue22 = localValue22()
        text3 = GetEntityCoords
        workingValue3 = localValue22
        -- Beginner: result below is entityCoords.
        text3 = text3(workingValue3)
        workingValue3 = GetEntityRotation
        workingValue5 = localValue22
        workingValue3 = workingValue3(workingValue5)
        workingValue5 = GetAnimInitialOffsetPosition
        workingValue6 = localValue12
        text5 = "hack_enter"
        text6 = localValue1.coords
        text6 = text6.x
        position5 = localValue1.coords
        position5 = position5.y
        position6 = localValue1.coords
        position6 = position6.z
        position6 = position6 + 0.692
        position = localValue1.coords
        position = position.x
        position2 = localValue1.coords
        position2 = position2.y
        position3 = localValue1.coords
        position3 = position3.z
        position3 = position3 + 0.692
        number2 = 0
        number3 = 2
        workingValue5 = workingValue5(workingValue6, text5, text6, position5, position6, position, position2, position3, number2, number3)
        workingValue6 = GetAnimInitialOffsetPosition
        text5 = localValue12
        text6 = "hack_loop"
        position5 = localValue1.coords
        position5 = position5.x
        position6 = localValue1.coords
        position6 = position6.y
        position = localValue1.coords
        position = position.z
        position = position + 0.692
        position2 = localValue1.coords
        position2 = position2.x
        position3 = localValue1.coords
        position3 = position3.y
        number2 = localValue1.coords
        number2 = number2.z
        number2 = number2 + 0.692
        number3 = 0
        stateFlag5 = 2
        workingValue6 = workingValue6(text5, text6, position5, position6, position, position2, position3, number2, number3, stateFlag5)
        text5 = GetAnimInitialOffsetPosition
        text6 = localValue12
        position5 = "hack_exit"
        position6 = localValue1.coords
        position6 = position6.x
        position = localValue1.coords
        position = position.y
        position2 = localValue1.coords
        position2 = position2.z
        position2 = position2 + 0.692
        position3 = localValue1.coords
        position3 = position3.x
        number2 = localValue1.coords
        number2 = number2.y
        number3 = localValue1.coords
        number3 = number3.z
        number3 = number3 + 0.692
        stateFlag5 = 0
        stateFlag7 = 2
        text5 = text5(text6, position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7)
        text6 = FreezeEntityPosition
        position5 = localValue22
        position6 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        text6(position5, position6)
        text6 = SetEntityHeading
        position5 = CMG
        position5 = position5.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        position5 = position5()
        position6 = localValue1.h
        -- Beginner: Change the direction an entity is facing.
        text6(position5, position6)
        text6 = NetworkCreateSynchronisedScene
        position5 = workingValue5.x
        position6 = workingValue5.y
        position = workingValue5.z
        position2 = workingValue3.x
        position3 = workingValue3.y
        number2 = workingValue3.z
        number3 = 2
        stateFlag5 = false
        stateFlag7 = false
        stateFlag8 = 1065353216
        number5 = 0
        stateFlag11 = 1.3
        text6 = text6(position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11)
        position5 = CMG
        position5 = position5.requestEntitySpawn
        position6 = "jewelryheist_bag"
        position5(position6)
        position5 = CreateObject
        position6 = GetHashKey
        position = "hei_p_m_bag_var22_arm_s"
        -- Beginner: result below is hash.
        position6 = position6(position)
        position = text3.x
        position2 = text3.y
        position3 = text3.z
        number2 = true
        number3 = true
        stateFlag5 = false
        -- Beginner: result below is objectEntity.
        position5 = position5(position6, position, position2, position3, number2, number3, stateFlag5)
        position6 = CMG
        position6 = position6.requestEntitySpawn
        position = "jewelryheist_laptop"
        position6(position)
        position6 = CreateObject
        position = GetHashKey
        position2 = "hei_prop_hst_laptop"
        -- Beginner: result below is hash.
        position = position(position2)
        position2 = text3.x
        position3 = text3.y
        number2 = text3.z
        number3 = true
        stateFlag5 = true
        stateFlag7 = false
        -- Beginner: result below is objectEntity.
        position6 = position6(position, position2, position3, number2, number3, stateFlag5, stateFlag7)
        position = CMG
        position = position.requestEntitySpawn
        position2 = "jewelryheist_card"
        position(position2)
        position = CreateObject
        position2 = GetHashKey
        position3 = "hei_prop_heist_card_hack_02"
        -- Beginner: result below is hash.
        position2 = position2(position3)
        position3 = text3.x
        number2 = text3.y
        number3 = text3.z
        stateFlag5 = true
        stateFlag7 = true
        stateFlag8 = false
        -- Beginner: result below is objectEntity.
        position = position(position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8)
        position2 = SetModelAsNoLongerNeeded
        position3 = -676527372
        position2(position3)
        position2 = SetModelAsNoLongerNeeded
        position3 = -944468481
        position2(position3)
        position2 = SetModelAsNoLongerNeeded
        position3 = -411901183
        position2(position3)
        position2 = NetworkAddPedToSynchronisedScene
        position3 = localValue22
        number2 = text6
        number3 = localValue12
        stateFlag5 = "hack_enter"
        stateFlag7 = 1.5
        stateFlag8 = -4.0
        number5 = 1
        stateFlag11 = 16
        stateFlag14 = 1148846080
        number6 = 0
        position2(position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14, number6)
        position2 = NetworkAddEntityToSynchronisedScene
        position3 = position5
        number2 = text6
        number3 = localValue12
        stateFlag5 = "hack_enter_bag"
        stateFlag7 = 4.0
        stateFlag8 = -8.0
        number5 = 1
        position2(position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
        position2 = NetworkAddEntityToSynchronisedScene
        position3 = position6
        number2 = text6
        number3 = localValue12
        stateFlag5 = "hack_enter_laptop"
        stateFlag7 = 4.0
        stateFlag8 = -8.0
        number5 = 1
        position2(position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
        position2 = NetworkAddEntityToSynchronisedScene
        position3 = position
        number2 = text6
        number3 = localValue12
        stateFlag5 = "hack_enter_card"
        stateFlag7 = 4.0
        stateFlag8 = -8.0
        number5 = 1
        position2(position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
        position2 = NetworkCreateSynchronisedScene
        position3 = workingValue6.x
        number2 = workingValue6.y
        number3 = workingValue6.z
        stateFlag5 = workingValue3.x
        stateFlag7 = workingValue3.y
        stateFlag8 = workingValue3.z
        number5 = 2
        stateFlag11 = false
        stateFlag14 = true
        number6 = 1065353216
        number7 = 0
        number8 = 1.3
        position2 = position2(position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14, number6, number7, number8)
        position3 = NetworkAddPedToSynchronisedScene
        number2 = localValue22
        number3 = position2
        stateFlag5 = localValue12
        stateFlag7 = "hack_loop"
        stateFlag8 = 1.5
        number5 = -4.0
        stateFlag11 = 1
        stateFlag14 = 16
        number6 = 1148846080
        number7 = 0
        position3(number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14, number6, number7)
        position3 = NetworkAddEntityToSynchronisedScene
        number2 = position5
        number3 = position2
        stateFlag5 = localValue12
        stateFlag7 = "hack_loop_bag"
        stateFlag8 = 4.0
        number5 = -8.0
        stateFlag11 = 1
        position3(number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11)
        position3 = NetworkAddEntityToSynchronisedScene
        number2 = position6
        number3 = position2
        stateFlag5 = localValue12
        stateFlag7 = "hack_loop_laptop"
        stateFlag8 = 4.0
        number5 = -8.0
        stateFlag11 = 1
        position3(number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11)
        position3 = NetworkAddEntityToSynchronisedScene
        number2 = position
        number3 = position2
        stateFlag5 = localValue12
        stateFlag7 = "hack_loop_card"
        stateFlag8 = 4.0
        number5 = -8.0
        stateFlag11 = 1
        position3(number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11)
        position3 = NetworkCreateSynchronisedScene
        number2 = text5.x
        number3 = text5.y
        stateFlag5 = text5.z
        stateFlag7 = workingValue3.x
        stateFlag8 = workingValue3.y
        number5 = workingValue3.z
        stateFlag11 = 2
        stateFlag14 = false
        number6 = false
        number7 = 1065353216
        number8 = 0
        number9 = 1.3
        position3 = position3(number2, number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14, number6, number7, number8, number9)
        number2 = NetworkAddPedToSynchronisedScene
        number3 = localValue22
        stateFlag5 = position3
        stateFlag7 = localValue12
        stateFlag8 = "hack_exit"
        number5 = 1.5
        stateFlag11 = -4.0
        stateFlag14 = 1
        number6 = 16
        number7 = 1148846080
        number8 = 0
        number2(number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14, number6, number7, number8)
        number2 = NetworkAddEntityToSynchronisedScene
        number3 = position5
        stateFlag5 = position3
        stateFlag7 = localValue12
        stateFlag8 = "hack_exit_bag"
        number5 = 4.0
        stateFlag11 = -8.0
        stateFlag14 = 1
        number2(number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14)
        number2 = NetworkAddEntityToSynchronisedScene
        number3 = position6
        stateFlag5 = position3
        stateFlag7 = localValue12
        stateFlag8 = "hack_exit_laptop"
        number5 = 4.0
        stateFlag11 = -8.0
        stateFlag14 = 1
        number2(number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14)
        number2 = NetworkAddEntityToSynchronisedScene
        number3 = position
        stateFlag5 = position3
        stateFlag7 = localValue12
        stateFlag8 = "hack_exit_card"
        number5 = 4.0
        stateFlag11 = -8.0
        stateFlag14 = 1
        number2(number3, stateFlag5, stateFlag7, stateFlag8, number5, stateFlag11, stateFlag14)
        number2 = NetworkStartSynchronisedScene
        number3 = text6
        number2(number3)
        number2 = NetworkStartSynchronisedScene
        number3 = position2
        number2(number3)
        number2 = NetworkStartSynchronisedScene
        number3 = position3
        number2(number3)
        number2 = Citizen
        number2 = number2.CreateThread

        -- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
        function number3()
          local serverEventCall, cmgOperation3, stateFlag20, position4
          serverEventCall = Wait
          cmgOperation3 = 20000
          serverEventCall(cmgOperation3)
          serverEventCall = TriggerServerEvent
          cmgOperation3 = "35d0aa7978"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "35d0aa7978".
          serverEventCall(cmgOperation3)
          serverEventCall = FreezeEntityPosition
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation3 = cmgOperation3()
          stateFlag20 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          serverEventCall(cmgOperation3, stateFlag20)
          serverEventCall = ClearPedTasks
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.getPlayerPed
          cmgOperation3, stateFlag20, position4 = cmgOperation3()
          serverEventCall(cmgOperation3, stateFlag20, position4)
          serverEventCall = tCMG
          serverEventCall = serverEventCall.teleport
          cmgOperation3 = localValue1.coords
          cmgOperation3 = cmgOperation3.x
          stateFlag20 = localValue1.coords
          stateFlag20 = stateFlag20.y
          position4 = localValue1.coords
          position4 = position4.z
          serverEventCall(cmgOperation3, stateFlag20, position4)
          serverEventCall = false
          stateFlag21 = serverEventCall
          serverEventCall = RemoveAnimDict
          cmgOperation3 = localValue12
          serverEventCall(cmgOperation3)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        number2(number3)
      end
    end
  end
  number10 = CMG
  number10 = number10.createArea
  text4 = "jewelry_collect_device"
  number13 = localValue1.coords
  number14 = 1.25
  number15 = 10
  workingValue9 = localValue2
  text = localValue3
  text2 = waitCall
  dataCollection2 = {}
  -- Beginner: Create an interaction area around a world position.
  number10(text4, number13, number14, number15, workingValue9, text, text2, dataCollection2)
  number10 = SetTimeout
  text4 = 600000

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local localValue12, localValue22
    localValue12 = tCMG
    localValue12 = localValue12.removeArea
    localValue22 = "jewelry_collect_device"
    localValue12(localValue22)
    localValue12 = tCMG
    localValue12 = localValue12.removeBlip
    localValue22 = workingValue4
    localValue12(localValue22)
  end
  number10(text4, number13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4ad99ff8df".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "bc45a4ab25"
-- Beginner: this function handles network event "bc45a4ab25".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  localValue2 = "jewelry_collect_device"
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.removeMarker
  localValue2 = number11
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.removeBlip
  localValue2 = workingValue4
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bc45a4ab25".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "310cd6d4da"
-- Beginner: this function handles network event "310cd6d4da".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, waitCall, number10, text4
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread
  -- Beginner: this function handles network event "310cd6d4da".

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22
    localValue12 = Wait
    localValue22 = 2500
    localValue12(localValue22)
    localValue12 = true
    stateFlag2 = localValue12
    localValue12 = dataCollection4
    localValue12()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCombatTimer
  localValue2 = 300
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = TriggerEvent
  localValue2 = "utk_fingerprint:Start"
  localValue3 = 4
  waitCall = 1
  number10 = 2

  -- === HELPER FUNCTION (decompiler name: text4; parameters: localValue12, localValue22) ===
  function text4(localValue12, localValue22)
    local text3, workingValue3, workingValue5
    if localValue12 then
      text3 = tCMG
      text3 = text3.notify
      workingValue3 = "~g~Succesfully hacked!"
      -- Beginner: Show a notification to the player.
      text3(workingValue3)
      text3 = TriggerServerEvent
      workingValue3 = "cd95eba9b2"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cd95eba9b2".
      text3(workingValue3)
    else
      text3 = tCMG
      text3 = text3.notify
      workingValue3 = "~r~Failed. Reason: "
      workingValue5 = localValue22
      workingValue3 = workingValue3 .. workingValue5
      -- Beginner: Show a notification to the player.
      text3(workingValue3)
    end
    text3 = false
    stateFlag2 = text3
    text3 = CMG
    text3 = text3.setPlayerCombatTimer
    workingValue3 = 300
    workingValue5 = false
    text3(workingValue3, workingValue5)
  end
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "utk_fingerprint:Start".
  localValue1(localValue2, localValue3, waitCall, number10, text4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "310cd6d4da".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "260aad147f"
-- Beginner: this function handles network event "260aad147f".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread
  -- Beginner: this function handles network event "260aad147f".

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22
    localValue12 = Wait
    localValue22 = 2500
    localValue12(localValue22)
    localValue12 = true
    stateFlag2 = localValue12
    localValue12 = dataCollection4
    localValue12()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCombatTimer
  localValue2 = 300
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = CMG
  localValue1 = localValue1.startDataCrackMinigame
  localValue2 = 5

  -- === HELPER FUNCTION: localValue3(localValue12) ===
  function localValue3(localValue12)
    local localValue22, text3, workingValue3
    if localValue12 then
      localValue22 = TriggerServerEvent
      text3 = "d4f413ecfa"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d4f413ecfa".
      localValue22(text3)
    else
      localValue22 = TriggerServerEvent
      text3 = "8c2687cf85"
      localValue22(text3)
    end
    localValue22 = false
    stateFlag2 = localValue22
    localValue22 = CMG
    localValue22 = localValue22.setPlayerCombatTimer
    text3 = 300
    workingValue3 = false
    localValue22(text3, workingValue3)
  end
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "260aad147f".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "9cd2581e01"
-- Beginner: this function handles network event "9cd2581e01".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, waitCall
  while true do
    localValue2 = number12
    if 0 ~= localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = FreezeEntityPosition
  localValue3 = number12
  waitCall = localValue1
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, waitCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9cd2581e01".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "dd5ea1245d"
-- Beginner: this function handles network event "dd5ea1245d".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, waitCall
  if localValue1 then
    localValue2 = PrepareAlarm
    localValue3 = "JEWEL_STORE_HEIST_ALARMS"
    localValue2(localValue3)
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 1000
    localValue2(localValue3)
    localValue2 = StartAlarm
    localValue3 = "JEWEL_STORE_HEIST_ALARMS"
    waitCall = false
    localValue2(localValue3, waitCall)
  else
    localValue2 = StopAlarm
    localValue3 = "JEWEL_STORE_HEIST_ALARMS"
    waitCall = true
    localValue2(localValue3, waitCall)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dd5ea1245d".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "01ab20498d"
-- Beginner: this function handles network event "01ab20498d".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9
  localValue1 = true
  localValue2 = 0
  localValue3 = 0
  waitCall = SetTimeout
  number10 = 600000
  -- Beginner: this function handles network event "01ab20498d".

  -- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
  function text4()
    local localValue12, localValue22
    localValue12 = false
    localValue1 = localValue12
  end
  waitCall(number10, text4)
  waitCall = Citizen
  waitCall = waitCall.CreateThread

  -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
  function number10()
    local localValue12, localValue22, text3, workingValue3, workingValue5, workingValue6, text5, text6, position5, position6
    localValue12 = 9
    localValue22 = 0
    text3 = -1
    for workingValue3 = localValue12, localValue22, text3 do
      localValue2 = workingValue3
      workingValue5 = 59
      workingValue6 = 0
      text5 = -1
      for text6 = workingValue5, workingValue6, text5 do
        localValue3 = text6
        position5 = Wait
        position6 = 1000
        position5(position6)
      end
      workingValue5 = Wait
      workingValue6 = 1000
      workingValue5(workingValue6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  waitCall(number10)
  while localValue1 do
    waitCall = CMG
    waitCall = waitCall.createTimerBars
    -- Beginner: result below is timerBars.
    waitCall = waitCall()
    number10 = localValue3 / 10
    if number10 < 1 then
      number10 = waitCall.push
      text4 = "TIME TO LOOT:"
      number13 = localValue2
      number14 = ":"
      number15 = "0"
      workingValue9 = localValue3
      number13 = number13 .. number14 .. number15 .. workingValue9
      number10(text4, number13)
    else
      number10 = waitCall.push
      text4 = "TIME TO LOOT:"
      number13 = localValue2
      number14 = ":"
      number15 = localValue3
      number13 = number13 .. number14 .. number15
      number10(text4, number13)
    end
    number10 = waitCall.draw
    number10()
    number10 = Citizen
    number10 = number10.Wait
    text4 = 0
    number10(text4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "01ab20498d".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "fd6817347b"
-- Beginner: this function handles network event "fd6817347b".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6
  if localValue1 then
    localValue2 = tCMG
    localValue2 = localValue2.addMarker
    localValue3 = cmgOperation.hackDoorCoords
    localValue3 = localValue3.x
    waitCall = cmgOperation.hackDoorCoords
    waitCall = waitCall.y
    number10 = cmgOperation.hackDoorCoords
    number10 = number10.z
    text4 = 0.4
    number13 = 0.4
    number14 = 0.5
    number15 = 200
    workingValue9 = 0
    text = 0
    text2 = 255
    dataCollection2 = 30
    number = 27
    stateFlag3 = false
    stateFlag4 = false
    stateFlag6 = false
    localValue2 = localValue2(localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6)
    workingValue7 = localValue2

    -- === HELPER FUNCTION: localValue2() ===
    function localValue2()
      local localValue12, localValue22
      localValue12 = CMG
      localValue12 = localValue12.hasClientPermission
      localValue22 = "police.onduty.permission"
      localValue12 = localValue12(localValue22)
      if not localValue12 then
        localValue12 = drawNativeNotification
        localValue22 = "Press ~INPUT_CONTEXT~ to hack the keypad"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue12(localValue22)
      end
    end

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION: waitCall() ===
    function waitCall()
      local localValue12, localValue22, text3
      localValue12 = CMG
      localValue12 = localValue12.hasClientPermission
      localValue22 = "police.onduty.permission"
      localValue12 = localValue12(localValue22)
      if not localValue12 then
        localValue12 = IsControlJustPressed
        localValue22 = 0
        text3 = 38
        localValue12 = localValue12(localValue22, text3)
        if localValue12 then
          localValue12 = CMG
          localValue12 = localValue12.disableSittingOnChairThisFrame
          localValue12()
          localValue12 = TriggerServerEvent
          localValue22 = "f3e7651548"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f3e7651548".
          localValue12(localValue22)
        end
      end
    end
    number10 = CMG
    number10 = number10.createArea
    text4 = "jewelry_hack_door"
    number13 = cmgOperation.hackDoorCoords
    number14 = 1.25
    number15 = 10
    workingValue9 = localValue2
    text = localValue3
    text2 = waitCall
    dataCollection2 = {}
    -- Beginner: Create an interaction area around a world position.
    number10(text4, number13, number14, number15, workingValue9, text, text2, dataCollection2)
  else
    localValue2 = tCMG
    localValue2 = localValue2.removeArea
    localValue3 = "jewelry_hack_door"
    localValue2(localValue3)
    localValue2 = tCMG
    localValue2 = localValue2.removeMarker
    localValue3 = workingValue7
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fd6817347b".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "1282769acf"
-- Beginner: this function handles network event "1282769acf".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6
  if localValue1 then
    localValue2 = tCMG
    localValue2 = localValue2.addMarker
    localValue3 = cmgOperation.hackComputerCoords
    localValue3 = localValue3.x
    waitCall = cmgOperation.hackComputerCoords
    waitCall = waitCall.y
    number10 = cmgOperation.hackComputerCoords
    number10 = number10.z
    text4 = 0.4
    number13 = 0.4
    number14 = 0.5
    number15 = 200
    workingValue9 = 0
    text = 0
    text2 = 255
    dataCollection2 = 30
    number = 27
    stateFlag3 = false
    stateFlag4 = false
    stateFlag6 = false
    localValue2 = localValue2(localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6)
    workingValue8 = localValue2

    -- === HELPER FUNCTION: localValue2() ===
    function localValue2()
      local localValue12, localValue22
      localValue12 = CMG
      localValue12 = localValue12.hasClientPermission
      localValue22 = "police.onduty.permission"
      localValue12 = localValue12(localValue22)
      if not localValue12 then
        localValue12 = drawNativeNotification
        localValue22 = "Press ~INPUT_CONTEXT~ to hack the computer"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue12(localValue22)
      end
    end

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION: waitCall() ===
    function waitCall()
      local localValue12, localValue22, text3
      localValue12 = CMG
      localValue12 = localValue12.hasClientPermission
      localValue22 = "police.onduty.permission"
      localValue12 = localValue12(localValue22)
      if not localValue12 then
        localValue12 = IsControlJustPressed
        localValue22 = 0
        text3 = 38
        localValue12 = localValue12(localValue22, text3)
        if localValue12 then
          localValue12 = CMG
          localValue12 = localValue12.disableSittingOnChairThisFrame
          localValue12()
          localValue12 = TriggerServerEvent
          localValue22 = "bc593643a6"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bc593643a6".
          localValue12(localValue22)
        end
      end
    end
    number10 = CMG
    number10 = number10.createArea
    text4 = "jewelry_hack_computer"
    number13 = cmgOperation.hackComputerCoords
    number14 = 1.25
    number15 = 10
    workingValue9 = localValue2
    text = localValue3
    text2 = waitCall
    dataCollection2 = {}
    -- Beginner: Create an interaction area around a world position.
    number10(text4, number13, number14, number15, workingValue9, text, text2, dataCollection2)
  else
    localValue2 = tCMG
    localValue2 = localValue2.removeArea
    localValue3 = "jewelry_hack_computer"
    localValue2(localValue3)
    localValue2 = tCMG
    localValue2 = localValue2.removeMarker
    localValue3 = workingValue8
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1282769acf".
eventHandler(dataCollection5, workingValue)
eventHandler = RegisterNetEvent
dataCollection5 = "8e9dbb00b3"
-- Beginner: this function handles network event "8e9dbb00b3".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text
  localValue2 = GetEntityCoords
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text = localValue3()
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text)
  localValue3 = cmgOperation.jewelryCases
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3.coords
  localValue2 = localValue2 - localValue3
  localValue2 = #localValue2
  localValue3 = 350
  if localValue2 <= localValue3 then
    localValue2 = GetClosestObjectOfType
    localValue3 = cmgOperation.jewelryCases
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3.coords
    localValue3 = localValue3.x
    waitCall = cmgOperation.jewelryCases
    waitCall = waitCall[localValue1]
    waitCall = waitCall.coords
    waitCall = waitCall.y
    number10 = cmgOperation.jewelryCases
    number10 = number10[localValue1]
    number10 = number10.coords
    number10 = number10.z
    text4 = 0.5
    number13 = cmgOperation.jewelryCases
    number13 = number13[localValue1]
    number13 = number13.modelHash
    number14 = false
    number15 = true
    workingValue9 = true
    -- Beginner: result below is objectEntity.
    localValue2 = localValue2(localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9)
    if nil ~= localValue2 then
      localValue3 = nil
      waitCall = cmgOperation.jewelryCases
      waitCall = waitCall[localValue1]
      waitCall = waitCall.modelHash
      if 37228785 == waitCall then
        localValue3 = -1469834270
        waitCall = RequestModel
        number10 = localValue3
        waitCall(number10)
        while true do
          waitCall = HasModelLoaded
          number10 = localValue3
          waitCall = waitCall(number10)
          if waitCall then
            break
          end
          waitCall = Citizen
          waitCall = waitCall.Wait
          number10 = 0
          waitCall(number10)
        end
      else
        waitCall = cmgOperation.jewelryCases
        waitCall = waitCall[localValue1]
        waitCall = waitCall.modelHash
        if -1846370968 == waitCall then
          localValue3 = 1097883532
          waitCall = RequestModel
          number10 = localValue3
          waitCall(number10)
          while true do
            waitCall = HasModelLoaded
            number10 = localValue3
            waitCall = waitCall(number10)
            if waitCall then
              break
            end
            waitCall = Citizen
            waitCall = waitCall.Wait
            number10 = 0
            waitCall(number10)
          end
        else
          waitCall = cmgOperation.jewelryCases
          waitCall = waitCall[localValue1]
          waitCall = waitCall.modelHash
          if 1768229041 == waitCall then
            localValue3 = 2103335194
            waitCall = RequestModel
            number10 = localValue3
            waitCall(number10)
            while true do
              waitCall = HasModelLoaded
              number10 = localValue3
              waitCall = waitCall(number10)
              if waitCall then
                break
              end
              waitCall = Citizen
              waitCall = waitCall.Wait
              number10 = 0
              waitCall(number10)
            end
          else
            waitCall = cmgOperation.jewelryCases
            waitCall = waitCall[localValue1]
            waitCall = waitCall.modelHash
            if -1880169779 == waitCall then
              localValue3 = -677416883
              waitCall = RequestModel
              number10 = localValue3
              waitCall(number10)
              while true do
                waitCall = HasModelLoaded
                number10 = localValue3
                waitCall = waitCall(number10)
                if waitCall then
                  break
                end
                waitCall = Citizen
                waitCall = waitCall.Wait
                number10 = 0
                waitCall(number10)
              end
            end
          end
        end
      end
      waitCall = CreateModelSwap
      number10 = cmgOperation.jewelryCases
      number10 = number10[localValue1]
      number10 = number10.coords
      number10 = number10.x
      text4 = cmgOperation.jewelryCases
      text4 = text4[localValue1]
      text4 = text4.coords
      text4 = text4.y
      number13 = cmgOperation.jewelryCases
      number13 = number13[localValue1]
      number13 = number13.coords
      number13 = number13.z
      number14 = 1.25
      number15 = cmgOperation.jewelryCases
      number15 = number15[localValue1]
      number15 = number15.modelHash
      workingValue9 = localValue3
      text = true
      waitCall(number10, text4, number13, number14, number15, workingValue9, text)
      waitCall = SetModelAsNoLongerNeeded
      number10 = localValue3
      waitCall(number10)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8e9dbb00b3".
eventHandler(dataCollection5, workingValue)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2, localValue3) ===
function eventHandler(localValue1, localValue2, localValue3)
  local waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2
  waitCall = CreateCam
  number10 = "DEFAULT_SCRIPTED_CAMERA"
  text4 = false
  -- Beginner: result below is cameraHandle.
  waitCall = waitCall(number10, text4)
  number10 = GetOffsetFromEntityInWorldCoords
  text4 = localValue1
  number13 = 1.5
  number14 = 0.0
  number15 = 1.0
  number10 = number10(text4, number13, number14, number15)
  text4 = GetOffsetFromEntityInWorldCoords
  number13 = localValue1
  number14 = 0.0
  number15 = 1.0
  workingValue9 = 1.5
  text4 = text4(number13, number14, number15, workingValue9)
  number13 = SetCamCoord
  number14 = waitCall
  number15 = number10.x
  workingValue9 = number10.y
  text = number10.z
  number13(number14, number15, workingValue9, text)
  number13 = PointCamAtCoord
  number14 = waitCall
  number15 = CMG
  number15 = number15.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number15 = number15()
  number15 = number15.x
  workingValue9 = CMG
  workingValue9 = workingValue9.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workingValue9 = workingValue9()
  workingValue9 = workingValue9.y
  text = CMG
  text = text.getPlayerCoords
  -- Beginner: result below is playerCoords.
  text = text()
  text = text.z
  number13(number14, number15, workingValue9, text)
  number13 = SetCamActive
  number14 = waitCall
  number15 = true
  number13(number14, number15)
  number13 = RenderScriptCams
  number14 = true
  number15 = true
  workingValue9 = 0
  text = true
  text2 = false
  number13(number14, number15, workingValue9, text, text2)
  number13 = RequestModel
  number14 = -1386034965
  number13(number14)
  while true do
    number13 = HasModelLoaded
    number14 = -1386034965
    number13 = number13(number14)
    if number13 then
      break
    end
    number13 = Citizen
    number13 = number13.Wait
    number14 = 0
    number13(number14)
  end
  number13 = Citizen
  number13 = number13.Wait
  number14 = 1500
  number13(number14)
  number13 = SetCamCoord
  number14 = waitCall
  number15 = text4.x
  workingValue9 = text4.y
  text = text4.z
  number13(number14, number15, workingValue9, text)
  number13 = PointCamAtCoord
  number14 = waitCall
  number15 = CMG
  number15 = number15.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number15 = number15()
  number15 = number15.x
  workingValue9 = CMG
  workingValue9 = workingValue9.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workingValue9 = workingValue9()
  workingValue9 = workingValue9.y
  text = CMG
  text = text.getPlayerCoords
  -- Beginner: result below is playerCoords.
  text = text()
  text = text.z
  number13(number14, number15, workingValue9, text)
  if localValue3 then
    number13 = Citizen
    number13 = number13.Wait
    number14 = 1250
    number13(number14)
  else
    number13 = Citizen
    number13 = number13.Wait
    number14 = 2700
    number13(number14)
  end
  number13 = RenderScriptCams
  number14 = false
  number15 = true
  workingValue9 = 400
  text = true
  text2 = false
  number13(number14, number15, workingValue9, text, text2)
  number13 = DestroyCam
  number14 = waitCall
  number15 = false
  number13(number14, number15)
  number13 = ClearPedTasks
  number14 = CMG
  number14 = number14.getPlayerPed
  number14, number15, workingValue9, text, text2 = number14()
  number13(number14, number15, workingValue9, text, text2)
end

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1, localValue2, localValue3) ===
function dataCollection5(localValue1, localValue2, localValue3)
  local waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2
  waitCall = CreateCam
  number10 = "DEFAULT_SCRIPTED_CAMERA"
  text4 = false
  -- Beginner: result below is cameraHandle.
  waitCall = waitCall(number10, text4)
  number10 = GetOffsetFromEntityInWorldCoords
  text4 = localValue1
  number13 = 2.5
  number14 = 1.0
  number15 = 1.5
  number10 = number10(text4, number13, number14, number15)
  text4 = SetCamCoord
  number13 = waitCall
  number14 = number10.x
  number15 = number10.y
  workingValue9 = number10.z
  text4(number13, number14, number15, workingValue9)
  text4 = SetCamFov
  number13 = waitCall
  number14 = 35.2071
  text4(number13, number14)
  text4 = CMG
  text4 = text4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  text4 = text4()
  number13 = PointCamAtCoord
  number14 = waitCall
  number15 = text4.x
  workingValue9 = text4.y
  text = text4.z
  number13(number14, number15, workingValue9, text)
  number13 = SetCamActive
  number14 = waitCall
  number15 = true
  number13(number14, number15)
  number13 = RenderScriptCams
  number14 = true
  number15 = true
  workingValue9 = 3000
  text = true
  text2 = false
  number13(number14, number15, workingValue9, text, text2)
  number13 = RequestModel
  number14 = -1386034965
  number13(number14)
  while true do
    number13 = HasModelLoaded
    number14 = -1386034965
    number13 = number13(number14)
    if number13 then
      break
    end
    number13 = Citizen
    number13 = number13.Wait
    number14 = 0
    number13(number14)
  end
  if localValue3 then
    number13 = Citizen
    number13 = number13.Wait
    number14 = 2900
    number13(number14)
  else
    number13 = Citizen
    number13 = number13.Wait
    number14 = 3700
    number13(number14)
  end
  number13 = RenderScriptCams
  number14 = false
  number15 = true
  workingValue9 = 400
  text = true
  text2 = false
  number13(number14, number15, workingValue9, text, text2)
  number13 = DestroyCam
  number14 = waitCall
  number15 = false
  number13(number14, number15)
  number13 = ClearPedTasks
  number14 = CMG
  number14 = number14.getPlayerPed
  number14, number15, workingValue9, text, text2 = number14()
  number13(number14, number15, workingValue9, text, text2)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6, number4, stateFlag9, stateFlag10, stateFlag13
  localValue2 = dataCollection6
  localValue2 = localValue2[localValue1]
  if not localValue2 then

    -- === HELPER FUNCTION: localValue2() ===
    function localValue2()
      local localValue12, localValue22
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to break the glass"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
    end

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION: waitCall(localValue12) ===
    function waitCall(localValue12)
      local localValue22, text3, workingValue3, workingValue5, workingValue6, text5, text6, position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5
      localValue22 = IsControlJustPressed
      text3 = 0
      workingValue3 = 38
      localValue22 = localValue22(text3, workingValue3)
      if localValue22 then
        localValue22 = stateFlag
        if not localValue22 then
          localValue22 = GetEntityHealth
          text3 = PlayerPedId
          text3, workingValue3, workingValue5, workingValue6, text5, text6, position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5 = text3()
          -- Beginner: result below is health.
          localValue22 = localValue22(text3, workingValue3, workingValue5, workingValue6, text5, text6, position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
          if localValue22 > 102 then
            localValue22 = CMG
            localValue22 = localValue22.hasClientPermission
            text3 = "police.onduty.permission"
            localValue22 = localValue22(text3)
            if not localValue22 then
              localValue22 = GetSelectedPedWeapon
              text3 = CMG
              text3 = text3.getPlayerPed
              text3, workingValue3, workingValue5, workingValue6, text5, text6, position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5 = text3()
              -- Beginner: result below is weaponHash.
              localValue22 = localValue22(text3, workingValue3, workingValue5, workingValue6, text5, text6, position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
              if -1569615261 ~= localValue22 then
                localValue22 = RequestScriptAudioBank
                text3 = "DLC_CMGHEIST\\GLASS_BREAK"
                workingValue3 = false
                localValue22(text3, workingValue3)
                localValue22 = math
                localValue22 = localValue22.random
                text3 = 1
                workingValue3 = 3
                localValue22 = localValue22(text3, workingValue3)
                text3 = true
                stateFlag = text3
                text3 = CMG
                text3 = text3.getPlayerCoords
                -- Beginner: result below is playerCoords.
                text3 = text3()
                workingValue3 = GetClosestObjectOfType
                workingValue5 = text3.x
                workingValue6 = text3.y
                text5 = text3.z
                text6 = 0.5
                position5 = localValue12.modelHash
                position6 = false
                position = true
                position2 = true
                -- Beginner: result below is objectEntity.
                workingValue3 = workingValue3(workingValue5, workingValue6, text5, text6, position5, position6, position, position2)
                workingValue5 = FreezeEntityPosition
                workingValue6 = CMG
                workingValue6 = workingValue6.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                workingValue6 = workingValue6()
                text5 = true
                -- Beginner: Freeze or unfreeze an entity in place.
                workingValue5(workingValue6, text5)
                if 0 ~= workingValue3 then
                  workingValue5 = GetEntityCoords
                  workingValue6 = workingValue3
                  -- Beginner: result below is entityCoords.
                  workingValue5 = workingValue5(workingValue6)
                  workingValue6 = RequestAnimDict
                  text5 = "missheist_jewel"
                  workingValue6(text5)
                  while true do
                    workingValue6 = HasAnimDictLoaded
                    text5 = "missheist_jewel"
                    workingValue6 = workingValue6(text5)
                    if workingValue6 then
                      break
                    end
                    workingValue6 = Citizen
                    workingValue6 = workingValue6.Wait
                    text5 = 0
                    workingValue6(text5)
                  end
                  workingValue6 = ""
                  text5 = localValue12.modelHash
                  if 37228785 == text5 then
                    workingValue6 = -1469834270
                    text5 = RequestModel
                    text6 = workingValue6
                    text5(text6)
                    while true do
                      text5 = HasModelLoaded
                      text6 = workingValue6
                      text5 = text5(text6)
                      if text5 then
                        break
                      end
                      text5 = Citizen
                      text5 = text5.Wait
                      text6 = 0
                      text5(text6)
                    end
                  else
                    text5 = localValue12.modelHash
                    if -1846370968 == text5 then
                      workingValue6 = 1097883532
                      text5 = RequestModel
                      text6 = workingValue6
                      text5(text6)
                      while true do
                        text5 = HasModelLoaded
                        text6 = workingValue6
                        text5 = text5(text6)
                        if text5 then
                          break
                        end
                        text5 = Citizen
                        text5 = text5.Wait
                        text6 = 0
                        text5(text6)
                      end
                    else
                      text5 = localValue12.modelHash
                      if 1768229041 == text5 then
                        workingValue6 = 2103335194
                        text5 = RequestModel
                        text6 = workingValue6
                        text5(text6)
                        while true do
                          text5 = HasModelLoaded
                          text6 = workingValue6
                          text5 = text5(text6)
                          if text5 then
                            break
                          end
                          text5 = Citizen
                          text5 = text5.Wait
                          text6 = 0
                          text5(text6)
                        end
                      else
                        text5 = localValue12.modelHash
                        if -1880169779 == text5 then
                          workingValue6 = -677416883
                          text5 = RequestModel
                          text6 = workingValue6
                          text5(text6)
                          while true do
                            text5 = HasModelLoaded
                            text6 = workingValue6
                            text5 = text5(text6)
                            if text5 then
                              break
                            end
                            text5 = Citizen
                            text5 = text5.Wait
                            text6 = 0
                            text5(text6)
                          end
                        end
                      end
                    end
                  end
                  text5 = RequestNamedPtfxAsset
                  text6 = "scr_jewelheist"
                  text5(text6)
                  while true do
                    text5 = HasNamedPtfxAssetLoaded
                    text6 = "scr_jewelheist"
                    text5 = text5(text6)
                    if text5 then
                      break
                    end
                    text5 = Citizen
                    text5 = text5.Wait
                    text6 = 0
                    text5(text6)
                  end
                  text5 = UseParticleFxAsset
                  text6 = "scr_jewelheist"
                  text5(text6)
                  text5 = StartParticleFxNonLoopedOnEntity
                  text6 = "scr_jewel_cab_smash"
                  position5 = GetCurrentPedWeaponEntityIndex
                  position6 = CMG
                  position6 = position6.getPlayerPed
                  position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5 = position6()
                  position5 = position5(position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
                  position6 = 0.0
                  position = 0.0
                  position2 = 0.0
                  position3 = 0.0
                  number2 = 0.0
                  number3 = 0.0
                  stateFlag5 = 1065353216
                  stateFlag7 = false
                  stateFlag8 = false
                  number5 = false
                  text5(text6, position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
                  text5 = CreateModelSwap
                  text6 = workingValue5.x
                  position5 = workingValue5.y
                  position6 = workingValue5.z
                  position = 1.25
                  position2 = localValue12.modelHash
                  position3 = workingValue6
                  number2 = true
                  text5(text6, position5, position6, position, position2, position3, number2)
                  text5 = SetEntityHeading
                  text6 = CMG
                  text6 = text6.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  text6 = text6()
                  position5 = cmgOperation.jewelryCases
                  position6 = localValue1
                  position5 = position5[position6]
                  position5 = position5.heading
                  -- Beginner: Change the direction an entity is facing.
                  text5(text6, position5)
                  text5 = SetModelAsNoLongerNeeded
                  text6 = workingValue6
                  text5(text6)
                  text5 = RemoveNamedPtfxAsset
                  text6 = "scr_jewelheist"
                  text5(text6)
                end
                workingValue5 = nil
                workingValue6 = math
                workingValue6 = workingValue6.random
                text5 = 1
                text6 = 2
                workingValue6 = workingValue6(text5, text6)
                if 1 == workingValue6 then
                  workingValue5 = eventHandler
                elseif 2 == workingValue6 then
                  workingValue5 = dataCollection5
                end
                text5 = CMG
                text5 = text5.getPlayerCoords
                -- Beginner: result below is playerCoords.
                text5 = text5()
                text6 = PlaySoundFromCoord
                position5 = -1
                position6 = "glass_break_"
                position = localValue22
                position6 = position6 .. position
                position = text5.x
                position2 = text5.y
                position3 = text5.z
                number2 = "dlc_cmgheist_soundset"
                number3 = false
                stateFlag5 = 20.0
                stateFlag7 = false
                text6(position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7)
                text6 = localValue12.modelHash
                if -1880169779 == text6 then
                  text6 = TaskPlayAnim
                  position5 = CMG
                  position5 = position5.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  position5 = position5()
                  position6 = "missheist_jewel"
                  position = "smash_case_necklace_skull"
                  position2 = 1000.0
                  position3 = -4.0
                  number2 = -1
                  number3 = 1
                  stateFlag5 = 1148846080
                  stateFlag7 = false
                  stateFlag8 = false
                  number5 = false
                  -- Beginner: Play an animation on a ped.
                  text6(position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
                  text6 = workingValue5
                  position5 = CMG
                  position5 = position5.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  position5 = position5()
                  position6 = CMG
                  position6 = position6.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  position6 = position6()
                  position = true
                  text6(position5, position6, position)
                else
                  text6 = TaskPlayAnim
                  position5 = CMG
                  position5 = position5.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  position5 = position5()
                  position6 = "missheist_jewel"
                  position = "smash_case"
                  position2 = 1000.0
                  position3 = -4.0
                  number2 = -1
                  number3 = 1
                  stateFlag5 = 1148846080
                  stateFlag7 = false
                  stateFlag8 = false
                  number5 = false
                  -- Beginner: Play an animation on a ped.
                  text6(position5, position6, position, position2, position3, number2, number3, stateFlag5, stateFlag7, stateFlag8, number5)
                  text6 = workingValue5
                  position5 = CMG
                  position5 = position5.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  position5 = position5()
                  position6 = CMG
                  position6 = position6.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  position6 = position6()
                  position = false
                  text6(position5, position6, position)
                end
                text6 = FreezeEntityPosition
                position5 = CMG
                position5 = position5.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                position5 = position5()
                position6 = false
                -- Beginner: Freeze or unfreeze an entity in place.
                text6(position5, position6)
                text6 = TriggerServerEvent
                position5 = "5c0b4e086f"
                position6 = localValue12.caseId
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5c0b4e086f".
                text6(position5, position6)
                text6 = CMG
                text6 = text6.setPlayerCombatTimer
                position5 = 300
                position6 = false
                text6(position5, position6)
                text6 = Citizen
                text6 = text6.Wait
                position5 = 1000
                text6(position5)
                text6 = SetModelAsNoLongerNeeded
                position5 = -1386034965
                text6(position5)
                text6 = RemoveAnimDict
                position5 = "missheist_jewel"
                text6(position5)
                text6 = false
                stateFlag = text6
              else
                localValue22 = tCMG
                localValue22 = localValue22.notify
                text3 = "~r~You must be holding a weapon to smash the glass!"
                -- Beginner: Show a notification to the player.
                localValue22(text3)
              end
            else
              localValue22 = TriggerServerEvent
              text3 = "9cf990fd76"
              workingValue3 = localValue12.caseId
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9cf990fd76".
              localValue22(text3, workingValue3)
              localValue22 = tCMG
              localValue22 = localValue22.removeArea
              text3 = "break_glass_"
              workingValue3 = localValue12.caseId
              text3 = text3 .. workingValue3
              localValue22(text3)
            end
          end
        end
      end
    end
    number10 = dataCollection6
    text4 = tCMG
    text4 = text4.addMarker
    number13 = cmgOperation.jewelryCases
    number13 = number13[localValue1]
    number13 = number13.coords
    number13 = number13.x
    number14 = cmgOperation.jewelryCases
    number14 = number14[localValue1]
    number14 = number14.coords
    number14 = number14.y
    number15 = cmgOperation.jewelryCases
    number15 = number15[localValue1]
    number15 = number15.coords
    number15 = number15.z
    number15 = number15 - 0.35
    workingValue9 = 0.2
    text = 0.2
    text2 = 0.2
    dataCollection2 = 255
    number = 255
    stateFlag3 = 0
    stateFlag4 = 200
    stateFlag6 = 30
    number4 = 0
    stateFlag9 = false
    stateFlag10 = true
    stateFlag13 = false
    text4 = text4(number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6, number4, stateFlag9, stateFlag10, stateFlag13)
    number10[localValue1] = text4
    number10 = CMG
    number10 = number10.createArea
    text4 = "break_glass_"
    number13 = localValue1
    text4 = text4 .. number13
    number13 = cmgOperation.jewelryCases
    number13 = number13[localValue1]
    number13 = number13.coords
    number14 = 1.25
    number15 = 10
    workingValue9 = localValue2
    text = localValue3
    text2 = waitCall
    dataCollection2 = {}
    dataCollection2.caseId = localValue1
    number = cmgOperation.jewelryCases
    number = number[localValue1]
    number = number.modelHash
    dataCollection2.modelHash = number
    number = cmgOperation.jewelryCases
    number = number[localValue1]
    number = number.heading
    dataCollection2.heading = number
    number = cmgOperation.jewelryCases
    number = number[localValue1]
    number = number.coords
    dataCollection2.caseCoords = number
    -- Beginner: Create an interaction area around a world position.
    number10(text4, number13, number14, number15, workingValue9, text, text2, dataCollection2)
  end
end
eventHandler2 = RegisterNetEvent
cmgOperation2 = "b26b1159ef"
-- Beginner: this function handles network event "b26b1159ef".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, waitCall, number10
  if localValue2 then
    localValue3 = workingValue
    waitCall = localValue1
    localValue3(waitCall)
  else
    localValue3 = tCMG
    localValue3 = localValue3.removeArea
    waitCall = "break_glass_"
    number10 = localValue1
    waitCall = waitCall .. number10
    localValue3(waitCall)
    localValue3 = tCMG
    localValue3 = localValue3.removeMarker
    waitCall = dataCollection6
    waitCall = waitCall[localValue1]
    localValue3(waitCall)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b26b1159ef".
eventHandler2(cmgOperation2, workingValue2)
eventHandler2 = AddEventHandler
cmgOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6, number4, stateFlag9, stateFlag10, stateFlag13, stateFlag15, stateFlag16, stateFlag17, stateFlag18
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to exit via the roof"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: waitCall() ===
    function waitCall()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
    function number10()
      local localValue12, localValue22, text3, workingValue3
      localValue12 = IsControlJustPressed
      localValue22 = 0
      text3 = 38
      localValue12 = localValue12(localValue22, text3)
      if localValue12 then
        localValue12 = SetEntityHeading
        localValue22 = CMG
        localValue22 = localValue22.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue22 = localValue22()
        text3 = 217.38
        -- Beginner: Change the direction an entity is facing.
        localValue12(localValue22, text3)
        localValue12 = tCMG
        localValue12 = localValue12.teleport
        localValue22 = cmgOperation.exitTeleporterCoords
        localValue22 = localValue22.x
        text3 = cmgOperation.exitTeleporterCoords
        text3 = text3.y
        workingValue3 = cmgOperation.exitTeleporterCoords
        workingValue3 = workingValue3.z
        localValue12(localValue22, text3, workingValue3)
      end
    end
    text4 = tCMG
    text4 = text4.addBlip
    number13 = cmgOperation.enterTeleporterCoords
    number13 = number13.x
    number14 = cmgOperation.enterTeleporterCoords
    number14 = number14.y
    number15 = cmgOperation.enterTeleporterCoords
    number15 = number15.z
    workingValue9 = 617
    text = 0
    text2 = "Jewelry Store"
    dataCollection2 = 0.7
    text4 = text4(number13, number14, number15, workingValue9, text, text2, dataCollection2)
    number13 = CMG
    number13 = number13.addBlipContext
    number14 = "Civilian"
    number15 = text4
    number13(number14, number15)
    number13 = tCMG
    number13 = number13.addMarker
    number14 = cmgOperation.enterTeleporterCoords
    number14 = number14.x
    number15 = cmgOperation.enterTeleporterCoords
    number15 = number15.y
    workingValue9 = cmgOperation.enterTeleporterCoords
    workingValue9 = workingValue9.z
    workingValue9 = workingValue9 - 1
    text = 0.4
    text2 = 0.4
    dataCollection2 = 0.5
    number = 255
    stateFlag3 = 255
    stateFlag4 = 255
    stateFlag6 = 255
    number4 = 30
    stateFlag9 = 27
    stateFlag10 = false
    stateFlag13 = false
    stateFlag15 = false
    -- Beginner: Create a world marker.
    number13(number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6, number4, stateFlag9, stateFlag10, stateFlag13, stateFlag15)
    number13 = CMG
    number13 = number13.createArea
    number14 = "jewelry_teleport"
    number15 = cmgOperation.enterTeleporterCoords
    workingValue9 = 1.25
    text = 10
    text2 = localValue3
    dataCollection2 = waitCall
    number = number10
    -- Beginner: Create an interaction area around a world position.
    number13(number14, number15, workingValue9, text, text2, dataCollection2, number)

    -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
    function number13()
      local localValue12, localValue22
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to enter the jewelry store"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
    end

    -- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
    function number14()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
    function number15()
      local localValue12, localValue22, text3, workingValue3
      localValue12 = IsControlJustPressed
      localValue22 = 0
      text3 = 38
      localValue12 = localValue12(localValue22, text3)
      if localValue12 then
        localValue12 = SetEntityHeading
        localValue22 = CMG
        localValue22 = localValue22.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue22 = localValue22()
        text3 = 217.38
        -- Beginner: Change the direction an entity is facing.
        localValue12(localValue22, text3)
        localValue12 = tCMG
        localValue12 = localValue12.teleport
        localValue22 = cmgOperation.enterTeleporterCoords
        localValue22 = localValue22.x
        text3 = cmgOperation.enterTeleporterCoords
        text3 = text3.y
        workingValue3 = cmgOperation.enterTeleporterCoords
        workingValue3 = workingValue3.z
        localValue12(localValue22, text3, workingValue3)
      end
    end
    workingValue9 = tCMG
    workingValue9 = workingValue9.addMarker
    text = cmgOperation.exitTeleporterCoords
    text = text.x
    text2 = cmgOperation.exitTeleporterCoords
    text2 = text2.y
    dataCollection2 = cmgOperation.exitTeleporterCoords
    dataCollection2 = dataCollection2.z
    dataCollection2 = dataCollection2 - 1
    number = 0.4
    stateFlag3 = 0.4
    stateFlag4 = 0.5
    stateFlag6 = 255
    number4 = 255
    stateFlag9 = 255
    stateFlag10 = 255
    stateFlag13 = 30
    stateFlag15 = 27
    stateFlag16 = false
    stateFlag17 = false
    stateFlag18 = false
    -- Beginner: Create a world marker.
    workingValue9(text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6, number4, stateFlag9, stateFlag10, stateFlag13, stateFlag15, stateFlag16, stateFlag17, stateFlag18)
    workingValue9 = CMG
    workingValue9 = workingValue9.createArea
    text = "jewelry_teleport2"
    text2 = cmgOperation.exitTeleporterCoords
    dataCollection2 = 1.25
    number = 10
    stateFlag3 = number13
    stateFlag4 = number14
    stateFlag6 = number15
    -- Beginner: Create an interaction area around a world position.
    workingValue9(text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandler2(cmgOperation2, workingValue2)
eventHandler2 = AddEventHandler
cmgOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6, number4, stateFlag9, stateFlag10, stateFlag13, stateFlag15, stateFlag16, stateFlag17, stateFlag18
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to enter the facility"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: waitCall() ===
    function waitCall()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
    function number10()
      local localValue12, localValue22, text3, workingValue3
      localValue12 = IsControlJustPressed
      localValue22 = 0
      text3 = 38
      localValue12 = localValue12(localValue22, text3)
      if localValue12 then
        localValue12 = stateFlag19
        if localValue12 then
          localValue12 = tCMG
          localValue12 = localValue12.teleport
          localValue22 = cmgOperation.aiMissionTeleporterExit
          localValue22 = localValue22.x
          text3 = cmgOperation.aiMissionTeleporterExit
          text3 = text3.y
          workingValue3 = cmgOperation.aiMissionTeleporterExit
          workingValue3 = workingValue3.z
          localValue12(localValue22, text3, workingValue3)
          localValue12 = true
          stateFlag12 = localValue12
          localValue12 = Citizen
          localValue12 = localValue12.Wait
          localValue22 = 1000
          localValue12(localValue22)
          localValue12 = TriggerServerEvent
          localValue22 = "2f5c0de9d4"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2f5c0de9d4".
          localValue12(localValue22)
        else
          localValue12 = tCMG
          localValue12 = localValue12.notify
          localValue22 = "~r~You cannot enter right now."
          -- Beginner: Show a notification to the player.
          localValue12(localValue22)
        end
      end
    end
    text4 = tCMG
    text4 = text4.addBlip
    number13 = cmgOperation.aiMissionTeleporterEnter
    number13 = number13.x
    number14 = cmgOperation.aiMissionTeleporterEnter
    number14 = number14.y
    number15 = cmgOperation.aiMissionTeleporterEnter
    number15 = number15.z
    workingValue9 = 619
    text = 3
    text2 = "Jewelry Store Setup"
    dataCollection2 = 0.7
    text4 = text4(number13, number14, number15, workingValue9, text, text2, dataCollection2)
    number13 = CMG
    number13 = number13.addBlipContext
    number14 = "Civilian"
    number15 = text4
    number13(number14, number15)
    number13 = tCMG
    number13 = number13.addMarker
    number14 = cmgOperation.aiMissionTeleporterEnter
    number14 = number14.x
    number15 = cmgOperation.aiMissionTeleporterEnter
    number15 = number15.y
    workingValue9 = cmgOperation.aiMissionTeleporterEnter
    workingValue9 = workingValue9.z
    workingValue9 = workingValue9 - 0.35
    text = 0.3
    text2 = 0.3
    dataCollection2 = 0.3
    number = 255
    stateFlag3 = 255
    stateFlag4 = 255
    stateFlag6 = 200
    number4 = 30
    stateFlag9 = 0
    stateFlag10 = false
    stateFlag13 = true
    stateFlag15 = false
    -- Beginner: Create a world marker.
    number13(number14, number15, workingValue9, text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6, number4, stateFlag9, stateFlag10, stateFlag13, stateFlag15)
    number13 = CMG
    number13 = number13.createArea
    number14 = "ai_mission_teleport"
    number15 = cmgOperation.aiMissionTeleporterEnter
    workingValue9 = 3.0
    text = 10
    text2 = localValue3
    dataCollection2 = waitCall
    number = number10
    -- Beginner: Create an interaction area around a world position.
    number13(number14, number15, workingValue9, text, text2, dataCollection2, number)

    -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
    function number13()
      local localValue12, localValue22
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_CONTEXT~ to exit the facility"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
    end

    -- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
    function number14()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
    function number15()
      local localValue12, localValue22, text3, workingValue3
      localValue12 = IsControlJustPressed
      localValue22 = 0
      text3 = 38
      localValue12 = localValue12(localValue22, text3)
      if localValue12 then
        localValue12 = tCMG
        localValue12 = localValue12.teleport
        localValue22 = cmgOperation.aiMissionTeleporterEnter
        localValue22 = localValue22.x
        text3 = cmgOperation.aiMissionTeleporterEnter
        text3 = text3.y
        workingValue3 = cmgOperation.aiMissionTeleporterEnter
        workingValue3 = workingValue3.z
        localValue12(localValue22, text3, workingValue3)
        localValue12 = false
        stateFlag12 = localValue12
        localValue12 = TriggerServerEvent
        localValue22 = "1fe477143e"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1fe477143e".
        localValue12(localValue22)
      end
    end
    workingValue9 = tCMG
    workingValue9 = workingValue9.addMarker
    text = cmgOperation.aiMissionTeleporterExit
    text = text.x
    text2 = cmgOperation.aiMissionTeleporterExit
    text2 = text2.y
    dataCollection2 = cmgOperation.aiMissionTeleporterExit
    dataCollection2 = dataCollection2.z
    dataCollection2 = dataCollection2 - 0.35
    number = 0.3
    stateFlag3 = 0.3
    stateFlag4 = 0.3
    stateFlag6 = 255
    number4 = 255
    stateFlag9 = 255
    stateFlag10 = 200
    stateFlag13 = 30
    stateFlag15 = 0
    stateFlag16 = false
    stateFlag17 = true
    stateFlag18 = false
    -- Beginner: Create a world marker.
    workingValue9(text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6, number4, stateFlag9, stateFlag10, stateFlag13, stateFlag15, stateFlag16, stateFlag17, stateFlag18)
    workingValue9 = CMG
    workingValue9 = workingValue9.createArea
    text = "ai_mission_teleport2"
    text2 = cmgOperation.aiMissionTeleporterExit
    dataCollection2 = 3.0
    number = 10
    stateFlag3 = number13
    stateFlag4 = number14
    stateFlag6 = number15
    -- Beginner: Create an interaction area around a world position.
    workingValue9(text, text2, dataCollection2, number, stateFlag3, stateFlag4, stateFlag6)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandler2(cmgOperation2, workingValue2)
eventHandler2 = AddEventHandler
cmgOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, waitCall, number10, text4, number13, number14, number15, workingValue9, text
  if localValue2 then
    localValue3 = AddRelationshipGroup
    waitCall = "aiHeist"
    localValue3(waitCall)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    waitCall = 10000
    localValue3(waitCall)
    localValue3 = GetClosestObjectOfType
    waitCall = cmgOperation.hackDoorCoords
    waitCall = waitCall.x
    number10 = cmgOperation.hackDoorCoords
    number10 = number10.y
    text4 = cmgOperation.hackDoorCoords
    text4 = text4.z
    number13 = 2.0
    number14 = 1335309163
    number15 = false
    workingValue9 = false
    text = false
    -- Beginner: result below is objectEntity.
    localValue3 = localValue3(waitCall, number10, text4, number13, number14, number15, workingValue9, text)
    number12 = localValue3
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandler2(cmgOperation2, workingValue2)
eventHandler2 = AddEventHandler
cmgOperation2 = "309d290ea8"
-- Beginner: this function runs when client event "309d290ea8" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3
  if "killed" == localValue1 then
    localValue2 = stateFlag12
    if localValue2 then
      localValue2 = TriggerServerEvent
      localValue3 = "1fe477143e"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1fe477143e".
      localValue2(localValue3)
      localValue2 = TriggerEvent
      localValue3 = "bc45a4ab25"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "bc45a4ab25".
      localValue2(localValue3)
      localValue2 = false
      stateFlag12 = localValue2
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "309d290ea8".
eventHandler2(cmgOperation2, workingValue2)
eventHandler2 = RegisterNetEvent
cmgOperation2 = "6cebc32739"
-- Beginner: this function handles network event "6cebc32739".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, waitCall, number10, text4, number13, number14
  while true do
    localValue2 = NetworkDoesEntityExistWithNetworkId
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = print
  localValue3 = localValue1
  waitCall = " exists"
  localValue2(localValue3, waitCall)
  localValue2 = CMG
  localValue2 = localValue2.getObjectId
  localValue3 = localValue1
  waitCall = "jewelryMakePedsAttack"
  localValue2 = localValue2(localValue3, waitCall)
  localValue3 = SetPedRelationshipGroupHash
  waitCall = localValue2
  number10 = "aiHeist"
  localValue3(waitCall, number10)
  localValue3 = SetRelationshipBetweenGroups
  waitCall = 5
  number10 = "aiHeist"
  text4 = GetPedRelationshipGroupHash
  number13 = GetPlayerPed
  number14 = -1
  number13, number14 = number13(number14)
  text4, number13, number14 = text4(number13, number14)
  localValue3(waitCall, number10, text4, number13, number14)
  localValue3 = SetPedDropsWeaponsWhenDead
  waitCall = localValue2
  number10 = false
  localValue3(waitCall, number10)
  localValue3 = TaskCombatPed
  waitCall = localValue2
  number10 = CMG
  number10 = number10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  number10 = number10()
  text4 = 0
  number13 = 0
  localValue3(waitCall, number10, text4, number13)
  localValue3 = SetPedAccuracy
  waitCall = localValue2
  number10 = 30
  localValue3(waitCall, number10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6cebc32739".
eventHandler2(cmgOperation2, workingValue2)
eventHandler2 = RegisterNetEvent
cmgOperation2 = "30cfc13bf7"
-- Beginner: this function handles network event "30cfc13bf7".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, localValue3, waitCall, number10
  localValue1 = CMG
  localValue1 = localValue1.announceMpSmallMsg
  localValue2 = "ALERT"
  localValue3 = "An alarm has been triggered at the jewelry store"
  waitCall = 9
  number10 = 10000
  localValue1(localValue2, localValue3, waitCall, number10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "30cfc13bf7".
eventHandler2(cmgOperation2, workingValue2)
