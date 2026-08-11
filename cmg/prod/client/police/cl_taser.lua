--[[
    LEVEL 1 BEGINNER GUIDE — Taser
    ===================================

    File: cmg/prod/client/police/cl_taser.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Taser feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 17
      * Background threads: 0
      * Always-running loops: 6
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
local dataTable, stringHelper, mathHelper, mathHelper3, localEventCall, eventRegistration, textValue3, textValue4, workValue5, cmgCall2, flag2, textValue, workValue, cmgCall, workValue2
dataTable = {}
stringHelper = tostring
mathHelper = "X"
mathHelper3 = math
mathHelper3 = mathHelper3.random
localEventCall = 21202574
eventRegistration = 49202574
mathHelper3 = mathHelper3(localEventCall, eventRegistration)
mathHelper = mathHelper .. mathHelper3
stringHelper = stringHelper(mathHelper)
dataTable.serialNumber = stringHelper
stringHelper = tostring
mathHelper = math
mathHelper = mathHelper.random
mathHelper3 = 95
localEventCall = 99
mathHelper, mathHelper3, localEventCall, eventRegistration, textValue3, textValue4, workValue5, cmgCall2, flag2, textValue, workValue, cmgCall, workValue2 = mathHelper(mathHelper3, localEventCall)
stringHelper = stringHelper(mathHelper, mathHelper3, localEventCall, eventRegistration, textValue3, textValue4, workValue5, cmgCall2, flag2, textValue, workValue, cmgCall, workValue2)
dataTable.batteryStatus = stringHelper
dataTable.cartridges = 2
stringHelper = {}
stringHelper.active = false
stringHelper.ped = 0
stringHelper.serverId = 0
dataTable.reactivate1 = stringHelper
stringHelper = {}
stringHelper.active = false
stringHelper.ped = 0
stringHelper.serverId = 0
dataTable.reactivate2 = stringHelper
stringHelper = {}
mathHelper = 911657153
mathHelper3 = 1843015545
stringHelper[1] = mathHelper
stringHelper[2] = mathHelper3
dataTable.hashes = stringHelper
stringHelper = true
mathHelper = false
mathHelper3 = nil
localEventCall = TriggerEvent
eventRegistration = "chat:addSuggestion"
textValue3 = "/rt"
textValue4 = "Reload your Taser"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(eventRegistration, textValue3, textValue4)
localEventCall = RegisterNetEvent
eventRegistration = "4a97bda3f9"
-- Beginner: this function handles network event "4a97bda3f9".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2
  arg2 = true
  mathHelper = arg2
  mathHelper3 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4a97bda3f9".
localEventCall(eventRegistration, textValue3)
-- Beginner: this function handles network event "4a97bda3f9".

-- === HELPER FUNCTION: localEventCall(arg1) ===
function localEventCall(arg1)
  local arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8
  arg2 = RequestStreamedTextureDict
  textValue2 = "CHAR_ANDREAS"
  flag5 = true
  arg2(textValue2, flag5)
  while true do
    arg2 = HasStreamedTextureDictLoaded
    textValue2 = "CHAR_ANDREAS"
    arg2 = arg2(textValue2)
    if arg2 then
      break
    end
    arg2 = Wait
    textValue2 = 0
    arg2(textValue2)
  end
  arg2 = BeginTextCommandThefeedPost
  textValue2 = "STRING"
  arg2(textValue2)
  arg2 = AddTextComponentSubstringPlayerName
  textValue2 = arg1
  arg2(textValue2)
  arg2 = EndTextCommandThefeedPostMessagetext
  textValue2 = "CHAR_ANDREAS"
  flag5 = "CHAR_ANDREAS"
  flag6 = false
  dataTable2 = 1
  flag7 = "Taser X2"
  flag8 = "CID"
  arg2(textValue2, flag5, flag6, dataTable2, flag7, flag8)
  arg2 = EndTextCommandThefeedPostTicker
  textValue2 = false
  flag5 = false
  arg2(textValue2, flag5)
end
eventRegistration = RegisterNetEvent
textValue3 = "2a61fb1af7"
-- Beginner: this function handles network event "2a61fb1af7".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8
  arg1 = CMG
  arg1 = arg1.isStaffedOnClient
  arg1 = arg1()
  if not arg1 then
    arg1 = localEventCall
    arg2 = "You are currently being ~b~activated~w~."
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "You are currently being ~b~activated~w~.".
    arg1(arg2)
    arg1 = TriggerEvent
    arg2 = "TriggerTazer"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "TriggerTazer".
    arg1(arg2)
    arg1 = SetPedToRagdoll
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    textValue2 = 5000
    flag5 = 5000
    flag6 = 0
    dataTable2 = false
    flag7 = false
    flag8 = false
    arg1(arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2a61fb1af7".
eventRegistration(textValue3, textValue4)
eventRegistration = RegisterNetEvent
textValue3 = "e33e58b9e2"
-- Beginner: this function handles network event "e33e58b9e2".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, textValue2, flag5
  arg1 = dataTable.cartridges
  if 2 == arg1 then
    arg1 = localEventCall
    arg2 = [[
~r~MODE: ~w~ARC

~y~|25|     |25|

]]
    arg1(arg2)
  else
    arg1 = dataTable.cartridges
    if 1 == arg1 then
      arg1 = localEventCall
      arg2 = [[
~r~MODE: ~w~ARC

~y~|25|

]]
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      arg1(arg2)
    else
      arg1 = localEventCall
      arg2 = [[
~r~MODE: ~w~ARC

~y~

]]
      arg1(arg2)
    end
  end
  arg1 = TriggerServerEvent
  arg2 = "a77761c607"
  textValue2 = GetEntityCoords
  flag5 = CMG
  flag5 = flag5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag5 = flag5()
  -- Beginner: result below is entityCoords.
  textValue2 = textValue2(flag5)
  flag5 = "arcsound"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a77761c607".
  arg1(arg2, textValue2, flag5)
  arg1 = false
  stringHelper = arg1
  arg1 = SetTimeout
  arg2 = 4000

  -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
  function textValue2()
    local flag, waitCall
    flag = true
    stringHelper = flag
  end
  arg1(arg2, textValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e33e58b9e2".
eventRegistration(textValue3, textValue4)
eventRegistration = RegisterNetEvent
textValue3 = "playTaserSoundClient"
-- Beginner: this function handles network event "playTaserSoundClient".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local textValue2, flag5, flag6, dataTable2
  textValue2 = GetEntityCoords
  flag5 = CMG
  flag5 = flag5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag5 = flag5()
  flag6 = true
  -- Beginner: result below is entityCoords.
  textValue2 = textValue2(flag5, flag6)
  flag5 = textValue2 - arg1
  flag5 = #flag5
  if flag5 <= 15 then
    flag6 = SendNUIMessage
    dataTable2 = {}
    dataTable2.transactionType = arg2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    flag6(dataTable2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "playTaserSoundClient".
eventRegistration(textValue3, textValue4)
eventRegistration = RegisterNetEvent
textValue3 = "26fc9f8bca"
-- Beginner: this function handles network event "26fc9f8bca".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = false
  mathHelper = arg1
  arg1 = 0
  mathHelper3 = arg1
  arg1 = localEventCall
  arg2 = "Your taser ~b~barbs ~w~have been ~b~disconnected~w~."
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "26fc9f8bca".
eventRegistration(textValue3, textValue4)
eventRegistration = RegisterNetEvent
textValue3 = "e7da235078"
-- Beginner: this function handles network event "e7da235078".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, textValue2
  arg2 = dataTable.reactivate1
  arg2 = arg2.serverId
  if arg2 == arg1 then
    arg2 = {}
    arg2.active = false
    arg2.ped = 0
    arg2.serverId = 0
    dataTable.reactivate1 = arg2
    arg2 = drawNativeNotification
    textValue2 = "Barbs Ripped Out - ~b~Cartridge 1"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg2(textValue2)
  else
    arg2 = dataTable.reactivate2
    arg2 = arg2.serverId
    if arg2 == arg1 then
      arg2 = {}
      arg2.active = false
      arg2.ped = 0
      arg2.serverId = 0
      dataTable.reactivate2 = arg2
      arg2 = drawNativeNotification
      textValue2 = "Barbs Ripped Out - ~b~Cartridge 2"
      arg2(textValue2)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e7da235078".
eventRegistration(textValue3, textValue4)
eventRegistration = "weapons@pistol@ap_pistol_str"
textValue3 = "reload_aim"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4
  arg1 = table
  arg1 = arg1.has
  arg2 = dataTable.hashes
  textValue2 = GetSelectedPedWeapon
  flag5 = CMG
  flag5 = flag5.getPlayerPed
  flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4 = flag5()
  textValue2, flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4 = textValue2(flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4)
  arg1 = arg1(arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4)
  if arg1 then
    arg1 = dataTable.cartridges
    if arg1 < 2 then
      arg1 = CMG
      arg1 = arg1.loadAnimDict
      arg2 = eventRegistration
      -- Beginner: Load a GTA animation dictionary before using it.
      arg1(arg2)
      arg1 = TaskPlayAnim
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      textValue2 = eventRegistration
      flag5 = textValue3
      flag6 = 8.0
      dataTable2 = -8.0
      flag7 = -1
      flag8 = 49
      numberValue2 = 1.0
      flag9 = false
      flag3 = false
      flag4 = false
      -- Beginner: Play an animation on a ped.
      arg1(arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4)
      arg1 = dataTable.cartridges
      if 0 == arg1 then
        arg1 = 2
        if arg1 then
          goto flow_label_40
        end
      end
      arg1 = 1
      ::flow_label_40::
      arg2 = Citizen
      arg2 = arg2.CreateThread

      -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
      function textValue2()
        local flag, waitCall, mathHelper2, workValue3, workValue4, numberValue
        flag = GetAnimDuration
        waitCall = eventRegistration
        mathHelper2 = textValue3
        flag = flag(waitCall, mathHelper2)
        waitCall = Citizen
        waitCall = waitCall.Wait
        mathHelper2 = math
        mathHelper2 = mathHelper2.floor
        workValue3 = flag * 1000.0
        mathHelper2 = mathHelper2(workValue3)
        workValue3 = arg1
        mathHelper2 = mathHelper2 * workValue3
        waitCall(mathHelper2)
        waitCall = RemoveAnimDict
        mathHelper2 = eventRegistration
        waitCall(mathHelper2)
        waitCall = StopAnimTask
        mathHelper2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        mathHelper2 = mathHelper2()
        workValue3 = eventRegistration
        workValue4 = textValue3
        numberValue = 1.0
        waitCall(mathHelper2, workValue3, workValue4, numberValue)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg2(textValue2)
    end
    arg1 = MakePedReload
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4 = arg2()
    arg1(arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4)
    arg1 = dataTable.cartridges
    if 0 == arg1 then
      dataTable.cartridges = 2
      arg1 = dataTable.reactivate1
      arg1 = arg1.active
      if arg1 then
        arg1 = TriggerServerEvent
        arg2 = "47f611b0b4"
        textValue2 = dataTable.reactivate1
        textValue2 = textValue2.serverId
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "47f611b0b4".
        arg1(arg2, textValue2)
      end
      arg1 = dataTable.reactivate2
      arg1 = arg1.active
      if arg1 then
        arg1 = TriggerServerEvent
        arg2 = "47f611b0b4"
        textValue2 = dataTable.reactivate2
        textValue2 = textValue2.serverId
        arg1(arg2, textValue2)
      end
      arg1 = {}
      arg1.active = false
      arg1.ped = 0
      arg1.serverId = 0
      dataTable.reactivate1 = arg1
      arg1 = {}
      arg1.active = false
      arg1.ped = 0
      arg1.serverId = 0
      dataTable.reactivate2 = arg1
      arg1 = drawNativeNotification
      arg2 = "Taser reload successful"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg1(arg2)
      arg1 = localEventCall
      arg2 = [[
~r~MODE: ~w~MANUAL

~y~|25|     |25|

]]
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      arg1(arg2)
    else
      arg1 = dataTable.cartridges
      if 1 == arg1 then
        dataTable.cartridges = 2
        arg1 = {}
        arg1.active = false
        arg1.ped = 0
        arg1.serverId = 0
        dataTable.reactivate1 = arg1
        arg1 = drawNativeNotification
        arg2 = "Taser reload successful"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg1(arg2)
        arg1 = localEventCall
        arg2 = [[
~r~MODE: ~w~ARC

~y~|25|     |25|

]]
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        arg1(arg2)
      end
    end
  else
    arg1 = localEventCall
    arg2 = "~r~Error! ~w~You are not holding a taser."
    arg1(arg2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, textValue2, flag5, flag6, dataTable2, flag7
  arg2 = arg1.vehicle
  if 0 ~= arg2 then
    arg2 = arg1.vehicle
    if nil ~= arg2 then
      goto flow_label_249
    end
  end
  arg2 = dataTable.reactivate1
  arg2 = arg2.active
  if arg2 then
    arg2 = GetEntityCoords
    textValue2 = dataTable.reactivate1
    textValue2 = textValue2.ped
    -- Beginner: result below is entityCoords.
    arg2 = arg2(textValue2)
    textValue2 = arg1.playerCoords
    textValue2 = arg2 - textValue2
    textValue2 = #textValue2
    if textValue2 > 30.0 then
      textValue2 = TriggerServerEvent
      flag5 = "47f611b0b4"
      flag6 = dataTable.reactivate1
      flag6 = flag6.serverId
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "47f611b0b4".
      textValue2(flag5, flag6)
      textValue2 = {}
      textValue2.active = false
      textValue2.ped = 0
      textValue2.serverId = 0
      dataTable.reactivate1 = textValue2
      textValue2 = drawNativeNotification
      flag5 = "Barbs Disconnected - ~b~Cartridge 1"
      -- Beginner: Show a GTA-style notification/help prompt.
      textValue2(flag5)
    end
  else
    arg2 = dataTable.reactivate2
    arg2 = arg2.active
    if arg2 then
      arg2 = GetEntityCoords
      textValue2 = dataTable.reactivate2
      textValue2 = textValue2.ped
      -- Beginner: result below is entityCoords.
      arg2 = arg2(textValue2)
      textValue2 = arg1.playerCoords
      textValue2 = arg2 - textValue2
      textValue2 = #textValue2
      if textValue2 > 30.0 then
        textValue2 = TriggerServerEvent
        flag5 = "47f611b0b4"
        flag6 = dataTable.reactivate2
        flag6 = flag6.serverId
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "47f611b0b4".
        textValue2(flag5, flag6)
        textValue2 = {}
        textValue2.active = false
        textValue2.ped = 0
        textValue2.serverId = 0
        dataTable.reactivate2 = textValue2
        textValue2 = drawNativeNotification
        flag5 = "Barbs Disconnected - ~b~Cartridge 2"
        -- Beginner: Show a GTA-style notification/help prompt.
        textValue2(flag5)
      end
    end
  end
  arg2 = table
  arg2 = arg2.has
  textValue2 = dataTable.hashes
  flag5 = arg1.weapon
  arg2 = arg2(textValue2, flag5)
  if arg2 then
    arg2 = IsControlJustPressed
    textValue2 = 1
    flag5 = 308
    arg2 = arg2(textValue2, flag5)
    if arg2 then
      arg2 = dataTable.reactivate1
      arg2 = arg2.active
      if true == arg2 then
        arg2 = drawNativeNotification
        textValue2 = "Reactivated cartridge: ~INPUT_SELECT_WEAPON_UNARMED~"
        arg2(textValue2)
        arg2 = TriggerServerEvent
        textValue2 = "a77761c607"
        flag5 = arg1.playerCoords
        flag6 = "reactivate"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a77761c607".
        arg2(textValue2, flag5, flag6)
        arg2 = TriggerServerEvent
        textValue2 = "daa8f00d6a"
        flag5 = dataTable.reactivate1
        flag5 = flag5.serverId
        arg2(textValue2, flag5)
      end
    else
      arg2 = IsControlJustPressed
      textValue2 = 1
      flag5 = 307
      arg2 = arg2(textValue2, flag5)
      if arg2 then
        arg2 = dataTable.reactivate2
        arg2 = arg2.active
        if true == arg2 then
          arg2 = drawNativeNotification
          textValue2 = "Reactivated cartridge: \t~INPUT_SELECT_WEAPON_MELEE~"
          -- Beginner: Show a GTA-style notification/help prompt.
          arg2(textValue2)
          arg2 = TriggerServerEvent
          textValue2 = "a77761c607"
          flag5 = arg1.playerCoords
          flag6 = "reactivate"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a77761c607".
          arg2(textValue2, flag5, flag6)
          arg2 = TriggerServerEvent
          textValue2 = "daa8f00d6a"
          flag5 = dataTable.reactivate2
          flag5 = flag5.serverId
          arg2(textValue2, flag5)
        end
      else
        arg2 = IsControlJustPressed
        textValue2 = 1
        flag5 = 121
        arg2 = arg2(textValue2, flag5)
        if arg2 then
          arg2 = stringHelper
          if arg2 then
            arg2 = TriggerServerEvent
            textValue2 = "4ec155a0ea"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4ec155a0ea".
            arg2(textValue2)
        end
        else
          arg2 = IsControlJustPressed
          textValue2 = 0
          flag5 = 45
          arg2 = arg2(textValue2, flag5)
          if arg2 then
            arg2 = textValue4
            arg2()
          end
        end
      end
    end
    arg2 = dataTable.cartridges
    if arg2 < 1 then
      arg2 = SetPlayerCanDoDriveBy
      textValue2 = arg1.playerPed
      flag5 = false
      arg2(textValue2, flag5)
      arg2 = DisablePlayerFiring
      textValue2 = arg1.playerPed
      flag5 = true
      arg2(textValue2, flag5)
      arg2 = IsDisabledControlJustPressed
      textValue2 = 0
      flag5 = 24
      arg2 = arg2(textValue2, flag5)
      if not arg2 then
        arg2 = IsDisabledControlJustPressed
        textValue2 = 0
        flag5 = 257
        arg2 = arg2(textValue2, flag5)
      end
      if arg2 then
        arg2 = notify
        textValue2 = "~r~Your taser is out of cartridges. Please reload the electroshock bullets."
        -- Beginner: Show a notification to the player.
        arg2(textValue2)
        arg2 = PlaySoundFrontend
        textValue2 = -1
        flag5 = "HACKING_CLICK_BAD"
        flag6 = ""
        dataTable2 = false
        arg2(textValue2, flag5, flag6, dataTable2)
      end
    else
      arg2 = IsPedShooting
      textValue2 = arg1.playerPed
      arg2 = arg2(textValue2)
      if arg2 then
        arg2 = TriggerServerEvent
        textValue2 = "a77761c607"
        flag5 = arg1.playerCoords
        flag6 = "taser"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a77761c607".
        arg2(textValue2, flag5, flag6)
        arg2 = dataTable.cartridges
        arg2 = arg2 - 1
        dataTable.cartridges = arg2
        arg2 = dataTable.cartridges
        if 0 == arg2 then
          arg2 = notify
          textValue2 = "~r~Your taser is out of cartridges. Please reload the electroshock bullets."
          -- Beginner: Show a notification to the player.
          arg2(textValue2)
        end
        arg2 = GetEntityPlayerIsFreeAimingAt
        textValue2 = arg1.playerId
        arg2, textValue2 = arg2(textValue2)
        if arg2 then
          flag5 = IsEntityAPed
          flag6 = arg1.playerPed
          flag5 = flag5(flag6)
          if flag5 then
            flag5 = CMG
            flag5 = flag5.getPedServerId
            flag6 = textValue2
            flag5 = flag5(flag6)
            if nil ~= flag5 then
              flag6 = TriggerServerEvent
              dataTable2 = "960b66cdca"
              flag7 = flag5
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "960b66cdca".
              flag6(dataTable2, flag7)
              flag6 = dataTable.cartridges
              if 1 == flag6 then
                flag6 = drawNativeNotification
                dataTable2 = "Press ~INPUT_REPLAY_BACK~ to Reactivate"
                -- Beginner: Show a GTA-style notification/help prompt.
                flag6(dataTable2)
                flag6 = localEventCall
                dataTable2 = [[
~r~MODE: ~w~MANUAL

~y~|25|

]]
                -- Beginner: Register a network event handler that the server/other clients can trigger.
                flag6(dataTable2)
                flag6 = dataTable.reactivate1
                flag6 = flag6.active
                if not flag6 then
                  flag6 = dataTable.reactivate1
                  flag6.active = true
                  flag6 = dataTable.reactivate1
                  flag6.ped = textValue2
                  flag6 = dataTable.reactivate1
                  flag6.serverId = flag5
                end
              else
                flag6 = drawNativeNotification
                dataTable2 = "Press ~INPUT_REPLAY_ADVANCE~ to Reactivate"
                -- Beginner: Show a GTA-style notification/help prompt.
                flag6(dataTable2)
                flag6 = localEventCall
                dataTable2 = [[
~r~MODE: ~w~MANUAL

Reload Required]]
                -- Beginner: Register a network event handler that the server/other clients can trigger.
                flag6(dataTable2)
                flag6 = dataTable.reactivate2
                flag6 = flag6.active
                if not flag6 then
                  flag6 = dataTable.reactivate2
                  flag6.active = true
                  flag6 = dataTable.reactivate2
                  flag6.ped = textValue2
                  flag6 = dataTable.reactivate2
                  flag6.serverId = flag5
                end
              end
            end
          end
        end
      end
    end
  end
  ::flow_label_249::
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
flag2 = workValue5
textValue = "Taser"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(flag2, textValue)
cmgCall2 = false
flag2 = false

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, textValue2, flag5, flag6, dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  textValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  textValue2 = textValue2()
  while true do
    flag5 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag5 = flag5()
    flag5 = flag5 - arg2
    if not (arg1 > flag5) then
      break
    end
    flag5 = cmgCall2
    if flag5 then
      break
    end
    flag5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    flag5 = flag5()
    flag6 = IsPedRunning
    dataTable2 = flag5
    flag6 = flag6(dataTable2)
    if not flag6 then
      flag6 = IsPedJumping
      dataTable2 = flag5
      flag6 = flag6(dataTable2)
      if not flag6 then
        flag6 = GetEntitySpeed
        dataTable2 = flag5
        -- Beginner: result below is speed.
        flag6 = flag6(dataTable2)
        dataTable2 = 2.2
        if not (flag6 > dataTable2) then
          goto flow_label_55
        end
      end
    end
    if 0 == textValue2 then
      flag6 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag6 = flag6()
      textValue2 = flag6
    else
      flag6 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag6 = flag6()
      flag6 = flag6 - textValue2
      dataTable2 = 500
      if flag6 > dataTable2 then
        flag6 = SetPedToRagdoll
        dataTable2 = flag5
        flag7 = 2500
        flag8 = 2500
        numberValue2 = 0
        flag9 = false
        flag3 = false
        flag4 = false
        flag6(dataTable2, flag7, flag8, numberValue2, flag9, flag3, flag4)
        goto flow_label_58
        ::flow_label_55::
        flag6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        flag6 = flag6()
        textValue2 = flag6
      end
    end
    ::flow_label_58::
    flag6 = Citizen
    flag6 = flag6.Wait
    dataTable2 = 0
    flag6(dataTable2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, textValue2, flag5, flag6
  arg1 = true
  flag2 = arg1
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = RequestAnimSet
  textValue2 = "move_m@drunk@verydrunk"
  arg2(textValue2)
  while true do
    arg2 = HasAnimSetLoaded
    textValue2 = "move_m@drunk@verydrunk"
    arg2 = arg2(textValue2)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    textValue2 = 0
    arg2(textValue2)
  end
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  textValue2 = false
  arg2(textValue2)
  arg2 = SetPedMovementClipset
  textValue2 = arg1
  flag5 = "move_m@drunk@verydrunk"
  flag6 = 1
  arg2(textValue2, flag5, flag6)
  arg2 = RemoveAnimSet
  textValue2 = "move_m@drunk@verydrunk"
  arg2(textValue2)
  arg2 = SetTimecycleModifier
  textValue2 = "spectator5"
  arg2(textValue2)
  arg2 = SetPedIsDrunk
  textValue2 = arg1
  flag5 = true
  arg2(textValue2, flag5)
  arg2 = textValue
  textValue2 = 15000
  arg2(textValue2)
  arg2 = SetPedMotionBlur
  textValue2 = arg1
  flag5 = true
  arg2(textValue2, flag5)
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  textValue2 = true
  arg2(textValue2)
  arg2 = Citizen
  arg2 = arg2.CreateThread

  -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
  function textValue2()
    local flag, waitCall, mathHelper2, workValue3
    flag = mathHelper
    if flag then
      while true do
        flag = mathHelper
        if not flag then
          break
        end
        flag = DisableControlAction
        waitCall = 0
        mathHelper2 = 140
        workValue3 = true
        flag(waitCall, mathHelper2, workValue3)
        flag = IsControlJustPressed
        waitCall = 1
        mathHelper2 = 38
        flag = flag(waitCall, mathHelper2)
        if flag then
          flag = false
          mathHelper = flag
          flag = mathHelper3
          if flag then
            flag = mathHelper3
            if flag > 0 then
              flag = TriggerServerEvent
              waitCall = "778f5e4153"
              mathHelper2 = mathHelper3
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "778f5e4153".
              flag(waitCall, mathHelper2)
            end
          end
          flag = 0
          mathHelper3 = flag
          flag = localEventCall
          waitCall = "Your ~b~barbs ~w~have now been ~b~ripped out~w~."
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Your ~b~barbs ~w~have now been ~b~ripped out~w~.".
          flag(waitCall)
        end
        flag = Wait
        waitCall = 0
        flag(waitCall)
      end
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(textValue2)
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  while true do
    textValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue2 = textValue2()
    textValue2 = textValue2 - arg2
    flag5 = 60000
    if not (textValue2 < flag5) then
      break
    end
    textValue2 = cmgCall2
    if textValue2 then
      break
    end
    textValue2 = Citizen
    textValue2 = textValue2.Wait
    flag5 = 0
    textValue2(flag5)
  end
  textValue2 = ClearTimecycleModifier
  textValue2()
  textValue2 = ResetScenarioTypesEnabled
  textValue2()
  textValue2 = ResetPedMovementClipset
  flag5 = arg1
  flag6 = 0
  textValue2(flag5, flag6)
  textValue2 = SetPedIsDrunk
  flag5 = arg1
  flag6 = false
  textValue2(flag5, flag6)
  textValue2 = SetPedMotionBlur
  flag5 = arg1
  flag6 = false
  textValue2(flag5, flag6)
  textValue2 = false
  cmgCall2 = textValue2
  textValue2 = false
  flag2 = textValue2
end
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2
  arg1 = true
  cmgCall2 = arg1
end
cmgCall.setStunExitsEarly = workValue2
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2
  arg1 = flag2
  return arg1
end
cmgCall.hasCustomStunEffect = workValue2
cmgCall = Citizen
cmgCall = cmgCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2, textValue2
  arg1 = SetPedMinGroundTimeForStungun
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  textValue2 = 15000
  arg1(arg2, textValue2)
  while true do
    arg1 = IsPedBeingStunned
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    textValue2 = 0
    arg1 = arg1(arg2, textValue2)
    if arg1 then
      arg1 = workValue
      arg1()
    end
    arg1 = Wait
    arg2 = 100
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall(workValue2)
