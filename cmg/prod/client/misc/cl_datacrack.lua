--[[
    LEVEL 1 BEGINNER GUIDE — Datacrack
    =======================================

    File: cmg/prod/client/misc/cl_datacrack.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Datacrack feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 9
      * Background threads: 0
      * Always-running loops: 5
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
local stateFlag, dataCollection, dataCollection2, dataCollection3, workingValue2
stateFlag = false
dataCollection = {}
dataCollection2 = {}
dataCollection2.val1 = 0.4
dataCollection[1] = dataCollection2
dataCollection2 = {}
dataCollection2.val1 = 0.4
dataCollection[2] = dataCollection2
dataCollection2 = {}
dataCollection2.val1 = 0.4
dataCollection[3] = dataCollection2
dataCollection2 = {}
dataCollection2.val1 = 0.4
dataCollection[4] = dataCollection2
dataCollection2 = {}
dataCollection2.val1 = 0.4
dataCollection[5] = dataCollection2
dataCollection2 = {}
dataCollection2.val1 = 0.4
dataCollection[6] = dataCollection2
dataCollection2 = {}
dataCollection2.val1 = 0.4
dataCollection[7] = dataCollection2
dataCollection2 = {}
dataCollection3 = {}
dataCollection3.val0 = 1
dataCollection3.val1 = 0.011000000000000001
dataCollection3.val2 = 0
dataCollection3.val3 = 1
dataCollection3.val4 = true
dataCollection2[1] = dataCollection3
dataCollection3 = {}
dataCollection3.val0 = 1
dataCollection3.val1 = 0.013750000000000002
dataCollection3.val2 = 0
dataCollection3.val3 = 1
dataCollection3.val4 = true
dataCollection2[2] = dataCollection3
dataCollection3 = {}
dataCollection3.val0 = 1
dataCollection3.val1 = 0.0165
dataCollection3.val2 = 0
dataCollection3.val3 = 1
dataCollection3.val4 = true
dataCollection2[3] = dataCollection3
dataCollection3 = {}
dataCollection3.val0 = 1
dataCollection3.val1 = 0.019250000000000003
dataCollection3.val2 = 0
dataCollection3.val3 = 1
dataCollection3.val4 = true
dataCollection2[4] = dataCollection3
dataCollection3 = {}
dataCollection3.val0 = 1
dataCollection3.val1 = 0.022000000000000002
dataCollection3.val2 = 0
dataCollection3.val3 = 1
dataCollection3.val4 = true
dataCollection2[5] = dataCollection3
dataCollection3 = {}
dataCollection3.val0 = 1
dataCollection3.val1 = 0.02475
dataCollection3.val2 = 0
dataCollection3.val3 = 1
dataCollection3.val4 = true
dataCollection2[6] = dataCollection3
dataCollection3 = {}
dataCollection3.val0 = 1
dataCollection3.val1 = 0.027500000000000004
dataCollection3.val2 = 0
dataCollection3.val3 = 1
dataCollection3.val4 = true
dataCollection2[7] = dataCollection3

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1) ===
function dataCollection3(localValue1)
  local localValue2, localValue3, stateFlag2, stateFlag3, number6
  localValue2 = BeginTextCommandDisplayHelp
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringPlayerName
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandDisplayHelp
  localValue3 = 0
  stateFlag2 = false
  stateFlag3 = true
  number6 = -1
  localValue2(localValue3, stateFlag2, stateFlag3, number6)
end
F_02536 = dataCollection3

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, stateFlag2
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 73
  stateFlag2 = false
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 24
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 257
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 25
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 263
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 32
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 34
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 31
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 30
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 45
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 22
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 44
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 37
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 23
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 288
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 289
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 170
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 167
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 73
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 2
  localValue3 = 199
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 47
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 264
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 257
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 140
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 141
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 142
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 143
  stateFlag2 = true
  localValue1(localValue2, localValue3, stateFlag2)
end
F_02539 = dataCollection3

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1) ===
function dataCollection3(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.val1
  localValue3 = 0.51
  if localValue2 >= localValue3 then
    localValue2 = dataCollection
    localValue2 = localValue2[localValue1]
    localValue2 = localValue2.val1
    localValue3 = 0.62
    if localValue2 <= localValue3 then
      localValue2 = true
      return localValue2
    end
  end
  localValue2 = false
  return localValue2
end
F_02540 = dataCollection3

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1, localValue2, localValue3) ===
function dataCollection3(localValue1, localValue2, localValue3)
  local stateFlag2, stateFlag3, number6, workingValue3
  stateFlag2 = nil
  stateFlag3 = Cos
  number6 = F_02542
  workingValue3 = localValue3 * 3.141593
  number6, workingValue3 = number6(workingValue3)
  stateFlag3 = stateFlag3(number6, workingValue3)
  number6 = 1.0
  stateFlag3 = number6 - stateFlag3
  stateFlag2 = stateFlag3 * 0.5
  stateFlag3 = 1
  stateFlag3 = stateFlag3 - stateFlag2
  stateFlag3 = localValue1 * stateFlag3
  number6 = localValue2 * stateFlag2
  stateFlag3 = stateFlag3 + number6
  return stateFlag3
end
F_02541 = dataCollection3

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1) ===
function dataCollection3(localValue1)
  local localValue2
  localValue2 = localValue1 * 57.29578
  return localValue2
end
F_02542 = dataCollection3
dataCollection3 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, stateFlag2, stateFlag3
  localValue3 = nil
  if nil == localValue1 then
    localValue3 = 25
  elseif localValue1 < 2 then
    localValue3 = 25
  elseif localValue1 > 5 then
    localValue3 = 25
  else
    localValue3 = localValue1 * 10
  end
  stateFlag2 = {}
  stateFlag3 = {}
  stateFlag3.val1 = 0.4
  stateFlag2[1] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val1 = 0.4
  stateFlag2[2] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val1 = 0.4
  stateFlag2[3] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val1 = 0.4
  stateFlag2[4] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val1 = 0.4
  stateFlag2[5] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val1 = 0.4
  stateFlag2[6] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val1 = 0.4
  stateFlag2[7] = stateFlag3
  dataCollection = stateFlag2
  stateFlag2 = {}
  stateFlag3 = {}
  stateFlag3.val0 = 1
  stateFlag3.val1 = 0.011000000000000001
  stateFlag3.val2 = 0
  stateFlag3.val3 = 1
  stateFlag3.val4 = true
  stateFlag2[1] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val0 = 1
  stateFlag3.val1 = 0.013750000000000002
  stateFlag3.val2 = 0
  stateFlag3.val3 = 1
  stateFlag3.val4 = true
  stateFlag2[2] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val0 = 1
  stateFlag3.val1 = 0.0165
  stateFlag3.val2 = 0
  stateFlag3.val3 = 1
  stateFlag3.val4 = true
  stateFlag2[3] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val0 = 1
  stateFlag3.val1 = 0.019250000000000003
  stateFlag3.val2 = 0
  stateFlag3.val3 = 1
  stateFlag3.val4 = true
  stateFlag2[4] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val0 = 1
  stateFlag3.val1 = 0.022000000000000002
  stateFlag3.val2 = 0
  stateFlag3.val3 = 1
  stateFlag3.val4 = true
  stateFlag2[5] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val0 = 1
  stateFlag3.val1 = 0.02475
  stateFlag3.val2 = 0
  stateFlag3.val3 = 1
  stateFlag3.val4 = true
  stateFlag2[6] = stateFlag3
  stateFlag3 = {}
  stateFlag3.val0 = 1
  stateFlag3.val1 = 0.027500000000000004
  stateFlag3.val2 = 0
  stateFlag3.val3 = 1
  stateFlag3.val4 = true
  stateFlag2[7] = stateFlag3
  dataCollection2 = stateFlag2
  stateFlag2 = false
  stateFlag = stateFlag2
  stateFlag2 = Citizen
  stateFlag2 = stateFlag2.CreateThread

  -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
  function stateFlag3()
    local number, workingValue, text, number5, text2, stateFlag4
    number = 1
    workingValue = dataCollection2
    workingValue = workingValue[number]
    workingValue.val0 = 0
    while true do
      workingValue = F_02539
      workingValue()
      workingValue = F_02536
      text = "Press ~INPUT_FRONTEND_CANCEL~ to abort hack"
      workingValue(text)
      workingValue = IsControlJustReleased
      text = 2
      number5 = 237
      workingValue = workingValue(text, number5)
      if not workingValue then
        workingValue = IsControlJustReleased
        text = 2
        number5 = 176
        workingValue = workingValue(text, number5)
        if not workingValue then
          workingValue = IsControlJustReleased
          text = 2
          number5 = 179
          workingValue = workingValue(text, number5)
          if not workingValue then
            goto continueAtStep96
          end
        end
      end
      workingValue = F_02540
      text = number
      workingValue = workingValue(text)
      if workingValue then
        workingValue = PlaySoundFrontend
        text = -1
        number5 = "Pin_Good"
        text2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        stateFlag4 = true
        workingValue(text, number5, text2, stateFlag4)
        workingValue = dataCollection2
        workingValue = workingValue[number]
        workingValue.val0 = 1
        workingValue = dataCollection2
        workingValue = workingValue[number]
        workingValue.val4 = false
        workingValue = dataCollection
        workingValue = workingValue[number]
        workingValue.val1 = 0.572
        if number < 7 then
          text = number + 1
          workingValue = dataCollection2
          workingValue = workingValue[text]
          workingValue.val0 = 0
        end
        number = number + 1
        if number > 7 then
          return
        end
      else
        workingValue = PlaySoundFrontend
        text = -1
        number5 = "Pin_Bad"
        text2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        stateFlag4 = true
        workingValue(text, number5, text2, stateFlag4)
        if number > 1 then
          workingValue = dataCollection2
          workingValue = workingValue[number]
          workingValue.val0 = 1
          number = number - 1
          workingValue = dataCollection2
          workingValue = workingValue[number]
          workingValue.val0 = 0
          workingValue = dataCollection
          workingValue = workingValue[number]
          workingValue.val1 = 0.572
          workingValue = dataCollection2
          workingValue = workingValue[number]
          workingValue.val4 = true
        elseif 1 == number then
          workingValue = true
          stateFlag = workingValue
          workingValue = localValue2
          text = false
          workingValue(text)
        end
        workingValue = stateFlag
        if workingValue then
          return
          goto continueAtStep107
          ::continueAtStep96::
          workingValue = IsControlJustReleased
          text = 2
          number5 = 202
          workingValue = workingValue(text, number5)
          if workingValue then
            workingValue = true
            stateFlag = workingValue
            workingValue = localValue2
            text = false
            workingValue(text)
          end
        end
      end
      ::continueAtStep107::
      workingValue = stateFlag
      if workingValue then
        return
      end
      workingValue = Citizen
      workingValue = workingValue.Wait
      text = 1
      workingValue(text)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stateFlag2(stateFlag3)
  stateFlag2 = Citizen
  stateFlag2 = stateFlag2.CreateThread

  -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
  function stateFlag3()
    local number, workingValue, text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6
    while true do
      number = 1
      workingValue = dataCollection2
      workingValue = #workingValue
      text = 1
      for number5 = number, workingValue, text do
        text2 = dataCollection2
        text2 = text2[number5]
        text2 = text2.val3
        if 1 == text2 then
          text2 = dataCollection2
          text2 = text2[number5]
          text2 = text2.val2
          if text2 < 1.0 then
            text2 = dataCollection2
            text2 = text2[number5]
            stateFlag4 = dataCollection2
            stateFlag4 = stateFlag4[number5]
            stateFlag4 = stateFlag4.val2
            workingValue4 = dataCollection2
            workingValue4 = workingValue4[number5]
            workingValue4 = workingValue4.val1
            workingValue5 = Timestep
            workingValue5 = workingValue5()
            workingValue4 = workingValue4 * workingValue5
            workingValue5 = localValue3
            workingValue5 = workingValue5 * 1.0
            workingValue4 = workingValue4 * workingValue5
            stateFlag4 = stateFlag4 + workingValue4
            text2.val2 = stateFlag4
          else
            text2 = dataCollection2
            text2 = text2[number5]
            text2.val3 = 0
          end
        else
          text2 = dataCollection2
          text2 = text2[number5]
          text2 = text2.val2
          if text2 > 0.0 then
            text2 = dataCollection2
            text2 = text2[number5]
            stateFlag4 = dataCollection2
            stateFlag4 = stateFlag4[number5]
            stateFlag4 = stateFlag4.val2
            workingValue4 = dataCollection2
            workingValue4 = workingValue4[number5]
            workingValue4 = workingValue4.val1
            workingValue5 = Timestep
            workingValue5 = workingValue5()
            workingValue4 = workingValue4 * workingValue5
            workingValue5 = localValue3
            workingValue5 = workingValue5 * 1.0
            workingValue4 = workingValue4 * workingValue5
            stateFlag4 = stateFlag4 - workingValue4
            text2.val2 = stateFlag4
          else
            text2 = dataCollection2
            text2 = text2[number5]
            text2.val3 = 1
          end
        end
        text2 = dataCollection2
        text2 = text2[number5]
        text2 = text2.val0
        if 0 ~= text2 then
          text2 = dataCollection2
          text2 = text2[number5]
          text2 = text2.val4
          if not text2 then
            goto continueAtStep90
          end
        end
        text2 = dataCollection
        text2 = text2[number5]
        stateFlag4 = F_02541
        workingValue4 = 0.744
        workingValue5 = 0.4
        workingValue6 = dataCollection2
        workingValue6 = workingValue6[number5]
        workingValue6 = workingValue6.val2
        stateFlag4 = stateFlag4(workingValue4, workingValue5, workingValue6)
        text2.val1 = stateFlag4
        ::continueAtStep90::
        text2 = stateFlag
        if text2 then
          return
        end
      end
      number = Citizen
      number = number.Wait
      workingValue = 1
      number(workingValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stateFlag2(stateFlag3)
  stateFlag2 = Citizen
  stateFlag2 = stateFlag2.CreateThread

  -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
  function stateFlag3()
    local number, workingValue, text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4
    number = RequestStreamedTextureDict
    workingValue = "HACKING_PC_desktop_0"
    text = false
    number(workingValue, text)
    number = RequestStreamedTextureDict
    workingValue = "hackingNG"
    text = false
    number(workingValue, text)
    number = RequestScaleformMovieInteractive
    workingValue = "HACKING_PC"
    number = number(workingValue)
    while true do
      workingValue = HasScaleformMovieLoaded
      text = number
      workingValue = workingValue(text)
      if workingValue then
        break
      end
      workingValue = Citizen
      workingValue = workingValue.Wait
      text = 0
      workingValue(text)
    end
    workingValue = BeginScaleformMovieMethod
    text = number
    number5 = "ADD_PROGRAM"
    workingValue(text, number5)
    workingValue = ScaleformMovieMethodAddParamFloat
    text = 1.0
    workingValue(text)
    workingValue = ScaleformMovieMethodAddParamFloat
    text = 4.0
    workingValue(text)
    workingValue = _ENV
    text = "ScaleformMovieMethodAddParamTextureNameString"
    workingValue = workingValue[text]
    text = "My Computer"
    workingValue(text)
    workingValue = EndScaleformMovieMethod
    workingValue()
    workingValue = BeginScaleformMovieMethod
    text = number
    number5 = "ADD_PROGRAM"
    workingValue(text, number5)
    workingValue = ScaleformMovieMethodAddParamFloat
    text = 6.0
    workingValue(text)
    workingValue = ScaleformMovieMethodAddParamFloat
    text = 6.0
    workingValue(text)
    workingValue = _ENV
    text = "ScaleformMovieMethodAddParamTextureNameString"
    workingValue = workingValue[text]
    text = "Power Off"
    workingValue(text)
    workingValue = EndScaleformMovieMethod
    workingValue()
    workingValue = BeginScaleformMovieMethod
    text = number
    number5 = "SET_BACKGROUND"
    workingValue(text, number5)
    workingValue = ScaleformMovieMethodAddParamInt
    text = 1
    workingValue(text)
    workingValue = EndScaleformMovieMethod
    workingValue()
    while true do
      workingValue = HasStreamedTextureDictLoaded
      text = "hackingNG"
      workingValue = workingValue(text)
      if workingValue then
        break
      end
      workingValue = Citizen
      workingValue = workingValue.Wait
      text = 1
      workingValue(text)
    end
    while true do
      workingValue = DrawScaleformMovieFullscreen
      text = number
      number5 = 255
      text2 = 255
      stateFlag4 = 255
      workingValue4 = 255
      workingValue5 = 0
      workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5)
      workingValue = DrawSprite
      text = "hackingNG"
      number5 = "DHMain"
      text2 = 0.5
      stateFlag4 = 0.5
      workingValue4 = 0.731
      workingValue5 = 1.306
      workingValue6 = 0
      number7 = 255
      number2 = 255
      number3 = 255
      number4 = 255
      workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
      workingValue = dataCollection2
      workingValue = workingValue[1]
      workingValue = workingValue.val0
      if 1 == workingValue then
        workingValue = DrawSprite
        text = "hackingNG"
        number5 = "DHComp"
        text2 = 0.35
        stateFlag4 = dataCollection
        stateFlag4 = stateFlag4[1]
        stateFlag4 = stateFlag4.val1
        workingValue4 = 0.4
        workingValue5 = 0.4
        workingValue6 = 0
        number7 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
      else
        workingValue = dataCollection2
        workingValue = workingValue[1]
        workingValue = workingValue.val0
        if 0 == workingValue then
          workingValue = DrawSprite
          text = "hackingNG"
          number5 = "DHCompHi"
          text2 = 0.35
          stateFlag4 = dataCollection
          stateFlag4 = stateFlag4[1]
          stateFlag4 = stateFlag4.val1
          workingValue4 = 0.4
          workingValue5 = 0.4
          workingValue6 = 0
          number7 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
        end
      end
      workingValue = dataCollection2
      workingValue = workingValue[2]
      workingValue = workingValue.val0
      if 1 == workingValue then
        workingValue = DrawSprite
        text = "hackingNG"
        number5 = "DHComp"
        text2 = 0.4
        stateFlag4 = dataCollection
        stateFlag4 = stateFlag4[2]
        stateFlag4 = stateFlag4.val1
        workingValue4 = 0.4
        workingValue5 = 0.4
        workingValue6 = 0
        number7 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
      else
        workingValue = dataCollection2
        workingValue = workingValue[2]
        workingValue = workingValue.val0
        if 0 == workingValue then
          workingValue = DrawSprite
          text = "hackingNG"
          number5 = "DHCompHi"
          text2 = 0.4
          stateFlag4 = dataCollection
          stateFlag4 = stateFlag4[2]
          stateFlag4 = stateFlag4.val1
          workingValue4 = 0.4
          workingValue5 = 0.4
          workingValue6 = 0
          number7 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
        end
      end
      workingValue = dataCollection2
      workingValue = workingValue[3]
      workingValue = workingValue.val0
      if 1 == workingValue then
        workingValue = DrawSprite
        text = "hackingNG"
        number5 = "DHComp"
        text2 = 0.45
        stateFlag4 = dataCollection
        stateFlag4 = stateFlag4[3]
        stateFlag4 = stateFlag4.val1
        workingValue4 = 0.4
        workingValue5 = 0.4
        workingValue6 = 0
        number7 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
      else
        workingValue = dataCollection2
        workingValue = workingValue[3]
        workingValue = workingValue.val0
        if 0 == workingValue then
          workingValue = DrawSprite
          text = "hackingNG"
          number5 = "DHCompHi"
          text2 = 0.45
          stateFlag4 = dataCollection
          stateFlag4 = stateFlag4[3]
          stateFlag4 = stateFlag4.val1
          workingValue4 = 0.4
          workingValue5 = 0.4
          workingValue6 = 0
          number7 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
        end
      end
      workingValue = dataCollection2
      workingValue = workingValue[4]
      workingValue = workingValue.val0
      if 1 == workingValue then
        workingValue = DrawSprite
        text = "hackingNG"
        number5 = "DHComp"
        text2 = 0.5
        stateFlag4 = dataCollection
        stateFlag4 = stateFlag4[4]
        stateFlag4 = stateFlag4.val1
        workingValue4 = 0.4
        workingValue5 = 0.4
        workingValue6 = 0
        number7 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
      else
        workingValue = dataCollection2
        workingValue = workingValue[4]
        workingValue = workingValue.val0
        if 0 == workingValue then
          workingValue = DrawSprite
          text = "hackingNG"
          number5 = "DHCompHi"
          text2 = 0.5
          stateFlag4 = dataCollection
          stateFlag4 = stateFlag4[4]
          stateFlag4 = stateFlag4.val1
          workingValue4 = 0.4
          workingValue5 = 0.4
          workingValue6 = 0
          number7 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
        end
      end
      workingValue = dataCollection2
      workingValue = workingValue[5]
      workingValue = workingValue.val0
      if 1 == workingValue then
        workingValue = DrawSprite
        text = "hackingNG"
        number5 = "DHComp"
        text2 = 0.55
        stateFlag4 = dataCollection
        stateFlag4 = stateFlag4[5]
        stateFlag4 = stateFlag4.val1
        workingValue4 = 0.4
        workingValue5 = 0.4
        workingValue6 = 0
        number7 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
      else
        workingValue = dataCollection2
        workingValue = workingValue[5]
        workingValue = workingValue.val0
        if 0 == workingValue then
          workingValue = DrawSprite
          text = "hackingNG"
          number5 = "DHCompHi"
          text2 = 0.55
          stateFlag4 = dataCollection
          stateFlag4 = stateFlag4[5]
          stateFlag4 = stateFlag4.val1
          workingValue4 = 0.4
          workingValue5 = 0.4
          workingValue6 = 0
          number7 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
        end
      end
      workingValue = dataCollection2
      workingValue = workingValue[6]
      workingValue = workingValue.val0
      if 1 == workingValue then
        workingValue = DrawSprite
        text = "hackingNG"
        number5 = "DHComp"
        text2 = 0.6
        stateFlag4 = dataCollection
        stateFlag4 = stateFlag4[6]
        stateFlag4 = stateFlag4.val1
        workingValue4 = 0.4
        workingValue5 = 0.4
        workingValue6 = 0
        number7 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
      else
        workingValue = dataCollection2
        workingValue = workingValue[6]
        workingValue = workingValue.val0
        if 0 == workingValue then
          workingValue = DrawSprite
          text = "hackingNG"
          number5 = "DHCompHi"
          text2 = 0.6
          stateFlag4 = dataCollection
          stateFlag4 = stateFlag4[6]
          stateFlag4 = stateFlag4.val1
          workingValue4 = 0.4
          workingValue5 = 0.4
          workingValue6 = 0
          number7 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
        end
      end
      workingValue = dataCollection2
      workingValue = workingValue[7]
      workingValue = workingValue.val0
      if 1 == workingValue then
        workingValue = DrawSprite
        text = "hackingNG"
        number5 = "DHComp"
        text2 = 0.65
        stateFlag4 = dataCollection
        stateFlag4 = stateFlag4[7]
        stateFlag4 = stateFlag4.val1
        workingValue4 = 0.4
        workingValue5 = 0.4
        workingValue6 = 0
        number7 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
      else
        workingValue = dataCollection2
        workingValue = workingValue[7]
        workingValue = workingValue.val0
        if 0 == workingValue then
          workingValue = DrawSprite
          text = "hackingNG"
          number5 = "DHCompHi"
          text2 = 0.65
          stateFlag4 = dataCollection
          stateFlag4 = stateFlag4[7]
          stateFlag4 = stateFlag4.val1
          workingValue4 = 0.4
          workingValue5 = 0.4
          workingValue6 = 0
          number7 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          workingValue(text, number5, text2, stateFlag4, workingValue4, workingValue5, workingValue6, number7, number2, number3, number4)
        end
      end
      workingValue = stateFlag
      if true == workingValue then
        return
      end
      workingValue = dataCollection2
      workingValue = workingValue[1]
      workingValue = workingValue.val4
      if false == workingValue then
        workingValue = dataCollection2
        workingValue = workingValue[2]
        workingValue = workingValue.val4
        if false == workingValue then
          workingValue = dataCollection2
          workingValue = workingValue[3]
          workingValue = workingValue.val4
          if false == workingValue then
            workingValue = dataCollection2
            workingValue = workingValue[4]
            workingValue = workingValue.val4
            if false == workingValue then
              workingValue = dataCollection2
              workingValue = workingValue[5]
              workingValue = workingValue.val4
              if false == workingValue then
                workingValue = dataCollection2
                workingValue = workingValue[6]
                workingValue = workingValue.val4
                if false == workingValue then
                  workingValue = dataCollection2
                  workingValue = workingValue[7]
                  workingValue = workingValue.val4
                  if false == workingValue then
                    workingValue = PlaySoundFrontend
                    text = -1
                    number5 = "HACKING_SUCCESS"
                    text2 = ""
                    stateFlag4 = true
                    workingValue(text, number5, text2, stateFlag4)
                    workingValue = Citizen
                    workingValue = workingValue.Wait
                    text = 2500
                    workingValue(text)
                    workingValue = true
                    stateFlag = workingValue
                    workingValue = TriggerEvent
                    text = "datacrack"
                    number5 = true
                    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "datacrack".
                    workingValue(text, number5)
                    workingValue = localValue2
                    text = true
                    workingValue(text)
                    return
                  end
                end
              end
            end
          end
        end
      end
      workingValue = Citizen
      workingValue = workingValue.Wait
      text = 1
      workingValue(text)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stateFlag2(stateFlag3)
end
dataCollection3.startDataCrackMinigame = workingValue2
