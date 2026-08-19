--[[
    LEVEL 1 BEGINNER GUIDE — Turf
    ==================================

    File: cmg/prod/client/drugs/cl_turf.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: drug-related gameplay systems, specifically the Turf feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 56
      * Background threads: 0
      * Always-running loops: 12
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
local cmgOperation, text2, dataCollection6, dataCollection7, dataCollection8, stateFlag3, stateFlag5, number15, number16, number18, number, dataCollection, dataCollection2, cmgOperation2, workingValue3, workingValue4, cmgOperation3, text, cmgOperation4, cmgOperation5, workingValue6, workingValue7, tableHelper, cmgOperation6, dataCollection4, workingValue10, eventHandler, eventHandler2, eventHandler3, cmgOperation7, text3, workingValue13
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text2 = "cfg/cfg_turf"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text2)
text2 = 40
dataCollection6 = {}
dataCollection7 = {}
dataCollection8 = {}
stateFlag3 = false
stateFlag5 = false
number15 = 0
number16 = 0
number18 = 0
number = 10.0
dataCollection = {}
dataCollection2 = {}
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2
  localValue1 = stateFlag5
  if not localValue1 then
    localValue1 = stateFlag3
  end
  return localValue1
end
cmgOperation2.isInTurfContest = workingValue3

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3
  if -1569615261 == localValue1 or 126349499 == localValue1 then
    localValue2 = false
    return localValue2
  end
  localValue2 = GetWeapontypeGroup
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if -728555052 == localValue2 or -1609580060 == localValue2 or 1548507267 == localValue2 then
    localValue3 = false
    return localValue3
  end
  localValue3 = true
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stateFlag4
  localValue3 = GetEntityCoords
  localValue4 = localValue1
  localValue5 = false
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = localValue3 - localValue2
  localValue4 = #localValue4
  localValue5 = 37.5
  if localValue4 >= localValue5 then
    localValue4 = "~r~Turf capture cancelled, you got too far!"
    return localValue4
  end
  localValue4 = math
  localValue4 = localValue4.abs
  localValue5 = localValue3.z
  stateFlag4 = localValue2.z
  localValue5 = localValue5 - stateFlag4
  localValue4 = localValue4(localValue5)
  localValue5 = number
  if localValue4 > localValue5 then
    localValue4 = "~r~Turf capture cancelled, you got too high!"
    return localValue4
  end
  localValue4 = IsPedInAnyVehicle
  localValue5 = localValue1
  stateFlag4 = false
  localValue4 = localValue4(localValue5, stateFlag4)
  if localValue4 then
    localValue4 = "~r~Turf capture cancelled, exit your vehicle!"
    return localValue4
  end
  localValue4 = GetEntityHealth
  localValue5 = localValue1
  -- Beginner: result below is health.
  localValue4 = localValue4(localValue5)
  if localValue4 <= 102 then
    localValue4 = "~r~Turf capture failed, you died"
    return localValue4
  end
  localValue4 = cmgOperation2
  localValue5 = GetSelectedPedWeapon
  stateFlag4 = localValue1
  localValue5, stateFlag4 = localValue5(stateFlag4)
  localValue4 = localValue4(localValue5, stateFlag4)
  if not localValue4 then
    localValue4 = "~r~Turf capture cancelled: you need a proper weapon to take a turf!"
    return localValue4
  end
  localValue4 = CMG
  localValue4 = localValue4.isPlayingEmote
  localValue4 = localValue4()
  if localValue4 then
    localValue4 = "~r~Turf capture cancelled: emotes cannot be used while capturing!"
    return localValue4
  end
  localValue4 = nil
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stateFlag4
  localValue3 = GetEntityCoords
  localValue4 = localValue1
  localValue5 = false
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = localValue3 - localValue2
  localValue4 = #localValue4
  localValue5 = 37.5
  if localValue4 >= localValue5 then
    localValue4 = false
    return localValue4
  end
  localValue4 = math
  localValue4 = localValue4.abs
  localValue5 = localValue3.z
  stateFlag4 = localValue2.z
  localValue5 = localValue5 - stateFlag4
  localValue4 = localValue4(localValue5)
  localValue5 = number
  if localValue4 > localValue5 then
    localValue4 = false
    return localValue4
  end
  localValue4 = GetEntityHealth
  localValue5 = localValue1
  -- Beginner: result below is health.
  localValue4 = localValue4(localValue5)
  if localValue4 <= 102 then
    localValue4 = false
    return localValue4
  end
  localValue4 = IsPedInAnyVehicle
  localValue5 = localValue1
  stateFlag4 = false
  localValue4 = localValue4(localValue5, stateFlag4)
  if localValue4 then
    localValue4 = false
    return localValue4
  end
  localValue4 = cmgOperation2
  localValue5 = GetSelectedPedWeapon
  stateFlag4 = localValue1
  localValue5, stateFlag4 = localValue5(stateFlag4)
  localValue4 = localValue4(localValue5, stateFlag4)
  if not localValue4 then
    localValue4 = false
    return localValue4
  end
  localValue4 = CMG
  localValue4 = localValue4.isPlayingEmote
  localValue4 = localValue4()
  if localValue4 then
    localValue4 = false
    return localValue4
  end
  localValue4 = true
  return localValue4
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.keySortedPairs
text = cmgOperation.locations
cmgOperation3, text, cmgOperation4, cmgOperation5 = cmgOperation3(text)
for workingValue6, workingValue7 in cmgOperation3, text, cmgOperation4, cmgOperation5 do
  tableHelper = table
  tableHelper = tableHelper.insert
  cmgOperation6 = dataCollection7
  dataCollection4 = {}
  dataCollection4.locationName = workingValue6
  dataCollection4.owned = false
  dataCollection4.gangOwner = "N/A"
  dataCollection4.commission = 0
  dataCollection4.profit = 0
  tableHelper(cmgOperation6, dataCollection4)
  tableHelper = table
  tableHelper = tableHelper.insert
  cmgOperation6 = dataCollection
  dataCollection4 = {}
  workingValue10 = workingValue7.turfCoords
  dataCollection4.position = workingValue10
  workingValue10 = workingValue7.turfRadius
  dataCollection4.distance = workingValue10
  tableHelper(cmgOperation6, dataCollection4)
  tableHelper = workingValue7.moneyTurf
  if not tableHelper then
    tableHelper = #dataCollection7
    cmgOperation6 = {}
    cmgOperation6.locationName = workingValue6
    dataCollection4 = workingValue7.traderCoords
    cmgOperation6.position = dataCollection4
    cmgOperation6.distance = 100
    cmgOperation6.commissionRate = 0
    dataCollection2[tableHelper] = cmgOperation6
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerDevMenuState
text = "turf"
cmgOperation4 = {}
cmgOperation4.quickCapturing = false
cmgOperation4.ignoreCooldown = false
cmgOperation3 = cmgOperation3(text, cmgOperation4)
text = 0
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "7caa981020"
-- Beginner: this function handles network event "7caa981020".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2
  text = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7caa981020".
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = CMG
-- Beginner: this function handles network event "7caa981020".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = text
  return localValue1
end
cmgOperation4.getNextMoneyTurfPayoutEpoch = cmgOperation5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10
  localValue2 = pairs
  localValue3 = dataCollection7
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for stateFlag4, cmgOperation8 in localValue2, localValue3, localValue4, localValue5 do
    cmgOperation9 = cmgOperation8.locationName
    if cmgOperation9 == localValue1 then
      cmgOperation9 = cmgOperation8.gangOwner
      cmgOperation10 = cmgOperation8.profit
      return cmgOperation9, cmgOperation10
    end
  end
  localValue2 = error
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "Invalid turf location provided, %s does not exist."
  localValue5 = localValue1
  localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10 = localValue3(localValue4, localValue5)
  localValue2(localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10)
end
cmgOperation4.getTurfOwnerAndProfit = cmgOperation5
cmgOperation4 = Citizen
cmgOperation4 = cmgOperation4.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2, nameValue2, number6
  localValue1 = {}
  localValue2 = CMG
  localValue2 = localValue2.keySortedPairs
  localValue3 = cmgOperation.locations
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for stateFlag4, cmgOperation8 in localValue2, localValue3, localValue4, localValue5 do
    cmgOperation9 = tCMG
    cmgOperation9 = cmgOperation9.addBlip
    cmgOperation10 = cmgOperation8.mapCoords
    cmgOperation10 = cmgOperation10.x
    text6 = cmgOperation8.mapCoords
    text6 = text6.y
    workingValue = cmgOperation8.mapCoords
    workingValue = workingValue.z
    nameValue = cmgOperation8.mapSpriteId
    workingValue2 = cmgOperation8.mapColour
    nameValue2 = cmgOperation8.name
    number6 = cmgOperation8.mapScale
    cmgOperation9 = cmgOperation9(cmgOperation10, text6, workingValue, nameValue, workingValue2, nameValue2, number6)
    cmgOperation10 = CMG
    cmgOperation10 = cmgOperation10.addBlipContext
    text6 = "Civilian"
    workingValue = cmgOperation9
    cmgOperation10(text6, workingValue)
    cmgOperation10 = table
    cmgOperation10 = cmgOperation10.insert
    text6 = localValue1
    workingValue = {}
    nameValue = cmgOperation8.name
    workingValue.title = nameValue
    nameValue = cmgOperation8.areaType
    workingValue.type = nameValue
    nameValue = cmgOperation8.areaColour
    workingValue.colour = nameValue
    workingValue.id = 1
    nameValue = cmgOperation8.areaCoords
    workingValue.position = nameValue
    nameValue = cmgOperation8.areaRadius
    workingValue.blipsize = nameValue
    nameValue = cmgOperation8.areaWidth
    workingValue.width = nameValue
    nameValue = cmgOperation8.areaHeight
    workingValue.height = nameValue
    cmgOperation10(text6, workingValue)
  end
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for stateFlag4, cmgOperation8 in localValue2, localValue3, localValue4, localValue5 do
    cmgOperation9 = nil
    cmgOperation10 = cmgOperation8.type
    if "radius" == cmgOperation10 then
      cmgOperation10 = AddBlipForRadius
      text6 = cmgOperation8.position
      text6 = text6.x
      workingValue = cmgOperation8.position
      workingValue = workingValue.y
      nameValue = cmgOperation8.position
      nameValue = nameValue.z
      workingValue2 = cmgOperation8.blipsize
      -- Beginner: result below is blipHandle.
      cmgOperation10 = cmgOperation10(text6, workingValue, nameValue, workingValue2)
      cmgOperation9 = cmgOperation10
    else
      cmgOperation10 = cmgOperation8.type
      if "area" == cmgOperation10 then
        cmgOperation10 = AddBlipForArea
        text6 = cmgOperation8.position
        text6 = text6.x
        workingValue = cmgOperation8.position
        workingValue = workingValue.y
        nameValue = cmgOperation8.position
        nameValue = nameValue.z
        workingValue2 = cmgOperation8.width
        nameValue2 = cmgOperation8.height
        cmgOperation10 = cmgOperation10(text6, workingValue, nameValue, workingValue2, nameValue2)
        cmgOperation9 = cmgOperation10
        cmgOperation10 = SetBlipRotation
        text6 = cmgOperation9
        workingValue = 0.0
        cmgOperation10(text6, workingValue)
        cmgOperation10 = SetBlipSprite
        text6 = cmgOperation9
        workingValue = 608
        cmgOperation10(text6, workingValue)
        cmgOperation10 = SetBlipAsShortRange
        text6 = cmgOperation9
        workingValue = true
        cmgOperation10(text6, workingValue)
      else
        cmgOperation10 = error
        text6 = string
        text6 = text6.format
        workingValue = "Invalid type %s specified for %s zone"
        nameValue = cmgOperation8.type
        workingValue2 = cmgOperation8.title
        text6, workingValue, nameValue, workingValue2, nameValue2, number6 = text6(workingValue, nameValue, workingValue2)
        cmgOperation10(text6, workingValue, nameValue, workingValue2, nameValue2, number6)
      end
    end
    cmgOperation10 = SetBlipColour
    text6 = cmgOperation9
    workingValue = cmgOperation8.colour
    cmgOperation10(text6, workingValue)
    cmgOperation10 = SetBlipAlpha
    text6 = cmgOperation9
    workingValue = 180
    cmgOperation10(text6, workingValue)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation4(cmgOperation5)
cmgOperation4 = AddEventHandler
cmgOperation5 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4
  if localValue2 then
    localValue3 = TriggerServerEvent
    localValue4 = "5b6e20cdd5"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b6e20cdd5".
    localValue3(localValue4)
    localValue3 = TriggerServerEvent
    localValue4 = "da072a0288"
    localValue3(localValue4)
    localValue3 = TriggerServerEvent
    localValue4 = "71f97ba18f"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "71f97ba18f".
    localValue3(localValue4)
    localValue3 = TriggerServerEvent
    localValue4 = "a87702a8ec"
    localValue3(localValue4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "e6dba9aa45"
-- Beginner: this function handles network event "e6dba9aa45".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = dataCollection7
  localValue3 = localValue3[localValue1]
  localValue3.gangOwner = localValue2
  localValue3 = TriggerEvent
  localValue4 = "e394af4876"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e394af4876".
  localValue3(localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e6dba9aa45".
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "1ad2c58ae3"
-- Beginner: this function handles network event "1ad2c58ae3".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = false
  stateFlag3 = localValue1
end
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "c680350573"
-- Beginner: this function handles network event "c680350573".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection7
  localValue3 = localValue3[localValue1]
  localValue3.owned = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c680350573".
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "b584e10b3d"
-- Beginner: this function handles network event "b584e10b3d".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection6
  localValue3[localValue1] = localValue2
end
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "e9971176c5"
-- Beginner: this function handles network event "e9971176c5".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10, text6, workingValue
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for stateFlag4, cmgOperation8 in localValue2, localValue3, localValue4, localValue5 do
    cmgOperation9 = dataCollection7
    cmgOperation9 = cmgOperation9[stateFlag4]
    if cmgOperation9 then
      cmgOperation9 = dataCollection7
      cmgOperation9 = cmgOperation9[stateFlag4]
      cmgOperation10 = cmgOperation8.gangOwner
      cmgOperation9.gangOwner = cmgOperation10
      cmgOperation9 = dataCollection7
      cmgOperation9 = cmgOperation9[stateFlag4]
      cmgOperation10 = cmgOperation8.ownership
      cmgOperation9.owned = cmgOperation10
      cmgOperation9 = dataCollection7
      cmgOperation9 = cmgOperation9[stateFlag4]
      cmgOperation9 = cmgOperation9.locationName
      cmgOperation10 = cmgOperation9 or cmgOperation10
      if cmgOperation9 then
        cmgOperation10 = cmgOperation.locations
        cmgOperation10 = cmgOperation10[cmgOperation9]
      end
      text6 = dataCollection2
      text6 = text6[stateFlag4]
      if text6 then
        if cmgOperation10 then
          text6 = cmgOperation10.moneyTurf
          if text6 then
            goto continueAtStep40
          end
        end
        text6 = dataCollection2
        text6 = text6[stateFlag4]
        workingValue = cmgOperation8.commission
        if not workingValue then
          workingValue = 0
        end
        text6.commissionRate = workingValue
      end
    end
    ::continueAtStep40::
  end
  localValue2 = TriggerEvent
  localValue3 = "e394af4876"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e394af4876".
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9971176c5".
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = AddEventHandler
cmgOperation5 = "5afc35de9e"
-- Beginner: this function runs when client event "5afc35de9e" fires.

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue6(localValue1, localValue2, localValue3, localValue4, localValue5)
  local stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2
  stateFlag4 = pairs
  cmgOperation8 = dataCollection2
  stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10 = stateFlag4(cmgOperation8)
  for text6, workingValue in stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10 do
    nameValue = workingValue.locationName
    if "heroin" == nameValue then
      workingValue2 = localValue1 or workingValue2
      if not localValue1 then
        workingValue2 = 0
      end
      workingValue.commissionRate = workingValue2
    elseif "large_arms" == nameValue then
      workingValue2 = localValue2 or workingValue2
      if not localValue2 then
        workingValue2 = 0
      end
      workingValue.commissionRate = workingValue2
    elseif "lsd_north" == nameValue then
      workingValue2 = localValue3 or workingValue2
      if not localValue3 then
        workingValue2 = 0
      end
      workingValue.commissionRate = workingValue2
    elseif "lsd_south" == nameValue then
      workingValue2 = localValue4 or workingValue2
      if not localValue4 then
        workingValue2 = 0
      end
      workingValue.commissionRate = workingValue2
    elseif "black_market" == nameValue then
      workingValue2 = localValue5 or workingValue2
      if not localValue5 then
        workingValue2 = 0
      end
      workingValue.commissionRate = workingValue2
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "5afc35de9e".
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "36a11b5878"
-- Beginner: this function handles network event "36a11b5878".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = dataCollection7
  localValue3 = localValue3[localValue1]
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue3.profit = localValue4
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "36a11b5878".
cmgOperation4(cmgOperation5, workingValue6)
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2, nameValue2
  localValue1 = {}
  localValue2 = ipairs
  localValue3 = dataCollection7
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for stateFlag4, cmgOperation8 in localValue2, localValue3, localValue4, localValue5 do
    cmgOperation9 = cmgOperation.locations
    cmgOperation10 = cmgOperation8.locationName
    cmgOperation9 = cmgOperation9[cmgOperation10]
    if cmgOperation9 then
      cmgOperation10 = cmgOperation9.name
      if cmgOperation10 then
        goto continueAtStep16
      end
    end
    cmgOperation10 = cmgOperation8.locationName
    ::continueAtStep16::
    text6 = cmgOperation8.gangOwner
    if not text6 or "N/A" == text6 then
      text6 = ""
    end
    workingValue = #localValue1
    workingValue = workingValue + 1
    nameValue = {}
    nameValue.turfType = "capture"
    nameValue.name = cmgOperation10
    nameValue.ownedByGangName = text6
    workingValue2 = cmgOperation8.owned
    workingValue2 = true == workingValue2
    nameValue.ownedByUs = workingValue2
    nameValue.ourStreetCred = 0
    nameValue.topGangStreetCred = 0
    nameValue.topGangName = ""
    workingValue2 = math
    workingValue2 = workingValue2.floor
    nameValue2 = cmgOperation8.profit
    if not nameValue2 then
      nameValue2 = 0
    end
    workingValue2 = workingValue2(nameValue2)
    nameValue.captureProfit = workingValue2
    workingValue2 = cmgOperation9 or workingValue2
    if cmgOperation9 then
      workingValue2 = cmgOperation9.moneyTurf
      workingValue2 = true == workingValue2
    end
    nameValue.moneyTurf = workingValue2
    if cmgOperation9 then
      workingValue2 = cmgOperation9.payoutAmount
      if workingValue2 then
        goto continueAtStep61
      end
    end
    workingValue2 = 0
    ::continueAtStep61::
    nameValue.payoutAmount = workingValue2
    localValue1[workingValue] = nameValue
  end
  return localValue1
end
cmgOperation4.getDrugTurfsUiPayload = cmgOperation5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = ipairs
  localValue4 = dataCollection
  localValue3, localValue4, localValue5, stateFlag4 = localValue3(localValue4)
  for cmgOperation8, cmgOperation9 in localValue3, localValue4, localValue5, stateFlag4 do
    cmgOperation10 = cmgOperation9.position
    cmgOperation10 = localValue1 - cmgOperation10
    cmgOperation10 = #cmgOperation10
    text6 = cmgOperation9.distance
    if cmgOperation10 < text6 then
      cmgOperation10 = dataCollection7
      cmgOperation10 = cmgOperation10[cmgOperation8]
      text6 = cmgOperation10 or text6
      if cmgOperation10 then
        text6 = cmgOperation.locations
        workingValue = cmgOperation10.locationName
        text6 = text6[workingValue]
      end
      workingValue = IsPedInAnyVehicle
      nameValue = localValue2
      workingValue2 = false
      workingValue = workingValue(nameValue, workingValue2)
      if workingValue and text6 then
        workingValue = text6.moneyTurf
        if workingValue then
          workingValue = false
          return workingValue
        end
      end
      workingValue = true
      return workingValue
    end
  end
  localValue3 = false
  return localValue3
end
cmgOperation4.isPlayerInTurf = cmgOperation5
cmgOperation4 = Citizen
cmgOperation4 = cmgOperation4.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2, nameValue2, number6, number8, number10, number11, number12, dataCollection3, stateFlag, stateFlag2
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, stateFlag4 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation8 = tCMG
    cmgOperation8 = cmgOperation8.addMarker
    cmgOperation9 = stateFlag4.position
    cmgOperation9 = cmgOperation9.x
    cmgOperation10 = stateFlag4.position
    cmgOperation10 = cmgOperation10.y
    text6 = stateFlag4.position
    text6 = text6.z
    workingValue = 0.7
    nameValue = 0.7
    workingValue2 = 0.5
    nameValue2 = 200
    number6 = 50
    number8 = 0
    number10 = 200
    number11 = 50
    number12 = 24
    dataCollection3 = false
    stateFlag = false
    stateFlag2 = true
    -- Beginner: Create a world marker.
    cmgOperation8(cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2, nameValue2, number6, number8, number10, number11, number12, dataCollection3, stateFlag, stateFlag2)
  end
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, stateFlag4 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation8 = tCMG
    cmgOperation8 = cmgOperation8.addMarker
    cmgOperation9 = stateFlag4.position
    cmgOperation9 = cmgOperation9.x
    cmgOperation10 = stateFlag4.position
    cmgOperation10 = cmgOperation10.y
    text6 = stateFlag4.position
    text6 = text6.z
    workingValue = 0.7
    nameValue = 0.7
    workingValue2 = 0.5
    nameValue2 = 0
    number6 = 50
    number8 = 200
    number10 = 200
    number11 = 50
    number12 = 30
    dataCollection3 = false
    stateFlag = false
    stateFlag2 = true
    cmgOperation8(cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2, nameValue2, number6, number8, number10, number11, number12, dataCollection3, stateFlag, stateFlag2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation4(cmgOperation5)
cmgOperation4 = -1
cmgOperation5 = GetGameTimer
-- Beginner: result below is gameTimeMs.
cmgOperation5 = cmgOperation5()

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.GetRageInputText
  localValue3 = "Enter new commission rate(0-"
  localValue4 = tostring
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  localValue5 = "%) (Only enter a number, no %): "
  localValue3 = localValue3 .. localValue4 .. localValue5
  localValue4 = "10"
  return localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7, number9

    -- === HELPER FUNCTION: localValue12(localValue13) ===
    function localValue12(localValue13)
      local workingValue5, workingValue12, number13, text5
      workingValue5 = RequestScaleformMovie
      workingValue12 = localValue13
      -- Beginner: result below is scaleformHandle.
      workingValue5 = workingValue5(workingValue12)
      while true do
        workingValue12 = HasScaleformMovieLoaded
        number13 = workingValue5
        workingValue12 = workingValue12(number13)
        if workingValue12 then
          break
        end
        workingValue12 = Citizen
        workingValue12 = workingValue12.Wait
        number13 = 0
        workingValue12(number13)
      end
      workingValue12 = BeginScaleformMovieMethod
      number13 = workingValue5
      text5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      workingValue12(number13, text5)
      workingValue12 = _ENV
      number13 = "ScaleformMovieMethodAddParamTextureNameString"
      workingValue12 = workingValue12[number13]
      number13 = "~g~Press E to capture this turf!"
      workingValue12(number13)
      workingValue12 = EndScaleformMovieMethod
      workingValue12()
      return workingValue5
    end
    Initialize = localValue12
    localValue12 = Initialize
    localValue22 = "mp_big_message_freemode"
    localValue12 = localValue12(localValue22)
    while true do
      localValue22 = cmgOperation4
      if -1 == localValue22 then
        break
      end
      localValue22 = 0.5
      localValue32 = 0.35
      localValue42 = 1.0
      text4 = localValue42
      waitCall = DrawScaleformMovie
      number14 = localValue12
      stateFlag6 = localValue22
      number17 = localValue32
      number19 = localValue42
      number2 = text4
      number3 = 0
      number4 = 0
      number5 = 0
      number7 = 0
      number9 = 0
      waitCall(number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7, number9)
      waitCall = Wait
      number14 = 0
      waitCall(number14)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end
tableHelper = AddEventHandler
cmgOperation6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1, localValue2) ===
function dataCollection4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2, nameValue2, number6, number8, number10, number11, number12, dataCollection3, stateFlag, stateFlag2, workingValue8, workingValue9, dataCollection5, workingValue11
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3(localValue12) ===
    function localValue3(localValue12)
      local localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6
      localValue22 = PlaySound
      localValue32 = -1
      localValue42 = "Hit"
      text4 = "RESPAWN_SOUNDSET"
      waitCall = false
      number14 = 0
      stateFlag6 = true
      localValue22(localValue32, localValue42, text4, waitCall, number14, stateFlag6)
      localValue22 = workingValue7
      localValue22()
      localValue22 = localValue12.turfId
      cmgOperation4 = localValue22
    end

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local localValue12, localValue22
      localValue12 = -1
      cmgOperation4 = localValue12
    end

    -- === HELPER FUNCTION: localValue5(localValue12) ===
    function localValue5(localValue12)
      local localValue22, localValue32, localValue42
      localValue22 = IsControlJustPressed
      localValue32 = 1
      localValue42 = 51
      localValue22 = localValue22(localValue32, localValue42)
      if localValue22 then
        localValue22 = IsPedInAnyVehicle
        localValue32 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue32 = localValue32()
        localValue42 = false
        localValue22 = localValue22(localValue32, localValue42)
        if localValue22 then
          localValue22 = notify
          localValue32 = "~r~You're in a vehicle so you can't take this turf."
          -- Beginner: Show a notification to the player.
          localValue22(localValue32)
          localValue22 = Wait
          localValue32 = 500
          localValue22(localValue32)
          return
        end
        localValue22 = CMG
        localValue22 = localValue22.isInGang
        localValue22 = localValue22()
        if not localValue22 then
          localValue22 = notify
          localValue32 = "~r~You need to be in a gang to capture a turf!"
          -- Beginner: Show a notification to the player.
          localValue22(localValue32)
        else
          localValue22 = cmgOperation2
          localValue32 = GetSelectedPedWeapon
          localValue42 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue42 = localValue42()
          localValue32, localValue42 = localValue32(localValue42)
          localValue22 = localValue22(localValue32, localValue42)
          if not localValue22 then
            localValue22 = notify
            localValue32 = "~r~You need a proper weapon to capture a turf!"
            localValue22(localValue32)
          else
            localValue22 = CMG
            localValue22 = localValue22.isPlayingEmote
            localValue22 = localValue22()
            if localValue22 then
              localValue22 = notify
              localValue32 = "~r~You cannot capture a turf while using an emote!"
              -- Beginner: Show a notification to the player.
              localValue22(localValue32)
            else
              localValue22 = CMG
              localValue22 = localValue22.getPlayerBucket
              localValue22 = localValue22()
              if 0 ~= localValue22 then
                localValue22 = notify
                localValue32 = "~r~You cannot capture turfs outside the main world."
                localValue22(localValue32)
              else
                localValue22 = stateFlag5
                if not localValue22 then
                  localValue22 = TriggerServerEvent
                  localValue32 = "5b6e20cdd5"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b6e20cdd5".
                  localValue22(localValue32)
                  localValue22 = TriggerServerEvent
                  localValue32 = "e416519612"
                  localValue42 = localValue12.turfId
                  localValue22(localValue32, localValue42)
                end
              end
            end
          end
        end
        localValue22 = Wait
        localValue32 = 1000
        localValue22(localValue32)
      end
    end
    stateFlag4 = pairs
    cmgOperation8 = dataCollection
    stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10 = stateFlag4(cmgOperation8)
    for text6, workingValue in stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10 do
      nameValue = CMG
      nameValue = nameValue.createArea
      workingValue2 = "turf_"
      nameValue2 = text6
      workingValue2 = workingValue2 .. nameValue2
      nameValue2 = workingValue.position
      number6 = 1.5
      number8 = 6
      number10 = localValue3
      number11 = localValue4
      number12 = localValue5
      dataCollection3 = {}
      dataCollection3.turfId = text6
      -- Beginner: Create an interaction area around a world position.
      nameValue(workingValue2, nameValue2, number6, number8, number10, number11, number12, dataCollection3)
    end
    stateFlag4 = cmgOperation.locations
    stateFlag4 = stateFlag4.meth
    if stateFlag4 then
      cmgOperation8 = stateFlag4.turfRadius
      cmgOperation8 = cmgOperation8 * 2
      cmgOperation9 = CMG
      cmgOperation9 = cmgOperation9.createArea
      cmgOperation10 = "turf_meth_audio"
      text6 = stateFlag4.turfCoords
      workingValue = cmgOperation8
      nameValue = cmgOperation8

      -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
      function workingValue2()
        local localValue12, localValue22
        localValue12 = StartAudioScene
        localValue22 = "CHARACTER_CHANGE_IN_SKY_SCENE"
        localValue12(localValue22)
      end

      -- === HELPER FUNCTION: nameValue2() ===
      function nameValue2()
        local localValue12, localValue22
        localValue12 = StopAudioScene
        localValue22 = "CHARACTER_CHANGE_IN_SKY_SCENE"
        localValue12(localValue22)
      end

      -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
      function number6()
        local localValue12, localValue22
      end
      number8 = {}
      -- Beginner: Create an interaction area around a world position.
      cmgOperation9(cmgOperation10, text6, workingValue, nameValue, workingValue2, nameValue2, number6, number8)
    end

    -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue12) ===
    function cmgOperation8(localValue12)
      local localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6
      localValue22 = PlaySound
      localValue32 = -1
      localValue42 = "Hit"
      text4 = "RESPAWN_SOUNDSET"
      waitCall = false
      number14 = 0
      stateFlag6 = true
      localValue22(localValue32, localValue42, text4, waitCall, number14, stateFlag6)
      localValue32 = localValue12.turfId
      localValue22 = dataCollection7
      localValue22 = localValue22[localValue32]
      localValue22 = localValue22.owned
      if localValue22 then
        localValue22 = CMG
        localValue22 = localValue22.setInGUI
        localValue32 = true
        localValue22(localValue32)
        localValue22 = CMG
        localValue22 = localValue22.setCursor
        localValue32 = 1
        localValue22(localValue32)
        localValue12.draw = true
      end
    end

    -- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: localValue12) ===
    function cmgOperation9(localValue12)
      local localValue22, localValue32
      localValue22 = CMG
      localValue22 = localValue22.setInGUI
      localValue32 = false
      localValue22(localValue32)
      localValue22 = CMG
      localValue22 = localValue22.setCursor
      localValue32 = 0
      localValue22(localValue32)
      localValue12.draw = false
    end

    -- === HELPER FUNCTION (decompiler name: cmgOperation10; parameters: localValue12) ===
    function cmgOperation10(localValue12)
      local localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7
      localValue22 = localValue12.draw
      if localValue22 then
        localValue22 = localValue12.locationName
        localValue32 = DrawRect
        localValue42 = 0.484
        text4 = 0.47
        waitCall = 0.185
        number14 = 0.206
        stateFlag6 = 0
        number17 = 0
        number19 = 0
        number2 = 150
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2)
        localValue32 = DrawRect
        localValue42 = 0.484
        text4 = 0.348
        waitCall = 0.185
        number14 = 0.036
        stateFlag6 = 0
        number17 = 0
        number19 = 0
        number2 = 150
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2)
        localValue32 = DrawRect
        localValue42 = 0.484
        text4 = 0.365
        waitCall = 0.185
        number14 = -0.002
        stateFlag6 = 255
        number17 = 17
        number19 = 23
        number2 = 150
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2)
        localValue32 = DrawAdvancedText
        localValue42 = 0.578
        text4 = 0.349
        waitCall = 0.005
        number14 = 0.0028
        stateFlag6 = 0.437
        number17 = "CMG Trader Manager"
        number19 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        number5 = 4
        number7 = 0
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7)
        localValue32 = DrawAdvancedText
        localValue42 = 0.578
        text4 = 0.414
        waitCall = 0.005
        number14 = 0.0028
        stateFlag6 = 0.318
        number17 = "a commission, you can set the commission rate here. Set it too high"
        number19 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        number5 = 4
        number7 = 0
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7)
        if "large_arms" == localValue22 then
          localValue32 = DrawAdvancedText
          localValue42 = 0.58
          text4 = 0.395
          waitCall = 0.005
          number14 = 0.0028
          stateFlag6 = 0.318
          number17 = "Everytime someone buys weapons at your owned gun dealer, you earn "
          number19 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          number5 = 4
          number7 = 0
          localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7)
        else
          localValue32 = DrawAdvancedText
          localValue42 = 0.58
          text4 = 0.395
          waitCall = 0.005
          number14 = 0.0028
          stateFlag6 = 0.318
          number17 = "Everytime someone sells drugs at your owned trader, you earn "
          number19 = 255
          number2 = 255
          number3 = 255
          number4 = 255
          number5 = 4
          number7 = 0
          localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7)
        end
        localValue32 = DrawAdvancedText
        localValue42 = 0.586
        text4 = 0.432
        waitCall = 0.005
        number14 = 0.0028
        stateFlag6 = 0.318
        number17 = "and your turf may come under attack a lot, so be prepared."
        number19 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        number5 = 4
        number7 = 0
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7)
        localValue32 = DrawAdvancedText
        localValue42 = 0.568
        text4 = 0.476
        waitCall = 0.005
        number14 = 0.0028
        stateFlag6 = 0.4
        number17 = "Current Commission Rate: "
        number19 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        number5 = 4
        number7 = 0
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7)
        localValue32 = DrawAdvancedText
        localValue42 = 0.622
        text4 = 0.476
        waitCall = 0.005
        number14 = 0.0028
        stateFlag6 = 0.4
        number17 = tostring
        number2 = localValue12.turfId
        number19 = dataCollection2
        number19 = number19[number2]
        if number19 then
          number2 = localValue12.turfId
          number19 = dataCollection2
          number19 = number19[number2]
          number19 = number19.commissionRate
          if number19 then
            goto continueAtStep141
          end
        end
        number19 = 0
        ::continueAtStep141::
        number17 = number17(number19)
        number19 = 255
        number2 = 255
        number3 = 255
        number4 = 255
        number5 = 4
        number7 = 0
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7)
        localValue32 = DrawRect
        localValue42 = 0.482
        text4 = 0.526
        waitCall = 0.065
        number14 = 0.046
        stateFlag6 = number15
        number17 = number18
        number19 = number16
        number2 = 150
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2)
        localValue32 = DrawAdvancedText
        localValue42 = 0.578
        text4 = 0.53
        waitCall = 0.005
        number14 = 0.0028
        stateFlag6 = 0.426
        number17 = "Set New Rate"
        number19 = 255
        number2 = 46
        number3 = 71
        number4 = 255
        number5 = 4
        number7 = 0
        localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4, number5, number7)
        localValue32 = CursorInArea
        localValue42 = 0.44
        text4 = 0.51
        waitCall = 0.5
        number14 = 0.55
        localValue32 = localValue32(localValue42, text4, waitCall, number14)
        if localValue32 then
          localValue32 = 0
          number15 = localValue32
          localValue32 = 165
          number18 = localValue32
          localValue32 = 71
          number16 = localValue32
          localValue32 = IsControlJustPressed
          localValue42 = 1
          text4 = 329
          localValue32 = localValue32(localValue42, text4)
          if not localValue32 then
            localValue32 = IsDisabledControlJustPressed
            localValue42 = 1
            text4 = 329
            localValue32 = localValue32(localValue42, text4)
          end
          if localValue32 then
            localValue32 = PlaySound
            localValue42 = -1
            text4 = "SELECT"
            waitCall = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            number14 = false
            stateFlag6 = 0
            number17 = true
            localValue32(localValue42, text4, waitCall, number14, stateFlag6, number17)
            localValue32 = 25
            if "large_arms" == localValue22 or "black_market" == localValue22 then
              localValue42 = CMG
              text4 = "getClientGangPublicTurfCommissionBonusPercent"
              localValue42 = localValue42[text4]
              localValue42 = localValue42()
              localValue32 = 10 + localValue42
            end
            localValue42 = workingValue6
            text4 = localValue32
            localValue42 = localValue42(text4)
            if nil ~= localValue42 then
              text4 = tonumber
              waitCall = localValue42
              text4 = text4(waitCall)
              if text4 then
                text4 = math
                text4 = text4.floor
                waitCall = tonumber
                number14 = localValue42
                waitCall = waitCall(number14)
                if not waitCall then
                  waitCall = 0
                end
                text4 = text4(waitCall)
                if localValue32 >= text4 and text4 >= 0 then
                  waitCall = GetGameTimer
                  -- Beginner: result below is gameTimeMs.
                  waitCall = waitCall()
                  number14 = cmgOperation5
                  number14 = number14 + 30000
                  if waitCall > number14 then
                    waitCall = GetGameTimer
                    -- Beginner: result below is gameTimeMs.
                    waitCall = waitCall()
                    cmgOperation5 = waitCall
                    number14 = localValue12.turfId
                    waitCall = dataCollection2
                    waitCall = waitCall[number14]
                    if waitCall then
                      number14 = localValue12.turfId
                      waitCall = dataCollection2
                      waitCall = waitCall[number14]
                      waitCall.commissionRate = text4
                    end
                    if "heroin" == localValue22 then
                      waitCall = TriggerServerEvent
                      number14 = "23c2933768"
                      stateFlag6 = text4
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "23c2933768".
                      waitCall(number14, stateFlag6)
                    elseif "large_arms" == localValue22 then
                      waitCall = TriggerServerEvent
                      number14 = "d56d15f766"
                      stateFlag6 = text4
                      waitCall(number14, stateFlag6)
                    elseif "lsd_north" == localValue22 then
                      waitCall = TriggerServerEvent
                      number14 = "c0fc226c26"
                      stateFlag6 = text4
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c0fc226c26".
                      waitCall(number14, stateFlag6)
                    elseif "lsd_south" == localValue22 then
                      waitCall = TriggerServerEvent
                      number14 = "f6678085a0"
                      stateFlag6 = text4
                      waitCall(number14, stateFlag6)
                    elseif "black_market" == localValue22 then
                      waitCall = TriggerServerEvent
                      number14 = "2531ee9dbf"
                      stateFlag6 = text4
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2531ee9dbf".
                      waitCall(number14, stateFlag6)
                    end
                  else
                    waitCall = notify
                    number14 = "~r~Rate limit, please wait 30s to change the commission."
                    -- Beginner: Show a notification to the player.
                    waitCall(number14)
                  end
                end
              end
            end
          end
        else
          localValue32 = 0
          number15 = localValue32
          localValue32 = 0
          number18 = localValue32
          localValue32 = 0
          number16 = localValue32
        end
      end
    end
    text6 = pairs
    workingValue = dataCollection2
    text6, workingValue, nameValue, workingValue2 = text6(workingValue)
    for nameValue2, number6 in text6, workingValue, nameValue, workingValue2 do
      number8 = cmgOperation.locations
      number10 = number6.locationName
      number8 = number8[number10]
      if number8 then
        number10 = number8.moneyTurf
        if number10 then
          goto continueAtStep80
        end
      end
      number10 = CMG
      number10 = number10.createArea
      number11 = "turfmanager_"
      number12 = nameValue2
      number11 = number11 .. number12
      number12 = number6.position
      dataCollection3 = 1.5
      stateFlag = 6
      stateFlag2 = cmgOperation8
      workingValue8 = cmgOperation9
      workingValue9 = cmgOperation10
      dataCollection5 = {}
      workingValue11 = number6.locationName
      dataCollection5.locationName = workingValue11
      dataCollection5.turfId = nameValue2
      dataCollection5.draw = false
      -- Beginner: Create an interaction area around a world position.
      number10(number11, number12, dataCollection3, stateFlag, stateFlag2, workingValue8, workingValue9, dataCollection5)
      ::continueAtStep80::
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
tableHelper(cmgOperation6, dataCollection4)

-- === HELPER FUNCTION: tableHelper(localValue1, localValue2) ===
function tableHelper(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = dataCollection7
  localValue3 = localValue3[localValue1]
  localValue3.owned = true
  localValue3 = TriggerServerEvent
  localValue4 = "b7983f45aa"
  localValue5 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b7983f45aa".
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3
  localValue1 = TriggerServerEvent
  localValue2 = "2ca4f37fe2"
  localValue3 = text2
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: none) ===
function dataCollection4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag4, cmgOperation8
  localValue1 = cmgOperation3.quickCapturing
  if localValue1 then
    localValue1 = 10
    if localValue1 then
      goto continueAtStep8
    end
  end
  localValue1 = cmgOperation.timeToTakeTurfSecs
  ::continueAtStep8::
  localValue2 = CMG
  localValue2 = localValue2.getGangPublicCaptureTimeReductionPercent
  localValue2 = localValue2()
  localValue3 = math
  localValue3 = localValue3.max
  localValue4 = 30
  localValue5 = math
  localValue5 = localValue5.floor
  stateFlag4 = localValue2 / 100
  cmgOperation8 = 1
  stateFlag4 = cmgOperation8 - stateFlag4
  stateFlag4 = localValue1 * stateFlag4
  localValue5, stateFlag4, cmgOperation8 = localValue5(stateFlag4)
  return localValue3(localValue4, localValue5, stateFlag4, cmgOperation8)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2, localValue3) ===
function workingValue10(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stateFlag4
  localValue4 = dataCollection6
  localValue4 = localValue4[localValue2]
  if localValue4 then
    localValue4 = true
    stateFlag5 = localValue4
    localValue4 = dataCollection4
    localValue4 = localValue4()
    localValue5 = Citizen
    localValue5 = localValue5.CreateThread

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22, localValue32
      while true do
        localValue12 = localValue4
        if 0 == localValue12 then
          break
        end
        localValue12 = stateFlag5
        if not localValue12 then
          break
        end
        localValue22 = text2
        localValue12 = dataCollection8
        localValue12 = localValue12[localValue22]
        if not localValue12 then
          localValue12 = localValue4
          localValue12 = localValue12 - 1
          localValue4 = localValue12
        end
        localValue12 = Wait
        localValue22 = 1000
        localValue12(localValue22)
      end
      localValue12 = stateFlag5
      if localValue12 then
        localValue12 = tableHelper
        localValue22 = localValue1
        localValue32 = localValue2
        -- Beginner: Register a client-side event handler.
        localValue12(localValue22, localValue32)
      end
      localValue12 = false
      stateFlag5 = localValue12
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue5(stateFlag4)
    localValue5 = Citizen
    localValue5 = localValue5.CreateThread

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3
      localValue12 = tCMG
      localValue12 = localValue12.addMarker
      localValue22 = localValue3.x
      localValue32 = localValue3.y
      localValue42 = localValue3.z
      localValue42 = localValue42 - 10
      text4 = 75
      waitCall = 75
      number14 = 18
      stateFlag6 = 0
      number17 = 200
      number19 = 0
      number2 = 35
      number3 = 1000
      localValue12 = localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3)
      localValue22 = AddBlipForRadius
      localValue32 = localValue3.x
      localValue42 = localValue3.y
      text4 = localValue3.z
      waitCall = 37.5
      -- Beginner: result below is blipHandle.
      localValue22 = localValue22(localValue32, localValue42, text4, waitCall)
      localValue32 = SetBlipColour
      localValue42 = localValue22
      text4 = 69
      localValue32(localValue42, text4)
      localValue32 = SetBlipAlpha
      localValue42 = localValue22
      text4 = 50
      localValue32(localValue42, text4)
      while true do
        localValue32 = stateFlag5
        if not localValue32 then
          break
        end
        localValue32 = workingValue3
        localValue42 = CMG
        localValue42 = localValue42.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue42 = localValue42()
        text4 = localValue3
        localValue32 = localValue32(localValue42, text4)
        if localValue32 then
          localValue42 = notify
          text4 = localValue32
          -- Beginner: Show a notification to the player.
          localValue42(text4)
          localValue42 = false
          stateFlag5 = localValue42
          localValue42 = TriggerServerEvent
          text4 = "539b6c4260"
          waitCall = localValue2
          number14 = "Attackers"
          stateFlag6 = true
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "539b6c4260".
          localValue42(text4, waitCall, number14, stateFlag6)
        end
        localValue42 = Wait
        text4 = 1000
        localValue42(text4)
      end
      localValue32 = tCMG
      localValue32 = localValue32.removeMarker
      localValue42 = localValue12
      localValue32(localValue42)
      localValue32 = RemoveBlip
      localValue42 = localValue22
      localValue32(localValue42)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue5(stateFlag4)
    localValue5 = Citizen
    localValue5 = localValue5.CreateThread

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4
      while true do
        localValue12 = stateFlag5
        if not localValue12 then
          break
        end
        localValue22 = localValue2
        localValue12 = dataCollection8
        localValue12 = localValue12[localValue22]
        if not localValue12 then
          localValue12 = DrawAdvancedText
          localValue22 = 0.931
          localValue32 = 0.915
          localValue42 = 0.005
          text4 = 0.0028
          waitCall = 0.49
          number14 = "Time remaining till capture: "
          stateFlag6 = localValue4
          number17 = " seconds!"
          number14 = number14 .. stateFlag6 .. number17
          stateFlag6 = 23
          number17 = 255
          number19 = 141
          number2 = 255
          number3 = 7
          number4 = 0
          localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4)
        else
          localValue12 = DrawAdvancedText
          localValue22 = 0.931
          localValue32 = 0.886
          localValue42 = 0.005
          text4 = 0.0028
          waitCall = 0.49
          number14 = "Capture blocked, kill enemies to continue timer."
          stateFlag6 = 255
          number17 = 23
          number19 = 141
          number2 = 255
          number3 = 7
          number4 = 0
          localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4)
        end
        localValue12 = Wait
        localValue22 = 0
        localValue12(localValue22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue5(stateFlag4)
  end
end
eventHandler = RegisterNetEvent
eventHandler2 = "4d614a25fe"
-- Beginner: this function handles network event "4d614a25fe".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1, localValue2) ===
function eventHandler3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stateFlag4
  localValue3 = true
  stateFlag5 = localValue3
  text2 = localValue2
  localValue3 = workingValue10
  localValue4 = localValue1
  localValue5 = localValue2
  stateFlag4 = dataCollection
  stateFlag4 = stateFlag4[localValue1]
  stateFlag4 = stateFlag4.position
  localValue3(localValue4, localValue5, stateFlag4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4d614a25fe".
eventHandler(eventHandler2, eventHandler3)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2, localValue3) ===
function eventHandler(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stateFlag4, cmgOperation8
  localValue4 = dataCollection7
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4.owned
  if localValue4 then
    localValue4 = notify
    localValue5 = "~r~You already own this turf!"
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  else
    localValue4 = TriggerServerEvent
    localValue5 = "20f19e1daa"
    stateFlag4 = localValue1
    cmgOperation8 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "20f19e1daa".
    localValue4(localValue5, stateFlag4, cmgOperation8)
    localValue4 = dataCollection4
    localValue4 = localValue4()
    while true do
      localValue5 = dataCollection6
      localValue5 = localValue5[localValue3]
      if nil ~= localValue5 then
        break
      end
      localValue5 = Wait
      stateFlag4 = 0
      localValue5(stateFlag4)
    end
    localValue5 = dataCollection6
    localValue5 = localValue5[localValue3]
    if localValue5 then
      localValue5 = true
      stateFlag5 = localValue5
      localValue5 = Citizen
      localValue5 = localValue5.CreateThread

      -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
      function stateFlag4()
        local localValue12, localValue22, localValue32
        while true do
          localValue12 = localValue4
          if 0 == localValue12 then
            break
          end
          localValue12 = stateFlag5
          if not localValue12 then
            break
          end
          localValue22 = localValue3
          localValue12 = dataCollection8
          localValue12 = localValue12[localValue22]
          if not localValue12 then
            localValue12 = localValue4
            localValue12 = localValue12 - 1
            localValue4 = localValue12
          end
          localValue12 = Wait
          localValue22 = 1000
          localValue12(localValue22)
        end
        localValue12 = stateFlag5
        if localValue12 then
          localValue12 = tableHelper
          localValue22 = localValue1
          localValue32 = localValue3
          -- Beginner: Register a client-side event handler.
          localValue12(localValue22, localValue32)
        end
        localValue12 = false
        stateFlag5 = localValue12
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue5(stateFlag4)
      localValue5 = Citizen
      localValue5 = localValue5.CreateThread

      -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
      function stateFlag4()
        local localValue12, localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3
        localValue12 = tCMG
        localValue12 = localValue12.addMarker
        localValue22 = localValue2.x
        localValue32 = localValue2.y
        localValue42 = localValue2.z
        localValue42 = localValue42 - 10
        text4 = 75
        waitCall = 75
        number14 = 18
        stateFlag6 = 0
        number17 = 200
        number19 = 0
        number2 = 35
        number3 = 1000
        localValue12 = localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3)
        localValue22 = AddBlipForRadius
        localValue32 = localValue2.x
        localValue42 = localValue2.y
        text4 = localValue2.z
        waitCall = 37.5
        -- Beginner: result below is blipHandle.
        localValue22 = localValue22(localValue32, localValue42, text4, waitCall)
        localValue32 = SetBlipColour
        localValue42 = localValue22
        text4 = 69
        localValue32(localValue42, text4)
        localValue32 = SetBlipAlpha
        localValue42 = localValue22
        text4 = 50
        localValue32(localValue42, text4)
        while true do
          localValue32 = stateFlag5
          if not localValue32 then
            break
          end
          localValue32 = workingValue3
          localValue42 = CMG
          localValue42 = localValue42.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          localValue42 = localValue42()
          text4 = localValue2
          localValue32 = localValue32(localValue42, text4)
          if localValue32 then
            localValue42 = notify
            text4 = localValue32
            -- Beginner: Show a notification to the player.
            localValue42(text4)
            localValue42 = false
            stateFlag5 = localValue42
            localValue42 = TriggerServerEvent
            text4 = "539b6c4260"
            waitCall = localValue3
            number14 = "Attackers"
            stateFlag6 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "539b6c4260".
            localValue42(text4, waitCall, number14, stateFlag6)
          end
          localValue42 = Wait
          text4 = 2000
          localValue42(text4)
        end
        localValue32 = tCMG
        localValue32 = localValue32.removeMarker
        localValue42 = localValue12
        localValue32(localValue42)
        localValue32 = RemoveBlip
        localValue42 = localValue22
        localValue32(localValue42)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue5(stateFlag4)
      localValue5 = Citizen
      localValue5 = localValue5.CreateThread

      -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
      function stateFlag4()
        local localValue12, localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4
        while true do
          localValue12 = stateFlag5
          if not localValue12 then
            break
          end
          localValue22 = localValue3
          localValue12 = dataCollection8
          localValue12 = localValue12[localValue22]
          if not localValue12 then
            localValue12 = DrawAdvancedText
            localValue22 = 0.931
            localValue32 = 0.915
            localValue42 = 0.005
            text4 = 0.0028
            waitCall = 0.49
            number14 = "Time remaining till capture: "
            stateFlag6 = localValue4
            number17 = " seconds!"
            number14 = number14 .. stateFlag6 .. number17
            stateFlag6 = 23
            number17 = 255
            number19 = 141
            number2 = 255
            number3 = 7
            number4 = 0
            localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4)
          else
            localValue12 = DrawAdvancedText
            localValue22 = 0.931
            localValue32 = 0.886
            localValue42 = 0.005
            text4 = 0.0028
            waitCall = 0.49
            number14 = "Capture blocked, kill enemies to continue timer."
            stateFlag6 = 255
            number17 = 23
            number19 = 141
            number2 = 255
            number3 = 7
            number4 = 0
            localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4)
          end
          localValue12 = Wait
          localValue22 = 0
          localValue12(localValue22)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue5(stateFlag4)
    end
  end
end
eventHandler2 = RegisterNetEvent
eventHandler3 = "d11bd04ad0"
-- Beginner: this function handles network event "d11bd04ad0".

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation7(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stateFlag4, cmgOperation8
  if not localValue2 then
    localValue4 = eventHandler
    localValue5 = localValue1
    stateFlag4 = dataCollection
    stateFlag4 = stateFlag4[localValue1]
    stateFlag4 = stateFlag4.position
    cmgOperation8 = localValue3
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue4(localValue5, stateFlag4, cmgOperation8)
  else
    localValue4 = notify
    localValue5 = "~r~Turf already owned!"
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d11bd04ad0".
eventHandler2(eventHandler3, cmgOperation7)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function eventHandler2(localValue1, localValue2, localValue3, localValue4, localValue5)
  local stateFlag4, cmgOperation8, cmgOperation9
  stateFlag4 = dataCollection4
  stateFlag4 = stateFlag4()
  cmgOperation8 = Citizen
  cmgOperation8 = cmgOperation8.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
  function cmgOperation9()
    local localValue12, localValue22
    while true do
      localValue12 = stateFlag4
      if 0 == localValue12 then
        break
      end
      localValue12 = stateFlag3
      if not localValue12 then
        break
      end
      localValue22 = localValue2
      localValue12 = dataCollection8
      localValue12 = localValue12[localValue22]
      if not localValue12 then
        localValue12 = stateFlag4
        localValue12 = localValue12 - 1
        stateFlag4 = localValue12
      end
      localValue12 = Wait
      localValue22 = 1000
      localValue12(localValue22)
    end
    localValue12 = cmgOperation6
    localValue12()
    localValue12 = false
    stateFlag3 = localValue12
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgOperation8(cmgOperation9)
  cmgOperation8 = Citizen
  cmgOperation8 = cmgOperation8.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
  function cmgOperation9()
    local localValue12, localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4
    while true do
      localValue12 = stateFlag3
      if not localValue12 then
        break
      end
      localValue22 = localValue2
      localValue12 = dataCollection8
      localValue12 = localValue12[localValue22]
      if not localValue12 then
        localValue12 = DrawAdvancedText
        localValue22 = 0.931
        localValue32 = 0.915
        localValue42 = 0.005
        text4 = 0.0028
        waitCall = 0.49
        number14 = "Time remaining till capture: "
        stateFlag6 = stateFlag4
        number17 = " seconds!"
        number14 = number14 .. stateFlag6 .. number17
        stateFlag6 = 23
        number17 = 255
        number19 = 141
        number2 = 255
        number3 = 7
        number4 = 0
        localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4)
      else
        localValue12 = DrawAdvancedText
        localValue22 = 0.931
        localValue32 = 0.886
        localValue42 = 0.005
        text4 = 0.0028
        waitCall = 0.49
        number14 = "Capture blocked, kill enemies to continue timer."
        stateFlag6 = 255
        number17 = 23
        number19 = 141
        number2 = 255
        number3 = 7
        number4 = 0
        localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3, number4)
      end
      localValue12 = Wait
      localValue22 = 0
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgOperation8(cmgOperation9)
  cmgOperation8 = Citizen
  cmgOperation8 = cmgOperation8.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
  function cmgOperation9()
    local localValue12, localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3
    localValue12 = tCMG
    localValue12 = localValue12.addMarker
    localValue22 = localValue3
    localValue32 = localValue4
    localValue42 = localValue5
    localValue42 = localValue42 - 10
    text4 = 75
    waitCall = 75
    number14 = 75
    stateFlag6 = 0
    number17 = 200
    number19 = 0
    number2 = 50
    number3 = 1000
    localValue12 = localValue12(localValue22, localValue32, localValue42, text4, waitCall, number14, stateFlag6, number17, number19, number2, number3)
    localValue22 = vector3
    localValue42 = localValue1
    localValue32 = dataCollection
    localValue32 = localValue32[localValue42]
    localValue32 = localValue32.position
    localValue32 = localValue32.x
    text4 = localValue1
    localValue42 = dataCollection
    localValue42 = localValue42[text4]
    localValue42 = localValue42.position
    localValue42 = localValue42.y
    waitCall = localValue1
    text4 = dataCollection
    text4 = text4[waitCall]
    text4 = text4.position
    text4 = text4.z
    localValue22 = localValue22(localValue32, localValue42, text4)
    while true do
      localValue32 = stateFlag3
      if not localValue32 then
        break
      end
      localValue32 = CMG
      localValue32 = localValue32.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue32 = localValue32()
      localValue42 = GetEntityHealth
      text4 = localValue32
      -- Beginner: result below is health.
      localValue42 = localValue42(text4)
      if localValue42 <= 102 then
        localValue42 = notify
        text4 = "~r~Turf defense failed, you died"
        -- Beginner: Show a notification to the player.
        localValue42(text4)
        localValue42 = false
        stateFlag3 = localValue42
        localValue42 = TriggerServerEvent
        text4 = "539b6c4260"
        waitCall = localValue2
        number14 = "Defenders"
        stateFlag6 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "539b6c4260".
        localValue42(text4, waitCall, number14, stateFlag6)
      else
        localValue42 = workingValue4
        text4 = localValue32
        waitCall = localValue22
        localValue42 = localValue42(text4, waitCall)
        if localValue42 then
          localValue42 = TriggerServerEvent
          text4 = "539b6c4260"
          waitCall = localValue2
          number14 = "Defenders"
          stateFlag6 = true
          localValue42(text4, waitCall, number14, stateFlag6)
        else
          localValue42 = TriggerServerEvent
          text4 = "539b6c4260"
          waitCall = localValue2
          number14 = "Defenders"
          stateFlag6 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "539b6c4260".
          localValue42(text4, waitCall, number14, stateFlag6)
        end
      end
      localValue42 = Wait
      text4 = 1000
      localValue42(text4)
    end
    localValue32 = tCMG
    localValue32 = localValue32.removeMarker
    localValue42 = localValue12
    localValue32(localValue42)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgOperation8(cmgOperation9)
end
eventHandler3 = RegisterNetEvent
cmgOperation7 = "75bfa7b124"
-- Beginner: this function handles network event "75bfa7b124".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stateFlag4, cmgOperation8, cmgOperation9, cmgOperation10, text6, workingValue, nameValue, workingValue2
  text2 = localValue2
  localValue3 = true
  stateFlag3 = localValue3
  localValue3 = pairs
  localValue4 = dataCollection
  localValue3, localValue4, localValue5, stateFlag4 = localValue3(localValue4)
  for cmgOperation8 in localValue3, localValue4, localValue5, stateFlag4 do
    if cmgOperation8 == localValue1 then
      cmgOperation9 = eventHandler2
      cmgOperation10 = cmgOperation8
      text6 = localValue2
      workingValue = dataCollection
      workingValue = workingValue[cmgOperation8]
      workingValue = workingValue.position
      workingValue = workingValue.x
      nameValue = dataCollection
      nameValue = nameValue[cmgOperation8]
      nameValue = nameValue.position
      nameValue = nameValue.y
      workingValue2 = dataCollection
      workingValue2 = workingValue2[cmgOperation8]
      workingValue2 = workingValue2.position
      workingValue2 = workingValue2.z
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      cmgOperation9(cmgOperation10, text6, workingValue, nameValue, workingValue2)
    end
  end
end
eventHandler3(cmgOperation7, text3)
eventHandler3 = RegisterNetEvent
cmgOperation7 = "d642fa2574"
-- Beginner: this function handles network event "d642fa2574".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection8
  localValue3[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d642fa2574".
eventHandler3(cmgOperation7, text3)
eventHandler3 = RegisterNetEvent
cmgOperation7 = "2ca4f37fe2"
-- Beginner: this function handles network event "2ca4f37fe2".

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2
  localValue1 = false
  stateFlag3 = localValue1
end
eventHandler3(cmgOperation7, text3)
eventHandler3 = false
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.registerDevMenuItems
text3 = "Turf"
-- Beginner: this function handles network event "2ca4f37fe2".

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag4
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Quick Turf Capturing"
  localValue3 = "Captures a turf in 10 seconds."
  localValue4 = cmgOperation3.quickCapturing
  localValue5 = {}

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32, localValue42) ===
  function stateFlag4(localValue12, localValue22, localValue32, localValue42)
    cmgOperation3.quickCapturing = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag4)
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Ignore Capture Cooldown"
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "Whether to globally ignore the capture cooldown of %s when capturing a turf."
  localValue5 = cmgOperation.captureCooldownSecs
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = cmgOperation3.ignoreCooldown
  localValue5 = {}

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32, localValue42) ===
  function stateFlag4(localValue12, localValue22, localValue32, localValue42)
    local text4, waitCall, number14
    text4 = eventHandler3
    if text4 ~= localValue42 then
      text4 = TriggerServerEvent
      waitCall = "b07e69e2b9"
      number14 = localValue42
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b07e69e2b9".
      text4(waitCall, number14)
      eventHandler3 = localValue42
    end
    cmgOperation3.ignoreCooldown = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag4)
end
cmgOperation7(text3, workingValue13)
