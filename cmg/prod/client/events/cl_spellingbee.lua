--[[
    LEVEL 1 BEGINNER GUIDE — Spellingbee
    =========================================

    File: cmg/prod/client/events/cl_spellingbee.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Spellingbee feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 23
      * Background threads: 0
      * Always-running loops: 3
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
local cmgOperation, text5, number5, workingValue8, workingValue9, dataCollection, workingValue11, workingValue12, workingValue13, workingValue14, workingValue2, stringHelper, stringHelper2, text, text2, stringHelper3, text3, workingValue3, workingValue4, text4, workingValue6, workingValue7
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text5 = "cfg/events/cfg_spellingbee"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text5)
text5 = nil
number5 = 0
workingValue8 = nil
workingValue9 = nil
dataCollection = {}
workingValue11 = nil

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1, localValue2) ===
function workingValue12(localValue1, localValue2)
  local localValue3, localValue4, workingValue10, stateFlag7
  localValue3 = 0
  localValue4 = IsNamedRendertargetRegistered
  workingValue10 = localValue1
  localValue4 = localValue4(workingValue10)
  if not localValue4 then
    localValue4 = RegisterNamedRendertarget
    workingValue10 = localValue1
    stateFlag7 = false
    localValue4(workingValue10, stateFlag7)
  end
  localValue4 = IsNamedRendertargetLinked
  workingValue10 = localValue2
  localValue4 = localValue4(workingValue10)
  if not localValue4 then
    localValue4 = LinkNamedRendertarget
    workingValue10 = localValue2
    localValue4(workingValue10)
  end
  localValue4 = IsNamedRendertargetRegistered
  workingValue10 = localValue1
  localValue4 = localValue4(workingValue10)
  if localValue4 then
    localValue4 = GetNamedRendertargetRenderId
    workingValue10 = localValue1
    localValue4 = localValue4(workingValue10)
    localValue3 = localValue4
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3
  localValue2 = text5
  if localValue2 then
    localValue2 = text5.bMyTurn
    if localValue2 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue2 = dataCollection
  localValue2 = #localValue2
  localValue3 = localValue2 + 1
  localValue2 = dataCollection
  localValue2[localValue3] = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = dataCollection
  localValue1 = #localValue1
  if localValue1 > 0 then
    localValue1 = dataCollection
    localValue1 = localValue1[1]
    localValue2 = table
    localValue2 = localValue2.remove
    localValue3 = dataCollection
    localValue4 = 1
    localValue2(localValue3, localValue4)
    return localValue1
  end
  localValue1 = nil
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue2(localValue1, localValue2, localValue3, localValue4)
  local workingValue10, stateFlag7, number6, stateFlag8, number7
  workingValue10 = RegisterCommand
  stateFlag7 = localValue1
  -- Beginner: this function is the command handler for the command above.

  -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
  function number6()
    local workingValue, workingValue5
    workingValue = localValue4
    workingValue()
  end
  stateFlag8 = false
  -- Beginner: Register a chat/console command. Event/command: nil.
  workingValue10(stateFlag7, number6, stateFlag8)
  workingValue10 = RegisterKeyMapping
  stateFlag7 = localValue1
  number6 = localValue2
  stateFlag8 = "keyboard"
  number7 = localValue3
  -- Beginner: Bind a command to a keyboard/controller key.
  workingValue10(stateFlag7, number6, stateFlag8, number7)
end
stringHelper = string
stringHelper = stringHelper.byte
stringHelper2 = "A"
stringHelper = stringHelper(stringHelper2)
stringHelper2 = string
stringHelper2 = stringHelper2.byte
text = "Z"
stringHelper2 = stringHelper2(text)
text = 1
for text2 = stringHelper, stringHelper2, text do
  stringHelper3 = string
  stringHelper3 = stringHelper3.char
  text3 = text2
  stringHelper3 = stringHelper3(text3)
  text3 = "key_%s"
  workingValue3 = text3
  text3 = text3.format
  text4 = stringHelper3
  workingValue4 = stringHelper3.lower
  workingValue4, text4, workingValue6, workingValue7 = workingValue4(text4)
  text3 = text3(workingValue3, workingValue4, text4, workingValue6, workingValue7)
  workingValue3 = workingValue2
  workingValue4 = text3
  text4 = "Spelling Bee (%s)"
  workingValue6 = text4
  text4 = text4.format
  workingValue7 = stringHelper3
  text4 = text4(workingValue6, workingValue7)
  workingValue6 = stringHelper3

  -- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
  function workingValue7()
    local localValue1, localValue2
    localValue1 = workingValue13
    localValue2 = stringHelper3
    localValue1(localValue2)
  end
  workingValue3(workingValue4, text4, workingValue6, workingValue7)
end
stringHelper = workingValue2
stringHelper2 = "key_backspace"
text = "Spelling Bee (Backspace)"
text2 = "BACK"

-- === HELPER FUNCTION: stringHelper3() ===
function stringHelper3()
  local localValue1, localValue2
  localValue1 = workingValue13
  localValue2 = "backspace"
  localValue1(localValue2)
end
stringHelper(stringHelper2, text, text2, stringHelper3)

-- === HELPER FUNCTION: stringHelper() ===
function stringHelper()
  local localValue1, localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3, stateFlag
  localValue1 = text5
  if localValue1 then
    localValue1 = DisableAllControlActions
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 245
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = text5.screenHandle
    if localValue1 then
      localValue1 = SetTextRenderId
      localValue2 = text5.screenHandle
      localValue1(localValue2)
      localValue1 = SetScriptGfxDrawOrder
      localValue2 = 4
      localValue1(localValue2)
      localValue1 = SetScriptGfxDrawBehindPausemenu
      localValue2 = true
      localValue1(localValue2)
      localValue1 = DrawRect
      localValue2 = 0.5
      localValue3 = 0.5
      localValue4 = 1.0
      workingValue10 = 1.0
      stateFlag7 = 38
      number6 = 42
      stateFlag8 = 86
      number7 = 120
      localValue1(localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7)
      localValue1 = DrawSprite
      localValue2 = "cmglogo"
      localValue3 = "cmglogo"
      localValue4 = 0.33
      workingValue10 = 0.2
      stateFlag7 = 0.1
      number6 = 0.2
      stateFlag8 = 0.0
      number7 = 255
      number8 = 255
      number = 255
      number2 = 255
      localValue1(localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2)
      localValue1 = DrawAdvancedTextNoOutline
      localValue2 = 0.6
      localValue3 = 0.17
      localValue4 = 0.005
      workingValue10 = 0.0028
      stateFlag7 = 0.7
      number6 = "Spelling Bee"
      stateFlag8 = 255
      number7 = 255
      number8 = 255
      number = 255
      number2 = 0
      number3 = 0
      localValue1(localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3)
      localValue1 = text5.wordAttempt
      if not localValue1 then
        localValue1 = DrawAdvancedTextNoOutline
        localValue2 = 0.584
        localValue3 = 0.5
        localValue4 = 0.005
        workingValue10 = 0.0028
        stateFlag7 = 0.6
        number6 = "Next round is starting soon.."
        stateFlag8 = 255
        number7 = 255
        number8 = 255
        number = 255
        number2 = 0
        number3 = 0
        localValue1(localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3)
      else
        localValue1 = DrawAdvancedTextNoOutline
        localValue2 = 0.584
        localValue3 = 0.4
        localValue4 = 0.005
        workingValue10 = 0.0028
        stateFlag7 = 0.4
        number6 = CMG
        number6 = number6.getClientPlayerNameFromPlayerSrc
        stateFlag8 = workingValue8
        number6 = number6(stateFlag8)
        stateFlag8 = " is typing..."
        number6 = number6 .. stateFlag8
        stateFlag8 = 255
        number7 = 255
        number8 = 255
        number = 150
        number2 = 0
        number3 = 0
        localValue1(localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3)
        localValue1 = {}
        localValue2 = 255
        localValue3 = 255
        localValue4 = 255
        localValue1[1] = localValue2
        localValue1[2] = localValue3
        localValue1[3] = localValue4
        localValue2 = workingValue11
        if true == localValue2 then
          localValue2 = {}
          localValue3 = 120
          localValue4 = 255
          workingValue10 = 120
          localValue2[1] = localValue3
          localValue2[2] = localValue4
          localValue2[3] = workingValue10
          localValue1 = localValue2
        else
          localValue2 = workingValue11
          if false == localValue2 then
            localValue2 = {}
            localValue3 = 255
            localValue4 = 100
            workingValue10 = 100
            localValue2[1] = localValue3
            localValue2[2] = localValue4
            localValue2[3] = workingValue10
            localValue1 = localValue2
          end
        end
        localValue2 = DrawAdvancedTextNoOutline
        localValue3 = 0.584
        localValue4 = 0.5
        workingValue10 = 0.005
        stateFlag7 = 0.0028
        number6 = 1.2
        stateFlag8 = text5.wordAttempt
        if not stateFlag8 then
          stateFlag8 = ""
        end
        number7 = localValue1[1]
        number8 = localValue1[2]
        number = localValue1[3]
        number2 = 255
        number3 = 0
        stateFlag = 0
        localValue2(localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3, stateFlag)
        localValue2 = math
        localValue2 = localValue2.max
        localValue3 = 0
        localValue4 = cmgOperation.roundTime
        workingValue10 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        workingValue10 = workingValue10()
        stateFlag7 = number5
        workingValue10 = workingValue10 - stateFlag7
        localValue4 = localValue4 - workingValue10
        localValue2 = localValue2(localValue3, localValue4)
        localValue3 = cmgOperation.roundTime
        localValue3 = localValue2 / localValue3
        localValue4 = DrawRect
        workingValue10 = 0.5
        stateFlag7 = 0.95
        number6 = localValue3
        stateFlag8 = 0.05
        number7 = 0
        number8 = 255
        number = 100
        number2 = 255
        localValue4(workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2)
      end
      localValue1 = SetTextRenderId
      localValue2 = GetDefaultScriptRendertargetRenderId
      localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3, stateFlag = localValue2()
      localValue1(localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3, stateFlag)
      localValue1 = SetScriptGfxDrawBehindPausemenu
      localValue2 = false
      localValue1(localValue2)
    end
    localValue1 = text5.bMyTurn
    if localValue1 then
      localValue1 = workingValue14
      localValue1 = localValue1()
      if localValue1 then
        localValue2 = TriggerServerEvent
        localValue3 = "5d598b1a80"
        localValue4 = localValue1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5d598b1a80".
        localValue2(localValue3, localValue4)
      end
    end
  end
end
stringHelper2 = RegisterNetEvent
text = "7de95b2070"
-- Beginner: this function handles network event "7de95b2070".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue11
  if not localValue2 then
    text5.wordAttempt = localValue1
    localValue2 = SendNUIMessage
    localValue3 = {}
    localValue3.transactionType = "keyboardpressed"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7de95b2070".
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "33d150c4dc"
-- Beginner: this function handles network event "33d150c4dc".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3
  workingValue11 = localValue1
  if localValue1 then
    localValue2 = SendNUIMessage
    localValue3 = {}
    localValue3.transactionType = "playCasinoWin"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue2(localValue3)
  else
    localValue2 = SendNUIMessage
    localValue3 = {}
    localValue3.transactionType = "playCasinoLose"
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "33d150c4dc".
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "68a7af13ca"
-- Beginner: this function handles network event "68a7af13ca".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8
  localValue1 = CMG
  localValue1 = localValue1.cancelEmote
  localValue2 = true
  localValue1(localValue2)
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = SetEntityCoords
  localValue3 = localValue1
  localValue4 = workingValue9.x
  workingValue10 = workingValue9.y
  stateFlag7 = workingValue9.z
  number6 = false
  stateFlag8 = false
  number7 = false
  number8 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue2(localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8)
  localValue2 = SetEntityHeading
  localValue3 = localValue1
  localValue4 = workingValue9.w
  -- Beginner: Change the direction an entity is facing.
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "68a7af13ca".
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "d69eaab027"
-- Beginner: this function handles network event "d69eaab027".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3, stateFlag
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = SetEntityCoords
  localValue3 = localValue1
  localValue4 = workingValue9.x
  workingValue10 = workingValue9.y
  stateFlag7 = workingValue9.z
  number6 = false
  stateFlag8 = false
  number7 = false
  number8 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue2(localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8)
  localValue2 = SetEntityHeading
  localValue3 = localValue1
  localValue4 = workingValue9.w
  -- Beginner: Change the direction an entity is facing.
  localValue2(localValue3, localValue4)
  localValue2 = {}
  localValue2.dict = "ebrwny_pack000"
  localValue2.anim = "ebrwny_sitf000"
  localValue3 = CMG
  localValue3 = localValue3.loadAnimDict
  localValue4 = localValue2.dict
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue3(localValue4)
  localValue3 = TaskPlayAnim
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  workingValue10 = localValue2.dict
  stateFlag7 = localValue2.anim
  number6 = 8.0
  stateFlag8 = -8.0
  number7 = -1
  number8 = 1
  number = 0.0
  number2 = false
  number3 = false
  stateFlag = false
  -- Beginner: Play an animation on a ped.
  localValue3(localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3, stateFlag)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d69eaab027".
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "286c051578"
-- Beginner: this function handles network event "286c051578".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2
  localValue1 = CMG
  localValue1 = localValue1.stopEventSequence
  localValue1()
  localValue1 = RequestStreamedTextureDict
  localValue2 = "cmglogo"
  localValue3 = false
  localValue1(localValue2, localValue3)
  while true do
    localValue1 = HasStreamedTextureDictLoaded
    localValue2 = "cmglogo"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = CMG
  localValue1 = localValue1.createThreadOnTick
  localValue2 = stringHelper
  localValue3 = "Spelling Bee"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue1(localValue2, localValue3)
  localValue1 = vector4
  localValue2 = 681.03295898438
  localValue3 = 564.11865234375
  localValue4 = 132.0
  workingValue10 = 308.97637939453
  localValue1 = localValue1(localValue2, localValue3, localValue4, workingValue10)
  localValue2 = CreateCamWithParams
  localValue3 = "DEFAULT_SCRIPTED_CAMERA"
  localValue4 = localValue1.x
  workingValue10 = localValue1.y
  stateFlag7 = localValue1.z
  number6 = 0.0
  stateFlag8 = 0.0
  number7 = 0.0
  number8 = 50.0
  number = false
  number2 = 0
  localValue2 = localValue2(localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2)
  localValue3 = SetCamActiveWithInterp
  localValue4 = localValue2
  workingValue10 = GetRenderingCam
  workingValue10 = workingValue10()
  stateFlag7 = 100
  number6 = 0
  stateFlag8 = 0
  localValue3(localValue4, workingValue10, stateFlag7, number6, stateFlag8)
  localValue3 = RenderScriptCams
  localValue4 = true
  workingValue10 = false
  stateFlag7 = 0
  number6 = false
  stateFlag8 = false
  localValue3(localValue4, workingValue10, stateFlag7, number6, stateFlag8)
  localValue3 = PointCamAtCoord
  localValue4 = localValue2
  workingValue10 = 684.69396972656
  stateFlag7 = 573.97253417969
  number6 = 133.07243347168
  localValue3(localValue4, workingValue10, stateFlag7, number6)
  localValue3 = CMG
  localValue3 = localValue3.setCanOpenPhone
  localValue4 = false
  localValue3(localValue4)
  localValue3 = drawNativeText
  localValue4 = ""
  -- Beginner: Draw GTA-style text on screen.
  localValue3(localValue4)
  localValue3 = CMG
  localValue3 = localValue3.hideAllDisplays
  localValue4 = "spellingbee"
  localValue3(localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "286c051578".
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "c01d9035c4"
-- Beginner: this function handles network event "c01d9035c4".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = cmgOperation.spawnLocations
  localValue3 = localValue3[localValue1]
  workingValue9 = localValue3
  localValue3 = SetEntityCoords
  localValue4 = localValue2
  workingValue10 = workingValue9.x
  stateFlag7 = workingValue9.y
  number6 = workingValue9.z
  stateFlag8 = true
  number7 = false
  number8 = false
  number = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue3(localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number)
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  workingValue10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, workingValue10)
  localValue3 = SetEntityHealth
  localValue4 = localValue2
  workingValue10 = 103
  localValue3(localValue4, workingValue10)
  localValue3 = SetEntityHeading
  localValue4 = localValue2
  workingValue10 = workingValue9.w
  -- Beginner: Change the direction an entity is facing.
  localValue3(localValue4, workingValue10)
  localValue3 = {}
  localValue4 = CMG
  localValue4 = localValue4.createTimerBars
  -- Beginner: result below is timerBars.
  localValue4 = localValue4()
  localValue3.timers = localValue4
  localValue3.bMyTurn = false
  text5 = localValue3
  localValue3 = currentEvent
  localValue3.drawPlayersTimeBar = false
  localValue3 = vector4
  localValue4 = 686.071
  workingValue10 = 576.709
  stateFlag7 = 132.466
  number6 = 340.0
  localValue3 = localValue3(localValue4, workingValue10, stateFlag7, number6)
  localValue4 = 1358323305
  workingValue10 = CMG
  workingValue10 = workingValue10.loadModel
  stateFlag7 = localValue4
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workingValue10(stateFlag7)
  workingValue10 = CreateObjectNoOffset
  stateFlag7 = localValue4
  number6 = localValue3.x
  stateFlag8 = localValue3.y
  number7 = localValue3.z
  number8 = false
  number = false
  number2 = false
  -- Beginner: result below is objectEntity.
  workingValue10 = workingValue10(stateFlag7, number6, stateFlag8, number7, number8, number, number2)
  text5.screenObject = workingValue10
  workingValue10 = FreezeEntityPosition
  stateFlag7 = text5.screenObject
  number6 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  workingValue10(stateFlag7, number6)
  workingValue10 = SetEntityHeading
  stateFlag7 = text5.screenObject
  number6 = localValue3.w
  -- Beginner: Change the direction an entity is facing.
  workingValue10(stateFlag7, number6)
  workingValue10 = workingValue12
  stateFlag7 = "cinscreen"
  number6 = localValue4
  workingValue10 = workingValue10(stateFlag7, number6)
  text5.screenHandle = workingValue10
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c01d9035c4".
stringHelper2(text, text2)
stringHelper2 = CMG
stringHelper2 = stringHelper2.registerMinigameCleanupHandler
text = cmgOperation.minigameName

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.deleteThreadOnTick
  localValue2 = stringHelper
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.clearMinigameBounds
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.stopEventSequence
  localValue1()
  localValue1 = text5
  if localValue1 then
    localValue1 = DeleteEntity
    localValue2 = text5.screenObject
    -- Beginner: Delete a GTA entity.
    localValue1(localValue2)
  end
  localValue1 = CMG
  localValue1 = localValue1.setCanOpenPhone
  localValue2 = true
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.setCanAnim
  localValue2 = true
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.showAllDisplays
  localValue2 = "spellingbee"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.showHud
  localValue1()
end
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "31e0204868"
-- Beginner: this function handles network event "31e0204868".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  number5 = localValue2
  workingValue8 = localValue1
  localValue2 = nil
  workingValue11 = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "31e0204868".
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "e9ed909a33"
-- Beginner: this function handles network event "e9ed909a33".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  text5.wordAttempt = ""
end
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "a2fba5330c"
-- Beginner: this function handles network event "a2fba5330c".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2
  text5.bMyTurn = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a2fba5330c".
stringHelper2(text, text2)
stringHelper2 = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = text5
    if localValue2 then
      localValue2 = text5.screenObject
      if localValue2 then
        localValue2 = DeleteEntity
        localValue3 = text5.screenObject
        -- Beginner: Delete a GTA entity.
        localValue2(localValue3)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
stringHelper2(text, text2)
stringHelper2 = RegisterNetEvent
text = "CMG:ttsPlay"
-- Beginner: this function handles network event "CMG:ttsPlay".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6
  localValue2 = SetNuiFocus
  localValue3 = false
  localValue4 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue2(localValue3, localValue4)
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.type = "playTTS"
  localValue4 = "data:%s;base64,%s"
  workingValue10 = localValue4
  localValue4 = localValue4.format
  stateFlag7 = localValue1.mime
  if not stateFlag7 then
    stateFlag7 = "audio/mpeg"
  end
  number6 = localValue1.base64
  localValue4 = localValue4(workingValue10, stateFlag7, number6)
  localValue3.dataUrl = localValue4
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMG:ttsPlay".
stringHelper2(text, text2)
stringHelper2 = {}
stringHelper2.dict = "lunyx@mic@p1"
stringHelper2.anim = "mic@p1"
stringHelper2.prop = "sf_prop_sf_mic_01a"
stringHelper2.bone = 28422
text = {}
text2 = 0.03
stringHelper3 = 0.02
text3 = -0.03
text[1] = text2
text[2] = stringHelper3
text[3] = text3
stringHelper2.pos = text
text = {}
text2 = 162.9608
stringHelper3 = -91.1712
text3 = -3.8249
text[1] = text2
text[2] = stringHelper3
text[3] = text3
stringHelper2.rot = text
stringHelper2.propEntity = 0

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, workingValue10
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = ClearPedSecondaryTask
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = stringHelper2.propEntity
  if localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = stringHelper2.propEntity
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DetachEntity
      localValue3 = stringHelper2.propEntity
      localValue4 = true
      workingValue10 = true
      localValue2(localValue3, localValue4, workingValue10)
      localValue2 = DeleteEntity
      localValue3 = stringHelper2.propEntity
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
    end
  end
  stringHelper2.propEntity = nil
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number4, stateFlag6
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.loadAnimDict
  localValue3 = stringHelper2.dict
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue2(localValue3)
  localValue2 = TaskPlayAnim
  localValue3 = localValue1
  localValue4 = stringHelper2.dict
  workingValue10 = stringHelper2.anim
  stateFlag7 = 8.0
  number6 = -8.0
  stateFlag8 = -1
  number7 = 49
  number8 = 0.0
  number = false
  number2 = false
  number3 = false
  -- Beginner: Play an animation on a ped.
  localValue2(localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3)
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = stringHelper2.prop
  localValue2 = localValue2(localValue3)
  localValue3 = GetEntityCoords
  localValue4 = localValue1
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  if not localValue2 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.requestEntitySpawn
  workingValue10 = "emote_object_second"
  stateFlag7 = stringHelper2.prop
  localValue4(workingValue10, stateFlag7)
  localValue4 = CreateObject
  workingValue10 = localValue2
  stateFlag7 = localValue3.x
  number6 = localValue3.y
  stateFlag8 = localValue3.z
  stateFlag8 = stateFlag8 + 0.2
  number7 = true
  number8 = true
  number = false
  -- Beginner: result below is objectEntity.
  localValue4 = localValue4(workingValue10, stateFlag7, number6, stateFlag8, number7, number8, number)
  stringHelper2.propEntity = localValue4
  localValue4 = GetPedBoneIndex
  workingValue10 = localValue1
  stateFlag7 = stringHelper2.bone
  localValue4 = localValue4(workingValue10, stateFlag7)
  workingValue10 = AttachEntityToEntity
  stateFlag7 = stringHelper2.propEntity
  number6 = localValue1
  stateFlag8 = localValue4
  number7 = stringHelper2.pos
  number7 = number7[1]
  number8 = stringHelper2.pos
  number8 = number8[2]
  number = stringHelper2.pos
  number = number[3]
  number2 = stringHelper2.rot
  number2 = number2[1]
  number3 = stringHelper2.rot
  number3 = number3[2]
  stateFlag = stringHelper2.rot
  stateFlag = stateFlag[3]
  stateFlag2 = true
  stateFlag3 = true
  stateFlag4 = false
  stateFlag5 = true
  number4 = 1
  stateFlag6 = true
  -- Beginner: Attach one entity to another entity.
  workingValue10(stateFlag7, number6, stateFlag8, number7, number8, number, number2, number3, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number4, stateFlag6)
  workingValue10 = SetModelAsNoLongerNeeded
  stateFlag7 = localValue2
  workingValue10(stateFlag7)
end
stringHelper3 = RegisterNetEvent
text3 = "5bea9f6180"
-- Beginner: this function handles network event "5bea9f6180".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7
  localValue1 = TaskGoStraightToCoord
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = 684.23529052734
  localValue4 = 571.80072021484
  workingValue10 = 130.46130371094
  stateFlag7 = 1.0
  number6 = -1
  stateFlag8 = 155.0
  number7 = 0.3
  localValue1(localValue2, localValue3, localValue4, workingValue10, stateFlag7, number6, stateFlag8, number7)
  localValue1 = Wait
  localValue2 = 4000
  localValue1(localValue2)
  localValue1 = text2
  localValue1()
  while true do
    localValue1 = text5.bMyTurn
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  while true do
    localValue1 = text5.bMyTurn
    if not localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = text
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5bea9f6180".
stringHelper3(text3, workingValue3)
