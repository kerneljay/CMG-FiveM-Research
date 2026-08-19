--[[
    LEVEL 1 BEGINNER GUIDE — Prison Doors
    ==========================================

    File: cmg/prod/client/hmp/cl_prisonDoors.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: prison gameplay, specifically the Prison Doors feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 40
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
local cmgOperation, cmgOperation5, text7, workingValue12, stateFlag5, stateFlag7, stateFlag8, stateFlag9, dataCollection5, dataCollection6, dataCollection, workingValue, workingValue3, workingValue5, cmgOperation3, cmgOperation4, eventHandlerRegistration, stateFlag3, text2, rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text5, text6
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation5 = "cfg/cfg_prison"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation5)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.loadModule
text7 = "cfg/cfg_factiongroups"
-- Beginner: result below is config.
cmgOperation5 = cmgOperation5(text7)

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8
  localValue1 = ipairs
  localValue2 = cmgOperation5.hmpRanks
  localValue1, localValue2, number4, text8 = localValue1(localValue2)
  for text9, number6 in localValue1, localValue2, number4, text8 do
    number7 = number6[3]
    if number7 then
      cmgOperation9 = CMG
      cmgOperation9 = cmgOperation9.hasClientPermission
      number8 = number7
      cmgOperation9 = cmgOperation9(number8)
      if cmgOperation9 then
        cmgOperation9 = true
        return cmgOperation9
      end
    end
  end
  localValue1 = false
  return localValue1
end
workingValue12 = GetInteriorAtCoordsWithType
stateFlag5 = 1787.004
stateFlag7 = 2593.1984
stateFlag8 = 45.7978
stateFlag9 = "int_prison_main"
workingValue12 = workingValue12(stateFlag5, stateFlag7, stateFlag8, stateFlag9)
stateFlag5 = false
stateFlag7 = false
stateFlag8 = true
stateFlag9 = true
dataCollection5 = {}
dataCollection6 = {}
dataCollection = {}
dataCollection6.allEntranceDoors = dataCollection
dataCollection = {}
dataCollection6.allPrisonCellDoors = dataCollection
dataCollection = {}
dataCollection6.allSegregationDoors = dataCollection
dataCollection = {}
dataCollection6.allOtherDoors = dataCollection
dataCollection = {}
dataCollection6.outsideStairDoors = dataCollection
dataCollection = false
workingValue = dataCollection6.allEntranceDoors

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2
  localValue2 = pairs
  number4 = cmgOperation.doors
  localValue2, number4, text8, text9 = localValue2(number4)
  for number6, number7 in localValue2, number4, text8, text9 do
    cmgOperation9 = 1
    number8 = #number7
    cmgOperation10 = 1
    for text = cmgOperation9, number8, cmgOperation10 do
      workingValue2 = number7[text]
      workingValue2 = workingValue2.doorHash
      if workingValue2 == localValue1 then
        workingValue2 = number7[text]
        return workingValue2
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, number4, text8, text9
  number4 = localValue1
  localValue2 = localValue1.gsub
  text8 = "%s+%(A%)$"
  text9 = ""
  localValue2 = localValue2(number4, text8, text9)
  return localValue2
end
cmgOperation3 = Citizen
cmgOperation3 = cmgOperation3.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7, nameValue, dataCollection3, position
  localValue1 = pairs
  localValue2 = cmgOperation.doors
  localValue1, localValue2, number4, text8 = localValue1(localValue2)
  for text9, number6 in localValue1, localValue2, number4, text8 do
    number7 = 0
    cmgOperation9 = 0.207
    number8 = 0.241
    cmgOperation10 = 0.099
    text = 0.08
    workingValue2 = 1
    workingValue4 = #number6
    dataCollection2 = 1
    for number2 = workingValue2, workingValue4, dataCollection2 do
      workingValue6 = number6[number2]
      workingValue6 = workingValue6.pairedDoorHash
      if workingValue6 then
        workingValue6 = number6[number2]
        workingValue6 = workingValue6.doorHash
        workingValue7 = number6[number2]
        workingValue7 = workingValue7.pairedDoorHash
        if workingValue6 > workingValue7 then
          goto continueAtStep67
        end
      end
      workingValue6 = number6[number2]
      workingValue6 = workingValue6.name
      workingValue7 = number6[number2]
      workingValue7 = workingValue7.pairedDoorHash
      if workingValue7 then
        workingValue7 = workingValue5
        nameValue = number6[number2]
        nameValue = nameValue.name
        workingValue7 = workingValue7(nameValue)
        workingValue6 = workingValue7
      end
      workingValue7 = dataCollection6
      workingValue7 = workingValue7[text9]
      nameValue = dataCollection6
      nameValue = nameValue[text9]
      nameValue = #nameValue
      nameValue = nameValue + 1
      dataCollection3 = {}
      dataCollection3.name = workingValue6
      dataCollection3.x = cmgOperation9
      dataCollection3.y = number8
      position = number6[number2]
      position = position.doorHash
      dataCollection3.doorHash = position
      workingValue7[nameValue] = dataCollection3
      number7 = number7 + 1
      workingValue7 = cmgOperation10 / 2
      workingValue7 = cmgOperation9 + workingValue7
      cmgOperation9 = workingValue7 + 0.06
      if 6 == number7 then
        cmgOperation9 = 0.207
        workingValue7 = number8 + text
        number8 = workingValue7 + 0.01
        number7 = 0
      end
      ::continueAtStep67::
    end
    workingValue2 = dataCollection6
    workingValue2 = workingValue2[text9]
    workingValue4 = dataCollection6
    workingValue4 = workingValue4[text9]
    workingValue4 = #workingValue4
    workingValue4 = workingValue4 + 1
    dataCollection2 = {}
    dataCollection2.name = "All"
    dataCollection2.x = 0.497
    dataCollection2.y = 0.819
    dataCollection2.doorHash = text9
    workingValue2[workingValue4] = dataCollection2
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(cmgOperation4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerCommand
cmgOperation4 = "+openhmpmenu"

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local localValue1, localValue2
  localValue1 = true
  dataCollection = localValue1
end
stateFlag3 = false
cmgOperation3(cmgOperation4, eventHandlerRegistration, stateFlag3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerCommand
cmgOperation4 = "-openhmpmenu"

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local localValue1, localValue2
  localValue1 = false
  dataCollection = localValue1
end
stateFlag3 = false
cmgOperation3(cmgOperation4, eventHandlerRegistration, stateFlag3)
cmgOperation3 = RegisterKeyMapping
cmgOperation4 = "+openhmpmenu"
eventHandlerRegistration = "HMP Control Panel"
stateFlag3 = "KEYBOARD"
text2 = "E"
-- Beginner: Bind a command to a keyboard/controller key.
cmgOperation3(cmgOperation4, eventHandlerRegistration, stateFlag3, text2)
cmgOperation3 = AddEventHandler
cmgOperation4 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1, localValue2) ===
function eventHandlerRegistration(localValue1, localValue2)
  local number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7, nameValue
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local localValue12, stateFlag4
      localValue12 = drawNativeNotification
      stateFlag4 = "Press ~INPUT_CONTEXT~ to open the control panel"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(stateFlag4)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
    function text8()
      local localValue12, stateFlag4
      localValue12 = false
      stateFlag7 = localValue12
      localValue12 = CMG
      localValue12 = localValue12.setCursor
      stateFlag4 = 0
      localValue12(stateFlag4)
      localValue12 = CMG
      localValue12 = localValue12.setInGUI
      stateFlag4 = false
      localValue12(stateFlag4)
    end

    -- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
    function text9()
      local localValue12, stateFlag4, number5
      localValue12 = dataCollection
      if localValue12 then
        localValue12 = stateFlag7
        if not localValue12 then
          localValue12 = CMG
          localValue12 = localValue12.hasClientPermission
          stateFlag4 = "prisonguard.onduty.permission"
          localValue12 = localValue12(stateFlag4)
          if localValue12 then
            localValue12 = true
            stateFlag7 = localValue12
            localValue12 = CMG
            localValue12 = localValue12.setCursor
            stateFlag4 = 1
            localValue12(stateFlag4)
            localValue12 = CMG
            localValue12 = localValue12.setInGUI
            stateFlag4 = true
            localValue12(stateFlag4)
            localValue12 = false
            dataCollection = localValue12
          end
      end
      else
        localValue12 = IsControlJustPressed
        stateFlag4 = 1
        number5 = 177
        localValue12 = localValue12(stateFlag4, number5)
        if not localValue12 then
          localValue12 = dataCollection
          if not localValue12 then
            goto continueAtStep51
          end
          localValue12 = stateFlag7
          if not localValue12 then
            goto continueAtStep51
          end
        end
        localValue12 = false
        stateFlag7 = localValue12
        localValue12 = CMG
        localValue12 = localValue12.setInGUI
        stateFlag4 = false
        localValue12(stateFlag4)
        localValue12 = CMG
        localValue12 = localValue12.setCursor
        stateFlag4 = 0
        localValue12(stateFlag4)
        localValue12 = false
        dataCollection = localValue12
        goto continueAtStep84
        ::continueAtStep51::
        localValue12 = IsControlJustPressed
        stateFlag4 = 0
        number5 = 168
        localValue12 = localValue12(stateFlag4, number5)
        if localValue12 then
          localValue12 = CMG
          localValue12 = localValue12.getClientUserId
          -- Beginner: result below is userId.
          localValue12 = localValue12()
          if localValue12 then
            stateFlag4 = CMG
            stateFlag4 = stateFlag4.isDeveloper
            number5 = localValue12
            stateFlag4 = stateFlag4(number5)
            if stateFlag4 then
              stateFlag4 = CMG
              stateFlag4 = stateFlag4.hasClientPermission
              number5 = "prisonguard.onduty.permission"
              stateFlag4 = stateFlag4(number5)
              if stateFlag4 then
                stateFlag4 = true
                stateFlag7 = stateFlag4
                stateFlag4 = CMG
                stateFlag4 = stateFlag4.setCursor
                number5 = 1
                stateFlag4(number5)
                stateFlag4 = CMG
                stateFlag4 = stateFlag4.setInGUI
                number5 = true
                stateFlag4(number5)
              end
            end
          end
        end
      end
      ::continueAtStep84::
    end
    number6 = 1
    number7 = cmgOperation.controlPanels
    number7 = #number7
    cmgOperation9 = 1
    for number8 = number6, number7, cmgOperation9 do
      cmgOperation10 = CMG
      cmgOperation10 = cmgOperation10.createArea
      text = "prisonControlPanel_"
      workingValue2 = number8
      text = text .. workingValue2
      workingValue2 = cmgOperation.controlPanels
      workingValue2 = workingValue2[number8]
      workingValue2 = workingValue2.coords
      workingValue4 = 1.5
      dataCollection2 = 5
      number2 = number4
      workingValue6 = text8
      workingValue7 = text9
      nameValue = {}
      -- Beginner: Create an interaction area around a world position.
      cmgOperation10(text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7, nameValue)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation3(cmgOperation4, eventHandlerRegistration)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7
  localValue1 = stateFlag7
  if localValue1 then
    localValue1 = DrawRect
    localValue2 = 0.493
    number4 = 0.489
    text8 = 0.71
    text9 = 0.765
    number6 = 0
    number7 = 0
    cmgOperation9 = 0
    number8 = 150
    localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8)
    localValue1 = DrawRect
    localValue2 = 0.207
    number4 = 0.241
    text8 = 0.099
    text9 = 0.08
    number6 = 0
    number7 = 0
    cmgOperation9 = 0
    number8 = 150
    localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8)
    localValue1 = DrawRect
    localValue2 = 0.239
    number4 = 0.148
    text8 = 0.185
    text9 = 0.055
    number6 = 0
    number7 = 0
    cmgOperation9 = 0
    number8 = 150
    localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8)
    localValue1 = DrawRect
    localValue2 = 0.423
    number4 = 0.148
    text8 = 0.183
    text9 = 0.055
    number6 = 0
    number7 = 0
    cmgOperation9 = 0
    number8 = 150
    localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8)
    localValue1 = DrawRect
    localValue2 = 0.597
    number4 = 0.148
    text8 = 0.165
    text9 = 0.055
    number6 = 0
    number7 = 0
    cmgOperation9 = 0
    number8 = 150
    localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8)
    localValue1 = DrawRect
    localValue2 = 0.7605
    number4 = 0.148
    text8 = 0.162
    text9 = 0.055
    number6 = 0
    number7 = 0
    cmgOperation9 = 0
    number8 = 150
    localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8)
    localValue1 = CursorInArea
    localValue2 = GetArea
    number4 = 0.239
    text8 = 0.148
    text9 = 0.185
    number6 = 0.055
    localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7 = localValue2(number4, text8, text9, number6)
    localValue1 = localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
    if not localValue1 then
      localValue1 = DrawAdvancedText
      localValue2 = 0.341
      number4 = 0.15
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "Entrance Doors"
      cmgOperation9 = 255
      number8 = 255
      cmgOperation10 = 255
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    else
      localValue1 = IsControlJustPressed
      localValue2 = 1
      number4 = 329
      localValue1 = localValue1(localValue2, number4)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        number4 = 329
        localValue1 = localValue1(localValue2, number4)
        if not localValue1 then
          goto continueAtStep111
        end
      end
      localValue1 = dataCollection6.allEntranceDoors
      workingValue = localValue1
      localValue1 = PlaySound
      localValue2 = -1
      number4 = "SELECT"
      text8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      text9 = false
      number6 = 0
      number7 = true
      localValue1(localValue2, number4, text8, text9, number6, number7)
      ::continueAtStep111::
      localValue1 = DrawAdvancedText
      localValue2 = 0.341
      number4 = 0.15
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "Entrance Doors"
      cmgOperation9 = 138
      number8 = 138
      cmgOperation10 = 138
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    end
    localValue1 = CursorInArea
    localValue2 = GetArea
    number4 = 0.423
    text8 = 0.148
    text9 = 0.183
    number6 = 0.056
    localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7 = localValue2(number4, text8, text9, number6)
    localValue1 = localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
    if not localValue1 then
      localValue1 = DrawAdvancedText
      localValue2 = 0.513
      number4 = 0.15
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "Prison Cell Doors"
      cmgOperation9 = 255
      number8 = 255
      cmgOperation10 = 255
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    else
      localValue1 = IsControlJustPressed
      localValue2 = 1
      number4 = 329
      localValue1 = localValue1(localValue2, number4)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        number4 = 329
        localValue1 = localValue1(localValue2, number4)
        if not localValue1 then
          goto continueAtStep172
        end
      end
      localValue1 = dataCollection6.allPrisonCellDoors
      workingValue = localValue1
      localValue1 = PlaySound
      localValue2 = -1
      number4 = "SELECT"
      text8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      text9 = false
      number6 = 0
      number7 = true
      localValue1(localValue2, number4, text8, text9, number6, number7)
      ::continueAtStep172::
      localValue1 = DrawAdvancedText
      localValue2 = 0.513
      number4 = 0.15
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "Prison Cell Doors"
      cmgOperation9 = 138
      number8 = 138
      cmgOperation10 = 138
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    end
    localValue1 = CursorInArea
    localValue2 = GetArea
    number4 = 0.597
    text8 = 0.148
    text9 = 0.166
    number6 = 0.055
    localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7 = localValue2(number4, text8, text9, number6)
    localValue1 = localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
    if not localValue1 then
      localValue1 = DrawAdvancedText
      localValue2 = 0.691
      number4 = 0.15
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "Segregation Doors"
      cmgOperation9 = 255
      number8 = 255
      cmgOperation10 = 255
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    else
      localValue1 = IsControlJustPressed
      localValue2 = 1
      number4 = 329
      localValue1 = localValue1(localValue2, number4)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        number4 = 329
        localValue1 = localValue1(localValue2, number4)
        if not localValue1 then
          goto continueAtStep233
        end
      end
      localValue1 = dataCollection6.allSegregationDoors
      workingValue = localValue1
      localValue1 = PlaySound
      localValue2 = -1
      number4 = "SELECT"
      text8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      text9 = false
      number6 = 0
      number7 = true
      localValue1(localValue2, number4, text8, text9, number6, number7)
      ::continueAtStep233::
      localValue1 = DrawAdvancedText
      localValue2 = 0.691
      number4 = 0.15
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "Segregation Doors"
      cmgOperation9 = 138
      number8 = 138
      cmgOperation10 = 138
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    end
    localValue1 = CursorInArea
    localValue2 = GetArea
    number4 = 0.761
    text8 = 0.148
    text9 = 0.162
    number6 = 0.055
    localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7 = localValue2(number4, text8, text9, number6)
    localValue1 = localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
    if not localValue1 then
      localValue1 = DrawAdvancedText
      localValue2 = 0.857
      number4 = 0.15
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "Other Doors"
      cmgOperation9 = 255
      number8 = 255
      cmgOperation10 = 255
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    else
      localValue1 = IsControlJustPressed
      localValue2 = 1
      number4 = 329
      localValue1 = localValue1(localValue2, number4)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        number4 = 329
        localValue1 = localValue1(localValue2, number4)
        if not localValue1 then
          goto continueAtStep301
        end
      end
      localValue1 = workingValue
      localValue2 = dataCollection6.allOtherDoors
      if localValue1 == localValue2 then
        localValue1 = dataCollection6.outsideStairDoors
        workingValue = localValue1
      else
        localValue1 = dataCollection6.allOtherDoors
        workingValue = localValue1
      end
      localValue1 = PlaySound
      localValue2 = -1
      number4 = "SELECT"
      text8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      text9 = false
      number6 = 0
      number7 = true
      localValue1(localValue2, number4, text8, text9, number6, number7)
      ::continueAtStep301::
      localValue1 = DrawAdvancedText
      localValue2 = 0.857
      number4 = 0.15
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "Other Doors"
      cmgOperation9 = 138
      number8 = 138
      cmgOperation10 = 138
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    end
    localValue1 = 1
    localValue2 = workingValue
    localValue2 = #localValue2
    number4 = 1
    for text8 = localValue1, localValue2, number4 do
      text9 = workingValue
      text9 = text9[text8]
      text9 = text9.name
      if "All" == text9 then
        text9 = workingValue
        text9 = text9[text8]
        number6 = text9.doorHash
        text9 = dataCollection5
        text9 = text9[number6]
        text9 = text9.currentState
        if 5 ~= text9 then
          text9 = workingValue
          text9 = text9[text8]
          number6 = text9.doorHash
          text9 = dataCollection5
          text9 = text9[number6]
          text9 = text9.currentState
          if 0 ~= text9 then
            goto continueAtStep352
          end
        end
        text9 = DrawRect
        number6 = 0.497
        number7 = 0.819
        cmgOperation9 = 0.185
        number8 = 0.058
        cmgOperation10 = 0
        text = 180
        workingValue2 = 0
        workingValue4 = 150
        text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
        goto continueAtStep362
        ::continueAtStep352::
        text9 = DrawRect
        number6 = 0.497
        number7 = 0.819
        cmgOperation9 = 0.185
        number8 = 0.058
        cmgOperation10 = 180
        text = 0
        workingValue2 = 0
        workingValue4 = 150
        text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
        ::continueAtStep362::
        text9 = CursorInArea
        number6 = GetArea
        number7 = 0.497
        cmgOperation9 = 0.819
        number8 = 0.185
        cmgOperation10 = 0.058
        number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7 = number6(number7, cmgOperation9, number8, cmgOperation10)
        text9 = text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
        if not text9 then
          text9 = DrawAdvancedText
          number6 = 0.592
          number7 = 0.82
          cmgOperation9 = 0.005
          number8 = 0.0028
          cmgOperation10 = 0.4
          text = "All"
          workingValue2 = 255
          workingValue4 = 255
          dataCollection2 = 255
          number2 = 255
          workingValue6 = 0
          workingValue7 = 0
          text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
        else
          text9 = stateFlag9
          if text9 then
            text9 = IsControlJustPressed
            number6 = 1
            number7 = 329
            text9 = text9(number6, number7)
            if not text9 then
              text9 = IsDisabledControlJustPressed
              number6 = 1
              number7 = 329
              text9 = text9(number6, number7)
              if not text9 then
                goto continueAtStep447
              end
            end
            text9 = workingValue
            text9 = text9[text8]
            number6 = text9.doorHash
            text9 = dataCollection5
            text9 = text9[number6]
            text9 = text9.currentState
            if 5 ~= text9 then
              text9 = workingValue
              text9 = text9[text8]
              number6 = text9.doorHash
              text9 = dataCollection5
              text9 = text9[number6]
              text9 = text9.currentState
              if 0 ~= text9 then
                goto continueAtStep426
              end
            end
            text9 = TriggerServerEvent
            number6 = "e1a464cf07"
            number7 = workingValue
            number7 = number7[text8]
            number7 = number7.doorHash
            cmgOperation9 = 4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
            text9(number6, number7, cmgOperation9)
            goto continueAtStep433
            ::continueAtStep426::
            text9 = TriggerServerEvent
            number6 = "e1a464cf07"
            number7 = workingValue
            number7 = number7[text8]
            number7 = number7.doorHash
            cmgOperation9 = 5
            text9(number6, number7, cmgOperation9)
            ::continueAtStep433::
            text9 = PlaySound
            number6 = -1
            number7 = "SELECT"
            cmgOperation9 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            number8 = false
            cmgOperation10 = 0
            text = true
            text9(number6, number7, cmgOperation9, number8, cmgOperation10, text)
            text9 = false
            stateFlag9 = text9
            text9 = SetTimeout
            number6 = 500

            -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
            function number7()
              local localValue12, stateFlag4
              localValue12 = true
              stateFlag9 = localValue12
            end
            text9(number6, number7)
            ::continueAtStep447::
            text9 = DrawAdvancedText
            number6 = 0.592
            number7 = 0.82
            cmgOperation9 = 0.005
            number8 = 0.0028
            cmgOperation10 = 0.4
            text = "All"
            workingValue2 = 138
            workingValue4 = 138
            dataCollection2 = 138
            number2 = 255
            workingValue6 = 0
            workingValue7 = 0
            text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
          else
            text9 = DrawAdvancedText
            number6 = 0.592
            number7 = 0.82
            cmgOperation9 = 0.005
            number8 = 0.0028
            cmgOperation10 = 0.4
            text = "All"
            workingValue2 = 255
            workingValue4 = 255
            dataCollection2 = 255
            number2 = 255
            workingValue6 = 0
            workingValue7 = 0
            text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
          end
        end
      else
        text9 = workingValue
        text9 = text9[text8]
        number6 = text9.doorHash
        text9 = dataCollection5
        text9 = text9[number6]
        text9 = text9.currentState
        if 5 ~= text9 then
          text9 = workingValue
          text9 = text9[text8]
          number6 = text9.doorHash
          text9 = dataCollection5
          text9 = text9[number6]
          text9 = text9.currentState
          if 0 ~= text9 then
            goto continueAtStep508
          end
        end
        text9 = DrawRect
        number6 = workingValue
        number6 = number6[text8]
        number6 = number6.x
        number7 = workingValue
        number7 = number7[text8]
        number7 = number7.y
        cmgOperation9 = 0.099
        number8 = 0.08
        cmgOperation10 = 0
        text = 180
        workingValue2 = 0
        workingValue4 = 150
        text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
        goto continueAtStep522
        ::continueAtStep508::
        text9 = DrawRect
        number6 = workingValue
        number6 = number6[text8]
        number6 = number6.x
        number7 = workingValue
        number7 = number7[text8]
        number7 = number7.y
        cmgOperation9 = 0.099
        number8 = 0.08
        cmgOperation10 = 180
        text = 0
        workingValue2 = 0
        workingValue4 = 150
        text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
        ::continueAtStep522::
        text9 = CursorInArea
        number6 = GetArea
        number7 = workingValue
        number7 = number7[text8]
        number7 = number7.x
        cmgOperation9 = workingValue
        cmgOperation9 = cmgOperation9[text8]
        cmgOperation9 = cmgOperation9.y
        number8 = 0.099
        cmgOperation10 = 0.08
        number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7 = number6(number7, cmgOperation9, number8, cmgOperation10)
        text9 = text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
        if not text9 then
          text9 = DrawAdvancedText
          number6 = workingValue
          number6 = number6[text8]
          number6 = number6.x
          number6 = number6 + 0.0967
          number7 = workingValue
          number7 = number7[text8]
          number7 = number7.y
          number7 = number7 + 0.0098
          cmgOperation9 = 0.001
          number8 = 0.001
          cmgOperation10 = 0.25
          text = workingValue
          text = text[text8]
          text = text.name
          workingValue2 = 255
          workingValue4 = 255
          dataCollection2 = 255
          number2 = 255
          workingValue6 = 0
          workingValue7 = 0
          text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
        else
          text9 = stateFlag9
          if text9 then
            text9 = IsControlJustPressed
            number6 = 1
            number7 = 329
            text9 = text9(number6, number7)
            if not text9 then
              text9 = IsDisabledControlJustPressed
              number6 = 1
              number7 = 329
              text9 = text9(number6, number7)
              if not text9 then
                goto continueAtStep613
              end
            end
            text9 = workingValue
            text9 = text9[text8]
            number6 = text9.doorHash
            text9 = dataCollection5
            text9 = text9[number6]
            text9 = text9.currentState
            if 4 == text9 then
              text9 = TriggerServerEvent
              number6 = "e1a464cf07"
              number7 = workingValue
              number7 = number7[text8]
              number7 = number7.doorHash
              cmgOperation9 = 5
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
              text9(number6, number7, cmgOperation9)
            else
              text9 = TriggerServerEvent
              number6 = "e1a464cf07"
              number7 = workingValue
              number7 = number7[text8]
              number7 = number7.doorHash
              cmgOperation9 = 4
              text9(number6, number7, cmgOperation9)
            end
            text9 = PlaySound
            number6 = -1
            number7 = "SELECT"
            cmgOperation9 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            number8 = false
            cmgOperation10 = 0
            text = true
            text9(number6, number7, cmgOperation9, number8, cmgOperation10, text)
            text9 = false
            stateFlag9 = text9
            text9 = SetTimeout
            number6 = 500

            -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
            function number7()
              local localValue12, stateFlag4
              localValue12 = true
              stateFlag9 = localValue12
            end
            text9(number6, number7)
            ::continueAtStep613::
            text9 = DrawAdvancedText
            number6 = workingValue
            number6 = number6[text8]
            number6 = number6.x
            number6 = number6 + 0.0967
            number7 = workingValue
            number7 = number7[text8]
            number7 = number7.y
            number7 = number7 + 0.0098
            cmgOperation9 = 0.001
            number8 = 0.001
            cmgOperation10 = 0.25
            text = workingValue
            text = text[text8]
            text = text.name
            workingValue2 = 138
            workingValue4 = 138
            dataCollection2 = 138
            number2 = 255
            workingValue6 = 0
            workingValue7 = 0
            text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
          else
            text9 = DrawAdvancedText
            number6 = workingValue
            number6 = number6[text8]
            number6 = number6.x
            number6 = number6 + 0.0967
            number7 = workingValue
            number7 = number7[text8]
            number7 = number7.y
            number7 = number7 + 0.0098
            cmgOperation9 = 0.001
            number8 = 0.001
            cmgOperation10 = 0.25
            text = workingValue
            text = text[text8]
            text = text.name
            workingValue2 = 255
            workingValue4 = 255
            dataCollection2 = 255
            number2 = 255
            workingValue6 = 0
            workingValue7 = 0
            text9(number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
          end
        end
      end
    end
    localValue1 = stateFlag5
    if localValue1 then
      localValue1 = DrawRect
      localValue2 = 0.791
      number4 = 0.819
      text8 = 0.081
      text9 = 0.06
      number6 = 180
      number7 = 0
      cmgOperation9 = 0
      number8 = 150
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8)
    else
      localValue1 = DrawRect
      localValue2 = 0.791
      number4 = 0.819
      text8 = 0.081
      text9 = 0.06
      number6 = 0
      number7 = 180
      cmgOperation9 = 0
      number8 = 150
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8)
    end
    localValue1 = CursorInArea
    localValue2 = GetArea
    number4 = 0.791
    text8 = 0.819
    text9 = 0.081
    number6 = 0.06
    localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7 = localValue2(number4, text8, text9, number6)
    localValue1 = localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7)
    if not localValue1 then
      localValue1 = DrawAdvancedText
      localValue2 = 0.886
      number4 = 0.82
      text8 = 0.005
      text9 = 0.0028
      number6 = 0.4
      number7 = "LOCKDOWN"
      cmgOperation9 = 255
      number8 = 255
      cmgOperation10 = 255
      text = 255
      workingValue2 = 0
      workingValue4 = 0
      localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
    else
      localValue1 = stateFlag8
      if localValue1 then
        localValue1 = IsControlJustPressed
        localValue2 = 1
        number4 = 329
        localValue1 = localValue1(localValue2, number4)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          number4 = 329
          localValue1 = localValue1(localValue2, number4)
          if not localValue1 then
            goto continueAtStep734
          end
        end
        localValue1 = stateFlag5
        localValue1 = not localValue1
        stateFlag5 = localValue1
        localValue1 = TriggerServerEvent
        localValue2 = "1bfa3cabbc"
        number4 = stateFlag5
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1bfa3cabbc".
        localValue1(localValue2, number4)
        ::continueAtStep734::
        localValue1 = DrawAdvancedText
        localValue2 = 0.886
        number4 = 0.82
        text8 = 0.005
        text9 = 0.0028
        number6 = 0.4
        number7 = "LOCKDOWN"
        cmgOperation9 = 0
        number8 = 138
        cmgOperation10 = 138
        text = 138
        workingValue2 = 0
        workingValue4 = 0
        localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
      else
        localValue1 = DrawAdvancedText
        localValue2 = 0.886
        number4 = 0.82
        text8 = 0.005
        text9 = 0.0028
        number6 = 0.4
        number7 = "LOCKDOWN"
        cmgOperation9 = 255
        number8 = 255
        cmgOperation10 = 255
        text = 255
        workingValue2 = 0
        workingValue4 = 0
        localValue1(localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4)
      end
    end
  end
end
cmgOperation4 = RegisterNetEvent
eventHandlerRegistration = "a93701fa04"
-- Beginner: this function handles network event "a93701fa04".

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1) ===
function stateFlag3(localValue1)
  local localValue2, number4, text8
  stateFlag5 = localValue1
  localValue2 = stateFlag5
  if localValue2 then
    localValue2 = RefreshInterior
    number4 = workingValue12
    localValue2(number4)
    localValue2 = ActivateInteriorEntitySet
    number4 = workingValue12
    text8 = "prison_alarm"
    localValue2(number4, text8)
    localValue2 = Citizen
    localValue2 = localValue2.CreateThread

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local localValue12, stateFlag4, number5
      while true do
        localValue12 = PrepareAlarm
        stateFlag4 = "PRISON_ALARMS"
        localValue12 = localValue12(stateFlag4)
        if localValue12 then
          break
        end
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        stateFlag4 = 100
        localValue12(stateFlag4)
      end
      localValue12 = StartAlarm
      stateFlag4 = "PRISON_ALARMS"
      number5 = true
      localValue12(stateFlag4, number5)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue2(number4)
  else
    localValue2 = RefreshInterior
    number4 = workingValue12
    localValue2(number4)
    localValue2 = DeactivateInteriorEntitySet
    number4 = workingValue12
    text8 = "prison_alarm"
    localValue2(number4, text8)
    localValue2 = Citizen
    localValue2 = localValue2.CreateThread

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local localValue12, stateFlag4
      while true do
        localValue12 = PrepareAlarm
        stateFlag4 = "PRISON_ALARMS"
        localValue12 = localValue12(stateFlag4)
        if localValue12 then
          break
        end
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        stateFlag4 = 100
        localValue12(stateFlag4)
      end
      localValue12 = StopAllAlarms
      stateFlag4 = true
      localValue12(stateFlag4)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue2(number4)
  end
  localValue2 = stateFlag5
  if false == localValue2 then
    localValue2 = false
    stateFlag8 = localValue2
    localValue2 = SetTimeout
    number4 = 300000

    -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
    function text8()
      local localValue12, stateFlag4
      localValue12 = true
      stateFlag8 = localValue12
    end
    localValue2(number4, text8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a93701fa04".
cmgOperation4(eventHandlerRegistration, stateFlag3)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
eventHandlerRegistration = cmgOperation3
stateFlag3 = "Prison Control Panels"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(eventHandlerRegistration, stateFlag3)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, number4, text8
  localValue1 = DisableControlAction
  localValue2 = 0
  number4 = 22
  text8 = true
  localValue1(localValue2, number4, text8)
end
eventHandlerRegistration = AddEventHandler
stateFlag3 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7, nameValue, dataCollection3, position, position2, number3, workingValue8, workingValue9, workingValue10, dataCollection4, workingValue11
  if localValue2 then
    while true do
      number4 = table
      number4 = number4.count
      text8 = dataCollection5
      -- Beginner: result below is count.
      number4 = number4(text8)
      if 0 ~= number4 then
        break
      end
      number4 = Citizen
      number4 = number4.Wait
      text8 = 0
      number4(text8)
    end

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local localValue12, stateFlag4
    end

    -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
    function text8()
      local localValue12, stateFlag4
    end

    -- === HELPER FUNCTION (decompiler name: text9; parameters: localValue12) ===
    function text9(localValue12)
      local stateFlag4, number5, cmgOperation6, text10, cmgOperation8, text11, workingValue13, number9, text14, stateFlag
      stateFlag4 = ""
      number5 = false
      cmgOperation6 = CMG
      cmgOperation6 = cmgOperation6.hasClientPermission
      text10 = "police.onduty.permission"
      cmgOperation6 = cmgOperation6(text10)
      text10 = localValue12.isAllowlisted
      if text10 then
        text10 = text7
        text10 = text10()
      end
      cmgOperation8 = CMG
      cmgOperation8 = cmgOperation8.isStaffedOnClient
      cmgOperation8 = cmgOperation8()
      if not cmgOperation8 and not text10 then
        cmgOperation8 = CMG
        cmgOperation8 = cmgOperation8.hasClientPermission
        text11 = "prisonguard.onduty.permission"
        cmgOperation8 = cmgOperation8(text11)
        if not cmgOperation8 then
          cmgOperation8 = CMG
          cmgOperation8 = cmgOperation8.hasClientPermission
          text11 = "borderforce.onduty.permission"
          cmgOperation8 = cmgOperation8(text11)
          if not cmgOperation8 and not cmgOperation6 then
            cmgOperation8 = CMG
            cmgOperation8 = cmgOperation8.hasClientPermission
            text11 = "nhs.onduty.permission"
            cmgOperation8 = cmgOperation8(text11)
            if not cmgOperation8 then
              cmgOperation8 = CMG
              cmgOperation8 = cmgOperation8.hasClientPermission
              text11 = "lfb.onduty.permission"
              cmgOperation8 = cmgOperation8(text11)
              if not cmgOperation8 then
                goto continueAtStep50
              end
            end
            cmgOperation8 = localValue12.nhsOpen
            if not cmgOperation8 then
              goto continueAtStep50
            end
          end
        end
      end
      stateFlag4 = " (E to toggle lock) "
      number5 = true
      ::continueAtStep50::
      text11 = localValue12.doorHash
      cmgOperation8 = dataCollection5
      cmgOperation8 = cmgOperation8[text11]
      cmgOperation8 = cmgOperation8.currentState
      if 5 ~= cmgOperation8 then
        text11 = localValue12.doorHash
        cmgOperation8 = dataCollection5
        cmgOperation8 = cmgOperation8[text11]
        cmgOperation8 = cmgOperation8.currentState
        if 0 ~= cmgOperation8 then
          goto continueAtStep73
        end
      end
      cmgOperation8 = CMG
      cmgOperation8 = cmgOperation8.DrawText3D
      text11 = localValue12.coords
      workingValue13 = localValue12.doorName
      number9 = stateFlag4
      text14 = " \240\159\148\147"
      workingValue13 = workingValue13 .. number9 .. text14
      number9 = 0.45
      text14 = 4
      cmgOperation8(text11, workingValue13, number9, text14)
      goto continueAtStep83
      ::continueAtStep73::
      cmgOperation8 = CMG
      cmgOperation8 = cmgOperation8.DrawText3D
      text11 = localValue12.coords
      workingValue13 = localValue12.doorName
      number9 = stateFlag4
      text14 = " \240\159\148\146"
      workingValue13 = workingValue13 .. number9 .. text14
      number9 = 0.45
      text14 = 4
      cmgOperation8(text11, workingValue13, number9, text14)
      ::continueAtStep83::
      cmgOperation8 = IsControlJustPressed
      text11 = 0
      workingValue13 = 38
      cmgOperation8 = cmgOperation8(text11, workingValue13)
      if cmgOperation8 then
        cmgOperation8 = CMG
        cmgOperation8 = cmgOperation8.isStaffedOnClient
        cmgOperation8 = cmgOperation8()
        if not cmgOperation8 and not text10 then
          cmgOperation8 = CMG
          cmgOperation8 = cmgOperation8.hasClientPermission
          text11 = "prisonguard.onduty.permission"
          cmgOperation8 = cmgOperation8(text11)
          if not cmgOperation8 then
            cmgOperation8 = CMG
            cmgOperation8 = cmgOperation8.hasClientPermission
            text11 = "borderforce.onduty.permission"
            cmgOperation8 = cmgOperation8(text11)
            if not (cmgOperation8 or cmgOperation6) then
              goto continueAtStep115
            end
          end
          if not number5 then
            cmgOperation8 = localValue12.overrideLock
            ::continueAtStep115::
            if not cmgOperation8 then
              if cmgOperation6 then
                cmgOperation8 = localValue12.pdOpen
                if cmgOperation8 then
                  goto continueAtStep135
                end
              end
              cmgOperation8 = CMG
              cmgOperation8 = cmgOperation8.hasClientPermission
              text11 = "nhs.onduty.permission"
              cmgOperation8 = cmgOperation8(text11)
              if not cmgOperation8 then
                cmgOperation8 = CMG
                cmgOperation8 = cmgOperation8.hasClientPermission
                text11 = "lfb.onduty.permission"
                cmgOperation8 = cmgOperation8(text11)
                if not cmgOperation8 then
                  goto continueAtStep170
                end
              end
              cmgOperation8 = localValue12.nhsOpen
              if not cmgOperation8 then
                goto continueAtStep170
              end
            end
          end
        end
        ::continueAtStep135::
        cmgOperation8 = CMG
        cmgOperation8 = cmgOperation8.setIgnoreRadialInputThisFrame
        cmgOperation8()
        cmgOperation8 = CMG
        cmgOperation8 = cmgOperation8.getSelectedEntity
        cmgOperation8, text11 = cmgOperation8()
        if not cmgOperation8 or 1 ~= text11 then
          workingValue13 = CMG
          workingValue13 = workingValue13.loadAnimDict
          number9 = "anim@heists@keycard@"
          -- Beginner: Load a GTA animation dictionary before using it.
          workingValue13(number9)
          workingValue13 = Citizen
          workingValue13 = workingValue13.CreateThread

          -- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
          function number9()
            local localValue13, localValue22, localValue3, cmgOperation7, stateFlag6, iterator, serverEventCall, text12, text13, stateFlag10, stateFlag2, cmgOperation2
            localValue13 = TaskPlayAnim
            localValue22 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            localValue22 = localValue22()
            localValue3 = "anim@heists@keycard@"
            cmgOperation7 = "exit"
            stateFlag6 = 5.0
            iterator = 1.0
            serverEventCall = -1
            text12 = 48
            text13 = 0
            stateFlag10 = false
            stateFlag2 = false
            cmgOperation2 = false
            -- Beginner: Play an animation on a ped.
            localValue13(localValue22, localValue3, cmgOperation7, stateFlag6, iterator, serverEventCall, text12, text13, stateFlag10, stateFlag2, cmgOperation2)
            localValue13 = Wait
            localValue22 = 1200
            localValue13(localValue22)
            localValue13 = ClearPedTasks
            localValue22 = PlayerPedId
            localValue22, localValue3, cmgOperation7, stateFlag6, iterator, serverEventCall, text12, text13, stateFlag10, stateFlag2, cmgOperation2 = localValue22()
            localValue13(localValue22, localValue3, cmgOperation7, stateFlag6, iterator, serverEventCall, text12, text13, stateFlag10, stateFlag2, cmgOperation2)
            localValue13 = RemoveAnimDict
            localValue22 = "anim@heists@keycard@"
            localValue13(localValue22)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          workingValue13(number9)
          number9 = localValue12.doorHash
          workingValue13 = dataCollection5
          workingValue13 = workingValue13[number9]
          workingValue13 = workingValue13.currentState
          if 4 == workingValue13 then
            workingValue13 = TriggerServerEvent
            number9 = "e1a464cf07"
            text14 = localValue12.doorHash
            stateFlag = 5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
            workingValue13(number9, text14, stateFlag)
          else
            workingValue13 = TriggerServerEvent
            number9 = "e1a464cf07"
            text14 = localValue12.doorHash
            stateFlag = 4
            workingValue13(number9, text14, stateFlag)
          end
        end
      end
      ::continueAtStep170::
    end
    number6 = pairs
    number7 = cmgOperation.doors
    number6, number7, cmgOperation9, number8 = number6(number7)
    for cmgOperation10, text in number6, number7, cmgOperation9, number8 do
      workingValue2 = 1
      workingValue4 = #text
      dataCollection2 = 1
      for number2 = workingValue2, workingValue4, dataCollection2 do
        workingValue6 = text[number2]
        workingValue6 = workingValue6.pairedDoorHash
        if workingValue6 then
          workingValue6 = text[number2]
          workingValue6 = workingValue6.doorHash
          workingValue7 = text[number2]
          workingValue7 = workingValue7.pairedDoorHash
          if workingValue6 > workingValue7 then
            goto continueAtStep149
          end
        end
        workingValue6 = text[number2]
        workingValue6 = workingValue6.coords
        workingValue7 = text[number2]
        workingValue7 = workingValue7.pairedDoorHash
        if workingValue7 then
          workingValue7 = workingValue3
          nameValue = text[number2]
          nameValue = nameValue.pairedDoorHash
          workingValue7 = workingValue7(nameValue)
          if workingValue7 then
            nameValue = vector3
            dataCollection3 = text[number2]
            dataCollection3 = dataCollection3.coords
            dataCollection3 = dataCollection3.x
            position = workingValue7.coords
            position = position.x
            dataCollection3 = dataCollection3 + position
            dataCollection3 = dataCollection3 * 0.5
            position = text[number2]
            position = position.coords
            position = position.y
            position2 = workingValue7.coords
            position2 = position2.y
            position = position + position2
            position = position * 0.5
            position2 = text[number2]
            position2 = position2.coords
            position2 = position2.z
            number3 = workingValue7.coords
            number3 = number3.z
            position2 = position2 + number3
            position2 = position2 * 0.5
            nameValue = nameValue(dataCollection3, position, position2)
            workingValue6 = nameValue
          end
        end
        workingValue7 = text[number2]
        workingValue7 = workingValue7.name
        nameValue = text[number2]
        nameValue = nameValue.pairedDoorHash
        if nameValue then
          nameValue = workingValue5
          dataCollection3 = text[number2]
          dataCollection3 = dataCollection3.name
          nameValue = nameValue(dataCollection3)
          workingValue7 = nameValue
        end
        nameValue = CMG
        nameValue = nameValue.createArea
        dataCollection3 = "openPrisonDoor_"
        position = text[number2]
        position = position.doorHash
        dataCollection3 = dataCollection3 .. position
        position = workingValue6
        position2 = 1.5
        number3 = 5
        workingValue8 = number4
        workingValue9 = text8
        workingValue10 = text9
        dataCollection4 = {}
        dataCollection4.doorName = workingValue7
        workingValue11 = text[number2]
        workingValue11 = workingValue11.doorHash
        dataCollection4.doorHash = workingValue11
        dataCollection4.coords = workingValue6
        workingValue11 = text[number2]
        workingValue11 = workingValue11.overrideLocks
        if not workingValue11 then
          workingValue11 = false
        end
        dataCollection4.overrideLock = workingValue11
        workingValue11 = text[number2]
        workingValue11 = workingValue11.nhsOpen
        if not workingValue11 then
          workingValue11 = false
        end
        dataCollection4.nhsOpen = workingValue11
        workingValue11 = text[number2]
        workingValue11 = workingValue11.pdOpen
        if not workingValue11 then
          workingValue11 = false
        end
        dataCollection4.pdOpen = workingValue11
        workingValue11 = text[number2]
        workingValue11 = workingValue11.isAllowlisted
        dataCollection4.isAllowlisted = workingValue11
        -- Beginner: Create an interaction area around a world position.
        nameValue(dataCollection3, position, position2, number3, workingValue8, workingValue9, workingValue10, dataCollection4)
        nameValue = text[number2]
        nameValue = nameValue.disableClimb
        if nameValue then
          nameValue = CMG
          nameValue = nameValue.createArea
          dataCollection3 = "prisonDoorDisableClimb_"
          position = text[number2]
          position = position.doorHash
          dataCollection3 = dataCollection3 .. position
          position = text[number2]
          position = position.coords
          position2 = 10.0
          number3 = 25.0

          -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
          function workingValue8()
            local localValue12, stateFlag4
          end

          -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
          function workingValue9()
            local localValue12, stateFlag4
          end
          workingValue10 = cmgOperation4
          dataCollection4 = {}
          nameValue(dataCollection3, position, position2, number3, workingValue8, workingValue9, workingValue10, dataCollection4)
        end
        ::continueAtStep149::
      end
    end

    -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
    function number6()
      local localValue12, stateFlag4, number5, cmgOperation6, text10, cmgOperation8, text11, workingValue13, number9, text14, stateFlag
      localValue12 = CMG
      localValue12 = localValue12.TriggerServerCallback
      stateFlag4 = "6d3dee7984"
      localValue12 = localValue12(stateFlag4)
      dataCollection5 = localValue12
      localValue12 = pairs
      stateFlag4 = dataCollection5
      localValue12, stateFlag4, number5, cmgOperation6 = localValue12(stateFlag4)
      for text10, cmgOperation8 in localValue12, stateFlag4, number5, cmgOperation6 do
        text11 = DoorSystemSetDoorState
        workingValue13 = text10
        number9 = cmgOperation8.currentState
        text14 = false
        stateFlag = false
        text11(workingValue13, number9, text14, stateFlag)
        text11 = cmgOperation8.currentState
        if 0 ~= text11 then
          text11 = cmgOperation8.currentState
          if 5 ~= text11 then
            goto continueAtStep27
          end
        end
        text11 = DoorSystemSetHoldOpen
        workingValue13 = text10
        number9 = true
        text11(workingValue13, number9)
        goto continueAtStep31
        ::continueAtStep27::
        text11 = DoorSystemSetHoldOpen
        workingValue13 = text10
        number9 = false
        text11(workingValue13, number9)
        ::continueAtStep31::
      end
    end
    number7 = CMG
    number7 = number7.createArea
    cmgOperation9 = "prisonSyncDoorsOnAreaEnter"
    number8 = cmgOperation.prisonMainCoords
    cmgOperation10 = 250
    text = 250
    workingValue2 = number6

    -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
    function workingValue4()
      local localValue12, stateFlag4
    end

    -- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
    function dataCollection2()
      local localValue12, stateFlag4
    end
    number2 = {}
    -- Beginner: Create an interaction area around a world position.
    number7(cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(stateFlag3, text2)
eventHandlerRegistration = RegisterNetEvent
stateFlag3 = "0fad7a76a8"
-- Beginner: this function handles network event "0fad7a76a8".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2, workingValue4, dataCollection2, number2, workingValue6, workingValue7, nameValue, dataCollection3, position
  dataCollection5 = localValue1
  localValue2 = pairs
  number4 = cmgOperation.doors
  localValue2, number4, text8, text9 = localValue2(number4)
  for number6, number7 in localValue2, number4, text8, text9 do
    cmgOperation9 = 1
    number8 = #number7
    cmgOperation10 = 1
    for text = cmgOperation9, number8, cmgOperation10 do
      workingValue2 = AddDoorToSystem
      workingValue4 = number7[text]
      workingValue4 = workingValue4.doorHash
      dataCollection2 = number7[text]
      dataCollection2 = dataCollection2.modelHash
      number2 = number7[text]
      number2 = number2.coords
      number2 = number2.x
      workingValue6 = number7[text]
      workingValue6 = workingValue6.coords
      workingValue6 = workingValue6.y
      workingValue7 = number7[text]
      workingValue7 = workingValue7.coords
      workingValue7 = workingValue7.z
      nameValue = false
      dataCollection3 = false
      position = false
      workingValue2(workingValue4, dataCollection2, number2, workingValue6, workingValue7, nameValue, dataCollection3, position)
      workingValue2 = DoorSystemSetDoorState
      workingValue4 = number7[text]
      workingValue4 = workingValue4.doorHash
      dataCollection2 = number7[text]
      number2 = dataCollection2.doorHash
      dataCollection2 = dataCollection5
      dataCollection2 = dataCollection2[number2]
      dataCollection2 = dataCollection2.currentState
      number2 = false
      workingValue6 = false
      workingValue2(workingValue4, dataCollection2, number2, workingValue6)
      workingValue2 = number7[text]
      workingValue4 = workingValue2.doorHash
      workingValue2 = dataCollection5
      workingValue2 = workingValue2[workingValue4]
      workingValue2 = workingValue2.currentState
      if 0 ~= workingValue2 then
        workingValue2 = number7[text]
        workingValue4 = workingValue2.doorHash
        workingValue2 = dataCollection5
        workingValue2 = workingValue2[workingValue4]
        workingValue2 = workingValue2.currentState
        if 5 ~= workingValue2 then
          goto continueAtStep59
        end
      end
      workingValue2 = DoorSystemSetHoldOpen
      workingValue4 = number7[text]
      workingValue4 = workingValue4.doorHash
      dataCollection2 = true
      workingValue2(workingValue4, dataCollection2)
      goto continueAtStep64
      ::continueAtStep59::
      workingValue2 = DoorSystemSetHoldOpen
      workingValue4 = number7[text]
      workingValue4 = workingValue4.doorHash
      dataCollection2 = false
      workingValue2(workingValue4, dataCollection2)
      ::continueAtStep64::
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0fad7a76a8".
eventHandlerRegistration(stateFlag3, text2)
eventHandlerRegistration = RegisterNetEvent
stateFlag3 = "62bd2178cb"
-- Beginner: this function handles network event "62bd2178cb".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, number4, text8, text9, number6, number7, cmgOperation9, number8, cmgOperation10, text, workingValue2
  if nil ~= localValue1 then
    localValue2 = pairs
    number4 = dataCollection5
    localValue2, number4, text8, text9 = localValue2(number4)
    for number6, number7 in localValue2, number4, text8, text9 do
      number7.currentState = localValue1
      cmgOperation9 = DoorSystemSetDoorState
      number8 = number6
      cmgOperation10 = localValue1
      text = false
      workingValue2 = false
      cmgOperation9(number8, cmgOperation10, text, workingValue2)
      if 0 == localValue1 or 5 == localValue1 then
        cmgOperation9 = DoorSystemSetHoldOpen
        number8 = number6
        cmgOperation10 = true
        cmgOperation9(number8, cmgOperation10)
      else
        cmgOperation9 = DoorSystemSetHoldOpen
        number8 = number6
        cmgOperation10 = false
        cmgOperation9(number8, cmgOperation10)
      end
    end
  else
    localValue2 = pairs
    number4 = dataCollection5
    localValue2, number4, text8, text9 = localValue2(number4)
    for number6, number7 in localValue2, number4, text8, text9 do
      cmgOperation9 = number7.defaultState
      number7.currentState = cmgOperation9
      cmgOperation9 = DoorSystemSetDoorState
      number8 = number6
      cmgOperation10 = number7.defaultState
      text = false
      workingValue2 = false
      cmgOperation9(number8, cmgOperation10, text, workingValue2)
      cmgOperation9 = number7.defaultState
      if 0 ~= cmgOperation9 then
        cmgOperation9 = number7.defaultState
        if 5 ~= cmgOperation9 then
          goto continueAtStep54
        end
      end
      cmgOperation9 = DoorSystemSetHoldOpen
      number8 = number6
      cmgOperation10 = true
      cmgOperation9(number8, cmgOperation10)
      goto continueAtStep58
      ::continueAtStep54::
      cmgOperation9 = DoorSystemSetHoldOpen
      number8 = number6
      cmgOperation10 = false
      cmgOperation9(number8, cmgOperation10)
      ::continueAtStep58::
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "62bd2178cb".
eventHandlerRegistration(stateFlag3, text2)
eventHandlerRegistration = RegisterNetEvent
stateFlag3 = "c5dd6087ae"
-- Beginner: this function handles network event "c5dd6087ae".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local number4, text8, text9, number6, number7
  number4 = DoorSystemSetDoorState
  text8 = localValue1
  text9 = localValue2
  number6 = false
  number7 = false
  number4(text8, text9, number6, number7)
  if 0 == localValue2 or 5 == localValue2 then
    number4 = DoorSystemSetHoldOpen
    text8 = localValue1
    text9 = true
    number4(text8, text9)
  else
    number4 = DoorSystemSetHoldOpen
    text8 = localValue1
    text9 = false
    number4(text8, text9)
  end
  number4 = dataCollection5
  number4 = number4[localValue1]
  if nil ~= number4 then
    number4 = dataCollection5
    number4 = number4[localValue1]
    number4.currentState = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c5dd6087ae".
eventHandlerRegistration(stateFlag3, text2)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
stateFlag3 = "prison"
text2 = "keyfob"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text3 = ""
text4 = "~b~Gate Keyfob Menu"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text5 = "cmg_prisonui"
text6 = "cmg_prisonui"
rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text5, text6 = rageUiOperation(text3, text4, rageUiOperation2, rageUiOperation3, text5, text6)
eventHandlerRegistration(stateFlag3, text2, rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text5, text6)
eventHandlerRegistration = RageUI
eventHandlerRegistration = eventHandlerRegistration.CreateWhile
stateFlag3 = 1.0
text2 = RMenu
rageUiOperation = text2
text2 = text2.Get
text3 = "prison"
text4 = "keyfob"
-- Beginner: result below is menu.
text2 = text2(rageUiOperation, text3, text4)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, number4, text8, text9, number6, number7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  number4 = localValue2
  localValue2 = localValue2.Get
  text8 = "prison"
  text9 = "keyfob"
  -- Beginner: result below is menu.
  localValue2 = localValue2(number4, text8, text9)
  number4 = true
  text8 = false
  text9 = true

  -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
  function number6()
    local localValue12, stateFlag4, number5, cmgOperation6, text10, cmgOperation8
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    stateFlag4 = "Front Gate"
    number5 = ""
    cmgOperation6 = {}
    cmgOperation6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text10 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue22, localValue3) ===
    function cmgOperation8(localValue13, localValue22, localValue3)
      local cmgOperation7, stateFlag6, iterator, serverEventCall, text12, text13, stateFlag10, stateFlag2, cmgOperation2, number
      if localValue3 then
        cmgOperation7 = CMG
        cmgOperation7 = cmgOperation7.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgOperation7 = cmgOperation7()
        if 0 == cmgOperation7 then
          stateFlag6 = notify
          iterator = "~r~You must be in your vehicle to use the fob."
          -- Beginner: Show a notification to the player.
          stateFlag6(iterator)
          return
        end
        stateFlag6 = false
        iterator = pairs
        serverEventCall = cmgOperation.frontFobCoords
        iterator, serverEventCall, text12, text13 = iterator(serverEventCall)
        for stateFlag10, stateFlag2 in iterator, serverEventCall, text12, text13 do
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          cmgOperation2 = cmgOperation2()
          cmgOperation2 = cmgOperation2 - stateFlag2
          cmgOperation2 = #cmgOperation2
          number = 7.5
          if cmgOperation2 < number then
            stateFlag6 = true
            break
          end
        end
        if not stateFlag6 then
          iterator = notify
          serverEventCall = "~r~You are not close enough to the gate to use this."
          iterator(serverEventCall)
          return
        end
        iterator = dataCollection5.mainGate1
        if iterator then
          iterator = dataCollection5.mainGate1
          iterator = iterator.currentState
          if 5 == iterator then
            iterator = 4
            if iterator then
              goto continueAtStep48
            end
          end
          iterator = 5
          ::continueAtStep48::
          serverEventCall = TriggerServerEvent
          text12 = "e1a464cf07"
          text13 = "mainGate1"
          stateFlag10 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
          serverEventCall(text12, text13, stateFlag10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(stateFlag4, number5, cmgOperation6, text10, cmgOperation8)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    stateFlag4 = "Rear Gate"
    number5 = ""
    cmgOperation6 = {}
    cmgOperation6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text10 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue22, localValue3) ===
    function cmgOperation8(localValue13, localValue22, localValue3)
      local cmgOperation7, stateFlag6, iterator, serverEventCall, text12, text13, stateFlag10, stateFlag2, cmgOperation2, number
      if localValue3 then
        cmgOperation7 = CMG
        cmgOperation7 = cmgOperation7.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgOperation7 = cmgOperation7()
        if 0 == cmgOperation7 then
          stateFlag6 = notify
          iterator = "~r~You must be in your vehicle to use the fob."
          -- Beginner: Show a notification to the player.
          stateFlag6(iterator)
          return
        end
        stateFlag6 = false
        iterator = pairs
        serverEventCall = cmgOperation.rearFobCoords
        iterator, serverEventCall, text12, text13 = iterator(serverEventCall)
        for stateFlag10, stateFlag2 in iterator, serverEventCall, text12, text13 do
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          cmgOperation2 = cmgOperation2()
          cmgOperation2 = cmgOperation2 - stateFlag2
          cmgOperation2 = #cmgOperation2
          number = 7.5
          if cmgOperation2 < number then
            stateFlag6 = true
            break
          end
        end
        if not stateFlag6 then
          iterator = notify
          serverEventCall = "~r~You are not close enough to the gate to use this."
          iterator(serverEventCall)
          return
        end
        iterator = dataCollection5.mainGate2
        if iterator then
          iterator = dataCollection5.mainGate2
          iterator = iterator.currentState
          if 5 == iterator then
            iterator = 4
            if iterator then
              goto continueAtStep48
            end
          end
          iterator = 5
          ::continueAtStep48::
          serverEventCall = TriggerServerEvent
          text12 = "e1a464cf07"
          text13 = "mainGate2"
          stateFlag10 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
          serverEventCall(text12, text13, stateFlag10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(stateFlag4, number5, cmgOperation6, text10, cmgOperation8)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    stateFlag4 = "Side Gate"
    number5 = ""
    cmgOperation6 = {}
    cmgOperation6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text10 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue22, localValue3) ===
    function cmgOperation8(localValue13, localValue22, localValue3)
      local cmgOperation7, stateFlag6, iterator, serverEventCall, text12, text13, stateFlag10
      if localValue3 then
        cmgOperation7 = CMG
        cmgOperation7 = cmgOperation7.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgOperation7 = cmgOperation7()
        if 0 == cmgOperation7 then
          stateFlag6 = notify
          iterator = "~r~You must be in your vehicle to use the fob."
          -- Beginner: Show a notification to the player.
          stateFlag6(iterator)
          return
        end
        stateFlag6 = workingValue3
        iterator = "mainEntranceDoorE4"
        stateFlag6 = stateFlag6(iterator)
        if not stateFlag6 then
          return
        end
        iterator = CMG
        iterator = iterator.getPlayerCoords
        -- Beginner: result below is playerCoords.
        iterator = iterator()
        serverEventCall = stateFlag6.coords
        iterator = iterator - serverEventCall
        iterator = #iterator
        serverEventCall = 7.5
        if iterator >= serverEventCall then
          iterator = notify
          serverEventCall = "~r~You are not close enough to the gate to use this."
          iterator(serverEventCall)
          return
        end
        iterator = dataCollection5.mainEntranceDoorE4
        if iterator then
          iterator = dataCollection5.mainEntranceDoorE4
          iterator = iterator.currentState
          if 5 == iterator then
            iterator = 4
            if iterator then
              goto continueAtStep43
            end
          end
          iterator = 5
          ::continueAtStep43::
          serverEventCall = TriggerServerEvent
          text12 = "e1a464cf07"
          text13 = "mainEntranceDoorE4"
          stateFlag10 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
          serverEventCall(text12, text13, stateFlag10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(stateFlag4, number5, cmgOperation6, text10, cmgOperation8)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    stateFlag4 = "Garage Gate"
    number5 = ""
    cmgOperation6 = {}
    cmgOperation6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text10 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue22, localValue3) ===
    function cmgOperation8(localValue13, localValue22, localValue3)
      local cmgOperation7, stateFlag6, iterator, serverEventCall, text12, text13, stateFlag10
      if localValue3 then
        cmgOperation7 = CMG
        cmgOperation7 = cmgOperation7.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgOperation7 = cmgOperation7()
        if 0 == cmgOperation7 then
          stateFlag6 = notify
          iterator = "~r~You must be in your vehicle to use the fob."
          -- Beginner: Show a notification to the player.
          stateFlag6(iterator)
          return
        end
        stateFlag6 = workingValue3
        iterator = "garage1_1"
        stateFlag6 = stateFlag6(iterator)
        if not stateFlag6 then
          return
        end
        iterator = CMG
        iterator = iterator.getPlayerCoords
        -- Beginner: result below is playerCoords.
        iterator = iterator()
        serverEventCall = stateFlag6.coords
        iterator = iterator - serverEventCall
        iterator = #iterator
        serverEventCall = 7.5
        if iterator >= serverEventCall then
          iterator = notify
          serverEventCall = "~r~You are not close enough to the gate to use this."
          iterator(serverEventCall)
          return
        end
        iterator = dataCollection5.garage1_1
        if iterator then
          iterator = dataCollection5.garage1_1
          iterator = iterator.currentState
          if 5 == iterator then
            iterator = 4
            if iterator then
              goto continueAtStep43
            end
          end
          iterator = 5
          ::continueAtStep43::
          serverEventCall = TriggerServerEvent
          text12 = "e1a464cf07"
          text13 = "garage1_1"
          stateFlag10 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
          serverEventCall(text12, text13, stateFlag10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(stateFlag4, number5, cmgOperation6, text10, cmgOperation8)
  end

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local localValue12, stateFlag4
  end
  localValue1(localValue2, number4, text8, text9, number6, number7)
end
eventHandlerRegistration(stateFlag3, text2, rageUiOperation, text3)
eventHandlerRegistration = RegisterNetEvent
stateFlag3 = "6c335938c2"
-- Beginner: this function handles network event "6c335938c2".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, number4, text8, text9
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 == localValue1 then
    localValue1 = notify
    localValue2 = "~r~You must be in your vehicle to use the fob."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  else
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    number4 = localValue2
    localValue2 = localValue2.Get
    text8 = "prison"
    text9 = "keyfob"
    -- Beginner: result below is menu.
    localValue2 = localValue2(number4, text8, text9)
    number4 = true
    localValue1(localValue2, number4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6c335938c2".
eventHandlerRegistration(stateFlag3, text2)
eventHandlerRegistration = RegisterCommand
stateFlag3 = "hmpkeyfob"
-- Beginner: this function is the command handler for "hmpkeyfob".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, number4, text8
  localValue1 = CMGclient
  localValue1 = localValue1.useInventoryItem
  localValue2 = {}
  number4 = "hmpgatekeyfob"
  text8 = 1
  localValue2[1] = number4
  localValue2[2] = text8
  localValue1(localValue2)
end
rageUiOperation = false
-- Beginner: Register a chat/console command. Event/command: "hmpkeyfob".
eventHandlerRegistration(stateFlag3, text2, rageUiOperation)
eventHandlerRegistration = RegisterKeyMapping
stateFlag3 = "hmpkeyfob"
text2 = "HMP Gate Keyfob"
rageUiOperation = "KEYBOARD"
text3 = ""
-- Beginner: Bind a command to a keyboard/controller key.
eventHandlerRegistration(stateFlag3, text2, rageUiOperation, text3)
