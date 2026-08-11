--[[
    LEVEL 1 BEGINNER GUIDE — Takehostage
    =========================================

    File: cmg/prod/client/misc/cl_takehostage.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Takehostage feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 15
      * Background threads: 0
      * Always-running loops: 1
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
local dataTable, cmgCall, threadCall, workValue3, workValue4, workValue5, eventRegistration, textValue2, cmgCall2, flag6, textValue
dataTable = {}
cmgCall = {}
dataTable.allowedWeapons = cmgCall
dataTable.InProgress = false
dataTable.startTime = 0
dataTable.type = ""
dataTable.targetSrc = -1
cmgCall = {}
cmgCall.animDict = "anim@gangops@hostage@"
cmgCall.anim = "perp_idle"
cmgCall.flag = 49
dataTable.agressor = cmgCall
cmgCall = {}
cmgCall.animDict = "anim@gangops@hostage@"
cmgCall.anim = "victim_idle"
cmgCall.attachX = -0.24
cmgCall.attachY = 0.11
cmgCall.attachZ = 0.0
cmgCall.flag = 49
dataTable.hostage = cmgCall
cmgCall = CMG
cmgCall = cmgCall.loadModule
threadCall = "cfg/weapons"
-- Beginner: result below is config.
cmgCall = cmgCall(threadCall)
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6
  arg1 = pairs
  workValue2 = cmgCall.weapons
  arg1, workValue2, numberValue2, flag5 = arg1(workValue2)
  for playerPed2, playerPed3 in arg1, workValue2, numberValue2, flag5 do
    tableHelper = playerPed3.class
    if "Pistol" == tableHelper then
      tableHelper = table
      tableHelper = tableHelper.insert
      playerPed4 = dataTable.allowedWeapons
      workValue6 = playerPed3.hash
      tableHelper(playerPed4, workValue6)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue3)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1) ===
function threadCall(arg1)
  local workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2, playerPed, coords, workValue
  workValue2 = GetActivePlayers
  workValue2 = workValue2()
  numberValue2 = -1
  flag5 = -1
  playerPed2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed2 = playerPed2()
  playerPed3 = GetEntityCoords
  tableHelper = playerPed2
  -- Beginner: result below is entityCoords.
  playerPed3 = playerPed3(tableHelper)
  tableHelper = ipairs
  playerPed4 = workValue2
  tableHelper, playerPed4, workValue6, flag7 = tableHelper(playerPed4)
  for flag, flag2 in tableHelper, playerPed4, workValue6, flag7 do
    playerPed = GetPlayerPed
    coords = flag2
    -- Beginner: result below is playerPed.
    playerPed = playerPed(coords)
    if playerPed ~= playerPed2 then
      coords = GetEntityCoords
      workValue = playerPed
      -- Beginner: result below is entityCoords.
      coords = coords(workValue)
      workValue = coords - playerPed3
      workValue = #workValue
      if -1 == numberValue2 or numberValue2 > workValue then
        flag5 = flag2
        numberValue2 = workValue
      end
    end
  end
  if -1 ~= numberValue2 and arg1 >= numberValue2 then
    return flag5
  else
    tableHelper = nil
    return tableHelper
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local workValue2, numberValue2
  workValue2 = HasAnimDictLoaded
  numberValue2 = arg1
  workValue2 = workValue2(numberValue2)
  if not workValue2 then
    workValue2 = RequestAnimDict
    numberValue2 = arg1
    workValue2(numberValue2)
    while true do
      workValue2 = HasAnimDictLoaded
      numberValue2 = arg1
      workValue2 = workValue2(numberValue2)
      if workValue2 then
        break
      end
      workValue2 = Wait
      numberValue2 = 0
      workValue2(numberValue2)
    end
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local workValue2, numberValue2, flag5
  workValue2 = BeginTextCommandPrint
  numberValue2 = "STRING"
  workValue2(numberValue2)
  workValue2 = AddTextComponentSubstringPlayerName
  numberValue2 = arg1
  workValue2(numberValue2)
  workValue2 = EndTextCommandPrint
  numberValue2 = 1000
  flag5 = true
  workValue2(numberValue2, flag5)
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7
  arg1 = tCMG
  arg1 = arg1.isInGreenzone
  workValue2 = false
  arg1 = arg1(workValue2)
  if arg1 then
    return
  end
  arg1 = ClearPedSecondaryTask
  workValue2 = PlayerPedId
  workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7 = workValue2()
  arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7)
  arg1 = DetachEntity
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  numberValue2 = true
  flag5 = false
  arg1(workValue2, numberValue2, flag5)
  arg1 = false
  workValue2 = nil
  numberValue2 = 1
  flag5 = dataTable.allowedWeapons
  flag5 = #flag5
  playerPed2 = 1
  for playerPed3 = numberValue2, flag5, playerPed2 do
    tableHelper = HasPedGotWeapon
    playerPed4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed4 = playerPed4()
    workValue6 = dataTable.allowedWeapons
    workValue6 = workValue6[playerPed3]
    flag7 = false
    tableHelper = tableHelper(playerPed4, workValue6, flag7)
    if tableHelper then
      tableHelper = GetAmmoInPedWeapon
      playerPed4 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed4 = playerPed4()
      workValue6 = dataTable.allowedWeapons
      workValue6 = workValue6[playerPed3]
      tableHelper = tableHelper(playerPed4, workValue6)
      if tableHelper > 0 then
        arg1 = true
        tableHelper = dataTable.allowedWeapons
        workValue2 = tableHelper[playerPed3]
        break
      end
    end
  end
  if not arg1 or not workValue2 then
    numberValue2 = drawNativeNotification
    flag5 = "You need a pistol with ammo to take a hostage at gunpoint!"
    -- Beginner: Show a GTA-style notification/help prompt.
    numberValue2(flag5)
  end
  numberValue2 = dataTable.InProgress
  if not numberValue2 and arg1 and workValue2 then
    numberValue2 = threadCall
    flag5 = 2
    numberValue2 = numberValue2(flag5)
    if numberValue2 then
      flag5 = GetPlayerServerId
      playerPed2 = numberValue2
      -- Beginner: result below is serverId.
      flag5 = flag5(playerPed2)
      if -1 ~= flag5 then
        playerPed2 = IsEntityPlayingAnim
        playerPed3 = GetPlayerPed
        tableHelper = numberValue2
        -- Beginner: result below is playerPed.
        playerPed3 = playerPed3(tableHelper)
        tableHelper = "missminuteman_1ig_2"
        playerPed4 = "handsup_enter"
        workValue6 = 3
        playerPed2 = playerPed2(playerPed3, tableHelper, playerPed4, workValue6)
        if playerPed2 then
          playerPed3 = CMG
          playerPed3 = playerPed3.setWeapon
          tableHelper = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          tableHelper = tableHelper()
          playerPed4 = workValue2
          workValue6 = true
          playerPed3(tableHelper, playerPed4, workValue6)
          dataTable.InProgress = true
          playerPed3 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          playerPed3 = playerPed3()
          dataTable.startTime = playerPed3
          dataTable.targetSrc = flag5
          playerPed3 = TriggerServerEvent
          tableHelper = "4819e496d9"
          playerPed4 = flag5
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4819e496d9".
          playerPed3(tableHelper, playerPed4)
          dataTable.type = "agressor"
        else
          playerPed3 = drawNativeNotification
          tableHelper = "Player must have his hands up!"
          -- Beginner: Show a GTA-style notification/help prompt.
          playerPed3(tableHelper)
        end
      else
        playerPed2 = drawNativeNotification
        playerPed3 = "~r~No one nearby to take as hostage!"
        playerPed2(playerPed3)
      end
    else
      flag5 = drawNativeNotification
      playerPed2 = "~r~No one nearby to take as hostage!"
      -- Beginner: Show a GTA-style notification/help prompt.
      flag5(playerPed2)
    end
  end
end
eventRegistration = RegisterCommand
textValue2 = "takehostage"
-- Beginner: this function is the command handler for "takehostage".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, workValue2
  arg1 = workValue5
  arg1()
end
flag6 = false
-- Beginner: Register a chat/console command. Event/command: "takehostage".
eventRegistration(textValue2, cmgCall2, flag6)
eventRegistration = RegisterCommand
textValue2 = "th"
-- Beginner: this function is the command handler for "th".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, workValue2
  arg1 = workValue5
  arg1()
end
flag6 = false
-- Beginner: Register a chat/console command. Event/command: "th".
eventRegistration(textValue2, cmgCall2, flag6)
eventRegistration = RegisterNetEvent
textValue2 = "a44fcfdd31"
-- Beginner: this function handles network event "a44fcfdd31".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2, playerPed, coords, workValue, flag3, numberValue, flag4
  workValue2 = GetPlayerPed
  numberValue2 = GetPlayerFromServerId
  flag5 = arg1
  numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2, playerPed, coords, workValue, flag3, numberValue, flag4 = numberValue2(flag5)
  -- Beginner: result below is playerPed.
  workValue2 = workValue2(numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2, playerPed, coords, workValue, flag3, numberValue, flag4)
  dataTable.InProgress = true
  numberValue2 = AttachEntityToEntity
  flag5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag5 = flag5()
  playerPed2 = workValue2
  playerPed3 = 0
  tableHelper = dataTable.hostage
  tableHelper = tableHelper.attachX
  playerPed4 = dataTable.hostage
  playerPed4 = playerPed4.attachY
  workValue6 = dataTable.hostage
  workValue6 = workValue6.attachZ
  flag7 = 0.5
  flag = 0.5
  flag2 = 0.0
  playerPed = false
  coords = false
  workValue = false
  flag3 = false
  numberValue = 2
  flag4 = false
  -- Beginner: Attach one entity to another entity.
  numberValue2(flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2, playerPed, coords, workValue, flag3, numberValue, flag4)
  dataTable.type = "hostage"
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a44fcfdd31".
eventRegistration(textValue2, cmgCall2)
eventRegistration = RegisterNetEvent
textValue2 = "61a80b5faf"
-- Beginner: this function handles network event "61a80b5faf".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2
  dataTable.InProgress = false
  dataTable.type = ""
  arg1 = DetachEntity
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  numberValue2 = true
  flag5 = false
  arg1(workValue2, numberValue2, flag5)
  arg1 = workValue3
  workValue2 = "reaction@shove"
  arg1(workValue2)
  arg1 = TaskPlayAnim
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  numberValue2 = "reaction@shove"
  flag5 = "shoved_back"
  playerPed2 = 8.0
  playerPed3 = -8.0
  tableHelper = -1
  playerPed4 = 0
  workValue6 = 0
  flag7 = false
  flag = false
  flag2 = false
  -- Beginner: Play an animation on a ped.
  arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
  arg1 = RemoveAnimDict
  workValue2 = "reaction@shove"
  arg1(workValue2)
  arg1 = Wait
  workValue2 = 250
  arg1(workValue2)
  arg1 = ClearPedSecondaryTask
  workValue2 = PlayerPedId
  workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2 = workValue2()
  arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "61a80b5faf".
eventRegistration(textValue2, cmgCall2)
eventRegistration = RegisterNetEvent
textValue2 = "f9b5306773"
-- Beginner: this function handles network event "f9b5306773".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2
  dataTable.InProgress = false
  dataTable.type = ""
  arg1 = SetEntityHealth
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  numberValue2 = 0
  arg1(workValue2, numberValue2)
  arg1 = DetachEntity
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  numberValue2 = true
  flag5 = false
  arg1(workValue2, numberValue2, flag5)
  arg1 = workValue3
  workValue2 = "anim@gangops@hostage@"
  arg1(workValue2)
  arg1 = TaskPlayAnim
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  numberValue2 = "anim@gangops@hostage@"
  flag5 = "victim_fail"
  playerPed2 = 8.0
  playerPed3 = -8.0
  tableHelper = -1
  playerPed4 = 168
  workValue6 = 0
  flag7 = false
  flag = false
  flag2 = false
  -- Beginner: Play an animation on a ped.
  arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
  arg1 = RemoveAnimDict
  workValue2 = "anim@gangops@hostage@"
  arg1(workValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9b5306773".
eventRegistration(textValue2, cmgCall2)
eventRegistration = RegisterNetEvent
textValue2 = "1283193220"
-- Beginner: this function handles network event "1283193220".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, workValue2, numberValue2, flag5
  dataTable.InProgress = false
  dataTable.type = ""
  arg1 = ClearPedSecondaryTask
  workValue2 = PlayerPedId
  workValue2, numberValue2, flag5 = workValue2()
  arg1(workValue2, numberValue2, flag5)
  arg1 = DetachEntity
  workValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue2 = workValue2()
  numberValue2 = true
  flag5 = false
  arg1(workValue2, numberValue2, flag5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1283193220".
eventRegistration(textValue2, cmgCall2)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2
  arg1 = dataTable.type
  if "agressor" == arg1 then
    arg1 = IsEntityPlayingAnim
    workValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workValue2 = workValue2()
    numberValue2 = dataTable.agressor
    numberValue2 = numberValue2.animDict
    flag5 = dataTable.agressor
    flag5 = flag5.anim
    playerPed2 = 3
    arg1 = arg1(workValue2, numberValue2, flag5, playerPed2)
    if not arg1 then
      arg1 = workValue3
      workValue2 = dataTable.agressor
      workValue2 = workValue2.animDict
      arg1(workValue2)
      arg1 = TaskPlayAnim
      workValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue2 = workValue2()
      numberValue2 = dataTable.agressor
      numberValue2 = numberValue2.animDict
      flag5 = dataTable.agressor
      flag5 = flag5.anim
      playerPed2 = 8.0
      playerPed3 = -8.0
      tableHelper = 100000
      playerPed4 = dataTable.agressor
      playerPed4 = playerPed4.flag
      workValue6 = 0
      flag7 = false
      flag = false
      flag2 = false
      -- Beginner: Play an animation on a ped.
      arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
      arg1 = RemoveAnimDict
      workValue2 = dataTable.agressor
      workValue2 = workValue2.animDict
      arg1(workValue2)
    end
  else
    arg1 = dataTable.type
    if "hostage" == arg1 then
      arg1 = IsEntityPlayingAnim
      workValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue2 = workValue2()
      numberValue2 = dataTable.hostage
      numberValue2 = numberValue2.animDict
      flag5 = dataTable.hostage
      flag5 = flag5.anim
      playerPed2 = 3
      arg1 = arg1(workValue2, numberValue2, flag5, playerPed2)
      if not arg1 then
        arg1 = workValue3
        workValue2 = dataTable.hostage
        workValue2 = workValue2.animDict
        arg1(workValue2)
        arg1 = TaskPlayAnim
        workValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workValue2 = workValue2()
        numberValue2 = dataTable.hostage
        numberValue2 = numberValue2.animDict
        flag5 = dataTable.hostage
        flag5 = flag5.anim
        playerPed2 = 8.0
        playerPed3 = -8.0
        tableHelper = 100000
        playerPed4 = dataTable.hostage
        playerPed4 = playerPed4.flag
        workValue6 = 0
        flag7 = false
        flag = false
        flag2 = false
        -- Beginner: Play an animation on a ped.
        arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
        arg1 = RemoveAnimDict
        workValue2 = dataTable.hostage
        workValue2 = workValue2.animDict
        arg1(workValue2)
      end
    end
  end
end
textValue2 = CMG
textValue2 = textValue2.createThreadOnTick
cmgCall2 = eventRegistration
flag6 = "Hostage Animation"
-- Beginner: Run a helper every game frame while this script is active.
textValue2(cmgCall2, flag6)

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2
  arg1 = dataTable.type
  if "agressor" == arg1 then
    arg1 = DisableControlAction
    workValue2 = 0
    numberValue2 = 24
    flag5 = true
    arg1(workValue2, numberValue2, flag5)
    arg1 = DisableControlAction
    workValue2 = 0
    numberValue2 = 25
    flag5 = true
    arg1(workValue2, numberValue2, flag5)
    arg1 = DisableControlAction
    workValue2 = 0
    numberValue2 = 47
    flag5 = true
    arg1(workValue2, numberValue2, flag5)
    arg1 = DisableControlAction
    workValue2 = 0
    numberValue2 = 58
    flag5 = true
    arg1(workValue2, numberValue2, flag5)
    arg1 = DisableControlAction
    workValue2 = 0
    numberValue2 = 21
    flag5 = true
    arg1(workValue2, numberValue2, flag5)
    arg1 = DisablePlayerFiring
    workValue2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    workValue2 = workValue2()
    numberValue2 = true
    arg1(workValue2, numberValue2)
    arg1 = workValue4
    workValue2 = "Press [G] to release, [H] to kill"
    arg1(workValue2)
    arg1 = IsEntityDead
    workValue2 = PlayerPedId
    workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2 = workValue2()
    arg1 = arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
    if arg1 then
      dataTable.type = ""
      dataTable.InProgress = false
      arg1 = workValue3
      workValue2 = "reaction@shove"
      arg1(workValue2)
      arg1 = TaskPlayAnim
      workValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue2 = workValue2()
      numberValue2 = "reaction@shove"
      flag5 = "shove_var_a"
      playerPed2 = 8.0
      playerPed3 = -8.0
      tableHelper = -1
      playerPed4 = 168
      workValue6 = 0
      flag7 = false
      flag = false
      flag2 = false
      -- Beginner: Play an animation on a ped.
      arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
      arg1 = RemoveAnimDict
      workValue2 = "reaction@shove"
      arg1(workValue2)
      arg1 = TriggerServerEvent
      workValue2 = "61a80b5faf"
      numberValue2 = dataTable.targetSrc
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "61a80b5faf".
      arg1(workValue2, numberValue2)
    end
    arg1 = IsDisabledControlJustPressed
    workValue2 = 0
    numberValue2 = 47
    arg1 = arg1(workValue2, numberValue2)
    if arg1 then
      dataTable.type = ""
      dataTable.InProgress = false
      arg1 = workValue3
      workValue2 = "reaction@shove"
      arg1(workValue2)
      arg1 = TaskPlayAnim
      workValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue2 = workValue2()
      numberValue2 = "reaction@shove"
      flag5 = "shove_var_a"
      playerPed2 = 8.0
      playerPed3 = -8.0
      tableHelper = -1
      playerPed4 = 168
      workValue6 = 0
      flag7 = false
      flag = false
      flag2 = false
      -- Beginner: Play an animation on a ped.
      arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
      arg1 = RemoveAnimDict
      workValue2 = "reaction@shove"
      arg1(workValue2)
      arg1 = TriggerServerEvent
      workValue2 = "61a80b5faf"
      numberValue2 = dataTable.targetSrc
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "61a80b5faf".
      arg1(workValue2, numberValue2)
    else
      arg1 = IsDisabledControlJustPressed
      workValue2 = 0
      numberValue2 = 74
      arg1 = arg1(workValue2, numberValue2)
      if arg1 then
        arg1 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg1 = arg1()
        workValue2 = dataTable.startTime
        arg1 = arg1 - workValue2
        workValue2 = 4000
        if arg1 > workValue2 then
          dataTable.type = ""
          dataTable.InProgress = false
          arg1 = workValue3
          workValue2 = "anim@gangops@hostage@"
          arg1(workValue2)
          arg1 = TaskPlayAnim
          workValue2 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue2 = workValue2()
          numberValue2 = "anim@gangops@hostage@"
          flag5 = "perp_fail"
          playerPed2 = 8.0
          playerPed3 = -8.0
          tableHelper = -1
          playerPed4 = 168
          workValue6 = 0
          flag7 = false
          flag = false
          flag2 = false
          -- Beginner: Play an animation on a ped.
          arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3, tableHelper, playerPed4, workValue6, flag7, flag, flag2)
          arg1 = RemoveAnimDict
          workValue2 = "anim@gangops@hostage@"
          arg1(workValue2)
          arg1 = TriggerServerEvent
          workValue2 = "f9b5306773"
          numberValue2 = dataTable.targetSrc
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9b5306773".
          arg1(workValue2, numberValue2)
          arg1 = Wait
          workValue2 = 100
          arg1(workValue2)
          arg1 = SetPedShootsAtCoord
          workValue2 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue2 = workValue2()
          numberValue2 = 0.0
          flag5 = 0.0
          playerPed2 = 0.0
          playerPed3 = false
          arg1(workValue2, numberValue2, flag5, playerPed2, playerPed3)
        end
      end
    end
  else
    arg1 = dataTable.type
    if "hostage" == arg1 then
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 21
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 24
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 25
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 47
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 58
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 263
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 264
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 257
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 140
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 141
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 142
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 143
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 75
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 27
      numberValue2 = 75
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 22
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 32
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 268
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 33
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 269
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 34
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 270
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 35
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
      arg1 = DisableControlAction
      workValue2 = 0
      numberValue2 = 271
      flag5 = true
      arg1(workValue2, numberValue2, flag5)
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
flag6 = textValue2
textValue = "Host Animations"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(flag6, textValue)
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: flag6; parameters: none) ===
function flag6()
  local arg1, workValue2
  arg1 = dataTable.InProgress
  return arg1
end
cmgCall2.takeHostageInProgress = flag6
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: flag6; parameters: none) ===
function flag6()
  local arg1, workValue2
  arg1 = dataTable.targetSrc
  workValue2 = dataTable.type
  return arg1, workValue2
end
cmgCall2.getTakeHostagePlayerAndType = flag6
