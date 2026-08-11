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
local cmgCall, textValue2, dataTable6, dataTable7, dataTable8, flag3, flag5, numberValue15, numberValue16, numberValue18, numberValue, dataTable, dataTable2, cmgCall2, workValue3, workValue4, cmgCall3, textValue, cmgCall4, cmgCall5, workValue6, workValue7, tableHelper, cmgCall6, dataTable4, workValue10, eventRegistration, eventRegistration2, eventRegistration3, cmgCall7, textValue3, workValue13
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue2 = "cfg/cfg_turf"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue2)
textValue2 = 40
dataTable6 = {}
dataTable7 = {}
dataTable8 = {}
flag3 = false
flag5 = false
numberValue15 = 0
numberValue16 = 0
numberValue18 = 0
numberValue = 10.0
dataTable = {}
dataTable2 = {}
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2
  arg1 = flag5
  if not arg1 then
    arg1 = flag3
  end
  return arg1
end
cmgCall2.isInTurfContest = workValue3

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3
  if -1569615261 == arg1 or 126349499 == arg1 then
    arg2 = false
    return arg2
  end
  arg2 = GetWeapontypeGroup
  arg3 = arg1
  arg2 = arg2(arg3)
  if -728555052 == arg2 or -1609580060 == arg2 or 1548507267 == arg2 then
    arg3 = false
    return arg3
  end
  arg3 = true
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4, arg5, flag4
  arg3 = GetEntityCoords
  arg4 = arg1
  arg5 = false
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, arg5)
  arg4 = arg3 - arg2
  arg4 = #arg4
  arg5 = 37.5
  if arg4 >= arg5 then
    arg4 = "~r~Turf capture cancelled, you got too far!"
    return arg4
  end
  arg4 = math
  arg4 = arg4.abs
  arg5 = arg3.z
  flag4 = arg2.z
  arg5 = arg5 - flag4
  arg4 = arg4(arg5)
  arg5 = numberValue
  if arg4 > arg5 then
    arg4 = "~r~Turf capture cancelled, you got too high!"
    return arg4
  end
  arg4 = IsPedInAnyVehicle
  arg5 = arg1
  flag4 = false
  arg4 = arg4(arg5, flag4)
  if arg4 then
    arg4 = "~r~Turf capture cancelled, exit your vehicle!"
    return arg4
  end
  arg4 = GetEntityHealth
  arg5 = arg1
  -- Beginner: result below is health.
  arg4 = arg4(arg5)
  if arg4 <= 102 then
    arg4 = "~r~Turf capture failed, you died"
    return arg4
  end
  arg4 = cmgCall2
  arg5 = GetSelectedPedWeapon
  flag4 = arg1
  arg5, flag4 = arg5(flag4)
  arg4 = arg4(arg5, flag4)
  if not arg4 then
    arg4 = "~r~Turf capture cancelled: you need a proper weapon to take a turf!"
    return arg4
  end
  arg4 = CMG
  arg4 = arg4.isPlayingEmote
  arg4 = arg4()
  if arg4 then
    arg4 = "~r~Turf capture cancelled: emotes cannot be used while capturing!"
    return arg4
  end
  arg4 = nil
  return arg4
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2) ===
function workValue4(arg1, arg2)
  local arg3, arg4, arg5, flag4
  arg3 = GetEntityCoords
  arg4 = arg1
  arg5 = false
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, arg5)
  arg4 = arg3 - arg2
  arg4 = #arg4
  arg5 = 37.5
  if arg4 >= arg5 then
    arg4 = false
    return arg4
  end
  arg4 = math
  arg4 = arg4.abs
  arg5 = arg3.z
  flag4 = arg2.z
  arg5 = arg5 - flag4
  arg4 = arg4(arg5)
  arg5 = numberValue
  if arg4 > arg5 then
    arg4 = false
    return arg4
  end
  arg4 = GetEntityHealth
  arg5 = arg1
  -- Beginner: result below is health.
  arg4 = arg4(arg5)
  if arg4 <= 102 then
    arg4 = false
    return arg4
  end
  arg4 = IsPedInAnyVehicle
  arg5 = arg1
  flag4 = false
  arg4 = arg4(arg5, flag4)
  if arg4 then
    arg4 = false
    return arg4
  end
  arg4 = cmgCall2
  arg5 = GetSelectedPedWeapon
  flag4 = arg1
  arg5, flag4 = arg5(flag4)
  arg4 = arg4(arg5, flag4)
  if not arg4 then
    arg4 = false
    return arg4
  end
  arg4 = CMG
  arg4 = arg4.isPlayingEmote
  arg4 = arg4()
  if arg4 then
    arg4 = false
    return arg4
  end
  arg4 = true
  return arg4
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.keySortedPairs
textValue = cmgCall.locations
cmgCall3, textValue, cmgCall4, cmgCall5 = cmgCall3(textValue)
for workValue6, workValue7 in cmgCall3, textValue, cmgCall4, cmgCall5 do
  tableHelper = table
  tableHelper = tableHelper.insert
  cmgCall6 = dataTable7
  dataTable4 = {}
  dataTable4.locationName = workValue6
  dataTable4.owned = false
  dataTable4.gangOwner = "N/A"
  dataTable4.commission = 0
  dataTable4.profit = 0
  tableHelper(cmgCall6, dataTable4)
  tableHelper = table
  tableHelper = tableHelper.insert
  cmgCall6 = dataTable
  dataTable4 = {}
  workValue10 = workValue7.turfCoords
  dataTable4.position = workValue10
  workValue10 = workValue7.turfRadius
  dataTable4.distance = workValue10
  tableHelper(cmgCall6, dataTable4)
  tableHelper = workValue7.moneyTurf
  if not tableHelper then
    tableHelper = #dataTable7
    cmgCall6 = {}
    cmgCall6.locationName = workValue6
    dataTable4 = workValue7.traderCoords
    cmgCall6.position = dataTable4
    cmgCall6.distance = 100
    cmgCall6.commissionRate = 0
    dataTable2[tableHelper] = cmgCall6
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerDevMenuState
textValue = "turf"
cmgCall4 = {}
cmgCall4.quickCapturing = false
cmgCall4.ignoreCooldown = false
cmgCall3 = cmgCall3(textValue, cmgCall4)
textValue = 0
cmgCall4 = RegisterNetEvent
cmgCall5 = "7caa981020"
-- Beginner: this function handles network event "7caa981020".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2
  textValue = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7caa981020".
cmgCall4(cmgCall5, workValue6)
cmgCall4 = CMG
-- Beginner: this function handles network event "7caa981020".

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2
  arg1 = textValue
  return arg1
end
cmgCall4.getNextMoneyTurfPayoutEpoch = cmgCall5
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1) ===
function cmgCall5(arg1)
  local arg2, arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10
  arg2 = pairs
  arg3 = dataTable7
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for flag4, cmgCall8 in arg2, arg3, arg4, arg5 do
    cmgCall9 = cmgCall8.locationName
    if cmgCall9 == arg1 then
      cmgCall9 = cmgCall8.gangOwner
      cmgCall10 = cmgCall8.profit
      return cmgCall9, cmgCall10
    end
  end
  arg2 = error
  arg3 = string
  arg3 = arg3.format
  arg4 = "Invalid turf location provided, %s does not exist."
  arg5 = arg1
  arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10 = arg3(arg4, arg5)
  arg2(arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10)
end
cmgCall4.getTurfOwnerAndProfit = cmgCall5
cmgCall4 = Citizen
cmgCall4 = cmgCall4.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6
  arg1 = {}
  arg2 = CMG
  arg2 = arg2.keySortedPairs
  arg3 = cmgCall.locations
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for flag4, cmgCall8 in arg2, arg3, arg4, arg5 do
    cmgCall9 = tCMG
    cmgCall9 = cmgCall9.addBlip
    cmgCall10 = cmgCall8.mapCoords
    cmgCall10 = cmgCall10.x
    textValue6 = cmgCall8.mapCoords
    textValue6 = textValue6.y
    workValue = cmgCall8.mapCoords
    workValue = workValue.z
    nameValue = cmgCall8.mapSpriteId
    workValue2 = cmgCall8.mapColour
    nameValue2 = cmgCall8.name
    numberValue6 = cmgCall8.mapScale
    cmgCall9 = cmgCall9(cmgCall10, textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6)
    cmgCall10 = CMG
    cmgCall10 = cmgCall10.addBlipContext
    textValue6 = "Civilian"
    workValue = cmgCall9
    cmgCall10(textValue6, workValue)
    cmgCall10 = table
    cmgCall10 = cmgCall10.insert
    textValue6 = arg1
    workValue = {}
    nameValue = cmgCall8.name
    workValue.title = nameValue
    nameValue = cmgCall8.areaType
    workValue.type = nameValue
    nameValue = cmgCall8.areaColour
    workValue.colour = nameValue
    workValue.id = 1
    nameValue = cmgCall8.areaCoords
    workValue.position = nameValue
    nameValue = cmgCall8.areaRadius
    workValue.blipsize = nameValue
    nameValue = cmgCall8.areaWidth
    workValue.width = nameValue
    nameValue = cmgCall8.areaHeight
    workValue.height = nameValue
    cmgCall10(textValue6, workValue)
  end
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for flag4, cmgCall8 in arg2, arg3, arg4, arg5 do
    cmgCall9 = nil
    cmgCall10 = cmgCall8.type
    if "radius" == cmgCall10 then
      cmgCall10 = AddBlipForRadius
      textValue6 = cmgCall8.position
      textValue6 = textValue6.x
      workValue = cmgCall8.position
      workValue = workValue.y
      nameValue = cmgCall8.position
      nameValue = nameValue.z
      workValue2 = cmgCall8.blipsize
      -- Beginner: result below is blipHandle.
      cmgCall10 = cmgCall10(textValue6, workValue, nameValue, workValue2)
      cmgCall9 = cmgCall10
    else
      cmgCall10 = cmgCall8.type
      if "area" == cmgCall10 then
        cmgCall10 = AddBlipForArea
        textValue6 = cmgCall8.position
        textValue6 = textValue6.x
        workValue = cmgCall8.position
        workValue = workValue.y
        nameValue = cmgCall8.position
        nameValue = nameValue.z
        workValue2 = cmgCall8.width
        nameValue2 = cmgCall8.height
        cmgCall10 = cmgCall10(textValue6, workValue, nameValue, workValue2, nameValue2)
        cmgCall9 = cmgCall10
        cmgCall10 = SetBlipRotation
        textValue6 = cmgCall9
        workValue = 0.0
        cmgCall10(textValue6, workValue)
        cmgCall10 = SetBlipSprite
        textValue6 = cmgCall9
        workValue = 608
        cmgCall10(textValue6, workValue)
        cmgCall10 = SetBlipAsShortRange
        textValue6 = cmgCall9
        workValue = true
        cmgCall10(textValue6, workValue)
      else
        cmgCall10 = error
        textValue6 = string
        textValue6 = textValue6.format
        workValue = "Invalid type %s specified for %s zone"
        nameValue = cmgCall8.type
        workValue2 = cmgCall8.title
        textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6 = textValue6(workValue, nameValue, workValue2)
        cmgCall10(textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6)
      end
    end
    cmgCall10 = SetBlipColour
    textValue6 = cmgCall9
    workValue = cmgCall8.colour
    cmgCall10(textValue6, workValue)
    cmgCall10 = SetBlipAlpha
    textValue6 = cmgCall9
    workValue = 180
    cmgCall10(textValue6, workValue)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall4(cmgCall5)
cmgCall4 = AddEventHandler
cmgCall5 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4
  if arg2 then
    arg3 = TriggerServerEvent
    arg4 = "5b6e20cdd5"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b6e20cdd5".
    arg3(arg4)
    arg3 = TriggerServerEvent
    arg4 = "da072a0288"
    arg3(arg4)
    arg3 = TriggerServerEvent
    arg4 = "71f97ba18f"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "71f97ba18f".
    arg3(arg4)
    arg3 = TriggerServerEvent
    arg4 = "a87702a8ec"
    arg3(arg4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall4(cmgCall5, workValue6)
cmgCall4 = RegisterNetEvent
cmgCall5 = "e6dba9aa45"
-- Beginner: this function handles network event "e6dba9aa45".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4
  arg3 = dataTable7
  arg3 = arg3[arg1]
  arg3.gangOwner = arg2
  arg3 = TriggerEvent
  arg4 = "e394af4876"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e394af4876".
  arg3(arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e6dba9aa45".
cmgCall4(cmgCall5, workValue6)
cmgCall4 = RegisterNetEvent
cmgCall5 = "1ad2c58ae3"
-- Beginner: this function handles network event "1ad2c58ae3".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = false
  flag3 = arg1
end
cmgCall4(cmgCall5, workValue6)
cmgCall4 = RegisterNetEvent
cmgCall5 = "c680350573"
-- Beginner: this function handles network event "c680350573".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3
  arg3 = dataTable7
  arg3 = arg3[arg1]
  arg3.owned = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c680350573".
cmgCall4(cmgCall5, workValue6)
cmgCall4 = RegisterNetEvent
cmgCall5 = "b584e10b3d"
-- Beginner: this function handles network event "b584e10b3d".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3
  arg3 = dataTable6
  arg3[arg1] = arg2
end
cmgCall4(cmgCall5, workValue6)
cmgCall4 = RegisterNetEvent
cmgCall5 = "e9971176c5"
-- Beginner: this function handles network event "e9971176c5".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10, textValue6, workValue
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for flag4, cmgCall8 in arg2, arg3, arg4, arg5 do
    cmgCall9 = dataTable7
    cmgCall9 = cmgCall9[flag4]
    if cmgCall9 then
      cmgCall9 = dataTable7
      cmgCall9 = cmgCall9[flag4]
      cmgCall10 = cmgCall8.gangOwner
      cmgCall9.gangOwner = cmgCall10
      cmgCall9 = dataTable7
      cmgCall9 = cmgCall9[flag4]
      cmgCall10 = cmgCall8.ownership
      cmgCall9.owned = cmgCall10
      cmgCall9 = dataTable7
      cmgCall9 = cmgCall9[flag4]
      cmgCall9 = cmgCall9.locationName
      cmgCall10 = cmgCall9 or cmgCall10
      if cmgCall9 then
        cmgCall10 = cmgCall.locations
        cmgCall10 = cmgCall10[cmgCall9]
      end
      textValue6 = dataTable2
      textValue6 = textValue6[flag4]
      if textValue6 then
        if cmgCall10 then
          textValue6 = cmgCall10.moneyTurf
          if textValue6 then
            goto flow_label_40
          end
        end
        textValue6 = dataTable2
        textValue6 = textValue6[flag4]
        workValue = cmgCall8.commission
        if not workValue then
          workValue = 0
        end
        textValue6.commissionRate = workValue
      end
    end
    ::flow_label_40::
  end
  arg2 = TriggerEvent
  arg3 = "e394af4876"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e394af4876".
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9971176c5".
cmgCall4(cmgCall5, workValue6)
cmgCall4 = AddEventHandler
cmgCall5 = "5afc35de9e"
-- Beginner: this function runs when client event "5afc35de9e" fires.

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue6(arg1, arg2, arg3, arg4, arg5)
  local flag4, cmgCall8, cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2
  flag4 = pairs
  cmgCall8 = dataTable2
  flag4, cmgCall8, cmgCall9, cmgCall10 = flag4(cmgCall8)
  for textValue6, workValue in flag4, cmgCall8, cmgCall9, cmgCall10 do
    nameValue = workValue.locationName
    if "heroin" == nameValue then
      workValue2 = arg1 or workValue2
      if not arg1 then
        workValue2 = 0
      end
      workValue.commissionRate = workValue2
    elseif "large_arms" == nameValue then
      workValue2 = arg2 or workValue2
      if not arg2 then
        workValue2 = 0
      end
      workValue.commissionRate = workValue2
    elseif "lsd_north" == nameValue then
      workValue2 = arg3 or workValue2
      if not arg3 then
        workValue2 = 0
      end
      workValue.commissionRate = workValue2
    elseif "lsd_south" == nameValue then
      workValue2 = arg4 or workValue2
      if not arg4 then
        workValue2 = 0
      end
      workValue.commissionRate = workValue2
    elseif "black_market" == nameValue then
      workValue2 = arg5 or workValue2
      if not arg5 then
        workValue2 = 0
      end
      workValue.commissionRate = workValue2
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "5afc35de9e".
cmgCall4(cmgCall5, workValue6)
cmgCall4 = RegisterNetEvent
cmgCall5 = "36a11b5878"
-- Beginner: this function handles network event "36a11b5878".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = dataTable7
  arg3 = arg3[arg1]
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg2
  arg4 = arg4(arg5)
  arg3.profit = arg4
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "36a11b5878".
cmgCall4(cmgCall5, workValue6)
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2, nameValue2
  arg1 = {}
  arg2 = ipairs
  arg3 = dataTable7
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for flag4, cmgCall8 in arg2, arg3, arg4, arg5 do
    cmgCall9 = cmgCall.locations
    cmgCall10 = cmgCall8.locationName
    cmgCall9 = cmgCall9[cmgCall10]
    if cmgCall9 then
      cmgCall10 = cmgCall9.name
      if cmgCall10 then
        goto flow_label_16
      end
    end
    cmgCall10 = cmgCall8.locationName
    ::flow_label_16::
    textValue6 = cmgCall8.gangOwner
    if not textValue6 or "N/A" == textValue6 then
      textValue6 = ""
    end
    workValue = #arg1
    workValue = workValue + 1
    nameValue = {}
    nameValue.turfType = "capture"
    nameValue.name = cmgCall10
    nameValue.ownedByGangName = textValue6
    workValue2 = cmgCall8.owned
    workValue2 = true == workValue2
    nameValue.ownedByUs = workValue2
    nameValue.ourStreetCred = 0
    nameValue.topGangStreetCred = 0
    nameValue.topGangName = ""
    workValue2 = math
    workValue2 = workValue2.floor
    nameValue2 = cmgCall8.profit
    if not nameValue2 then
      nameValue2 = 0
    end
    workValue2 = workValue2(nameValue2)
    nameValue.captureProfit = workValue2
    workValue2 = cmgCall9 or workValue2
    if cmgCall9 then
      workValue2 = cmgCall9.moneyTurf
      workValue2 = true == workValue2
    end
    nameValue.moneyTurf = workValue2
    if cmgCall9 then
      workValue2 = cmgCall9.payoutAmount
      if workValue2 then
        goto flow_label_61
      end
    end
    workValue2 = 0
    ::flow_label_61::
    nameValue.payoutAmount = workValue2
    arg1[workValue] = nameValue
  end
  return arg1
end
cmgCall4.getDrugTurfsUiPayload = cmgCall5
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = ipairs
  arg4 = dataTable
  arg3, arg4, arg5, flag4 = arg3(arg4)
  for cmgCall8, cmgCall9 in arg3, arg4, arg5, flag4 do
    cmgCall10 = cmgCall9.position
    cmgCall10 = arg1 - cmgCall10
    cmgCall10 = #cmgCall10
    textValue6 = cmgCall9.distance
    if cmgCall10 < textValue6 then
      cmgCall10 = dataTable7
      cmgCall10 = cmgCall10[cmgCall8]
      textValue6 = cmgCall10 or textValue6
      if cmgCall10 then
        textValue6 = cmgCall.locations
        workValue = cmgCall10.locationName
        textValue6 = textValue6[workValue]
      end
      workValue = IsPedInAnyVehicle
      nameValue = arg2
      workValue2 = false
      workValue = workValue(nameValue, workValue2)
      if workValue and textValue6 then
        workValue = textValue6.moneyTurf
        if workValue then
          workValue = false
          return workValue
        end
      end
      workValue = true
      return workValue
    end
  end
  arg3 = false
  return arg3
end
cmgCall4.isPlayerInTurf = cmgCall5
cmgCall4 = Citizen
cmgCall4 = cmgCall4.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6, numberValue8, numberValue10, numberValue11, numberValue12, dataTable3, flag, flag2
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, flag4 in arg1, arg2, arg3, arg4 do
    cmgCall8 = tCMG
    cmgCall8 = cmgCall8.addMarker
    cmgCall9 = flag4.position
    cmgCall9 = cmgCall9.x
    cmgCall10 = flag4.position
    cmgCall10 = cmgCall10.y
    textValue6 = flag4.position
    textValue6 = textValue6.z
    workValue = 0.7
    nameValue = 0.7
    workValue2 = 0.5
    nameValue2 = 200
    numberValue6 = 50
    numberValue8 = 0
    numberValue10 = 200
    numberValue11 = 50
    numberValue12 = 24
    dataTable3 = false
    flag = false
    flag2 = true
    -- Beginner: Create a world marker.
    cmgCall8(cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6, numberValue8, numberValue10, numberValue11, numberValue12, dataTable3, flag, flag2)
  end
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, flag4 in arg1, arg2, arg3, arg4 do
    cmgCall8 = tCMG
    cmgCall8 = cmgCall8.addMarker
    cmgCall9 = flag4.position
    cmgCall9 = cmgCall9.x
    cmgCall10 = flag4.position
    cmgCall10 = cmgCall10.y
    textValue6 = flag4.position
    textValue6 = textValue6.z
    workValue = 0.7
    nameValue = 0.7
    workValue2 = 0.5
    nameValue2 = 0
    numberValue6 = 50
    numberValue8 = 200
    numberValue10 = 200
    numberValue11 = 50
    numberValue12 = 30
    dataTable3 = false
    flag = false
    flag2 = true
    cmgCall8(cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6, numberValue8, numberValue10, numberValue11, numberValue12, dataTable3, flag, flag2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall4(cmgCall5)
cmgCall4 = -1
cmgCall5 = GetGameTimer
-- Beginner: result below is gameTimeMs.
cmgCall5 = cmgCall5()

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.GetRageInputText
  arg3 = "Enter new commission rate(0-"
  arg4 = tostring
  arg5 = arg1
  arg4 = arg4(arg5)
  arg5 = "%) (Only enter a number, no %): "
  arg3 = arg3 .. arg4 .. arg5
  arg4 = "10"
  return arg2(arg3, arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7, numberValue9

    -- === HELPER FUNCTION: arg12(arg13) ===
    function arg12(arg13)
      local workValue5, workValue12, numberValue13, textValue5
      workValue5 = RequestScaleformMovie
      workValue12 = arg13
      -- Beginner: result below is scaleformHandle.
      workValue5 = workValue5(workValue12)
      while true do
        workValue12 = HasScaleformMovieLoaded
        numberValue13 = workValue5
        workValue12 = workValue12(numberValue13)
        if workValue12 then
          break
        end
        workValue12 = Citizen
        workValue12 = workValue12.Wait
        numberValue13 = 0
        workValue12(numberValue13)
      end
      workValue12 = BeginScaleformMovieMethod
      numberValue13 = workValue5
      textValue5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      workValue12(numberValue13, textValue5)
      workValue12 = _ENV
      numberValue13 = "ScaleformMovieMethodAddParamTextureNameString"
      workValue12 = workValue12[numberValue13]
      numberValue13 = "~g~Press E to capture this turf!"
      workValue12(numberValue13)
      workValue12 = EndScaleformMovieMethod
      workValue12()
      return workValue5
    end
    Initialize = arg12
    arg12 = Initialize
    arg22 = "mp_big_message_freemode"
    arg12 = arg12(arg22)
    while true do
      arg22 = cmgCall4
      if -1 == arg22 then
        break
      end
      arg22 = 0.5
      arg32 = 0.35
      arg42 = 1.0
      textValue4 = arg42
      waitCall = DrawScaleformMovie
      numberValue14 = arg12
      flag6 = arg22
      numberValue17 = arg32
      numberValue19 = arg42
      numberValue2 = textValue4
      numberValue3 = 0
      numberValue4 = 0
      numberValue5 = 0
      numberValue7 = 0
      numberValue9 = 0
      waitCall(numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7, numberValue9)
      waitCall = Wait
      numberValue14 = 0
      waitCall(numberValue14)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
tableHelper = AddEventHandler
cmgCall6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1, arg2) ===
function dataTable4(arg1, arg2)
  local arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6, numberValue8, numberValue10, numberValue11, numberValue12, dataTable3, flag, flag2, workValue8, workValue9, dataTable5, workValue11
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: arg3(arg12) ===
    function arg3(arg12)
      local arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6
      arg22 = PlaySound
      arg32 = -1
      arg42 = "Hit"
      textValue4 = "RESPAWN_SOUNDSET"
      waitCall = false
      numberValue14 = 0
      flag6 = true
      arg22(arg32, arg42, textValue4, waitCall, numberValue14, flag6)
      arg22 = workValue7
      arg22()
      arg22 = arg12.turfId
      cmgCall4 = arg22
    end

    -- === HELPER FUNCTION: arg4() ===
    function arg4()
      local arg12, arg22
      arg12 = -1
      cmgCall4 = arg12
    end

    -- === HELPER FUNCTION: arg5(arg12) ===
    function arg5(arg12)
      local arg22, arg32, arg42
      arg22 = IsControlJustPressed
      arg32 = 1
      arg42 = 51
      arg22 = arg22(arg32, arg42)
      if arg22 then
        arg22 = IsPedInAnyVehicle
        arg32 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg32 = arg32()
        arg42 = false
        arg22 = arg22(arg32, arg42)
        if arg22 then
          arg22 = notify
          arg32 = "~r~You're in a vehicle so you can't take this turf."
          -- Beginner: Show a notification to the player.
          arg22(arg32)
          arg22 = Wait
          arg32 = 500
          arg22(arg32)
          return
        end
        arg22 = CMG
        arg22 = arg22.isInGang
        arg22 = arg22()
        if not arg22 then
          arg22 = notify
          arg32 = "~r~You need to be in a gang to capture a turf!"
          -- Beginner: Show a notification to the player.
          arg22(arg32)
        else
          arg22 = cmgCall2
          arg32 = GetSelectedPedWeapon
          arg42 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg42 = arg42()
          arg32, arg42 = arg32(arg42)
          arg22 = arg22(arg32, arg42)
          if not arg22 then
            arg22 = notify
            arg32 = "~r~You need a proper weapon to capture a turf!"
            arg22(arg32)
          else
            arg22 = CMG
            arg22 = arg22.isPlayingEmote
            arg22 = arg22()
            if arg22 then
              arg22 = notify
              arg32 = "~r~You cannot capture a turf while using an emote!"
              -- Beginner: Show a notification to the player.
              arg22(arg32)
            else
              arg22 = CMG
              arg22 = arg22.getPlayerBucket
              arg22 = arg22()
              if 0 ~= arg22 then
                arg22 = notify
                arg32 = "~r~You cannot capture turfs outside the main world."
                arg22(arg32)
              else
                arg22 = flag5
                if not arg22 then
                  arg22 = TriggerServerEvent
                  arg32 = "5b6e20cdd5"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b6e20cdd5".
                  arg22(arg32)
                  arg22 = TriggerServerEvent
                  arg32 = "e416519612"
                  arg42 = arg12.turfId
                  arg22(arg32, arg42)
                end
              end
            end
          end
        end
        arg22 = Wait
        arg32 = 1000
        arg22(arg32)
      end
    end
    flag4 = pairs
    cmgCall8 = dataTable
    flag4, cmgCall8, cmgCall9, cmgCall10 = flag4(cmgCall8)
    for textValue6, workValue in flag4, cmgCall8, cmgCall9, cmgCall10 do
      nameValue = CMG
      nameValue = nameValue.createArea
      workValue2 = "turf_"
      nameValue2 = textValue6
      workValue2 = workValue2 .. nameValue2
      nameValue2 = workValue.position
      numberValue6 = 1.5
      numberValue8 = 6
      numberValue10 = arg3
      numberValue11 = arg4
      numberValue12 = arg5
      dataTable3 = {}
      dataTable3.turfId = textValue6
      -- Beginner: Create an interaction area around a world position.
      nameValue(workValue2, nameValue2, numberValue6, numberValue8, numberValue10, numberValue11, numberValue12, dataTable3)
    end
    flag4 = cmgCall.locations
    flag4 = flag4.meth
    if flag4 then
      cmgCall8 = flag4.turfRadius
      cmgCall8 = cmgCall8 * 2
      cmgCall9 = CMG
      cmgCall9 = cmgCall9.createArea
      cmgCall10 = "turf_meth_audio"
      textValue6 = flag4.turfCoords
      workValue = cmgCall8
      nameValue = cmgCall8

      -- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
      function workValue2()
        local arg12, arg22
        arg12 = StartAudioScene
        arg22 = "CHARACTER_CHANGE_IN_SKY_SCENE"
        arg12(arg22)
      end

      -- === HELPER FUNCTION: nameValue2() ===
      function nameValue2()
        local arg12, arg22
        arg12 = StopAudioScene
        arg22 = "CHARACTER_CHANGE_IN_SKY_SCENE"
        arg12(arg22)
      end

      -- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
      function numberValue6()
        local arg12, arg22
      end
      numberValue8 = {}
      -- Beginner: Create an interaction area around a world position.
      cmgCall9(cmgCall10, textValue6, workValue, nameValue, workValue2, nameValue2, numberValue6, numberValue8)
    end

    -- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg12) ===
    function cmgCall8(arg12)
      local arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6
      arg22 = PlaySound
      arg32 = -1
      arg42 = "Hit"
      textValue4 = "RESPAWN_SOUNDSET"
      waitCall = false
      numberValue14 = 0
      flag6 = true
      arg22(arg32, arg42, textValue4, waitCall, numberValue14, flag6)
      arg32 = arg12.turfId
      arg22 = dataTable7
      arg22 = arg22[arg32]
      arg22 = arg22.owned
      if arg22 then
        arg22 = CMG
        arg22 = arg22.setInGUI
        arg32 = true
        arg22(arg32)
        arg22 = CMG
        arg22 = arg22.setCursor
        arg32 = 1
        arg22(arg32)
        arg12.draw = true
      end
    end

    -- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: arg12) ===
    function cmgCall9(arg12)
      local arg22, arg32
      arg22 = CMG
      arg22 = arg22.setInGUI
      arg32 = false
      arg22(arg32)
      arg22 = CMG
      arg22 = arg22.setCursor
      arg32 = 0
      arg22(arg32)
      arg12.draw = false
    end

    -- === HELPER FUNCTION (decompiler name: cmgCall10; parameters: arg12) ===
    function cmgCall10(arg12)
      local arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7
      arg22 = arg12.draw
      if arg22 then
        arg22 = arg12.locationName
        arg32 = DrawRect
        arg42 = 0.484
        textValue4 = 0.47
        waitCall = 0.185
        numberValue14 = 0.206
        flag6 = 0
        numberValue17 = 0
        numberValue19 = 0
        numberValue2 = 150
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2)
        arg32 = DrawRect
        arg42 = 0.484
        textValue4 = 0.348
        waitCall = 0.185
        numberValue14 = 0.036
        flag6 = 0
        numberValue17 = 0
        numberValue19 = 0
        numberValue2 = 150
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2)
        arg32 = DrawRect
        arg42 = 0.484
        textValue4 = 0.365
        waitCall = 0.185
        numberValue14 = -0.002
        flag6 = 255
        numberValue17 = 17
        numberValue19 = 23
        numberValue2 = 150
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2)
        arg32 = DrawAdvancedText
        arg42 = 0.578
        textValue4 = 0.349
        waitCall = 0.005
        numberValue14 = 0.0028
        flag6 = 0.437
        numberValue17 = "CMG Trader Manager"
        numberValue19 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        numberValue5 = 4
        numberValue7 = 0
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7)
        arg32 = DrawAdvancedText
        arg42 = 0.578
        textValue4 = 0.414
        waitCall = 0.005
        numberValue14 = 0.0028
        flag6 = 0.318
        numberValue17 = "a commission, you can set the commission rate here. Set it too high"
        numberValue19 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        numberValue5 = 4
        numberValue7 = 0
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7)
        if "large_arms" == arg22 then
          arg32 = DrawAdvancedText
          arg42 = 0.58
          textValue4 = 0.395
          waitCall = 0.005
          numberValue14 = 0.0028
          flag6 = 0.318
          numberValue17 = "Everytime someone buys weapons at your owned gun dealer, you earn "
          numberValue19 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          numberValue5 = 4
          numberValue7 = 0
          arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7)
        else
          arg32 = DrawAdvancedText
          arg42 = 0.58
          textValue4 = 0.395
          waitCall = 0.005
          numberValue14 = 0.0028
          flag6 = 0.318
          numberValue17 = "Everytime someone sells drugs at your owned trader, you earn "
          numberValue19 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          numberValue5 = 4
          numberValue7 = 0
          arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7)
        end
        arg32 = DrawAdvancedText
        arg42 = 0.586
        textValue4 = 0.432
        waitCall = 0.005
        numberValue14 = 0.0028
        flag6 = 0.318
        numberValue17 = "and your turf may come under attack a lot, so be prepared."
        numberValue19 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        numberValue5 = 4
        numberValue7 = 0
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7)
        arg32 = DrawAdvancedText
        arg42 = 0.568
        textValue4 = 0.476
        waitCall = 0.005
        numberValue14 = 0.0028
        flag6 = 0.4
        numberValue17 = "Current Commission Rate: "
        numberValue19 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        numberValue5 = 4
        numberValue7 = 0
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7)
        arg32 = DrawAdvancedText
        arg42 = 0.622
        textValue4 = 0.476
        waitCall = 0.005
        numberValue14 = 0.0028
        flag6 = 0.4
        numberValue17 = tostring
        numberValue2 = arg12.turfId
        numberValue19 = dataTable2
        numberValue19 = numberValue19[numberValue2]
        if numberValue19 then
          numberValue2 = arg12.turfId
          numberValue19 = dataTable2
          numberValue19 = numberValue19[numberValue2]
          numberValue19 = numberValue19.commissionRate
          if numberValue19 then
            goto flow_label_141
          end
        end
        numberValue19 = 0
        ::flow_label_141::
        numberValue17 = numberValue17(numberValue19)
        numberValue19 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        numberValue5 = 4
        numberValue7 = 0
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7)
        arg32 = DrawRect
        arg42 = 0.482
        textValue4 = 0.526
        waitCall = 0.065
        numberValue14 = 0.046
        flag6 = numberValue15
        numberValue17 = numberValue18
        numberValue19 = numberValue16
        numberValue2 = 150
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2)
        arg32 = DrawAdvancedText
        arg42 = 0.578
        textValue4 = 0.53
        waitCall = 0.005
        numberValue14 = 0.0028
        flag6 = 0.426
        numberValue17 = "Set New Rate"
        numberValue19 = 255
        numberValue2 = 46
        numberValue3 = 71
        numberValue4 = 255
        numberValue5 = 4
        numberValue7 = 0
        arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4, numberValue5, numberValue7)
        arg32 = CursorInArea
        arg42 = 0.44
        textValue4 = 0.51
        waitCall = 0.5
        numberValue14 = 0.55
        arg32 = arg32(arg42, textValue4, waitCall, numberValue14)
        if arg32 then
          arg32 = 0
          numberValue15 = arg32
          arg32 = 165
          numberValue18 = arg32
          arg32 = 71
          numberValue16 = arg32
          arg32 = IsControlJustPressed
          arg42 = 1
          textValue4 = 329
          arg32 = arg32(arg42, textValue4)
          if not arg32 then
            arg32 = IsDisabledControlJustPressed
            arg42 = 1
            textValue4 = 329
            arg32 = arg32(arg42, textValue4)
          end
          if arg32 then
            arg32 = PlaySound
            arg42 = -1
            textValue4 = "SELECT"
            waitCall = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            numberValue14 = false
            flag6 = 0
            numberValue17 = true
            arg32(arg42, textValue4, waitCall, numberValue14, flag6, numberValue17)
            arg32 = 25
            if "large_arms" == arg22 or "black_market" == arg22 then
              arg42 = CMG
              textValue4 = "getClientGangPublicTurfCommissionBonusPercent"
              arg42 = arg42[textValue4]
              arg42 = arg42()
              arg32 = 10 + arg42
            end
            arg42 = workValue6
            textValue4 = arg32
            arg42 = arg42(textValue4)
            if nil ~= arg42 then
              textValue4 = tonumber
              waitCall = arg42
              textValue4 = textValue4(waitCall)
              if textValue4 then
                textValue4 = math
                textValue4 = textValue4.floor
                waitCall = tonumber
                numberValue14 = arg42
                waitCall = waitCall(numberValue14)
                if not waitCall then
                  waitCall = 0
                end
                textValue4 = textValue4(waitCall)
                if arg32 >= textValue4 and textValue4 >= 0 then
                  waitCall = GetGameTimer
                  -- Beginner: result below is gameTimeMs.
                  waitCall = waitCall()
                  numberValue14 = cmgCall5
                  numberValue14 = numberValue14 + 30000
                  if waitCall > numberValue14 then
                    waitCall = GetGameTimer
                    -- Beginner: result below is gameTimeMs.
                    waitCall = waitCall()
                    cmgCall5 = waitCall
                    numberValue14 = arg12.turfId
                    waitCall = dataTable2
                    waitCall = waitCall[numberValue14]
                    if waitCall then
                      numberValue14 = arg12.turfId
                      waitCall = dataTable2
                      waitCall = waitCall[numberValue14]
                      waitCall.commissionRate = textValue4
                    end
                    if "heroin" == arg22 then
                      waitCall = TriggerServerEvent
                      numberValue14 = "23c2933768"
                      flag6 = textValue4
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "23c2933768".
                      waitCall(numberValue14, flag6)
                    elseif "large_arms" == arg22 then
                      waitCall = TriggerServerEvent
                      numberValue14 = "d56d15f766"
                      flag6 = textValue4
                      waitCall(numberValue14, flag6)
                    elseif "lsd_north" == arg22 then
                      waitCall = TriggerServerEvent
                      numberValue14 = "c0fc226c26"
                      flag6 = textValue4
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c0fc226c26".
                      waitCall(numberValue14, flag6)
                    elseif "lsd_south" == arg22 then
                      waitCall = TriggerServerEvent
                      numberValue14 = "f6678085a0"
                      flag6 = textValue4
                      waitCall(numberValue14, flag6)
                    elseif "black_market" == arg22 then
                      waitCall = TriggerServerEvent
                      numberValue14 = "2531ee9dbf"
                      flag6 = textValue4
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2531ee9dbf".
                      waitCall(numberValue14, flag6)
                    end
                  else
                    waitCall = notify
                    numberValue14 = "~r~Rate limit, please wait 30s to change the commission."
                    -- Beginner: Show a notification to the player.
                    waitCall(numberValue14)
                  end
                end
              end
            end
          end
        else
          arg32 = 0
          numberValue15 = arg32
          arg32 = 0
          numberValue18 = arg32
          arg32 = 0
          numberValue16 = arg32
        end
      end
    end
    textValue6 = pairs
    workValue = dataTable2
    textValue6, workValue, nameValue, workValue2 = textValue6(workValue)
    for nameValue2, numberValue6 in textValue6, workValue, nameValue, workValue2 do
      numberValue8 = cmgCall.locations
      numberValue10 = numberValue6.locationName
      numberValue8 = numberValue8[numberValue10]
      if numberValue8 then
        numberValue10 = numberValue8.moneyTurf
        if numberValue10 then
          goto flow_label_80
        end
      end
      numberValue10 = CMG
      numberValue10 = numberValue10.createArea
      numberValue11 = "turfmanager_"
      numberValue12 = nameValue2
      numberValue11 = numberValue11 .. numberValue12
      numberValue12 = numberValue6.position
      dataTable3 = 1.5
      flag = 6
      flag2 = cmgCall8
      workValue8 = cmgCall9
      workValue9 = cmgCall10
      dataTable5 = {}
      workValue11 = numberValue6.locationName
      dataTable5.locationName = workValue11
      dataTable5.turfId = nameValue2
      dataTable5.draw = false
      -- Beginner: Create an interaction area around a world position.
      numberValue10(numberValue11, numberValue12, dataTable3, flag, flag2, workValue8, workValue9, dataTable5)
      ::flow_label_80::
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
tableHelper(cmgCall6, dataTable4)

-- === HELPER FUNCTION: tableHelper(arg1, arg2) ===
function tableHelper(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = dataTable7
  arg3 = arg3[arg1]
  arg3.owned = true
  arg3 = TriggerServerEvent
  arg4 = "b7983f45aa"
  arg5 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b7983f45aa".
  arg3(arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3
  arg1 = TriggerServerEvent
  arg2 = "2ca4f37fe2"
  arg3 = textValue2
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: none) ===
function dataTable4()
  local arg1, arg2, arg3, arg4, arg5, flag4, cmgCall8
  arg1 = cmgCall3.quickCapturing
  if arg1 then
    arg1 = 10
    if arg1 then
      goto flow_label_8
    end
  end
  arg1 = cmgCall.timeToTakeTurfSecs
  ::flow_label_8::
  arg2 = CMG
  arg2 = arg2.getGangPublicCaptureTimeReductionPercent
  arg2 = arg2()
  arg3 = math
  arg3 = arg3.max
  arg4 = 30
  arg5 = math
  arg5 = arg5.floor
  flag4 = arg2 / 100
  cmgCall8 = 1
  flag4 = cmgCall8 - flag4
  flag4 = arg1 * flag4
  arg5, flag4, cmgCall8 = arg5(flag4)
  return arg3(arg4, arg5, flag4, cmgCall8)
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2, arg3) ===
function workValue10(arg1, arg2, arg3)
  local arg4, arg5, flag4
  arg4 = dataTable6
  arg4 = arg4[arg2]
  if arg4 then
    arg4 = true
    flag5 = arg4
    arg4 = dataTable4
    arg4 = arg4()
    arg5 = Citizen
    arg5 = arg5.CreateThread

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22, arg32
      while true do
        arg12 = arg4
        if 0 == arg12 then
          break
        end
        arg12 = flag5
        if not arg12 then
          break
        end
        arg22 = textValue2
        arg12 = dataTable8
        arg12 = arg12[arg22]
        if not arg12 then
          arg12 = arg4
          arg12 = arg12 - 1
          arg4 = arg12
        end
        arg12 = Wait
        arg22 = 1000
        arg12(arg22)
      end
      arg12 = flag5
      if arg12 then
        arg12 = tableHelper
        arg22 = arg1
        arg32 = arg2
        -- Beginner: Register a client-side event handler.
        arg12(arg22, arg32)
      end
      arg12 = false
      flag5 = arg12
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg5(flag4)
    arg5 = Citizen
    arg5 = arg5.CreateThread

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3
      arg12 = tCMG
      arg12 = arg12.addMarker
      arg22 = arg3.x
      arg32 = arg3.y
      arg42 = arg3.z
      arg42 = arg42 - 10
      textValue4 = 75
      waitCall = 75
      numberValue14 = 18
      flag6 = 0
      numberValue17 = 200
      numberValue19 = 0
      numberValue2 = 35
      numberValue3 = 1000
      arg12 = arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3)
      arg22 = AddBlipForRadius
      arg32 = arg3.x
      arg42 = arg3.y
      textValue4 = arg3.z
      waitCall = 37.5
      -- Beginner: result below is blipHandle.
      arg22 = arg22(arg32, arg42, textValue4, waitCall)
      arg32 = SetBlipColour
      arg42 = arg22
      textValue4 = 69
      arg32(arg42, textValue4)
      arg32 = SetBlipAlpha
      arg42 = arg22
      textValue4 = 50
      arg32(arg42, textValue4)
      while true do
        arg32 = flag5
        if not arg32 then
          break
        end
        arg32 = workValue3
        arg42 = CMG
        arg42 = arg42.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg42 = arg42()
        textValue4 = arg3
        arg32 = arg32(arg42, textValue4)
        if arg32 then
          arg42 = notify
          textValue4 = arg32
          -- Beginner: Show a notification to the player.
          arg42(textValue4)
          arg42 = false
          flag5 = arg42
          arg42 = TriggerServerEvent
          textValue4 = "539b6c4260"
          waitCall = arg2
          numberValue14 = "Attackers"
          flag6 = true
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "539b6c4260".
          arg42(textValue4, waitCall, numberValue14, flag6)
        end
        arg42 = Wait
        textValue4 = 1000
        arg42(textValue4)
      end
      arg32 = tCMG
      arg32 = arg32.removeMarker
      arg42 = arg12
      arg32(arg42)
      arg32 = RemoveBlip
      arg42 = arg22
      arg32(arg42)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg5(flag4)
    arg5 = Citizen
    arg5 = arg5.CreateThread

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4
      while true do
        arg12 = flag5
        if not arg12 then
          break
        end
        arg22 = arg2
        arg12 = dataTable8
        arg12 = arg12[arg22]
        if not arg12 then
          arg12 = DrawAdvancedText
          arg22 = 0.931
          arg32 = 0.915
          arg42 = 0.005
          textValue4 = 0.0028
          waitCall = 0.49
          numberValue14 = "Time remaining till capture: "
          flag6 = arg4
          numberValue17 = " seconds!"
          numberValue14 = numberValue14 .. flag6 .. numberValue17
          flag6 = 23
          numberValue17 = 255
          numberValue19 = 141
          numberValue2 = 255
          numberValue3 = 7
          numberValue4 = 0
          arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4)
        else
          arg12 = DrawAdvancedText
          arg22 = 0.931
          arg32 = 0.886
          arg42 = 0.005
          textValue4 = 0.0028
          waitCall = 0.49
          numberValue14 = "Capture blocked, kill enemies to continue timer."
          flag6 = 255
          numberValue17 = 23
          numberValue19 = 141
          numberValue2 = 255
          numberValue3 = 7
          numberValue4 = 0
          arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4)
        end
        arg12 = Wait
        arg22 = 0
        arg12(arg22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg5(flag4)
  end
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "4d614a25fe"
-- Beginner: this function handles network event "4d614a25fe".

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: arg1, arg2) ===
function eventRegistration3(arg1, arg2)
  local arg3, arg4, arg5, flag4
  arg3 = true
  flag5 = arg3
  textValue2 = arg2
  arg3 = workValue10
  arg4 = arg1
  arg5 = arg2
  flag4 = dataTable
  flag4 = flag4[arg1]
  flag4 = flag4.position
  arg3(arg4, arg5, flag4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4d614a25fe".
eventRegistration(eventRegistration2, eventRegistration3)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2, arg3) ===
function eventRegistration(arg1, arg2, arg3)
  local arg4, arg5, flag4, cmgCall8
  arg4 = dataTable7
  arg4 = arg4[arg1]
  arg4 = arg4.owned
  if arg4 then
    arg4 = notify
    arg5 = "~r~You already own this turf!"
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  else
    arg4 = TriggerServerEvent
    arg5 = "20f19e1daa"
    flag4 = arg1
    cmgCall8 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "20f19e1daa".
    arg4(arg5, flag4, cmgCall8)
    arg4 = dataTable4
    arg4 = arg4()
    while true do
      arg5 = dataTable6
      arg5 = arg5[arg3]
      if nil ~= arg5 then
        break
      end
      arg5 = Wait
      flag4 = 0
      arg5(flag4)
    end
    arg5 = dataTable6
    arg5 = arg5[arg3]
    if arg5 then
      arg5 = true
      flag5 = arg5
      arg5 = Citizen
      arg5 = arg5.CreateThread

      -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
      function flag4()
        local arg12, arg22, arg32
        while true do
          arg12 = arg4
          if 0 == arg12 then
            break
          end
          arg12 = flag5
          if not arg12 then
            break
          end
          arg22 = arg3
          arg12 = dataTable8
          arg12 = arg12[arg22]
          if not arg12 then
            arg12 = arg4
            arg12 = arg12 - 1
            arg4 = arg12
          end
          arg12 = Wait
          arg22 = 1000
          arg12(arg22)
        end
        arg12 = flag5
        if arg12 then
          arg12 = tableHelper
          arg22 = arg1
          arg32 = arg3
          -- Beginner: Register a client-side event handler.
          arg12(arg22, arg32)
        end
        arg12 = false
        flag5 = arg12
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg5(flag4)
      arg5 = Citizen
      arg5 = arg5.CreateThread

      -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
      function flag4()
        local arg12, arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3
        arg12 = tCMG
        arg12 = arg12.addMarker
        arg22 = arg2.x
        arg32 = arg2.y
        arg42 = arg2.z
        arg42 = arg42 - 10
        textValue4 = 75
        waitCall = 75
        numberValue14 = 18
        flag6 = 0
        numberValue17 = 200
        numberValue19 = 0
        numberValue2 = 35
        numberValue3 = 1000
        arg12 = arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3)
        arg22 = AddBlipForRadius
        arg32 = arg2.x
        arg42 = arg2.y
        textValue4 = arg2.z
        waitCall = 37.5
        -- Beginner: result below is blipHandle.
        arg22 = arg22(arg32, arg42, textValue4, waitCall)
        arg32 = SetBlipColour
        arg42 = arg22
        textValue4 = 69
        arg32(arg42, textValue4)
        arg32 = SetBlipAlpha
        arg42 = arg22
        textValue4 = 50
        arg32(arg42, textValue4)
        while true do
          arg32 = flag5
          if not arg32 then
            break
          end
          arg32 = workValue3
          arg42 = CMG
          arg42 = arg42.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          arg42 = arg42()
          textValue4 = arg2
          arg32 = arg32(arg42, textValue4)
          if arg32 then
            arg42 = notify
            textValue4 = arg32
            -- Beginner: Show a notification to the player.
            arg42(textValue4)
            arg42 = false
            flag5 = arg42
            arg42 = TriggerServerEvent
            textValue4 = "539b6c4260"
            waitCall = arg3
            numberValue14 = "Attackers"
            flag6 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "539b6c4260".
            arg42(textValue4, waitCall, numberValue14, flag6)
          end
          arg42 = Wait
          textValue4 = 2000
          arg42(textValue4)
        end
        arg32 = tCMG
        arg32 = arg32.removeMarker
        arg42 = arg12
        arg32(arg42)
        arg32 = RemoveBlip
        arg42 = arg22
        arg32(arg42)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg5(flag4)
      arg5 = Citizen
      arg5 = arg5.CreateThread

      -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
      function flag4()
        local arg12, arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4
        while true do
          arg12 = flag5
          if not arg12 then
            break
          end
          arg22 = arg3
          arg12 = dataTable8
          arg12 = arg12[arg22]
          if not arg12 then
            arg12 = DrawAdvancedText
            arg22 = 0.931
            arg32 = 0.915
            arg42 = 0.005
            textValue4 = 0.0028
            waitCall = 0.49
            numberValue14 = "Time remaining till capture: "
            flag6 = arg4
            numberValue17 = " seconds!"
            numberValue14 = numberValue14 .. flag6 .. numberValue17
            flag6 = 23
            numberValue17 = 255
            numberValue19 = 141
            numberValue2 = 255
            numberValue3 = 7
            numberValue4 = 0
            arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4)
          else
            arg12 = DrawAdvancedText
            arg22 = 0.931
            arg32 = 0.886
            arg42 = 0.005
            textValue4 = 0.0028
            waitCall = 0.49
            numberValue14 = "Capture blocked, kill enemies to continue timer."
            flag6 = 255
            numberValue17 = 23
            numberValue19 = 141
            numberValue2 = 255
            numberValue3 = 7
            numberValue4 = 0
            arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4)
          end
          arg12 = Wait
          arg22 = 0
          arg12(arg22)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg5(flag4)
    end
  end
end
eventRegistration2 = RegisterNetEvent
eventRegistration3 = "d11bd04ad0"
-- Beginner: this function handles network event "d11bd04ad0".

-- === HELPER FUNCTION (decompiler name: cmgCall7; parameters: arg1, arg2, arg3) ===
function cmgCall7(arg1, arg2, arg3)
  local arg4, arg5, flag4, cmgCall8
  if not arg2 then
    arg4 = eventRegistration
    arg5 = arg1
    flag4 = dataTable
    flag4 = flag4[arg1]
    flag4 = flag4.position
    cmgCall8 = arg3
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg4(arg5, flag4, cmgCall8)
  else
    arg4 = notify
    arg5 = "~r~Turf already owned!"
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d11bd04ad0".
eventRegistration2(eventRegistration3, cmgCall7)

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2, arg3, arg4, arg5) ===
function eventRegistration2(arg1, arg2, arg3, arg4, arg5)
  local flag4, cmgCall8, cmgCall9
  flag4 = dataTable4
  flag4 = flag4()
  cmgCall8 = Citizen
  cmgCall8 = cmgCall8.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: none) ===
  function cmgCall9()
    local arg12, arg22
    while true do
      arg12 = flag4
      if 0 == arg12 then
        break
      end
      arg12 = flag3
      if not arg12 then
        break
      end
      arg22 = arg2
      arg12 = dataTable8
      arg12 = arg12[arg22]
      if not arg12 then
        arg12 = flag4
        arg12 = arg12 - 1
        flag4 = arg12
      end
      arg12 = Wait
      arg22 = 1000
      arg12(arg22)
    end
    arg12 = cmgCall6
    arg12()
    arg12 = false
    flag3 = arg12
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgCall8(cmgCall9)
  cmgCall8 = Citizen
  cmgCall8 = cmgCall8.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: none) ===
  function cmgCall9()
    local arg12, arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4
    while true do
      arg12 = flag3
      if not arg12 then
        break
      end
      arg22 = arg2
      arg12 = dataTable8
      arg12 = arg12[arg22]
      if not arg12 then
        arg12 = DrawAdvancedText
        arg22 = 0.931
        arg32 = 0.915
        arg42 = 0.005
        textValue4 = 0.0028
        waitCall = 0.49
        numberValue14 = "Time remaining till capture: "
        flag6 = flag4
        numberValue17 = " seconds!"
        numberValue14 = numberValue14 .. flag6 .. numberValue17
        flag6 = 23
        numberValue17 = 255
        numberValue19 = 141
        numberValue2 = 255
        numberValue3 = 7
        numberValue4 = 0
        arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4)
      else
        arg12 = DrawAdvancedText
        arg22 = 0.931
        arg32 = 0.886
        arg42 = 0.005
        textValue4 = 0.0028
        waitCall = 0.49
        numberValue14 = "Capture blocked, kill enemies to continue timer."
        flag6 = 255
        numberValue17 = 23
        numberValue19 = 141
        numberValue2 = 255
        numberValue3 = 7
        numberValue4 = 0
        arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3, numberValue4)
      end
      arg12 = Wait
      arg22 = 0
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgCall8(cmgCall9)
  cmgCall8 = Citizen
  cmgCall8 = cmgCall8.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: none) ===
  function cmgCall9()
    local arg12, arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3
    arg12 = tCMG
    arg12 = arg12.addMarker
    arg22 = arg3
    arg32 = arg4
    arg42 = arg5
    arg42 = arg42 - 10
    textValue4 = 75
    waitCall = 75
    numberValue14 = 75
    flag6 = 0
    numberValue17 = 200
    numberValue19 = 0
    numberValue2 = 50
    numberValue3 = 1000
    arg12 = arg12(arg22, arg32, arg42, textValue4, waitCall, numberValue14, flag6, numberValue17, numberValue19, numberValue2, numberValue3)
    arg22 = vector3
    arg42 = arg1
    arg32 = dataTable
    arg32 = arg32[arg42]
    arg32 = arg32.position
    arg32 = arg32.x
    textValue4 = arg1
    arg42 = dataTable
    arg42 = arg42[textValue4]
    arg42 = arg42.position
    arg42 = arg42.y
    waitCall = arg1
    textValue4 = dataTable
    textValue4 = textValue4[waitCall]
    textValue4 = textValue4.position
    textValue4 = textValue4.z
    arg22 = arg22(arg32, arg42, textValue4)
    while true do
      arg32 = flag3
      if not arg32 then
        break
      end
      arg32 = CMG
      arg32 = arg32.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg32 = arg32()
      arg42 = GetEntityHealth
      textValue4 = arg32
      -- Beginner: result below is health.
      arg42 = arg42(textValue4)
      if arg42 <= 102 then
        arg42 = notify
        textValue4 = "~r~Turf defense failed, you died"
        -- Beginner: Show a notification to the player.
        arg42(textValue4)
        arg42 = false
        flag3 = arg42
        arg42 = TriggerServerEvent
        textValue4 = "539b6c4260"
        waitCall = arg2
        numberValue14 = "Defenders"
        flag6 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "539b6c4260".
        arg42(textValue4, waitCall, numberValue14, flag6)
      else
        arg42 = workValue4
        textValue4 = arg32
        waitCall = arg22
        arg42 = arg42(textValue4, waitCall)
        if arg42 then
          arg42 = TriggerServerEvent
          textValue4 = "539b6c4260"
          waitCall = arg2
          numberValue14 = "Defenders"
          flag6 = true
          arg42(textValue4, waitCall, numberValue14, flag6)
        else
          arg42 = TriggerServerEvent
          textValue4 = "539b6c4260"
          waitCall = arg2
          numberValue14 = "Defenders"
          flag6 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "539b6c4260".
          arg42(textValue4, waitCall, numberValue14, flag6)
        end
      end
      arg42 = Wait
      textValue4 = 1000
      arg42(textValue4)
    end
    arg32 = tCMG
    arg32 = arg32.removeMarker
    arg42 = arg12
    arg32(arg42)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgCall8(cmgCall9)
end
eventRegistration3 = RegisterNetEvent
cmgCall7 = "75bfa7b124"
-- Beginner: this function handles network event "75bfa7b124".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local arg3, arg4, arg5, flag4, cmgCall8, cmgCall9, cmgCall10, textValue6, workValue, nameValue, workValue2
  textValue2 = arg2
  arg3 = true
  flag3 = arg3
  arg3 = pairs
  arg4 = dataTable
  arg3, arg4, arg5, flag4 = arg3(arg4)
  for cmgCall8 in arg3, arg4, arg5, flag4 do
    if cmgCall8 == arg1 then
      cmgCall9 = eventRegistration2
      cmgCall10 = cmgCall8
      textValue6 = arg2
      workValue = dataTable
      workValue = workValue[cmgCall8]
      workValue = workValue.position
      workValue = workValue.x
      nameValue = dataTable
      nameValue = nameValue[cmgCall8]
      nameValue = nameValue.position
      nameValue = nameValue.y
      workValue2 = dataTable
      workValue2 = workValue2[cmgCall8]
      workValue2 = workValue2.position
      workValue2 = workValue2.z
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      cmgCall9(cmgCall10, textValue6, workValue, nameValue, workValue2)
    end
  end
end
eventRegistration3(cmgCall7, textValue3)
eventRegistration3 = RegisterNetEvent
cmgCall7 = "d642fa2574"
-- Beginner: this function handles network event "d642fa2574".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local arg3
  arg3 = dataTable8
  arg3[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d642fa2574".
eventRegistration3(cmgCall7, textValue3)
eventRegistration3 = RegisterNetEvent
cmgCall7 = "2ca4f37fe2"
-- Beginner: this function handles network event "2ca4f37fe2".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2
  arg1 = false
  flag3 = arg1
end
eventRegistration3(cmgCall7, textValue3)
eventRegistration3 = false
cmgCall7 = CMG
cmgCall7 = cmgCall7.registerDevMenuItems
textValue3 = "Turf"
-- Beginner: this function handles network event "2ca4f37fe2".

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, arg4, arg5, flag4
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Quick Turf Capturing"
  arg3 = "Captures a turf in 10 seconds."
  arg4 = cmgCall3.quickCapturing
  arg5 = {}

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32, arg42) ===
  function flag4(arg12, arg22, arg32, arg42)
    cmgCall3.quickCapturing = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, flag4)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Ignore Capture Cooldown"
  arg3 = string
  arg3 = arg3.format
  arg4 = "Whether to globally ignore the capture cooldown of %s when capturing a turf."
  arg5 = cmgCall.captureCooldownSecs
  arg3 = arg3(arg4, arg5)
  arg4 = cmgCall3.ignoreCooldown
  arg5 = {}

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32, arg42) ===
  function flag4(arg12, arg22, arg32, arg42)
    local textValue4, waitCall, numberValue14
    textValue4 = eventRegistration3
    if textValue4 ~= arg42 then
      textValue4 = TriggerServerEvent
      waitCall = "b07e69e2b9"
      numberValue14 = arg42
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b07e69e2b9".
      textValue4(waitCall, numberValue14)
      eventRegistration3 = arg42
    end
    cmgCall3.ignoreCooldown = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, flag4)
end
cmgCall7(textValue3, workValue13)
