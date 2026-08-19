--[[
    LEVEL 1 BEGINNER GUIDE — Copblips
    ======================================

    File: cmg/prod/client/police/cl_copblips.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Copblips feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
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
local stateFlag, dataCollection, dataCollection2, number2, dataCollection3, dataCollection4, stateFlag4, stateFlag5, stateFlag6, workingValue26, workingValue, workingValue3, workingValue5, workingValue6, eventHandler, text, cmgOperation, serverId, eventHandler2, text2, workingValue14
stateFlag = false
dataCollection = {}
dataCollection2 = {}
number2 = 0
dataCollection3 = {}
dataCollection4 = {}
stateFlag4 = false
stateFlag5 = false
stateFlag6 = false

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
function workingValue26()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, workingValue23, workingValue24
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    workingValue23 = DoesBlipExist
    workingValue24 = localValue6
    workingValue23 = workingValue23(workingValue24)
    if workingValue23 then
      workingValue23 = RemoveBlip
      workingValue24 = localValue6
      workingValue23(workingValue24)
    end
  end
  localValue1 = {}
  dataCollection = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, workingValue23, workingValue24, workingValue25, number3, workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8
  if localValue1 then
    localValue2 = dataCollection2
    localValue2 = localValue2[localValue1]
    if localValue2 then
      localValue2 = pairs
      localValue3 = dataCollection2
      localValue3 = localValue3[localValue1]
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, workingValue23 in localValue2, localValue3, localValue4, localValue5 do
        workingValue24 = DoesBlipExist
        workingValue25 = workingValue23
        workingValue24 = workingValue24(workingValue25)
        if workingValue24 then
          workingValue24 = RemoveBlip
          workingValue25 = workingValue23
          workingValue24(workingValue25)
        end
      end
    end
    localValue2 = dataCollection2
    localValue2[localValue1] = nil
  else
    localValue2 = pairs
    localValue3 = dataCollection2
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, workingValue23 in localValue2, localValue3, localValue4, localValue5 do
      workingValue24 = pairs
      workingValue25 = workingValue23
      workingValue24, workingValue25, number3, workingValue2 = workingValue24(workingValue25)
      for workingValue4, stateFlag3 in workingValue24, workingValue25, number3, workingValue2 do
        workingValue7 = DoesBlipExist
        workingValue8 = stateFlag3
        workingValue7 = workingValue7(workingValue8)
        if workingValue7 then
          workingValue7 = RemoveBlip
          workingValue8 = stateFlag3
          workingValue7(workingValue8)
        end
      end
    end
    localValue2 = {}
    dataCollection2 = localValue2
  end
  localValue2 = {}
  dataCollection3 = localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function workingValue3(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local workingValue23, workingValue24, workingValue25, number3
  workingValue23 = DoesBlipExist
  workingValue24 = localValue1
  workingValue23 = workingValue23(workingValue24)
  if not workingValue23 then
    workingValue23 = AddBlipForEntity
    workingValue24 = localValue2
    -- Beginner: result below is blipHandle.
    workingValue23 = workingValue23(workingValue24)
    workingValue24 = table
    workingValue24 = workingValue24.insert
    workingValue25 = dataCollection
    number3 = workingValue23
    workingValue24(workingValue25, number3)
    workingValue24 = SetBlipSprite
    workingValue25 = workingValue23
    number3 = localValue5 or number3
    if not localValue5 then
      number3 = 1
    end
    workingValue24(workingValue25, number3)
    workingValue24 = SetBlipScale
    workingValue25 = workingValue23
    number3 = 0.85
    workingValue24(workingValue25, number3)
    workingValue24 = SetBlipAlpha
    workingValue25 = workingValue23
    number3 = 255
    workingValue24(workingValue25, number3)
    workingValue24 = SetBlipColour
    workingValue25 = workingValue23
    number3 = localValue3
    workingValue24(workingValue25, number3)
    workingValue24 = ShowHeadingIndicatorOnBlip
    workingValue25 = workingValue23
    number3 = true
    workingValue24(workingValue25, number3)
  else
    workingValue23 = GetEntityHealth
    workingValue24 = localValue2
    -- Beginner: result below is health.
    workingValue23 = workingValue23(workingValue24)
    if workingValue23 > 102 then
      workingValue23 = SetBlipSprite
      workingValue24 = localValue1
      workingValue25 = localValue5 or workingValue25
      if not localValue5 then
        workingValue25 = 1
      end
      workingValue23(workingValue24, workingValue25)
    else
      workingValue23 = SetBlipSprite
      workingValue24 = localValue1
      workingValue25 = localValue5 or workingValue25
      if not localValue5 then
        workingValue25 = 274
      end
      workingValue23(workingValue24, workingValue25)
    end
    workingValue23 = SetBlipScale
    workingValue24 = localValue1
    workingValue25 = 0.85
    workingValue23(workingValue24, workingValue25)
    workingValue23 = SetBlipAlpha
    workingValue24 = localValue1
    workingValue25 = 255
    workingValue23(workingValue24, workingValue25)
    workingValue23 = SetBlipColour
    workingValue24 = localValue1
    workingValue25 = localValue3
    workingValue23(workingValue24, workingValue25)
    workingValue23 = ShowHeadingIndicatorOnBlip
    workingValue24 = localValue1
    workingValue25 = true
    workingValue23(workingValue24, workingValue25)
    workingValue23 = stateFlag4
    if workingValue23 then
      workingValue23 = SetBlipCategory
      workingValue24 = localValue1
      workingValue25 = 7
      workingValue23(workingValue24, workingValue25)
      workingValue23 = BeginTextCommandSetBlipName
      workingValue24 = "STRING"
      workingValue23(workingValue24)
      workingValue23 = AddTextComponentSubstringPlayerName
      workingValue24 = localValue6 or workingValue24
      if not localValue6 then
        workingValue24 = CMG
        workingValue24 = workingValue24.getPlayerName
        workingValue25 = localValue4
        workingValue24 = workingValue24(workingValue25)
      end
      workingValue23(workingValue24)
      workingValue23 = EndTextCommandSetBlipName
      workingValue24 = localValue1
      workingValue23(workingValue24)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = CMG
  localValue3 = localValue3.isStaffRankShowingForPlayer
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = false
    return localValue3
  end
  localValue3 = IsEntityVisible
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.clientGetPlayerIsStaff
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    localValue3 = not localValue3
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function workingValue6(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local workingValue23, workingValue24, workingValue25, number3, workingValue2, workingValue4
  workingValue23 = localValue5 or nil
  if localValue5 then
    workingValue23 = dataCollection4
    workingValue23 = workingValue23[localValue5]
  end
  if localValue5 then
    workingValue24 = dataCollection4
    workingValue24[localValue5] = localValue1
  end
  workingValue24 = AddBlipForCoord
  workingValue25 = localValue1.x
  number3 = localValue1.y
  workingValue2 = localValue1.z
  -- Beginner: result below is blipHandle.
  workingValue24 = workingValue24(workingValue25, number3, workingValue2)
  if workingValue23 then
    workingValue25 = dataCollection3
    number3 = localValue1 - workingValue23
    workingValue25[workingValue24] = number3
  end
  workingValue25 = dataCollection2
  workingValue25 = workingValue25[localValue6]
  if not workingValue25 then
    workingValue25 = dataCollection2
    number3 = {}
    workingValue25[localValue6] = number3
  end
  workingValue25 = table
  workingValue25 = workingValue25.insert
  number3 = dataCollection2
  number3 = number3[localValue6]
  workingValue2 = workingValue24
  workingValue25(number3, workingValue2)
  if 0 == localValue3 then
    workingValue25 = 1
    if "taggedprisoners" == localValue6 then
      workingValue25 = 280
    elseif "vigilante" == localValue6 then
      workingValue25 = 774
    elseif 5 == localValue4 then
      workingValue25 = 15
    end
    number3 = SetBlipSprite
    workingValue2 = workingValue24
    workingValue4 = workingValue25
    number3(workingValue2, workingValue4)
  else
    workingValue25 = SetBlipSprite
    number3 = workingValue24
    workingValue2 = 274
    workingValue25(number3, workingValue2)
  end
  workingValue25 = SetBlipScale
  number3 = workingValue24
  workingValue2 = 0.85
  workingValue25(number3, workingValue2)
  workingValue25 = SetBlipAlpha
  number3 = workingValue24
  workingValue2 = 255
  workingValue25(number3, workingValue2)
  workingValue25 = SetBlipColour
  number3 = workingValue24
  workingValue2 = localValue4
  workingValue25(number3, workingValue2)
  workingValue25 = SetBlipRotation
  number3 = workingValue24
  workingValue2 = math
  workingValue2 = workingValue2.floor
  workingValue4 = localValue2
  workingValue2, workingValue4 = workingValue2(workingValue4)
  workingValue25(number3, workingValue2, workingValue4)
  workingValue25 = ShowHeadingIndicatorOnBlip
  number3 = workingValue24
  workingValue2 = true
  workingValue25(number3, workingValue2)
end
eventHandler = RegisterCommand
text = "blipson"
-- Beginner: this function is the command handler for "blipson".

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isEmergencyService
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = true
    stateFlag = localValue1
    localValue1 = CMG
    localValue1 = localValue1.areBlipPlayerNamesEnabled
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = DisplayPlayerNameTagsOnBlips
      localValue2 = true
      localValue1(localValue2)
    end
  end
end
serverId = false
-- Beginner: Register a chat/console command. Event/command: "blipson".
eventHandler(text, cmgOperation, serverId)
eventHandler = RegisterCommand
text = "blipsoff"
-- Beginner: this function is the command handler for "blipsoff".

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = false
    stateFlag = localValue1
    localValue1 = CMG
    localValue1 = localValue1.areBlipPlayerNamesEnabled
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = DisplayPlayerNameTagsOnBlips
      localValue2 = false
      localValue1(localValue2)
    end
    localValue1 = workingValue26
    localValue1()
  end
end
serverId = false
-- Beginner: Register a chat/console command. Event/command: "blipsoff".
eventHandler(text, cmgOperation, serverId)
eventHandler = RegisterNetEvent
text = "14f010530c"
-- Beginner: this function handles network event "14f010530c".

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = false
    stateFlag = localValue1
    localValue1 = CMG
    localValue1 = localValue1.areBlipPlayerNamesEnabled
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = DisplayPlayerNameTagsOnBlips
      localValue2 = false
      localValue1(localValue2)
    end
    localValue1 = workingValue26
    localValue1()
    localValue1 = workingValue
    localValue2 = nil
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "14f010530c".
eventHandler(text, cmgOperation)
eventHandler = AddEventHandler
text = "e713d91b70"
-- Beginner: this function runs when client event "e713d91b70" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = workingValue26
  localValue1()
  localValue1 = workingValue
  localValue2 = nil
  localValue1(localValue2)
end
-- Beginner: Register a client-side event handler. Event/command: "e713d91b70".
eventHandler(text, cmgOperation)
-- Beginner: this function runs when client event "e713d91b70" fires.

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, workingValue23, workingValue24, workingValue25, number3, workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, cmgOperation2, workingValue12, workingValue15, workingValue16, workingValue17
  localValue1 = table
  localValue1 = localValue1.count
  localValue2 = dataCollection2
  -- Beginner: result below is count.
  localValue1 = localValue1(localValue2)
  if localValue1 > 0 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = number2
    localValue2 = localValue1 - localValue2
    localValue2 = localValue2 / 1000.0
    if localValue2 < 1.0 then
      localValue3 = pairs
      localValue4 = dataCollection2
      localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
      for workingValue23, workingValue24 in localValue3, localValue4, localValue5, localValue6 do
        workingValue25 = pairs
        number3 = workingValue24
        workingValue25, number3, workingValue2, workingValue4 = workingValue25(number3)
        for stateFlag3, workingValue7 in workingValue25, number3, workingValue2, workingValue4 do
          workingValue8 = dataCollection3
          workingValue8 = workingValue8[workingValue7]
          if workingValue8 then
            workingValue9 = GetBlipCoords
            workingValue10 = workingValue7
            workingValue9 = workingValue9(workingValue10)
            workingValue10 = workingValue8 * localValue2
            workingValue11 = SetBlipCoords
            cmgOperation2 = workingValue7
            workingValue12 = workingValue9.x
            workingValue15 = workingValue10.x
            workingValue12 = workingValue12 + workingValue15
            workingValue15 = workingValue9.y
            workingValue16 = workingValue10.y
            workingValue15 = workingValue15 + workingValue16
            workingValue16 = workingValue9.z
            workingValue17 = workingValue10.z
            workingValue16 = workingValue16 + workingValue17
            workingValue11(cmgOperation2, workingValue12, workingValue15, workingValue16)
          end
        end
      end
    end
    number2 = localValue1
  end
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.doesPlayerHaveRadioItem
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = stateFlag5
    if not localValue2 then
      goto continueAtStep12
    end
  end
  localValue2 = true
  return localValue2
  ::continueAtStep12::
  localValue2 = CMG
  localValue2 = localValue2.clientGetUserIdFromSource
  localValue3 = localValue1
  -- Beginner: result below is userId.
  localValue2 = localValue2(localValue3)
  localValue3 = CMG
  localValue3 = localValue3.getJobType
  localValue4 = localValue2
  localValue3, localValue4 = localValue3(localValue4)
  localValue5 = "Vigilante" == localValue4
  return localValue5
end
cmgOperation = Citizen
cmgOperation = cmgOperation.CreateThread

-- === HELPER FUNCTION: serverId() ===
function serverId()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, workingValue23, workingValue24, workingValue25, number3, workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, cmgOperation2, workingValue12, workingValue15, workingValue16, workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21, workingValue22
  while true do
    localValue1 = stateFlag
    if not localValue1 then
      localValue1 = tCMG
      localValue1 = localValue1.isInComa
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.hasGangBlipsEnabled
        localValue1 = localValue1()
        if not localValue1 then
          localValue1 = stateFlag5
          if not localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.hasClientGroup
            localValue2 = "Vigilante"
            localValue1 = localValue1(localValue2)
            if not localValue1 then
              goto continueAtStep422
            end
          end
        end
      end
    end
    localValue1 = CMG
    localValue1 = localValue1.inArena
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.areBlipPlayerNamesEnabled
      localValue1 = localValue1()
      stateFlag4 = localValue1
      localValue1 = CMG
      localValue1 = localValue1.hasGangBlipsEnabled
      localValue1 = localValue1()
      localValue2 = CMG
      localValue2 = localValue2.isEmergencyService
      localValue2 = localValue2()
      localValue3 = CMG
      localValue3 = localValue3.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue3 = localValue3()
      localValue4 = ipairs
      localValue5 = GetActivePlayers
      localValue5, localValue6, workingValue23, workingValue24, workingValue25, number3, workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, cmgOperation2, workingValue12, workingValue15, workingValue16, workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21, workingValue22 = localValue5()
      localValue4, localValue5, localValue6, workingValue23 = localValue4(localValue5, localValue6, workingValue23, workingValue24, workingValue25, number3, workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, cmgOperation2, workingValue12, workingValue15, workingValue16, workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21, workingValue22)
      for workingValue24, workingValue25 in localValue4, localValue5, localValue6, workingValue23 do
        number3 = GetPlayerPed
        workingValue2 = workingValue25
        -- Beginner: result below is playerPed.
        number3 = number3(workingValue2)
        if number3 ~= localValue3 then
          workingValue2 = GetVehiclePedIsIn
          workingValue4 = number3
          stateFlag3 = false
          -- Beginner: result below is currentVehicle.
          workingValue2 = workingValue2(workingValue4, stateFlag3)
          workingValue4 = GetBlipFromEntity
          stateFlag3 = number3
          workingValue4 = workingValue4(stateFlag3)
          if 0 ~= workingValue2 then
            stateFlag3 = GetBlipFromEntity
            workingValue7 = workingValue2
            stateFlag3 = stateFlag3(workingValue7)
            if stateFlag3 then
              goto continueAtStep66
            end
          end
          stateFlag3 = 0
          ::continueAtStep66::
          workingValue7 = workingValue4 or workingValue7
          workingValue7 = stateFlag3 or workingValue7
          if (0 == workingValue4 or not workingValue4) and (0 == stateFlag3 or not stateFlag3) then
            workingValue7 = 0
          end
          workingValue8 = CMG
          workingValue8 = workingValue8.getPlayerServerId
          workingValue9 = workingValue25
          workingValue8 = workingValue8(workingValue9)
          if workingValue8 and workingValue8 > 0 then
            workingValue9 = text
            workingValue10 = workingValue8
            workingValue9 = workingValue9(workingValue10)
            if workingValue9 then
              workingValue9 = CMG
              workingValue9 = workingValue9.clientGetUserIdFromSource
              workingValue10 = workingValue8
              -- Beginner: result below is userId.
              workingValue9 = workingValue9(workingValue10)
              workingValue10 = CMG
              workingValue10 = workingValue10.getJobType
              workingValue11 = workingValue9
              workingValue10, workingValue11 = workingValue10(workingValue11)
              cmgOperation2 = CMG
              cmgOperation2 = cmgOperation2.getClientUserId
              -- Beginner: result below is userId.
              cmgOperation2 = cmgOperation2()
              if workingValue9 ~= cmgOperation2 then
                cmgOperation2 = false
                workingValue12 = workingValue5
                workingValue15 = number3
                workingValue16 = workingValue8
                workingValue12 = workingValue12(workingValue15, workingValue16)
                if workingValue12 then
                  workingValue12 = stateFlag
                  if workingValue12 then
                    workingValue12 = CMG
                    workingValue12 = workingValue12.hasRadioItem
                    workingValue12 = workingValue12()
                    if workingValue12 and localValue2 then
                      if 0 ~= workingValue2 then
                        workingValue12 = 56
                        workingValue15 = IsThisModelAHeli
                        workingValue16 = GetEntityModel
                        workingValue17 = workingValue2
                        workingValue16, workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21, workingValue22 = workingValue16(workingValue17)
                        workingValue15 = workingValue15(workingValue16, workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21, workingValue22)
                        if workingValue15 then
                          workingValue12 = 15
                        end
                        workingValue15 = stateFlag3 or workingValue15
                        workingValue15 = workingValue4 or workingValue15
                        if (0 == stateFlag3 or not stateFlag3) and (0 == workingValue4 or not workingValue4) then
                          workingValue15 = 0
                        end
                        if 0 ~= workingValue4 and 0 ~= stateFlag3 and workingValue4 ~= stateFlag3 then
                          workingValue16 = RemoveBlip
                          workingValue17 = workingValue4
                          workingValue16(workingValue17)
                          workingValue15 = stateFlag3
                        end
                        if "metpd" == workingValue10 and "NPAS" == workingValue11 then
                          workingValue16 = workingValue3
                          workingValue17 = workingValue15
                          workingValue18 = workingValue2
                          number = 5
                          workingValue19 = workingValue25
                          workingValue20 = workingValue12
                          workingValue21 = Player
                          workingValue22 = workingValue8
                          workingValue21 = workingValue21(workingValue22)
                          workingValue21 = workingValue21.state
                          workingValue21 = workingValue21.blipName
                          workingValue16(workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21)
                          cmgOperation2 = true
                        elseif "metpd" == workingValue10 then
                          workingValue16 = workingValue3
                          workingValue17 = workingValue15
                          workingValue18 = workingValue2
                          number = 3
                          workingValue19 = workingValue25
                          workingValue20 = workingValue12
                          workingValue21 = Player
                          workingValue22 = workingValue8
                          workingValue21 = workingValue21(workingValue22)
                          workingValue21 = workingValue21.state
                          workingValue21 = workingValue21.blipName
                          workingValue16(workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21)
                          cmgOperation2 = true
                        elseif "nhs" == workingValue10 and "HEMS" == workingValue11 then
                          workingValue16 = workingValue3
                          workingValue17 = workingValue7
                          workingValue18 = workingValue2
                          number = 44
                          workingValue19 = workingValue25
                          workingValue20 = workingValue12
                          workingValue16(workingValue17, workingValue18, number, workingValue19, workingValue20)
                          cmgOperation2 = true
                        elseif "nhs" == workingValue10 then
                          workingValue16 = workingValue3
                          workingValue17 = workingValue7
                          workingValue18 = workingValue2
                          number = 2
                          workingValue19 = workingValue25
                          workingValue20 = workingValue12
                          workingValue16(workingValue17, workingValue18, number, workingValue19, workingValue20)
                          cmgOperation2 = true
                        end
                      elseif "metpd" == workingValue10 and ("CID" == workingValue11 or "Trident" == workingValue11) then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 8
                        workingValue18 = workingValue25
                        number = nil
                        workingValue19 = Player
                        workingValue20 = workingValue8
                        workingValue19 = workingValue19(workingValue20)
                        workingValue19 = workingValue19.state
                        workingValue19 = workingValue19.blipName
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18, number, workingValue19)
                        cmgOperation2 = true
                      elseif "metpd" == workingValue10 and "NPAS" == workingValue11 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 5
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      elseif "metpd" == workingValue10 and "CTSFO" == workingValue11 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 40
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      elseif "metpd" == workingValue10 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 3
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      elseif "hmp" == workingValue10 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 29
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      elseif "lfb" == workingValue10 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 1
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      elseif "nhs" == workingValue10 and "HEMS" == workingValue11 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 44
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      elseif "nhs" == workingValue10 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 2
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      elseif "borderforce" == workingValue10 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 83
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      elseif "Vigilante" == workingValue11 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 40
                        workingValue18 = workingValue25
                        number = 774
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18, number)
                        cmgOperation2 = true
                      end
                  end
                  else
                    workingValue12 = tCMG
                    workingValue12 = workingValue12.isInComa
                    workingValue12 = workingValue12()
                    if workingValue12 then
                      if "nhs" == workingValue10 then
                        workingValue12 = workingValue3
                        workingValue15 = workingValue7
                        workingValue16 = number3
                        workingValue17 = 2
                        workingValue18 = workingValue25
                        workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                        cmgOperation2 = true
                      end
                    elseif localValue1 and not localValue2 then
                      workingValue12 = CMG
                      workingValue12 = workingValue12.isPlayerInSelectedGang
                      workingValue15 = workingValue8
                      workingValue12, workingValue15 = workingValue12(workingValue15)
                      if workingValue12 and "" == workingValue10 then
                        workingValue16 = CMG
                        workingValue16 = workingValue16.isGangBlipsPinnedOnly
                        workingValue16 = workingValue16()
                        if workingValue16 then
                          workingValue16 = CMG
                          workingValue16 = workingValue16.isPlayerPinnedInGang
                          workingValue17 = CMG
                          workingValue17 = workingValue17.clientGetUserIdFromSource
                          workingValue18 = workingValue8
                          workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21, workingValue22 = workingValue17(workingValue18)
                          workingValue16 = workingValue16(workingValue17, workingValue18, number, workingValue19, workingValue20, workingValue21, workingValue22)
                          if not workingValue16 then
                            goto continueAtStep371
                          end
                        end
                        workingValue16 = workingValue3
                        workingValue17 = workingValue7
                        workingValue18 = number3
                        number = workingValue15.blip
                        workingValue19 = workingValue25
                        workingValue16(workingValue17, workingValue18, number, workingValue19)
                        cmgOperation2 = true
                      end
                    end
                  end
                  ::continueAtStep371::
                  workingValue12 = CMG
                  workingValue12 = workingValue12.hasClientGroup
                  workingValue15 = "Vigilante"
                  workingValue12 = workingValue12(workingValue15)
                  if workingValue12 and "Vigilante" == workingValue11 then
                    workingValue12 = workingValue3
                    workingValue15 = workingValue7
                    workingValue16 = number3
                    workingValue17 = 40
                    workingValue18 = workingValue25
                    number = 774
                    workingValue12(workingValue15, workingValue16, workingValue17, workingValue18, number)
                    cmgOperation2 = true
                  end
                  workingValue12 = stateFlag5
                  if workingValue12 and "aa" == workingValue10 then
                    workingValue12 = workingValue3
                    workingValue15 = workingValue7
                    workingValue16 = number3
                    workingValue17 = 5
                    workingValue18 = workingValue25
                    workingValue12(workingValue15, workingValue16, workingValue17, workingValue18)
                    cmgOperation2 = true
                  end
                end
                if not cmgOperation2 then
                  workingValue12 = GetBlipFromEntity
                  workingValue15 = number3
                  workingValue12 = workingValue12(workingValue15)
                  if 0 ~= workingValue12 then
                    workingValue15 = RemoveBlip
                    workingValue16 = workingValue12
                    workingValue15(workingValue16)
                  end
                  if 0 ~= workingValue2 then
                    workingValue15 = GetBlipFromEntity
                    workingValue16 = workingValue2
                    workingValue15 = workingValue15(workingValue16)
                    if 0 ~= workingValue15 then
                      workingValue16 = RemoveBlip
                      workingValue17 = workingValue15
                      workingValue16(workingValue17)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    ::continueAtStep422::
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue1 = localValue1()
    localValue1 = IsBigmapActive
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = IsPauseMenuActive
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.isCallManagerOpen
        localValue1 = 0 ~= localValue1 or localValue1
      end
    end
    if localValue1 then
      localValue2 = stateFlag6
      if not localValue2 then
        localValue2 = TriggerServerEvent
        localValue3 = "62f7fcbe38"
        localValue4 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62f7fcbe38".
        localValue2(localValue3, localValue4)
        localValue2 = true
        stateFlag6 = localValue2
      end
    else
      localValue2 = stateFlag6
      if localValue2 then
        localValue2 = TriggerServerEvent
        localValue3 = "62f7fcbe38"
        localValue4 = false
        localValue2(localValue3, localValue4)
        localValue2 = false
        stateFlag6 = localValue2
      end
    end
    localValue2 = Wait
    localValue3 = 100
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation(serverId)
cmgOperation = CMG
cmgOperation = cmgOperation.createThreadOnTick
serverId = eventHandler
eventHandler2 = "Blips Extrapolation"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation(serverId, eventHandler2)
cmgOperation = true
serverId = GetPlayerServerId
eventHandler2 = PlayerId
eventHandler2, text2, workingValue14 = eventHandler2()
-- Beginner: result below is serverId.
serverId = serverId(eventHandler2, text2, workingValue14)
eventHandler2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = Wait
  localValue2 = 20000
  localValue1(localValue2)
  localValue1 = false
  cmgOperation = localValue1
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler2(text2)
eventHandler2 = RegisterNetEvent
text2 = "00e0b9aa86"
-- Beginner: this function handles network event "00e0b9aa86".

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1, localValue2, localValue3) ===
function workingValue14(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, workingValue23, workingValue24, workingValue25, number3, workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8, workingValue9
  localValue4 = cmgOperation
  if not localValue4 then
    localValue4 = workingValue
    localValue5 = localValue3
    localValue4(localValue5)
    if localValue2 then
      localValue4 = true
      stateFlag = localValue4
      localValue4 = CMG
      localValue4 = localValue4.areBlipPlayerNamesEnabled
      localValue4 = localValue4()
      if localValue4 then
        localValue4 = DisplayPlayerNameTagsOnBlips
        localValue5 = true
        localValue4(localValue5)
      end
    else
      localValue4 = CMG
      localValue4 = localValue4.isEmergencyService
      localValue4 = localValue4()
      if not localValue4 then
        localValue4 = CMG
        localValue4 = localValue4.hasGangBlipsEnabled
        localValue4 = localValue4()
        if localValue4 then
          goto continueAtStep31
        end
      end
      return
    end
    ::continueAtStep31::
    localValue4 = CMG
    localValue4 = localValue4.hasRadioItem
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = pairs
      localValue5 = localValue1
      localValue4, localValue5, localValue6, workingValue23 = localValue4(localValue5)
      for workingValue24, workingValue25 in localValue4, localValue5, localValue6, workingValue23 do
        number3 = workingValue25[1]
        if number3 then
          number3 = workingValue25[1]
          workingValue2 = serverId
          if number3 == workingValue2 then
            goto continueAtStep82
          end
          number3 = GetPlayerFromServerId
          workingValue2 = workingValue25[1]
          -- Beginner: result below is playerIndex.
          number3 = number3(workingValue2)
          if -1 ~= number3 then
            goto continueAtStep82
          end
        end
        number3 = workingValue25[6]
        workingValue2 = CMG
        workingValue2 = workingValue2.getPlayerBucket
        workingValue2 = workingValue2()
        if number3 == workingValue2 then
          if "gang" == localValue3 then
            number3 = CMG
            number3 = number3.isGangBlipsPinnedOnly
            number3 = number3()
            if number3 then
              number3 = CMG
              number3 = number3.isPlayerPinnedInGang
              workingValue2 = CMG
              workingValue2 = workingValue2.clientGetUserIdFromSource
              workingValue4 = workingValue25[1]
              workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8, workingValue9 = workingValue2(workingValue4)
              number3 = number3(workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8, workingValue9)
              if not number3 then
                goto continueAtStep82
              end
            end
          end
          number3 = workingValue6
          workingValue2 = workingValue25[2]
          workingValue4 = workingValue25[3]
          stateFlag3 = workingValue25[4]
          workingValue7 = workingValue25[5]
          workingValue8 = workingValue25[1]
          workingValue9 = localValue3
          number3(workingValue2, workingValue4, stateFlag3, workingValue7, workingValue8, workingValue9)
        end
        ::continueAtStep82::
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "00e0b9aa86".
eventHandler2(text2, workingValue14)
eventHandler2 = RegisterNetEvent
text2 = "193ee4e15e"
-- Beginner: this function handles network event "193ee4e15e".

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2
  localValue1 = stateFlag
  if not localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1000
    localValue1(localValue2)
    localValue1 = workingValue26
    localValue1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "193ee4e15e".
eventHandler2(text2, workingValue14)
eventHandler2 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
eventHandler2.isEmergencyBlipsEnabled = text2
eventHandler2 = RegisterNetEvent
text2 = "dd39aa0311"
-- Beginner: this function handles network event "dd39aa0311".

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3
  localValue1 = true
  stateFlag5 = localValue1
  localValue1 = SetTimeout
  localValue2 = 300000
  -- Beginner: this function handles network event "dd39aa0311".

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local stateFlag2, workingValue13
    stateFlag2 = false
    stateFlag5 = stateFlag2
  end
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dd39aa0311".
eventHandler2(text2, workingValue14)
