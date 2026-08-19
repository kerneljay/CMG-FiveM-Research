--[[
    LEVEL 1 BEGINNER GUIDE — Mechanic
    ======================================

    File: cmg/prod/client/jobs/cl_mechanic.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Mechanic feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 127
      * Background threads: 0
      * Always-running loops: 13
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
local cmgOperation, cmgOperation3, eventHandler, text5, number12, number13, number14, number17, number18, number19, workingValue11, workingValue16, stateFlag3, dataCollection, workingValue18, workingValue19, number, dataCollection2, dataCollection3, number2, workingValue20, workingValue21, text2, text3, workingValue22, number4, number5, number6, number8, tableHelper, text4, workingValue23, number10, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue31, workingValue32, cmgOperation4, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, workingValue43, backgroundThread, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue53, workingValue54, workingValue55, workingValue56, workingValue57, workingValue58, eventHandler2, text7, workingValue59, workingValue60, backgroundThread2, text8, workingValue61, number15, text9, number16, workingValue64, workingValue65, cmgOperation6, dataCollection4, dataCollection5, dataCollection6, dataCollection7, text10, text11, text12, text13, workingValue67, workingValue68, workingValue69, workingValue70, workingValue71, workingValue72, workingValue73, workingValue74, workingValue75, workingValue, workingValue2, workingValue3, workingValue4, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue13, workingValue14, cmgOperation2, text, workingValue15
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation3 = "cfg/cfg_mechanic"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.loadModule
eventHandler = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgOperation3 = cmgOperation3(eventHandler)
eventHandler = RegisterNetEvent
text5 = "579a73060c"
-- Beginner: this function handles network event "579a73060c".

-- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
function number12()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.getModelGender
  localValue1 = localValue1()
  if "male" == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.loadCustomisationPreset
    localValue2 = "MechanicMale"
    localValue1(localValue2)
  else
    localValue1 = CMG
    localValue1 = localValue1.loadCustomisationPreset
    localValue2 = "MechanicFemale"
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "579a73060c".
eventHandler(text5, number12)
eventHandler = cmgOperation.impoundDropoff
if not eventHandler then
  eventHandler = vector3
  text5 = 389.40829467773
  number12 = -1622.1922607422
  number13 = 29.28772354126
  eventHandler = eventHandler(text5, number12, number13)
end
text5 = 0.78
number12 = 920.0
number13 = 14.0
number14 = 5.0
number17 = 16.0
number18 = 5.5
number19 = 34.0
workingValue11 = cmgOperation.mechanicFlatbedModelHashes
workingValue16 = cmgOperation.mechanicTowTruckModelHashes
stateFlag3 = false
dataCollection = {}
workingValue18 = nil
workingValue19 = nil
number = 0
dataCollection2 = {}
dataCollection3 = {}
number2 = 0
workingValue20 = nil
workingValue21 = nil
text2 = "anim@heists@box_carry@"
text3 = "idle"
workingValue22 = nil
number4 = 0
number5 = 1302435108
number6 = 0
number8 = 242383520
tableHelper = "timetable@gardener@filling_can"
text4 = "gar_ig_5_filling_can"
workingValue23 = nil
number10 = 0

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: none) ===
function workingValue24()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = StopAnimTask
    localValue3 = localValue1
    localValue4 = tableHelper
    localValue5 = text4
    localValue6 = 1.0
    localValue2(localValue3, localValue4, localValue5, localValue6)
    localValue2 = ClearPedSecondaryTask
    localValue3 = localValue1
    localValue2(localValue3)
  end
  localValue2 = number6
  if 0 ~= localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = number6
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DetachEntity
      localValue3 = number6
      localValue4 = true
      localValue5 = true
      localValue2(localValue3, localValue4, localValue5)
      localValue2 = SetEntityAsMissionEntity
      localValue3 = number6
      localValue4 = true
      localValue5 = true
      localValue2(localValue3, localValue4, localValue5)
      localValue2 = DeleteObject
      localValue3 = number6
      localValue2(localValue3)
    end
  end
  localValue2 = 0
  number6 = localValue2
  localValue2 = nil
  workingValue23 = localValue2
  localValue2 = 0
  number10 = localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1) ===
function workingValue25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11
  localValue2 = tonumber
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue1 = localValue2
  if localValue1 then
    localValue2 = NetworkDoesNetworkIdExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep13
    end
  end
  return
  ::continueAtStep13::
  localValue2 = NetworkGetEntityFromNetworkId
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  if 0 ~= localValue2 then
    localValue4 = DoesEntityExist
    localValue5 = localValue2
    localValue4 = localValue4(localValue5)
    if localValue4 and 0 ~= localValue3 then
      goto continueAtStep29
    end
  end
  return
  ::continueAtStep29::
  localValue4 = workingValue24
  localValue4()
  localValue4 = CMG
  localValue4 = localValue4.loadModel
  localValue5 = number8
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue4(localValue5)
  localValue4 = GetEntityCoords
  localValue5 = localValue3
  localValue6 = true
  -- Beginner: result below is entityCoords.
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = CreateObject
  localValue6 = number8
  localValue7 = localValue4.x
  workingValue62 = localValue4.y
  workingValue66 = localValue4.z
  workingValue66 = workingValue66 + 0.2
  stateFlag25 = false
  stateFlag = false
  stateFlag2 = false
  -- Beginner: result below is objectEntity.
  localValue5 = localValue5(localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2)
  if 0 ~= localValue5 then
    localValue6 = DoesEntityExist
    localValue7 = localValue5
    localValue6 = localValue6(localValue7)
    if localValue6 then
      localValue6 = AttachEntityToEntity
      localValue7 = localValue5
      workingValue62 = localValue3
      workingValue66 = GetPedBoneIndex
      stateFlag25 = localValue3
      stateFlag = 60309
      workingValue66 = workingValue66(stateFlag25, stateFlag)
      stateFlag25 = 0.12
      stateFlag = 0.02
      stateFlag2 = -0.02
      stateFlag4 = 80.0
      stateFlag5 = 170.0
      stateFlag6 = 90.0
      stateFlag7 = true
      stateFlag8 = true
      stateFlag9 = false
      stateFlag10 = true
      number3 = 1
      stateFlag11 = true
      -- Beginner: Attach one entity to another entity.
      localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11)
      number6 = localValue5
    end
  end
  localValue6 = SetModelAsNoLongerNeeded
  localValue7 = number8
  localValue6(localValue7)
  workingValue23 = localValue1
  localValue6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue6 = localValue6()
  localValue6 = localValue6 + 6500
  number10 = localValue6
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
function workingValue26()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = StopAnimTask
    localValue3 = localValue1
    localValue4 = text2
    localValue5 = text3
    localValue6 = 1.0
    localValue2(localValue3, localValue4, localValue5, localValue6)
    localValue2 = ClearPedSecondaryTask
    localValue3 = localValue1
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = number4
  if 0 ~= localValue1 then
    localValue1 = workingValue26
    localValue1()
    localValue1 = DoesEntityExist
    localValue2 = number4
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = DetachEntity
      localValue2 = number4
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = SetEntityAsMissionEntity
      localValue2 = number4
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = DeleteObject
      localValue2 = number4
      localValue1(localValue2)
    end
    localValue1 = 0
    number4 = localValue1
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1) ===
function workingValue28(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11
  if localValue1 then
    localValue2 = tonumber
    localValue3 = localValue1.stage
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep9
    end
  end
  localValue2 = 1
  ::continueAtStep9::
  if localValue1 then
    localValue3 = localValue1.type
    if "parts_run" == localValue3 and (2 == localValue2 or 4 == localValue2) then
      goto continueAtStep21
    end
  end
  localValue3 = workingValue27
  localValue3()
  return
  ::continueAtStep21::
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  if 0 == localValue3 then
    localValue4 = workingValue27
    localValue4()
    return
  end
  localValue4 = number4
  if 0 ~= localValue4 then
    localValue4 = DoesEntityExist
    localValue5 = number4
    localValue4 = localValue4(localValue5)
    if localValue4 then
      goto continueAtStep87
    end
  end
  localValue4 = CMG
  localValue4 = localValue4.loadModel
  localValue5 = number5
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue4(localValue5)
  localValue4 = GetEntityCoords
  localValue5 = localValue3
  localValue6 = true
  -- Beginner: result below is entityCoords.
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = CreateObject
  localValue6 = number5
  localValue7 = localValue4.x
  workingValue62 = localValue4.y
  workingValue66 = localValue4.z
  workingValue66 = workingValue66 + 0.2
  stateFlag25 = false
  stateFlag = false
  stateFlag2 = false
  -- Beginner: result below is objectEntity.
  localValue5 = localValue5(localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2)
  if 0 ~= localValue5 then
    localValue6 = DoesEntityExist
    localValue7 = localValue5
    localValue6 = localValue6(localValue7)
    if localValue6 then
      localValue6 = AttachEntityToEntity
      localValue7 = localValue5
      workingValue62 = localValue3
      workingValue66 = GetPedBoneIndex
      stateFlag25 = localValue3
      stateFlag = 60309
      workingValue66 = workingValue66(stateFlag25, stateFlag)
      stateFlag25 = 0.025
      stateFlag = 0.08
      stateFlag2 = 0.255
      stateFlag4 = -145.0
      stateFlag5 = 290.0
      stateFlag6 = 0.0
      stateFlag7 = true
      stateFlag8 = true
      stateFlag9 = false
      stateFlag10 = true
      number3 = 1
      stateFlag11 = true
      -- Beginner: Attach one entity to another entity.
      localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11)
      number4 = localValue5
    end
  end
  localValue6 = SetModelAsNoLongerNeeded
  localValue7 = number5
  localValue6(localValue7)
  ::continueAtStep87::
  localValue4 = GetVehiclePedIsIn
  localValue5 = localValue3
  localValue6 = false
  -- Beginner: result below is currentVehicle.
  localValue4 = localValue4(localValue5, localValue6)
  if 0 ~= localValue4 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.loadAnimDict
  localValue5 = text2
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue4(localValue5)
  localValue4 = IsEntityPlayingAnim
  localValue5 = localValue3
  localValue6 = text2
  localValue7 = text3
  workingValue62 = 3
  localValue4 = localValue4(localValue5, localValue6, localValue7, workingValue62)
  if not localValue4 then
    localValue4 = TaskPlayAnim
    localValue5 = localValue3
    localValue6 = text2
    localValue7 = text3
    workingValue62 = 8.0
    workingValue66 = 8.0
    stateFlag25 = -1
    stateFlag = 49
    stateFlag2 = 0.0
    stateFlag4 = false
    stateFlag5 = false
    stateFlag6 = false
    -- Beginner: Play an animation on a ped.
    localValue4(localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue29; parameters: none) ===
function workingValue29()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = StopAnimTask
    localValue3 = localValue1
    localValue4 = text2
    localValue5 = text3
    localValue6 = 1.0
    localValue2(localValue3, localValue4, localValue5, localValue6)
    localValue2 = ClearPedSecondaryTask
    localValue3 = localValue1
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: none) ===
function workingValue30()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = number2
    if 0 ~= localValue2 then
      localValue2 = DoesEntityExist
      localValue3 = number2
      localValue2 = localValue2(localValue3)
      if localValue2 then
        goto continueAtStep15
      end
    end
  end
  return
  ::continueAtStep15::
  localValue2 = GetVehiclePedIsIn
  localValue3 = localValue1
  localValue4 = false
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2(localValue3, localValue4)
  if 0 ~= localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.loadAnimDict
  localValue3 = text2
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue2(localValue3)
  localValue2 = IsEntityPlayingAnim
  localValue3 = localValue1
  localValue4 = text2
  localValue5 = text3
  localValue6 = 3
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
  if not localValue2 then
    localValue2 = TaskPlayAnim
    localValue3 = localValue1
    localValue4 = text2
    localValue5 = text3
    localValue6 = 8.0
    localValue7 = 8.0
    workingValue62 = -1
    workingValue66 = 49
    stateFlag25 = 0.0
    stateFlag = false
    stateFlag2 = false
    stateFlag4 = false
    -- Beginner: Play an animation on a ped.
    localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue31; parameters: localValue1) ===
function workingValue31(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = BeginTextCommandDisplayHelp
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringPlayerName
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandDisplayHelp
  localValue3 = 0
  localValue4 = false
  localValue5 = true
  localValue6 = -1
  localValue2(localValue3, localValue4, localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue32; parameters: none) ===
function workingValue32()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25
  localValue1 = workingValue29
  localValue1()
  localValue1 = number2
  if 0 ~= localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = number2
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = DetachEntity
      localValue2 = number2
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = SetEntityAsMissionEntity
      localValue2 = number2
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = DeleteObject
      localValue2 = number2
      localValue1(localValue2)
    end
  end
  localValue1 = 0
  number2 = localValue1
  localValue1 = nil
  workingValue21 = localValue1
  localValue1 = number
  if 0 ~= localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = number
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = DetachEntity
      localValue2 = number
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = SetEntityAsMissionEntity
      localValue2 = number
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = DeleteObject
      localValue2 = number
      localValue1(localValue2)
    end
  end
  localValue1 = 0
  number = localValue1
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    if localValue6 and 0 ~= localValue6 then
      localValue7 = DoesEntityExist
      workingValue62 = localValue6
      localValue7 = localValue7(workingValue62)
      if localValue7 then
        localValue7 = SetEntityAsMissionEntity
        workingValue62 = localValue6
        workingValue66 = true
        stateFlag25 = true
        localValue7(workingValue62, workingValue66, stateFlag25)
        localValue7 = DeleteObject
        workingValue62 = localValue6
        localValue7(workingValue62)
      end
    end
  end
  localValue1 = {}
  dataCollection2 = localValue1
  localValue1 = pairs
  localValue2 = dataCollection3
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    if localValue6 and 0 ~= localValue6 then
      localValue7 = DoesEntityExist
      workingValue62 = localValue6
      localValue7 = localValue7(workingValue62)
      if localValue7 then
        localValue7 = DetachEntity
        workingValue62 = localValue6
        workingValue66 = true
        stateFlag25 = true
        localValue7(workingValue62, workingValue66, stateFlag25)
        localValue7 = SetEntityAsMissionEntity
        workingValue62 = localValue6
        workingValue66 = true
        stateFlag25 = true
        localValue7(workingValue62, workingValue66, stateFlag25)
        localValue7 = DeleteObject
        workingValue62 = localValue6
        localValue7(workingValue62)
      end
    end
  end
  localValue1 = {}
  dataCollection3 = localValue1
  localValue1 = nil
  workingValue20 = localValue1
end
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: none) ===
function workingValue33()
  local localValue1, localValue2
  localValue1 = number2
  localValue1 = DoesEntityExist
  localValue2 = number2
  localValue1 = 0 ~= localValue1 and localValue1
  return localValue1
end
cmgOperation4.isMechanicDebrisCarryingScrap = workingValue33

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = localValue1.secondaryCleared
  localValue4 = type
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if "table" ~= localValue4 then
    localValue4 = false
    return localValue4
  end
  localValue4 = localValue3[localValue2]
  if not localValue4 then
    localValue4 = tostring
    localValue5 = localValue2
    localValue4 = localValue4(localValue5)
    localValue4 = localValue3[localValue4]
  end
  localValue5 = true == localValue4
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: localValue1, localValue2) ===
function workingValue33(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25
  localValue3 = type
  localValue4 = localValue1.secondary
  localValue3 = localValue3(localValue4)
  if "table" ~= localValue3 then
    localValue3 = nil
    return localValue3
  end
  localValue3 = ipairs
  localValue4 = localValue1.secondary
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, workingValue62 in localValue3, localValue4, localValue5, localValue6 do
    workingValue66 = tonumber
    stateFlag25 = workingValue62.slot
    workingValue66 = workingValue66(stateFlag25)
    if workingValue66 == localValue2 then
      workingValue66 = type
      stateFlag25 = workingValue62.model
      workingValue66 = workingValue66(stateFlag25)
      if "string" == workingValue66 then
        workingValue66 = workingValue62.model
        return workingValue66
      end
    end
  end
  localValue3 = nil
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue34; parameters: localValue1) ===
function workingValue34(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag
  localValue2 = type
  localValue3 = localValue1.secondary
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = localValue1.secondary
    localValue2 = #localValue2
    if not (localValue2 < 1) then
      goto continueAtStep12
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep12::
  localValue2 = ipairs
  localValue3 = localValue1.secondary
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    workingValue62 = tonumber
    workingValue66 = localValue7.slot
    workingValue62 = workingValue62(workingValue66)
    if workingValue62 then
      workingValue66 = cmgOperation4
      stateFlag25 = localValue1
      stateFlag = workingValue62
      workingValue66 = workingValue66(stateFlag25, stateFlag)
      if not workingValue66 then
        workingValue66 = false
        return workingValue66
      end
    end
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1, localValue2, localValue3) ===
function workingValue35(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66
  localValue4 = math
  localValue4 = localValue4.rad
  localValue5 = localValue3 + 0.0
  localValue4 = localValue4(localValue5)
  localValue5 = math
  localValue5 = localValue5.cos
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  localValue6 = math
  localValue6 = localValue6.sin
  localValue7 = localValue4
  localValue6 = localValue6(localValue7)
  localValue7 = localValue1 * localValue5
  workingValue62 = localValue2 * localValue6
  localValue7 = localValue7 - workingValue62
  workingValue62 = localValue1 * localValue6
  workingValue66 = localValue2 * localValue5
  workingValue62 = workingValue62 + workingValue66
  return localValue7, workingValue62
end

-- === HELPER FUNCTION (decompiler name: workingValue36; parameters: localValue1, localValue2, localValue3) ===
function workingValue36(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25
  localValue4 = cmgOperation.debrisLayoutGroups
  localValue5 = type
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  if "table" == localValue5 then
    localValue5 = localValue2 or localValue5
    if not localValue2 then
      localValue5 = ""
    end
    localValue5 = localValue4[localValue5]
    if localValue5 then
      goto continueAtStep14
    end
  end
  localValue5 = nil
  ::continueAtStep14::
  localValue6 = type
  localValue7 = localValue5
  localValue6 = localValue6(localValue7)
  if "table" == localValue6 then
    localValue6 = localValue5.secondaryOffsets
    if localValue6 then
      goto continueAtStep23
    end
  end
  localValue6 = nil
  ::continueAtStep23::
  localValue7 = type
  workingValue62 = localValue6
  localValue7 = localValue7(workingValue62)
  if "table" == localValue7 then
    localValue7 = type
    workingValue62 = localValue1
    localValue7 = localValue7(workingValue62)
    if "string" == localValue7 and "" ~= localValue1 then
      localValue7 = localValue6[localValue1]
      workingValue62 = type
      workingValue66 = localValue7
      workingValue62 = workingValue62(workingValue66)
      if "table" == workingValue62 then
        workingValue62 = {}
        workingValue66 = tonumber
        stateFlag25 = localValue7.dx
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.dx = workingValue66
        workingValue66 = tonumber
        stateFlag25 = localValue7.dy
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.dy = workingValue66
        workingValue66 = tonumber
        stateFlag25 = localValue7.dz
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.dz = workingValue66
        workingValue66 = tonumber
        stateFlag25 = localValue7.h
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.h = workingValue66
        return workingValue62
      end
    end
  end
  localValue7 = {}
  localValue7.dx = 0.0
  workingValue62 = localValue3 * 0.35
  workingValue62 = 2.0 + workingValue62
  localValue7.dy = workingValue62
  localValue7.dz = 0.0
  localValue7.h = 0.0
  return localValue7
end

-- === HELPER FUNCTION (decompiler name: workingValue37; parameters: localValue1, localValue2, localValue3) ===
function workingValue37(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25
  localValue4 = cmgOperation.debrisLayoutGroups
  localValue5 = type
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  if "table" == localValue5 then
    localValue5 = localValue2 or localValue5
    if not localValue2 then
      localValue5 = ""
    end
    localValue5 = localValue4[localValue5]
    if localValue5 then
      goto continueAtStep14
    end
  end
  localValue5 = nil
  ::continueAtStep14::
  localValue6 = type
  localValue7 = localValue5
  localValue6 = localValue6(localValue7)
  if "table" == localValue6 then
    localValue6 = localValue5.secondaryFlatbedAttach
    if localValue6 then
      goto continueAtStep23
    end
  end
  localValue6 = nil
  ::continueAtStep23::
  localValue7 = type
  workingValue62 = localValue6
  localValue7 = localValue7(workingValue62)
  if "table" == localValue7 then
    localValue7 = type
    workingValue62 = localValue1
    localValue7 = localValue7(workingValue62)
    if "string" == localValue7 and "" ~= localValue1 then
      localValue7 = localValue6[localValue1]
      workingValue62 = type
      workingValue66 = localValue7
      workingValue62 = workingValue62(workingValue66)
      if "table" == workingValue62 then
        workingValue62 = {}
        workingValue66 = tonumber
        stateFlag25 = localValue7.ox
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.ox = workingValue66
        workingValue66 = tonumber
        stateFlag25 = localValue7.oy
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.oy = workingValue66
        workingValue66 = tonumber
        stateFlag25 = localValue7.oz
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.55
        end
        workingValue62.oz = workingValue66
        workingValue66 = tonumber
        stateFlag25 = localValue7.rx
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.rx = workingValue66
        workingValue66 = tonumber
        stateFlag25 = localValue7.ry
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.ry = workingValue66
        workingValue66 = tonumber
        stateFlag25 = localValue7.rz
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0.0
        end
        workingValue62.rz = workingValue66
        return workingValue62
      end
    end
  end
  localValue7 = {}
  localValue7.ox = 0.0
  workingValue62 = localValue3 * 0.2
  workingValue66 = -3.0
  workingValue62 = workingValue66 - workingValue62
  localValue7.oy = workingValue62
  localValue7.oz = 0.55
  localValue7.rx = 0.0
  localValue7.ry = 0.0
  localValue7.rz = 0.0
  return localValue7
end

-- === HELPER FUNCTION (decompiler name: workingValue38; parameters: localValue1) ===
function workingValue38(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = cmgOperation.debrisMainFlatbedAttach
  if not localValue2 then
    localValue2 = {}
  end
  localValue3 = {}
  localValue4 = tonumber
  localValue5 = localValue2.ox
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = 0.0
  end
  localValue3.ox = localValue4
  localValue4 = tonumber
  localValue5 = localValue2.oy
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = 0.0
  end
  localValue3.oy = localValue4
  localValue4 = tonumber
  localValue5 = localValue2.oz
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = 0.0
  end
  localValue3.oz = localValue4
  localValue4 = tonumber
  localValue5 = localValue2.rx
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = 0.0
  end
  localValue3.rx = localValue4
  localValue4 = tonumber
  localValue5 = localValue2.ry
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = 0.0
  end
  localValue3.ry = localValue4
  localValue4 = tonumber
  localValue5 = localValue2.rz
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = 0.0
  end
  localValue3.rz = localValue4
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue39; parameters: localValue1, localValue2) ===
function workingValue39(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18
  if 0 ~= localValue1 then
    localValue3 = DoesEntityExist
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = number2
      if 0 ~= localValue3 then
        localValue3 = DoesEntityExist
        localValue4 = number2
        localValue3 = localValue3(localValue4)
        if localValue3 then
          goto continueAtStep18
        end
      end
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep18::
  localValue3 = tonumber
  localValue4 = cmgOperation.debrisSecondaryFlatbedBone
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = tonumber
    localValue4 = cmgOperation.debrisMainFlatbedBone
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = 20
    end
  end
  localValue4 = workingValue19
  if localValue4 then
    localValue5 = workingValue33
    localValue6 = localValue4
    localValue7 = localValue2
    localValue5 = localValue5(localValue6, localValue7)
    if localValue5 then
      goto continueAtStep39
    end
  end
  localValue5 = nil
  ::continueAtStep39::
  if localValue4 then
    localValue6 = localValue4.mainModel
    if localValue6 then
      goto continueAtStep45
    end
  end
  localValue6 = nil
  ::continueAtStep45::
  localValue7 = workingValue37
  workingValue62 = localValue5
  workingValue66 = localValue6
  stateFlag25 = localValue2
  localValue7 = localValue7(workingValue62, workingValue66, stateFlag25)
  workingValue62 = DetachEntity
  workingValue66 = number2
  stateFlag25 = true
  stateFlag = true
  workingValue62(workingValue66, stateFlag25, stateFlag)
  workingValue62 = FreezeEntityPosition
  workingValue66 = number2
  stateFlag25 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  workingValue62(workingValue66, stateFlag25)
  workingValue62 = tonumber
  workingValue66 = localValue7.ox
  workingValue62 = workingValue62(workingValue66)
  if not workingValue62 then
    workingValue62 = 0.0
  end
  workingValue66 = tonumber
  stateFlag25 = localValue7.oy
  workingValue66 = workingValue66(stateFlag25)
  if not workingValue66 then
    workingValue66 = 0.0
  end
  stateFlag25 = tonumber
  stateFlag = localValue7.oz
  stateFlag25 = stateFlag25(stateFlag)
  if not stateFlag25 then
    stateFlag25 = 0.55
  end
  stateFlag = tonumber
  stateFlag2 = localValue7.rx
  stateFlag = stateFlag(stateFlag2)
  if not stateFlag then
    stateFlag = 0.0
  end
  stateFlag2 = tonumber
  stateFlag4 = localValue7.ry
  stateFlag2 = stateFlag2(stateFlag4)
  if not stateFlag2 then
    stateFlag2 = 0.0
  end
  stateFlag4 = tonumber
  stateFlag5 = localValue7.rz
  stateFlag4 = stateFlag4(stateFlag5)
  if not stateFlag4 then
    stateFlag4 = 0.0
  end
  stateFlag5 = AttachEntityToEntity
  stateFlag6 = number2
  stateFlag7 = localValue1
  stateFlag8 = localValue3
  stateFlag9 = workingValue62
  stateFlag10 = workingValue66
  number3 = stateFlag25
  stateFlag11 = stateFlag
  stateFlag12 = stateFlag2
  stateFlag13 = stateFlag4
  stateFlag14 = false
  stateFlag15 = false
  stateFlag16 = false
  stateFlag17 = false
  number7 = 2
  stateFlag18 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag5(stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18)
  stateFlag5 = SetEntityCollision
  stateFlag6 = number2
  stateFlag7 = true
  stateFlag8 = true
  stateFlag5(stateFlag6, stateFlag7, stateFlag8)
  stateFlag5 = dataCollection3
  stateFlag6 = number2
  stateFlag5[localValue2] = stateFlag6
  stateFlag5 = 0
  number2 = stateFlag5
  stateFlag5 = nil
  workingValue21 = stateFlag5
  stateFlag5 = workingValue29
  stateFlag5()
  stateFlag5 = true
  return stateFlag5
end

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1) ===
function workingValue40(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15
  localValue2 = tonumber
  localValue3 = localValue1.carryingSecondarySlot
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue3 = workingValue29
    localValue3()
    localValue3 = number2
    if 0 ~= localValue3 then
      localValue3 = DoesEntityExist
      localValue4 = number2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        localValue3 = DetachEntity
        localValue4 = number2
        localValue5 = true
        localValue6 = true
        localValue3(localValue4, localValue5, localValue6)
        localValue3 = SetEntityAsMissionEntity
        localValue4 = number2
        localValue5 = true
        localValue6 = true
        localValue3(localValue4, localValue5, localValue6)
        localValue3 = DeleteObject
        localValue4 = number2
        localValue3(localValue4)
      end
    end
    localValue3 = 0
    number2 = localValue3
    localValue3 = nil
    workingValue21 = localValue3
    return
  end
  localValue3 = workingValue33
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3 = localValue3(localValue4, localValue5)
  if not localValue3 then
    return
  end
  localValue4 = workingValue21
  if localValue4 == localValue2 then
    localValue4 = number2
    if 0 ~= localValue4 then
      localValue4 = DoesEntityExist
      localValue5 = number2
      localValue4 = localValue4(localValue5)
      if localValue4 then
        return
      end
    end
  end
  localValue4 = dataCollection2
  localValue4 = localValue4[localValue2]
  if localValue4 and 0 ~= localValue4 then
    localValue5 = DoesEntityExist
    localValue6 = localValue4
    localValue5 = localValue5(localValue6)
    if localValue5 then
      localValue5 = SetEntityAsMissionEntity
      localValue6 = localValue4
      localValue7 = true
      workingValue62 = true
      localValue5(localValue6, localValue7, workingValue62)
      localValue5 = DeleteObject
      localValue6 = localValue4
      localValue5(localValue6)
    end
  end
  localValue5 = dataCollection2
  localValue5[localValue2] = nil
  localValue5 = number2
  if 0 ~= localValue5 then
    localValue5 = DoesEntityExist
    localValue6 = number2
    localValue5 = localValue5(localValue6)
    if localValue5 then
      localValue5 = workingValue29
      localValue5()
      localValue5 = DetachEntity
      localValue6 = number2
      localValue7 = true
      workingValue62 = true
      localValue5(localValue6, localValue7, workingValue62)
      localValue5 = SetEntityAsMissionEntity
      localValue6 = number2
      localValue7 = true
      workingValue62 = true
      localValue5(localValue6, localValue7, workingValue62)
      localValue5 = DeleteObject
      localValue6 = number2
      localValue5(localValue6)
    end
  end
  localValue5 = 0
  number2 = localValue5
  localValue5 = GetHashKey
  localValue6 = localValue3
  -- Beginner: result below is hash.
  localValue5 = localValue5(localValue6)
  if not localValue5 or 0 == localValue5 then
    return
  end
  localValue6 = CMG
  localValue6 = localValue6.loadModel
  localValue7 = localValue5
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue6(localValue7)
  localValue6 = CMG
  localValue6 = localValue6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = GetEntityCoords
  workingValue62 = localValue6
  workingValue66 = true
  -- Beginner: result below is entityCoords.
  localValue7 = localValue7(workingValue62, workingValue66)
  workingValue62 = CreateObject
  workingValue66 = localValue5
  stateFlag25 = localValue7.x
  stateFlag = localValue7.y
  stateFlag2 = localValue7.z
  stateFlag2 = stateFlag2 + 0.2
  stateFlag4 = false
  stateFlag5 = false
  stateFlag6 = false
  -- Beginner: result below is objectEntity.
  workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6)
  if workingValue62 and 0 ~= workingValue62 then
    workingValue66 = DoesEntityExist
    stateFlag25 = workingValue62
    workingValue66 = workingValue66(stateFlag25)
    if workingValue66 then
      workingValue66 = GetPedBoneIndex
      stateFlag25 = localValue6
      stateFlag = 60309
      workingValue66 = workingValue66(stateFlag25, stateFlag)
      stateFlag25 = AttachEntityToEntity
      stateFlag = workingValue62
      stateFlag2 = localValue6
      stateFlag4 = workingValue66
      stateFlag5 = 0.025
      stateFlag6 = 0.08
      stateFlag7 = 0.255
      stateFlag8 = -145.0
      stateFlag9 = 290.0
      stateFlag10 = 0.0
      number3 = true
      stateFlag11 = true
      stateFlag12 = false
      stateFlag13 = true
      stateFlag14 = 1
      stateFlag15 = true
      -- Beginner: Attach one entity to another entity.
      stateFlag25(stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15)
      number2 = workingValue62
      workingValue21 = localValue2
      stateFlag25 = workingValue30
      stateFlag25()
    end
  end
  workingValue66 = SetModelAsNoLongerNeeded
  stateFlag25 = localValue5
  workingValue66(stateFlag25)
end

-- === HELPER FUNCTION (decompiler name: workingValue41; parameters: none) ===
function workingValue41()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25
  localValue1 = number
  if 0 ~= localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = number
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = DetachEntity
      localValue2 = number
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = SetEntityAsMissionEntity
      localValue2 = number
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = DeleteObject
      localValue2 = number
      localValue1(localValue2)
    end
  end
  localValue1 = 0
  number = localValue1
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    if localValue6 and 0 ~= localValue6 then
      localValue7 = DoesEntityExist
      workingValue62 = localValue6
      localValue7 = localValue7(workingValue62)
      if localValue7 then
        localValue7 = SetEntityAsMissionEntity
        workingValue62 = localValue6
        workingValue66 = true
        stateFlag25 = true
        localValue7(workingValue62, workingValue66, stateFlag25)
        localValue7 = DeleteObject
        workingValue62 = localValue6
        localValue7(workingValue62)
      end
    end
  end
  localValue1 = {}
  dataCollection2 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue42; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue42(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20
  localValue6 = workingValue41
  localValue6()
  localValue6 = localValue1.mainModel
  localValue7 = type
  workingValue62 = localValue6
  localValue7 = localValue7(workingValue62)
  if "string" == localValue7 and "" ~= localValue6 then
    localValue7 = GetHashKey
    workingValue62 = localValue6
    -- Beginner: result below is hash.
    localValue7 = localValue7(workingValue62)
    if localValue7 and 0 ~= localValue7 then
      workingValue62 = CMG
      workingValue62 = workingValue62.loadModel
      workingValue66 = localValue7
      -- Beginner: Request/load a GTA model before spawning or applying it.
      workingValue62(workingValue66)
      workingValue62 = CreateObject
      workingValue66 = localValue7
      stateFlag25 = localValue2
      stateFlag = localValue3
      stateFlag2 = localValue4 + 0.05
      stateFlag4 = false
      stateFlag5 = false
      stateFlag6 = false
      -- Beginner: result below is objectEntity.
      workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6)
      if workingValue62 and 0 ~= workingValue62 then
        workingValue66 = DoesEntityExist
        stateFlag25 = workingValue62
        workingValue66 = workingValue66(stateFlag25)
        if workingValue66 then
          workingValue66 = SetEntityHeading
          stateFlag25 = workingValue62
          stateFlag = localValue5 + 0.0
          -- Beginner: Change the direction an entity is facing.
          workingValue66(stateFlag25, stateFlag)
          workingValue66 = PlaceObjectOnGroundProperly
          stateFlag25 = workingValue62
          workingValue66(stateFlag25)
          workingValue66 = FreezeEntityPosition
          stateFlag25 = workingValue62
          stateFlag = true
          -- Beginner: Freeze or unfreeze an entity in place.
          workingValue66(stateFlag25, stateFlag)
          workingValue66 = SetEntityCollision
          stateFlag25 = workingValue62
          stateFlag = true
          stateFlag2 = true
          workingValue66(stateFlag25, stateFlag, stateFlag2)
          number = workingValue62
        end
      end
      workingValue66 = SetModelAsNoLongerNeeded
      stateFlag25 = localValue7
      workingValue66(stateFlag25)
    end
  end
  localValue7 = type
  workingValue62 = localValue1.secondary
  localValue7 = localValue7(workingValue62)
  if "table" == localValue7 then
    localValue7 = ipairs
    workingValue62 = localValue1.secondary
    localValue7, workingValue62, workingValue66, stateFlag25 = localValue7(workingValue62)
    for stateFlag, stateFlag2 in localValue7, workingValue62, workingValue66, stateFlag25 do
      stateFlag4 = tonumber
      stateFlag5 = stateFlag2.slot
      stateFlag4 = stateFlag4(stateFlag5)
      if stateFlag4 then
        stateFlag5 = cmgOperation4
        stateFlag6 = localValue1
        stateFlag7 = stateFlag4
        stateFlag5 = stateFlag5(stateFlag6, stateFlag7)
        if not stateFlag5 then
          stateFlag5 = tonumber
          stateFlag6 = localValue1.carryingSecondarySlot
          stateFlag5 = stateFlag5(stateFlag6)
          if stateFlag5 ~= stateFlag4 then
            stateFlag5 = stateFlag2.model
            stateFlag6 = type
            stateFlag7 = stateFlag5
            stateFlag6 = stateFlag6(stateFlag7)
            if "string" == stateFlag6 and "" ~= stateFlag5 then
              stateFlag6 = tonumber
              stateFlag7 = stateFlag2.dx
              stateFlag6 = stateFlag6(stateFlag7)
              if not stateFlag6 then
                stateFlag6 = 0.0
              end
              stateFlag7 = tonumber
              stateFlag8 = stateFlag2.dy
              stateFlag7 = stateFlag7(stateFlag8)
              if not stateFlag7 then
                stateFlag7 = 0.0
              end
              stateFlag8 = tonumber
              stateFlag9 = stateFlag2.dz
              stateFlag8 = stateFlag8(stateFlag9)
              if not stateFlag8 then
                stateFlag8 = 0.0
              end
              stateFlag9 = workingValue35
              stateFlag10 = stateFlag6
              number3 = stateFlag7
              stateFlag11 = localValue5
              stateFlag9, stateFlag10 = stateFlag9(stateFlag10, number3, stateFlag11)
              number3 = GetHashKey
              stateFlag11 = stateFlag5
              -- Beginner: result below is hash.
              number3 = number3(stateFlag11)
              if number3 and 0 ~= number3 then
                stateFlag11 = CMG
                stateFlag11 = stateFlag11.loadModel
                stateFlag12 = number3
                -- Beginner: Request/load a GTA model before spawning or applying it.
                stateFlag11(stateFlag12)
                stateFlag11 = localValue2 + stateFlag9
                stateFlag12 = localValue3 + stateFlag10
                stateFlag13 = localValue4 + stateFlag8
                stateFlag14 = CreateObject
                stateFlag15 = number3
                stateFlag16 = stateFlag11
                stateFlag17 = stateFlag12
                number7 = stateFlag13
                stateFlag18 = false
                stateFlag19 = false
                stateFlag20 = false
                -- Beginner: result below is objectEntity.
                stateFlag14 = stateFlag14(stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20)
                if stateFlag14 and 0 ~= stateFlag14 then
                  stateFlag15 = DoesEntityExist
                  stateFlag16 = stateFlag14
                  stateFlag15 = stateFlag15(stateFlag16)
                  if stateFlag15 then
                    stateFlag15 = SetEntityHeading
                    stateFlag16 = stateFlag14
                    stateFlag17 = tonumber
                    number7 = stateFlag2.h
                    stateFlag17 = stateFlag17(number7)
                    if not stateFlag17 then
                      stateFlag17 = 0.0
                    end
                    stateFlag17 = stateFlag17 + localValue5
                    -- Beginner: Change the direction an entity is facing.
                    stateFlag15(stateFlag16, stateFlag17)
                    stateFlag15 = PlaceObjectOnGroundProperly
                    stateFlag16 = stateFlag14
                    stateFlag15(stateFlag16)
                    stateFlag15 = FreezeEntityPosition
                    stateFlag16 = stateFlag14
                    stateFlag17 = true
                    -- Beginner: Freeze or unfreeze an entity in place.
                    stateFlag15(stateFlag16, stateFlag17)
                    stateFlag15 = SetEntityCollision
                    stateFlag16 = stateFlag14
                    stateFlag17 = true
                    number7 = true
                    stateFlag15(stateFlag16, stateFlag17, number7)
                    stateFlag15 = dataCollection2
                    stateFlag15[stateFlag4] = stateFlag14
                  end
                end
                stateFlag15 = SetModelAsNoLongerNeeded
                stateFlag16 = number3
                stateFlag15(stateFlag16)
              end
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue43; parameters: none) ===
function workingValue43()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15
  localValue1 = workingValue19
  localValue2 = tonumber
  localValue3 = cmgOperation.debrisPropSpawnNearMeters
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = 95.0
  end
  localValue3 = 32.0
  if localValue1 then
    localValue4 = localValue1.type
    if "debris" == localValue4 then
      localValue4 = type
      localValue5 = localValue1.anchor
      localValue4 = localValue4(localValue5)
      if "table" == localValue4 then
        localValue4 = type
        localValue5 = localValue1.anchor
        localValue5 = localValue5.x
        localValue4 = localValue4(localValue5)
        if "number" == localValue4 then
          goto continueAtStep31
        end
      end
    end
  end
  localValue4 = workingValue20
  if localValue4 then
    localValue4 = workingValue32
    localValue4()
  end
  return
  ::continueAtStep31::
  localValue4 = workingValue40
  localValue5 = localValue1
  localValue4(localValue5)
  localValue4 = localValue1.mainSecured
  if localValue4 then
    return
  end
  localValue4 = localValue1.anchor
  localValue4 = localValue4.x
  localValue4 = localValue4 + 0.0
  localValue5 = localValue1.anchor
  localValue5 = localValue5.y
  localValue5 = localValue5 + 0.0
  localValue6 = localValue1.anchor
  localValue6 = localValue6.z
  localValue6 = localValue6 + 0.0
  localValue7 = tostring
  workingValue62 = localValue1.contractId
  if not workingValue62 then
    workingValue62 = ""
  end
  localValue7 = localValue7(workingValue62)
  workingValue62 = "_"
  workingValue66 = tostring
  stateFlag25 = localValue1.mainModel
  if not stateFlag25 then
    stateFlag25 = ""
  end
  workingValue66 = workingValue66(stateFlag25)
  localValue7 = localValue7 .. workingValue62 .. workingValue66
  workingValue62 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue62 = workingValue62()
  workingValue66 = GetEntityCoords
  stateFlag25 = workingValue62
  stateFlag = true
  -- Beginner: result below is entityCoords.
  workingValue66 = workingValue66(stateFlag25, stateFlag)
  stateFlag25 = vector3
  stateFlag = localValue4
  stateFlag2 = localValue5
  stateFlag4 = localValue6
  stateFlag25 = stateFlag25(stateFlag, stateFlag2, stateFlag4)
  stateFlag25 = workingValue66 - stateFlag25
  stateFlag25 = #stateFlag25
  stateFlag = localValue2 + localValue3
  if stateFlag25 > stateFlag then
    stateFlag = workingValue20
    if stateFlag then
      stateFlag = false
      stateFlag2 = number
      if 0 ~= stateFlag2 then
        stateFlag2 = DoesEntityExist
        stateFlag4 = number
        stateFlag2 = stateFlag2(stateFlag4)
        if stateFlag2 then
          stateFlag2 = GetEntityAttachedTo
          stateFlag4 = number
          stateFlag2 = stateFlag2(stateFlag4)
          if 0 ~= stateFlag2 then
            stateFlag4 = DoesEntityExist
            stateFlag5 = stateFlag2
            stateFlag4 = stateFlag4(stateFlag5)
            if stateFlag4 then
              stateFlag4 = IsEntityAVehicle
              stateFlag5 = stateFlag2
              stateFlag4 = stateFlag4(stateFlag5)
              if stateFlag4 then
                stateFlag = true
              end
            end
          end
        end
      end
      if stateFlag then
        stateFlag2 = pairs
        stateFlag4 = dataCollection2
        stateFlag2, stateFlag4, stateFlag5, stateFlag6 = stateFlag2(stateFlag4)
        for stateFlag7, stateFlag8 in stateFlag2, stateFlag4, stateFlag5, stateFlag6 do
          if stateFlag8 and 0 ~= stateFlag8 then
            stateFlag9 = DoesEntityExist
            stateFlag10 = stateFlag8
            stateFlag9 = stateFlag9(stateFlag10)
            if stateFlag9 then
              stateFlag9 = SetEntityAsMissionEntity
              stateFlag10 = stateFlag8
              number3 = true
              stateFlag11 = true
              stateFlag9(stateFlag10, number3, stateFlag11)
              stateFlag9 = DeleteObject
              stateFlag10 = stateFlag8
              stateFlag9(stateFlag10)
            end
          end
        end
        stateFlag2 = {}
        dataCollection2 = stateFlag2
      else
        stateFlag2 = workingValue41
        stateFlag2()
      end
      stateFlag2 = nil
      workingValue20 = stateFlag2
    end
    return
  end
  stateFlag = GetGroundZFor_3dCoord
  stateFlag2 = localValue4
  stateFlag4 = localValue5
  stateFlag5 = localValue6 + 50.0
  stateFlag6 = 0.0
  stateFlag7 = false
  stateFlag, stateFlag2 = stateFlag(stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
  if stateFlag2 and stateFlag2 > 0.0 then
    stateFlag4 = stateFlag2 + 0.05
    if stateFlag4 then
      goto continueAtStep162
    end
  end
  stateFlag4 = localValue6
  ::continueAtStep162::
  stateFlag5 = tonumber
  stateFlag6 = localValue1.mainHeading
  stateFlag5 = stateFlag5(stateFlag6)
  if not stateFlag5 then
    stateFlag5 = 0.0
  end
  if localValue2 >= stateFlag25 then
    stateFlag6 = workingValue20
    if stateFlag6 ~= localValue7 then
      stateFlag6 = workingValue42
      stateFlag7 = localValue1
      stateFlag8 = localValue4
      stateFlag9 = localValue5
      stateFlag10 = stateFlag4
      number3 = stateFlag5
      stateFlag6(stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
      workingValue20 = localValue7
  end
  else
    stateFlag6 = workingValue20
    if stateFlag6 == localValue7 then
      stateFlag6 = type
      stateFlag7 = localValue1.secondary
      stateFlag6 = stateFlag6(stateFlag7)
      if "table" == stateFlag6 then
        stateFlag6 = ipairs
        stateFlag7 = localValue1.secondary
        stateFlag6, stateFlag7, stateFlag8, stateFlag9 = stateFlag6(stateFlag7)
        for stateFlag10, number3 in stateFlag6, stateFlag7, stateFlag8, stateFlag9 do
          stateFlag11 = tonumber
          stateFlag12 = number3.slot
          stateFlag11 = stateFlag11(stateFlag12)
          if stateFlag11 then
            stateFlag12 = cmgOperation4
            stateFlag13 = localValue1
            stateFlag14 = stateFlag11
            stateFlag12 = stateFlag12(stateFlag13, stateFlag14)
            if stateFlag12 then
              stateFlag12 = dataCollection2
              stateFlag12 = stateFlag12[stateFlag11]
              if stateFlag12 then
                stateFlag12 = DoesEntityExist
                stateFlag13 = dataCollection2
                stateFlag13 = stateFlag13[stateFlag11]
                stateFlag12 = stateFlag12(stateFlag13)
                if stateFlag12 then
                  stateFlag12 = SetEntityAsMissionEntity
                  stateFlag13 = dataCollection2
                  stateFlag13 = stateFlag13[stateFlag11]
                  stateFlag14 = true
                  stateFlag15 = true
                  stateFlag12(stateFlag13, stateFlag14, stateFlag15)
                  stateFlag12 = DeleteObject
                  stateFlag13 = dataCollection2
                  stateFlag13 = stateFlag13[stateFlag11]
                  stateFlag12(stateFlag13)
                  stateFlag12 = dataCollection2
                  stateFlag12[stateFlag11] = nil
                end
              end
            end
          end
        end
      end
    end
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: none) ===
function workingValue44()
  local localValue1, localValue2
  while true do
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 400
    localValue1(localValue2)
    localValue1 = workingValue43
    localValue1()
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue44)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    if localValue6 and 0 ~= localValue6 then
      localValue7 = RemoveBlip
      workingValue62 = localValue6
      localValue7(workingValue62)
    end
  end
  localValue1 = {}
  dataCollection = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function workingValue44(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2
  workingValue62 = AddBlipForCoord
  workingValue66 = localValue1 + 0.0
  stateFlag25 = localValue2 + 0.0
  stateFlag = localValue3 + 0.0
  -- Beginner: result below is blipHandle.
  workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag)
  workingValue66 = SetBlipSprite
  stateFlag25 = workingValue62
  stateFlag = localValue4 or stateFlag
  if not localValue4 then
    stateFlag = 402
  end
  workingValue66(stateFlag25, stateFlag)
  workingValue66 = SetBlipColour
  stateFlag25 = workingValue62
  stateFlag = localValue5 or stateFlag
  if not localValue5 then
    stateFlag = 5
  end
  workingValue66(stateFlag25, stateFlag)
  workingValue66 = SetBlipAsShortRange
  stateFlag25 = workingValue62
  stateFlag = false
  workingValue66(stateFlag25, stateFlag)
  workingValue66 = tonumber
  stateFlag25 = localValue7
  workingValue66 = workingValue66(stateFlag25)
  if workingValue66 and workingValue66 > 0.0 then
    stateFlag25 = SetBlipScale
    stateFlag = workingValue62
    stateFlag2 = workingValue66
    stateFlag25(stateFlag, stateFlag2)
  end
  stateFlag25 = BeginTextCommandSetBlipName
  stateFlag = "STRING"
  stateFlag25(stateFlag)
  stateFlag25 = AddTextComponentSubstringPlayerName
  stateFlag = localValue6 or stateFlag
  if not localValue6 then
    stateFlag = "Job"
  end
  stateFlag25(stateFlag)
  stateFlag25 = EndTextCommandSetBlipName
  stateFlag = workingValue62
  stateFlag25(stateFlag)
  stateFlag25 = dataCollection
  stateFlag25 = #stateFlag25
  stateFlag = stateFlag25 + 1
  stateFlag25 = dataCollection
  stateFlag25[stateFlag] = workingValue62
  return workingValue62
end

-- === HELPER FUNCTION (decompiler name: workingValue45; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue45(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, workingValue62, workingValue66, stateFlag25
  localValue6 = AddBlipForEntity
  localValue7 = localValue1
  -- Beginner: result below is blipHandle.
  localValue6 = localValue6(localValue7)
  localValue7 = SetBlipSprite
  workingValue62 = localValue6
  workingValue66 = localValue2 or workingValue66
  if not localValue2 then
    workingValue66 = 402
  end
  localValue7(workingValue62, workingValue66)
  localValue7 = SetBlipColour
  workingValue62 = localValue6
  workingValue66 = localValue3 or workingValue66
  if not localValue3 then
    workingValue66 = 5
  end
  localValue7(workingValue62, workingValue66)
  localValue7 = SetBlipAsShortRange
  workingValue62 = localValue6
  workingValue66 = false
  localValue7(workingValue62, workingValue66)
  localValue7 = tonumber
  workingValue62 = localValue5
  localValue7 = localValue7(workingValue62)
  if localValue7 and localValue7 > 0.0 then
    workingValue62 = SetBlipScale
    workingValue66 = localValue6
    stateFlag25 = localValue7
    workingValue62(workingValue66, stateFlag25)
  end
  workingValue62 = BeginTextCommandSetBlipName
  workingValue66 = "STRING"
  workingValue62(workingValue66)
  workingValue62 = AddTextComponentSubstringPlayerName
  workingValue66 = localValue4 or workingValue66
  if not localValue4 then
    workingValue66 = "Job"
  end
  workingValue62(workingValue66)
  workingValue62 = EndTextCommandSetBlipName
  workingValue66 = localValue6
  workingValue62(workingValue66)
  workingValue62 = dataCollection
  workingValue62 = #workingValue62
  workingValue66 = workingValue62 + 1
  workingValue62 = dataCollection
  workingValue62[workingValue66] = localValue6
  return localValue6
end
workingValue46 = nil

-- === HELPER FUNCTION (decompiler name: workingValue47; parameters: localValue1, localValue2) ===
function workingValue47(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = SetNewWaypoint
  localValue4 = localValue1 + 0.0
  localValue5 = localValue2 + 0.0
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue48; parameters: localValue1, localValue2, localValue3) ===
function workingValue48(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, workingValue62
  if localValue1 then
    localValue4 = localValue1.targetNetId
    if nil ~= localValue4 then
      localValue4 = localValue1.targetNetId
      if 0 ~= localValue4 then
        goto continueAtStep11
      end
    end
  end
  localValue4 = false
  return localValue4
  ::continueAtStep11::
  localValue4 = tonumber
  localValue5 = localValue1.targetNetId
  localValue4 = localValue4(localValue5)
  if not localValue4 or 0 == localValue4 then
    localValue5 = false
    return localValue5
  end
  localValue5 = tonumber
  localValue6 = localValue3
  localValue5 = localValue5(localValue6)
  if localValue5 and localValue4 == localValue5 then
    localValue6 = true
    return localValue6
  end
  if 0 ~= localValue2 then
    localValue6 = DoesEntityExist
    localValue7 = localValue2
    localValue6 = localValue6(localValue7)
    if localValue6 then
      localValue6 = NetworkGetNetworkIdFromEntity
      localValue7 = localValue2
      localValue6 = localValue6(localValue7)
      if localValue6 and 0 ~= localValue6 then
        localValue7 = tonumber
        workingValue62 = localValue6
        localValue7 = localValue7(workingValue62)
        if localValue4 == localValue7 then
          localValue7 = true
          return localValue7
        end
      end
    end
  end
  localValue6 = false
  return localValue6
end

-- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue1, localValue2) ===
function workingValue49(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  if 0 ~= localValue1 and localValue1 ~= localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = IsEntityAVehicle
      localValue4 = localValue1
      localValue3 = localValue3(localValue4)
      if localValue3 then
        goto continueAtStep17
      end
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep17::
  localValue3 = DoesEntityExist
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = IsEntityAVehicle
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep29
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep29::
  localValue3 = IsVehicleAttachedToTowTruck
  localValue4 = localValue1
  localValue5 = localValue2
  return localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue50; parameters: localValue1, localValue2) ===
function workingValue50(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  if 0 ~= localValue1 then
    localValue3 = DoesEntityExist
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = IsEntityAVehicle
      localValue4 = localValue1
      localValue3 = localValue3(localValue4)
      if localValue3 then
        goto continueAtStep15
      end
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep15::
  localValue3 = GetEntityAttachedTo
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if 0 ~= localValue3 then
    localValue4 = DoesEntityExist
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = IsEntityAVehicle
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if localValue4 then
        localValue4 = GetEntityModel
        localValue5 = localValue3
        -- Beginner: result below is modelHash.
        localValue4 = localValue4(localValue5)
        localValue5 = workingValue11
        localValue4 = localValue5[localValue4]
        if localValue4 then
          localValue4 = true
          return localValue4
        end
      end
    end
  end
  localValue4 = tonumber
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue5 = false
    return localValue5
  end
  localValue5 = CMG
  localValue5 = localValue5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = GetVehiclePedIsIn
  localValue7 = localValue5
  workingValue62 = false
  -- Beginner: result below is currentVehicle.
  localValue6 = localValue6(localValue7, workingValue62)
  localValue7 = GetVehiclePedIsIn
  workingValue62 = localValue5
  workingValue66 = true
  -- Beginner: result below is currentVehicle.
  localValue7 = localValue7(workingValue62, workingValue66)
  workingValue62 = ipairs
  workingValue66 = {}
  stateFlag25 = localValue6
  stateFlag = localValue7
  workingValue66[1] = stateFlag25
  workingValue66[2] = stateFlag
  workingValue62, workingValue66, stateFlag25, stateFlag = workingValue62(workingValue66)
  for stateFlag2, stateFlag4 in workingValue62, workingValue66, stateFlag25, stateFlag do
    if 0 ~= stateFlag4 and stateFlag4 ~= localValue1 then
      stateFlag5 = DoesEntityExist
      stateFlag6 = stateFlag4
      stateFlag5 = stateFlag5(stateFlag6)
      if stateFlag5 then
        stateFlag5 = IsEntityAVehicle
        stateFlag6 = stateFlag4
        stateFlag5 = stateFlag5(stateFlag6)
        if stateFlag5 then
          stateFlag5 = workingValue49
          stateFlag6 = stateFlag4
          stateFlag7 = localValue1
          stateFlag5 = stateFlag5(stateFlag6, stateFlag7)
          if stateFlag5 then
            stateFlag5 = true
            return stateFlag5
          end
          stateFlag5 = workingValue48
          stateFlag6 = Entity
          stateFlag7 = stateFlag4
          stateFlag6 = stateFlag6(stateFlag7)
          stateFlag6 = stateFlag6.state
          stateFlag6 = stateFlag6.towVehicle
          stateFlag7 = localValue1
          stateFlag8 = localValue4
          stateFlag5 = stateFlag5(stateFlag6, stateFlag7, stateFlag8)
          if stateFlag5 then
            stateFlag5 = true
            return stateFlag5
          end
        end
      end
    end
  end
  workingValue62 = pairs
  workingValue66 = GetGamePool
  stateFlag25 = "CVehicle"
  workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8 = workingValue66(stateFlag25)
  workingValue62, workingValue66, stateFlag25, stateFlag = workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
  for stateFlag2, stateFlag4 in workingValue62, workingValue66, stateFlag25, stateFlag do
    if stateFlag4 ~= localValue1 then
      stateFlag5 = DoesEntityExist
      stateFlag6 = stateFlag4
      stateFlag5 = stateFlag5(stateFlag6)
      if stateFlag5 then
        stateFlag5 = IsEntityAVehicle
        stateFlag6 = stateFlag4
        stateFlag5 = stateFlag5(stateFlag6)
        if stateFlag5 then
          stateFlag5 = workingValue49
          stateFlag6 = stateFlag4
          stateFlag7 = localValue1
          stateFlag5 = stateFlag5(stateFlag6, stateFlag7)
          if stateFlag5 then
            stateFlag5 = true
            return stateFlag5
          end
          stateFlag5 = workingValue48
          stateFlag6 = Entity
          stateFlag7 = stateFlag4
          stateFlag6 = stateFlag6(stateFlag7)
          stateFlag6 = stateFlag6.state
          stateFlag6 = stateFlag6.towVehicle
          stateFlag7 = localValue1
          stateFlag8 = localValue4
          stateFlag5 = stateFlag5(stateFlag6, stateFlag7, stateFlag8)
          if stateFlag5 then
            stateFlag5 = true
            return stateFlag5
          end
        end
      end
    end
  end
  workingValue62 = false
  return workingValue62
end

-- === HELPER FUNCTION (decompiler name: workingValue51; parameters: localValue1) ===
function workingValue51(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  if localValue1 then
    localValue2 = localValue1.type
    if "breakdown" == localValue2 then
      goto continueAtStep11
    end
    localValue2 = localValue1.type
    if "equipment" == localValue2 then
      goto continueAtStep11
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep11::
  localValue2 = localValue1.vehicleNetId
  if localValue2 then
    localValue2 = tonumber
    localValue3 = localValue1.vehicleNetId
    localValue2 = localValue2(localValue3)
  end
  if localValue2 then
    localValue3 = NetworkDoesNetworkIdExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = NetworkDoesEntityExistWithNetworkId
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        goto continueAtStep31
      end
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep31::
  localValue3 = NetworkGetEntityFromNetworkId
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = 0 ~= localValue3 and localValue4
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue52; parameters: localValue1) ===
function workingValue52(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  if localValue1 then
    localValue2 = localValue1.type
    if "breakdown" == localValue2 then
      goto continueAtStep11
    end
    localValue2 = localValue1.type
    if "equipment" == localValue2 then
      goto continueAtStep11
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep11::
  localValue2 = localValue1.vehicleNetId
  if localValue2 then
    localValue2 = tonumber
    localValue3 = localValue1.vehicleNetId
    localValue2 = localValue2(localValue3)
  end
  if localValue2 then
    localValue3 = NetworkDoesNetworkIdExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = NetworkDoesEntityExistWithNetworkId
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        goto continueAtStep31
      end
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep31::
  localValue3 = NetworkGetEntityFromNetworkId
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if 0 ~= localValue3 then
    localValue4 = DoesEntityExist
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      goto continueAtStep43
    end
  end
  localValue4 = false
  return localValue4
  ::continueAtStep43::
  localValue4 = workingValue50
  localValue5 = localValue3
  localValue6 = localValue2
  return localValue4(localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue53; parameters: none) ===
function workingValue53()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 == localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = GetVehiclePedIsIn
  localValue3 = localValue1
  localValue4 = false
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2(localValue3, localValue4)
  if 0 ~= localValue2 then
    localValue3 = GetPedInVehicleSeat
    localValue4 = localValue2
    localValue5 = -1
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 == localValue1 then
      localValue3 = GetEntityModel
      localValue4 = localValue2
      -- Beginner: result below is modelHash.
      localValue3 = localValue3(localValue4)
      localValue4 = workingValue11
      localValue4 = localValue4[localValue3]
      if localValue4 then
        localValue4 = "flatbed"
        return localValue4
      end
      localValue4 = workingValue16
      localValue4 = localValue4[localValue3]
      if localValue4 then
        localValue4 = "tow"
        return localValue4
      end
      localValue4 = nil
      return localValue4
    end
  end
  localValue3 = GetEntityCoords
  localValue4 = localValue1
  localValue5 = true
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = nil
  localValue5 = 38.0
  localValue6 = pairs
  localValue7 = GetGamePool
  workingValue62 = "CVehicle"
  localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7 = localValue7(workingValue62)
  localValue6, localValue7, workingValue62, workingValue66 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
  for stateFlag25, stateFlag in localValue6, localValue7, workingValue62, workingValue66 do
    if 0 ~= stateFlag then
      stateFlag2 = DoesEntityExist
      stateFlag4 = stateFlag
      stateFlag2 = stateFlag2(stateFlag4)
      if stateFlag2 then
        stateFlag2 = IsEntityAVehicle
        stateFlag4 = stateFlag
        stateFlag2 = stateFlag2(stateFlag4)
        if stateFlag2 then
          stateFlag2 = GetEntityModel
          stateFlag4 = stateFlag
          -- Beginner: result below is modelHash.
          stateFlag2 = stateFlag2(stateFlag4)
          stateFlag4 = workingValue11
          stateFlag4 = stateFlag4[stateFlag2]
          if stateFlag4 then
            stateFlag4 = "flatbed"
            if stateFlag4 then
              goto continueAtStep79
            end
          end
          stateFlag4 = workingValue16
          stateFlag4 = stateFlag4[stateFlag2]
          if stateFlag4 then
            stateFlag4 = "tow"
            if stateFlag4 then
              goto continueAtStep79
            end
          end
          stateFlag4 = nil
          ::continueAtStep79::
          if stateFlag4 then
            stateFlag5 = GetEntityCoords
            stateFlag6 = stateFlag
            stateFlag7 = true
            -- Beginner: result below is entityCoords.
            stateFlag5 = stateFlag5(stateFlag6, stateFlag7)
            stateFlag5 = stateFlag5 - localValue3
            stateFlag5 = #stateFlag5
            if localValue5 > stateFlag5 then
              localValue5 = stateFlag5
              localValue4 = stateFlag4
            end
          end
        end
      end
    end
  end
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue54; parameters: localValue1) ===
function workingValue54(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4
  localValue2 = localValue1.vehicleNetId
  if localValue2 then
    localValue2 = tonumber
    localValue3 = localValue1.vehicleNetId
    localValue2 = localValue2(localValue3)
  end
  if localValue2 then
    localValue3 = NetworkDoesNetworkIdExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = NetworkDoesEntityExistWithNetworkId
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        goto continueAtStep21
      end
    end
  end
  localValue3 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return localValue3
  ::continueAtStep21::
  localValue3 = NetworkGetEntityFromNetworkId
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if 0 ~= localValue3 then
    localValue4 = DoesEntityExist
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      goto continueAtStep33
    end
  end
  localValue4 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return localValue4
  ::continueAtStep33::
  localValue4 = GetEntityAttachedTo
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if 0 ~= localValue4 then
    localValue5 = DoesEntityExist
    localValue6 = localValue4
    localValue5 = localValue5(localValue6)
    if localValue5 then
      localValue5 = IsEntityAVehicle
      localValue6 = localValue4
      localValue5 = localValue5(localValue6)
      if localValue5 then
        localValue5 = GetEntityModel
        localValue6 = localValue4
        -- Beginner: result below is modelHash.
        localValue5 = localValue5(localValue6)
        localValue6 = workingValue11
        localValue5 = localValue6[localValue5]
        if localValue5 then
          localValue5 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
          return localValue5
        end
      end
    end
  end
  localValue5 = pairs
  localValue6 = GetGamePool
  localValue7 = "CVehicle"
  localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4 = localValue6(localValue7)
  localValue5, localValue6, localValue7, workingValue62 = localValue5(localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4)
  for workingValue66, stateFlag25 in localValue5, localValue6, localValue7, workingValue62 do
    if stateFlag25 ~= localValue3 and 0 ~= stateFlag25 then
      stateFlag = DoesEntityExist
      stateFlag2 = stateFlag25
      stateFlag = stateFlag(stateFlag2)
      if stateFlag then
        stateFlag = workingValue49
        stateFlag2 = stateFlag25
        stateFlag4 = localValue3
        stateFlag = stateFlag(stateFlag2, stateFlag4)
        if stateFlag then
          stateFlag = "Drive into the depot, then hold ~INPUT_VEH_HEADLIGHT~ in your tow truck to detach the vehicle"
          return stateFlag
        end
      end
    end
  end
  localValue5 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue55; parameters: none) ===
function workingValue55()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66
  localValue1 = workingValue19
  if localValue1 then
    localValue2 = localValue1.type
    if "breakdown" == localValue2 then
      goto continueAtStep13
    end
    localValue2 = localValue1.type
    if "equipment" == localValue2 then
      goto continueAtStep13
    end
  end
  localValue2 = false
  stateFlag3 = localValue2
  return
  ::continueAtStep13::
  localValue2 = workingValue52
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = stateFlag3
  if localValue2 ~= localValue3 then
    localValue3 = stateFlag3
    stateFlag3 = localValue2
    localValue4 = workingValue46
    localValue5 = localValue1
    localValue4(localValue5)
    if localValue3 and not localValue2 then
      localValue4 = localValue1.vehicleNetId
      if localValue4 then
        localValue4 = tonumber
        localValue5 = localValue1.vehicleNetId
        localValue4 = localValue4(localValue5)
      end
      if localValue4 then
        localValue5 = NetworkDoesNetworkIdExist
        localValue6 = localValue4
        localValue5 = localValue5(localValue6)
        if localValue5 then
          localValue5 = NetworkGetEntityFromNetworkId
          localValue6 = localValue4
          localValue5 = localValue5(localValue6)
          if 0 ~= localValue5 then
            localValue6 = DoesEntityExist
            localValue7 = localValue5
            localValue6 = localValue6(localValue7)
            if localValue6 then
              localValue6 = GetEntityCoords
              localValue7 = localValue5
              workingValue62 = true
              -- Beginner: result below is entityCoords.
              localValue6 = localValue6(localValue7, workingValue62)
              localValue7 = eventHandler
              localValue7 = localValue6 - localValue7
              localValue7 = #localValue7
              if localValue7 < 35.0 then
                localValue7 = TriggerServerEvent
                workingValue62 = "9053b9a3f5"
                workingValue66 = localValue4
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9053b9a3f5".
                localValue7(workingValue62, workingValue66)
              end
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue56; parameters: localValue1) ===
function workingValue56(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  if localValue1 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = nil
  localValue3 = nil
  return localValue2, localValue3
  ::continueAtStep10::
  localValue2 = localValue1.type
  if "debris" == localValue2 then
    localValue2 = type
    localValue3 = localValue1.anchor
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      localValue2 = type
      localValue3 = localValue1.anchor
      localValue3 = localValue3.x
      localValue2 = localValue2(localValue3)
      if "number" == localValue2 then
        localValue2 = localValue1.mainSecured
        if localValue2 then
          localValue2 = localValue1.debrisDepotComplete
          if true ~= localValue2 then
            localValue2 = eventHandler.x
            localValue2 = localValue2 + 0.0
            localValue3 = eventHandler.y
            localValue3 = localValue3 + 0.0
            return localValue2, localValue3
          end
        end
        localValue2 = localValue1.anchor
        localValue2 = localValue2.x
        localValue2 = localValue2 + 0.0
        localValue3 = localValue1.anchor
        localValue3 = localValue3.y
        localValue3 = localValue3 + 0.0
        return localValue2, localValue3
    end
  end
  else
    localValue2 = localValue1.type
    if "parts_run" == localValue2 then
      localValue2 = tonumber
      localValue3 = localValue1.stage
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = 1
      end
      if 1 == localValue2 or 2 == localValue2 then
        localValue3 = localValue1.pickup
        if localValue3 then
          goto continueAtStep64
        end
      end
      localValue3 = localValue1.dropoff
      ::continueAtStep64::
      if localValue3 then
        localValue4 = localValue3.x
        if localValue4 then
          localValue4 = localValue3.x
          localValue4 = localValue4 + 0.0
          localValue5 = localValue3.y
          localValue5 = localValue5 + 0.0
          return localValue4, localValue5
        end
      end
    else
      localValue2 = localValue1.type
      if "breakdown" ~= localValue2 then
        localValue2 = localValue1.type
        if "equipment" ~= localValue2 then
          localValue2 = localValue1.type
          if "fuel_runout" ~= localValue2 then
            goto continueAtStep149
          end
        end
      end
      localValue2 = localValue1.type
      if "breakdown" ~= localValue2 then
        localValue2 = localValue1.type
        if "equipment" ~= localValue2 then
          goto continueAtStep104
        end
      end
      localValue2 = workingValue52
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = eventHandler.x
        localValue2 = localValue2 + 0.0
        localValue3 = eventHandler.y
        localValue3 = localValue3 + 0.0
        return localValue2, localValue3
      end
      ::continueAtStep104::
      localValue2 = localValue1.vehicleNetId
      if localValue2 then
        localValue2 = tonumber
        localValue3 = localValue1.vehicleNetId
        localValue2 = localValue2(localValue3)
      end
      if localValue2 then
        localValue3 = NetworkDoesNetworkIdExist
        localValue4 = localValue2
        localValue3 = localValue3(localValue4)
        if localValue3 then
          localValue3 = NetworkDoesEntityExistWithNetworkId
          localValue4 = localValue2
          localValue3 = localValue3(localValue4)
          if localValue3 then
            localValue3 = NetworkGetEntityFromNetworkId
            localValue4 = localValue2
            localValue3 = localValue3(localValue4)
            if 0 ~= localValue3 then
              localValue4 = DoesEntityExist
              localValue5 = localValue3
              localValue4 = localValue4(localValue5)
              if localValue4 then
                localValue4 = GetEntityCoords
                localValue5 = localValue3
                localValue6 = true
                -- Beginner: result below is entityCoords.
                localValue4 = localValue4(localValue5, localValue6)
                localValue5 = localValue4.x
                localValue6 = localValue4.y
                return localValue5, localValue6
              end
            end
          end
        end
      end
      localValue3 = localValue1.spawnX
      if localValue3 then
        localValue3 = localValue1.spawnX
        localValue3 = localValue3 + 0.0
        localValue4 = localValue1.spawnY
        localValue4 = localValue4 + 0.0
        return localValue3, localValue4
      end
    end
  end
  ::continueAtStep149::
  localValue2 = nil
  localValue3 = nil
  return localValue2, localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue57; parameters: none) ===
function workingValue57()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = workingValue19
  localValue2 = workingValue56
  localValue3 = localValue1
  localValue2, localValue3 = localValue2(localValue3)
  if localValue2 and localValue3 then
    localValue4 = workingValue47
    localValue5 = localValue2
    localValue6 = localValue3
    localValue4(localValue5, localValue6)
  end
  localValue4 = workingValue46
  localValue5 = localValue1
  localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue58; parameters: localValue1) ===
function workingValue58(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag
  localValue2 = backgroundThread
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2()
  if localValue1 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      goto continueAtStep11
    end
  end
  return
  ::continueAtStep11::
  localValue2 = localValue1.type
  if "debris" == localValue2 then
    localValue2 = type
    localValue3 = localValue1.anchor
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      localValue2 = type
      localValue3 = localValue1.anchor
      localValue3 = localValue3.x
      localValue2 = localValue2(localValue3)
      if "number" == localValue2 then
        localValue2 = localValue1.mainSecured
        if localValue2 then
          localValue2 = localValue1.debrisDepotComplete
          if true ~= localValue2 then
            localValue2 = workingValue44
            localValue3 = eventHandler.x
            localValue4 = eventHandler.y
            localValue5 = eventHandler.z
            localValue6 = 50
            localValue7 = 2
            workingValue62 = "Depot"
            workingValue66 = text5
            localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66)
            localValue2 = workingValue47
            localValue3 = eventHandler.x
            localValue4 = eventHandler.y
            localValue2(localValue3, localValue4)
            return
          end
        end
        localValue2 = workingValue44
        localValue3 = localValue1.anchor
        localValue3 = localValue3.x
        localValue4 = localValue1.anchor
        localValue4 = localValue4.y
        localValue5 = localValue1.anchor
        localValue5 = localValue5.z
        localValue6 = 318
        localValue7 = 5
        workingValue62 = "Clear-up"
        workingValue66 = text5
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66)
        localValue2 = workingValue47
        localValue3 = localValue1.anchor
        localValue3 = localValue3.x
        localValue4 = localValue1.anchor
        localValue4 = localValue4.y
        localValue2(localValue3, localValue4)
    end
  end
  else
    localValue2 = localValue1.type
    if "parts_run" == localValue2 then
      localValue2 = tonumber
      localValue3 = localValue1.stage
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = 1
      end
      if 1 == localValue2 or 2 == localValue2 then
        localValue3 = localValue1.pickup
        if localValue3 then
          localValue3 = workingValue44
          localValue4 = localValue1.pickup
          localValue4 = localValue4.x
          localValue5 = localValue1.pickup
          localValue5 = localValue5.y
          localValue6 = localValue1.pickup
          localValue6 = localValue6.z
          localValue7 = 478
          workingValue62 = 2
          workingValue66 = "Supplier"
          stateFlag25 = text5
          localValue3(localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25)
          localValue3 = workingValue47
          localValue4 = localValue1.pickup
          localValue4 = localValue4.x
          localValue5 = localValue1.pickup
          localValue5 = localValue5.y
          localValue3(localValue4, localValue5)
      end
      elseif 3 == localValue2 or 4 == localValue2 then
        localValue3 = localValue1.dropoff
        if localValue3 then
          localValue3 = workingValue44
          localValue4 = localValue1.dropoff
          localValue4 = localValue4.x
          localValue5 = localValue1.dropoff
          localValue5 = localValue5.y
          localValue6 = localValue1.dropoff
          localValue6 = localValue6.z
          localValue7 = 478
          workingValue62 = 2
          workingValue66 = "Drop-off"
          stateFlag25 = text5
          localValue3(localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25)
          localValue3 = workingValue47
          localValue4 = localValue1.dropoff
          localValue4 = localValue4.x
          localValue5 = localValue1.dropoff
          localValue5 = localValue5.y
          localValue3(localValue4, localValue5)
        end
      end
    else
      localValue2 = localValue1.type
      if "breakdown" ~= localValue2 then
        localValue2 = localValue1.type
        if "equipment" ~= localValue2 then
          localValue2 = localValue1.type
          if "fuel_runout" ~= localValue2 then
            goto continueAtStep236
          end
        end
      end
      localValue2 = localValue1.vehicleNetId
      if localValue2 then
        localValue2 = tonumber
        localValue3 = localValue1.vehicleNetId
        localValue2 = localValue2(localValue3)
      end
      if localValue2 then
        localValue3 = NetworkDoesNetworkIdExist
        localValue4 = localValue2
        localValue3 = localValue3(localValue4)
        if localValue3 then
          localValue3 = NetworkDoesEntityExistWithNetworkId
          localValue4 = localValue2
          localValue3 = localValue3(localValue4)
          if localValue3 then
            localValue3 = NetworkGetEntityFromNetworkId
            localValue4 = localValue2
            localValue3 = localValue3(localValue4)
            if 0 == localValue3 then
              goto continueAtStep236
            end
            localValue4 = DoesEntityExist
            localValue5 = localValue3
            localValue4 = localValue4(localValue5)
            if not localValue4 then
              goto continueAtStep236
            end
            localValue4 = localValue1.type
            if "breakdown" ~= localValue4 then
              localValue4 = localValue1.type
              if "equipment" ~= localValue4 then
                goto continueAtStep187
              end
            end
            localValue4 = workingValue52
            localValue5 = localValue1
            localValue4 = localValue4(localValue5)
            if localValue4 then
              localValue4 = workingValue44
              localValue5 = eventHandler.x
              localValue6 = eventHandler.y
              localValue7 = eventHandler.z
              workingValue62 = 50
              workingValue66 = 2
              stateFlag25 = "Yard"
              stateFlag = text5
              localValue4(localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag)
              localValue4 = workingValue47
              localValue5 = eventHandler.x
              localValue6 = eventHandler.y
              localValue4(localValue5, localValue6)
              return
            end
            ::continueAtStep187::
            localValue4 = workingValue45
            localValue5 = localValue3
            localValue6 = 402
            localValue7 = 5
            workingValue62 = "Callout"
            workingValue66 = text5
            localValue4(localValue5, localValue6, localValue7, workingValue62, workingValue66)
            localValue4 = localValue1.type
            if "breakdown" ~= localValue4 then
              localValue4 = localValue1.type
              if "equipment" ~= localValue4 then
                goto continueAtStep211
              end
            end
            localValue4 = workingValue44
            localValue5 = eventHandler.x
            localValue6 = eventHandler.y
            localValue7 = eventHandler.z
            workingValue62 = 50
            workingValue66 = 2
            stateFlag25 = "Depot yard"
            stateFlag = text5
            stateFlag = stateFlag * 0.92
            localValue4(localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag)
            ::continueAtStep211::
            localValue4 = GetEntityCoords
            localValue5 = localValue3
            localValue6 = true
            -- Beginner: result below is entityCoords.
            localValue4 = localValue4(localValue5, localValue6)
            localValue5 = workingValue47
            localValue6 = localValue4.x
            localValue7 = localValue4.y
            localValue5(localValue6, localValue7)
        end
      end
      else
        localValue3 = localValue1.spawnX
        if localValue3 then
          localValue3 = workingValue44
          localValue4 = localValue1.spawnX
          localValue5 = localValue1.spawnY
          localValue6 = localValue1.spawnZ
          localValue7 = 402
          workingValue62 = 5
          workingValue66 = "Callout"
          stateFlag25 = text5
          localValue3(localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25)
          localValue3 = workingValue47
          localValue4 = localValue1.spawnX
          localValue5 = localValue1.spawnY
          localValue3(localValue4, localValue5)
        end
      end
    end
  end
  ::continueAtStep236::
end
workingValue46 = workingValue58
workingValue58 = AddStateBagChangeHandler
eventHandler2 = "towVehicle"
text7 = nil

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: localValue1, localValue2, localValue3) ===
function workingValue59(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = workingValue19
  if not localValue4 then
    return
  end
  localValue5 = localValue4.type
  if "breakdown" ~= localValue5 then
    localValue5 = localValue4.type
    if "equipment" ~= localValue5 then
      return
    end
  end
  localValue5 = tonumber
  localValue6 = localValue4.vehicleNetId
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    return
  end
  if localValue3 then
    localValue6 = tonumber
    localValue7 = localValue3.targetNetId
    localValue6 = localValue6(localValue7)
    if localValue6 == localValue5 then
      localValue6 = stateFlag3
      if not localValue6 then
        localValue6 = true
        stateFlag3 = localValue6
        localValue6 = workingValue46
        localValue7 = localValue4
        localValue6(localValue7)
      end
    end
  end
end
workingValue58(eventHandler2, text7, workingValue59)

-- === HELPER FUNCTION (decompiler name: workingValue58; parameters: localValue1) ===
function workingValue58(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  if localValue1 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      goto continueAtStep11
    end
  end
  localValue2 = nil
  workingValue18 = localValue2
  return
  ::continueAtStep11::
  localValue2 = localValue1.vehicleNetId
  if localValue2 then
    localValue2 = nil
    workingValue18 = localValue2
    return
  end
  localValue2 = localValue1.type
  if "breakdown" ~= localValue2 then
    localValue2 = localValue1.type
    if "equipment" ~= localValue2 then
      localValue2 = localValue1.type
      if "fuel_runout" ~= localValue2 then
        goto continueAtStep109
      end
    end
  end
  localValue2 = localValue1.spawnX
  if localValue2 then
    localValue2 = localValue1.contractId
    if localValue2 then
      localValue2 = localValue1.modelName
      if localValue2 then
        localValue2 = nil
        localValue3 = nil
        localValue4 = localValue1.type
        if "breakdown" == localValue4 then
          localValue4 = tonumber
          localValue5 = cmgOperation.missionVehicleEngineHealth
          localValue4 = localValue4(localValue5)
          localValue2 = localValue4 or localValue2
          if not localValue4 then
            localValue2 = 150.0
          end
          localValue4 = tonumber
          localValue5 = cmgOperation.missionVehicleBodyHealth
          localValue4 = localValue4(localValue5)
          localValue3 = localValue4 or localValue3
          if not localValue4 then
            localValue3 = 250.0
          end
        else
          localValue4 = localValue1.type
          if "equipment" == localValue4 then
            localValue4 = tonumber
            localValue5 = cmgOperation.missionVehicleEngineHealth
            localValue4 = localValue4(localValue5)
            localValue2 = localValue4 or localValue2
            if not localValue4 then
              localValue2 = 150.0
            end
            localValue4 = tonumber
            localValue5 = cmgOperation.missionVehicleBodyHealth
            localValue4 = localValue4(localValue5)
            localValue3 = localValue4 or localValue3
            if not localValue4 then
              localValue3 = 250.0
            end
          else
            localValue4 = tonumber
            localValue5 = cmgOperation.fuelMissionEngineHealth
            localValue4 = localValue4(localValue5)
            localValue2 = localValue4 or localValue2
            if not localValue4 then
              localValue2 = 900.0
            end
            localValue4 = tonumber
            localValue5 = cmgOperation.fuelMissionBodyHealth
            localValue4 = localValue4(localValue5)
            localValue3 = localValue4 or localValue3
            if not localValue4 then
              localValue3 = 950.0
            end
          end
        end
        localValue4 = {}
        localValue5 = localValue1.contractId
        localValue4.contractId = localValue5
        localValue5 = localValue1.modelName
        localValue4.modelName = localValue5
        localValue5 = localValue1.spawnX
        localValue4.x = localValue5
        localValue5 = localValue1.spawnY
        localValue4.y = localValue5
        localValue5 = localValue1.spawnZ
        localValue4.z = localValue5
        localValue5 = localValue1.spawnW
        if not localValue5 then
          localValue5 = 0.0
        end
        localValue4.w = localValue5
        localValue4.engineHealth = localValue2
        localValue4.bodyHealth = localValue3
        localValue5 = tonumber
        localValue6 = cmgOperation.vehicleSpawnNearMeters
        localValue5 = localValue5(localValue6)
        if not localValue5 then
          localValue5 = 110.0
        end
        localValue4.spawnNearMeters = localValue5
        localValue5 = localValue1.type
        localValue4.jobKind = localValue5
        workingValue18 = localValue4
      end
    end
  end
  ::continueAtStep109::
end
eventHandler2 = RegisterNetEvent
text7 = "35ef91c369"
-- Beginner: this function handles network event "35ef91c369".

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: localValue1) ===
function workingValue59(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = localValue1.contract
    workingValue19 = localValue2
    localValue2 = workingValue19
    if localValue2 then
      localValue2 = workingValue19.type
      if "debris" == localValue2 then
        goto continueAtStep16
      end
    end
    localValue2 = workingValue32
    localValue2()
    ::continueAtStep16::
    localValue2 = workingValue46
    localValue3 = workingValue19
    localValue2(localValue3)
    localValue2 = workingValue19
    if localValue2 then
      localValue2 = workingValue19.vehicleNetId
      if not localValue2 then
        localValue2 = workingValue58
        localValue3 = workingValue19
        localValue2(localValue3)
    end
    else
      localValue2 = workingValue19
      if localValue2 then
        localValue2 = workingValue19.vehicleNetId
        if localValue2 then
          localValue2 = nil
          workingValue18 = localValue2
      end
      else
        localValue2 = workingValue19
        if not localValue2 then
          localValue2 = nil
          workingValue18 = localValue2
        end
      end
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "MECHANIC_SYNC"
  localValue4 = localValue1 or localValue4
  if not localValue1 then
    localValue4 = {}
  end
  localValue3.payload = localValue4
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "35ef91c369".
eventHandler2(text7, workingValue59)
eventHandler2 = RegisterNetEvent
text7 = "31a7475ed5"
-- Beginner: this function handles network event "31a7475ed5".

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: localValue1) ===
function workingValue59(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = localValue1.modelName
    if localValue2 then
      localValue2 = localValue1.contractId
      if localValue2 then
        goto continueAtStep13
      end
    end
  end
  return
  ::continueAtStep13::
  workingValue18 = localValue1
  localValue2 = localValue1.x
  if localValue2 then
    localValue2 = localValue1.y
    if localValue2 then
      localValue2 = workingValue47
      localValue3 = localValue1.x
      localValue4 = localValue1.y
      localValue2(localValue3, localValue4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "31a7475ed5".
eventHandler2(text7, workingValue59)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25
  localValue1 = workingValue18
  if localValue1 then
    localValue2 = localValue1.contractId
    if localValue2 then
      localValue2 = localValue1.modelName
      if localValue2 then
        goto continueAtStep11
      end
    end
  end
  return
  ::continueAtStep11::
  localValue2 = CMG
  localValue2 = localValue2.requestEntitySpawn
  localValue3 = "mechanic_contract_vehicle"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.spawnVehicle
  localValue3 = localValue1.modelName
  localValue4 = localValue1.x
  localValue5 = localValue1.y
  localValue6 = localValue1.z
  localValue7 = localValue1.w
  if not localValue7 then
    localValue7 = 0.0
  end
  workingValue62 = false
  workingValue66 = true
  stateFlag25 = true
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25)
  if localValue2 and 0 ~= localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep44
    end
  end
  localValue3 = TriggerServerEvent
  localValue4 = "516e22ccad"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "516e22ccad".
  localValue3(localValue4)
  localValue3 = nil
  workingValue18 = localValue3
  return
  ::continueAtStep44::
  localValue3 = SetEntityHeading
  localValue4 = localValue2
  localValue5 = localValue1.w
  if not localValue5 then
    localValue5 = 0.0
  end
  -- Beginner: Change the direction an entity is facing.
  localValue3(localValue4, localValue5)
  localValue3 = tonumber
  localValue4 = localValue1.engineHealth
  localValue3 = localValue3(localValue4)
  localValue4 = tonumber
  localValue5 = localValue1.bodyHealth
  localValue4 = localValue4(localValue5)
  if localValue3 then
    localValue5 = SetVehicleEngineHealth
    localValue6 = localValue2
    localValue7 = localValue3 + 0.0
    localValue5(localValue6, localValue7)
  end
  if localValue4 then
    localValue5 = SetVehicleBodyHealth
    localValue6 = localValue2
    localValue7 = localValue4 + 0.0
    localValue5(localValue6, localValue7)
  end
  localValue5 = SetVehiclePetrolTankHealth
  localValue6 = localValue2
  localValue7 = 400.0
  localValue5(localValue6, localValue7)
  localValue5 = localValue1.jobKind
  if "fuel_runout" == localValue5 then
    localValue5 = CMG
    localValue5 = localValue5.setVehicleFuel
    if localValue5 then
      localValue5 = CMG
      localValue5 = localValue5.setVehicleFuel
      localValue6 = localValue2
      localValue7 = 3.0
      localValue5(localValue6, localValue7)
    else
      localValue5 = SetVehicleFuelLevel
      localValue6 = localValue2
      localValue7 = 3.0
      localValue5(localValue6, localValue7)
    end
  end
  localValue5 = NetworkGetNetworkIdFromEntity
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  localValue6 = TriggerServerEvent
  localValue7 = "65a26e05a8"
  workingValue62 = localValue5
  workingValue66 = localValue1.contractId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "65a26e05a8".
  localValue6(localValue7, workingValue62, workingValue66)
  localValue6 = nil
  workingValue18 = localValue6
  localValue6 = backgroundThread
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue6()
end
text7 = Citizen
text7 = text7.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: none) ===
function workingValue59()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62
  while true do
    localValue1 = 1500
    localValue2 = workingValue18
    if localValue2 then
      localValue2 = workingValue18.x
      if localValue2 then
        localValue1 = 400
        localValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        localValue3 = GetEntityCoords
        localValue4 = localValue2
        localValue5 = true
        -- Beginner: result below is entityCoords.
        localValue3 = localValue3(localValue4, localValue5)
        localValue4 = tonumber
        localValue5 = workingValue18.spawnNearMeters
        localValue4 = localValue4(localValue5)
        if not localValue4 then
          localValue4 = 110.0
        end
        localValue5 = vector3
        localValue6 = workingValue18.x
        localValue6 = localValue6 + 0.0
        localValue7 = workingValue18.y
        localValue7 = localValue7 + 0.0
        workingValue62 = workingValue18.z
        workingValue62 = workingValue62 + 0.0
        localValue5 = localValue5(localValue6, localValue7, workingValue62)
        localValue5 = localValue3 - localValue5
        localValue5 = #localValue5
        if localValue4 >= localValue5 then
          localValue5 = eventHandler2
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          localValue5()
        end
      end
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = localValue1
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text7(workingValue59)
text7 = Citizen
text7 = text7.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: none) ===
function workingValue59()
  local localValue1, localValue2
  while true do
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 400
    localValue1(localValue2)
    localValue1 = workingValue55
    localValue1()
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text7(workingValue59)
text7 = Citizen
text7 = text7.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: none) ===
function workingValue59()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21
  while true do
    localValue1 = workingValue19
    localValue2 = 1500
    if localValue1 then
      localValue3 = CMG
      localValue3 = localValue3.hasClientPermission
      localValue4 = "aa.onduty.permission"
      localValue3 = localValue3(localValue4)
      if localValue3 then
        localValue3 = nil
        localValue4 = nil
        localValue5 = nil
        localValue6 = localValue1.type
        if "breakdown" ~= localValue6 then
          localValue6 = localValue1.type
          if "equipment" ~= localValue6 then
            localValue6 = localValue1.type
            if "fuel_runout" ~= localValue6 then
              goto continueAtStep87
            end
          end
        end
        localValue6 = localValue1.vehicleNetId
        if localValue6 then
          localValue6 = tonumber
          localValue7 = localValue1.vehicleNetId
          localValue6 = localValue6(localValue7)
        end
        if localValue6 then
          localValue7 = NetworkDoesNetworkIdExist
          workingValue62 = localValue6
          localValue7 = localValue7(workingValue62)
          if localValue7 then
            localValue7 = NetworkDoesEntityExistWithNetworkId
            workingValue62 = localValue6
            localValue7 = localValue7(workingValue62)
            if localValue7 then
              localValue7 = NetworkGetEntityFromNetworkId
              workingValue62 = localValue6
              localValue7 = localValue7(workingValue62)
              if 0 == localValue7 then
                goto continueAtStep87
              end
              workingValue62 = DoesEntityExist
              workingValue66 = localValue7
              workingValue62 = workingValue62(workingValue66)
              if not workingValue62 then
                goto continueAtStep87
              end
              workingValue62 = localValue1.type
              if "breakdown" ~= workingValue62 then
                workingValue62 = localValue1.type
                if "equipment" ~= workingValue62 then
                  goto continueAtStep65
                end
              end
              workingValue62 = workingValue52
              workingValue66 = localValue1
              workingValue62 = workingValue62(workingValue66)
              if workingValue62 then
                workingValue62 = nil
                workingValue66 = nil
                localValue5 = nil
                localValue4 = workingValue66
                localValue3 = workingValue62
              else
                ::continueAtStep65::
                workingValue62 = GetEntityCoords
                workingValue66 = localValue7
                stateFlag25 = true
                -- Beginner: result below is entityCoords.
                workingValue62 = workingValue62(workingValue66, stateFlag25)
                workingValue66 = workingValue62.x
                stateFlag25 = workingValue62.y
                localValue5 = workingValue62.z
                localValue4 = stateFlag25
                localValue3 = workingValue66
              end
          end
        end
        else
          localValue7 = localValue1.spawnX
          if localValue7 then
            localValue7 = localValue1.spawnX
            localValue3 = localValue7 + 0.0
            localValue7 = localValue1.spawnY
            localValue4 = localValue7 + 0.0
            localValue7 = localValue1.spawnZ
            localValue5 = localValue7 + 0.0
          end
        end
        ::continueAtStep87::
        if localValue3 then
          localValue6 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue6 = localValue6()
          localValue7 = GetEntityCoords
          workingValue62 = localValue6
          workingValue66 = true
          -- Beginner: result below is entityCoords.
          localValue7 = localValue7(workingValue62, workingValue66)
          workingValue62 = vector3
          workingValue66 = localValue3 + 0.0
          stateFlag25 = localValue4 + 0.0
          stateFlag = localValue5 + 0.0
          workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag)
          workingValue62 = localValue7 - workingValue62
          workingValue62 = #workingValue62
          workingValue66 = number12
          if workingValue62 < workingValue66 then
            localValue2 = 0
            workingValue66 = DrawMarker
            stateFlag25 = 1
            stateFlag = localValue3 + 0.0
            stateFlag2 = localValue4 + 0.0
            stateFlag4 = localValue5 - 1.0
            stateFlag5 = 0.0
            stateFlag6 = 0.0
            stateFlag7 = 0.0
            stateFlag8 = 0.0
            stateFlag9 = 0.0
            stateFlag10 = 0.0
            number3 = number13
            stateFlag11 = number13
            stateFlag12 = number14
            stateFlag13 = 255
            stateFlag14 = 210
            stateFlag15 = 72
            stateFlag16 = 150
            stateFlag17 = false
            number7 = false
            stateFlag18 = 2
            stateFlag19 = false
            stateFlag20 = nil
            number9 = nil
            stateFlag21 = false
            workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21)
            if workingValue62 < 22.0 then
              workingValue66 = localValue1.type
              if "breakdown" ~= workingValue66 then
                workingValue66 = localValue1.type
                if "equipment" ~= workingValue66 then
                  goto continueAtStep168
                end
              end
              workingValue66 = workingValue52
              stateFlag25 = localValue1
              workingValue66 = workingValue66(stateFlag25)
              if not workingValue66 then
                workingValue66 = workingValue53
                workingValue66 = workingValue66()
                if "tow" == workingValue66 then
                  stateFlag25 = workingValue31
                  stateFlag = "Use ~INPUT_VEH_FLY_PITCH_DOWN_ONLY~ to lower the tow hook, ~INPUT_VEH_FLY_PITCH_UP_ONLY~ to raise."
                  stateFlag25(stateFlag)
                elseif "flatbed" == workingValue66 then
                  stateFlag25 = workingValue31
                  stateFlag = "Press ~INPUT_CONTEXT~ on the target vehicle to attach it to your flatbed"
                  stateFlag25(stateFlag)
                else
                  stateFlag25 = workingValue31
                  stateFlag = "~y~Flatbed:~w~ ~INPUT_CONTEXT~ on the vehicle. ~y~Tow truck:~w~ ~INPUT_VEH_FLY_PITCH_DOWN_ONLY~ / ~INPUT_VEH_FLY_PITCH_UP_ONLY~ for the hook, then reverse to attach"
                  stateFlag25(stateFlag)
                end
              end
            end
          end
        end
      end
    end
    ::continueAtStep168::
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = localValue2
    localValue3(localValue4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text7(workingValue59)
text7 = Citizen
text7 = text7.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: none) ===
function workingValue59()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23
  while true do
    localValue1 = workingValue19
    localValue2 = 1200
    if localValue1 then
      localValue3 = CMG
      localValue3 = localValue3.hasClientPermission
      localValue4 = "aa.onduty.permission"
      localValue3 = localValue3(localValue4)
      if localValue3 then
        localValue3 = workingValue51
        localValue4 = localValue1
        localValue3 = localValue3(localValue4)
        if localValue3 then
          localValue3 = eventHandler.x
          localValue3 = localValue3 + 0.0
          localValue4 = eventHandler.y
          localValue4 = localValue4 + 0.0
          localValue5 = eventHandler.z
          localValue5 = localValue5 + 0.0
          localValue6 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue6 = localValue6()
          localValue7 = GetEntityCoords
          workingValue62 = localValue6
          workingValue66 = true
          -- Beginner: result below is entityCoords.
          localValue7 = localValue7(workingValue62, workingValue66)
          workingValue62 = GetGroundZFor_3dCoord
          workingValue66 = localValue3
          stateFlag25 = localValue4
          stateFlag = localValue5 + 80.0
          stateFlag2 = 0.0
          stateFlag4 = false
          workingValue62, workingValue66 = workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4)
          if workingValue66 and workingValue66 > 0.0 then
            stateFlag25 = workingValue66 + 0.12
            if stateFlag25 then
              goto continueAtStep48
            end
          end
          stateFlag25 = localValue5
          ::continueAtStep48::
          stateFlag = vector3
          stateFlag2 = localValue3
          stateFlag4 = localValue4
          stateFlag5 = stateFlag25
          stateFlag = stateFlag(stateFlag2, stateFlag4, stateFlag5)
          stateFlag = localValue7 - stateFlag
          stateFlag = #stateFlag
          stateFlag2 = number12
          if stateFlag < stateFlag2 then
            localValue2 = 0
            stateFlag2 = DrawMarker
            stateFlag4 = 1
            stateFlag5 = localValue3
            stateFlag6 = localValue4
            stateFlag7 = stateFlag25 - 0.35
            stateFlag8 = 0.0
            stateFlag9 = 0.0
            stateFlag10 = 0.0
            number3 = 0.0
            stateFlag11 = 0.0
            stateFlag12 = 0.0
            stateFlag13 = number17
            stateFlag14 = number17
            stateFlag15 = number18
            stateFlag16 = 72
            stateFlag17 = 255
            number7 = 140
            stateFlag18 = 195
            stateFlag19 = false
            stateFlag20 = false
            number9 = 2
            stateFlag21 = false
            stateFlag22 = nil
            number11 = nil
            stateFlag23 = false
            stateFlag2(stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23)
          end
          stateFlag2 = workingValue52
          stateFlag4 = localValue1
          stateFlag2 = stateFlag2(stateFlag4)
          if stateFlag2 then
            stateFlag2 = number19
            if stateFlag < stateFlag2 then
              localValue2 = 0
              stateFlag2 = workingValue31
              stateFlag4 = workingValue54
              stateFlag5 = localValue1
              stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23 = stateFlag4(stateFlag5)
              stateFlag2(stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23)
            end
          end
        end
      end
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = localValue2
    localValue3(localValue4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text7(workingValue59)
text7 = Citizen
text7 = text7.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: none) ===
function workingValue59()
  local localValue1, localValue2, localValue3
  while true do
    localValue1 = workingValue19
    if localValue1 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "aa.onduty.permission"
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = workingValue28
        localValue3 = localValue1
        localValue2(localValue3)
        localValue2 = Citizen
        localValue2 = localValue2.Wait
        localValue3 = 0
        localValue2(localValue3)
    end
    else
      localValue2 = workingValue27
      localValue2()
      localValue2 = Citizen
      localValue2 = localValue2.Wait
      localValue3 = 1200
      localValue2(localValue3)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text7(workingValue59)

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetVehiclePedIsIn
  localValue3 = localValue1
  localValue4 = false
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2(localValue3, localValue4)
  if 0 ~= localValue2 then
    localValue3 = GetPedInVehicleSeat
    localValue4 = localValue2
    localValue5 = -1
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 == localValue1 then
      localValue3 = GetEntityModel
      localValue4 = localValue2
      -- Beginner: result below is modelHash.
      localValue3 = localValue3(localValue4)
      localValue4 = workingValue11
      localValue3 = localValue4[localValue3]
      if localValue3 then
        return localValue2
      end
    end
  end
  localValue3 = 0
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue59; parameters: localValue1) ===
function workingValue59(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GetEntityCoords
  localValue4 = localValue2
  localValue5 = true
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = 0
  localValue5 = localValue1 + 0.01
  localValue6 = pairs
  localValue7 = GetGamePool
  workingValue62 = "CVehicle"
  localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7 = localValue7(workingValue62)
  localValue6, localValue7, workingValue62, workingValue66 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
  for stateFlag25, stateFlag in localValue6, localValue7, workingValue62, workingValue66 do
    if 0 ~= stateFlag then
      stateFlag2 = DoesEntityExist
      stateFlag4 = stateFlag
      stateFlag2 = stateFlag2(stateFlag4)
      if stateFlag2 then
        stateFlag2 = GetEntityModel
        stateFlag4 = stateFlag
        -- Beginner: result below is modelHash.
        stateFlag2 = stateFlag2(stateFlag4)
        stateFlag4 = workingValue11
        stateFlag2 = stateFlag4[stateFlag2]
        if stateFlag2 then
          stateFlag2 = GetOffsetFromEntityInWorldCoords
          stateFlag4 = stateFlag
          stateFlag5 = 0.0
          stateFlag6 = -3.85
          stateFlag7 = 0.55
          stateFlag2 = stateFlag2(stateFlag4, stateFlag5, stateFlag6, stateFlag7)
          stateFlag4 = localValue3 - stateFlag2
          stateFlag4 = #stateFlag4
          if localValue5 > stateFlag4 then
            localValue5 = stateFlag4
            localValue4 = stateFlag
          end
        end
      end
    end
  end
  localValue6 = localValue4
  localValue7 = localValue5
  return localValue6, localValue7
end

-- === HELPER FUNCTION (decompiler name: workingValue60; parameters: localValue1) ===
function workingValue60(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GetEntityCoords
  localValue4 = localValue2
  localValue5 = true
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = 0
  localValue5 = localValue1 + 0.01
  localValue6 = pairs
  localValue7 = GetGamePool
  workingValue62 = "CVehicle"
  localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7 = localValue7(workingValue62)
  localValue6, localValue7, workingValue62, workingValue66 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
  for stateFlag25, stateFlag in localValue6, localValue7, workingValue62, workingValue66 do
    if 0 ~= stateFlag then
      stateFlag2 = DoesEntityExist
      stateFlag4 = stateFlag
      stateFlag2 = stateFlag2(stateFlag4)
      if stateFlag2 then
        stateFlag2 = IsEntityAVehicle
        stateFlag4 = stateFlag
        stateFlag2 = stateFlag2(stateFlag4)
        if stateFlag2 then
          stateFlag2 = GetOffsetFromEntityInWorldCoords
          stateFlag4 = stateFlag
          stateFlag5 = 0.0
          stateFlag6 = -3.25
          stateFlag7 = 0.55
          stateFlag2 = stateFlag2(stateFlag4, stateFlag5, stateFlag6, stateFlag7)
          stateFlag4 = localValue3 - stateFlag2
          stateFlag4 = #stateFlag4
          if localValue5 > stateFlag4 then
            localValue5 = stateFlag4
            localValue4 = stateFlag
          end
        end
      end
    end
  end
  localValue6 = localValue4
  localValue7 = localValue5
  return localValue6, localValue7
end
backgroundThread2 = Citizen
backgroundThread2 = backgroundThread2.CreateThread

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24
  while true do
    localValue1 = workingValue19
    if localValue1 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "aa.onduty.permission"
      localValue2 = localValue2(localValue3)
      if localValue2 then
        goto continueAtStep19
      end
    end
    if not localValue1 then
      localValue2 = nil
      workingValue22 = localValue2
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 1200
    localValue2(localValue3)
    goto continueAtStep866
    ::continueAtStep19::
    localValue2 = localValue1.type
    if "debris" ~= localValue2 then
      localValue2 = nil
      workingValue22 = localValue2
    end
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = GetEntityCoords
    localValue4 = localValue2
    localValue5 = true
    -- Beginner: result below is entityCoords.
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = 600
    localValue5 = localValue1.type
    if "debris" == localValue5 then
      localValue5 = type
      localValue6 = localValue1.anchor
      localValue5 = localValue5(localValue6)
      if "table" == localValue5 then
        localValue5 = type
        localValue6 = localValue1.anchor
        localValue6 = localValue6.x
        localValue5 = localValue5(localValue6)
        if "number" == localValue5 then
          localValue5 = localValue1.mainSecured
          if not localValue5 then
            localValue5 = localValue1.anchor
            localValue5 = localValue5.x
            localValue5 = localValue5 + 0.0
            localValue6 = localValue1.anchor
            localValue6 = localValue6.y
            localValue6 = localValue6 + 0.0
            localValue7 = localValue1.anchor
            localValue7 = localValue7.z
            localValue7 = localValue7 + 0.0
            workingValue62 = vector3
            workingValue66 = localValue5
            stateFlag25 = localValue6
            stateFlag = localValue7
            workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag)
            workingValue62 = localValue3 - workingValue62
            workingValue62 = #workingValue62
            if workingValue62 < 42.0 then
              localValue4 = 0
              workingValue66 = DrawMarker
              stateFlag25 = 1
              stateFlag = localValue5
              stateFlag2 = localValue6
              stateFlag4 = localValue7 - 1.0
              stateFlag5 = 0.0
              stateFlag6 = 0.0
              stateFlag7 = 0.0
              stateFlag8 = 0.0
              stateFlag9 = 0.0
              stateFlag10 = 0.0
              number3 = 3.2
              stateFlag11 = 3.2
              stateFlag12 = 1.1
              stateFlag13 = 200
              stateFlag14 = 200
              stateFlag15 = 80
              stateFlag16 = 110
              stateFlag17 = false
              number7 = false
              stateFlag18 = 2
              stateFlag19 = false
              stateFlag20 = nil
              number9 = nil
              stateFlag21 = false
              workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21)
            end
            workingValue66 = tonumber
            stateFlag25 = localValue1.carryingSecondarySlot
            workingValue66 = workingValue66(stateFlag25)
            if workingValue66 then
              stateFlag25 = workingValue59
              stateFlag = 5.5
              stateFlag25, stateFlag = stateFlag25(stateFlag)
              if 0 ~= stateFlag25 then
                stateFlag2 = GetVehiclePedIsIn
                stateFlag4 = localValue2
                stateFlag5 = false
                -- Beginner: result below is currentVehicle.
                stateFlag2 = stateFlag2(stateFlag4, stateFlag5)
                if 0 == stateFlag2 then
                  localValue4 = 0
                  stateFlag2 = 4.2
                  if stateFlag < stateFlag2 then
                    stateFlag2 = workingValue31
                    stateFlag4 = "~INPUT_CONTEXT~ to stack it on the bed"
                    stateFlag2(stateFlag4)
                    stateFlag2 = IsControlJustPressed
                    stateFlag4 = 0
                    stateFlag5 = 51
                    stateFlag2 = stateFlag2(stateFlag4, stateFlag5)
                    if stateFlag2 then
                      stateFlag2 = workingValue66
                      stateFlag4 = stateFlag25
                      stateFlag5 = DoesEntityExist
                      stateFlag6 = stateFlag4
                      stateFlag5 = stateFlag5(stateFlag6)
                      if stateFlag5 then
                        stateFlag5 = workingValue39
                        stateFlag6 = stateFlag4
                        stateFlag7 = stateFlag2
                        stateFlag5 = stateFlag5(stateFlag6, stateFlag7)
                        if stateFlag5 then
                          stateFlag5 = TriggerServerEvent
                          stateFlag6 = "9e60778b9c"
                          stateFlag7 = NetworkGetNetworkIdFromEntity
                          stateFlag8 = stateFlag4
                          stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24 = stateFlag7(stateFlag8)
                          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9e60778b9c".
                          stateFlag5(stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24)
                        end
                      end
                      stateFlag5 = Citizen
                      stateFlag5 = stateFlag5.Wait
                      stateFlag6 = 800
                      stateFlag5(stateFlag6)
                    end
                  else
                    stateFlag2 = workingValue31
                    stateFlag4 = "Take it to the back of the flatbed"
                    stateFlag2(stateFlag4)
                  end
                end
              end
            else
              stateFlag25 = nil
              stateFlag = 2.85
              stateFlag2 = pairs
              stateFlag4 = dataCollection2
              stateFlag2, stateFlag4, stateFlag5, stateFlag6 = stateFlag2(stateFlag4)
              for stateFlag7, stateFlag8 in stateFlag2, stateFlag4, stateFlag5, stateFlag6 do
                if stateFlag8 and 0 ~= stateFlag8 then
                  stateFlag9 = DoesEntityExist
                  stateFlag10 = stateFlag8
                  stateFlag9 = stateFlag9(stateFlag10)
                  if stateFlag9 then
                    stateFlag9 = cmgOperation4
                    stateFlag10 = localValue1
                    number3 = stateFlag7
                    stateFlag9 = stateFlag9(stateFlag10, number3)
                    if not stateFlag9 then
                      stateFlag9 = GetEntityCoords
                      stateFlag10 = stateFlag8
                      number3 = true
                      -- Beginner: result below is entityCoords.
                      stateFlag9 = stateFlag9(stateFlag10, number3)
                      stateFlag10 = localValue3 - stateFlag9
                      stateFlag10 = #stateFlag10
                      if stateFlag > stateFlag10 then
                        stateFlag = stateFlag10
                        stateFlag25 = stateFlag7
                      end
                    end
                  end
                end
              end
              if stateFlag25 then
                stateFlag2 = GetVehiclePedIsIn
                stateFlag4 = localValue2
                stateFlag5 = false
                -- Beginner: result below is currentVehicle.
                stateFlag2 = stateFlag2(stateFlag4, stateFlag5)
                if 0 == stateFlag2 then
                  stateFlag2 = 2.75
                  if stateFlag < stateFlag2 then
                    localValue4 = 0
                    stateFlag2 = workingValue31
                    stateFlag4 = "~INPUT_CONTEXT~ to grab a piece of debris"
                    stateFlag2(stateFlag4)
                    stateFlag2 = IsControlJustPressed
                    stateFlag4 = 0
                    stateFlag5 = 51
                    stateFlag2 = stateFlag2(stateFlag4, stateFlag5)
                    if stateFlag2 then
                      stateFlag2 = TriggerServerEvent
                      stateFlag4 = "c6e44e597f"
                      stateFlag5 = stateFlag25
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c6e44e597f".
                      stateFlag2(stateFlag4, stateFlag5)
                      stateFlag2 = Citizen
                      stateFlag2 = stateFlag2.Wait
                      stateFlag4 = 800
                      stateFlag2(stateFlag4)
                    end
                  end
                end
              end
            end
            stateFlag25 = workingValue34
            stateFlag = localValue1
            stateFlag25 = stateFlag25(stateFlag)
            if stateFlag25 then
              stateFlag25 = tonumber
              stateFlag = localValue1.carryingSecondarySlot
              stateFlag25 = stateFlag25(stateFlag)
              if not stateFlag25 then
                stateFlag25 = tostring
                stateFlag = localValue1.contractId
                if not stateFlag then
                  stateFlag = ""
                end
                stateFlag25 = stateFlag25(stateFlag)
                if "" == stateFlag25 then
                  stateFlag25 = "debris"
                end
                stateFlag = workingValue22
                if stateFlag ~= stateFlag25 then
                  workingValue22 = stateFlag25
                  stateFlag = drawNativeNotification
                  stateFlag2 = "Junk's cleared. Jump in the ~y~flatbed~w~, tuck up to the shell, ~y~winch~w~ it on (~INPUT_CONTEXT~)."
                  stateFlag4 = false
                  -- Beginner: Show a GTA-style notification/help prompt.
                  stateFlag(stateFlag2, stateFlag4)
                end
              end
            end
            stateFlag25 = workingValue34
            stateFlag = localValue1
            stateFlag25 = stateFlag25(stateFlag)
            if stateFlag25 then
              stateFlag25 = number
              if 0 ~= stateFlag25 then
                stateFlag25 = DoesEntityExist
                stateFlag = number
                stateFlag25 = stateFlag25(stateFlag)
                if stateFlag25 then
                  stateFlag25 = text7
                  stateFlag25 = stateFlag25()
                  stateFlag = GetEntityCoords
                  stateFlag2 = number
                  stateFlag4 = true
                  -- Beginner: result below is entityCoords.
                  stateFlag = stateFlag(stateFlag2, stateFlag4)
                  if 0 ~= stateFlag25 then
                    stateFlag2 = GetEntityCoords
                    stateFlag4 = stateFlag25
                    stateFlag5 = true
                    -- Beginner: result below is entityCoords.
                    stateFlag2 = stateFlag2(stateFlag4, stateFlag5)
                    stateFlag2 = stateFlag2 - stateFlag
                    stateFlag2 = #stateFlag2
                    stateFlag4 = 13.5
                    if stateFlag2 < stateFlag4 then
                      localValue4 = 0
                      stateFlag4 = DrawMarker
                      stateFlag5 = 1
                      stateFlag6 = stateFlag.x
                      stateFlag7 = stateFlag.y
                      stateFlag8 = stateFlag.z
                      stateFlag8 = stateFlag8 - 0.5
                      stateFlag9 = 0.0
                      stateFlag10 = 0.0
                      number3 = 0.0
                      stateFlag11 = 0.0
                      stateFlag12 = 0.0
                      stateFlag13 = 0.0
                      stateFlag14 = 2.0
                      stateFlag15 = 2.0
                      stateFlag16 = 0.8
                      stateFlag17 = 255
                      number7 = 180
                      stateFlag18 = 64
                      stateFlag19 = 130
                      stateFlag20 = false
                      number9 = false
                      stateFlag21 = 2
                      stateFlag22 = false
                      number11 = nil
                      stateFlag23 = nil
                      stateFlag24 = false
                      stateFlag4(stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24)
                      stateFlag4 = workingValue31
                      stateFlag5 = "~INPUT_CONTEXT~ to winch the vehicle onto the flatbed"
                      stateFlag4(stateFlag5)
                      stateFlag4 = IsControlJustPressed
                      stateFlag5 = 0
                      stateFlag6 = 51
                      stateFlag4 = stateFlag4(stateFlag5, stateFlag6)
                      if stateFlag4 then
                        stateFlag4 = DoesEntityExist
                        stateFlag5 = number
                        stateFlag4 = stateFlag4(stateFlag5)
                        if stateFlag4 then
                          stateFlag4 = DoesEntityExist
                          stateFlag5 = stateFlag25
                          stateFlag4 = stateFlag4(stateFlag5)
                          if stateFlag4 then
                            stateFlag4 = tonumber
                            stateFlag5 = cmgOperation.debrisMainFlatbedBone
                            stateFlag4 = stateFlag4(stateFlag5)
                            if not stateFlag4 then
                              stateFlag4 = 20
                            end
                            stateFlag5 = workingValue38
                            stateFlag6 = localValue1.mainModel
                            stateFlag5 = stateFlag5(stateFlag6)
                            stateFlag6 = tonumber
                            stateFlag7 = stateFlag5.ox
                            stateFlag6 = stateFlag6(stateFlag7)
                            if not stateFlag6 then
                              stateFlag6 = 0.0
                            end
                            stateFlag7 = tonumber
                            stateFlag8 = stateFlag5.oy
                            stateFlag7 = stateFlag7(stateFlag8)
                            if not stateFlag7 then
                              stateFlag7 = 0.0
                            end
                            stateFlag8 = tonumber
                            stateFlag9 = stateFlag5.oz
                            stateFlag8 = stateFlag8(stateFlag9)
                            if not stateFlag8 then
                              stateFlag8 = 0.0
                            end
                            stateFlag9 = tonumber
                            stateFlag10 = stateFlag5.rx
                            stateFlag9 = stateFlag9(stateFlag10)
                            if not stateFlag9 then
                              stateFlag9 = 0.0
                            end
                            stateFlag10 = tonumber
                            number3 = stateFlag5.ry
                            stateFlag10 = stateFlag10(number3)
                            if not stateFlag10 then
                              stateFlag10 = 0.0
                            end
                            number3 = tonumber
                            stateFlag11 = stateFlag5.rz
                            number3 = number3(stateFlag11)
                            if not number3 then
                              number3 = 0.0
                            end
                            stateFlag11 = FreezeEntityPosition
                            stateFlag12 = number
                            stateFlag13 = false
                            -- Beginner: Freeze or unfreeze an entity in place.
                            stateFlag11(stateFlag12, stateFlag13)
                            stateFlag11 = DetachEntity
                            stateFlag12 = number
                            stateFlag13 = true
                            stateFlag14 = true
                            stateFlag11(stateFlag12, stateFlag13, stateFlag14)
                            stateFlag11 = AttachEntityToEntity
                            stateFlag12 = number
                            stateFlag13 = stateFlag25
                            stateFlag14 = stateFlag4
                            stateFlag15 = stateFlag6
                            stateFlag16 = stateFlag7
                            stateFlag17 = stateFlag8
                            number7 = stateFlag9
                            stateFlag18 = stateFlag10
                            stateFlag19 = number3
                            stateFlag20 = false
                            number9 = false
                            stateFlag21 = false
                            stateFlag22 = false
                            number11 = 2
                            stateFlag23 = true
                            -- Beginner: Attach one entity to another entity.
                            stateFlag11(stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23)
                            stateFlag11 = TriggerServerEvent
                            stateFlag12 = "62a9a8a2cb"
                            stateFlag13 = NetworkGetNetworkIdFromEntity
                            stateFlag14 = stateFlag25
                            stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24 = stateFlag13(stateFlag14)
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62a9a8a2cb".
                            stateFlag11(stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24)
                          end
                        end
                        stateFlag4 = Citizen
                        stateFlag4 = stateFlag4.Wait
                        stateFlag5 = 800
                        stateFlag4(stateFlag5)
                      end
                    end
                  end
                end
              end
            end
        end
      end
    end
    else
      localValue5 = localValue1.type
      if "debris" == localValue5 then
        localValue5 = localValue1.mainSecured
        if localValue5 then
          localValue5 = localValue1.debrisDepotComplete
          if true ~= localValue5 then
            localValue5 = eventHandler.x
            localValue5 = localValue5 + 0.0
            localValue6 = eventHandler.y
            localValue6 = localValue6 + 0.0
            localValue7 = eventHandler.z
            localValue7 = localValue7 + 0.0
            workingValue62 = vector3
            workingValue66 = localValue5
            stateFlag25 = localValue6
            stateFlag = localValue7
            workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag)
            workingValue66 = GetGroundZFor_3dCoord
            stateFlag25 = localValue5
            stateFlag = localValue6
            stateFlag2 = localValue7 + 80.0
            stateFlag4 = 0.0
            stateFlag5 = false
            workingValue66, stateFlag25 = workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5)
            if stateFlag25 and stateFlag25 > 0.0 then
              stateFlag = stateFlag25 + 0.12
              if stateFlag then
                goto continueAtStep445
              end
            end
            stateFlag = localValue7
            ::continueAtStep445::
            stateFlag2 = vector3
            stateFlag4 = localValue5
            stateFlag5 = localValue6
            stateFlag6 = stateFlag
            stateFlag2 = stateFlag2(stateFlag4, stateFlag5, stateFlag6)
            stateFlag2 = localValue3 - stateFlag2
            stateFlag2 = #stateFlag2
            stateFlag4 = number12
            if stateFlag2 < stateFlag4 then
              localValue4 = 0
              stateFlag4 = DrawMarker
              stateFlag5 = 1
              stateFlag6 = localValue5
              stateFlag7 = localValue6
              stateFlag8 = stateFlag - 0.35
              stateFlag9 = 0.0
              stateFlag10 = 0.0
              number3 = 0.0
              stateFlag11 = 0.0
              stateFlag12 = 0.0
              stateFlag13 = 0.0
              stateFlag14 = number17
              stateFlag15 = number17
              stateFlag16 = number18
              stateFlag17 = 72
              number7 = 255
              stateFlag18 = 140
              stateFlag19 = 195
              stateFlag20 = false
              number9 = false
              stateFlag21 = 2
              stateFlag22 = false
              number11 = nil
              stateFlag23 = nil
              stateFlag24 = false
              stateFlag4(stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24)
            end
            stateFlag4 = text7
            stateFlag4 = stateFlag4()
            if 0 ~= stateFlag4 then
              stateFlag5 = tonumber
              stateFlag6 = cmgOperation.debrisDepotDeliverRadius
              stateFlag5 = stateFlag5(stateFlag6)
              if not stateFlag5 then
                stateFlag5 = 24.0
              end
              stateFlag6 = GetEntityCoords
              stateFlag7 = stateFlag4
              stateFlag8 = true
              -- Beginner: result below is entityCoords.
              stateFlag6 = stateFlag6(stateFlag7, stateFlag8)
              stateFlag6 = stateFlag6 - workingValue62
              stateFlag6 = #stateFlag6
              if stateFlag5 >= stateFlag6 and stateFlag2 < 85.0 then
                localValue4 = 0
                stateFlag6 = workingValue31
                stateFlag7 = "~INPUT_CONTEXT~ to sign the load in at the yard"
                stateFlag6(stateFlag7)
                stateFlag6 = IsControlJustPressed
                stateFlag7 = 0
                stateFlag8 = 51
                stateFlag6 = stateFlag6(stateFlag7, stateFlag8)
                if stateFlag6 then
                  stateFlag6 = TriggerServerEvent
                  stateFlag7 = "b44a868830"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b44a868830".
                  stateFlag6(stateFlag7)
                  stateFlag6 = Citizen
                  stateFlag6 = stateFlag6.Wait
                  stateFlag7 = 800
                  stateFlag6(stateFlag7)
                end
              end
            end
        end
      end
      else
        localValue5 = localValue1.type
        if "parts_run" == localValue5 then
          localValue5 = tonumber
          localValue6 = localValue1.stage
          localValue5 = localValue5(localValue6)
          if not localValue5 then
            localValue5 = 1
          end
          if 1 == localValue5 then
            localValue6 = localValue1.pickup
            if localValue6 then
              goto continueAtStep537
            end
          end
          localValue6 = localValue1.dropoff
          ::continueAtStep537::
          if localValue6 then
            localValue7 = localValue6.x
            if localValue7 then
              localValue7 = vector3
              workingValue62 = localValue6.x
              workingValue66 = localValue6.y
              stateFlag25 = localValue6.z
              localValue7 = localValue7(workingValue62, workingValue66, stateFlag25)
              localValue7 = localValue3 - localValue7
              localValue7 = #localValue7
              if localValue7 < 35.0 then
                localValue4 = 0
                workingValue62 = DrawMarker
                workingValue66 = 1
                stateFlag25 = localValue6.x
                stateFlag = localValue6.y
                stateFlag2 = localValue6.z
                stateFlag2 = stateFlag2 - 1.0
                stateFlag4 = 0.0
                stateFlag5 = 0.0
                stateFlag6 = 0.0
                stateFlag7 = 0.0
                stateFlag8 = 0.0
                stateFlag9 = 0.0
                stateFlag10 = 2.2
                number3 = 2.2
                stateFlag11 = 1.0
                stateFlag12 = 80
                stateFlag13 = 160
                stateFlag14 = 255
                stateFlag15 = 110
                stateFlag16 = false
                stateFlag17 = false
                number7 = 2
                stateFlag18 = false
                stateFlag19 = nil
                stateFlag20 = nil
                number9 = false
                workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9)
              end
              if 1 == localValue5 then
                workingValue62 = 2.5
                if localValue7 < workingValue62 then
                  workingValue62 = IsPedInAnyVehicle
                  workingValue66 = localValue2
                  stateFlag25 = false
                  workingValue62 = workingValue62(workingValue66, stateFlag25)
                  if not workingValue62 then
                    workingValue62 = workingValue31
                    workingValue66 = "~INPUT_CONTEXT~ to collect the order"
                    workingValue62(workingValue66)
                    workingValue62 = IsControlJustPressed
                    workingValue66 = 0
                    stateFlag25 = 51
                    workingValue62 = workingValue62(workingValue66, stateFlag25)
                    if workingValue62 then
                      workingValue62 = TriggerServerEvent
                      workingValue66 = "7c931c7bd2"
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c931c7bd2".
                      workingValue62(workingValue66)
                      workingValue62 = Citizen
                      workingValue62 = workingValue62.Wait
                      workingValue66 = 800
                      workingValue62(workingValue66)
                    end
                end
                else
                  workingValue62 = 2.5
                  if localValue7 < workingValue62 then
                    workingValue62 = IsPedInAnyVehicle
                    workingValue66 = localValue2
                    stateFlag25 = false
                    workingValue62 = workingValue62(workingValue66, stateFlag25)
                    if workingValue62 then
                      workingValue62 = workingValue31
                      workingValue66 = "Hop out to grab the order."
                      workingValue62(workingValue66)
                    end
                  end
                end
              elseif 2 == localValue5 then
                localValue4 = 0
                workingValue62 = workingValue60
                workingValue66 = 5.5
                workingValue62, workingValue66 = workingValue62(workingValue66)
                stateFlag25 = IsPedInAnyVehicle
                stateFlag = localValue2
                stateFlag2 = false
                stateFlag25 = stateFlag25(stateFlag, stateFlag2)
                if stateFlag25 then
                  stateFlag25 = workingValue31
                  stateFlag = "Out of the cab, then load at the rear."
                  stateFlag25(stateFlag)
                else
                  if 0 ~= workingValue62 then
                    stateFlag25 = 4.2
                    if workingValue66 < stateFlag25 then
                      stateFlag25 = workingValue31
                      stateFlag = "~INPUT_CONTEXT~ to chuck it in the boot"
                      stateFlag25(stateFlag)
                      stateFlag25 = IsControlJustPressed
                      stateFlag = 0
                      stateFlag2 = 51
                      stateFlag25 = stateFlag25(stateFlag, stateFlag2)
                      if stateFlag25 then
                        stateFlag25 = TriggerServerEvent
                        stateFlag = "7c931c7bd2"
                        stateFlag2 = NetworkGetNetworkIdFromEntity
                        stateFlag4 = workingValue62
                        stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24 = stateFlag2(stateFlag4)
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c931c7bd2".
                        stateFlag25(stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24)
                        stateFlag25 = Citizen
                        stateFlag25 = stateFlag25.Wait
                        stateFlag = 800
                        stateFlag25(stateFlag)
                      end
                  end
                  else
                    stateFlag25 = workingValue31
                    stateFlag = "Bring the box to the ~y~rear of your ride~w~."
                    stateFlag25(stateFlag)
                  end
                end
              elseif 3 == localValue5 then
                if localValue7 < 35.0 then
                  localValue4 = 0
                end
                workingValue62 = workingValue60
                workingValue66 = 5.5
                workingValue62, workingValue66 = workingValue62(workingValue66)
                stateFlag25 = IsPedInAnyVehicle
                stateFlag = localValue2
                stateFlag2 = false
                stateFlag25 = stateFlag25(stateFlag, stateFlag2)
                if stateFlag25 and localValue7 < 14.0 then
                  stateFlag25 = workingValue31
                  stateFlag = "Park up, hop out, grab it from the boot."
                  stateFlag25(stateFlag)
                elseif localValue7 < 14.0 and 0 ~= workingValue62 then
                  stateFlag25 = 4.2
                  if workingValue66 < stateFlag25 then
                    localValue4 = 0
                    stateFlag25 = workingValue31
                    stateFlag = "~INPUT_CONTEXT~ to pull the box from the boot"
                    stateFlag25(stateFlag)
                    stateFlag25 = IsControlJustPressed
                    stateFlag = 0
                    stateFlag2 = 51
                    stateFlag25 = stateFlag25(stateFlag, stateFlag2)
                    if stateFlag25 then
                      stateFlag25 = TriggerServerEvent
                      stateFlag = "7c931c7bd2"
                      stateFlag2 = NetworkGetNetworkIdFromEntity
                      stateFlag4 = workingValue62
                      stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24 = stateFlag2(stateFlag4)
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c931c7bd2".
                      stateFlag25(stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9, stateFlag21, stateFlag22, number11, stateFlag23, stateFlag24)
                      stateFlag25 = Citizen
                      stateFlag25 = stateFlag25.Wait
                      stateFlag = 800
                      stateFlag25(stateFlag)
                    end
                  end
                end
              elseif 4 == localValue5 then
                workingValue62 = 2.5
                if localValue7 < workingValue62 then
                  workingValue62 = IsPedInAnyVehicle
                  workingValue66 = localValue2
                  stateFlag25 = false
                  workingValue62 = workingValue62(workingValue66, stateFlag25)
                  if not workingValue62 then
                    workingValue62 = workingValue31
                    workingValue66 = "~INPUT_CONTEXT~ to hand it over"
                    workingValue62(workingValue66)
                    workingValue62 = IsControlJustPressed
                    workingValue66 = 0
                    stateFlag25 = 51
                    workingValue62 = workingValue62(workingValue66, stateFlag25)
                    if workingValue62 then
                      workingValue62 = TriggerServerEvent
                      workingValue66 = "7c931c7bd2"
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c931c7bd2".
                      workingValue62(workingValue66)
                      workingValue62 = Citizen
                      workingValue62 = workingValue62.Wait
                      workingValue66 = 800
                      workingValue62(workingValue66)
                    end
                end
                else
                  workingValue62 = 2.5
                  if localValue7 < workingValue62 then
                    workingValue62 = IsPedInAnyVehicle
                    workingValue66 = localValue2
                    stateFlag25 = false
                    workingValue62 = workingValue62(workingValue66, stateFlag25)
                    if workingValue62 then
                      workingValue62 = workingValue31
                      workingValue66 = "Exit the vehicle for the handover."
                      workingValue62(workingValue66)
                    end
                  end
                end
              end
            end
          end
        else
          localValue5 = localValue1.type
          if "fuel_runout" == localValue5 then
            localValue5 = localValue1.vehicleNetId
            if localValue5 then
              localValue5 = tonumber
              localValue6 = localValue1.vehicleNetId
              localValue5 = localValue5(localValue6)
              if localValue5 then
                localValue6 = NetworkDoesNetworkIdExist
                localValue7 = localValue5
                localValue6 = localValue6(localValue7)
                if localValue6 then
                  localValue6 = NetworkDoesEntityExistWithNetworkId
                  localValue7 = localValue5
                  localValue6 = localValue6(localValue7)
                  if localValue6 then
                    localValue6 = NetworkGetEntityFromNetworkId
                    localValue7 = localValue5
                    localValue6 = localValue6(localValue7)
                    if 0 ~= localValue6 then
                      localValue7 = DoesEntityExist
                      workingValue62 = localValue6
                      localValue7 = localValue7(workingValue62)
                      if localValue7 then
                        localValue7 = GetEntityCoords
                        workingValue62 = localValue6
                        workingValue66 = true
                        -- Beginner: result below is entityCoords.
                        localValue7 = localValue7(workingValue62, workingValue66)
                        workingValue62 = localValue3 - localValue7
                        workingValue62 = #workingValue62
                        if workingValue62 < 18.0 then
                          localValue4 = 0
                        end
                        workingValue66 = 3.2
                        if workingValue62 < workingValue66 then
                          workingValue66 = IsPedInAnyVehicle
                          stateFlag25 = localValue2
                          stateFlag = false
                          workingValue66 = workingValue66(stateFlag25, stateFlag)
                          if not workingValue66 then
                            workingValue66 = tonumber
                            stateFlag25 = workingValue23
                            workingValue66 = workingValue66(stateFlag25)
                            if workingValue66 ~= localValue5 then
                              workingValue66 = workingValue31
                              stateFlag25 = "~INPUT_CONTEXT~ to top up their tank"
                              workingValue66(stateFlag25)
                              workingValue66 = IsControlJustPressed
                              stateFlag25 = 0
                              stateFlag = 51
                              workingValue66 = workingValue66(stateFlag25, stateFlag)
                              if workingValue66 then
                                workingValue66 = workingValue25
                                stateFlag25 = localValue5
                                workingValue66(stateFlag25)
                                workingValue66 = Citizen
                                workingValue66 = workingValue66.Wait
                                stateFlag25 = 800
                                workingValue66(stateFlag25)
                              end
                          end
                        end
                        else
                          workingValue66 = tonumber
                          stateFlag25 = workingValue23
                          workingValue66 = workingValue66(stateFlag25)
                          if workingValue66 == localValue5 then
                            workingValue66 = workingValue31
                            stateFlag25 = "Hang tight till the pour's done."
                            workingValue66(stateFlag25)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    localValue5 = localValue1.type
    if "debris" == localValue5 then
      localValue5 = number2
      if 0 ~= localValue5 then
        localValue5 = DoesEntityExist
        localValue6 = number2
        localValue5 = localValue5(localValue6)
        if localValue5 then
          localValue5 = tonumber
          localValue6 = localValue1.carryingSecondarySlot
          localValue5 = localValue5(localValue6)
          if localValue5 then
            localValue5 = GetVehiclePedIsIn
            localValue6 = localValue2
            localValue7 = false
            -- Beginner: result below is currentVehicle.
            localValue5 = localValue5(localValue6, localValue7)
            if 0 == localValue5 then
              localValue5 = workingValue30
              localValue5()
            else
              localValue5 = workingValue29
              localValue5()
            end
          end
        end
      end
    end
    localValue5 = Citizen
    localValue5 = localValue5.Wait
    localValue6 = localValue4
    localValue5(localValue6)
    ::continueAtStep866::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread2(text8)
backgroundThread2 = Citizen
backgroundThread2 = backgroundThread2.CreateThread

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  while true do
    localValue1 = tonumber
    localValue2 = workingValue23
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue2 = NetworkDoesNetworkIdExist
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        localValue3 = NetworkGetEntityFromNetworkId
        localValue4 = localValue1
        localValue3 = localValue3(localValue4)
        if 0 ~= localValue2 and 0 ~= localValue3 then
          localValue4 = DoesEntityExist
          localValue5 = localValue3
          localValue4 = localValue4(localValue5)
          if localValue4 then
            goto continueAtStep33
          end
        end
        localValue4 = workingValue24
        localValue4()
        localValue4 = Citizen
        localValue4 = localValue4.Wait
        localValue5 = 0
        localValue4(localValue5)
        goto continueAtStep108
        ::continueAtStep33::
        localValue4 = GetEntityCoords
        localValue5 = localValue2
        localValue6 = true
        -- Beginner: result below is entityCoords.
        localValue4 = localValue4(localValue5, localValue6)
        localValue5 = GetEntityCoords
        localValue6 = localValue3
        localValue7 = true
        -- Beginner: result below is entityCoords.
        localValue5 = localValue5(localValue6, localValue7)
        localValue6 = GetVehiclePedIsIn
        localValue7 = localValue2
        workingValue62 = false
        -- Beginner: result below is currentVehicle.
        localValue6 = localValue6(localValue7, workingValue62)
        if 0 == localValue6 then
          localValue6 = localValue4 - localValue5
          localValue6 = #localValue6
          localValue7 = 3.5
          if not (localValue6 > localValue7) then
            goto continueAtStep64
          end
        end
        localValue6 = workingValue24
        localValue6()
        localValue6 = tCMG
        localValue6 = localValue6.notify
        localValue7 = "~r~Refuel stopped."
        -- Beginner: Show a notification to the player.
        localValue6(localValue7)
        localValue6 = Citizen
        localValue6 = localValue6.Wait
        localValue7 = 0
        localValue6(localValue7)
        goto continueAtStep108
        ::continueAtStep64::
        localValue6 = CMG
        localValue6 = localValue6.loadAnimDict
        localValue7 = tableHelper
        -- Beginner: Load a GTA animation dictionary before using it.
        localValue6(localValue7)
        localValue6 = IsEntityPlayingAnim
        localValue7 = localValue2
        workingValue62 = tableHelper
        workingValue66 = text4
        stateFlag25 = 3
        localValue6 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25)
        if not localValue6 then
          localValue6 = TaskPlayAnim
          localValue7 = localValue2
          workingValue62 = tableHelper
          workingValue66 = text4
          stateFlag25 = 2.0
          stateFlag = 8.0
          stateFlag2 = -1
          stateFlag4 = 50
          stateFlag5 = 0.0
          stateFlag6 = false
          stateFlag7 = false
          stateFlag8 = false
          -- Beginner: Play an animation on a ped.
          localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
        end
        localValue6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue6 = localValue6()
        localValue7 = number10
        if localValue6 >= localValue7 then
          localValue6 = workingValue24
          localValue6()
          localValue6 = TriggerServerEvent
          localValue7 = "dfa22cde0c"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dfa22cde0c".
          localValue6(localValue7)
        end
        localValue6 = Citizen
        localValue6 = localValue6.Wait
        localValue7 = 0
        localValue6(localValue7)
    end
    else
      localValue2 = Citizen
      localValue2 = localValue2.Wait
      localValue3 = 1200
      localValue2(localValue3)
    end
    ::continueAtStep108::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread2(text8)
backgroundThread2 = RegisterNetEvent
text8 = "c7dc2846b3"
-- Beginner: this function handles network event "c7dc2846b3".

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: localValue1) ===
function workingValue61(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = tonumber
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue1 = localValue2
  if localValue1 then
    localValue2 = NetworkDoesNetworkIdExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep13
    end
  end
  return
  ::continueAtStep13::
  localValue2 = NetworkGetEntityFromNetworkId
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 ~= localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep24
    end
  end
  return
  ::continueAtStep24::
  localValue3 = workingValue24
  localValue3()
  localValue3 = CMG
  localValue3 = localValue3.setVehicleFuel
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.setVehicleFuel
    localValue4 = localValue2
    localValue5 = 72.0
    localValue3(localValue4, localValue5)
  else
    localValue3 = SetVehicleFuelLevel
    localValue4 = localValue2
    localValue5 = 72.0
    localValue3(localValue4, localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c7dc2846b3".
backgroundThread2(text8, workingValue61)
backgroundThread2 = RegisterNetEvent
text8 = "824c168eef"
-- Beginner: this function handles network event "824c168eef".

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62
  localValue1 = workingValue19
  localValue2 = localValue1 or localValue2
  if localValue1 then
    localValue2 = localValue1.vehicleNetId
    if localValue2 then
      localValue2 = tonumber
      localValue3 = localValue1.vehicleNetId
      localValue2 = localValue2(localValue3)
    end
  end
  localValue3 = backgroundThread
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3()
  localValue3 = workingValue32
  localValue3()
  localValue3 = workingValue27
  localValue3()
  localValue3 = workingValue24
  localValue3()
  localValue3 = nil
  workingValue18 = localValue3
  localValue3 = nil
  workingValue19 = localValue3
  localValue3 = false
  stateFlag3 = localValue3
  if localValue2 then
    localValue3 = NetworkDoesNetworkIdExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = NetworkGetEntityFromNetworkId
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if 0 ~= localValue3 then
        localValue4 = DoesEntityExist
        localValue5 = localValue3
        localValue4 = localValue4(localValue5)
        if localValue4 then
          localValue4 = IsEntityAVehicle
          localValue5 = localValue3
          localValue4 = localValue4(localValue5)
          if localValue4 then
            localValue4 = NetworkRequestControlOfEntity
            localValue5 = localValue3
            localValue4(localValue5)
            localValue4 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            localValue4 = localValue4()
            localValue4 = localValue4 + 800
            while true do
              localValue5 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              localValue5 = localValue5()
              if not (localValue4 > localValue5) then
                break
              end
              localValue5 = NetworkHasControlOfEntity
              localValue6 = localValue3
              localValue5 = localValue5(localValue6)
              if localValue5 then
                break
              end
              localValue5 = NetworkRequestControlOfEntity
              localValue6 = localValue3
              localValue5(localValue6)
              localValue5 = Citizen
              localValue5 = localValue5.Wait
              localValue6 = 0
              localValue5(localValue6)
            end
            localValue5 = SetEntityAsMissionEntity
            localValue6 = localValue3
            localValue7 = true
            workingValue62 = true
            localValue5(localValue6, localValue7, workingValue62)
            localValue5 = DeleteEntity
            localValue6 = localValue3
            -- Beginner: Delete a GTA entity.
            localValue5(localValue6)
          end
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "824c168eef".
backgroundThread2(text8, workingValue61)
backgroundThread2 = RegisterNetEvent
text8 = "edaac23639"
-- Beginner: this function handles network event "edaac23639".

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: localValue1) ===
function workingValue61(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = tonumber
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue1 = localValue2
  if localValue1 then
    localValue2 = NetworkDoesNetworkIdExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep13
    end
  end
  return
  ::continueAtStep13::
  localValue2 = NetworkGetEntityFromNetworkId
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 ~= localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = IsEntityAVehicle
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        goto continueAtStep29
      end
    end
  end
  return
  ::continueAtStep29::
  localValue3 = NetworkRequestControlOfEntity
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue3 = localValue3 + 800
  while true do
    localValue4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue4 = localValue4()
    if not (localValue3 > localValue4) then
      break
    end
    localValue4 = NetworkHasControlOfEntity
    localValue5 = localValue2
    localValue4 = localValue4(localValue5)
    if localValue4 then
      break
    end
    localValue4 = NetworkRequestControlOfEntity
    localValue5 = localValue2
    localValue4(localValue5)
    localValue4 = Citizen
    localValue4 = localValue4.Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue4 = SetEntityAsMissionEntity
  localValue5 = localValue2
  localValue6 = true
  localValue7 = true
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = DeleteEntity
  localValue5 = localValue2
  -- Beginner: Delete a GTA entity.
  localValue4(localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "edaac23639".
backgroundThread2(text8, workingValue61)
backgroundThread2 = RegisterNetEvent
text8 = "a31d6248f4"
-- Beginner: this function handles network event "a31d6248f4".

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: localValue1) ===
function workingValue61(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "MECHANIC_LEVEL_LIST"
  localValue4 = {}
  localValue5 = localValue1 or localValue5
  if not localValue1 then
    localValue5 = {}
  end
  localValue4.levels = localValue5
  localValue3.payload = localValue4
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a31d6248f4".
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1, localValue2) ===
function text8(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  if not localValue2 or "" == localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.isJobTerminalOpen
  localValue3 = localValue3()
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.getClientJob
    localValue3 = localValue3()
    if "Mechanic" == localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.uiSendMessage
      localValue4 = {}
      localValue4.action = "MECHANIC_JOB_NOTIFICATION"
      localValue5 = {}
      localValue6 = true == localValue1
      localValue5.success = localValue6
      localValue5.message = localValue2
      localValue4.payload = localValue5
      localValue3(localValue4)
  end
  else
    if localValue1 then
      localValue3 = "~g~"
      if localValue3 then
        goto continueAtStep38
      end
    end
    localValue3 = "~r~"
    ::continueAtStep38::
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = localValue3
    localValue6 = localValue2
    localValue5 = localValue5 .. localValue6
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  end
end
backgroundThread2.showMechanicJobNuiNotify = text8
backgroundThread2 = RegisterNetEvent
text8 = "e9fb295005"
-- Beginner: this function handles network event "e9fb295005".

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: localValue1, localValue2) ===
function workingValue61(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = CMG
  localValue3 = localValue3.showMechanicJobNuiNotify
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9fb295005".
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG
backgroundThread2 = backgroundThread2.uiRegisterCallback
text8 = "mechanicJobRequestSync"

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "5c8eb44f1a"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5c8eb44f1a".
  localValue1(localValue2)
end
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG
backgroundThread2 = backgroundThread2.uiRegisterCallback
text8 = "getMechanicLevels"

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "faf016b7ca"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "faf016b7ca".
  localValue1(localValue2)
end
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG
backgroundThread2 = backgroundThread2.uiRegisterCallback
text8 = "getMechanicLeaderboard"

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "5bfcf45d60"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5bfcf45d60".
  localValue1(localValue2)
end
backgroundThread2(text8, workingValue61)
backgroundThread2 = RegisterNetEvent
text8 = "ded48a8b46"
-- Beginner: this function handles network event "ded48a8b46".

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: localValue1) ===
function workingValue61(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "MECHANIC_LEADERBOARD"
  localValue4 = {}
  localValue5 = localValue1 or localValue5
  if not localValue1 then
    localValue5 = {}
  end
  localValue4.mechanics = localValue5
  localValue3.payload = localValue4
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ded48a8b46".
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG
backgroundThread2 = backgroundThread2.uiRegisterCallback
text8 = "mechanicJobStartBreakdown"

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "b87fb49f5f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b87fb49f5f".
  localValue1(localValue2)
end
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG
backgroundThread2 = backgroundThread2.uiRegisterCallback
text8 = "mechanicJobStartSolo"

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: localValue1) ===
function workingValue61(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = "table" == localValue2 and localValue2
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" ~= localValue3 or "" == localValue2 then
    return
  end
  localValue3 = TriggerServerEvent
  localValue4 = "9bd49860b5"
  localValue5 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9bd49860b5".
  localValue3(localValue4, localValue5)
end
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG
backgroundThread2 = backgroundThread2.uiRegisterCallback
text8 = "mechanicJobCancelContract"

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2
  localValue1 = backgroundThread
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1()
  localValue1 = workingValue32
  localValue1()
  localValue1 = nil
  workingValue18 = localValue1
  localValue1 = nil
  workingValue19 = localValue1
  localValue1 = false
  stateFlag3 = localValue1
  localValue1 = TriggerServerEvent
  localValue2 = "421a80d091"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "421a80d091".
  localValue1(localValue2)
end
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG
backgroundThread2 = backgroundThread2.uiRegisterCallback
text8 = "mechanicJobSetWaypointAgain"

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2
  localValue1 = workingValue57
  localValue1()
end
backgroundThread2(text8, workingValue61)
backgroundThread2 = CMG
backgroundThread2 = backgroundThread2.uiRegisterCallback
text8 = "mechanicOpenCallManager"

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: none) ===
function workingValue61()
  local localValue1, localValue2
  localValue1 = TriggerEvent
  localValue2 = "b4fcca60d5"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b4fcca60d5".
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.openCallManagerFromJobMenu
  localValue1()
end
backgroundThread2(text8, workingValue61)

-- === HELPER FUNCTION (decompiler name: backgroundThread2; parameters: localValue1) ===
function backgroundThread2(localValue1)
  local localValue2, localValue3, localValue4
  if 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = IsEntityAVehicle
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        goto continueAtStep15
      end
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep15::
  localValue2 = CMG
  localValue2 = localValue2.getVehicleIdFromModel
  localValue3 = GetEntityModel
  localValue4 = localValue1
  localValue3, localValue4 = localValue3(localValue4)
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue3 = cmgOperation3.garages
    if localValue3 then
      localValue3 = cmgOperation3.garages
      localValue3 = localValue3.Mechanics
      if localValue3 then
        localValue3 = cmgOperation3.garages
        localValue3 = localValue3.Mechanics
        localValue3 = localValue3[localValue2]
        if localValue3 then
          localValue3 = true
          return localValue3
        end
      end
    end
  end
  localValue3 = false
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue19
  if localValue2 then
    localValue3 = localValue2.vehicleNetId
    if localValue3 then
      goto continueAtStep9
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep9::
  localValue3 = tonumber
  localValue4 = localValue2.vehicleNetId
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue4 = NetworkDoesNetworkIdExist
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      goto continueAtStep21
    end
  end
  localValue4 = false
  return localValue4
  ::continueAtStep21::
  localValue4 = NetworkGetEntityFromNetworkId
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  localValue5 = 0 ~= localValue4 and localValue4 == localValue1
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue61; parameters: localValue1) ===
function workingValue61(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = backgroundThread2
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = text8
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      goto continueAtStep13
    end
  end
  localValue2 = true
  return localValue2
  ::continueAtStep13::
  if 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = IsEntityAVehicle
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        goto continueAtStep27
      end
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep27::
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  if -956048545 == localValue2 then
    localValue3 = true
    return localValue3
  end
  localValue3 = workingValue11
  localValue3 = localValue3[localValue2]
  if not localValue3 then
    localValue3 = workingValue16
    localValue3 = localValue3[localValue2]
    if not localValue3 then
      goto continueAtStep44
    end
  end
  localValue3 = true
  return localValue3
  ::continueAtStep44::
  localValue3 = cmgOperation.mechanicWorkVehicleModelHashes
  if localValue3 then
    localValue4 = localValue3[localValue2]
    if localValue4 then
      localValue4 = true
      return localValue4
    end
  end
  localValue4 = false
  return localValue4
end
number15 = 0
text9 = "~r~You can only use mechanic job vehicles whilst clocked on."
number16 = 0

-- === HELPER FUNCTION (decompiler name: workingValue64; parameters: localValue1) ===
function workingValue64(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  if 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue2 = NetworkRequestControlOfEntity
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = NetworkHasControlOfEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = SetEntityAsMissionEntity
    localValue3 = localValue1
    localValue4 = true
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DeleteEntity
    localValue3 = localValue1
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue65; parameters: none) ===
function workingValue65()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7
  localValue1 = number16
  if 0 ~= localValue1 then
    localValue1 = number16
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = 0
      number16 = localValue2
    else
      localValue2 = workingValue64
      localValue3 = localValue1
      localValue2(localValue3)
      localValue2 = DoesEntityExist
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = 0
        number16 = localValue2
      end
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "aa.onduty.permission"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.isJobTutorialRunning
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.isSimeonsVehiclePreviewActive
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.isBenchmarking
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.isHandcuffed
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetVehiclePedIsEntering
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 ~= localValue2 then
    localValue3 = workingValue61
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = ClearPedTasks
      localValue4 = localValue1
      localValue3(localValue4)
      localValue3 = notify
      localValue4 = text9
      -- Beginner: Show a notification to the player.
      localValue3(localValue4)
    end
  end
  localValue3 = GetVehiclePedIsIn
  localValue4 = localValue1
  localValue5 = false
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3(localValue4, localValue5)
  if 0 ~= localValue3 then
    localValue4 = workingValue61
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if not localValue4 then
      localValue4 = GetPedInVehicleSeat
      localValue5 = localValue3
      localValue6 = -1
      localValue4 = localValue4(localValue5, localValue6)
      localValue4 = localValue4 == localValue1
      localValue5 = GetOffsetFromEntityInWorldCoords
      localValue6 = localValue3
      localValue7 = 1.8
      workingValue62 = 0.0
      workingValue66 = 0.3
      localValue5 = localValue5(localValue6, localValue7, workingValue62, workingValue66)
      localValue6 = GetGroundZFor_3dCoord
      localValue7 = localValue5.x
      workingValue62 = localValue5.y
      workingValue66 = localValue5.z
      workingValue66 = workingValue66 + 1.0
      stateFlag25 = 0
      stateFlag = false
      localValue6, localValue7 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag)
      if localValue6 and localValue7 > 0.0 then
        workingValue62 = localValue7 + 0.5
        if workingValue62 then
          goto continueAtStep117
        end
      end
      workingValue62 = localValue5.z
      workingValue62 = workingValue62 + 0.5
      ::continueAtStep117::
      workingValue66 = SetEntityCoordsNoOffset
      stateFlag25 = localValue1
      stateFlag = localValue5.x
      stateFlag2 = localValue5.y
      stateFlag4 = workingValue62
      stateFlag5 = false
      stateFlag6 = false
      stateFlag7 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
      workingValue66 = ClearPedTasksImmediately
      stateFlag25 = localValue1
      workingValue66(stateFlag25)
      if localValue4 then
        number16 = localValue3
        workingValue66 = workingValue64
        stateFlag25 = localValue3
        workingValue66(stateFlag25)
        workingValue66 = DoesEntityExist
        stateFlag25 = localValue3
        workingValue66 = workingValue66(stateFlag25)
        if not workingValue66 then
          workingValue66 = 0
          number16 = workingValue66
        end
      end
      workingValue66 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workingValue66 = workingValue66()
      stateFlag25 = number15
      if workingValue66 >= stateFlag25 then
        stateFlag25 = workingValue66 + 4000
        number15 = stateFlag25
        stateFlag25 = notify
        stateFlag = text9
        -- Beginner: Show a notification to the player.
        stateFlag25(stateFlag)
      end
    end
  end
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.createThreadOnTick
dataCollection4 = workingValue65
dataCollection5 = "Mechanic Vehicle Restrict"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation6(dataCollection4, dataCollection5)
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.registerDevMenuState
dataCollection4 = "Mechanic/Debris layout"
dataCollection5 = {}
dataCollection5.mainModelIndex = 1
dataCollection5.step = 0.1
dataCollection5.selectedIndex = 0
dataCollection5.nudgeStepListIndex = 3
dataCollection5.offsetKindIndex = 1
dataCollection5.secondarySlot1ModelIdx = 1
dataCollection5.secondarySlot2ModelIdx = 1
dataCollection5.secondarySlot3ModelIdx = 1
dataCollection5.secondarySlot4ModelIdx = 1
cmgOperation6 = cmgOperation6(dataCollection4, dataCollection5)
dataCollection4 = {}
dataCollection4.active = false
dataCollection4.kind = "ground"
dataCollection4.anchor = nil
dataCollection4.baseZ = 0.0
dataCollection4.mainEnt = 0
dataCollection4.mainModelName = ""
dataCollection5 = {}
dataCollection4.slotEnts = dataCollection5
dataCollection4.flatbedVeh = 0
dataCollection4.flatbedAttach = nil
dataCollection4.mainFlatbedAttach = nil
dataCollection5 = {}
dataCollection6 = "Main wreck"
dataCollection7 = "Secondary slot 1"
text10 = "Secondary slot 2"
text11 = "Secondary slot 3"
text12 = "Secondary slot 4"
dataCollection5[1] = dataCollection6
dataCollection5[2] = dataCollection7
dataCollection5[3] = text10
dataCollection5[4] = text11
dataCollection5[5] = text12
dataCollection6 = {}
dataCollection7 = "Main wreck"
text10 = "Bed slot 1"
text11 = "Bed slot 2"
text12 = "Bed slot 3"
text13 = "Bed slot 4"
dataCollection6[1] = dataCollection7
dataCollection6[2] = text10
dataCollection6[3] = text11
dataCollection6[4] = text12
dataCollection6[5] = text13
dataCollection7 = {}
text10 = "Ground: pile / scene offsets"
text11 = "Flatbed: bed attach (bone-local)"
dataCollection7[1] = text10
dataCollection7[2] = text11

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2
  localValue1 = tonumber
  localValue2 = cmgOperation6.offsetKindIndex
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = 1
  end
  if 2 == localValue1 then
    localValue1 = "flatbed"
    if localValue1 then
      goto continueAtStep13
    end
  end
  localValue1 = "ground"
  ::continueAtStep13::
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  localValue2 = localValue1 or localValue2
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.isDeveloper
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1, localValue2, localValue3) ===
function text12(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25
  localValue4 = math
  localValue4 = localValue4.rad
  localValue5 = localValue3 + 0.0
  localValue4 = localValue4(localValue5)
  localValue5 = math
  localValue5 = localValue5.cos
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  localValue6 = math
  localValue6 = localValue6.sin
  localValue7 = localValue4
  localValue6 = localValue6(localValue7)
  localValue7 = localValue1 * localValue5
  workingValue62 = localValue2 * localValue6
  localValue7 = localValue7 + workingValue62
  workingValue62 = -localValue1
  workingValue62 = workingValue62 * localValue6
  workingValue66 = localValue2 * localValue5
  workingValue62 = workingValue62 + workingValue66
  workingValue66 = localValue7
  stateFlag25 = workingValue62
  return workingValue66, stateFlag25
end

-- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
function text13()
  local localValue1, localValue2
  localValue1 = dataCollection4.mainEnt
  if 0 ~= localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = dataCollection4.mainEnt
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = GetEntityHeading
      localValue2 = dataCollection4.mainEnt
      return localValue1(localValue2)
    end
  end
  localValue1 = 0.0
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue67; parameters: localValue1, localValue2) ===
function workingValue67(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62
  localValue3 = workingValue35
  localValue4 = localValue1
  localValue5 = localValue2
  localValue6 = text13
  localValue6, localValue7, workingValue62 = localValue6()
  localValue3, localValue4 = localValue3(localValue4, localValue5, localValue6, localValue7, workingValue62)
  localValue5 = vector3
  localValue6 = localValue3
  localValue7 = localValue4
  workingValue62 = 0.0
  return localValue5(localValue6, localValue7, workingValue62)
end

-- === HELPER FUNCTION (decompiler name: workingValue68; parameters: none) ===
function workingValue68()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66
  dataCollection4.active = false
  dataCollection4.kind = "ground"
  dataCollection4.flatbedVeh = 0
  dataCollection4.flatbedAttach = nil
  dataCollection4.mainFlatbedAttach = nil
  localValue1 = dataCollection4.mainEnt
  if 0 ~= localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = dataCollection4.mainEnt
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = SetEntityAsMissionEntity
      localValue2 = dataCollection4.mainEnt
      localValue3 = true
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = DeleteObject
      localValue2 = dataCollection4.mainEnt
      localValue1(localValue2)
    end
  end
  dataCollection4.mainEnt = 0
  localValue1 = 1
  localValue2 = 4
  localValue3 = 1
  for localValue4 = localValue1, localValue2, localValue3 do
    localValue5 = dataCollection4.slotEnts
    localValue5 = localValue5[localValue4]
    if localValue5 and 0 ~= localValue5 then
      localValue6 = DoesEntityExist
      localValue7 = localValue5
      localValue6 = localValue6(localValue7)
      if localValue6 then
        localValue6 = DetachEntity
        localValue7 = localValue5
        workingValue62 = true
        workingValue66 = true
        localValue6(localValue7, workingValue62, workingValue66)
        localValue6 = SetEntityAsMissionEntity
        localValue7 = localValue5
        workingValue62 = true
        workingValue66 = true
        localValue6(localValue7, workingValue62, workingValue66)
        localValue6 = DeleteObject
        localValue7 = localValue5
        localValue6(localValue7)
      end
    end
    localValue6 = dataCollection4.slotEnts
    localValue6[localValue4] = nil
  end
  dataCollection4.anchor = nil
  dataCollection4.mainModelName = ""
end

-- === HELPER FUNCTION (decompiler name: workingValue69; parameters: none) ===
function workingValue69()
  local localValue1, localValue2, localValue3
  localValue1 = cmgOperation.debrisMainWreckModels
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    localValue2 = #localValue1
    if not (localValue2 < 1) then
      goto continueAtStep15
    end
  end
  localValue2 = {}
  localValue3 = "prop_rub_carwreck_8"
  localValue2[1] = localValue3
  return localValue2
  ::continueAtStep15::
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue70; parameters: none) ===
function workingValue70()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66
  localValue1 = cmgOperation.debrisLayoutGroups
  localValue2 = dataCollection4.mainModelName
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if "table" == localValue3 then
    localValue3 = localValue2 or localValue3
    if not localValue2 then
      localValue3 = ""
    end
    localValue3 = localValue1[localValue3]
    if localValue3 then
      goto continueAtStep15
    end
  end
  localValue3 = nil
  ::continueAtStep15::
  localValue4 = type
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if "table" == localValue4 then
    localValue4 = localValue3.secondaryModels
    if localValue4 then
      goto continueAtStep24
    end
  end
  localValue4 = nil
  ::continueAtStep24::
  localValue5 = type
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  if "table" == localValue5 then
    localValue5 = #localValue4
    if not (localValue5 < 1) then
      goto continueAtStep40
    end
  end
  localValue5 = {}
  localValue6 = "prop_rub_carpart_02"
  localValue7 = "prop_wheel_rim_02"
  workingValue62 = "prop_car_exhaust_01"
  workingValue66 = "lr_smod_car_seat_001"
  localValue5[1] = localValue6
  localValue5[2] = localValue7
  localValue5[3] = workingValue62
  localValue5[4] = workingValue66
  return localValue5
  ::continueAtStep40::
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue71; parameters: none) ===
function workingValue71()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9
  localValue1 = {}
  localValue2 = {}

  -- === HELPER FUNCTION: localValue3(localValue12) ===
  function localValue3(localValue12)
    local localValue22, localValue32
    localValue22 = type
    localValue32 = localValue12
    localValue22 = localValue22(localValue32)
    if "string" ~= localValue22 or "" == localValue12 then
      return
    end
    localValue22 = localValue1
    localValue22 = localValue22[localValue12]
    if localValue22 then
      return
    end
    localValue22 = localValue1
    localValue22[localValue12] = true
    localValue22 = localValue2
    localValue22 = #localValue22
    localValue32 = localValue22 + 1
    localValue22 = localValue2
    localValue22[localValue32] = localValue12
  end
  localValue4 = cmgOperation.debrisLayoutGroups
  localValue5 = type
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  if "table" == localValue5 then
    localValue5 = pairs
    localValue6 = localValue4
    localValue5, localValue6, localValue7, workingValue62 = localValue5(localValue6)
    for workingValue66, stateFlag25 in localValue5, localValue6, localValue7, workingValue62 do
      stateFlag = type
      stateFlag2 = stateFlag25
      stateFlag = stateFlag(stateFlag2)
      if "table" == stateFlag then
        stateFlag = type
        stateFlag2 = stateFlag25.secondaryModels
        stateFlag = stateFlag(stateFlag2)
        if "table" == stateFlag then
          stateFlag = ipairs
          stateFlag2 = stateFlag25.secondaryModels
          stateFlag, stateFlag2, stateFlag4, stateFlag5 = stateFlag(stateFlag2)
          for stateFlag6, stateFlag7 in stateFlag, stateFlag2, stateFlag4, stateFlag5 do
            stateFlag8 = localValue3
            stateFlag9 = stateFlag7
            stateFlag8(stateFlag9)
          end
        end
      end
    end
  end
  localValue5 = ipairs
  localValue6 = workingValue70
  localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9 = localValue6()
  localValue5, localValue6, localValue7, workingValue62 = localValue5(localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
  for workingValue66, stateFlag25 in localValue5, localValue6, localValue7, workingValue62 do
    stateFlag = localValue3
    stateFlag2 = stateFlag25
    stateFlag(stateFlag2)
  end
  localValue5 = #localValue2
  if localValue5 < 1 then
    localValue5 = {}
    localValue6 = "prop_rub_carpart_02"
    localValue5[1] = localValue6
    return localValue5
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue72; parameters: localValue1) ===
function workingValue72(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = "secondarySlot"
  localValue3 = localValue1
  localValue4 = "ModelIdx"
  localValue2 = localValue2 .. localValue3 .. localValue4
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue73; parameters: localValue1, localValue2) ===
function workingValue73(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2
  localValue3 = localValue2 or nil
  if not localValue2 then
    localValue3 = workingValue71
    localValue3 = localValue3()
  end
  localValue4 = #localValue3
  if localValue4 < 1 then
    localValue5 = "prop_rub_carpart_02"
    return localValue5
  end
  localValue5 = workingValue72
  localValue6 = localValue1
  localValue5 = localValue5(localValue6)
  localValue6 = math
  localValue6 = localValue6.max
  localValue7 = 1
  workingValue62 = math
  workingValue62 = workingValue62.min
  workingValue66 = localValue4
  stateFlag25 = math
  stateFlag25 = stateFlag25.floor
  stateFlag = tonumber
  stateFlag2 = cmgOperation6
  stateFlag2 = stateFlag2[localValue5]
  stateFlag = stateFlag(stateFlag2)
  if not stateFlag then
    stateFlag = 1
  end
  stateFlag25, stateFlag, stateFlag2 = stateFlag25(stateFlag)
  workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2 = workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2)
  localValue6 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2)
  localValue7 = cmgOperation6
  localValue7[localValue5] = localValue6
  localValue7 = localValue3[localValue6]
  return localValue7
end

-- === HELPER FUNCTION (decompiler name: workingValue74; parameters: localValue1) ===
function workingValue74(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2
  localValue2 = {}
  localValue3 = localValue1 or localValue3
  if not localValue1 then
    localValue3 = workingValue71
    localValue3 = localValue3()
  end
  localValue4 = 1
  localValue5 = 4
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    workingValue62 = workingValue73
    workingValue66 = localValue7
    stateFlag25 = localValue3
    workingValue62 = workingValue62(workingValue66, stateFlag25)
    workingValue66 = workingValue37
    stateFlag25 = workingValue62
    stateFlag = dataCollection4.mainModelName
    stateFlag2 = localValue7
    workingValue66 = workingValue66(stateFlag25, stateFlag, stateFlag2)
    localValue2[localValue7] = workingValue66
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue75; parameters: localValue1) ===
function workingValue75(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue38
  localValue3 = localValue1
  return localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3
  localValue1 = dataCollection4.flatbedVeh
  if 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep10
    end
  end
  return
  ::continueAtStep10::
  localValue2 = dataCollection4.mainEnt
  if 0 ~= localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep19
    end
  end
  return
  ::continueAtStep19::
  localValue3 = dataCollection4.mainFlatbedAttach
  localValue4 = type
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if "table" ~= localValue4 then
    return
  end
  localValue4 = tonumber
  localValue5 = cmgOperation.debrisMainFlatbedBone
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = 20
  end
  localValue5 = DetachEntity
  localValue6 = localValue2
  localValue7 = true
  workingValue62 = true
  localValue5(localValue6, localValue7, workingValue62)
  localValue5 = AttachEntityToEntity
  localValue6 = localValue2
  localValue7 = localValue1
  workingValue62 = localValue4
  workingValue66 = localValue3.ox
  stateFlag25 = localValue3.oy
  stateFlag = localValue3.oz
  stateFlag2 = localValue3.rx
  stateFlag4 = localValue3.ry
  stateFlag5 = localValue3.rz
  stateFlag6 = false
  stateFlag7 = false
  stateFlag8 = false
  stateFlag9 = false
  stateFlag10 = 2
  number3 = true
  -- Beginner: Attach one entity to another entity.
  localValue5(localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
  localValue5 = SetEntityCollision
  localValue6 = localValue2
  localValue7 = false
  workingValue62 = false
  localValue5(localValue6, localValue7, workingValue62)
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14
  localValue1 = dataCollection4.flatbedVeh
  if 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep10
    end
  end
  return
  ::continueAtStep10::
  localValue2 = workingValue
  localValue2()
  localValue2 = tonumber
  localValue3 = cmgOperation.debrisSecondaryFlatbedBone
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = tonumber
    localValue3 = cmgOperation.debrisMainFlatbedBone
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = 20
    end
  end
  localValue3 = 1
  localValue4 = 4
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = dataCollection4.slotEnts
    localValue7 = localValue7[localValue6]
    workingValue62 = dataCollection4.flatbedAttach
    if workingValue62 then
      workingValue62 = dataCollection4.flatbedAttach
      workingValue62 = workingValue62[localValue6]
    end
    if localValue7 and 0 ~= localValue7 then
      workingValue66 = DoesEntityExist
      stateFlag25 = localValue7
      workingValue66 = workingValue66(stateFlag25)
      if workingValue66 and workingValue62 then
        workingValue66 = DetachEntity
        stateFlag25 = localValue7
        stateFlag = true
        stateFlag2 = true
        workingValue66(stateFlag25, stateFlag, stateFlag2)
        workingValue66 = AttachEntityToEntity
        stateFlag25 = localValue7
        stateFlag = localValue1
        stateFlag2 = localValue2
        stateFlag4 = workingValue62.ox
        stateFlag5 = workingValue62.oy
        stateFlag6 = workingValue62.oz
        stateFlag7 = workingValue62.rx
        stateFlag8 = workingValue62.ry
        stateFlag9 = workingValue62.rz
        stateFlag10 = false
        number3 = false
        stateFlag11 = false
        stateFlag12 = false
        stateFlag13 = 2
        stateFlag14 = true
        -- Beginner: Attach one entity to another entity.
        workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
        workingValue66 = SetEntityCollision
        stateFlag25 = localValue7
        stateFlag = false
        stateFlag2 = false
        workingValue66(stateFlag25, stateFlag, stateFlag2)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = workingValue71
  localValue2 = localValue2()
  localValue3 = workingValue73
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = workingValue36
  localValue5 = localValue3
  localValue6 = dataCollection4.mainModelName
  localValue7 = localValue1
  return localValue4(localValue5, localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3
  localValue2 = dataCollection4.active
  if not localValue2 then
    return
  end
  if localValue1 < 1 or localValue1 > 4 then
    return
  end
  localValue2 = dataCollection4.kind
  if "ground" ~= localValue2 and "flatbed" ~= localValue2 then
    return
  end
  localValue3 = workingValue71
  localValue3 = localValue3()
  localValue4 = workingValue73
  localValue5 = localValue1
  localValue6 = localValue3
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = GetHashKey
  localValue6 = localValue4
  -- Beginner: result below is hash.
  localValue5 = localValue5(localValue6)
  if not localValue5 or 0 == localValue5 then
    return
  end
  localValue6 = dataCollection4.slotEnts
  localValue6 = localValue6[localValue1]
  if localValue6 and 0 ~= localValue6 then
    localValue7 = DoesEntityExist
    workingValue62 = localValue6
    localValue7 = localValue7(workingValue62)
    if localValue7 then
      localValue7 = GetEntityModel
      workingValue62 = localValue6
      -- Beginner: result below is modelHash.
      localValue7 = localValue7(workingValue62)
      if localValue7 == localValue5 then
        return
      end
    end
  end
  if "flatbed" == localValue2 then
    localValue7 = dataCollection4.flatbedVeh
    if 0 ~= localValue7 then
      workingValue62 = DoesEntityExist
      workingValue66 = localValue7
      workingValue62 = workingValue62(workingValue66)
      if workingValue62 then
        goto continueAtStep58
      end
    end
    return
    ::continueAtStep58::
    if localValue6 and 0 ~= localValue6 then
      workingValue62 = DoesEntityExist
      workingValue66 = localValue6
      workingValue62 = workingValue62(workingValue66)
      if workingValue62 then
        workingValue62 = DetachEntity
        workingValue66 = localValue6
        stateFlag25 = true
        stateFlag = true
        workingValue62(workingValue66, stateFlag25, stateFlag)
        workingValue62 = SetEntityAsMissionEntity
        workingValue66 = localValue6
        stateFlag25 = true
        stateFlag = true
        workingValue62(workingValue66, stateFlag25, stateFlag)
        workingValue62 = DeleteObject
        workingValue66 = localValue6
        workingValue62(workingValue66)
      end
    end
    workingValue62 = dataCollection4.slotEnts
    workingValue62[localValue1] = nil
    workingValue62 = dataCollection4.flatbedAttach
    if workingValue62 then
      workingValue62 = dataCollection4.flatbedAttach
      workingValue66 = workingValue37
      stateFlag25 = localValue4
      stateFlag = dataCollection4.mainModelName
      stateFlag2 = localValue1
      workingValue66 = workingValue66(stateFlag25, stateFlag, stateFlag2)
      workingValue62[localValue1] = workingValue66
    end
    workingValue62 = GetEntityCoords
    workingValue66 = localValue7
    stateFlag25 = true
    -- Beginner: result below is entityCoords.
    workingValue62 = workingValue62(workingValue66, stateFlag25)
    workingValue66 = CMG
    workingValue66 = workingValue66.loadModel
    stateFlag25 = localValue5
    -- Beginner: Request/load a GTA model before spawning or applying it.
    workingValue66(stateFlag25)
    workingValue66 = CreateObject
    stateFlag25 = localValue5
    stateFlag = workingValue62.x
    stateFlag2 = workingValue62.y
    stateFlag4 = workingValue62.z
    stateFlag4 = stateFlag4 + 0.5
    stateFlag5 = false
    stateFlag6 = false
    stateFlag7 = false
    -- Beginner: result below is objectEntity.
    workingValue66 = workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
    if 0 ~= workingValue66 then
      stateFlag25 = DoesEntityExist
      stateFlag = workingValue66
      stateFlag25 = stateFlag25(stateFlag)
      if stateFlag25 then
        stateFlag25 = dataCollection4.slotEnts
        stateFlag25[localValue1] = workingValue66
      end
    end
    stateFlag25 = SetModelAsNoLongerNeeded
    stateFlag = localValue5
    stateFlag25(stateFlag)
    stateFlag25 = workingValue2
    stateFlag25()
    return
  end
  localValue7 = dataCollection4.anchor
  if not localValue7 then
    return
  end
  workingValue62 = tonumber
  workingValue66 = dataCollection4.baseZ
  workingValue62 = workingValue62(workingValue66)
  if not workingValue62 then
    workingValue62 = 0.0
  end
  workingValue66 = nil
  stateFlag25 = nil
  stateFlag = nil
  stateFlag2 = nil
  if localValue6 and 0 ~= localValue6 then
    stateFlag4 = DoesEntityExist
    stateFlag5 = localValue6
    stateFlag4 = stateFlag4(stateFlag5)
    if stateFlag4 then
      stateFlag4 = GetEntityCoords
      stateFlag5 = localValue6
      stateFlag6 = true
      -- Beginner: result below is entityCoords.
      stateFlag4 = stateFlag4(stateFlag5, stateFlag6)
      stateFlag5 = stateFlag4.x
      stateFlag6 = stateFlag4.y
      stateFlag = stateFlag4.z
      stateFlag25 = stateFlag6
      workingValue66 = stateFlag5
      stateFlag5 = GetEntityHeading
      stateFlag6 = localValue6
      -- Beginner: result below is heading.
      stateFlag5 = stateFlag5(stateFlag6)
      stateFlag2 = stateFlag5
      stateFlag5 = SetEntityAsMissionEntity
      stateFlag6 = localValue6
      stateFlag7 = true
      stateFlag8 = true
      stateFlag5(stateFlag6, stateFlag7, stateFlag8)
      stateFlag5 = DeleteObject
      stateFlag6 = localValue6
      stateFlag5(stateFlag6)
  end
  else
    stateFlag4 = text13
    stateFlag4 = stateFlag4()
    stateFlag5 = workingValue3
    stateFlag6 = localValue1
    stateFlag5 = stateFlag5(stateFlag6)
    stateFlag6 = workingValue35
    stateFlag7 = stateFlag5.dx
    stateFlag8 = stateFlag5.dy
    stateFlag9 = stateFlag4
    stateFlag6, stateFlag7 = stateFlag6(stateFlag7, stateFlag8, stateFlag9)
    stateFlag8 = localValue7.x
    workingValue66 = stateFlag8 + stateFlag6
    stateFlag8 = localValue7.y
    stateFlag25 = stateFlag8 + stateFlag7
    stateFlag8 = stateFlag5.dz
    stateFlag = workingValue62 + stateFlag8
    stateFlag8 = stateFlag5.h
    stateFlag2 = stateFlag8 + stateFlag4
  end
  stateFlag4 = dataCollection4.slotEnts
  stateFlag4[localValue1] = nil
  stateFlag4 = CMG
  stateFlag4 = stateFlag4.loadModel
  stateFlag5 = localValue5
  -- Beginner: Request/load a GTA model before spawning or applying it.
  stateFlag4(stateFlag5)
  stateFlag4 = CreateObject
  stateFlag5 = localValue5
  stateFlag6 = workingValue66
  stateFlag7 = stateFlag25
  stateFlag8 = stateFlag
  stateFlag9 = false
  stateFlag10 = false
  number3 = false
  -- Beginner: result below is objectEntity.
  stateFlag4 = stateFlag4(stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
  if 0 ~= stateFlag4 then
    stateFlag5 = DoesEntityExist
    stateFlag6 = stateFlag4
    stateFlag5 = stateFlag5(stateFlag6)
    if stateFlag5 then
      stateFlag5 = SetEntityHeading
      stateFlag6 = stateFlag4
      stateFlag7 = stateFlag2
      -- Beginner: Change the direction an entity is facing.
      stateFlag5(stateFlag6, stateFlag7)
      stateFlag5 = FreezeEntityPosition
      stateFlag6 = stateFlag4
      stateFlag7 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      stateFlag5(stateFlag6, stateFlag7)
      stateFlag5 = SetEntityCollision
      stateFlag6 = stateFlag4
      stateFlag7 = false
      stateFlag8 = false
      stateFlag5(stateFlag6, stateFlag7, stateFlag8)
      stateFlag5 = dataCollection4.slotEnts
      stateFlag5[localValue1] = stateFlag4
    end
  end
  stateFlag5 = SetModelAsNoLongerNeeded
  stateFlag6 = localValue5
  stateFlag5(stateFlag6)
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9
  localValue1 = text11
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = workingValue68
  localValue1()
  localValue1 = workingValue69
  localValue1 = localValue1()
  localValue2 = math
  localValue2 = localValue2.max
  localValue3 = 1
  localValue4 = math
  localValue4 = localValue4.min
  localValue5 = #localValue1
  localValue6 = math
  localValue6 = localValue6.floor
  localValue7 = cmgOperation6.mainModelIndex
  if not localValue7 then
    localValue7 = 1
  end
  localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9 = localValue6(localValue7)
  localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9 = localValue4(localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9)
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9)
  cmgOperation6.mainModelIndex = localValue2
  localValue3 = localValue1[localValue2]
  dataCollection4.mainModelName = localValue3
  localValue4 = CMG
  localValue4 = localValue4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = GetEntityCoords
  localValue6 = localValue4
  localValue7 = true
  -- Beginner: result below is entityCoords.
  localValue5 = localValue5(localValue6, localValue7)
  localValue6 = GetGroundZFor_3dCoord
  localValue7 = localValue5.x
  workingValue62 = localValue5.y
  workingValue66 = localValue5.z
  workingValue66 = workingValue66 + 50.0
  stateFlag25 = 0.0
  stateFlag = false
  localValue6, localValue7 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag)
  if localValue7 and localValue7 > 0.0 then
    workingValue62 = localValue7 + 0.05
    if workingValue62 then
      goto continueAtStep53
    end
  end
  workingValue62 = localValue5.z
  ::continueAtStep53::
  dataCollection4.baseZ = workingValue62
  workingValue62 = vector3
  workingValue66 = localValue5.x
  stateFlag25 = localValue5.y
  stateFlag = dataCollection4.baseZ
  workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag)
  dataCollection4.anchor = workingValue62
  workingValue62 = GetEntityHeading
  workingValue66 = localValue4
  -- Beginner: result below is heading.
  workingValue62 = workingValue62(workingValue66)
  workingValue66 = GetHashKey
  stateFlag25 = localValue3
  -- Beginner: result below is hash.
  workingValue66 = workingValue66(stateFlag25)
  if not workingValue66 or 0 == workingValue66 then
    stateFlag25 = tCMG
    stateFlag25 = stateFlag25.notify
    stateFlag = "~r~Invalid main wreck model."
    -- Beginner: Show a notification to the player.
    stateFlag25(stateFlag)
    return
  end
  stateFlag25 = CMG
  stateFlag25 = stateFlag25.loadModel
  stateFlag = workingValue66
  -- Beginner: Request/load a GTA model before spawning or applying it.
  stateFlag25(stateFlag)
  stateFlag25 = CreateObject
  stateFlag = workingValue66
  stateFlag2 = dataCollection4.anchor
  stateFlag2 = stateFlag2.x
  stateFlag4 = dataCollection4.anchor
  stateFlag4 = stateFlag4.y
  stateFlag5 = dataCollection4.baseZ
  stateFlag5 = stateFlag5 + 0.05
  stateFlag6 = false
  stateFlag7 = false
  stateFlag8 = false
  -- Beginner: result below is objectEntity.
  stateFlag25 = stateFlag25(stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
  dataCollection4.mainEnt = stateFlag25
  stateFlag25 = dataCollection4.mainEnt
  if 0 ~= stateFlag25 then
    stateFlag25 = DoesEntityExist
    stateFlag = dataCollection4.mainEnt
    stateFlag25 = stateFlag25(stateFlag)
    if stateFlag25 then
      goto continueAtStep109
    end
  end
  stateFlag25 = tCMG
  stateFlag25 = stateFlag25.notify
  stateFlag = "~r~Failed to spawn main wreck."
  -- Beginner: Show a notification to the player.
  stateFlag25(stateFlag)
  stateFlag25 = SetModelAsNoLongerNeeded
  stateFlag = workingValue66
  stateFlag25(stateFlag)
  return
  ::continueAtStep109::
  stateFlag25 = SetEntityHeading
  stateFlag = dataCollection4.mainEnt
  stateFlag2 = workingValue62
  -- Beginner: Change the direction an entity is facing.
  stateFlag25(stateFlag, stateFlag2)
  stateFlag25 = PlaceObjectOnGroundProperly
  stateFlag = dataCollection4.mainEnt
  stateFlag25(stateFlag)
  stateFlag25 = SetEntityCollision
  stateFlag = dataCollection4.mainEnt
  stateFlag2 = false
  stateFlag4 = false
  stateFlag25(stateFlag, stateFlag2, stateFlag4)
  stateFlag25 = GetEntityCoords
  stateFlag = dataCollection4.mainEnt
  stateFlag2 = true
  -- Beginner: result below is entityCoords.
  stateFlag25 = stateFlag25(stateFlag, stateFlag2)
  stateFlag = vector3
  stateFlag2 = stateFlag25.x
  stateFlag4 = stateFlag25.y
  stateFlag5 = dataCollection4.baseZ
  stateFlag = stateFlag(stateFlag2, stateFlag4, stateFlag5)
  dataCollection4.anchor = stateFlag
  stateFlag = SetModelAsNoLongerNeeded
  stateFlag2 = workingValue66
  stateFlag(stateFlag2)
  stateFlag = GetEntityHeading
  stateFlag2 = dataCollection4.mainEnt
  -- Beginner: result below is heading.
  stateFlag = stateFlag(stateFlag2)
  stateFlag2 = workingValue71
  stateFlag2 = stateFlag2()
  stateFlag4 = 1
  stateFlag5 = 4
  stateFlag6 = 1
  for stateFlag7 = stateFlag4, stateFlag5, stateFlag6 do
    stateFlag8 = workingValue3
    stateFlag9 = stateFlag7
    stateFlag8 = stateFlag8(stateFlag9)
    stateFlag9 = workingValue35
    stateFlag10 = stateFlag8.dx
    number3 = stateFlag8.dy
    stateFlag11 = stateFlag
    stateFlag9, stateFlag10 = stateFlag9(stateFlag10, number3, stateFlag11)
    number3 = dataCollection4.anchor
    number3 = number3.x
    number3 = number3 + stateFlag9
    stateFlag11 = dataCollection4.anchor
    stateFlag11 = stateFlag11.y
    stateFlag11 = stateFlag11 + stateFlag10
    stateFlag12 = dataCollection4.baseZ
    stateFlag13 = stateFlag8.dz
    stateFlag12 = stateFlag12 + stateFlag13
    stateFlag13 = workingValue73
    stateFlag14 = stateFlag7
    stateFlag15 = stateFlag2
    stateFlag13 = stateFlag13(stateFlag14, stateFlag15)
    stateFlag14 = GetHashKey
    stateFlag15 = stateFlag13
    -- Beginner: result below is hash.
    stateFlag14 = stateFlag14(stateFlag15)
    if stateFlag14 and 0 ~= stateFlag14 then
      stateFlag15 = CMG
      stateFlag15 = stateFlag15.loadModel
      stateFlag16 = stateFlag14
      -- Beginner: Request/load a GTA model before spawning or applying it.
      stateFlag15(stateFlag16)
      stateFlag15 = CreateObject
      stateFlag16 = stateFlag14
      stateFlag17 = number3
      number7 = stateFlag11
      stateFlag18 = stateFlag12
      stateFlag19 = false
      stateFlag20 = false
      number9 = false
      -- Beginner: result below is objectEntity.
      stateFlag15 = stateFlag15(stateFlag16, stateFlag17, number7, stateFlag18, stateFlag19, stateFlag20, number9)
      if 0 ~= stateFlag15 then
        stateFlag16 = DoesEntityExist
        stateFlag17 = stateFlag15
        stateFlag16 = stateFlag16(stateFlag17)
        if stateFlag16 then
          stateFlag16 = SetEntityHeading
          stateFlag17 = stateFlag15
          number7 = stateFlag8.h
          number7 = number7 + stateFlag
          -- Beginner: Change the direction an entity is facing.
          stateFlag16(stateFlag17, number7)
          stateFlag16 = PlaceObjectOnGroundProperly
          stateFlag17 = stateFlag15
          stateFlag16(stateFlag17)
          stateFlag16 = FreezeEntityPosition
          stateFlag17 = stateFlag15
          number7 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          stateFlag16(stateFlag17, number7)
          stateFlag16 = SetEntityCollision
          stateFlag17 = stateFlag15
          number7 = false
          stateFlag18 = false
          stateFlag16(stateFlag17, number7, stateFlag18)
          stateFlag16 = dataCollection4.slotEnts
          stateFlag16[stateFlag7] = stateFlag15
        end
      end
      stateFlag16 = SetModelAsNoLongerNeeded
      stateFlag17 = stateFlag14
      stateFlag16(stateFlag17)
    end
  end
  dataCollection4.kind = "ground"
  dataCollection4.flatbedVeh = 0
  dataCollection4.flatbedAttach = nil
  dataCollection4.active = true
  stateFlag4 = tCMG
  stateFlag4 = stateFlag4.notify
  stateFlag5 = "~g~Ground layout spawned (collision off). Print \226\134\146 cfg.debrisLayoutGroups[mainModel].secondaryOffsets."
  -- Beginner: Show a notification to the player.
  stateFlag4(stateFlag5)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12
  localValue1 = text11
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = text7
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = GetEntityModel
    localValue3 = localValue1
    -- Beginner: result below is modelHash.
    localValue2 = localValue2(localValue3)
    localValue3 = workingValue11
    localValue2 = localValue3[localValue2]
    if localValue2 then
      goto continueAtStep22
    end
  end
  localValue2 = tCMG
  localValue2 = localValue2.notify
  localValue3 = "~r~Sit in your Mechanic flatbed driver seat to tune bed attach offsets."
  localValue2(localValue3)
  return
  ::continueAtStep22::
  localValue2 = workingValue68
  localValue2()
  dataCollection4.flatbedVeh = localValue1
  localValue2 = workingValue69
  localValue2 = localValue2()
  localValue3 = math
  localValue3 = localValue3.max
  localValue4 = 1
  localValue5 = math
  localValue5 = localValue5.min
  localValue6 = #localValue2
  localValue7 = math
  localValue7 = localValue7.floor
  workingValue62 = cmgOperation6.mainModelIndex
  if not workingValue62 then
    workingValue62 = 1
  end
  localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12 = localValue7(workingValue62)
  localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12 = localValue5(localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12)
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12)
  cmgOperation6.mainModelIndex = localValue3
  localValue4 = localValue2[localValue3]
  dataCollection4.mainModelName = localValue4
  localValue5 = workingValue71
  localValue5 = localValue5()
  localValue6 = workingValue74
  localValue7 = localValue5
  localValue6 = localValue6(localValue7)
  dataCollection4.flatbedAttach = localValue6
  localValue6 = workingValue75
  localValue7 = localValue4
  localValue6 = localValue6(localValue7)
  dataCollection4.mainFlatbedAttach = localValue6
  localValue6 = GetHashKey
  localValue7 = localValue4
  -- Beginner: result below is hash.
  localValue6 = localValue6(localValue7)
  if not localValue6 or 0 == localValue6 then
    localValue7 = tCMG
    localValue7 = localValue7.notify
    workingValue62 = "~r~Invalid main wreck model."
    -- Beginner: Show a notification to the player.
    localValue7(workingValue62)
    localValue7 = workingValue68
    localValue7()
    return
  end
  localValue7 = GetEntityCoords
  workingValue62 = localValue1
  workingValue66 = true
  -- Beginner: result below is entityCoords.
  localValue7 = localValue7(workingValue62, workingValue66)
  workingValue62 = CMG
  workingValue62 = workingValue62.loadModel
  workingValue66 = localValue6
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workingValue62(workingValue66)
  workingValue62 = CreateObject
  workingValue66 = localValue6
  stateFlag25 = localValue7.x
  stateFlag = localValue7.y
  stateFlag2 = localValue7.z
  stateFlag2 = stateFlag2 + 0.5
  stateFlag4 = false
  stateFlag5 = false
  stateFlag6 = false
  -- Beginner: result below is objectEntity.
  workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6)
  dataCollection4.mainEnt = workingValue62
  workingValue62 = dataCollection4.mainEnt
  if 0 ~= workingValue62 then
    workingValue62 = DoesEntityExist
    workingValue66 = dataCollection4.mainEnt
    workingValue62 = workingValue62(workingValue66)
    if workingValue62 then
      goto continueAtStep107
    end
  end
  workingValue62 = tCMG
  workingValue62 = workingValue62.notify
  workingValue66 = "~r~Failed to spawn main wreck."
  -- Beginner: Show a notification to the player.
  workingValue62(workingValue66)
  workingValue62 = SetModelAsNoLongerNeeded
  workingValue66 = localValue6
  workingValue62(workingValue66)
  workingValue62 = workingValue68
  workingValue62()
  return
  ::continueAtStep107::
  workingValue62 = SetModelAsNoLongerNeeded
  workingValue66 = localValue6
  workingValue62(workingValue66)
  dataCollection4.kind = "flatbed"
  workingValue62 = 1
  workingValue66 = 4
  stateFlag25 = 1
  for stateFlag = workingValue62, workingValue66, stateFlag25 do
    stateFlag2 = workingValue73
    stateFlag4 = stateFlag
    stateFlag5 = localValue5
    stateFlag2 = stateFlag2(stateFlag4, stateFlag5)
    stateFlag4 = GetHashKey
    stateFlag5 = stateFlag2
    -- Beginner: result below is hash.
    stateFlag4 = stateFlag4(stateFlag5)
    stateFlag5 = dataCollection4.flatbedAttach
    stateFlag5 = stateFlag5[stateFlag]
    if stateFlag4 and 0 ~= stateFlag4 and stateFlag5 then
      stateFlag6 = CMG
      stateFlag6 = stateFlag6.loadModel
      stateFlag7 = stateFlag4
      -- Beginner: Request/load a GTA model before spawning or applying it.
      stateFlag6(stateFlag7)
      stateFlag6 = CreateObject
      stateFlag7 = stateFlag4
      stateFlag8 = localValue7.x
      stateFlag9 = localValue7.y
      stateFlag10 = localValue7.z
      stateFlag10 = stateFlag10 + 0.5
      number3 = false
      stateFlag11 = false
      stateFlag12 = false
      -- Beginner: result below is objectEntity.
      stateFlag6 = stateFlag6(stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12)
      if 0 ~= stateFlag6 then
        stateFlag7 = DoesEntityExist
        stateFlag8 = stateFlag6
        stateFlag7 = stateFlag7(stateFlag8)
        if stateFlag7 then
          stateFlag7 = dataCollection4.slotEnts
          stateFlag7[stateFlag] = stateFlag6
        end
      end
      stateFlag7 = SetModelAsNoLongerNeeded
      stateFlag8 = stateFlag4
      stateFlag7(stateFlag8)
    end
  end
  workingValue62 = workingValue2
  workingValue62()
  dataCollection4.active = true
  workingValue62 = tCMG
  workingValue62 = workingValue62.notify
  workingValue66 = "~g~Main wreck + four props on flatbed (collision off). Nudge = ox/oy/oz; Heading \194\177 = rz. Print \226\134\146 cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
  -- Beginner: Show a notification to the player.
  workingValue62(workingValue66)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = dataCollection4.kind
  if "flatbed" == localValue1 then
    localValue1 = math
    localValue1 = localValue1.max
    localValue2 = 0
    localValue3 = math
    localValue3 = localValue3.min
    localValue4 = 4
    localValue5 = math
    localValue5 = localValue5.floor
    localValue6 = tonumber
    localValue7 = cmgOperation6.selectedIndex
    localValue6 = localValue6(localValue7)
    if not localValue6 then
      localValue6 = 0
    end
    localValue5, localValue6, localValue7 = localValue5(localValue6)
    localValue3, localValue4, localValue5, localValue6, localValue7 = localValue3(localValue4, localValue5, localValue6, localValue7)
    localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
    if 0 == localValue1 then
      localValue2 = dataCollection4.mainEnt
      return localValue2
    end
    localValue2 = dataCollection4.slotEnts
    localValue2 = localValue2[localValue1]
    if not localValue2 then
      localValue2 = 0
    end
    return localValue2
  end
  localValue1 = math
  localValue1 = localValue1.max
  localValue2 = 0
  localValue3 = math
  localValue3 = localValue3.min
  localValue4 = 4
  localValue5 = math
  localValue5 = localValue5.floor
  localValue6 = cmgOperation6.selectedIndex
  if not localValue6 then
    localValue6 = 0
  end
  localValue5, localValue6, localValue7 = localValue5(localValue6)
  localValue3, localValue4, localValue5, localValue6, localValue7 = localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  if 0 == localValue1 then
    localValue2 = dataCollection4.mainEnt
    return localValue2
  end
  localValue2 = dataCollection4.slotEnts
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = 0
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2, localValue3) ===
function workingValue8(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6
  localValue4 = dataCollection4.kind
  if "flatbed" == localValue4 then
    localValue4 = math
    localValue4 = localValue4.max
    localValue5 = 0
    localValue6 = math
    localValue6 = localValue6.min
    localValue7 = 4
    workingValue62 = math
    workingValue62 = workingValue62.floor
    workingValue66 = tonumber
    stateFlag25 = cmgOperation6.selectedIndex
    workingValue66 = workingValue66(stateFlag25)
    if not workingValue66 then
      workingValue66 = 0
    end
    workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6 = workingValue62(workingValue66)
    localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6)
    localValue4 = localValue4(localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6)
    if 0 == localValue4 then
      localValue5 = dataCollection4.mainFlatbedAttach
      localValue6 = dataCollection4.mainEnt
      if localValue5 and 0 ~= localValue6 then
        localValue7 = DoesEntityExist
        workingValue62 = localValue6
        localValue7 = localValue7(workingValue62)
        if localValue7 then
          goto continueAtStep35
        end
      end
      return
      ::continueAtStep35::
      localValue7 = tonumber
      workingValue62 = cmgOperation6.step
      localValue7 = localValue7(workingValue62)
      if not localValue7 then
        localValue7 = 0.1
      end
      workingValue62 = localValue5.ox
      workingValue66 = localValue1 or workingValue66
      if not localValue1 then
        workingValue66 = 0.0
      end
      workingValue66 = workingValue66 * localValue7
      workingValue62 = workingValue62 + workingValue66
      localValue5.ox = workingValue62
      workingValue62 = localValue5.oy
      workingValue66 = localValue2 or workingValue66
      if not localValue2 then
        workingValue66 = 0.0
      end
      workingValue66 = workingValue66 * localValue7
      workingValue62 = workingValue62 + workingValue66
      localValue5.oy = workingValue62
      workingValue62 = localValue5.oz
      workingValue66 = localValue3 or workingValue66
      if not localValue3 then
        workingValue66 = 0.0
      end
      workingValue66 = workingValue66 * localValue7
      workingValue62 = workingValue62 + workingValue66
      localValue5.oz = workingValue62
      workingValue62 = workingValue
      workingValue62()
      return
    end
    localValue5 = dataCollection4.flatbedAttach
    if localValue5 then
      localValue5 = dataCollection4.flatbedAttach
      localValue5 = localValue5[localValue4]
    end
    localValue6 = dataCollection4.slotEnts
    localValue6 = localValue6[localValue4]
    if localValue5 and 0 ~= localValue6 then
      localValue7 = DoesEntityExist
      workingValue62 = localValue6
      localValue7 = localValue7(workingValue62)
      if localValue7 then
        goto continueAtStep88
      end
    end
    return
    ::continueAtStep88::
    localValue7 = tonumber
    workingValue62 = cmgOperation6.step
    localValue7 = localValue7(workingValue62)
    if not localValue7 then
      localValue7 = 0.1
    end
    workingValue62 = localValue5.ox
    workingValue66 = localValue1 or workingValue66
    if not localValue1 then
      workingValue66 = 0.0
    end
    workingValue66 = workingValue66 * localValue7
    workingValue62 = workingValue62 + workingValue66
    localValue5.ox = workingValue62
    workingValue62 = localValue5.oy
    workingValue66 = localValue2 or workingValue66
    if not localValue2 then
      workingValue66 = 0.0
    end
    workingValue66 = workingValue66 * localValue7
    workingValue62 = workingValue62 + workingValue66
    localValue5.oy = workingValue62
    workingValue62 = localValue5.oz
    workingValue66 = localValue3 or workingValue66
    if not localValue3 then
      workingValue66 = 0.0
    end
    workingValue66 = workingValue66 * localValue7
    workingValue62 = workingValue62 + workingValue66
    localValue5.oz = workingValue62
    workingValue62 = workingValue2
    workingValue62()
    return
  end
  localValue4 = workingValue7
  localValue4 = localValue4()
  if 0 ~= localValue4 then
    localValue5 = DoesEntityExist
    localValue6 = localValue4
    localValue5 = localValue5(localValue6)
    if localValue5 then
      goto continueAtStep134
    end
  end
  return
  ::continueAtStep134::
  localValue5 = tonumber
  localValue6 = cmgOperation6.step
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = 0.1
  end
  localValue6 = workingValue67
  localValue7 = localValue1 * localValue5
  workingValue62 = localValue2 * localValue5
  localValue6 = localValue6(localValue7, workingValue62)
  localValue7 = GetEntityCoords
  workingValue62 = localValue4
  workingValue66 = true
  -- Beginner: result below is entityCoords.
  localValue7 = localValue7(workingValue62, workingValue66)
  workingValue62 = SetEntityCoordsNoOffset
  workingValue66 = localValue4
  stateFlag25 = localValue7.x
  stateFlag = localValue6.x
  stateFlag25 = stateFlag25 + stateFlag
  stateFlag = localValue7.y
  stateFlag2 = localValue6.y
  stateFlag = stateFlag + stateFlag2
  stateFlag2 = localValue7.z
  stateFlag4 = localValue6.z
  stateFlag2 = stateFlag2 + stateFlag4
  stateFlag4 = localValue3 or stateFlag4
  if not localValue3 then
    stateFlag4 = 0.0
  end
  stateFlag4 = stateFlag4 * localValue5
  stateFlag2 = stateFlag2 + stateFlag4
  stateFlag4 = false
  stateFlag5 = false
  stateFlag6 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62
  localValue2 = dataCollection4.kind
  if "flatbed" == localValue2 then
    localValue2 = math
    localValue2 = localValue2.max
    localValue3 = 0
    localValue4 = math
    localValue4 = localValue4.min
    localValue5 = 4
    localValue6 = math
    localValue6 = localValue6.floor
    localValue7 = tonumber
    workingValue62 = cmgOperation6.selectedIndex
    localValue7 = localValue7(workingValue62)
    if not localValue7 then
      localValue7 = 0
    end
    localValue6, localValue7, workingValue62 = localValue6(localValue7)
    localValue4, localValue5, localValue6, localValue7, workingValue62 = localValue4(localValue5, localValue6, localValue7, workingValue62)
    localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62)
    if 0 == localValue2 then
      localValue3 = dataCollection4.mainFlatbedAttach
      if not localValue3 then
        return
      end
      localValue4 = localValue3.rz
      localValue4 = localValue4 + localValue1
      localValue3.rz = localValue4
      localValue4 = workingValue
      localValue4()
      return
    end
    localValue3 = dataCollection4.flatbedAttach
    if localValue3 then
      localValue3 = dataCollection4.flatbedAttach
      localValue3 = localValue3[localValue2]
    end
    if not localValue3 then
      return
    end
    localValue4 = localValue3.rz
    localValue4 = localValue4 + localValue1
    localValue3.rz = localValue4
    localValue4 = workingValue2
    localValue4()
    return
  end
  localValue2 = workingValue7
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep59
    end
  end
  return
  ::continueAtStep59::
  localValue3 = SetEntityHeading
  localValue4 = localValue2
  localValue5 = GetEntityHeading
  localValue6 = localValue2
  -- Beginner: result below is heading.
  localValue5 = localValue5(localValue6)
  localValue5 = localValue5 + localValue1
  -- Beginner: Change the direction an entity is facing.
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62
  localValue1 = dataCollection4.mainEnt
  if 0 ~= localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = dataCollection4.mainEnt
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = dataCollection4.anchor
      if localValue1 then
        goto continueAtStep13
      end
    end
  end
  return
  ::continueAtStep13::
  localValue1 = SetEntityCoordsNoOffset
  localValue2 = dataCollection4.mainEnt
  localValue3 = dataCollection4.anchor
  localValue3 = localValue3.x
  localValue4 = dataCollection4.anchor
  localValue4 = localValue4.y
  localValue5 = dataCollection4.baseZ
  localValue5 = localValue5 + 0.05
  localValue6 = false
  localValue7 = false
  workingValue62 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62)
  localValue1 = PlaceObjectOnGroundProperly
  localValue2 = dataCollection4.mainEnt
  localValue1(localValue2)
  localValue1 = SetEntityCollision
  localValue2 = dataCollection4.mainEnt
  localValue3 = false
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = GetEntityCoords
  localValue2 = dataCollection4.mainEnt
  localValue3 = true
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2, localValue3)
  localValue2 = vector3
  localValue3 = localValue1.x
  localValue4 = localValue1.y
  localValue5 = dataCollection4.baseZ
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  dataCollection4.anchor = localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17
  localValue1 = dataCollection4.kind
  if "ground" ~= localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "~r~Use Ground mode and spawn / reset at player to print pile offsets."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
    return
  end
  localValue1 = dataCollection4.active
  if localValue1 then
    localValue1 = dataCollection4.anchor
    if localValue1 then
      localValue1 = dataCollection4.mainEnt
      if 0 ~= localValue1 then
        localValue1 = DoesEntityExist
        localValue2 = dataCollection4.mainEnt
        localValue1 = localValue1(localValue2)
        if localValue1 then
          goto continueAtStep28
        end
      end
    end
  end
  localValue1 = tCMG
  localValue1 = localValue1.notify
  localValue2 = "~r~Start a ground layout session first."
  localValue1(localValue2)
  return
  ::continueAtStep28::
  localValue1 = dataCollection4.anchor
  localValue1 = localValue1.x
  localValue2 = dataCollection4.anchor
  localValue2 = localValue2.y
  localValue3 = dataCollection4.baseZ
  localValue4 = text13
  localValue4 = localValue4()
  localValue5 = {}
  localValue6 = #localValue5
  localValue6 = localValue6 + 1
  localValue7 = string
  localValue7 = localValue7.format
  workingValue62 = "-- Mechanic debris layout (dev export)  mainModel=%s  anchor=vector3(%.4f, %.4f, %.4f)  mainHeading=%.2f"
  workingValue66 = dataCollection4.mainModelName
  stateFlag25 = localValue1
  stateFlag = localValue2
  stateFlag2 = localValue3
  stateFlag4 = localValue4
  localValue7 = localValue7(workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4)
  localValue5[localValue6] = localValue7
  localValue6 = #localValue5
  localValue6 = localValue6 + 1
  localValue5[localValue6] = "-- Paste into cfg_mechanic.lua (adjust debrisSpawns site separately if needed)."
  localValue6 = #localValue5
  localValue6 = localValue6 + 1
  localValue5[localValue6] = "cfg.debrisLayoutGroups = cfg.debrisLayoutGroups or {}"
  localValue6 = #localValue5
  localValue6 = localValue6 + 1
  localValue7 = string
  localValue7 = localValue7.format
  workingValue62 = "cfg.debrisLayoutGroups[\"%s\"] = cfg.debrisLayoutGroups[\"%s\"] or {}"
  workingValue66 = dataCollection4.mainModelName
  stateFlag25 = dataCollection4.mainModelName
  localValue7 = localValue7(workingValue62, workingValue66, stateFlag25)
  localValue5[localValue6] = localValue7
  localValue6 = #localValue5
  localValue6 = localValue6 + 1
  localValue7 = string
  localValue7 = localValue7.format
  workingValue62 = "cfg.debrisLayoutGroups[\"%s\"].secondaryOffsets = {"
  workingValue66 = dataCollection4.mainModelName
  localValue7 = localValue7(workingValue62, workingValue66)
  localValue5[localValue6] = localValue7
  localValue6 = workingValue71
  localValue6 = localValue6()
  localValue7 = 1
  workingValue62 = 4
  workingValue66 = 1
  for stateFlag25 = localValue7, workingValue62, workingValue66 do
    stateFlag = dataCollection4.slotEnts
    stateFlag = stateFlag[stateFlag25]
    stateFlag2 = workingValue73
    stateFlag4 = stateFlag25
    stateFlag5 = localValue6
    stateFlag2 = stateFlag2(stateFlag4, stateFlag5)
    if stateFlag and 0 ~= stateFlag then
      stateFlag4 = DoesEntityExist
      stateFlag5 = stateFlag
      stateFlag4 = stateFlag4(stateFlag5)
      if stateFlag4 then
        stateFlag4 = GetEntityCoords
        stateFlag5 = stateFlag
        stateFlag6 = true
        -- Beginner: result below is entityCoords.
        stateFlag4 = stateFlag4(stateFlag5, stateFlag6)
        stateFlag5 = stateFlag4.x
        stateFlag5 = stateFlag5 - localValue1
        stateFlag6 = stateFlag4.y
        stateFlag6 = stateFlag6 - localValue2
        stateFlag7 = stateFlag4.z
        stateFlag7 = stateFlag7 - localValue3
        stateFlag8 = text12
        stateFlag9 = stateFlag5
        stateFlag10 = stateFlag6
        number3 = localValue4
        stateFlag8, stateFlag9 = stateFlag8(stateFlag9, stateFlag10, number3)
        stateFlag10 = GetEntityHeading
        number3 = stateFlag
        -- Beginner: result below is heading.
        stateFlag10 = stateFlag10(number3)
        stateFlag10 = stateFlag10 - localValue4
        while true do
          number3 = 180.0
          if not (stateFlag10 > number3) then
            break
          end
          stateFlag10 = stateFlag10 - 360.0
        end
        while true do
          number3 = -180.0
          if not (stateFlag10 < number3) then
            break
          end
          stateFlag10 = stateFlag10 + 360.0
        end
        number3 = #localValue5
        number3 = number3 + 1
        stateFlag11 = string
        stateFlag11 = stateFlag11.format
        stateFlag12 = "    [\"%s\"] = { dx = %.4f, dy = %.4f, dz = %.4f, h = %.2f },"
        stateFlag13 = stateFlag2
        stateFlag14 = stateFlag8
        stateFlag15 = stateFlag9
        stateFlag16 = stateFlag7
        stateFlag17 = stateFlag10
        stateFlag11 = stateFlag11(stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17)
        localValue5[number3] = stateFlag11
    end
    else
      stateFlag4 = #localValue5
      stateFlag4 = stateFlag4 + 1
      stateFlag5 = string
      stateFlag5 = stateFlag5.format
      stateFlag6 = "-- slot %d model=%s (no entity)"
      stateFlag7 = stateFlag25
      stateFlag8 = stateFlag2
      stateFlag5 = stateFlag5(stateFlag6, stateFlag7, stateFlag8)
      localValue5[stateFlag4] = stateFlag5
    end
  end
  localValue7 = #localValue5
  localValue7 = localValue7 + 1
  localValue5[localValue7] = "}"
  localValue7 = print
  workingValue62 = table
  workingValue62 = workingValue62.concat
  workingValue66 = localValue5
  stateFlag25 = "\n"
  workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17 = workingValue62(workingValue66, stateFlag25)
  localValue7(workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17)
  localValue7 = tCMG
  localValue7 = localValue7.notify
  workingValue62 = "~g~Printed ground offsets to F8 (cfg.debrisLayoutGroups[mainModel].secondaryOffsets)."
  -- Beginner: Show a notification to the player.
  localValue7(workingValue62)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11
  localValue1 = dataCollection4.kind
  if "flatbed" == localValue1 then
    localValue1 = type
    localValue2 = dataCollection4.flatbedAttach
    localValue1 = localValue1(localValue2)
    if "table" == localValue1 then
      goto continueAtStep14
    end
  end
  localValue1 = tCMG
  localValue1 = localValue1.notify
  localValue2 = "~r~Use Flatbed mode and spawn on the flatbed first."
  localValue1(localValue2)
  return
  ::continueAtStep14::
  localValue1 = tonumber
  localValue2 = cmgOperation.debrisSecondaryFlatbedBone
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = tonumber
    localValue2 = cmgOperation.debrisMainFlatbedBone
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      localValue1 = 20
    end
  end
  localValue2 = tonumber
  localValue3 = cmgOperation.debrisMainFlatbedBone
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = 20
  end
  localValue3 = {}
  localValue4 = #localValue3
  localValue4 = localValue4 + 1
  localValue3[localValue4] = "-- Mechanic lane clear: flatbed bed attach (dev export)"
  localValue4 = #localValue3
  localValue4 = localValue4 + 1
  localValue5 = string
  localValue5 = localValue5.format
  localValue6 = "-- mainModel=%s"
  localValue7 = dataCollection4.mainModelName
  if not localValue7 then
    localValue7 = ""
  end
  localValue5 = localValue5(localValue6, localValue7)
  localValue3[localValue4] = localValue5
  localValue4 = dataCollection4.mainFlatbedAttach
  localValue5 = type
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  if "table" == localValue5 then
    localValue5 = #localValue3
    localValue5 = localValue5 + 1
    localValue6 = string
    localValue6 = localValue6.format
    localValue7 = "cfg.debrisMainFlatbedBone = %d"
    workingValue62 = localValue2
    localValue6 = localValue6(localValue7, workingValue62)
    localValue3[localValue5] = localValue6
    localValue5 = #localValue3
    localValue5 = localValue5 + 1
    localValue6 = string
    localValue6 = localValue6.format
    localValue7 = "cfg.debrisMainFlatbedAttach = { ox = %.4f, oy = %.4f, oz = %.4f, rx = %.4f, ry = %.4f, rz = %.4f },"
    workingValue62 = localValue4.ox
    workingValue66 = localValue4.oy
    stateFlag25 = localValue4.oz
    stateFlag = localValue4.rx
    stateFlag2 = localValue4.ry
    stateFlag4 = localValue4.rz
    localValue6 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4)
    localValue3[localValue5] = localValue6
  end
  localValue5 = #localValue3
  localValue5 = localValue5 + 1
  localValue6 = string
  localValue6 = localValue6.format
  localValue7 = "cfg.debrisSecondaryFlatbedBone = %d"
  workingValue62 = localValue1
  localValue6 = localValue6(localValue7, workingValue62)
  localValue3[localValue5] = localValue6
  localValue5 = #localValue3
  localValue5 = localValue5 + 1
  localValue3[localValue5] = "cfg.debrisLayoutGroups = cfg.debrisLayoutGroups or {}"
  localValue5 = #localValue3
  localValue5 = localValue5 + 1
  localValue6 = string
  localValue6 = localValue6.format
  localValue7 = "cfg.debrisLayoutGroups[\"%s\"] = cfg.debrisLayoutGroups[\"%s\"] or {}"
  workingValue62 = dataCollection4.mainModelName
  workingValue66 = dataCollection4.mainModelName
  localValue6 = localValue6(localValue7, workingValue62, workingValue66)
  localValue3[localValue5] = localValue6
  localValue5 = #localValue3
  localValue5 = localValue5 + 1
  localValue6 = string
  localValue6 = localValue6.format
  localValue7 = "cfg.debrisLayoutGroups[\"%s\"].secondaryFlatbedAttach = {"
  workingValue62 = dataCollection4.mainModelName
  localValue6 = localValue6(localValue7, workingValue62)
  localValue3[localValue5] = localValue6
  localValue5 = workingValue71
  localValue5 = localValue5()
  localValue6 = 1
  localValue7 = 4
  workingValue62 = 1
  for workingValue66 = localValue6, localValue7, workingValue62 do
    stateFlag25 = dataCollection4.flatbedAttach
    stateFlag25 = stateFlag25[workingValue66]
    stateFlag = workingValue73
    stateFlag2 = workingValue66
    stateFlag4 = localValue5
    stateFlag = stateFlag(stateFlag2, stateFlag4)
    if stateFlag25 then
      stateFlag2 = #localValue3
      stateFlag2 = stateFlag2 + 1
      stateFlag4 = string
      stateFlag4 = stateFlag4.format
      stateFlag5 = "    [\"%s\"] = { ox = %.4f, oy = %.4f, oz = %.4f, rx = %.4f, ry = %.4f, rz = %.4f },"
      stateFlag6 = stateFlag
      stateFlag7 = stateFlag25.ox
      stateFlag8 = stateFlag25.oy
      stateFlag9 = stateFlag25.oz
      stateFlag10 = stateFlag25.rx
      number3 = stateFlag25.ry
      stateFlag11 = stateFlag25.rz
      stateFlag4 = stateFlag4(stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11)
      localValue3[stateFlag2] = stateFlag4
    end
  end
  localValue6 = #localValue3
  localValue6 = localValue6 + 1
  localValue3[localValue6] = "}"
  localValue6 = print
  localValue7 = table
  localValue7 = localValue7.concat
  workingValue62 = localValue3
  workingValue66 = "\n"
  localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11 = localValue7(workingValue62, workingValue66)
  localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11)
  localValue6 = tCMG
  localValue6 = localValue6.notify
  localValue7 = "~g~Printed flatbed attach to F8 (cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach)."
  -- Beginner: Show a notification to the player.
  localValue6(localValue7)
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerDevMenuItems
text = "Mechanic/Debris layout"

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  localValue2 = "Lane clear debris offsets (dev)"
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  localValue2 = "Two modes: ground pile vs flatbed bone-local attach. Props: collision off."
  localValue1(localValue2)
  localValue1 = math
  localValue1 = localValue1.max
  localValue2 = 1
  localValue3 = math
  localValue3 = localValue3.min
  localValue4 = 2
  localValue5 = math
  localValue5 = localValue5.floor
  localValue6 = tonumber
  localValue7 = cmgOperation6.offsetKindIndex
  localValue6 = localValue6(localValue7)
  if not localValue6 then
    localValue6 = 1
  end
  localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3 = localValue5(localValue6)
  localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3 = localValue3(localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
  cmgOperation6.offsetKindIndex = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.List
  localValue3 = "Offset mode"
  localValue4 = dataCollection7
  localValue5 = localValue1
  localValue6 = "Ground: cfg.debrisLayoutGroups[mainModel].secondaryOffsets. Flatbed: cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
  localValue7 = {}
  workingValue62 = true

  -- === HELPER FUNCTION (decompiler name: workingValue66; parameters: localValue12, localValue22, localValue32, localValue42) ===
  function workingValue66(localValue12, localValue22, localValue32, localValue42)
    local cmgOperation5, text6
    cmgOperation5 = cmgOperation6.offsetKindIndex
    if cmgOperation5 ~= localValue42 then
      cmgOperation5 = dataCollection4.active
      if cmgOperation5 then
        cmgOperation5 = workingValue68
        cmgOperation5()
        cmgOperation5 = tCMG
        cmgOperation5 = cmgOperation5.notify
        text6 = "~y~Session cleared: offset mode changed."
        -- Beginner: Show a notification to the player.
        cmgOperation5(text6)
      end
      cmgOperation6.offsetKindIndex = localValue42
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
  function stateFlag25()
    local localValue12, localValue22
  end
  -- Beginner: Draw a RageUI list selector.
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25)
  localValue2 = text10
  localValue2 = localValue2()
  if "flatbed" == localValue2 then
    localValue2 = "Flatbed driver seat. Spawns main + four secondaries (models from Slot 1\226\128\1474 lists) with cfg attaches; nudge ox/oy/oz/rz."
    if localValue2 then
      goto continueAtStep47
    end
  end
  localValue2 = "Spawns main + four secondaries at your feet (Slot 1\226\128\1474 model lists + cfg scene offsets). No job vehicle checks."
  ::continueAtStep47::
  localValue3 = RageUI
  localValue3 = localValue3.Button
  localValue4 = text10
  localValue4 = localValue4()
  if "flatbed" == localValue4 then
    localValue4 = "Spawn / reset on flatbed"
    if localValue4 then
      goto continueAtStep57
    end
  end
  localValue4 = "Spawn / reset at player"
  ::continueAtStep57::
  localValue5 = localValue2
  localValue6 = true

  -- === HELPER FUNCTION: localValue7(localValue12, localValue22, localValue32) ===
  function localValue7(localValue12, localValue22, localValue32)
    local localValue42
    if localValue32 then
      localValue42 = text10
      localValue42 = localValue42()
      if "flatbed" == localValue42 then
        localValue42 = workingValue6
        localValue42()
      else
        localValue42 = workingValue5
        localValue42()
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  localValue4 = "End session (delete props)"
  localValue5 = ""
  localValue6 = dataCollection4.active

  -- === HELPER FUNCTION: localValue7(localValue12, localValue22, localValue32) ===
  function localValue7(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5
    if localValue32 then
      localValue42 = workingValue68
      localValue42()
      localValue42 = tCMG
      localValue42 = localValue42.notify
      cmgOperation5 = "~y~Debris layout session cleared."
      -- Beginner: Show a notification to the player.
      localValue42(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = workingValue69
  localValue3 = localValue3()
  localValue4 = text10
  localValue4 = localValue4()
  localValue4 = "ground" == localValue4
  localValue5 = RageUI
  localValue5 = localValue5.List
  localValue6 = "Main wreck model"
  localValue7 = localValue3
  workingValue62 = cmgOperation6.mainModelIndex
  workingValue66 = "Used on next spawn (ground or flatbed mode)."
  stateFlag25 = {}
  stateFlag = true

  -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue12, localValue22, localValue32, localValue42) ===
  function stateFlag2(localValue12, localValue22, localValue32, localValue42)
    cmgOperation6.mainModelIndex = localValue42
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
  function stateFlag4()
    local localValue12, localValue22
  end
  -- Beginner: Draw a RageUI list selector.
  localValue5(localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4)
  localValue5 = workingValue71
  localValue5 = localValue5()
  localValue6 = RageUI
  localValue6 = localValue6.Separator
  localValue7 = "Secondary props"
  localValue6(localValue7)
  localValue6 = 1
  localValue7 = 4
  workingValue62 = 1
  for workingValue66 = localValue6, localValue7, workingValue62 do
    stateFlag25 = workingValue72
    stateFlag = workingValue66
    stateFlag25 = stateFlag25(stateFlag)
    stateFlag = math
    stateFlag = stateFlag.max
    stateFlag2 = 1
    stateFlag4 = math
    stateFlag4 = stateFlag4.min
    stateFlag5 = #localValue5
    stateFlag6 = math
    stateFlag6 = stateFlag6.floor
    stateFlag7 = tonumber
    stateFlag8 = cmgOperation6
    stateFlag8 = stateFlag8[stateFlag25]
    stateFlag7 = stateFlag7(stateFlag8)
    if not stateFlag7 then
      stateFlag7 = 1
    end
    stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3 = stateFlag6(stateFlag7)
    stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3 = stateFlag4(stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
    stateFlag = stateFlag(stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
    stateFlag2 = cmgOperation6
    stateFlag2[stateFlag25] = stateFlag
    stateFlag2 = RageUI
    stateFlag2 = stateFlag2.List
    stateFlag4 = "Slot "
    stateFlag5 = workingValue66
    stateFlag6 = " model"
    stateFlag4 = stateFlag4 .. stateFlag5 .. stateFlag6
    stateFlag5 = localValue5
    stateFlag6 = stateFlag
    stateFlag7 = "With an active session, changing model swaps that prop in place (offsets kept). Otherwise applies on next spawn."
    stateFlag8 = {}
    stateFlag9 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function stateFlag10(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation5, text6, mathHelper, workingValue63, mathHelper2, number20, workingValue12, workingValue17
      cmgOperation5 = math
      cmgOperation5 = cmgOperation5.max
      text6 = 1
      mathHelper = math
      mathHelper = mathHelper.min
      workingValue63 = localValue5
      workingValue63 = #workingValue63
      mathHelper2 = math
      mathHelper2 = mathHelper2.floor
      number20 = tonumber
      workingValue17 = stateFlag25
      workingValue12 = cmgOperation6
      workingValue12 = workingValue12[workingValue17]
      number20 = number20(workingValue12)
      if not number20 then
        number20 = 1
      end
      mathHelper2, number20, workingValue12, workingValue17 = mathHelper2(number20)
      mathHelper, workingValue63, mathHelper2, number20, workingValue12, workingValue17 = mathHelper(workingValue63, mathHelper2, number20, workingValue12, workingValue17)
      cmgOperation5 = cmgOperation5(text6, mathHelper, workingValue63, mathHelper2, number20, workingValue12, workingValue17)
      mathHelper = stateFlag25
      text6 = cmgOperation6
      text6[mathHelper] = localValue42
      text6 = dataCollection4.active
      if text6 and cmgOperation5 ~= localValue42 then
        text6 = workingValue4
        mathHelper = workingValue66
        text6(mathHelper)
      end
    end

    -- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
    function number3()
      local localValue12, localValue22
    end
    -- Beginner: Draw a RageUI list selector.
    stateFlag2(stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
  end
  if localValue4 then
    localValue6 = RageUI
    localValue6 = localValue6.List
    localValue7 = "Selected entity"
    workingValue62 = dataCollection5
    workingValue66 = cmgOperation6.selectedIndex
    workingValue66 = workingValue66 + 1
    stateFlag25 = "Nudge / rotate applies to this entity."
    stateFlag = {}
    stateFlag2 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function stateFlag4(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation5
      cmgOperation5 = localValue42 - 1
      cmgOperation6.selectedIndex = cmgOperation5
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
    function stateFlag5()
      local localValue12, localValue22
    end
    localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5)
  else
    localValue6 = math
    localValue6 = localValue6.max
    localValue7 = 1
    workingValue62 = math
    workingValue62 = workingValue62.min
    workingValue66 = 5
    stateFlag25 = math
    stateFlag25 = stateFlag25.floor
    stateFlag = tonumber
    stateFlag2 = cmgOperation6.selectedIndex
    stateFlag = stateFlag(stateFlag2)
    if not stateFlag then
      stateFlag = 0
    end
    stateFlag25 = stateFlag25(stateFlag)
    stateFlag25 = stateFlag25 + 1
    workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3 = workingValue62(workingValue66, stateFlag25)
    localValue6 = localValue6(localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
    localValue7 = localValue6 - 1
    cmgOperation6.selectedIndex = localValue7
    localValue7 = RageUI
    localValue7 = localValue7.List
    workingValue62 = "Selected entity"
    workingValue66 = dataCollection6
    stateFlag25 = localValue6
    stateFlag = "Main wreck uses cfg.debrisMainFlatbedAttach. Scrap uses cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
    stateFlag2 = {}
    stateFlag4 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue12, localValue22, localValue32, localValue42) ===
    function stateFlag5(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation5
      cmgOperation5 = localValue42 - 1
      cmgOperation6.selectedIndex = cmgOperation5
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
    function stateFlag6()
      local localValue12, localValue22
    end
    -- Beginner: Draw a RageUI list selector.
    localValue7(workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6)
  end
  localValue6 = {}
  localValue7 = 0.02
  workingValue62 = 0.05
  workingValue66 = 0.1
  stateFlag25 = 0.2
  stateFlag = 0.5
  localValue6[1] = localValue7
  localValue6[2] = workingValue62
  localValue6[3] = workingValue66
  localValue6[4] = stateFlag25
  localValue6[5] = stateFlag
  localValue7 = {}
  workingValue62 = ipairs
  workingValue66 = localValue6
  workingValue62, workingValue66, stateFlag25, stateFlag = workingValue62(workingValue66)
  for stateFlag2, stateFlag4 in workingValue62, workingValue66, stateFlag25, stateFlag do
    stateFlag5 = #localValue7
    stateFlag5 = stateFlag5 + 1
    stateFlag6 = tostring
    stateFlag7 = stateFlag4
    stateFlag6 = stateFlag6(stateFlag7)
    stateFlag7 = "m"
    stateFlag6 = stateFlag6 .. stateFlag7
    localValue7[stateFlag5] = stateFlag6
  end
  workingValue62 = math
  workingValue62 = workingValue62.max
  workingValue66 = 1
  stateFlag25 = math
  stateFlag25 = stateFlag25.min
  stateFlag = #localValue6
  stateFlag2 = math
  stateFlag2 = stateFlag2.floor
  stateFlag4 = cmgOperation6.nudgeStepListIndex
  if not stateFlag4 then
    stateFlag4 = 3
  end
  stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3 = stateFlag2(stateFlag4)
  stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3 = stateFlag25(stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
  workingValue62 = workingValue62(workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3)
  cmgOperation6.nudgeStepListIndex = workingValue62
  workingValue66 = localValue6[workingValue62]
  cmgOperation6.step = workingValue66
  workingValue66 = RageUI
  workingValue66 = workingValue66.List
  stateFlag25 = "Nudge step"
  stateFlag = localValue7
  stateFlag2 = workingValue62
  if localValue4 then
    stateFlag4 = "Distance per nudge (local X/Y or world Z)."
    if stateFlag4 then
      goto continueAtStep245
    end
  end
  stateFlag4 = "Step size applied to ox, oy, oz (flatbed attach space)."
  ::continueAtStep245::
  stateFlag5 = {}
  stateFlag6 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: localValue12, localValue22, localValue32, localValue42) ===
  function stateFlag7(localValue12, localValue22, localValue32, localValue42)
    local cmgOperation5
    cmgOperation6.nudgeStepListIndex = localValue42
    cmgOperation5 = localValue6
    cmgOperation5 = cmgOperation5[localValue42]
    cmgOperation6.step = cmgOperation5
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
  function stateFlag8()
    local localValue12, localValue22
  end
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
  if localValue4 then
    workingValue66 = RageUI
    workingValue66 = workingValue66.Separator
    stateFlag25 = "Nudge (local: +Y forward along wreck heading)"
    workingValue66(stateFlag25)
  else
    workingValue66 = RageUI
    workingValue66 = workingValue66.Separator
    stateFlag25 = "Nudge flatbed attach: +X = ox, +Y = oy, \194\177Z = oz"
    workingValue66(stateFlag25)
  end
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "Local +Y (forward)"
  stateFlag = ""
  stateFlag2 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5, text6, mathHelper
    if localValue32 then
      localValue42 = workingValue8
      cmgOperation5 = 0.0
      text6 = 1.0
      mathHelper = 0.0
      localValue42(cmgOperation5, text6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "Local -Y (back)"
  stateFlag = ""
  stateFlag2 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5, text6, mathHelper
    if localValue32 then
      localValue42 = workingValue8
      cmgOperation5 = 0.0
      text6 = -1.0
      mathHelper = 0.0
      localValue42(cmgOperation5, text6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "Local +X (right)"
  stateFlag = ""
  stateFlag2 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5, text6, mathHelper
    if localValue32 then
      localValue42 = workingValue8
      cmgOperation5 = 1.0
      text6 = 0.0
      mathHelper = 0.0
      localValue42(cmgOperation5, text6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "Local -X (left)"
  stateFlag = ""
  stateFlag2 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5, text6, mathHelper
    if localValue32 then
      localValue42 = workingValue8
      cmgOperation5 = -1.0
      text6 = 0.0
      mathHelper = 0.0
      localValue42(cmgOperation5, text6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "World +Z"
  stateFlag = ""
  stateFlag2 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5, text6, mathHelper
    if localValue32 then
      localValue42 = workingValue8
      cmgOperation5 = 0.0
      text6 = 0.0
      mathHelper = 1.0
      localValue42(cmgOperation5, text6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "World -Z"
  stateFlag = ""
  stateFlag2 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5, text6, mathHelper
    if localValue32 then
      localValue42 = workingValue8
      cmgOperation5 = 0.0
      text6 = 0.0
      mathHelper = -1.0
      localValue42(cmgOperation5, text6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  if localValue4 then
    workingValue66 = RageUI
    workingValue66 = workingValue66.Separator
    stateFlag25 = "Rotate selected (degrees)"
    workingValue66(stateFlag25)
  else
    workingValue66 = RageUI
    workingValue66 = workingValue66.Separator
    stateFlag25 = "Rotate: rz on bed attach (degrees)"
    workingValue66(stateFlag25)
  end
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "Heading +5\194\176"
  stateFlag = ""
  stateFlag2 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5
    if localValue32 then
      localValue42 = workingValue9
      cmgOperation5 = 5.0
      localValue42(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "Heading -5\194\176"
  stateFlag = ""
  stateFlag2 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42, cmgOperation5
    if localValue32 then
      localValue42 = workingValue9
      cmgOperation5 = -5.0
      localValue42(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  workingValue66 = RageUI
  workingValue66 = workingValue66.Button
  stateFlag25 = "Snap main wreck to anchor"
  stateFlag = "Reset main XY to layout anchor."
  stateFlag2 = dataCollection4.active
  if stateFlag2 then
    stateFlag2 = localValue4
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag4(localValue12, localValue22, localValue32)
    local localValue42
    if localValue32 then
      localValue42 = workingValue10
      localValue42()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workingValue66(stateFlag25, stateFlag, stateFlag2, stateFlag4)
  if localValue4 then
    workingValue66 = "Prints cfg.debrisLayoutGroups[mainModel].secondaryOffsets (ground)."
    if workingValue66 then
      goto continueAtStep345
    end
  end
  workingValue66 = "Prints cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach (bed)."
  ::continueAtStep345::
  stateFlag25 = RageUI
  stateFlag25 = stateFlag25.Button
  stateFlag = "Print cfg snippet (F8 console)"
  stateFlag2 = workingValue66
  stateFlag4 = dataCollection4.active

  -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag5(localValue12, localValue22, localValue32)
    local localValue42
    if localValue32 then
      localValue42 = localValue4
      if localValue42 then
        localValue42 = workingValue13
        localValue42()
      else
        localValue42 = workingValue14
        localValue42()
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  stateFlag25(stateFlag, stateFlag2, stateFlag4, stateFlag5)
end
cmgOperation2(text, workingValue15)
cmgOperation2 = Citizen
cmgOperation2 = cmgOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7
  while true do
    localValue1 = dataCollection4.active
    if localValue1 then
      localValue1 = dataCollection4.anchor
      if localValue1 then
        localValue2 = DrawMarker
        localValue3 = 1
        localValue4 = localValue1.x
        localValue5 = localValue1.y
        localValue6 = localValue1.z
        localValue6 = localValue6 - 0.35
        localValue7 = 0.0
        workingValue62 = 0.0
        workingValue66 = 0.0
        stateFlag25 = 0.0
        stateFlag = 0.0
        stateFlag2 = 0.0
        stateFlag4 = 1.2
        stateFlag5 = 1.2
        stateFlag6 = 0.4
        stateFlag7 = 50
        stateFlag8 = 200
        stateFlag9 = 255
        stateFlag10 = 120
        number3 = false
        stateFlag11 = false
        stateFlag12 = 2
        stateFlag13 = false
        stateFlag14 = nil
        stateFlag15 = nil
        stateFlag16 = false
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16)
      end
      localValue2 = workingValue7
      localValue2 = localValue2()
      if 0 ~= localValue2 then
        localValue3 = DoesEntityExist
        localValue4 = localValue2
        localValue3 = localValue3(localValue4)
        if localValue3 then
          localValue3 = GetEntityCoords
          localValue4 = localValue2
          localValue5 = true
          -- Beginner: result below is entityCoords.
          localValue3 = localValue3(localValue4, localValue5)
          localValue4 = DrawMarker
          localValue5 = 1
          localValue6 = localValue3.x
          localValue7 = localValue3.y
          workingValue62 = localValue3.z
          workingValue62 = workingValue62 - 0.2
          workingValue66 = 0.0
          stateFlag25 = 0.0
          stateFlag = 0.0
          stateFlag2 = 0.0
          stateFlag4 = 0.0
          stateFlag5 = 0.0
          stateFlag6 = 0.65
          stateFlag7 = 0.65
          stateFlag8 = 0.35
          stateFlag9 = 255
          stateFlag10 = 180
          number3 = 50
          stateFlag11 = 160
          stateFlag12 = false
          stateFlag13 = false
          stateFlag14 = 2
          stateFlag15 = false
          stateFlag16 = nil
          stateFlag17 = nil
          number7 = false
          localValue4(localValue5, localValue6, localValue7, workingValue62, workingValue66, stateFlag25, stateFlag, stateFlag2, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number3, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number7)
        end
      end
      localValue3 = Wait
      localValue4 = 0
      localValue3(localValue4)
    else
      localValue1 = Wait
      localValue2 = 750
      localValue1(localValue2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation2(text)
cmgOperation2 = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 ~= localValue2 then
    return
  end
  localValue2 = workingValue68
  localValue2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation2(text, workingValue15)
