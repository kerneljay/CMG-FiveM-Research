--[[
    Beginner Guide: cl_spellingbee.lua
    ==================================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Spellingbee
    ============================

    File: cmg/prod/client/events/cl_spellingbee.lua
    Purpose: This file contains event/minigame logic.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/events/cfg_spellingbee

    Network/hash identifiers found: 11
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * CMG:ttsPlay

]]
local cmgCall, textValue5, numberValue5, workValue8, workValue9, dataTable, workValue11, workValue12, workValue13, workValue14, workValue2, stringHelper, stringHelper2, textValue, textValue2, stringHelper3, textValue3, workValue3, workValue4, textValue4, workValue6, workValue7
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue5 = "cfg/events/cfg_spellingbee"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue5)
textValue5 = nil
numberValue5 = 0
workValue8 = nil
workValue9 = nil
dataTable = {}
workValue11 = nil
function workValue12(arg1, arg2)
  local arg3, arg4, workValue10, flag7
  arg3 = 0
  arg4 = IsNamedRendertargetRegistered
  workValue10 = arg1
  arg4 = arg4(workValue10)
  if not arg4 then
    arg4 = RegisterNamedRendertarget
    workValue10 = arg1
    flag7 = false
    arg4(workValue10, flag7)
  end
  arg4 = IsNamedRendertargetLinked
  workValue10 = arg2
  arg4 = arg4(workValue10)
  if not arg4 then
    arg4 = LinkNamedRendertarget
    workValue10 = arg2
    arg4(workValue10)
  end
  arg4 = IsNamedRendertargetRegistered
  workValue10 = arg1
  arg4 = arg4(workValue10)
  if arg4 then
    arg4 = GetNamedRendertargetRenderId
    workValue10 = arg1
    arg4 = arg4(workValue10)
    arg3 = arg4
  end
  return arg3
end
function workValue13(arg1)
  local arg2, arg3
  arg2 = textValue5
  if arg2 then
    arg2 = textValue5.bMyTurn
    if arg2 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg2 = dataTable
  arg2 = #arg2
  arg3 = arg2 + 1
  arg2 = dataTable
  arg2[arg3] = arg1
end
function workValue14()
  local arg1, arg2, arg3, arg4
  arg1 = dataTable
  arg1 = #arg1
  if arg1 > 0 then
    arg1 = dataTable
    arg1 = arg1[1]
    arg2 = table
    arg2 = arg2.remove
    arg3 = dataTable
    arg4 = 1
    arg2(arg3, arg4)
    return arg1
  end
  arg1 = nil
  return arg1
end
function workValue2(arg1, arg2, arg3, arg4)
  local workValue10, flag7, numberValue6, flag8, numberValue7
  workValue10 = RegisterCommand
  flag7 = arg1
  -- Beginner: this function is the command handler for the command above.
  function numberValue6()
    local workValue, workValue5
    workValue = arg4
    workValue()
  end
  flag8 = false
  -- Beginner: Register a chat/console command. Event/command: nil.
  workValue10(flag7, numberValue6, flag8)
  workValue10 = RegisterKeyMapping
  flag7 = arg1
  numberValue6 = arg2
  flag8 = "keyboard"
  numberValue7 = arg3
  -- Beginner: Bind a command to a keyboard/controller key.
  workValue10(flag7, numberValue6, flag8, numberValue7)
end
stringHelper = string
stringHelper = stringHelper.byte
stringHelper2 = "A"
stringHelper = stringHelper(stringHelper2)
stringHelper2 = string
stringHelper2 = stringHelper2.byte
textValue = "Z"
stringHelper2 = stringHelper2(textValue)
textValue = 1
for textValue2 = stringHelper, stringHelper2, textValue do
  stringHelper3 = string
  stringHelper3 = stringHelper3.char
  textValue3 = textValue2
  stringHelper3 = stringHelper3(textValue3)
  textValue3 = "key_%s"
  workValue3 = textValue3
  textValue3 = textValue3.format
  textValue4 = stringHelper3
  workValue4 = stringHelper3.lower
  workValue4, textValue4, workValue6, workValue7 = workValue4(textValue4)
  textValue3 = textValue3(workValue3, workValue4, textValue4, workValue6, workValue7)
  workValue3 = workValue2
  workValue4 = textValue3
  textValue4 = "Spelling Bee (%s)"
  workValue6 = textValue4
  textValue4 = textValue4.format
  workValue7 = stringHelper3
  textValue4 = textValue4(workValue6, workValue7)
  workValue6 = stringHelper3
  function workValue7()
    local arg1, arg2
    arg1 = workValue13
    arg2 = stringHelper3
    arg1(arg2)
  end
  workValue3(workValue4, textValue4, workValue6, workValue7)
end
stringHelper = workValue2
stringHelper2 = "key_backspace"
textValue = "Spelling Bee (Backspace)"
textValue2 = "BACK"
function stringHelper3()
  local arg1, arg2
  arg1 = workValue13
  arg2 = "backspace"
  arg1(arg2)
end
stringHelper(stringHelper2, textValue, textValue2, stringHelper3)
function stringHelper()
  local arg1, arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3, flag
  arg1 = textValue5
  if arg1 then
    arg1 = DisableAllControlActions
    arg2 = 0
    arg1(arg2)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 245
    arg4 = true
    arg1(arg2, arg3, arg4)
    arg1 = textValue5.screenHandle
    if arg1 then
      arg1 = SetTextRenderId
      arg2 = textValue5.screenHandle
      arg1(arg2)
      arg1 = SetScriptGfxDrawOrder
      arg2 = 4
      arg1(arg2)
      arg1 = SetScriptGfxDrawBehindPausemenu
      arg2 = true
      arg1(arg2)
      arg1 = DrawRect
      arg2 = 0.5
      arg3 = 0.5
      arg4 = 1.0
      workValue10 = 1.0
      flag7 = 38
      numberValue6 = 42
      flag8 = 86
      numberValue7 = 120
      arg1(arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7)
      arg1 = DrawSprite
      arg2 = "cmglogo"
      arg3 = "cmglogo"
      arg4 = 0.33
      workValue10 = 0.2
      flag7 = 0.1
      numberValue6 = 0.2
      flag8 = 0.0
      numberValue7 = 255
      numberValue8 = 255
      numberValue = 255
      numberValue2 = 255
      arg1(arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2)
      arg1 = DrawAdvancedTextNoOutline
      arg2 = 0.6
      arg3 = 0.17
      arg4 = 0.005
      workValue10 = 0.0028
      flag7 = 0.7
      numberValue6 = "Spelling Bee"
      flag8 = 255
      numberValue7 = 255
      numberValue8 = 255
      numberValue = 255
      numberValue2 = 0
      numberValue3 = 0
      arg1(arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3)
      arg1 = textValue5.wordAttempt
      if not arg1 then
        arg1 = DrawAdvancedTextNoOutline
        arg2 = 0.584
        arg3 = 0.5
        arg4 = 0.005
        workValue10 = 0.0028
        flag7 = 0.6
        numberValue6 = "Next round is starting soon.."
        flag8 = 255
        numberValue7 = 255
        numberValue8 = 255
        numberValue = 255
        numberValue2 = 0
        numberValue3 = 0
        arg1(arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3)
      else
        arg1 = DrawAdvancedTextNoOutline
        arg2 = 0.584
        arg3 = 0.4
        arg4 = 0.005
        workValue10 = 0.0028
        flag7 = 0.4
        numberValue6 = CMG
        numberValue6 = numberValue6.getClientPlayerNameFromPlayerSrc
        flag8 = workValue8
        numberValue6 = numberValue6(flag8)
        flag8 = " is typing..."
        numberValue6 = numberValue6 .. flag8
        flag8 = 255
        numberValue7 = 255
        numberValue8 = 255
        numberValue = 150
        numberValue2 = 0
        numberValue3 = 0
        arg1(arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3)
        arg1 = {}
        arg2 = 255
        arg3 = 255
        arg4 = 255
        arg1[1] = arg2
        arg1[2] = arg3
        arg1[3] = arg4
        arg2 = workValue11
        if true == arg2 then
          arg2 = {}
          arg3 = 120
          arg4 = 255
          workValue10 = 120
          arg2[1] = arg3
          arg2[2] = arg4
          arg2[3] = workValue10
          arg1 = arg2
        else
          arg2 = workValue11
          if false == arg2 then
            arg2 = {}
            arg3 = 255
            arg4 = 100
            workValue10 = 100
            arg2[1] = arg3
            arg2[2] = arg4
            arg2[3] = workValue10
            arg1 = arg2
          end
        end
        arg2 = DrawAdvancedTextNoOutline
        arg3 = 0.584
        arg4 = 0.5
        workValue10 = 0.005
        flag7 = 0.0028
        numberValue6 = 1.2
        flag8 = textValue5.wordAttempt
        if not flag8 then
          flag8 = ""
        end
        numberValue7 = arg1[1]
        numberValue8 = arg1[2]
        numberValue = arg1[3]
        numberValue2 = 255
        numberValue3 = 0
        flag = 0
        arg2(arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3, flag)
        arg2 = math
        arg2 = arg2.max
        arg3 = 0
        arg4 = cmgCall.roundTime
        workValue10 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        workValue10 = workValue10()
        flag7 = numberValue5
        workValue10 = workValue10 - flag7
        arg4 = arg4 - workValue10
        arg2 = arg2(arg3, arg4)
        arg3 = cmgCall.roundTime
        arg3 = arg2 / arg3
        arg4 = DrawRect
        workValue10 = 0.5
        flag7 = 0.95
        numberValue6 = arg3
        flag8 = 0.05
        numberValue7 = 0
        numberValue8 = 255
        numberValue = 100
        numberValue2 = 255
        arg4(workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2)
      end
      arg1 = SetTextRenderId
      arg2 = GetDefaultScriptRendertargetRenderId
      arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3, flag = arg2()
      arg1(arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3, flag)
      arg1 = SetScriptGfxDrawBehindPausemenu
      arg2 = false
      arg1(arg2)
    end
    arg1 = textValue5.bMyTurn
    if arg1 then
      arg1 = workValue14
      arg1 = arg1()
      if arg1 then
        arg2 = TriggerServerEvent
        arg3 = "5d598b1a80"
        arg4 = arg1
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5d598b1a80".
        arg2(arg3, arg4)
      end
    end
  end
end
stringHelper2 = RegisterNetEvent
textValue = "7de95b2070"
-- Beginner: this function handles network event "7de95b2070".
function textValue2(arg1)
  local arg2, arg3
  arg2 = workValue11
  if not arg2 then
    textValue5.wordAttempt = arg1
    arg2 = SendNUIMessage
    arg3 = {}
    arg3.transactionType = "keyboardpressed"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7de95b2070".
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "33d150c4dc"
-- Beginner: this function handles network event "33d150c4dc".
function textValue2(arg1)
  local arg2, arg3
  workValue11 = arg1
  if arg1 then
    arg2 = SendNUIMessage
    arg3 = {}
    arg3.transactionType = "playCasinoWin"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg2(arg3)
  else
    arg2 = SendNUIMessage
    arg3 = {}
    arg3.transactionType = "playCasinoLose"
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "33d150c4dc".
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "68a7af13ca"
-- Beginner: this function handles network event "68a7af13ca".
function textValue2()
  local arg1, arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8
  arg1 = CMG
  arg1 = arg1.cancelEmote
  arg2 = true
  arg1(arg2)
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = SetEntityCoords
  arg3 = arg1
  arg4 = workValue9.x
  workValue10 = workValue9.y
  flag7 = workValue9.z
  numberValue6 = false
  flag8 = false
  numberValue7 = false
  numberValue8 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg2(arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8)
  arg2 = SetEntityHeading
  arg3 = arg1
  arg4 = workValue9.w
  -- Beginner: Change the direction an entity is facing.
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "68a7af13ca".
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "d69eaab027"
-- Beginner: this function handles network event "d69eaab027".
function textValue2()
  local arg1, arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3, flag
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = SetEntityCoords
  arg3 = arg1
  arg4 = workValue9.x
  workValue10 = workValue9.y
  flag7 = workValue9.z
  numberValue6 = false
  flag8 = false
  numberValue7 = false
  numberValue8 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg2(arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8)
  arg2 = SetEntityHeading
  arg3 = arg1
  arg4 = workValue9.w
  -- Beginner: Change the direction an entity is facing.
  arg2(arg3, arg4)
  arg2 = {}
  arg2.dict = "ebrwny_pack000"
  arg2.anim = "ebrwny_sitf000"
  arg3 = CMG
  arg3 = arg3.loadAnimDict
  arg4 = arg2.dict
  -- Beginner: Load a GTA animation dictionary before using it.
  arg3(arg4)
  arg3 = TaskPlayAnim
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  workValue10 = arg2.dict
  flag7 = arg2.anim
  numberValue6 = 8.0
  flag8 = -8.0
  numberValue7 = -1
  numberValue8 = 1
  numberValue = 0.0
  numberValue2 = false
  numberValue3 = false
  flag = false
  -- Beginner: Play an animation on a ped.
  arg3(arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3, flag)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d69eaab027".
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "286c051578"
-- Beginner: this function handles network event "286c051578".
function textValue2()
  local arg1, arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2
  arg1 = CMG
  arg1 = arg1.stopEventSequence
  arg1()
  arg1 = RequestStreamedTextureDict
  arg2 = "cmglogo"
  arg3 = false
  arg1(arg2, arg3)
  while true do
    arg1 = HasStreamedTextureDictLoaded
    arg2 = "cmglogo"
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = CMG
  arg1 = arg1.createThreadOnTick
  arg2 = stringHelper
  arg3 = "Spelling Bee"
  -- Beginner: Run a helper every game frame while this script is active.
  arg1(arg2, arg3)
  arg1 = vector4
  arg2 = 681.03295898438
  arg3 = 564.11865234375
  arg4 = 132.0
  workValue10 = 308.97637939453
  arg1 = arg1(arg2, arg3, arg4, workValue10)
  arg2 = CreateCamWithParams
  arg3 = "DEFAULT_SCRIPTED_CAMERA"
  arg4 = arg1.x
  workValue10 = arg1.y
  flag7 = arg1.z
  numberValue6 = 0.0
  flag8 = 0.0
  numberValue7 = 0.0
  numberValue8 = 50.0
  numberValue = false
  numberValue2 = 0
  arg2 = arg2(arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2)
  arg3 = SetCamActiveWithInterp
  arg4 = arg2
  workValue10 = GetRenderingCam
  workValue10 = workValue10()
  flag7 = 100
  numberValue6 = 0
  flag8 = 0
  arg3(arg4, workValue10, flag7, numberValue6, flag8)
  arg3 = RenderScriptCams
  arg4 = true
  workValue10 = false
  flag7 = 0
  numberValue6 = false
  flag8 = false
  arg3(arg4, workValue10, flag7, numberValue6, flag8)
  arg3 = PointCamAtCoord
  arg4 = arg2
  workValue10 = 684.69396972656
  flag7 = 573.97253417969
  numberValue6 = 133.07243347168
  arg3(arg4, workValue10, flag7, numberValue6)
  arg3 = CMG
  arg3 = arg3.setCanOpenPhone
  arg4 = false
  arg3(arg4)
  arg3 = drawNativeText
  arg4 = ""
  -- Beginner: Draw GTA-style text on screen.
  arg3(arg4)
  arg3 = CMG
  arg3 = arg3.hideAllDisplays
  arg4 = "spellingbee"
  arg3(arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "286c051578".
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "c01d9035c4"
-- Beginner: this function handles network event "c01d9035c4".
function textValue2(arg1)
  local arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = cmgCall.spawnLocations
  arg3 = arg3[arg1]
  workValue9 = arg3
  arg3 = SetEntityCoords
  arg4 = arg2
  workValue10 = workValue9.x
  flag7 = workValue9.y
  numberValue6 = workValue9.z
  flag8 = true
  numberValue7 = false
  numberValue8 = false
  numberValue = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg3(arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue)
  arg3 = FreezeEntityPosition
  arg4 = arg2
  workValue10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, workValue10)
  arg3 = SetEntityHealth
  arg4 = arg2
  workValue10 = 103
  arg3(arg4, workValue10)
  arg3 = SetEntityHeading
  arg4 = arg2
  workValue10 = workValue9.w
  -- Beginner: Change the direction an entity is facing.
  arg3(arg4, workValue10)
  arg3 = {}
  arg4 = CMG
  arg4 = arg4.createTimerBars
  -- Beginner: result below is timerBars.
  arg4 = arg4()
  arg3.timers = arg4
  arg3.bMyTurn = false
  textValue5 = arg3
  arg3 = currentEvent
  arg3.drawPlayersTimeBar = false
  arg3 = vector4
  arg4 = 686.071
  workValue10 = 576.709
  flag7 = 132.466
  numberValue6 = 340.0
  arg3 = arg3(arg4, workValue10, flag7, numberValue6)
  arg4 = 1358323305
  workValue10 = CMG
  workValue10 = workValue10.loadModel
  flag7 = arg4
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workValue10(flag7)
  workValue10 = CreateObjectNoOffset
  flag7 = arg4
  numberValue6 = arg3.x
  flag8 = arg3.y
  numberValue7 = arg3.z
  numberValue8 = false
  numberValue = false
  numberValue2 = false
  -- Beginner: result below is objectEntity.
  workValue10 = workValue10(flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2)
  textValue5.screenObject = workValue10
  workValue10 = FreezeEntityPosition
  flag7 = textValue5.screenObject
  numberValue6 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  workValue10(flag7, numberValue6)
  workValue10 = SetEntityHeading
  flag7 = textValue5.screenObject
  numberValue6 = arg3.w
  -- Beginner: Change the direction an entity is facing.
  workValue10(flag7, numberValue6)
  workValue10 = workValue12
  flag7 = "cinscreen"
  numberValue6 = arg4
  workValue10 = workValue10(flag7, numberValue6)
  textValue5.screenHandle = workValue10
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c01d9035c4".
stringHelper2(textValue, textValue2)
stringHelper2 = CMG
stringHelper2 = stringHelper2.registerMinigameCleanupHandler
textValue = cmgCall.minigameName
function textValue2()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.deleteThreadOnTick
  arg2 = stringHelper
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.clearMinigameBounds
  arg1()
  arg1 = CMG
  arg1 = arg1.stopEventSequence
  arg1()
  arg1 = textValue5
  if arg1 then
    arg1 = DeleteEntity
    arg2 = textValue5.screenObject
    -- Beginner: Delete a GTA entity.
    arg1(arg2)
  end
  arg1 = CMG
  arg1 = arg1.setCanOpenPhone
  arg2 = true
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.setCanAnim
  arg2 = true
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.showAllDisplays
  arg2 = "spellingbee"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.showHud
  arg1()
end
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "31e0204868"
-- Beginner: this function handles network event "31e0204868".
function textValue2(arg1)
  local arg2
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  numberValue5 = arg2
  workValue8 = arg1
  arg2 = nil
  workValue11 = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "31e0204868".
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "e9ed909a33"
-- Beginner: this function handles network event "e9ed909a33".
function textValue2()
  local arg1, arg2
  textValue5.wordAttempt = ""
end
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "a2fba5330c"
-- Beginner: this function handles network event "a2fba5330c".
function textValue2(arg1)
  local arg2
  textValue5.bMyTurn = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a2fba5330c".
stringHelper2(textValue, textValue2)
stringHelper2 = AddEventHandler
textValue = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function textValue2(arg1)
  local arg2, arg3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = textValue5
    if arg2 then
      arg2 = textValue5.screenObject
      if arg2 then
        arg2 = DeleteEntity
        arg3 = textValue5.screenObject
        -- Beginner: Delete a GTA entity.
        arg2(arg3)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
stringHelper2(textValue, textValue2)
stringHelper2 = RegisterNetEvent
textValue = "CMG:ttsPlay"
-- Beginner: this function handles network event "CMG:ttsPlay".
function textValue2(arg1)
  local arg2, arg3, arg4, workValue10, flag7, numberValue6
  arg2 = SetNuiFocus
  arg3 = false
  arg4 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg2(arg3, arg4)
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.type = "playTTS"
  arg4 = "data:%s;base64,%s"
  workValue10 = arg4
  arg4 = arg4.format
  flag7 = arg1.mime
  if not flag7 then
    flag7 = "audio/mpeg"
  end
  numberValue6 = arg1.base64
  arg4 = arg4(workValue10, flag7, numberValue6)
  arg3.dataUrl = arg4
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMG:ttsPlay".
stringHelper2(textValue, textValue2)
stringHelper2 = {}
stringHelper2.dict = "lunyx@mic@p1"
stringHelper2.anim = "mic@p1"
stringHelper2.prop = "sf_prop_sf_mic_01a"
stringHelper2.bone = 28422
textValue = {}
textValue2 = 0.03
stringHelper3 = 0.02
textValue3 = -0.03
textValue[1] = textValue2
textValue[2] = stringHelper3
textValue[3] = textValue3
stringHelper2.pos = textValue
textValue = {}
textValue2 = 162.9608
stringHelper3 = -91.1712
textValue3 = -3.8249
textValue[1] = textValue2
textValue[2] = stringHelper3
textValue[3] = textValue3
stringHelper2.rot = textValue
stringHelper2.propEntity = 0
function textValue()
  local arg1, arg2, arg3, arg4, workValue10
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = ClearPedSecondaryTask
  arg3 = arg1
  arg2(arg3)
  arg2 = stringHelper2.propEntity
  if arg2 then
    arg2 = DoesEntityExist
    arg3 = stringHelper2.propEntity
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DetachEntity
      arg3 = stringHelper2.propEntity
      arg4 = true
      workValue10 = true
      arg2(arg3, arg4, workValue10)
      arg2 = DeleteEntity
      arg3 = stringHelper2.propEntity
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
    end
  end
  stringHelper2.propEntity = nil
end
function textValue2()
  local arg1, arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3, flag, flag2, flag3, flag4, flag5, numberValue4, flag6
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  arg3 = stringHelper2.dict
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(arg3)
  arg2 = TaskPlayAnim
  arg3 = arg1
  arg4 = stringHelper2.dict
  workValue10 = stringHelper2.anim
  flag7 = 8.0
  numberValue6 = -8.0
  flag8 = -1
  numberValue7 = 49
  numberValue8 = 0.0
  numberValue = false
  numberValue2 = false
  numberValue3 = false
  -- Beginner: Play an animation on a ped.
  arg2(arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3)
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = stringHelper2.prop
  arg2 = arg2(arg3)
  arg3 = GetEntityCoords
  arg4 = arg1
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  if not arg2 then
    return
  end
  arg4 = CMG
  arg4 = arg4.requestEntitySpawn
  workValue10 = "emote_object_second"
  flag7 = stringHelper2.prop
  arg4(workValue10, flag7)
  arg4 = CreateObject
  workValue10 = arg2
  flag7 = arg3.x
  numberValue6 = arg3.y
  flag8 = arg3.z
  flag8 = flag8 + 0.2
  numberValue7 = true
  numberValue8 = true
  numberValue = false
  -- Beginner: result below is objectEntity.
  arg4 = arg4(workValue10, flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue)
  stringHelper2.propEntity = arg4
  arg4 = GetPedBoneIndex
  workValue10 = arg1
  flag7 = stringHelper2.bone
  arg4 = arg4(workValue10, flag7)
  workValue10 = AttachEntityToEntity
  flag7 = stringHelper2.propEntity
  numberValue6 = arg1
  flag8 = arg4
  numberValue7 = stringHelper2.pos
  numberValue7 = numberValue7[1]
  numberValue8 = stringHelper2.pos
  numberValue8 = numberValue8[2]
  numberValue = stringHelper2.pos
  numberValue = numberValue[3]
  numberValue2 = stringHelper2.rot
  numberValue2 = numberValue2[1]
  numberValue3 = stringHelper2.rot
  numberValue3 = numberValue3[2]
  flag = stringHelper2.rot
  flag = flag[3]
  flag2 = true
  flag3 = true
  flag4 = false
  flag5 = true
  numberValue4 = 1
  flag6 = true
  -- Beginner: Attach one entity to another entity.
  workValue10(flag7, numberValue6, flag8, numberValue7, numberValue8, numberValue, numberValue2, numberValue3, flag, flag2, flag3, flag4, flag5, numberValue4, flag6)
  workValue10 = SetModelAsNoLongerNeeded
  flag7 = arg2
  workValue10(flag7)
end
stringHelper3 = RegisterNetEvent
textValue3 = "5bea9f6180"
-- Beginner: this function handles network event "5bea9f6180".
function workValue3()
  local arg1, arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7
  arg1 = TaskGoStraightToCoord
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 684.23529052734
  arg4 = 571.80072021484
  workValue10 = 130.46130371094
  flag7 = 1.0
  numberValue6 = -1
  flag8 = 155.0
  numberValue7 = 0.3
  arg1(arg2, arg3, arg4, workValue10, flag7, numberValue6, flag8, numberValue7)
  arg1 = Wait
  arg2 = 4000
  arg1(arg2)
  arg1 = textValue2
  arg1()
  while true do
    arg1 = textValue5.bMyTurn
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  while true do
    arg1 = textValue5.bMyTurn
    if not arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = textValue
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5bea9f6180".
stringHelper3(textValue3, workValue3)