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
local cmgCall, cmgCall3, eventRegistration, textValue5, numberValue12, numberValue13, numberValue14, numberValue17, numberValue18, numberValue19, workValue11, workValue16, flag3, dataTable, workValue18, workValue19, numberValue, dataTable2, dataTable3, numberValue2, workValue20, workValue21, textValue2, textValue3, workValue22, numberValue4, numberValue5, numberValue6, numberValue8, tableHelper, textValue4, workValue23, numberValue10, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue31, workValue32, cmgCall4, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, workValue43, threadCall, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, workValue51, workValue52, workValue53, workValue54, workValue55, workValue56, workValue57, workValue58, eventRegistration2, textValue7, workValue59, workValue60, threadCall2, textValue8, workValue61, numberValue15, textValue9, numberValue16, workValue64, workValue65, cmgCall6, dataTable4, dataTable5, dataTable6, dataTable7, textValue10, textValue11, textValue12, textValue13, workValue67, workValue68, workValue69, workValue70, workValue71, workValue72, workValue73, workValue74, workValue75, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue13, workValue14, cmgCall2, textValue, workValue15
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall3 = "cfg/cfg_mechanic"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.loadModule
eventRegistration = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgCall3 = cmgCall3(eventRegistration)
eventRegistration = RegisterNetEvent
textValue5 = "579a73060c"
-- Beginner: this function handles network event "579a73060c".

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: none) ===
function numberValue12()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getModelGender
  arg1 = arg1()
  if "male" == arg1 then
    arg1 = CMG
    arg1 = arg1.loadCustomisationPreset
    arg2 = "MechanicMale"
    arg1(arg2)
  else
    arg1 = CMG
    arg1 = arg1.loadCustomisationPreset
    arg2 = "MechanicFemale"
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "579a73060c".
eventRegistration(textValue5, numberValue12)
eventRegistration = cmgCall.impoundDropoff
if not eventRegistration then
  eventRegistration = vector3
  textValue5 = 389.40829467773
  numberValue12 = -1622.1922607422
  numberValue13 = 29.28772354126
  eventRegistration = eventRegistration(textValue5, numberValue12, numberValue13)
end
textValue5 = 0.78
numberValue12 = 920.0
numberValue13 = 14.0
numberValue14 = 5.0
numberValue17 = 16.0
numberValue18 = 5.5
numberValue19 = 34.0
workValue11 = cmgCall.mechanicFlatbedModelHashes
workValue16 = cmgCall.mechanicTowTruckModelHashes
flag3 = false
dataTable = {}
workValue18 = nil
workValue19 = nil
numberValue = 0
dataTable2 = {}
dataTable3 = {}
numberValue2 = 0
workValue20 = nil
workValue21 = nil
textValue2 = "anim@heists@box_carry@"
textValue3 = "idle"
workValue22 = nil
numberValue4 = 0
numberValue5 = 1302435108
numberValue6 = 0
numberValue8 = 242383520
tableHelper = "timetable@gardener@filling_can"
textValue4 = "gar_ig_5_filling_can"
workValue23 = nil
numberValue10 = 0

-- === HELPER FUNCTION (decompiler name: workValue24; parameters: none) ===
function workValue24()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = StopAnimTask
    arg3 = arg1
    arg4 = tableHelper
    arg5 = textValue4
    arg6 = 1.0
    arg2(arg3, arg4, arg5, arg6)
    arg2 = ClearPedSecondaryTask
    arg3 = arg1
    arg2(arg3)
  end
  arg2 = numberValue6
  if 0 ~= arg2 then
    arg2 = DoesEntityExist
    arg3 = numberValue6
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DetachEntity
      arg3 = numberValue6
      arg4 = true
      arg5 = true
      arg2(arg3, arg4, arg5)
      arg2 = SetEntityAsMissionEntity
      arg3 = numberValue6
      arg4 = true
      arg5 = true
      arg2(arg3, arg4, arg5)
      arg2 = DeleteObject
      arg3 = numberValue6
      arg2(arg3)
    end
  end
  arg2 = 0
  numberValue6 = arg2
  arg2 = nil
  workValue23 = arg2
  arg2 = 0
  numberValue10 = arg2
end

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: arg1) ===
function workValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11
  arg2 = tonumber
  arg3 = arg1
  arg2 = arg2(arg3)
  arg1 = arg2
  if arg1 then
    arg2 = NetworkDoesNetworkIdExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_13
    end
  end
  return
  ::flow_label_13::
  arg2 = NetworkGetEntityFromNetworkId
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  if 0 ~= arg2 then
    arg4 = DoesEntityExist
    arg5 = arg2
    arg4 = arg4(arg5)
    if arg4 and 0 ~= arg3 then
      goto flow_label_29
    end
  end
  return
  ::flow_label_29::
  arg4 = workValue24
  arg4()
  arg4 = CMG
  arg4 = arg4.loadModel
  arg5 = numberValue8
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg4(arg5)
  arg4 = GetEntityCoords
  arg5 = arg3
  arg6 = true
  -- Beginner: result below is entityCoords.
  arg4 = arg4(arg5, arg6)
  arg5 = CreateObject
  arg6 = numberValue8
  arg7 = arg4.x
  workValue62 = arg4.y
  workValue66 = arg4.z
  workValue66 = workValue66 + 0.2
  flag25 = false
  flag = false
  flag2 = false
  -- Beginner: result below is objectEntity.
  arg5 = arg5(arg6, arg7, workValue62, workValue66, flag25, flag, flag2)
  if 0 ~= arg5 then
    arg6 = DoesEntityExist
    arg7 = arg5
    arg6 = arg6(arg7)
    if arg6 then
      arg6 = AttachEntityToEntity
      arg7 = arg5
      workValue62 = arg3
      workValue66 = GetPedBoneIndex
      flag25 = arg3
      flag = 60309
      workValue66 = workValue66(flag25, flag)
      flag25 = 0.12
      flag = 0.02
      flag2 = -0.02
      flag4 = 80.0
      flag5 = 170.0
      flag6 = 90.0
      flag7 = true
      flag8 = true
      flag9 = false
      flag10 = true
      numberValue3 = 1
      flag11 = true
      -- Beginner: Attach one entity to another entity.
      arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11)
      numberValue6 = arg5
    end
  end
  arg6 = SetModelAsNoLongerNeeded
  arg7 = numberValue8
  arg6(arg7)
  workValue23 = arg1
  arg6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg6 = arg6()
  arg6 = arg6 + 6500
  numberValue10 = arg6
end

-- === HELPER FUNCTION (decompiler name: workValue26; parameters: none) ===
function workValue26()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = StopAnimTask
    arg3 = arg1
    arg4 = textValue2
    arg5 = textValue3
    arg6 = 1.0
    arg2(arg3, arg4, arg5, arg6)
    arg2 = ClearPedSecondaryTask
    arg3 = arg1
    arg2(arg3)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
function workValue27()
  local arg1, arg2, arg3, arg4
  arg1 = numberValue4
  if 0 ~= arg1 then
    arg1 = workValue26
    arg1()
    arg1 = DoesEntityExist
    arg2 = numberValue4
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = DetachEntity
      arg2 = numberValue4
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = SetEntityAsMissionEntity
      arg2 = numberValue4
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = DeleteObject
      arg2 = numberValue4
      arg1(arg2)
    end
    arg1 = 0
    numberValue4 = arg1
  end
end

-- === HELPER FUNCTION (decompiler name: workValue28; parameters: arg1) ===
function workValue28(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11
  if arg1 then
    arg2 = tonumber
    arg3 = arg1.stage
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_9
    end
  end
  arg2 = 1
  ::flow_label_9::
  if arg1 then
    arg3 = arg1.type
    if "parts_run" == arg3 and (2 == arg2 or 4 == arg2) then
      goto flow_label_21
    end
  end
  arg3 = workValue27
  arg3()
  return
  ::flow_label_21::
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  if 0 == arg3 then
    arg4 = workValue27
    arg4()
    return
  end
  arg4 = numberValue4
  if 0 ~= arg4 then
    arg4 = DoesEntityExist
    arg5 = numberValue4
    arg4 = arg4(arg5)
    if arg4 then
      goto flow_label_87
    end
  end
  arg4 = CMG
  arg4 = arg4.loadModel
  arg5 = numberValue5
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg4(arg5)
  arg4 = GetEntityCoords
  arg5 = arg3
  arg6 = true
  -- Beginner: result below is entityCoords.
  arg4 = arg4(arg5, arg6)
  arg5 = CreateObject
  arg6 = numberValue5
  arg7 = arg4.x
  workValue62 = arg4.y
  workValue66 = arg4.z
  workValue66 = workValue66 + 0.2
  flag25 = false
  flag = false
  flag2 = false
  -- Beginner: result below is objectEntity.
  arg5 = arg5(arg6, arg7, workValue62, workValue66, flag25, flag, flag2)
  if 0 ~= arg5 then
    arg6 = DoesEntityExist
    arg7 = arg5
    arg6 = arg6(arg7)
    if arg6 then
      arg6 = AttachEntityToEntity
      arg7 = arg5
      workValue62 = arg3
      workValue66 = GetPedBoneIndex
      flag25 = arg3
      flag = 60309
      workValue66 = workValue66(flag25, flag)
      flag25 = 0.025
      flag = 0.08
      flag2 = 0.255
      flag4 = -145.0
      flag5 = 290.0
      flag6 = 0.0
      flag7 = true
      flag8 = true
      flag9 = false
      flag10 = true
      numberValue3 = 1
      flag11 = true
      -- Beginner: Attach one entity to another entity.
      arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11)
      numberValue4 = arg5
    end
  end
  arg6 = SetModelAsNoLongerNeeded
  arg7 = numberValue5
  arg6(arg7)
  ::flow_label_87::
  arg4 = GetVehiclePedIsIn
  arg5 = arg3
  arg6 = false
  -- Beginner: result below is currentVehicle.
  arg4 = arg4(arg5, arg6)
  if 0 ~= arg4 then
    return
  end
  arg4 = CMG
  arg4 = arg4.loadAnimDict
  arg5 = textValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  arg4(arg5)
  arg4 = IsEntityPlayingAnim
  arg5 = arg3
  arg6 = textValue2
  arg7 = textValue3
  workValue62 = 3
  arg4 = arg4(arg5, arg6, arg7, workValue62)
  if not arg4 then
    arg4 = TaskPlayAnim
    arg5 = arg3
    arg6 = textValue2
    arg7 = textValue3
    workValue62 = 8.0
    workValue66 = 8.0
    flag25 = -1
    flag = 49
    flag2 = 0.0
    flag4 = false
    flag5 = false
    flag6 = false
    -- Beginner: Play an animation on a ped.
    arg4(arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue29; parameters: none) ===
function workValue29()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = StopAnimTask
    arg3 = arg1
    arg4 = textValue2
    arg5 = textValue3
    arg6 = 1.0
    arg2(arg3, arg4, arg5, arg6)
    arg2 = ClearPedSecondaryTask
    arg3 = arg1
    arg2(arg3)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue30; parameters: none) ===
function workValue30()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = numberValue2
    if 0 ~= arg2 then
      arg2 = DoesEntityExist
      arg3 = numberValue2
      arg2 = arg2(arg3)
      if arg2 then
        goto flow_label_15
      end
    end
  end
  return
  ::flow_label_15::
  arg2 = GetVehiclePedIsIn
  arg3 = arg1
  arg4 = false
  -- Beginner: result below is currentVehicle.
  arg2 = arg2(arg3, arg4)
  if 0 ~= arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  arg3 = textValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(arg3)
  arg2 = IsEntityPlayingAnim
  arg3 = arg1
  arg4 = textValue2
  arg5 = textValue3
  arg6 = 3
  arg2 = arg2(arg3, arg4, arg5, arg6)
  if not arg2 then
    arg2 = TaskPlayAnim
    arg3 = arg1
    arg4 = textValue2
    arg5 = textValue3
    arg6 = 8.0
    arg7 = 8.0
    workValue62 = -1
    workValue66 = 49
    flag25 = 0.0
    flag = false
    flag2 = false
    flag4 = false
    -- Beginner: Play an animation on a ped.
    arg2(arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue31; parameters: arg1) ===
function workValue31(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = BeginTextCommandDisplayHelp
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringPlayerName
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandDisplayHelp
  arg3 = 0
  arg4 = false
  arg5 = true
  arg6 = -1
  arg2(arg3, arg4, arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue32; parameters: none) ===
function workValue32()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25
  arg1 = workValue29
  arg1()
  arg1 = numberValue2
  if 0 ~= arg1 then
    arg1 = DoesEntityExist
    arg2 = numberValue2
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = DetachEntity
      arg2 = numberValue2
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = SetEntityAsMissionEntity
      arg2 = numberValue2
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = DeleteObject
      arg2 = numberValue2
      arg1(arg2)
    end
  end
  arg1 = 0
  numberValue2 = arg1
  arg1 = nil
  workValue21 = arg1
  arg1 = numberValue
  if 0 ~= arg1 then
    arg1 = DoesEntityExist
    arg2 = numberValue
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = DetachEntity
      arg2 = numberValue
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = SetEntityAsMissionEntity
      arg2 = numberValue
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = DeleteObject
      arg2 = numberValue
      arg1(arg2)
    end
  end
  arg1 = 0
  numberValue = arg1
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    if arg6 and 0 ~= arg6 then
      arg7 = DoesEntityExist
      workValue62 = arg6
      arg7 = arg7(workValue62)
      if arg7 then
        arg7 = SetEntityAsMissionEntity
        workValue62 = arg6
        workValue66 = true
        flag25 = true
        arg7(workValue62, workValue66, flag25)
        arg7 = DeleteObject
        workValue62 = arg6
        arg7(workValue62)
      end
    end
  end
  arg1 = {}
  dataTable2 = arg1
  arg1 = pairs
  arg2 = dataTable3
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    if arg6 and 0 ~= arg6 then
      arg7 = DoesEntityExist
      workValue62 = arg6
      arg7 = arg7(workValue62)
      if arg7 then
        arg7 = DetachEntity
        workValue62 = arg6
        workValue66 = true
        flag25 = true
        arg7(workValue62, workValue66, flag25)
        arg7 = SetEntityAsMissionEntity
        workValue62 = arg6
        workValue66 = true
        flag25 = true
        arg7(workValue62, workValue66, flag25)
        arg7 = DeleteObject
        workValue62 = arg6
        arg7(workValue62)
      end
    end
  end
  arg1 = {}
  dataTable3 = arg1
  arg1 = nil
  workValue20 = arg1
end
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue33; parameters: none) ===
function workValue33()
  local arg1, arg2
  arg1 = numberValue2
  arg1 = DoesEntityExist
  arg2 = numberValue2
  arg1 = 0 ~= arg1 and arg1
  return arg1
end
cmgCall4.isMechanicDebrisCarryingScrap = workValue33

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2) ===
function cmgCall4(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = arg1.secondaryCleared
  arg4 = type
  arg5 = arg3
  arg4 = arg4(arg5)
  if "table" ~= arg4 then
    arg4 = false
    return arg4
  end
  arg4 = arg3[arg2]
  if not arg4 then
    arg4 = tostring
    arg5 = arg2
    arg4 = arg4(arg5)
    arg4 = arg3[arg4]
  end
  arg5 = true == arg4
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue33; parameters: arg1, arg2) ===
function workValue33(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25
  arg3 = type
  arg4 = arg1.secondary
  arg3 = arg3(arg4)
  if "table" ~= arg3 then
    arg3 = nil
    return arg3
  end
  arg3 = ipairs
  arg4 = arg1.secondary
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, workValue62 in arg3, arg4, arg5, arg6 do
    workValue66 = tonumber
    flag25 = workValue62.slot
    workValue66 = workValue66(flag25)
    if workValue66 == arg2 then
      workValue66 = type
      flag25 = workValue62.model
      workValue66 = workValue66(flag25)
      if "string" == workValue66 then
        workValue66 = workValue62.model
        return workValue66
      end
    end
  end
  arg3 = nil
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue34; parameters: arg1) ===
function workValue34(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag
  arg2 = type
  arg3 = arg1.secondary
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = arg1.secondary
    arg2 = #arg2
    if not (arg2 < 1) then
      goto flow_label_12
    end
  end
  arg2 = false
  return arg2
  ::flow_label_12::
  arg2 = ipairs
  arg3 = arg1.secondary
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    workValue62 = tonumber
    workValue66 = arg7.slot
    workValue62 = workValue62(workValue66)
    if workValue62 then
      workValue66 = cmgCall4
      flag25 = arg1
      flag = workValue62
      workValue66 = workValue66(flag25, flag)
      if not workValue66 then
        workValue66 = false
        return workValue66
      end
    end
  end
  arg2 = true
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue35; parameters: arg1, arg2, arg3) ===
function workValue35(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue62, workValue66
  arg4 = math
  arg4 = arg4.rad
  arg5 = arg3 + 0.0
  arg4 = arg4(arg5)
  arg5 = math
  arg5 = arg5.cos
  arg6 = arg4
  arg5 = arg5(arg6)
  arg6 = math
  arg6 = arg6.sin
  arg7 = arg4
  arg6 = arg6(arg7)
  arg7 = arg1 * arg5
  workValue62 = arg2 * arg6
  arg7 = arg7 - workValue62
  workValue62 = arg1 * arg6
  workValue66 = arg2 * arg5
  workValue62 = workValue62 + workValue66
  return arg7, workValue62
end

-- === HELPER FUNCTION (decompiler name: workValue36; parameters: arg1, arg2, arg3) ===
function workValue36(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue62, workValue66, flag25
  arg4 = cmgCall.debrisLayoutGroups
  arg5 = type
  arg6 = arg4
  arg5 = arg5(arg6)
  if "table" == arg5 then
    arg5 = arg2 or arg5
    if not arg2 then
      arg5 = ""
    end
    arg5 = arg4[arg5]
    if arg5 then
      goto flow_label_14
    end
  end
  arg5 = nil
  ::flow_label_14::
  arg6 = type
  arg7 = arg5
  arg6 = arg6(arg7)
  if "table" == arg6 then
    arg6 = arg5.secondaryOffsets
    if arg6 then
      goto flow_label_23
    end
  end
  arg6 = nil
  ::flow_label_23::
  arg7 = type
  workValue62 = arg6
  arg7 = arg7(workValue62)
  if "table" == arg7 then
    arg7 = type
    workValue62 = arg1
    arg7 = arg7(workValue62)
    if "string" == arg7 and "" ~= arg1 then
      arg7 = arg6[arg1]
      workValue62 = type
      workValue66 = arg7
      workValue62 = workValue62(workValue66)
      if "table" == workValue62 then
        workValue62 = {}
        workValue66 = tonumber
        flag25 = arg7.dx
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.dx = workValue66
        workValue66 = tonumber
        flag25 = arg7.dy
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.dy = workValue66
        workValue66 = tonumber
        flag25 = arg7.dz
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.dz = workValue66
        workValue66 = tonumber
        flag25 = arg7.h
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.h = workValue66
        return workValue62
      end
    end
  end
  arg7 = {}
  arg7.dx = 0.0
  workValue62 = arg3 * 0.35
  workValue62 = 2.0 + workValue62
  arg7.dy = workValue62
  arg7.dz = 0.0
  arg7.h = 0.0
  return arg7
end

-- === HELPER FUNCTION (decompiler name: workValue37; parameters: arg1, arg2, arg3) ===
function workValue37(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue62, workValue66, flag25
  arg4 = cmgCall.debrisLayoutGroups
  arg5 = type
  arg6 = arg4
  arg5 = arg5(arg6)
  if "table" == arg5 then
    arg5 = arg2 or arg5
    if not arg2 then
      arg5 = ""
    end
    arg5 = arg4[arg5]
    if arg5 then
      goto flow_label_14
    end
  end
  arg5 = nil
  ::flow_label_14::
  arg6 = type
  arg7 = arg5
  arg6 = arg6(arg7)
  if "table" == arg6 then
    arg6 = arg5.secondaryFlatbedAttach
    if arg6 then
      goto flow_label_23
    end
  end
  arg6 = nil
  ::flow_label_23::
  arg7 = type
  workValue62 = arg6
  arg7 = arg7(workValue62)
  if "table" == arg7 then
    arg7 = type
    workValue62 = arg1
    arg7 = arg7(workValue62)
    if "string" == arg7 and "" ~= arg1 then
      arg7 = arg6[arg1]
      workValue62 = type
      workValue66 = arg7
      workValue62 = workValue62(workValue66)
      if "table" == workValue62 then
        workValue62 = {}
        workValue66 = tonumber
        flag25 = arg7.ox
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.ox = workValue66
        workValue66 = tonumber
        flag25 = arg7.oy
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.oy = workValue66
        workValue66 = tonumber
        flag25 = arg7.oz
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.55
        end
        workValue62.oz = workValue66
        workValue66 = tonumber
        flag25 = arg7.rx
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.rx = workValue66
        workValue66 = tonumber
        flag25 = arg7.ry
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.ry = workValue66
        workValue66 = tonumber
        flag25 = arg7.rz
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0.0
        end
        workValue62.rz = workValue66
        return workValue62
      end
    end
  end
  arg7 = {}
  arg7.ox = 0.0
  workValue62 = arg3 * 0.2
  workValue66 = -3.0
  workValue62 = workValue66 - workValue62
  arg7.oy = workValue62
  arg7.oz = 0.55
  arg7.rx = 0.0
  arg7.ry = 0.0
  arg7.rz = 0.0
  return arg7
end

-- === HELPER FUNCTION (decompiler name: workValue38; parameters: arg1) ===
function workValue38(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = cmgCall.debrisMainFlatbedAttach
  if not arg2 then
    arg2 = {}
  end
  arg3 = {}
  arg4 = tonumber
  arg5 = arg2.ox
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = 0.0
  end
  arg3.ox = arg4
  arg4 = tonumber
  arg5 = arg2.oy
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = 0.0
  end
  arg3.oy = arg4
  arg4 = tonumber
  arg5 = arg2.oz
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = 0.0
  end
  arg3.oz = arg4
  arg4 = tonumber
  arg5 = arg2.rx
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = 0.0
  end
  arg3.rx = arg4
  arg4 = tonumber
  arg5 = arg2.ry
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = 0.0
  end
  arg3.ry = arg4
  arg4 = tonumber
  arg5 = arg2.rz
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = 0.0
  end
  arg3.rz = arg4
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue39; parameters: arg1, arg2) ===
function workValue39(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18
  if 0 ~= arg1 then
    arg3 = DoesEntityExist
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = numberValue2
      if 0 ~= arg3 then
        arg3 = DoesEntityExist
        arg4 = numberValue2
        arg3 = arg3(arg4)
        if arg3 then
          goto flow_label_18
        end
      end
    end
  end
  arg3 = false
  return arg3
  ::flow_label_18::
  arg3 = tonumber
  arg4 = cmgCall.debrisSecondaryFlatbedBone
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = tonumber
    arg4 = cmgCall.debrisMainFlatbedBone
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = 20
    end
  end
  arg4 = workValue19
  if arg4 then
    arg5 = workValue33
    arg6 = arg4
    arg7 = arg2
    arg5 = arg5(arg6, arg7)
    if arg5 then
      goto flow_label_39
    end
  end
  arg5 = nil
  ::flow_label_39::
  if arg4 then
    arg6 = arg4.mainModel
    if arg6 then
      goto flow_label_45
    end
  end
  arg6 = nil
  ::flow_label_45::
  arg7 = workValue37
  workValue62 = arg5
  workValue66 = arg6
  flag25 = arg2
  arg7 = arg7(workValue62, workValue66, flag25)
  workValue62 = DetachEntity
  workValue66 = numberValue2
  flag25 = true
  flag = true
  workValue62(workValue66, flag25, flag)
  workValue62 = FreezeEntityPosition
  workValue66 = numberValue2
  flag25 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  workValue62(workValue66, flag25)
  workValue62 = tonumber
  workValue66 = arg7.ox
  workValue62 = workValue62(workValue66)
  if not workValue62 then
    workValue62 = 0.0
  end
  workValue66 = tonumber
  flag25 = arg7.oy
  workValue66 = workValue66(flag25)
  if not workValue66 then
    workValue66 = 0.0
  end
  flag25 = tonumber
  flag = arg7.oz
  flag25 = flag25(flag)
  if not flag25 then
    flag25 = 0.55
  end
  flag = tonumber
  flag2 = arg7.rx
  flag = flag(flag2)
  if not flag then
    flag = 0.0
  end
  flag2 = tonumber
  flag4 = arg7.ry
  flag2 = flag2(flag4)
  if not flag2 then
    flag2 = 0.0
  end
  flag4 = tonumber
  flag5 = arg7.rz
  flag4 = flag4(flag5)
  if not flag4 then
    flag4 = 0.0
  end
  flag5 = AttachEntityToEntity
  flag6 = numberValue2
  flag7 = arg1
  flag8 = arg3
  flag9 = workValue62
  flag10 = workValue66
  numberValue3 = flag25
  flag11 = flag
  flag12 = flag2
  flag13 = flag4
  flag14 = false
  flag15 = false
  flag16 = false
  flag17 = false
  numberValue7 = 2
  flag18 = true
  -- Beginner: Attach one entity to another entity.
  flag5(flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18)
  flag5 = SetEntityCollision
  flag6 = numberValue2
  flag7 = true
  flag8 = true
  flag5(flag6, flag7, flag8)
  flag5 = dataTable3
  flag6 = numberValue2
  flag5[arg2] = flag6
  flag5 = 0
  numberValue2 = flag5
  flag5 = nil
  workValue21 = flag5
  flag5 = workValue29
  flag5()
  flag5 = true
  return flag5
end

-- === HELPER FUNCTION (decompiler name: workValue40; parameters: arg1) ===
function workValue40(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15
  arg2 = tonumber
  arg3 = arg1.carryingSecondarySlot
  arg2 = arg2(arg3)
  if not arg2 then
    arg3 = workValue29
    arg3()
    arg3 = numberValue2
    if 0 ~= arg3 then
      arg3 = DoesEntityExist
      arg4 = numberValue2
      arg3 = arg3(arg4)
      if arg3 then
        arg3 = DetachEntity
        arg4 = numberValue2
        arg5 = true
        arg6 = true
        arg3(arg4, arg5, arg6)
        arg3 = SetEntityAsMissionEntity
        arg4 = numberValue2
        arg5 = true
        arg6 = true
        arg3(arg4, arg5, arg6)
        arg3 = DeleteObject
        arg4 = numberValue2
        arg3(arg4)
      end
    end
    arg3 = 0
    numberValue2 = arg3
    arg3 = nil
    workValue21 = arg3
    return
  end
  arg3 = workValue33
  arg4 = arg1
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  if not arg3 then
    return
  end
  arg4 = workValue21
  if arg4 == arg2 then
    arg4 = numberValue2
    if 0 ~= arg4 then
      arg4 = DoesEntityExist
      arg5 = numberValue2
      arg4 = arg4(arg5)
      if arg4 then
        return
      end
    end
  end
  arg4 = dataTable2
  arg4 = arg4[arg2]
  if arg4 and 0 ~= arg4 then
    arg5 = DoesEntityExist
    arg6 = arg4
    arg5 = arg5(arg6)
    if arg5 then
      arg5 = SetEntityAsMissionEntity
      arg6 = arg4
      arg7 = true
      workValue62 = true
      arg5(arg6, arg7, workValue62)
      arg5 = DeleteObject
      arg6 = arg4
      arg5(arg6)
    end
  end
  arg5 = dataTable2
  arg5[arg2] = nil
  arg5 = numberValue2
  if 0 ~= arg5 then
    arg5 = DoesEntityExist
    arg6 = numberValue2
    arg5 = arg5(arg6)
    if arg5 then
      arg5 = workValue29
      arg5()
      arg5 = DetachEntity
      arg6 = numberValue2
      arg7 = true
      workValue62 = true
      arg5(arg6, arg7, workValue62)
      arg5 = SetEntityAsMissionEntity
      arg6 = numberValue2
      arg7 = true
      workValue62 = true
      arg5(arg6, arg7, workValue62)
      arg5 = DeleteObject
      arg6 = numberValue2
      arg5(arg6)
    end
  end
  arg5 = 0
  numberValue2 = arg5
  arg5 = GetHashKey
  arg6 = arg3
  -- Beginner: result below is hash.
  arg5 = arg5(arg6)
  if not arg5 or 0 == arg5 then
    return
  end
  arg6 = CMG
  arg6 = arg6.loadModel
  arg7 = arg5
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg6(arg7)
  arg6 = CMG
  arg6 = arg6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = GetEntityCoords
  workValue62 = arg6
  workValue66 = true
  -- Beginner: result below is entityCoords.
  arg7 = arg7(workValue62, workValue66)
  workValue62 = CreateObject
  workValue66 = arg5
  flag25 = arg7.x
  flag = arg7.y
  flag2 = arg7.z
  flag2 = flag2 + 0.2
  flag4 = false
  flag5 = false
  flag6 = false
  -- Beginner: result below is objectEntity.
  workValue62 = workValue62(workValue66, flag25, flag, flag2, flag4, flag5, flag6)
  if workValue62 and 0 ~= workValue62 then
    workValue66 = DoesEntityExist
    flag25 = workValue62
    workValue66 = workValue66(flag25)
    if workValue66 then
      workValue66 = GetPedBoneIndex
      flag25 = arg6
      flag = 60309
      workValue66 = workValue66(flag25, flag)
      flag25 = AttachEntityToEntity
      flag = workValue62
      flag2 = arg6
      flag4 = workValue66
      flag5 = 0.025
      flag6 = 0.08
      flag7 = 0.255
      flag8 = -145.0
      flag9 = 290.0
      flag10 = 0.0
      numberValue3 = true
      flag11 = true
      flag12 = false
      flag13 = true
      flag14 = 1
      flag15 = true
      -- Beginner: Attach one entity to another entity.
      flag25(flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15)
      numberValue2 = workValue62
      workValue21 = arg2
      flag25 = workValue30
      flag25()
    end
  end
  workValue66 = SetModelAsNoLongerNeeded
  flag25 = arg5
  workValue66(flag25)
end

-- === HELPER FUNCTION (decompiler name: workValue41; parameters: none) ===
function workValue41()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25
  arg1 = numberValue
  if 0 ~= arg1 then
    arg1 = DoesEntityExist
    arg2 = numberValue
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = DetachEntity
      arg2 = numberValue
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = SetEntityAsMissionEntity
      arg2 = numberValue
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = DeleteObject
      arg2 = numberValue
      arg1(arg2)
    end
  end
  arg1 = 0
  numberValue = arg1
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    if arg6 and 0 ~= arg6 then
      arg7 = DoesEntityExist
      workValue62 = arg6
      arg7 = arg7(workValue62)
      if arg7 then
        arg7 = SetEntityAsMissionEntity
        workValue62 = arg6
        workValue66 = true
        flag25 = true
        arg7(workValue62, workValue66, flag25)
        arg7 = DeleteObject
        workValue62 = arg6
        arg7(workValue62)
      end
    end
  end
  arg1 = {}
  dataTable2 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue42; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue42(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20
  arg6 = workValue41
  arg6()
  arg6 = arg1.mainModel
  arg7 = type
  workValue62 = arg6
  arg7 = arg7(workValue62)
  if "string" == arg7 and "" ~= arg6 then
    arg7 = GetHashKey
    workValue62 = arg6
    -- Beginner: result below is hash.
    arg7 = arg7(workValue62)
    if arg7 and 0 ~= arg7 then
      workValue62 = CMG
      workValue62 = workValue62.loadModel
      workValue66 = arg7
      -- Beginner: Request/load a GTA model before spawning or applying it.
      workValue62(workValue66)
      workValue62 = CreateObject
      workValue66 = arg7
      flag25 = arg2
      flag = arg3
      flag2 = arg4 + 0.05
      flag4 = false
      flag5 = false
      flag6 = false
      -- Beginner: result below is objectEntity.
      workValue62 = workValue62(workValue66, flag25, flag, flag2, flag4, flag5, flag6)
      if workValue62 and 0 ~= workValue62 then
        workValue66 = DoesEntityExist
        flag25 = workValue62
        workValue66 = workValue66(flag25)
        if workValue66 then
          workValue66 = SetEntityHeading
          flag25 = workValue62
          flag = arg5 + 0.0
          -- Beginner: Change the direction an entity is facing.
          workValue66(flag25, flag)
          workValue66 = PlaceObjectOnGroundProperly
          flag25 = workValue62
          workValue66(flag25)
          workValue66 = FreezeEntityPosition
          flag25 = workValue62
          flag = true
          -- Beginner: Freeze or unfreeze an entity in place.
          workValue66(flag25, flag)
          workValue66 = SetEntityCollision
          flag25 = workValue62
          flag = true
          flag2 = true
          workValue66(flag25, flag, flag2)
          numberValue = workValue62
        end
      end
      workValue66 = SetModelAsNoLongerNeeded
      flag25 = arg7
      workValue66(flag25)
    end
  end
  arg7 = type
  workValue62 = arg1.secondary
  arg7 = arg7(workValue62)
  if "table" == arg7 then
    arg7 = ipairs
    workValue62 = arg1.secondary
    arg7, workValue62, workValue66, flag25 = arg7(workValue62)
    for flag, flag2 in arg7, workValue62, workValue66, flag25 do
      flag4 = tonumber
      flag5 = flag2.slot
      flag4 = flag4(flag5)
      if flag4 then
        flag5 = cmgCall4
        flag6 = arg1
        flag7 = flag4
        flag5 = flag5(flag6, flag7)
        if not flag5 then
          flag5 = tonumber
          flag6 = arg1.carryingSecondarySlot
          flag5 = flag5(flag6)
          if flag5 ~= flag4 then
            flag5 = flag2.model
            flag6 = type
            flag7 = flag5
            flag6 = flag6(flag7)
            if "string" == flag6 and "" ~= flag5 then
              flag6 = tonumber
              flag7 = flag2.dx
              flag6 = flag6(flag7)
              if not flag6 then
                flag6 = 0.0
              end
              flag7 = tonumber
              flag8 = flag2.dy
              flag7 = flag7(flag8)
              if not flag7 then
                flag7 = 0.0
              end
              flag8 = tonumber
              flag9 = flag2.dz
              flag8 = flag8(flag9)
              if not flag8 then
                flag8 = 0.0
              end
              flag9 = workValue35
              flag10 = flag6
              numberValue3 = flag7
              flag11 = arg5
              flag9, flag10 = flag9(flag10, numberValue3, flag11)
              numberValue3 = GetHashKey
              flag11 = flag5
              -- Beginner: result below is hash.
              numberValue3 = numberValue3(flag11)
              if numberValue3 and 0 ~= numberValue3 then
                flag11 = CMG
                flag11 = flag11.loadModel
                flag12 = numberValue3
                -- Beginner: Request/load a GTA model before spawning or applying it.
                flag11(flag12)
                flag11 = arg2 + flag9
                flag12 = arg3 + flag10
                flag13 = arg4 + flag8
                flag14 = CreateObject
                flag15 = numberValue3
                flag16 = flag11
                flag17 = flag12
                numberValue7 = flag13
                flag18 = false
                flag19 = false
                flag20 = false
                -- Beginner: result below is objectEntity.
                flag14 = flag14(flag15, flag16, flag17, numberValue7, flag18, flag19, flag20)
                if flag14 and 0 ~= flag14 then
                  flag15 = DoesEntityExist
                  flag16 = flag14
                  flag15 = flag15(flag16)
                  if flag15 then
                    flag15 = SetEntityHeading
                    flag16 = flag14
                    flag17 = tonumber
                    numberValue7 = flag2.h
                    flag17 = flag17(numberValue7)
                    if not flag17 then
                      flag17 = 0.0
                    end
                    flag17 = flag17 + arg5
                    -- Beginner: Change the direction an entity is facing.
                    flag15(flag16, flag17)
                    flag15 = PlaceObjectOnGroundProperly
                    flag16 = flag14
                    flag15(flag16)
                    flag15 = FreezeEntityPosition
                    flag16 = flag14
                    flag17 = true
                    -- Beginner: Freeze or unfreeze an entity in place.
                    flag15(flag16, flag17)
                    flag15 = SetEntityCollision
                    flag16 = flag14
                    flag17 = true
                    numberValue7 = true
                    flag15(flag16, flag17, numberValue7)
                    flag15 = dataTable2
                    flag15[flag4] = flag14
                  end
                end
                flag15 = SetModelAsNoLongerNeeded
                flag16 = numberValue3
                flag15(flag16)
              end
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue43; parameters: none) ===
function workValue43()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15
  arg1 = workValue19
  arg2 = tonumber
  arg3 = cmgCall.debrisPropSpawnNearMeters
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = 95.0
  end
  arg3 = 32.0
  if arg1 then
    arg4 = arg1.type
    if "debris" == arg4 then
      arg4 = type
      arg5 = arg1.anchor
      arg4 = arg4(arg5)
      if "table" == arg4 then
        arg4 = type
        arg5 = arg1.anchor
        arg5 = arg5.x
        arg4 = arg4(arg5)
        if "number" == arg4 then
          goto flow_label_31
        end
      end
    end
  end
  arg4 = workValue20
  if arg4 then
    arg4 = workValue32
    arg4()
  end
  return
  ::flow_label_31::
  arg4 = workValue40
  arg5 = arg1
  arg4(arg5)
  arg4 = arg1.mainSecured
  if arg4 then
    return
  end
  arg4 = arg1.anchor
  arg4 = arg4.x
  arg4 = arg4 + 0.0
  arg5 = arg1.anchor
  arg5 = arg5.y
  arg5 = arg5 + 0.0
  arg6 = arg1.anchor
  arg6 = arg6.z
  arg6 = arg6 + 0.0
  arg7 = tostring
  workValue62 = arg1.contractId
  if not workValue62 then
    workValue62 = ""
  end
  arg7 = arg7(workValue62)
  workValue62 = "_"
  workValue66 = tostring
  flag25 = arg1.mainModel
  if not flag25 then
    flag25 = ""
  end
  workValue66 = workValue66(flag25)
  arg7 = arg7 .. workValue62 .. workValue66
  workValue62 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue62 = workValue62()
  workValue66 = GetEntityCoords
  flag25 = workValue62
  flag = true
  -- Beginner: result below is entityCoords.
  workValue66 = workValue66(flag25, flag)
  flag25 = vector3
  flag = arg4
  flag2 = arg5
  flag4 = arg6
  flag25 = flag25(flag, flag2, flag4)
  flag25 = workValue66 - flag25
  flag25 = #flag25
  flag = arg2 + arg3
  if flag25 > flag then
    flag = workValue20
    if flag then
      flag = false
      flag2 = numberValue
      if 0 ~= flag2 then
        flag2 = DoesEntityExist
        flag4 = numberValue
        flag2 = flag2(flag4)
        if flag2 then
          flag2 = GetEntityAttachedTo
          flag4 = numberValue
          flag2 = flag2(flag4)
          if 0 ~= flag2 then
            flag4 = DoesEntityExist
            flag5 = flag2
            flag4 = flag4(flag5)
            if flag4 then
              flag4 = IsEntityAVehicle
              flag5 = flag2
              flag4 = flag4(flag5)
              if flag4 then
                flag = true
              end
            end
          end
        end
      end
      if flag then
        flag2 = pairs
        flag4 = dataTable2
        flag2, flag4, flag5, flag6 = flag2(flag4)
        for flag7, flag8 in flag2, flag4, flag5, flag6 do
          if flag8 and 0 ~= flag8 then
            flag9 = DoesEntityExist
            flag10 = flag8
            flag9 = flag9(flag10)
            if flag9 then
              flag9 = SetEntityAsMissionEntity
              flag10 = flag8
              numberValue3 = true
              flag11 = true
              flag9(flag10, numberValue3, flag11)
              flag9 = DeleteObject
              flag10 = flag8
              flag9(flag10)
            end
          end
        end
        flag2 = {}
        dataTable2 = flag2
      else
        flag2 = workValue41
        flag2()
      end
      flag2 = nil
      workValue20 = flag2
    end
    return
  end
  flag = GetGroundZFor_3dCoord
  flag2 = arg4
  flag4 = arg5
  flag5 = arg6 + 50.0
  flag6 = 0.0
  flag7 = false
  flag, flag2 = flag(flag2, flag4, flag5, flag6, flag7)
  if flag2 and flag2 > 0.0 then
    flag4 = flag2 + 0.05
    if flag4 then
      goto flow_label_162
    end
  end
  flag4 = arg6
  ::flow_label_162::
  flag5 = tonumber
  flag6 = arg1.mainHeading
  flag5 = flag5(flag6)
  if not flag5 then
    flag5 = 0.0
  end
  if arg2 >= flag25 then
    flag6 = workValue20
    if flag6 ~= arg7 then
      flag6 = workValue42
      flag7 = arg1
      flag8 = arg4
      flag9 = arg5
      flag10 = flag4
      numberValue3 = flag5
      flag6(flag7, flag8, flag9, flag10, numberValue3)
      workValue20 = arg7
  end
  else
    flag6 = workValue20
    if flag6 == arg7 then
      flag6 = type
      flag7 = arg1.secondary
      flag6 = flag6(flag7)
      if "table" == flag6 then
        flag6 = ipairs
        flag7 = arg1.secondary
        flag6, flag7, flag8, flag9 = flag6(flag7)
        for flag10, numberValue3 in flag6, flag7, flag8, flag9 do
          flag11 = tonumber
          flag12 = numberValue3.slot
          flag11 = flag11(flag12)
          if flag11 then
            flag12 = cmgCall4
            flag13 = arg1
            flag14 = flag11
            flag12 = flag12(flag13, flag14)
            if flag12 then
              flag12 = dataTable2
              flag12 = flag12[flag11]
              if flag12 then
                flag12 = DoesEntityExist
                flag13 = dataTable2
                flag13 = flag13[flag11]
                flag12 = flag12(flag13)
                if flag12 then
                  flag12 = SetEntityAsMissionEntity
                  flag13 = dataTable2
                  flag13 = flag13[flag11]
                  flag14 = true
                  flag15 = true
                  flag12(flag13, flag14, flag15)
                  flag12 = DeleteObject
                  flag13 = dataTable2
                  flag13 = flag13[flag11]
                  flag12(flag13)
                  flag12 = dataTable2
                  flag12[flag11] = nil
                end
              end
            end
          end
        end
      end
    end
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue44; parameters: none) ===
function workValue44()
  local arg1, arg2
  while true do
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 400
    arg1(arg2)
    arg1 = workValue43
    arg1()
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue44)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    if arg6 and 0 ~= arg6 then
      arg7 = RemoveBlip
      workValue62 = arg6
      arg7(workValue62)
    end
  end
  arg1 = {}
  dataTable = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue44; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function workValue44(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local workValue62, workValue66, flag25, flag, flag2
  workValue62 = AddBlipForCoord
  workValue66 = arg1 + 0.0
  flag25 = arg2 + 0.0
  flag = arg3 + 0.0
  -- Beginner: result below is blipHandle.
  workValue62 = workValue62(workValue66, flag25, flag)
  workValue66 = SetBlipSprite
  flag25 = workValue62
  flag = arg4 or flag
  if not arg4 then
    flag = 402
  end
  workValue66(flag25, flag)
  workValue66 = SetBlipColour
  flag25 = workValue62
  flag = arg5 or flag
  if not arg5 then
    flag = 5
  end
  workValue66(flag25, flag)
  workValue66 = SetBlipAsShortRange
  flag25 = workValue62
  flag = false
  workValue66(flag25, flag)
  workValue66 = tonumber
  flag25 = arg7
  workValue66 = workValue66(flag25)
  if workValue66 and workValue66 > 0.0 then
    flag25 = SetBlipScale
    flag = workValue62
    flag2 = workValue66
    flag25(flag, flag2)
  end
  flag25 = BeginTextCommandSetBlipName
  flag = "STRING"
  flag25(flag)
  flag25 = AddTextComponentSubstringPlayerName
  flag = arg6 or flag
  if not arg6 then
    flag = "Job"
  end
  flag25(flag)
  flag25 = EndTextCommandSetBlipName
  flag = workValue62
  flag25(flag)
  flag25 = dataTable
  flag25 = #flag25
  flag = flag25 + 1
  flag25 = dataTable
  flag25[flag] = workValue62
  return workValue62
end

-- === HELPER FUNCTION (decompiler name: workValue45; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue45(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, workValue62, workValue66, flag25
  arg6 = AddBlipForEntity
  arg7 = arg1
  -- Beginner: result below is blipHandle.
  arg6 = arg6(arg7)
  arg7 = SetBlipSprite
  workValue62 = arg6
  workValue66 = arg2 or workValue66
  if not arg2 then
    workValue66 = 402
  end
  arg7(workValue62, workValue66)
  arg7 = SetBlipColour
  workValue62 = arg6
  workValue66 = arg3 or workValue66
  if not arg3 then
    workValue66 = 5
  end
  arg7(workValue62, workValue66)
  arg7 = SetBlipAsShortRange
  workValue62 = arg6
  workValue66 = false
  arg7(workValue62, workValue66)
  arg7 = tonumber
  workValue62 = arg5
  arg7 = arg7(workValue62)
  if arg7 and arg7 > 0.0 then
    workValue62 = SetBlipScale
    workValue66 = arg6
    flag25 = arg7
    workValue62(workValue66, flag25)
  end
  workValue62 = BeginTextCommandSetBlipName
  workValue66 = "STRING"
  workValue62(workValue66)
  workValue62 = AddTextComponentSubstringPlayerName
  workValue66 = arg4 or workValue66
  if not arg4 then
    workValue66 = "Job"
  end
  workValue62(workValue66)
  workValue62 = EndTextCommandSetBlipName
  workValue66 = arg6
  workValue62(workValue66)
  workValue62 = dataTable
  workValue62 = #workValue62
  workValue66 = workValue62 + 1
  workValue62 = dataTable
  workValue62[workValue66] = arg6
  return arg6
end
workValue46 = nil

-- === HELPER FUNCTION (decompiler name: workValue47; parameters: arg1, arg2) ===
function workValue47(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = SetNewWaypoint
  arg4 = arg1 + 0.0
  arg5 = arg2 + 0.0
  arg3(arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue48; parameters: arg1, arg2, arg3) ===
function workValue48(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue62
  if arg1 then
    arg4 = arg1.targetNetId
    if nil ~= arg4 then
      arg4 = arg1.targetNetId
      if 0 ~= arg4 then
        goto flow_label_11
      end
    end
  end
  arg4 = false
  return arg4
  ::flow_label_11::
  arg4 = tonumber
  arg5 = arg1.targetNetId
  arg4 = arg4(arg5)
  if not arg4 or 0 == arg4 then
    arg5 = false
    return arg5
  end
  arg5 = tonumber
  arg6 = arg3
  arg5 = arg5(arg6)
  if arg5 and arg4 == arg5 then
    arg6 = true
    return arg6
  end
  if 0 ~= arg2 then
    arg6 = DoesEntityExist
    arg7 = arg2
    arg6 = arg6(arg7)
    if arg6 then
      arg6 = NetworkGetNetworkIdFromEntity
      arg7 = arg2
      arg6 = arg6(arg7)
      if arg6 and 0 ~= arg6 then
        arg7 = tonumber
        workValue62 = arg6
        arg7 = arg7(workValue62)
        if arg4 == arg7 then
          arg7 = true
          return arg7
        end
      end
    end
  end
  arg6 = false
  return arg6
end

-- === HELPER FUNCTION (decompiler name: workValue49; parameters: arg1, arg2) ===
function workValue49(arg1, arg2)
  local arg3, arg4, arg5
  if 0 ~= arg1 and arg1 ~= arg2 then
    arg3 = DoesEntityExist
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = IsEntityAVehicle
      arg4 = arg1
      arg3 = arg3(arg4)
      if arg3 then
        goto flow_label_17
      end
    end
  end
  arg3 = false
  return arg3
  ::flow_label_17::
  arg3 = DoesEntityExist
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = IsEntityAVehicle
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_29
    end
  end
  arg3 = false
  return arg3
  ::flow_label_29::
  arg3 = IsVehicleAttachedToTowTruck
  arg4 = arg1
  arg5 = arg2
  return arg3(arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue50; parameters: arg1, arg2) ===
function workValue50(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8
  if 0 ~= arg1 then
    arg3 = DoesEntityExist
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = IsEntityAVehicle
      arg4 = arg1
      arg3 = arg3(arg4)
      if arg3 then
        goto flow_label_15
      end
    end
  end
  arg3 = false
  return arg3
  ::flow_label_15::
  arg3 = GetEntityAttachedTo
  arg4 = arg1
  arg3 = arg3(arg4)
  if 0 ~= arg3 then
    arg4 = DoesEntityExist
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = IsEntityAVehicle
      arg5 = arg3
      arg4 = arg4(arg5)
      if arg4 then
        arg4 = GetEntityModel
        arg5 = arg3
        -- Beginner: result below is modelHash.
        arg4 = arg4(arg5)
        arg5 = workValue11
        arg4 = arg5[arg4]
        if arg4 then
          arg4 = true
          return arg4
        end
      end
    end
  end
  arg4 = tonumber
  arg5 = arg2
  arg4 = arg4(arg5)
  if not arg4 then
    arg5 = false
    return arg5
  end
  arg5 = CMG
  arg5 = arg5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = GetVehiclePedIsIn
  arg7 = arg5
  workValue62 = false
  -- Beginner: result below is currentVehicle.
  arg6 = arg6(arg7, workValue62)
  arg7 = GetVehiclePedIsIn
  workValue62 = arg5
  workValue66 = true
  -- Beginner: result below is currentVehicle.
  arg7 = arg7(workValue62, workValue66)
  workValue62 = ipairs
  workValue66 = {}
  flag25 = arg6
  flag = arg7
  workValue66[1] = flag25
  workValue66[2] = flag
  workValue62, workValue66, flag25, flag = workValue62(workValue66)
  for flag2, flag4 in workValue62, workValue66, flag25, flag do
    if 0 ~= flag4 and flag4 ~= arg1 then
      flag5 = DoesEntityExist
      flag6 = flag4
      flag5 = flag5(flag6)
      if flag5 then
        flag5 = IsEntityAVehicle
        flag6 = flag4
        flag5 = flag5(flag6)
        if flag5 then
          flag5 = workValue49
          flag6 = flag4
          flag7 = arg1
          flag5 = flag5(flag6, flag7)
          if flag5 then
            flag5 = true
            return flag5
          end
          flag5 = workValue48
          flag6 = Entity
          flag7 = flag4
          flag6 = flag6(flag7)
          flag6 = flag6.state
          flag6 = flag6.towVehicle
          flag7 = arg1
          flag8 = arg4
          flag5 = flag5(flag6, flag7, flag8)
          if flag5 then
            flag5 = true
            return flag5
          end
        end
      end
    end
  end
  workValue62 = pairs
  workValue66 = GetGamePool
  flag25 = "CVehicle"
  workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8 = workValue66(flag25)
  workValue62, workValue66, flag25, flag = workValue62(workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8)
  for flag2, flag4 in workValue62, workValue66, flag25, flag do
    if flag4 ~= arg1 then
      flag5 = DoesEntityExist
      flag6 = flag4
      flag5 = flag5(flag6)
      if flag5 then
        flag5 = IsEntityAVehicle
        flag6 = flag4
        flag5 = flag5(flag6)
        if flag5 then
          flag5 = workValue49
          flag6 = flag4
          flag7 = arg1
          flag5 = flag5(flag6, flag7)
          if flag5 then
            flag5 = true
            return flag5
          end
          flag5 = workValue48
          flag6 = Entity
          flag7 = flag4
          flag6 = flag6(flag7)
          flag6 = flag6.state
          flag6 = flag6.towVehicle
          flag7 = arg1
          flag8 = arg4
          flag5 = flag5(flag6, flag7, flag8)
          if flag5 then
            flag5 = true
            return flag5
          end
        end
      end
    end
  end
  workValue62 = false
  return workValue62
end

-- === HELPER FUNCTION (decompiler name: workValue51; parameters: arg1) ===
function workValue51(arg1)
  local arg2, arg3, arg4, arg5
  if arg1 then
    arg2 = arg1.type
    if "breakdown" == arg2 then
      goto flow_label_11
    end
    arg2 = arg1.type
    if "equipment" == arg2 then
      goto flow_label_11
    end
  end
  arg2 = false
  return arg2
  ::flow_label_11::
  arg2 = arg1.vehicleNetId
  if arg2 then
    arg2 = tonumber
    arg3 = arg1.vehicleNetId
    arg2 = arg2(arg3)
  end
  if arg2 then
    arg3 = NetworkDoesNetworkIdExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = NetworkDoesEntityExistWithNetworkId
      arg4 = arg2
      arg3 = arg3(arg4)
      if arg3 then
        goto flow_label_31
      end
    end
  end
  arg3 = false
  return arg3
  ::flow_label_31::
  arg3 = NetworkGetEntityFromNetworkId
  arg4 = arg2
  arg3 = arg3(arg4)
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = 0 ~= arg3 and arg4
  return arg4
end

-- === HELPER FUNCTION (decompiler name: workValue52; parameters: arg1) ===
function workValue52(arg1)
  local arg2, arg3, arg4, arg5, arg6
  if arg1 then
    arg2 = arg1.type
    if "breakdown" == arg2 then
      goto flow_label_11
    end
    arg2 = arg1.type
    if "equipment" == arg2 then
      goto flow_label_11
    end
  end
  arg2 = false
  return arg2
  ::flow_label_11::
  arg2 = arg1.vehicleNetId
  if arg2 then
    arg2 = tonumber
    arg3 = arg1.vehicleNetId
    arg2 = arg2(arg3)
  end
  if arg2 then
    arg3 = NetworkDoesNetworkIdExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = NetworkDoesEntityExistWithNetworkId
      arg4 = arg2
      arg3 = arg3(arg4)
      if arg3 then
        goto flow_label_31
      end
    end
  end
  arg3 = false
  return arg3
  ::flow_label_31::
  arg3 = NetworkGetEntityFromNetworkId
  arg4 = arg2
  arg3 = arg3(arg4)
  if 0 ~= arg3 then
    arg4 = DoesEntityExist
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      goto flow_label_43
    end
  end
  arg4 = false
  return arg4
  ::flow_label_43::
  arg4 = workValue50
  arg5 = arg3
  arg6 = arg2
  return arg4(arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue53; parameters: none) ===
function workValue53()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 == arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = GetVehiclePedIsIn
  arg3 = arg1
  arg4 = false
  -- Beginner: result below is currentVehicle.
  arg2 = arg2(arg3, arg4)
  if 0 ~= arg2 then
    arg3 = GetPedInVehicleSeat
    arg4 = arg2
    arg5 = -1
    arg3 = arg3(arg4, arg5)
    if arg3 == arg1 then
      arg3 = GetEntityModel
      arg4 = arg2
      -- Beginner: result below is modelHash.
      arg3 = arg3(arg4)
      arg4 = workValue11
      arg4 = arg4[arg3]
      if arg4 then
        arg4 = "flatbed"
        return arg4
      end
      arg4 = workValue16
      arg4 = arg4[arg3]
      if arg4 then
        arg4 = "tow"
        return arg4
      end
      arg4 = nil
      return arg4
    end
  end
  arg3 = GetEntityCoords
  arg4 = arg1
  arg5 = true
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, arg5)
  arg4 = nil
  arg5 = 38.0
  arg6 = pairs
  arg7 = GetGamePool
  workValue62 = "CVehicle"
  arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7 = arg7(workValue62)
  arg6, arg7, workValue62, workValue66 = arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7)
  for flag25, flag in arg6, arg7, workValue62, workValue66 do
    if 0 ~= flag then
      flag2 = DoesEntityExist
      flag4 = flag
      flag2 = flag2(flag4)
      if flag2 then
        flag2 = IsEntityAVehicle
        flag4 = flag
        flag2 = flag2(flag4)
        if flag2 then
          flag2 = GetEntityModel
          flag4 = flag
          -- Beginner: result below is modelHash.
          flag2 = flag2(flag4)
          flag4 = workValue11
          flag4 = flag4[flag2]
          if flag4 then
            flag4 = "flatbed"
            if flag4 then
              goto flow_label_79
            end
          end
          flag4 = workValue16
          flag4 = flag4[flag2]
          if flag4 then
            flag4 = "tow"
            if flag4 then
              goto flow_label_79
            end
          end
          flag4 = nil
          ::flow_label_79::
          if flag4 then
            flag5 = GetEntityCoords
            flag6 = flag
            flag7 = true
            -- Beginner: result below is entityCoords.
            flag5 = flag5(flag6, flag7)
            flag5 = flag5 - arg3
            flag5 = #flag5
            if arg5 > flag5 then
              arg5 = flag5
              arg4 = flag4
            end
          end
        end
      end
    end
  end
  return arg4
end

-- === HELPER FUNCTION (decompiler name: workValue54; parameters: arg1) ===
function workValue54(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4
  arg2 = arg1.vehicleNetId
  if arg2 then
    arg2 = tonumber
    arg3 = arg1.vehicleNetId
    arg2 = arg2(arg3)
  end
  if arg2 then
    arg3 = NetworkDoesNetworkIdExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = NetworkDoesEntityExistWithNetworkId
      arg4 = arg2
      arg3 = arg3(arg4)
      if arg3 then
        goto flow_label_21
      end
    end
  end
  arg3 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return arg3
  ::flow_label_21::
  arg3 = NetworkGetEntityFromNetworkId
  arg4 = arg2
  arg3 = arg3(arg4)
  if 0 ~= arg3 then
    arg4 = DoesEntityExist
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      goto flow_label_33
    end
  end
  arg4 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return arg4
  ::flow_label_33::
  arg4 = GetEntityAttachedTo
  arg5 = arg3
  arg4 = arg4(arg5)
  if 0 ~= arg4 then
    arg5 = DoesEntityExist
    arg6 = arg4
    arg5 = arg5(arg6)
    if arg5 then
      arg5 = IsEntityAVehicle
      arg6 = arg4
      arg5 = arg5(arg6)
      if arg5 then
        arg5 = GetEntityModel
        arg6 = arg4
        -- Beginner: result below is modelHash.
        arg5 = arg5(arg6)
        arg6 = workValue11
        arg5 = arg6[arg5]
        if arg5 then
          arg5 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
          return arg5
        end
      end
    end
  end
  arg5 = pairs
  arg6 = GetGamePool
  arg7 = "CVehicle"
  arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4 = arg6(arg7)
  arg5, arg6, arg7, workValue62 = arg5(arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4)
  for workValue66, flag25 in arg5, arg6, arg7, workValue62 do
    if flag25 ~= arg3 and 0 ~= flag25 then
      flag = DoesEntityExist
      flag2 = flag25
      flag = flag(flag2)
      if flag then
        flag = workValue49
        flag2 = flag25
        flag4 = arg3
        flag = flag(flag2, flag4)
        if flag then
          flag = "Drive into the depot, then hold ~INPUT_VEH_HEADLIGHT~ in your tow truck to detach the vehicle"
          return flag
        end
      end
    end
  end
  arg5 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue55; parameters: none) ===
function workValue55()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66
  arg1 = workValue19
  if arg1 then
    arg2 = arg1.type
    if "breakdown" == arg2 then
      goto flow_label_13
    end
    arg2 = arg1.type
    if "equipment" == arg2 then
      goto flow_label_13
    end
  end
  arg2 = false
  flag3 = arg2
  return
  ::flow_label_13::
  arg2 = workValue52
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = flag3
  if arg2 ~= arg3 then
    arg3 = flag3
    flag3 = arg2
    arg4 = workValue46
    arg5 = arg1
    arg4(arg5)
    if arg3 and not arg2 then
      arg4 = arg1.vehicleNetId
      if arg4 then
        arg4 = tonumber
        arg5 = arg1.vehicleNetId
        arg4 = arg4(arg5)
      end
      if arg4 then
        arg5 = NetworkDoesNetworkIdExist
        arg6 = arg4
        arg5 = arg5(arg6)
        if arg5 then
          arg5 = NetworkGetEntityFromNetworkId
          arg6 = arg4
          arg5 = arg5(arg6)
          if 0 ~= arg5 then
            arg6 = DoesEntityExist
            arg7 = arg5
            arg6 = arg6(arg7)
            if arg6 then
              arg6 = GetEntityCoords
              arg7 = arg5
              workValue62 = true
              -- Beginner: result below is entityCoords.
              arg6 = arg6(arg7, workValue62)
              arg7 = eventRegistration
              arg7 = arg6 - arg7
              arg7 = #arg7
              if arg7 < 35.0 then
                arg7 = TriggerServerEvent
                workValue62 = "9053b9a3f5"
                workValue66 = arg4
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9053b9a3f5".
                arg7(workValue62, workValue66)
              end
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue56; parameters: arg1) ===
function workValue56(arg1)
  local arg2, arg3, arg4, arg5, arg6
  if arg1 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "table" == arg2 then
      goto flow_label_10
    end
  end
  arg2 = nil
  arg3 = nil
  return arg2, arg3
  ::flow_label_10::
  arg2 = arg1.type
  if "debris" == arg2 then
    arg2 = type
    arg3 = arg1.anchor
    arg2 = arg2(arg3)
    if "table" == arg2 then
      arg2 = type
      arg3 = arg1.anchor
      arg3 = arg3.x
      arg2 = arg2(arg3)
      if "number" == arg2 then
        arg2 = arg1.mainSecured
        if arg2 then
          arg2 = arg1.debrisDepotComplete
          if true ~= arg2 then
            arg2 = eventRegistration.x
            arg2 = arg2 + 0.0
            arg3 = eventRegistration.y
            arg3 = arg3 + 0.0
            return arg2, arg3
          end
        end
        arg2 = arg1.anchor
        arg2 = arg2.x
        arg2 = arg2 + 0.0
        arg3 = arg1.anchor
        arg3 = arg3.y
        arg3 = arg3 + 0.0
        return arg2, arg3
    end
  end
  else
    arg2 = arg1.type
    if "parts_run" == arg2 then
      arg2 = tonumber
      arg3 = arg1.stage
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = 1
      end
      if 1 == arg2 or 2 == arg2 then
        arg3 = arg1.pickup
        if arg3 then
          goto flow_label_64
        end
      end
      arg3 = arg1.dropoff
      ::flow_label_64::
      if arg3 then
        arg4 = arg3.x
        if arg4 then
          arg4 = arg3.x
          arg4 = arg4 + 0.0
          arg5 = arg3.y
          arg5 = arg5 + 0.0
          return arg4, arg5
        end
      end
    else
      arg2 = arg1.type
      if "breakdown" ~= arg2 then
        arg2 = arg1.type
        if "equipment" ~= arg2 then
          arg2 = arg1.type
          if "fuel_runout" ~= arg2 then
            goto flow_label_149
          end
        end
      end
      arg2 = arg1.type
      if "breakdown" ~= arg2 then
        arg2 = arg1.type
        if "equipment" ~= arg2 then
          goto flow_label_104
        end
      end
      arg2 = workValue52
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = eventRegistration.x
        arg2 = arg2 + 0.0
        arg3 = eventRegistration.y
        arg3 = arg3 + 0.0
        return arg2, arg3
      end
      ::flow_label_104::
      arg2 = arg1.vehicleNetId
      if arg2 then
        arg2 = tonumber
        arg3 = arg1.vehicleNetId
        arg2 = arg2(arg3)
      end
      if arg2 then
        arg3 = NetworkDoesNetworkIdExist
        arg4 = arg2
        arg3 = arg3(arg4)
        if arg3 then
          arg3 = NetworkDoesEntityExistWithNetworkId
          arg4 = arg2
          arg3 = arg3(arg4)
          if arg3 then
            arg3 = NetworkGetEntityFromNetworkId
            arg4 = arg2
            arg3 = arg3(arg4)
            if 0 ~= arg3 then
              arg4 = DoesEntityExist
              arg5 = arg3
              arg4 = arg4(arg5)
              if arg4 then
                arg4 = GetEntityCoords
                arg5 = arg3
                arg6 = true
                -- Beginner: result below is entityCoords.
                arg4 = arg4(arg5, arg6)
                arg5 = arg4.x
                arg6 = arg4.y
                return arg5, arg6
              end
            end
          end
        end
      end
      arg3 = arg1.spawnX
      if arg3 then
        arg3 = arg1.spawnX
        arg3 = arg3 + 0.0
        arg4 = arg1.spawnY
        arg4 = arg4 + 0.0
        return arg3, arg4
      end
    end
  end
  ::flow_label_149::
  arg2 = nil
  arg3 = nil
  return arg2, arg3
end

-- === HELPER FUNCTION (decompiler name: workValue57; parameters: none) ===
function workValue57()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = workValue19
  arg2 = workValue56
  arg3 = arg1
  arg2, arg3 = arg2(arg3)
  if arg2 and arg3 then
    arg4 = workValue47
    arg5 = arg2
    arg6 = arg3
    arg4(arg5, arg6)
  end
  arg4 = workValue46
  arg5 = arg1
  arg4(arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue58; parameters: arg1) ===
function workValue58(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag
  arg2 = threadCall
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2()
  if arg1 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "table" == arg2 then
      goto flow_label_11
    end
  end
  return
  ::flow_label_11::
  arg2 = arg1.type
  if "debris" == arg2 then
    arg2 = type
    arg3 = arg1.anchor
    arg2 = arg2(arg3)
    if "table" == arg2 then
      arg2 = type
      arg3 = arg1.anchor
      arg3 = arg3.x
      arg2 = arg2(arg3)
      if "number" == arg2 then
        arg2 = arg1.mainSecured
        if arg2 then
          arg2 = arg1.debrisDepotComplete
          if true ~= arg2 then
            arg2 = workValue44
            arg3 = eventRegistration.x
            arg4 = eventRegistration.y
            arg5 = eventRegistration.z
            arg6 = 50
            arg7 = 2
            workValue62 = "Depot"
            workValue66 = textValue5
            arg2(arg3, arg4, arg5, arg6, arg7, workValue62, workValue66)
            arg2 = workValue47
            arg3 = eventRegistration.x
            arg4 = eventRegistration.y
            arg2(arg3, arg4)
            return
          end
        end
        arg2 = workValue44
        arg3 = arg1.anchor
        arg3 = arg3.x
        arg4 = arg1.anchor
        arg4 = arg4.y
        arg5 = arg1.anchor
        arg5 = arg5.z
        arg6 = 318
        arg7 = 5
        workValue62 = "Clear-up"
        workValue66 = textValue5
        arg2(arg3, arg4, arg5, arg6, arg7, workValue62, workValue66)
        arg2 = workValue47
        arg3 = arg1.anchor
        arg3 = arg3.x
        arg4 = arg1.anchor
        arg4 = arg4.y
        arg2(arg3, arg4)
    end
  end
  else
    arg2 = arg1.type
    if "parts_run" == arg2 then
      arg2 = tonumber
      arg3 = arg1.stage
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = 1
      end
      if 1 == arg2 or 2 == arg2 then
        arg3 = arg1.pickup
        if arg3 then
          arg3 = workValue44
          arg4 = arg1.pickup
          arg4 = arg4.x
          arg5 = arg1.pickup
          arg5 = arg5.y
          arg6 = arg1.pickup
          arg6 = arg6.z
          arg7 = 478
          workValue62 = 2
          workValue66 = "Supplier"
          flag25 = textValue5
          arg3(arg4, arg5, arg6, arg7, workValue62, workValue66, flag25)
          arg3 = workValue47
          arg4 = arg1.pickup
          arg4 = arg4.x
          arg5 = arg1.pickup
          arg5 = arg5.y
          arg3(arg4, arg5)
      end
      elseif 3 == arg2 or 4 == arg2 then
        arg3 = arg1.dropoff
        if arg3 then
          arg3 = workValue44
          arg4 = arg1.dropoff
          arg4 = arg4.x
          arg5 = arg1.dropoff
          arg5 = arg5.y
          arg6 = arg1.dropoff
          arg6 = arg6.z
          arg7 = 478
          workValue62 = 2
          workValue66 = "Drop-off"
          flag25 = textValue5
          arg3(arg4, arg5, arg6, arg7, workValue62, workValue66, flag25)
          arg3 = workValue47
          arg4 = arg1.dropoff
          arg4 = arg4.x
          arg5 = arg1.dropoff
          arg5 = arg5.y
          arg3(arg4, arg5)
        end
      end
    else
      arg2 = arg1.type
      if "breakdown" ~= arg2 then
        arg2 = arg1.type
        if "equipment" ~= arg2 then
          arg2 = arg1.type
          if "fuel_runout" ~= arg2 then
            goto flow_label_236
          end
        end
      end
      arg2 = arg1.vehicleNetId
      if arg2 then
        arg2 = tonumber
        arg3 = arg1.vehicleNetId
        arg2 = arg2(arg3)
      end
      if arg2 then
        arg3 = NetworkDoesNetworkIdExist
        arg4 = arg2
        arg3 = arg3(arg4)
        if arg3 then
          arg3 = NetworkDoesEntityExistWithNetworkId
          arg4 = arg2
          arg3 = arg3(arg4)
          if arg3 then
            arg3 = NetworkGetEntityFromNetworkId
            arg4 = arg2
            arg3 = arg3(arg4)
            if 0 == arg3 then
              goto flow_label_236
            end
            arg4 = DoesEntityExist
            arg5 = arg3
            arg4 = arg4(arg5)
            if not arg4 then
              goto flow_label_236
            end
            arg4 = arg1.type
            if "breakdown" ~= arg4 then
              arg4 = arg1.type
              if "equipment" ~= arg4 then
                goto flow_label_187
              end
            end
            arg4 = workValue52
            arg5 = arg1
            arg4 = arg4(arg5)
            if arg4 then
              arg4 = workValue44
              arg5 = eventRegistration.x
              arg6 = eventRegistration.y
              arg7 = eventRegistration.z
              workValue62 = 50
              workValue66 = 2
              flag25 = "Yard"
              flag = textValue5
              arg4(arg5, arg6, arg7, workValue62, workValue66, flag25, flag)
              arg4 = workValue47
              arg5 = eventRegistration.x
              arg6 = eventRegistration.y
              arg4(arg5, arg6)
              return
            end
            ::flow_label_187::
            arg4 = workValue45
            arg5 = arg3
            arg6 = 402
            arg7 = 5
            workValue62 = "Callout"
            workValue66 = textValue5
            arg4(arg5, arg6, arg7, workValue62, workValue66)
            arg4 = arg1.type
            if "breakdown" ~= arg4 then
              arg4 = arg1.type
              if "equipment" ~= arg4 then
                goto flow_label_211
              end
            end
            arg4 = workValue44
            arg5 = eventRegistration.x
            arg6 = eventRegistration.y
            arg7 = eventRegistration.z
            workValue62 = 50
            workValue66 = 2
            flag25 = "Depot yard"
            flag = textValue5
            flag = flag * 0.92
            arg4(arg5, arg6, arg7, workValue62, workValue66, flag25, flag)
            ::flow_label_211::
            arg4 = GetEntityCoords
            arg5 = arg3
            arg6 = true
            -- Beginner: result below is entityCoords.
            arg4 = arg4(arg5, arg6)
            arg5 = workValue47
            arg6 = arg4.x
            arg7 = arg4.y
            arg5(arg6, arg7)
        end
      end
      else
        arg3 = arg1.spawnX
        if arg3 then
          arg3 = workValue44
          arg4 = arg1.spawnX
          arg5 = arg1.spawnY
          arg6 = arg1.spawnZ
          arg7 = 402
          workValue62 = 5
          workValue66 = "Callout"
          flag25 = textValue5
          arg3(arg4, arg5, arg6, arg7, workValue62, workValue66, flag25)
          arg3 = workValue47
          arg4 = arg1.spawnX
          arg5 = arg1.spawnY
          arg3(arg4, arg5)
        end
      end
    end
  end
  ::flow_label_236::
end
workValue46 = workValue58
workValue58 = AddStateBagChangeHandler
eventRegistration2 = "towVehicle"
textValue7 = nil

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: arg1, arg2, arg3) ===
function workValue59(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = workValue19
  if not arg4 then
    return
  end
  arg5 = arg4.type
  if "breakdown" ~= arg5 then
    arg5 = arg4.type
    if "equipment" ~= arg5 then
      return
    end
  end
  arg5 = tonumber
  arg6 = arg4.vehicleNetId
  arg5 = arg5(arg6)
  if not arg5 then
    return
  end
  if arg3 then
    arg6 = tonumber
    arg7 = arg3.targetNetId
    arg6 = arg6(arg7)
    if arg6 == arg5 then
      arg6 = flag3
      if not arg6 then
        arg6 = true
        flag3 = arg6
        arg6 = workValue46
        arg7 = arg4
        arg6(arg7)
      end
    end
  end
end
workValue58(eventRegistration2, textValue7, workValue59)

-- === HELPER FUNCTION (decompiler name: workValue58; parameters: arg1) ===
function workValue58(arg1)
  local arg2, arg3, arg4, arg5, arg6
  if arg1 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "table" == arg2 then
      goto flow_label_11
    end
  end
  arg2 = nil
  workValue18 = arg2
  return
  ::flow_label_11::
  arg2 = arg1.vehicleNetId
  if arg2 then
    arg2 = nil
    workValue18 = arg2
    return
  end
  arg2 = arg1.type
  if "breakdown" ~= arg2 then
    arg2 = arg1.type
    if "equipment" ~= arg2 then
      arg2 = arg1.type
      if "fuel_runout" ~= arg2 then
        goto flow_label_109
      end
    end
  end
  arg2 = arg1.spawnX
  if arg2 then
    arg2 = arg1.contractId
    if arg2 then
      arg2 = arg1.modelName
      if arg2 then
        arg2 = nil
        arg3 = nil
        arg4 = arg1.type
        if "breakdown" == arg4 then
          arg4 = tonumber
          arg5 = cmgCall.missionVehicleEngineHealth
          arg4 = arg4(arg5)
          arg2 = arg4 or arg2
          if not arg4 then
            arg2 = 150.0
          end
          arg4 = tonumber
          arg5 = cmgCall.missionVehicleBodyHealth
          arg4 = arg4(arg5)
          arg3 = arg4 or arg3
          if not arg4 then
            arg3 = 250.0
          end
        else
          arg4 = arg1.type
          if "equipment" == arg4 then
            arg4 = tonumber
            arg5 = cmgCall.missionVehicleEngineHealth
            arg4 = arg4(arg5)
            arg2 = arg4 or arg2
            if not arg4 then
              arg2 = 150.0
            end
            arg4 = tonumber
            arg5 = cmgCall.missionVehicleBodyHealth
            arg4 = arg4(arg5)
            arg3 = arg4 or arg3
            if not arg4 then
              arg3 = 250.0
            end
          else
            arg4 = tonumber
            arg5 = cmgCall.fuelMissionEngineHealth
            arg4 = arg4(arg5)
            arg2 = arg4 or arg2
            if not arg4 then
              arg2 = 900.0
            end
            arg4 = tonumber
            arg5 = cmgCall.fuelMissionBodyHealth
            arg4 = arg4(arg5)
            arg3 = arg4 or arg3
            if not arg4 then
              arg3 = 950.0
            end
          end
        end
        arg4 = {}
        arg5 = arg1.contractId
        arg4.contractId = arg5
        arg5 = arg1.modelName
        arg4.modelName = arg5
        arg5 = arg1.spawnX
        arg4.x = arg5
        arg5 = arg1.spawnY
        arg4.y = arg5
        arg5 = arg1.spawnZ
        arg4.z = arg5
        arg5 = arg1.spawnW
        if not arg5 then
          arg5 = 0.0
        end
        arg4.w = arg5
        arg4.engineHealth = arg2
        arg4.bodyHealth = arg3
        arg5 = tonumber
        arg6 = cmgCall.vehicleSpawnNearMeters
        arg5 = arg5(arg6)
        if not arg5 then
          arg5 = 110.0
        end
        arg4.spawnNearMeters = arg5
        arg5 = arg1.type
        arg4.jobKind = arg5
        workValue18 = arg4
      end
    end
  end
  ::flow_label_109::
end
eventRegistration2 = RegisterNetEvent
textValue7 = "35ef91c369"
-- Beginner: this function handles network event "35ef91c369".

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: arg1) ===
function workValue59(arg1)
  local arg2, arg3, arg4
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = arg1.contract
    workValue19 = arg2
    arg2 = workValue19
    if arg2 then
      arg2 = workValue19.type
      if "debris" == arg2 then
        goto flow_label_16
      end
    end
    arg2 = workValue32
    arg2()
    ::flow_label_16::
    arg2 = workValue46
    arg3 = workValue19
    arg2(arg3)
    arg2 = workValue19
    if arg2 then
      arg2 = workValue19.vehicleNetId
      if not arg2 then
        arg2 = workValue58
        arg3 = workValue19
        arg2(arg3)
    end
    else
      arg2 = workValue19
      if arg2 then
        arg2 = workValue19.vehicleNetId
        if arg2 then
          arg2 = nil
          workValue18 = arg2
      end
      else
        arg2 = workValue19
        if not arg2 then
          arg2 = nil
          workValue18 = arg2
        end
      end
    end
  end
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "MECHANIC_SYNC"
  arg4 = arg1 or arg4
  if not arg1 then
    arg4 = {}
  end
  arg3.payload = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "35ef91c369".
eventRegistration2(textValue7, workValue59)
eventRegistration2 = RegisterNetEvent
textValue7 = "31a7475ed5"
-- Beginner: this function handles network event "31a7475ed5".

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: arg1) ===
function workValue59(arg1)
  local arg2, arg3, arg4
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = arg1.modelName
    if arg2 then
      arg2 = arg1.contractId
      if arg2 then
        goto flow_label_13
      end
    end
  end
  return
  ::flow_label_13::
  workValue18 = arg1
  arg2 = arg1.x
  if arg2 then
    arg2 = arg1.y
    if arg2 then
      arg2 = workValue47
      arg3 = arg1.x
      arg4 = arg1.y
      arg2(arg3, arg4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "31a7475ed5".
eventRegistration2(textValue7, workValue59)

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25
  arg1 = workValue18
  if arg1 then
    arg2 = arg1.contractId
    if arg2 then
      arg2 = arg1.modelName
      if arg2 then
        goto flow_label_11
      end
    end
  end
  return
  ::flow_label_11::
  arg2 = CMG
  arg2 = arg2.requestEntitySpawn
  arg3 = "mechanic_contract_vehicle"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.spawnVehicle
  arg3 = arg1.modelName
  arg4 = arg1.x
  arg5 = arg1.y
  arg6 = arg1.z
  arg7 = arg1.w
  if not arg7 then
    arg7 = 0.0
  end
  workValue62 = false
  workValue66 = true
  flag25 = true
  arg2 = arg2(arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25)
  if arg2 and 0 ~= arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_44
    end
  end
  arg3 = TriggerServerEvent
  arg4 = "516e22ccad"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "516e22ccad".
  arg3(arg4)
  arg3 = nil
  workValue18 = arg3
  return
  ::flow_label_44::
  arg3 = SetEntityHeading
  arg4 = arg2
  arg5 = arg1.w
  if not arg5 then
    arg5 = 0.0
  end
  -- Beginner: Change the direction an entity is facing.
  arg3(arg4, arg5)
  arg3 = tonumber
  arg4 = arg1.engineHealth
  arg3 = arg3(arg4)
  arg4 = tonumber
  arg5 = arg1.bodyHealth
  arg4 = arg4(arg5)
  if arg3 then
    arg5 = SetVehicleEngineHealth
    arg6 = arg2
    arg7 = arg3 + 0.0
    arg5(arg6, arg7)
  end
  if arg4 then
    arg5 = SetVehicleBodyHealth
    arg6 = arg2
    arg7 = arg4 + 0.0
    arg5(arg6, arg7)
  end
  arg5 = SetVehiclePetrolTankHealth
  arg6 = arg2
  arg7 = 400.0
  arg5(arg6, arg7)
  arg5 = arg1.jobKind
  if "fuel_runout" == arg5 then
    arg5 = CMG
    arg5 = arg5.setVehicleFuel
    if arg5 then
      arg5 = CMG
      arg5 = arg5.setVehicleFuel
      arg6 = arg2
      arg7 = 3.0
      arg5(arg6, arg7)
    else
      arg5 = SetVehicleFuelLevel
      arg6 = arg2
      arg7 = 3.0
      arg5(arg6, arg7)
    end
  end
  arg5 = NetworkGetNetworkIdFromEntity
  arg6 = arg2
  arg5 = arg5(arg6)
  arg6 = TriggerServerEvent
  arg7 = "65a26e05a8"
  workValue62 = arg5
  workValue66 = arg1.contractId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "65a26e05a8".
  arg6(arg7, workValue62, workValue66)
  arg6 = nil
  workValue18 = arg6
  arg6 = threadCall
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg6()
end
textValue7 = Citizen
textValue7 = textValue7.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: none) ===
function workValue59()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62
  while true do
    arg1 = 1500
    arg2 = workValue18
    if arg2 then
      arg2 = workValue18.x
      if arg2 then
        arg1 = 400
        arg2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        arg3 = GetEntityCoords
        arg4 = arg2
        arg5 = true
        -- Beginner: result below is entityCoords.
        arg3 = arg3(arg4, arg5)
        arg4 = tonumber
        arg5 = workValue18.spawnNearMeters
        arg4 = arg4(arg5)
        if not arg4 then
          arg4 = 110.0
        end
        arg5 = vector3
        arg6 = workValue18.x
        arg6 = arg6 + 0.0
        arg7 = workValue18.y
        arg7 = arg7 + 0.0
        workValue62 = workValue18.z
        workValue62 = workValue62 + 0.0
        arg5 = arg5(arg6, arg7, workValue62)
        arg5 = arg3 - arg5
        arg5 = #arg5
        if arg4 >= arg5 then
          arg5 = eventRegistration2
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          arg5()
        end
      end
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = arg1
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue7(workValue59)
textValue7 = Citizen
textValue7 = textValue7.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: none) ===
function workValue59()
  local arg1, arg2
  while true do
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 400
    arg1(arg2)
    arg1 = workValue55
    arg1()
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue7(workValue59)
textValue7 = Citizen
textValue7 = textValue7.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: none) ===
function workValue59()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21
  while true do
    arg1 = workValue19
    arg2 = 1500
    if arg1 then
      arg3 = CMG
      arg3 = arg3.hasClientPermission
      arg4 = "aa.onduty.permission"
      arg3 = arg3(arg4)
      if arg3 then
        arg3 = nil
        arg4 = nil
        arg5 = nil
        arg6 = arg1.type
        if "breakdown" ~= arg6 then
          arg6 = arg1.type
          if "equipment" ~= arg6 then
            arg6 = arg1.type
            if "fuel_runout" ~= arg6 then
              goto flow_label_87
            end
          end
        end
        arg6 = arg1.vehicleNetId
        if arg6 then
          arg6 = tonumber
          arg7 = arg1.vehicleNetId
          arg6 = arg6(arg7)
        end
        if arg6 then
          arg7 = NetworkDoesNetworkIdExist
          workValue62 = arg6
          arg7 = arg7(workValue62)
          if arg7 then
            arg7 = NetworkDoesEntityExistWithNetworkId
            workValue62 = arg6
            arg7 = arg7(workValue62)
            if arg7 then
              arg7 = NetworkGetEntityFromNetworkId
              workValue62 = arg6
              arg7 = arg7(workValue62)
              if 0 == arg7 then
                goto flow_label_87
              end
              workValue62 = DoesEntityExist
              workValue66 = arg7
              workValue62 = workValue62(workValue66)
              if not workValue62 then
                goto flow_label_87
              end
              workValue62 = arg1.type
              if "breakdown" ~= workValue62 then
                workValue62 = arg1.type
                if "equipment" ~= workValue62 then
                  goto flow_label_65
                end
              end
              workValue62 = workValue52
              workValue66 = arg1
              workValue62 = workValue62(workValue66)
              if workValue62 then
                workValue62 = nil
                workValue66 = nil
                arg5 = nil
                arg4 = workValue66
                arg3 = workValue62
              else
                ::flow_label_65::
                workValue62 = GetEntityCoords
                workValue66 = arg7
                flag25 = true
                -- Beginner: result below is entityCoords.
                workValue62 = workValue62(workValue66, flag25)
                workValue66 = workValue62.x
                flag25 = workValue62.y
                arg5 = workValue62.z
                arg4 = flag25
                arg3 = workValue66
              end
          end
        end
        else
          arg7 = arg1.spawnX
          if arg7 then
            arg7 = arg1.spawnX
            arg3 = arg7 + 0.0
            arg7 = arg1.spawnY
            arg4 = arg7 + 0.0
            arg7 = arg1.spawnZ
            arg5 = arg7 + 0.0
          end
        end
        ::flow_label_87::
        if arg3 then
          arg6 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg6 = arg6()
          arg7 = GetEntityCoords
          workValue62 = arg6
          workValue66 = true
          -- Beginner: result below is entityCoords.
          arg7 = arg7(workValue62, workValue66)
          workValue62 = vector3
          workValue66 = arg3 + 0.0
          flag25 = arg4 + 0.0
          flag = arg5 + 0.0
          workValue62 = workValue62(workValue66, flag25, flag)
          workValue62 = arg7 - workValue62
          workValue62 = #workValue62
          workValue66 = numberValue12
          if workValue62 < workValue66 then
            arg2 = 0
            workValue66 = DrawMarker
            flag25 = 1
            flag = arg3 + 0.0
            flag2 = arg4 + 0.0
            flag4 = arg5 - 1.0
            flag5 = 0.0
            flag6 = 0.0
            flag7 = 0.0
            flag8 = 0.0
            flag9 = 0.0
            flag10 = 0.0
            numberValue3 = numberValue13
            flag11 = numberValue13
            flag12 = numberValue14
            flag13 = 255
            flag14 = 210
            flag15 = 72
            flag16 = 150
            flag17 = false
            numberValue7 = false
            flag18 = 2
            flag19 = false
            flag20 = nil
            numberValue9 = nil
            flag21 = false
            workValue66(flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21)
            if workValue62 < 22.0 then
              workValue66 = arg1.type
              if "breakdown" ~= workValue66 then
                workValue66 = arg1.type
                if "equipment" ~= workValue66 then
                  goto flow_label_168
                end
              end
              workValue66 = workValue52
              flag25 = arg1
              workValue66 = workValue66(flag25)
              if not workValue66 then
                workValue66 = workValue53
                workValue66 = workValue66()
                if "tow" == workValue66 then
                  flag25 = workValue31
                  flag = "Use ~INPUT_VEH_FLY_PITCH_DOWN_ONLY~ to lower the tow hook, ~INPUT_VEH_FLY_PITCH_UP_ONLY~ to raise."
                  flag25(flag)
                elseif "flatbed" == workValue66 then
                  flag25 = workValue31
                  flag = "Press ~INPUT_CONTEXT~ on the target vehicle to attach it to your flatbed"
                  flag25(flag)
                else
                  flag25 = workValue31
                  flag = "~y~Flatbed:~w~ ~INPUT_CONTEXT~ on the vehicle. ~y~Tow truck:~w~ ~INPUT_VEH_FLY_PITCH_DOWN_ONLY~ / ~INPUT_VEH_FLY_PITCH_UP_ONLY~ for the hook, then reverse to attach"
                  flag25(flag)
                end
              end
            end
          end
        end
      end
    end
    ::flow_label_168::
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = arg2
    arg3(arg4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue7(workValue59)
textValue7 = Citizen
textValue7 = textValue7.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: none) ===
function workValue59()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23
  while true do
    arg1 = workValue19
    arg2 = 1200
    if arg1 then
      arg3 = CMG
      arg3 = arg3.hasClientPermission
      arg4 = "aa.onduty.permission"
      arg3 = arg3(arg4)
      if arg3 then
        arg3 = workValue51
        arg4 = arg1
        arg3 = arg3(arg4)
        if arg3 then
          arg3 = eventRegistration.x
          arg3 = arg3 + 0.0
          arg4 = eventRegistration.y
          arg4 = arg4 + 0.0
          arg5 = eventRegistration.z
          arg5 = arg5 + 0.0
          arg6 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg6 = arg6()
          arg7 = GetEntityCoords
          workValue62 = arg6
          workValue66 = true
          -- Beginner: result below is entityCoords.
          arg7 = arg7(workValue62, workValue66)
          workValue62 = GetGroundZFor_3dCoord
          workValue66 = arg3
          flag25 = arg4
          flag = arg5 + 80.0
          flag2 = 0.0
          flag4 = false
          workValue62, workValue66 = workValue62(workValue66, flag25, flag, flag2, flag4)
          if workValue66 and workValue66 > 0.0 then
            flag25 = workValue66 + 0.12
            if flag25 then
              goto flow_label_48
            end
          end
          flag25 = arg5
          ::flow_label_48::
          flag = vector3
          flag2 = arg3
          flag4 = arg4
          flag5 = flag25
          flag = flag(flag2, flag4, flag5)
          flag = arg7 - flag
          flag = #flag
          flag2 = numberValue12
          if flag < flag2 then
            arg2 = 0
            flag2 = DrawMarker
            flag4 = 1
            flag5 = arg3
            flag6 = arg4
            flag7 = flag25 - 0.35
            flag8 = 0.0
            flag9 = 0.0
            flag10 = 0.0
            numberValue3 = 0.0
            flag11 = 0.0
            flag12 = 0.0
            flag13 = numberValue17
            flag14 = numberValue17
            flag15 = numberValue18
            flag16 = 72
            flag17 = 255
            numberValue7 = 140
            flag18 = 195
            flag19 = false
            flag20 = false
            numberValue9 = 2
            flag21 = false
            flag22 = nil
            numberValue11 = nil
            flag23 = false
            flag2(flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23)
          end
          flag2 = workValue52
          flag4 = arg1
          flag2 = flag2(flag4)
          if flag2 then
            flag2 = numberValue19
            if flag < flag2 then
              arg2 = 0
              flag2 = workValue31
              flag4 = workValue54
              flag5 = arg1
              flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23 = flag4(flag5)
              flag2(flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23)
            end
          end
        end
      end
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = arg2
    arg3(arg4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue7(workValue59)
textValue7 = Citizen
textValue7 = textValue7.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: none) ===
function workValue59()
  local arg1, arg2, arg3
  while true do
    arg1 = workValue19
    if arg1 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "aa.onduty.permission"
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = workValue28
        arg3 = arg1
        arg2(arg3)
        arg2 = Citizen
        arg2 = arg2.Wait
        arg3 = 0
        arg2(arg3)
    end
    else
      arg2 = workValue27
      arg2()
      arg2 = Citizen
      arg2 = arg2.Wait
      arg3 = 1200
      arg2(arg3)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue7(workValue59)

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetVehiclePedIsIn
  arg3 = arg1
  arg4 = false
  -- Beginner: result below is currentVehicle.
  arg2 = arg2(arg3, arg4)
  if 0 ~= arg2 then
    arg3 = GetPedInVehicleSeat
    arg4 = arg2
    arg5 = -1
    arg3 = arg3(arg4, arg5)
    if arg3 == arg1 then
      arg3 = GetEntityModel
      arg4 = arg2
      -- Beginner: result below is modelHash.
      arg3 = arg3(arg4)
      arg4 = workValue11
      arg3 = arg4[arg3]
      if arg3 then
        return arg2
      end
    end
  end
  arg3 = 0
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue59; parameters: arg1) ===
function workValue59(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetEntityCoords
  arg4 = arg2
  arg5 = true
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, arg5)
  arg4 = 0
  arg5 = arg1 + 0.01
  arg6 = pairs
  arg7 = GetGamePool
  workValue62 = "CVehicle"
  arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7 = arg7(workValue62)
  arg6, arg7, workValue62, workValue66 = arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7)
  for flag25, flag in arg6, arg7, workValue62, workValue66 do
    if 0 ~= flag then
      flag2 = DoesEntityExist
      flag4 = flag
      flag2 = flag2(flag4)
      if flag2 then
        flag2 = GetEntityModel
        flag4 = flag
        -- Beginner: result below is modelHash.
        flag2 = flag2(flag4)
        flag4 = workValue11
        flag2 = flag4[flag2]
        if flag2 then
          flag2 = GetOffsetFromEntityInWorldCoords
          flag4 = flag
          flag5 = 0.0
          flag6 = -3.85
          flag7 = 0.55
          flag2 = flag2(flag4, flag5, flag6, flag7)
          flag4 = arg3 - flag2
          flag4 = #flag4
          if arg5 > flag4 then
            arg5 = flag4
            arg4 = flag
          end
        end
      end
    end
  end
  arg6 = arg4
  arg7 = arg5
  return arg6, arg7
end

-- === HELPER FUNCTION (decompiler name: workValue60; parameters: arg1) ===
function workValue60(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetEntityCoords
  arg4 = arg2
  arg5 = true
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, arg5)
  arg4 = 0
  arg5 = arg1 + 0.01
  arg6 = pairs
  arg7 = GetGamePool
  workValue62 = "CVehicle"
  arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7 = arg7(workValue62)
  arg6, arg7, workValue62, workValue66 = arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7)
  for flag25, flag in arg6, arg7, workValue62, workValue66 do
    if 0 ~= flag then
      flag2 = DoesEntityExist
      flag4 = flag
      flag2 = flag2(flag4)
      if flag2 then
        flag2 = IsEntityAVehicle
        flag4 = flag
        flag2 = flag2(flag4)
        if flag2 then
          flag2 = GetOffsetFromEntityInWorldCoords
          flag4 = flag
          flag5 = 0.0
          flag6 = -3.25
          flag7 = 0.55
          flag2 = flag2(flag4, flag5, flag6, flag7)
          flag4 = arg3 - flag2
          flag4 = #flag4
          if arg5 > flag4 then
            arg5 = flag4
            arg4 = flag
          end
        end
      end
    end
  end
  arg6 = arg4
  arg7 = arg5
  return arg6, arg7
end
threadCall2 = Citizen
threadCall2 = threadCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24
  while true do
    arg1 = workValue19
    if arg1 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "aa.onduty.permission"
      arg2 = arg2(arg3)
      if arg2 then
        goto flow_label_19
      end
    end
    if not arg1 then
      arg2 = nil
      workValue22 = arg2
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 1200
    arg2(arg3)
    goto flow_label_866
    ::flow_label_19::
    arg2 = arg1.type
    if "debris" ~= arg2 then
      arg2 = nil
      workValue22 = arg2
    end
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = GetEntityCoords
    arg4 = arg2
    arg5 = true
    -- Beginner: result below is entityCoords.
    arg3 = arg3(arg4, arg5)
    arg4 = 600
    arg5 = arg1.type
    if "debris" == arg5 then
      arg5 = type
      arg6 = arg1.anchor
      arg5 = arg5(arg6)
      if "table" == arg5 then
        arg5 = type
        arg6 = arg1.anchor
        arg6 = arg6.x
        arg5 = arg5(arg6)
        if "number" == arg5 then
          arg5 = arg1.mainSecured
          if not arg5 then
            arg5 = arg1.anchor
            arg5 = arg5.x
            arg5 = arg5 + 0.0
            arg6 = arg1.anchor
            arg6 = arg6.y
            arg6 = arg6 + 0.0
            arg7 = arg1.anchor
            arg7 = arg7.z
            arg7 = arg7 + 0.0
            workValue62 = vector3
            workValue66 = arg5
            flag25 = arg6
            flag = arg7
            workValue62 = workValue62(workValue66, flag25, flag)
            workValue62 = arg3 - workValue62
            workValue62 = #workValue62
            if workValue62 < 42.0 then
              arg4 = 0
              workValue66 = DrawMarker
              flag25 = 1
              flag = arg5
              flag2 = arg6
              flag4 = arg7 - 1.0
              flag5 = 0.0
              flag6 = 0.0
              flag7 = 0.0
              flag8 = 0.0
              flag9 = 0.0
              flag10 = 0.0
              numberValue3 = 3.2
              flag11 = 3.2
              flag12 = 1.1
              flag13 = 200
              flag14 = 200
              flag15 = 80
              flag16 = 110
              flag17 = false
              numberValue7 = false
              flag18 = 2
              flag19 = false
              flag20 = nil
              numberValue9 = nil
              flag21 = false
              workValue66(flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21)
            end
            workValue66 = tonumber
            flag25 = arg1.carryingSecondarySlot
            workValue66 = workValue66(flag25)
            if workValue66 then
              flag25 = workValue59
              flag = 5.5
              flag25, flag = flag25(flag)
              if 0 ~= flag25 then
                flag2 = GetVehiclePedIsIn
                flag4 = arg2
                flag5 = false
                -- Beginner: result below is currentVehicle.
                flag2 = flag2(flag4, flag5)
                if 0 == flag2 then
                  arg4 = 0
                  flag2 = 4.2
                  if flag < flag2 then
                    flag2 = workValue31
                    flag4 = "~INPUT_CONTEXT~ to stack it on the bed"
                    flag2(flag4)
                    flag2 = IsControlJustPressed
                    flag4 = 0
                    flag5 = 51
                    flag2 = flag2(flag4, flag5)
                    if flag2 then
                      flag2 = workValue66
                      flag4 = flag25
                      flag5 = DoesEntityExist
                      flag6 = flag4
                      flag5 = flag5(flag6)
                      if flag5 then
                        flag5 = workValue39
                        flag6 = flag4
                        flag7 = flag2
                        flag5 = flag5(flag6, flag7)
                        if flag5 then
                          flag5 = TriggerServerEvent
                          flag6 = "9e60778b9c"
                          flag7 = NetworkGetNetworkIdFromEntity
                          flag8 = flag4
                          flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24 = flag7(flag8)
                          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9e60778b9c".
                          flag5(flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24)
                        end
                      end
                      flag5 = Citizen
                      flag5 = flag5.Wait
                      flag6 = 800
                      flag5(flag6)
                    end
                  else
                    flag2 = workValue31
                    flag4 = "Take it to the back of the flatbed"
                    flag2(flag4)
                  end
                end
              end
            else
              flag25 = nil
              flag = 2.85
              flag2 = pairs
              flag4 = dataTable2
              flag2, flag4, flag5, flag6 = flag2(flag4)
              for flag7, flag8 in flag2, flag4, flag5, flag6 do
                if flag8 and 0 ~= flag8 then
                  flag9 = DoesEntityExist
                  flag10 = flag8
                  flag9 = flag9(flag10)
                  if flag9 then
                    flag9 = cmgCall4
                    flag10 = arg1
                    numberValue3 = flag7
                    flag9 = flag9(flag10, numberValue3)
                    if not flag9 then
                      flag9 = GetEntityCoords
                      flag10 = flag8
                      numberValue3 = true
                      -- Beginner: result below is entityCoords.
                      flag9 = flag9(flag10, numberValue3)
                      flag10 = arg3 - flag9
                      flag10 = #flag10
                      if flag > flag10 then
                        flag = flag10
                        flag25 = flag7
                      end
                    end
                  end
                end
              end
              if flag25 then
                flag2 = GetVehiclePedIsIn
                flag4 = arg2
                flag5 = false
                -- Beginner: result below is currentVehicle.
                flag2 = flag2(flag4, flag5)
                if 0 == flag2 then
                  flag2 = 2.75
                  if flag < flag2 then
                    arg4 = 0
                    flag2 = workValue31
                    flag4 = "~INPUT_CONTEXT~ to grab a piece of debris"
                    flag2(flag4)
                    flag2 = IsControlJustPressed
                    flag4 = 0
                    flag5 = 51
                    flag2 = flag2(flag4, flag5)
                    if flag2 then
                      flag2 = TriggerServerEvent
                      flag4 = "c6e44e597f"
                      flag5 = flag25
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c6e44e597f".
                      flag2(flag4, flag5)
                      flag2 = Citizen
                      flag2 = flag2.Wait
                      flag4 = 800
                      flag2(flag4)
                    end
                  end
                end
              end
            end
            flag25 = workValue34
            flag = arg1
            flag25 = flag25(flag)
            if flag25 then
              flag25 = tonumber
              flag = arg1.carryingSecondarySlot
              flag25 = flag25(flag)
              if not flag25 then
                flag25 = tostring
                flag = arg1.contractId
                if not flag then
                  flag = ""
                end
                flag25 = flag25(flag)
                if "" == flag25 then
                  flag25 = "debris"
                end
                flag = workValue22
                if flag ~= flag25 then
                  workValue22 = flag25
                  flag = drawNativeNotification
                  flag2 = "Junk's cleared. Jump in the ~y~flatbed~w~, tuck up to the shell, ~y~winch~w~ it on (~INPUT_CONTEXT~)."
                  flag4 = false
                  -- Beginner: Show a GTA-style notification/help prompt.
                  flag(flag2, flag4)
                end
              end
            end
            flag25 = workValue34
            flag = arg1
            flag25 = flag25(flag)
            if flag25 then
              flag25 = numberValue
              if 0 ~= flag25 then
                flag25 = DoesEntityExist
                flag = numberValue
                flag25 = flag25(flag)
                if flag25 then
                  flag25 = textValue7
                  flag25 = flag25()
                  flag = GetEntityCoords
                  flag2 = numberValue
                  flag4 = true
                  -- Beginner: result below is entityCoords.
                  flag = flag(flag2, flag4)
                  if 0 ~= flag25 then
                    flag2 = GetEntityCoords
                    flag4 = flag25
                    flag5 = true
                    -- Beginner: result below is entityCoords.
                    flag2 = flag2(flag4, flag5)
                    flag2 = flag2 - flag
                    flag2 = #flag2
                    flag4 = 13.5
                    if flag2 < flag4 then
                      arg4 = 0
                      flag4 = DrawMarker
                      flag5 = 1
                      flag6 = flag.x
                      flag7 = flag.y
                      flag8 = flag.z
                      flag8 = flag8 - 0.5
                      flag9 = 0.0
                      flag10 = 0.0
                      numberValue3 = 0.0
                      flag11 = 0.0
                      flag12 = 0.0
                      flag13 = 0.0
                      flag14 = 2.0
                      flag15 = 2.0
                      flag16 = 0.8
                      flag17 = 255
                      numberValue7 = 180
                      flag18 = 64
                      flag19 = 130
                      flag20 = false
                      numberValue9 = false
                      flag21 = 2
                      flag22 = false
                      numberValue11 = nil
                      flag23 = nil
                      flag24 = false
                      flag4(flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24)
                      flag4 = workValue31
                      flag5 = "~INPUT_CONTEXT~ to winch the vehicle onto the flatbed"
                      flag4(flag5)
                      flag4 = IsControlJustPressed
                      flag5 = 0
                      flag6 = 51
                      flag4 = flag4(flag5, flag6)
                      if flag4 then
                        flag4 = DoesEntityExist
                        flag5 = numberValue
                        flag4 = flag4(flag5)
                        if flag4 then
                          flag4 = DoesEntityExist
                          flag5 = flag25
                          flag4 = flag4(flag5)
                          if flag4 then
                            flag4 = tonumber
                            flag5 = cmgCall.debrisMainFlatbedBone
                            flag4 = flag4(flag5)
                            if not flag4 then
                              flag4 = 20
                            end
                            flag5 = workValue38
                            flag6 = arg1.mainModel
                            flag5 = flag5(flag6)
                            flag6 = tonumber
                            flag7 = flag5.ox
                            flag6 = flag6(flag7)
                            if not flag6 then
                              flag6 = 0.0
                            end
                            flag7 = tonumber
                            flag8 = flag5.oy
                            flag7 = flag7(flag8)
                            if not flag7 then
                              flag7 = 0.0
                            end
                            flag8 = tonumber
                            flag9 = flag5.oz
                            flag8 = flag8(flag9)
                            if not flag8 then
                              flag8 = 0.0
                            end
                            flag9 = tonumber
                            flag10 = flag5.rx
                            flag9 = flag9(flag10)
                            if not flag9 then
                              flag9 = 0.0
                            end
                            flag10 = tonumber
                            numberValue3 = flag5.ry
                            flag10 = flag10(numberValue3)
                            if not flag10 then
                              flag10 = 0.0
                            end
                            numberValue3 = tonumber
                            flag11 = flag5.rz
                            numberValue3 = numberValue3(flag11)
                            if not numberValue3 then
                              numberValue3 = 0.0
                            end
                            flag11 = FreezeEntityPosition
                            flag12 = numberValue
                            flag13 = false
                            -- Beginner: Freeze or unfreeze an entity in place.
                            flag11(flag12, flag13)
                            flag11 = DetachEntity
                            flag12 = numberValue
                            flag13 = true
                            flag14 = true
                            flag11(flag12, flag13, flag14)
                            flag11 = AttachEntityToEntity
                            flag12 = numberValue
                            flag13 = flag25
                            flag14 = flag4
                            flag15 = flag6
                            flag16 = flag7
                            flag17 = flag8
                            numberValue7 = flag9
                            flag18 = flag10
                            flag19 = numberValue3
                            flag20 = false
                            numberValue9 = false
                            flag21 = false
                            flag22 = false
                            numberValue11 = 2
                            flag23 = true
                            -- Beginner: Attach one entity to another entity.
                            flag11(flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23)
                            flag11 = TriggerServerEvent
                            flag12 = "62a9a8a2cb"
                            flag13 = NetworkGetNetworkIdFromEntity
                            flag14 = flag25
                            flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24 = flag13(flag14)
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62a9a8a2cb".
                            flag11(flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24)
                          end
                        end
                        flag4 = Citizen
                        flag4 = flag4.Wait
                        flag5 = 800
                        flag4(flag5)
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
      arg5 = arg1.type
      if "debris" == arg5 then
        arg5 = arg1.mainSecured
        if arg5 then
          arg5 = arg1.debrisDepotComplete
          if true ~= arg5 then
            arg5 = eventRegistration.x
            arg5 = arg5 + 0.0
            arg6 = eventRegistration.y
            arg6 = arg6 + 0.0
            arg7 = eventRegistration.z
            arg7 = arg7 + 0.0
            workValue62 = vector3
            workValue66 = arg5
            flag25 = arg6
            flag = arg7
            workValue62 = workValue62(workValue66, flag25, flag)
            workValue66 = GetGroundZFor_3dCoord
            flag25 = arg5
            flag = arg6
            flag2 = arg7 + 80.0
            flag4 = 0.0
            flag5 = false
            workValue66, flag25 = workValue66(flag25, flag, flag2, flag4, flag5)
            if flag25 and flag25 > 0.0 then
              flag = flag25 + 0.12
              if flag then
                goto flow_label_445
              end
            end
            flag = arg7
            ::flow_label_445::
            flag2 = vector3
            flag4 = arg5
            flag5 = arg6
            flag6 = flag
            flag2 = flag2(flag4, flag5, flag6)
            flag2 = arg3 - flag2
            flag2 = #flag2
            flag4 = numberValue12
            if flag2 < flag4 then
              arg4 = 0
              flag4 = DrawMarker
              flag5 = 1
              flag6 = arg5
              flag7 = arg6
              flag8 = flag - 0.35
              flag9 = 0.0
              flag10 = 0.0
              numberValue3 = 0.0
              flag11 = 0.0
              flag12 = 0.0
              flag13 = 0.0
              flag14 = numberValue17
              flag15 = numberValue17
              flag16 = numberValue18
              flag17 = 72
              numberValue7 = 255
              flag18 = 140
              flag19 = 195
              flag20 = false
              numberValue9 = false
              flag21 = 2
              flag22 = false
              numberValue11 = nil
              flag23 = nil
              flag24 = false
              flag4(flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24)
            end
            flag4 = textValue7
            flag4 = flag4()
            if 0 ~= flag4 then
              flag5 = tonumber
              flag6 = cmgCall.debrisDepotDeliverRadius
              flag5 = flag5(flag6)
              if not flag5 then
                flag5 = 24.0
              end
              flag6 = GetEntityCoords
              flag7 = flag4
              flag8 = true
              -- Beginner: result below is entityCoords.
              flag6 = flag6(flag7, flag8)
              flag6 = flag6 - workValue62
              flag6 = #flag6
              if flag5 >= flag6 and flag2 < 85.0 then
                arg4 = 0
                flag6 = workValue31
                flag7 = "~INPUT_CONTEXT~ to sign the load in at the yard"
                flag6(flag7)
                flag6 = IsControlJustPressed
                flag7 = 0
                flag8 = 51
                flag6 = flag6(flag7, flag8)
                if flag6 then
                  flag6 = TriggerServerEvent
                  flag7 = "b44a868830"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b44a868830".
                  flag6(flag7)
                  flag6 = Citizen
                  flag6 = flag6.Wait
                  flag7 = 800
                  flag6(flag7)
                end
              end
            end
        end
      end
      else
        arg5 = arg1.type
        if "parts_run" == arg5 then
          arg5 = tonumber
          arg6 = arg1.stage
          arg5 = arg5(arg6)
          if not arg5 then
            arg5 = 1
          end
          if 1 == arg5 then
            arg6 = arg1.pickup
            if arg6 then
              goto flow_label_537
            end
          end
          arg6 = arg1.dropoff
          ::flow_label_537::
          if arg6 then
            arg7 = arg6.x
            if arg7 then
              arg7 = vector3
              workValue62 = arg6.x
              workValue66 = arg6.y
              flag25 = arg6.z
              arg7 = arg7(workValue62, workValue66, flag25)
              arg7 = arg3 - arg7
              arg7 = #arg7
              if arg7 < 35.0 then
                arg4 = 0
                workValue62 = DrawMarker
                workValue66 = 1
                flag25 = arg6.x
                flag = arg6.y
                flag2 = arg6.z
                flag2 = flag2 - 1.0
                flag4 = 0.0
                flag5 = 0.0
                flag6 = 0.0
                flag7 = 0.0
                flag8 = 0.0
                flag9 = 0.0
                flag10 = 2.2
                numberValue3 = 2.2
                flag11 = 1.0
                flag12 = 80
                flag13 = 160
                flag14 = 255
                flag15 = 110
                flag16 = false
                flag17 = false
                numberValue7 = 2
                flag18 = false
                flag19 = nil
                flag20 = nil
                numberValue9 = false
                workValue62(workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9)
              end
              if 1 == arg5 then
                workValue62 = 2.5
                if arg7 < workValue62 then
                  workValue62 = IsPedInAnyVehicle
                  workValue66 = arg2
                  flag25 = false
                  workValue62 = workValue62(workValue66, flag25)
                  if not workValue62 then
                    workValue62 = workValue31
                    workValue66 = "~INPUT_CONTEXT~ to collect the order"
                    workValue62(workValue66)
                    workValue62 = IsControlJustPressed
                    workValue66 = 0
                    flag25 = 51
                    workValue62 = workValue62(workValue66, flag25)
                    if workValue62 then
                      workValue62 = TriggerServerEvent
                      workValue66 = "7c931c7bd2"
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c931c7bd2".
                      workValue62(workValue66)
                      workValue62 = Citizen
                      workValue62 = workValue62.Wait
                      workValue66 = 800
                      workValue62(workValue66)
                    end
                end
                else
                  workValue62 = 2.5
                  if arg7 < workValue62 then
                    workValue62 = IsPedInAnyVehicle
                    workValue66 = arg2
                    flag25 = false
                    workValue62 = workValue62(workValue66, flag25)
                    if workValue62 then
                      workValue62 = workValue31
                      workValue66 = "Hop out to grab the order."
                      workValue62(workValue66)
                    end
                  end
                end
              elseif 2 == arg5 then
                arg4 = 0
                workValue62 = workValue60
                workValue66 = 5.5
                workValue62, workValue66 = workValue62(workValue66)
                flag25 = IsPedInAnyVehicle
                flag = arg2
                flag2 = false
                flag25 = flag25(flag, flag2)
                if flag25 then
                  flag25 = workValue31
                  flag = "Out of the cab, then load at the rear."
                  flag25(flag)
                else
                  if 0 ~= workValue62 then
                    flag25 = 4.2
                    if workValue66 < flag25 then
                      flag25 = workValue31
                      flag = "~INPUT_CONTEXT~ to chuck it in the boot"
                      flag25(flag)
                      flag25 = IsControlJustPressed
                      flag = 0
                      flag2 = 51
                      flag25 = flag25(flag, flag2)
                      if flag25 then
                        flag25 = TriggerServerEvent
                        flag = "7c931c7bd2"
                        flag2 = NetworkGetNetworkIdFromEntity
                        flag4 = workValue62
                        flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24 = flag2(flag4)
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c931c7bd2".
                        flag25(flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24)
                        flag25 = Citizen
                        flag25 = flag25.Wait
                        flag = 800
                        flag25(flag)
                      end
                  end
                  else
                    flag25 = workValue31
                    flag = "Bring the box to the ~y~rear of your ride~w~."
                    flag25(flag)
                  end
                end
              elseif 3 == arg5 then
                if arg7 < 35.0 then
                  arg4 = 0
                end
                workValue62 = workValue60
                workValue66 = 5.5
                workValue62, workValue66 = workValue62(workValue66)
                flag25 = IsPedInAnyVehicle
                flag = arg2
                flag2 = false
                flag25 = flag25(flag, flag2)
                if flag25 and arg7 < 14.0 then
                  flag25 = workValue31
                  flag = "Park up, hop out, grab it from the boot."
                  flag25(flag)
                elseif arg7 < 14.0 and 0 ~= workValue62 then
                  flag25 = 4.2
                  if workValue66 < flag25 then
                    arg4 = 0
                    flag25 = workValue31
                    flag = "~INPUT_CONTEXT~ to pull the box from the boot"
                    flag25(flag)
                    flag25 = IsControlJustPressed
                    flag = 0
                    flag2 = 51
                    flag25 = flag25(flag, flag2)
                    if flag25 then
                      flag25 = TriggerServerEvent
                      flag = "7c931c7bd2"
                      flag2 = NetworkGetNetworkIdFromEntity
                      flag4 = workValue62
                      flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24 = flag2(flag4)
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c931c7bd2".
                      flag25(flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9, flag21, flag22, numberValue11, flag23, flag24)
                      flag25 = Citizen
                      flag25 = flag25.Wait
                      flag = 800
                      flag25(flag)
                    end
                  end
                end
              elseif 4 == arg5 then
                workValue62 = 2.5
                if arg7 < workValue62 then
                  workValue62 = IsPedInAnyVehicle
                  workValue66 = arg2
                  flag25 = false
                  workValue62 = workValue62(workValue66, flag25)
                  if not workValue62 then
                    workValue62 = workValue31
                    workValue66 = "~INPUT_CONTEXT~ to hand it over"
                    workValue62(workValue66)
                    workValue62 = IsControlJustPressed
                    workValue66 = 0
                    flag25 = 51
                    workValue62 = workValue62(workValue66, flag25)
                    if workValue62 then
                      workValue62 = TriggerServerEvent
                      workValue66 = "7c931c7bd2"
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7c931c7bd2".
                      workValue62(workValue66)
                      workValue62 = Citizen
                      workValue62 = workValue62.Wait
                      workValue66 = 800
                      workValue62(workValue66)
                    end
                end
                else
                  workValue62 = 2.5
                  if arg7 < workValue62 then
                    workValue62 = IsPedInAnyVehicle
                    workValue66 = arg2
                    flag25 = false
                    workValue62 = workValue62(workValue66, flag25)
                    if workValue62 then
                      workValue62 = workValue31
                      workValue66 = "Exit the vehicle for the handover."
                      workValue62(workValue66)
                    end
                  end
                end
              end
            end
          end
        else
          arg5 = arg1.type
          if "fuel_runout" == arg5 then
            arg5 = arg1.vehicleNetId
            if arg5 then
              arg5 = tonumber
              arg6 = arg1.vehicleNetId
              arg5 = arg5(arg6)
              if arg5 then
                arg6 = NetworkDoesNetworkIdExist
                arg7 = arg5
                arg6 = arg6(arg7)
                if arg6 then
                  arg6 = NetworkDoesEntityExistWithNetworkId
                  arg7 = arg5
                  arg6 = arg6(arg7)
                  if arg6 then
                    arg6 = NetworkGetEntityFromNetworkId
                    arg7 = arg5
                    arg6 = arg6(arg7)
                    if 0 ~= arg6 then
                      arg7 = DoesEntityExist
                      workValue62 = arg6
                      arg7 = arg7(workValue62)
                      if arg7 then
                        arg7 = GetEntityCoords
                        workValue62 = arg6
                        workValue66 = true
                        -- Beginner: result below is entityCoords.
                        arg7 = arg7(workValue62, workValue66)
                        workValue62 = arg3 - arg7
                        workValue62 = #workValue62
                        if workValue62 < 18.0 then
                          arg4 = 0
                        end
                        workValue66 = 3.2
                        if workValue62 < workValue66 then
                          workValue66 = IsPedInAnyVehicle
                          flag25 = arg2
                          flag = false
                          workValue66 = workValue66(flag25, flag)
                          if not workValue66 then
                            workValue66 = tonumber
                            flag25 = workValue23
                            workValue66 = workValue66(flag25)
                            if workValue66 ~= arg5 then
                              workValue66 = workValue31
                              flag25 = "~INPUT_CONTEXT~ to top up their tank"
                              workValue66(flag25)
                              workValue66 = IsControlJustPressed
                              flag25 = 0
                              flag = 51
                              workValue66 = workValue66(flag25, flag)
                              if workValue66 then
                                workValue66 = workValue25
                                flag25 = arg5
                                workValue66(flag25)
                                workValue66 = Citizen
                                workValue66 = workValue66.Wait
                                flag25 = 800
                                workValue66(flag25)
                              end
                          end
                        end
                        else
                          workValue66 = tonumber
                          flag25 = workValue23
                          workValue66 = workValue66(flag25)
                          if workValue66 == arg5 then
                            workValue66 = workValue31
                            flag25 = "Hang tight till the pour's done."
                            workValue66(flag25)
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
    arg5 = arg1.type
    if "debris" == arg5 then
      arg5 = numberValue2
      if 0 ~= arg5 then
        arg5 = DoesEntityExist
        arg6 = numberValue2
        arg5 = arg5(arg6)
        if arg5 then
          arg5 = tonumber
          arg6 = arg1.carryingSecondarySlot
          arg5 = arg5(arg6)
          if arg5 then
            arg5 = GetVehiclePedIsIn
            arg6 = arg2
            arg7 = false
            -- Beginner: result below is currentVehicle.
            arg5 = arg5(arg6, arg7)
            if 0 == arg5 then
              arg5 = workValue30
              arg5()
            else
              arg5 = workValue29
              arg5()
            end
          end
        end
      end
    end
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = arg4
    arg5(arg6)
    ::flow_label_866::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall2(textValue8)
threadCall2 = Citizen
threadCall2 = threadCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8
  while true do
    arg1 = tonumber
    arg2 = workValue23
    arg1 = arg1(arg2)
    if arg1 then
      arg2 = NetworkDoesNetworkIdExist
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        arg3 = NetworkGetEntityFromNetworkId
        arg4 = arg1
        arg3 = arg3(arg4)
        if 0 ~= arg2 and 0 ~= arg3 then
          arg4 = DoesEntityExist
          arg5 = arg3
          arg4 = arg4(arg5)
          if arg4 then
            goto flow_label_33
          end
        end
        arg4 = workValue24
        arg4()
        arg4 = Citizen
        arg4 = arg4.Wait
        arg5 = 0
        arg4(arg5)
        goto flow_label_108
        ::flow_label_33::
        arg4 = GetEntityCoords
        arg5 = arg2
        arg6 = true
        -- Beginner: result below is entityCoords.
        arg4 = arg4(arg5, arg6)
        arg5 = GetEntityCoords
        arg6 = arg3
        arg7 = true
        -- Beginner: result below is entityCoords.
        arg5 = arg5(arg6, arg7)
        arg6 = GetVehiclePedIsIn
        arg7 = arg2
        workValue62 = false
        -- Beginner: result below is currentVehicle.
        arg6 = arg6(arg7, workValue62)
        if 0 == arg6 then
          arg6 = arg4 - arg5
          arg6 = #arg6
          arg7 = 3.5
          if not (arg6 > arg7) then
            goto flow_label_64
          end
        end
        arg6 = workValue24
        arg6()
        arg6 = tCMG
        arg6 = arg6.notify
        arg7 = "~r~Refuel stopped."
        -- Beginner: Show a notification to the player.
        arg6(arg7)
        arg6 = Citizen
        arg6 = arg6.Wait
        arg7 = 0
        arg6(arg7)
        goto flow_label_108
        ::flow_label_64::
        arg6 = CMG
        arg6 = arg6.loadAnimDict
        arg7 = tableHelper
        -- Beginner: Load a GTA animation dictionary before using it.
        arg6(arg7)
        arg6 = IsEntityPlayingAnim
        arg7 = arg2
        workValue62 = tableHelper
        workValue66 = textValue4
        flag25 = 3
        arg6 = arg6(arg7, workValue62, workValue66, flag25)
        if not arg6 then
          arg6 = TaskPlayAnim
          arg7 = arg2
          workValue62 = tableHelper
          workValue66 = textValue4
          flag25 = 2.0
          flag = 8.0
          flag2 = -1
          flag4 = 50
          flag5 = 0.0
          flag6 = false
          flag7 = false
          flag8 = false
          -- Beginner: Play an animation on a ped.
          arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8)
        end
        arg6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg6 = arg6()
        arg7 = numberValue10
        if arg6 >= arg7 then
          arg6 = workValue24
          arg6()
          arg6 = TriggerServerEvent
          arg7 = "dfa22cde0c"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dfa22cde0c".
          arg6(arg7)
        end
        arg6 = Citizen
        arg6 = arg6.Wait
        arg7 = 0
        arg6(arg7)
    end
    else
      arg2 = Citizen
      arg2 = arg2.Wait
      arg3 = 1200
      arg2(arg3)
    end
    ::flow_label_108::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall2(textValue8)
threadCall2 = RegisterNetEvent
textValue8 = "c7dc2846b3"
-- Beginner: this function handles network event "c7dc2846b3".

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: arg1) ===
function workValue61(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = tonumber
  arg3 = arg1
  arg2 = arg2(arg3)
  arg1 = arg2
  if arg1 then
    arg2 = NetworkDoesNetworkIdExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_13
    end
  end
  return
  ::flow_label_13::
  arg2 = NetworkGetEntityFromNetworkId
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 ~= arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_24
    end
  end
  return
  ::flow_label_24::
  arg3 = workValue24
  arg3()
  arg3 = CMG
  arg3 = arg3.setVehicleFuel
  if arg3 then
    arg3 = CMG
    arg3 = arg3.setVehicleFuel
    arg4 = arg2
    arg5 = 72.0
    arg3(arg4, arg5)
  else
    arg3 = SetVehicleFuelLevel
    arg4 = arg2
    arg5 = 72.0
    arg3(arg4, arg5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c7dc2846b3".
threadCall2(textValue8, workValue61)
threadCall2 = RegisterNetEvent
textValue8 = "824c168eef"
-- Beginner: this function handles network event "824c168eef".

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: none) ===
function workValue61()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62
  arg1 = workValue19
  arg2 = arg1 or arg2
  if arg1 then
    arg2 = arg1.vehicleNetId
    if arg2 then
      arg2 = tonumber
      arg3 = arg1.vehicleNetId
      arg2 = arg2(arg3)
    end
  end
  arg3 = threadCall
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3()
  arg3 = workValue32
  arg3()
  arg3 = workValue27
  arg3()
  arg3 = workValue24
  arg3()
  arg3 = nil
  workValue18 = arg3
  arg3 = nil
  workValue19 = arg3
  arg3 = false
  flag3 = arg3
  if arg2 then
    arg3 = NetworkDoesNetworkIdExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = NetworkGetEntityFromNetworkId
      arg4 = arg2
      arg3 = arg3(arg4)
      if 0 ~= arg3 then
        arg4 = DoesEntityExist
        arg5 = arg3
        arg4 = arg4(arg5)
        if arg4 then
          arg4 = IsEntityAVehicle
          arg5 = arg3
          arg4 = arg4(arg5)
          if arg4 then
            arg4 = NetworkRequestControlOfEntity
            arg5 = arg3
            arg4(arg5)
            arg4 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            arg4 = arg4()
            arg4 = arg4 + 800
            while true do
              arg5 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              arg5 = arg5()
              if not (arg4 > arg5) then
                break
              end
              arg5 = NetworkHasControlOfEntity
              arg6 = arg3
              arg5 = arg5(arg6)
              if arg5 then
                break
              end
              arg5 = NetworkRequestControlOfEntity
              arg6 = arg3
              arg5(arg6)
              arg5 = Citizen
              arg5 = arg5.Wait
              arg6 = 0
              arg5(arg6)
            end
            arg5 = SetEntityAsMissionEntity
            arg6 = arg3
            arg7 = true
            workValue62 = true
            arg5(arg6, arg7, workValue62)
            arg5 = DeleteEntity
            arg6 = arg3
            -- Beginner: Delete a GTA entity.
            arg5(arg6)
          end
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "824c168eef".
threadCall2(textValue8, workValue61)
threadCall2 = RegisterNetEvent
textValue8 = "edaac23639"
-- Beginner: this function handles network event "edaac23639".

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: arg1) ===
function workValue61(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = tonumber
  arg3 = arg1
  arg2 = arg2(arg3)
  arg1 = arg2
  if arg1 then
    arg2 = NetworkDoesNetworkIdExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_13
    end
  end
  return
  ::flow_label_13::
  arg2 = NetworkGetEntityFromNetworkId
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 ~= arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = IsEntityAVehicle
      arg4 = arg2
      arg3 = arg3(arg4)
      if arg3 then
        goto flow_label_29
      end
    end
  end
  return
  ::flow_label_29::
  arg3 = NetworkRequestControlOfEntity
  arg4 = arg2
  arg3(arg4)
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg3 = arg3 + 800
  while true do
    arg4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg4 = arg4()
    if not (arg3 > arg4) then
      break
    end
    arg4 = NetworkHasControlOfEntity
    arg5 = arg2
    arg4 = arg4(arg5)
    if arg4 then
      break
    end
    arg4 = NetworkRequestControlOfEntity
    arg5 = arg2
    arg4(arg5)
    arg4 = Citizen
    arg4 = arg4.Wait
    arg5 = 0
    arg4(arg5)
  end
  arg4 = SetEntityAsMissionEntity
  arg5 = arg2
  arg6 = true
  arg7 = true
  arg4(arg5, arg6, arg7)
  arg4 = DeleteEntity
  arg5 = arg2
  -- Beginner: Delete a GTA entity.
  arg4(arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "edaac23639".
threadCall2(textValue8, workValue61)
threadCall2 = RegisterNetEvent
textValue8 = "a31d6248f4"
-- Beginner: this function handles network event "a31d6248f4".

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: arg1) ===
function workValue61(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "MECHANIC_LEVEL_LIST"
  arg4 = {}
  arg5 = arg1 or arg5
  if not arg1 then
    arg5 = {}
  end
  arg4.levels = arg5
  arg3.payload = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a31d6248f4".
threadCall2(textValue8, workValue61)
threadCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1, arg2) ===
function textValue8(arg1, arg2)
  local arg3, arg4, arg5, arg6
  if not arg2 or "" == arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.isJobTerminalOpen
  arg3 = arg3()
  if arg3 then
    arg3 = CMG
    arg3 = arg3.getClientJob
    arg3 = arg3()
    if "Mechanic" == arg3 then
      arg3 = CMG
      arg3 = arg3.uiSendMessage
      arg4 = {}
      arg4.action = "MECHANIC_JOB_NOTIFICATION"
      arg5 = {}
      arg6 = true == arg1
      arg5.success = arg6
      arg5.message = arg2
      arg4.payload = arg5
      arg3(arg4)
  end
  else
    if arg1 then
      arg3 = "~g~"
      if arg3 then
        goto flow_label_38
      end
    end
    arg3 = "~r~"
    ::flow_label_38::
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = arg3
    arg6 = arg2
    arg5 = arg5 .. arg6
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  end
end
threadCall2.showMechanicJobNuiNotify = textValue8
threadCall2 = RegisterNetEvent
textValue8 = "e9fb295005"
-- Beginner: this function handles network event "e9fb295005".

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: arg1, arg2) ===
function workValue61(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = CMG
  arg3 = arg3.showMechanicJobNuiNotify
  arg4 = arg1
  arg5 = arg2
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9fb295005".
threadCall2(textValue8, workValue61)
threadCall2 = CMG
threadCall2 = threadCall2.uiRegisterCallback
textValue8 = "mechanicJobRequestSync"

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: none) ===
function workValue61()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "5c8eb44f1a"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5c8eb44f1a".
  arg1(arg2)
end
threadCall2(textValue8, workValue61)
threadCall2 = CMG
threadCall2 = threadCall2.uiRegisterCallback
textValue8 = "getMechanicLevels"

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: none) ===
function workValue61()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "faf016b7ca"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "faf016b7ca".
  arg1(arg2)
end
threadCall2(textValue8, workValue61)
threadCall2 = CMG
threadCall2 = threadCall2.uiRegisterCallback
textValue8 = "getMechanicLeaderboard"

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: none) ===
function workValue61()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "5bfcf45d60"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5bfcf45d60".
  arg1(arg2)
end
threadCall2(textValue8, workValue61)
threadCall2 = RegisterNetEvent
textValue8 = "ded48a8b46"
-- Beginner: this function handles network event "ded48a8b46".

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: arg1) ===
function workValue61(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "MECHANIC_LEADERBOARD"
  arg4 = {}
  arg5 = arg1 or arg5
  if not arg1 then
    arg5 = {}
  end
  arg4.mechanics = arg5
  arg3.payload = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ded48a8b46".
threadCall2(textValue8, workValue61)
threadCall2 = CMG
threadCall2 = threadCall2.uiRegisterCallback
textValue8 = "mechanicJobStartBreakdown"

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: none) ===
function workValue61()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "b87fb49f5f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b87fb49f5f".
  arg1(arg2)
end
threadCall2(textValue8, workValue61)
threadCall2 = CMG
threadCall2 = threadCall2.uiRegisterCallback
textValue8 = "mechanicJobStartSolo"

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: arg1) ===
function workValue61(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = "table" == arg2 and arg2
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" ~= arg3 or "" == arg2 then
    return
  end
  arg3 = TriggerServerEvent
  arg4 = "9bd49860b5"
  arg5 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9bd49860b5".
  arg3(arg4, arg5)
end
threadCall2(textValue8, workValue61)
threadCall2 = CMG
threadCall2 = threadCall2.uiRegisterCallback
textValue8 = "mechanicJobCancelContract"

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: none) ===
function workValue61()
  local arg1, arg2
  arg1 = threadCall
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1()
  arg1 = workValue32
  arg1()
  arg1 = nil
  workValue18 = arg1
  arg1 = nil
  workValue19 = arg1
  arg1 = false
  flag3 = arg1
  arg1 = TriggerServerEvent
  arg2 = "421a80d091"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "421a80d091".
  arg1(arg2)
end
threadCall2(textValue8, workValue61)
threadCall2 = CMG
threadCall2 = threadCall2.uiRegisterCallback
textValue8 = "mechanicJobSetWaypointAgain"

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: none) ===
function workValue61()
  local arg1, arg2
  arg1 = workValue57
  arg1()
end
threadCall2(textValue8, workValue61)
threadCall2 = CMG
threadCall2 = threadCall2.uiRegisterCallback
textValue8 = "mechanicOpenCallManager"

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: none) ===
function workValue61()
  local arg1, arg2
  arg1 = TriggerEvent
  arg2 = "b4fcca60d5"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b4fcca60d5".
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.openCallManagerFromJobMenu
  arg1()
end
threadCall2(textValue8, workValue61)

-- === HELPER FUNCTION (decompiler name: threadCall2; parameters: arg1) ===
function threadCall2(arg1)
  local arg2, arg3, arg4
  if 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = IsEntityAVehicle
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        goto flow_label_15
      end
    end
  end
  arg2 = false
  return arg2
  ::flow_label_15::
  arg2 = CMG
  arg2 = arg2.getVehicleIdFromModel
  arg3 = GetEntityModel
  arg4 = arg1
  arg3, arg4 = arg3(arg4)
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg3 = cmgCall3.garages
    if arg3 then
      arg3 = cmgCall3.garages
      arg3 = arg3.Mechanics
      if arg3 then
        arg3 = cmgCall3.garages
        arg3 = arg3.Mechanics
        arg3 = arg3[arg2]
        if arg3 then
          arg3 = true
          return arg3
        end
      end
    end
  end
  arg3 = false
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue19
  if arg2 then
    arg3 = arg2.vehicleNetId
    if arg3 then
      goto flow_label_9
    end
  end
  arg3 = false
  return arg3
  ::flow_label_9::
  arg3 = tonumber
  arg4 = arg2.vehicleNetId
  arg3 = arg3(arg4)
  if arg3 then
    arg4 = NetworkDoesNetworkIdExist
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      goto flow_label_21
    end
  end
  arg4 = false
  return arg4
  ::flow_label_21::
  arg4 = NetworkGetEntityFromNetworkId
  arg5 = arg3
  arg4 = arg4(arg5)
  arg5 = 0 ~= arg4 and arg4 == arg1
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue61; parameters: arg1) ===
function workValue61(arg1)
  local arg2, arg3, arg4
  arg2 = threadCall2
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = textValue8
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      goto flow_label_13
    end
  end
  arg2 = true
  return arg2
  ::flow_label_13::
  if 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = IsEntityAVehicle
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        goto flow_label_27
      end
    end
  end
  arg2 = false
  return arg2
  ::flow_label_27::
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  if -956048545 == arg2 then
    arg3 = true
    return arg3
  end
  arg3 = workValue11
  arg3 = arg3[arg2]
  if not arg3 then
    arg3 = workValue16
    arg3 = arg3[arg2]
    if not arg3 then
      goto flow_label_44
    end
  end
  arg3 = true
  return arg3
  ::flow_label_44::
  arg3 = cmgCall.mechanicWorkVehicleModelHashes
  if arg3 then
    arg4 = arg3[arg2]
    if arg4 then
      arg4 = true
      return arg4
    end
  end
  arg4 = false
  return arg4
end
numberValue15 = 0
textValue9 = "~r~You can only use mechanic job vehicles whilst clocked on."
numberValue16 = 0

-- === HELPER FUNCTION (decompiler name: workValue64; parameters: arg1) ===
function workValue64(arg1)
  local arg2, arg3, arg4, arg5
  if 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg2 = NetworkRequestControlOfEntity
  arg3 = arg1
  arg2(arg3)
  arg2 = NetworkHasControlOfEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = SetEntityAsMissionEntity
    arg3 = arg1
    arg4 = true
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DeleteEntity
    arg3 = arg1
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue65; parameters: none) ===
function workValue65()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7
  arg1 = numberValue16
  if 0 ~= arg1 then
    arg1 = numberValue16
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = 0
      numberValue16 = arg2
    else
      arg2 = workValue64
      arg3 = arg1
      arg2(arg3)
      arg2 = DoesEntityExist
      arg3 = arg1
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = 0
        numberValue16 = arg2
      end
    end
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "aa.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.isJobTutorialRunning
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.isSimeonsVehiclePreviewActive
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.isBenchmarking
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.isHandcuffed
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetVehiclePedIsEntering
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 ~= arg2 then
    arg3 = workValue61
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = ClearPedTasks
      arg4 = arg1
      arg3(arg4)
      arg3 = notify
      arg4 = textValue9
      -- Beginner: Show a notification to the player.
      arg3(arg4)
    end
  end
  arg3 = GetVehiclePedIsIn
  arg4 = arg1
  arg5 = false
  -- Beginner: result below is currentVehicle.
  arg3 = arg3(arg4, arg5)
  if 0 ~= arg3 then
    arg4 = workValue61
    arg5 = arg3
    arg4 = arg4(arg5)
    if not arg4 then
      arg4 = GetPedInVehicleSeat
      arg5 = arg3
      arg6 = -1
      arg4 = arg4(arg5, arg6)
      arg4 = arg4 == arg1
      arg5 = GetOffsetFromEntityInWorldCoords
      arg6 = arg3
      arg7 = 1.8
      workValue62 = 0.0
      workValue66 = 0.3
      arg5 = arg5(arg6, arg7, workValue62, workValue66)
      arg6 = GetGroundZFor_3dCoord
      arg7 = arg5.x
      workValue62 = arg5.y
      workValue66 = arg5.z
      workValue66 = workValue66 + 1.0
      flag25 = 0
      flag = false
      arg6, arg7 = arg6(arg7, workValue62, workValue66, flag25, flag)
      if arg6 and arg7 > 0.0 then
        workValue62 = arg7 + 0.5
        if workValue62 then
          goto flow_label_117
        end
      end
      workValue62 = arg5.z
      workValue62 = workValue62 + 0.5
      ::flow_label_117::
      workValue66 = SetEntityCoordsNoOffset
      flag25 = arg1
      flag = arg5.x
      flag2 = arg5.y
      flag4 = workValue62
      flag5 = false
      flag6 = false
      flag7 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      workValue66(flag25, flag, flag2, flag4, flag5, flag6, flag7)
      workValue66 = ClearPedTasksImmediately
      flag25 = arg1
      workValue66(flag25)
      if arg4 then
        numberValue16 = arg3
        workValue66 = workValue64
        flag25 = arg3
        workValue66(flag25)
        workValue66 = DoesEntityExist
        flag25 = arg3
        workValue66 = workValue66(flag25)
        if not workValue66 then
          workValue66 = 0
          numberValue16 = workValue66
        end
      end
      workValue66 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workValue66 = workValue66()
      flag25 = numberValue15
      if workValue66 >= flag25 then
        flag25 = workValue66 + 4000
        numberValue15 = flag25
        flag25 = notify
        flag = textValue9
        -- Beginner: Show a notification to the player.
        flag25(flag)
      end
    end
  end
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.createThreadOnTick
dataTable4 = workValue65
dataTable5 = "Mechanic Vehicle Restrict"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall6(dataTable4, dataTable5)
cmgCall6 = CMG
cmgCall6 = cmgCall6.registerDevMenuState
dataTable4 = "Mechanic/Debris layout"
dataTable5 = {}
dataTable5.mainModelIndex = 1
dataTable5.step = 0.1
dataTable5.selectedIndex = 0
dataTable5.nudgeStepListIndex = 3
dataTable5.offsetKindIndex = 1
dataTable5.secondarySlot1ModelIdx = 1
dataTable5.secondarySlot2ModelIdx = 1
dataTable5.secondarySlot3ModelIdx = 1
dataTable5.secondarySlot4ModelIdx = 1
cmgCall6 = cmgCall6(dataTable4, dataTable5)
dataTable4 = {}
dataTable4.active = false
dataTable4.kind = "ground"
dataTable4.anchor = nil
dataTable4.baseZ = 0.0
dataTable4.mainEnt = 0
dataTable4.mainModelName = ""
dataTable5 = {}
dataTable4.slotEnts = dataTable5
dataTable4.flatbedVeh = 0
dataTable4.flatbedAttach = nil
dataTable4.mainFlatbedAttach = nil
dataTable5 = {}
dataTable6 = "Main wreck"
dataTable7 = "Secondary slot 1"
textValue10 = "Secondary slot 2"
textValue11 = "Secondary slot 3"
textValue12 = "Secondary slot 4"
dataTable5[1] = dataTable6
dataTable5[2] = dataTable7
dataTable5[3] = textValue10
dataTable5[4] = textValue11
dataTable5[5] = textValue12
dataTable6 = {}
dataTable7 = "Main wreck"
textValue10 = "Bed slot 1"
textValue11 = "Bed slot 2"
textValue12 = "Bed slot 3"
textValue13 = "Bed slot 4"
dataTable6[1] = dataTable7
dataTable6[2] = textValue10
dataTable6[3] = textValue11
dataTable6[4] = textValue12
dataTable6[5] = textValue13
dataTable7 = {}
textValue10 = "Ground: pile / scene offsets"
textValue11 = "Flatbed: bed attach (bone-local)"
dataTable7[1] = textValue10
dataTable7[2] = textValue11

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2
  arg1 = tonumber
  arg2 = cmgCall6.offsetKindIndex
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = 1
  end
  if 2 == arg1 then
    arg1 = "flatbed"
    if arg1 then
      goto flow_label_13
    end
  end
  arg1 = "ground"
  ::flow_label_13::
  return arg1
end

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  arg2 = arg1 or arg2
  if arg1 then
    arg2 = CMG
    arg2 = arg2.isDeveloper
    arg3 = arg1
    arg2 = arg2(arg3)
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1, arg2, arg3) ===
function textValue12(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue62, workValue66, flag25
  arg4 = math
  arg4 = arg4.rad
  arg5 = arg3 + 0.0
  arg4 = arg4(arg5)
  arg5 = math
  arg5 = arg5.cos
  arg6 = arg4
  arg5 = arg5(arg6)
  arg6 = math
  arg6 = arg6.sin
  arg7 = arg4
  arg6 = arg6(arg7)
  arg7 = arg1 * arg5
  workValue62 = arg2 * arg6
  arg7 = arg7 + workValue62
  workValue62 = -arg1
  workValue62 = workValue62 * arg6
  workValue66 = arg2 * arg5
  workValue62 = workValue62 + workValue66
  workValue66 = arg7
  flag25 = workValue62
  return workValue66, flag25
end

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: none) ===
function textValue13()
  local arg1, arg2
  arg1 = dataTable4.mainEnt
  if 0 ~= arg1 then
    arg1 = DoesEntityExist
    arg2 = dataTable4.mainEnt
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = GetEntityHeading
      arg2 = dataTable4.mainEnt
      return arg1(arg2)
    end
  end
  arg1 = 0.0
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue67; parameters: arg1, arg2) ===
function workValue67(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue62
  arg3 = workValue35
  arg4 = arg1
  arg5 = arg2
  arg6 = textValue13
  arg6, arg7, workValue62 = arg6()
  arg3, arg4 = arg3(arg4, arg5, arg6, arg7, workValue62)
  arg5 = vector3
  arg6 = arg3
  arg7 = arg4
  workValue62 = 0.0
  return arg5(arg6, arg7, workValue62)
end

-- === HELPER FUNCTION (decompiler name: workValue68; parameters: none) ===
function workValue68()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66
  dataTable4.active = false
  dataTable4.kind = "ground"
  dataTable4.flatbedVeh = 0
  dataTable4.flatbedAttach = nil
  dataTable4.mainFlatbedAttach = nil
  arg1 = dataTable4.mainEnt
  if 0 ~= arg1 then
    arg1 = DoesEntityExist
    arg2 = dataTable4.mainEnt
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = SetEntityAsMissionEntity
      arg2 = dataTable4.mainEnt
      arg3 = true
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = DeleteObject
      arg2 = dataTable4.mainEnt
      arg1(arg2)
    end
  end
  dataTable4.mainEnt = 0
  arg1 = 1
  arg2 = 4
  arg3 = 1
  for arg4 = arg1, arg2, arg3 do
    arg5 = dataTable4.slotEnts
    arg5 = arg5[arg4]
    if arg5 and 0 ~= arg5 then
      arg6 = DoesEntityExist
      arg7 = arg5
      arg6 = arg6(arg7)
      if arg6 then
        arg6 = DetachEntity
        arg7 = arg5
        workValue62 = true
        workValue66 = true
        arg6(arg7, workValue62, workValue66)
        arg6 = SetEntityAsMissionEntity
        arg7 = arg5
        workValue62 = true
        workValue66 = true
        arg6(arg7, workValue62, workValue66)
        arg6 = DeleteObject
        arg7 = arg5
        arg6(arg7)
      end
    end
    arg6 = dataTable4.slotEnts
    arg6[arg4] = nil
  end
  dataTable4.anchor = nil
  dataTable4.mainModelName = ""
end

-- === HELPER FUNCTION (decompiler name: workValue69; parameters: none) ===
function workValue69()
  local arg1, arg2, arg3
  arg1 = cmgCall.debrisMainWreckModels
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    arg2 = #arg1
    if not (arg2 < 1) then
      goto flow_label_15
    end
  end
  arg2 = {}
  arg3 = "prop_rub_carwreck_8"
  arg2[1] = arg3
  return arg2
  ::flow_label_15::
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue70; parameters: none) ===
function workValue70()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66
  arg1 = cmgCall.debrisLayoutGroups
  arg2 = dataTable4.mainModelName
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  if "table" == arg3 then
    arg3 = arg2 or arg3
    if not arg2 then
      arg3 = ""
    end
    arg3 = arg1[arg3]
    if arg3 then
      goto flow_label_15
    end
  end
  arg3 = nil
  ::flow_label_15::
  arg4 = type
  arg5 = arg3
  arg4 = arg4(arg5)
  if "table" == arg4 then
    arg4 = arg3.secondaryModels
    if arg4 then
      goto flow_label_24
    end
  end
  arg4 = nil
  ::flow_label_24::
  arg5 = type
  arg6 = arg4
  arg5 = arg5(arg6)
  if "table" == arg5 then
    arg5 = #arg4
    if not (arg5 < 1) then
      goto flow_label_40
    end
  end
  arg5 = {}
  arg6 = "prop_rub_carpart_02"
  arg7 = "prop_wheel_rim_02"
  workValue62 = "prop_car_exhaust_01"
  workValue66 = "lr_smod_car_seat_001"
  arg5[1] = arg6
  arg5[2] = arg7
  arg5[3] = workValue62
  arg5[4] = workValue66
  return arg5
  ::flow_label_40::
  return arg4
end

-- === HELPER FUNCTION (decompiler name: workValue71; parameters: none) ===
function workValue71()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9
  arg1 = {}
  arg2 = {}

  -- === HELPER FUNCTION: arg3(arg12) ===
  function arg3(arg12)
    local arg22, arg32
    arg22 = type
    arg32 = arg12
    arg22 = arg22(arg32)
    if "string" ~= arg22 or "" == arg12 then
      return
    end
    arg22 = arg1
    arg22 = arg22[arg12]
    if arg22 then
      return
    end
    arg22 = arg1
    arg22[arg12] = true
    arg22 = arg2
    arg22 = #arg22
    arg32 = arg22 + 1
    arg22 = arg2
    arg22[arg32] = arg12
  end
  arg4 = cmgCall.debrisLayoutGroups
  arg5 = type
  arg6 = arg4
  arg5 = arg5(arg6)
  if "table" == arg5 then
    arg5 = pairs
    arg6 = arg4
    arg5, arg6, arg7, workValue62 = arg5(arg6)
    for workValue66, flag25 in arg5, arg6, arg7, workValue62 do
      flag = type
      flag2 = flag25
      flag = flag(flag2)
      if "table" == flag then
        flag = type
        flag2 = flag25.secondaryModels
        flag = flag(flag2)
        if "table" == flag then
          flag = ipairs
          flag2 = flag25.secondaryModels
          flag, flag2, flag4, flag5 = flag(flag2)
          for flag6, flag7 in flag, flag2, flag4, flag5 do
            flag8 = arg3
            flag9 = flag7
            flag8(flag9)
          end
        end
      end
    end
  end
  arg5 = ipairs
  arg6 = workValue70
  arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9 = arg6()
  arg5, arg6, arg7, workValue62 = arg5(arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9)
  for workValue66, flag25 in arg5, arg6, arg7, workValue62 do
    flag = arg3
    flag2 = flag25
    flag(flag2)
  end
  arg5 = #arg2
  if arg5 < 1 then
    arg5 = {}
    arg6 = "prop_rub_carpart_02"
    arg5[1] = arg6
    return arg5
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue72; parameters: arg1) ===
function workValue72(arg1)
  local arg2, arg3, arg4
  arg2 = "secondarySlot"
  arg3 = arg1
  arg4 = "ModelIdx"
  arg2 = arg2 .. arg3 .. arg4
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue73; parameters: arg1, arg2) ===
function workValue73(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2
  arg3 = arg2 or nil
  if not arg2 then
    arg3 = workValue71
    arg3 = arg3()
  end
  arg4 = #arg3
  if arg4 < 1 then
    arg5 = "prop_rub_carpart_02"
    return arg5
  end
  arg5 = workValue72
  arg6 = arg1
  arg5 = arg5(arg6)
  arg6 = math
  arg6 = arg6.max
  arg7 = 1
  workValue62 = math
  workValue62 = workValue62.min
  workValue66 = arg4
  flag25 = math
  flag25 = flag25.floor
  flag = tonumber
  flag2 = cmgCall6
  flag2 = flag2[arg5]
  flag = flag(flag2)
  if not flag then
    flag = 1
  end
  flag25, flag, flag2 = flag25(flag)
  workValue62, workValue66, flag25, flag, flag2 = workValue62(workValue66, flag25, flag, flag2)
  arg6 = arg6(arg7, workValue62, workValue66, flag25, flag, flag2)
  arg7 = cmgCall6
  arg7[arg5] = arg6
  arg7 = arg3[arg6]
  return arg7
end

-- === HELPER FUNCTION (decompiler name: workValue74; parameters: arg1) ===
function workValue74(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2
  arg2 = {}
  arg3 = arg1 or arg3
  if not arg1 then
    arg3 = workValue71
    arg3 = arg3()
  end
  arg4 = 1
  arg5 = 4
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    workValue62 = workValue73
    workValue66 = arg7
    flag25 = arg3
    workValue62 = workValue62(workValue66, flag25)
    workValue66 = workValue37
    flag25 = workValue62
    flag = dataTable4.mainModelName
    flag2 = arg7
    workValue66 = workValue66(flag25, flag, flag2)
    arg2[arg7] = workValue66
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue75; parameters: arg1) ===
function workValue75(arg1)
  local arg2, arg3
  arg2 = workValue38
  arg3 = arg1
  return arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3
  arg1 = dataTable4.flatbedVeh
  if 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_10
    end
  end
  return
  ::flow_label_10::
  arg2 = dataTable4.mainEnt
  if 0 ~= arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_19
    end
  end
  return
  ::flow_label_19::
  arg3 = dataTable4.mainFlatbedAttach
  arg4 = type
  arg5 = arg3
  arg4 = arg4(arg5)
  if "table" ~= arg4 then
    return
  end
  arg4 = tonumber
  arg5 = cmgCall.debrisMainFlatbedBone
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = 20
  end
  arg5 = DetachEntity
  arg6 = arg2
  arg7 = true
  workValue62 = true
  arg5(arg6, arg7, workValue62)
  arg5 = AttachEntityToEntity
  arg6 = arg2
  arg7 = arg1
  workValue62 = arg4
  workValue66 = arg3.ox
  flag25 = arg3.oy
  flag = arg3.oz
  flag2 = arg3.rx
  flag4 = arg3.ry
  flag5 = arg3.rz
  flag6 = false
  flag7 = false
  flag8 = false
  flag9 = false
  flag10 = 2
  numberValue3 = true
  -- Beginner: Attach one entity to another entity.
  arg5(arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
  arg5 = SetEntityCollision
  arg6 = arg2
  arg7 = false
  workValue62 = false
  arg5(arg6, arg7, workValue62)
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14
  arg1 = dataTable4.flatbedVeh
  if 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_10
    end
  end
  return
  ::flow_label_10::
  arg2 = workValue
  arg2()
  arg2 = tonumber
  arg3 = cmgCall.debrisSecondaryFlatbedBone
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = tonumber
    arg3 = cmgCall.debrisMainFlatbedBone
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = 20
    end
  end
  arg3 = 1
  arg4 = 4
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = dataTable4.slotEnts
    arg7 = arg7[arg6]
    workValue62 = dataTable4.flatbedAttach
    if workValue62 then
      workValue62 = dataTable4.flatbedAttach
      workValue62 = workValue62[arg6]
    end
    if arg7 and 0 ~= arg7 then
      workValue66 = DoesEntityExist
      flag25 = arg7
      workValue66 = workValue66(flag25)
      if workValue66 and workValue62 then
        workValue66 = DetachEntity
        flag25 = arg7
        flag = true
        flag2 = true
        workValue66(flag25, flag, flag2)
        workValue66 = AttachEntityToEntity
        flag25 = arg7
        flag = arg1
        flag2 = arg2
        flag4 = workValue62.ox
        flag5 = workValue62.oy
        flag6 = workValue62.oz
        flag7 = workValue62.rx
        flag8 = workValue62.ry
        flag9 = workValue62.rz
        flag10 = false
        numberValue3 = false
        flag11 = false
        flag12 = false
        flag13 = 2
        flag14 = true
        -- Beginner: Attach one entity to another entity.
        workValue66(flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14)
        workValue66 = SetEntityCollision
        flag25 = arg7
        flag = false
        flag2 = false
        workValue66(flag25, flag, flag2)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = workValue71
  arg2 = arg2()
  arg3 = workValue73
  arg4 = arg1
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  arg4 = workValue36
  arg5 = arg3
  arg6 = dataTable4.mainModelName
  arg7 = arg1
  return arg4(arg5, arg6, arg7)
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3
  arg2 = dataTable4.active
  if not arg2 then
    return
  end
  if arg1 < 1 or arg1 > 4 then
    return
  end
  arg2 = dataTable4.kind
  if "ground" ~= arg2 and "flatbed" ~= arg2 then
    return
  end
  arg3 = workValue71
  arg3 = arg3()
  arg4 = workValue73
  arg5 = arg1
  arg6 = arg3
  arg4 = arg4(arg5, arg6)
  arg5 = GetHashKey
  arg6 = arg4
  -- Beginner: result below is hash.
  arg5 = arg5(arg6)
  if not arg5 or 0 == arg5 then
    return
  end
  arg6 = dataTable4.slotEnts
  arg6 = arg6[arg1]
  if arg6 and 0 ~= arg6 then
    arg7 = DoesEntityExist
    workValue62 = arg6
    arg7 = arg7(workValue62)
    if arg7 then
      arg7 = GetEntityModel
      workValue62 = arg6
      -- Beginner: result below is modelHash.
      arg7 = arg7(workValue62)
      if arg7 == arg5 then
        return
      end
    end
  end
  if "flatbed" == arg2 then
    arg7 = dataTable4.flatbedVeh
    if 0 ~= arg7 then
      workValue62 = DoesEntityExist
      workValue66 = arg7
      workValue62 = workValue62(workValue66)
      if workValue62 then
        goto flow_label_58
      end
    end
    return
    ::flow_label_58::
    if arg6 and 0 ~= arg6 then
      workValue62 = DoesEntityExist
      workValue66 = arg6
      workValue62 = workValue62(workValue66)
      if workValue62 then
        workValue62 = DetachEntity
        workValue66 = arg6
        flag25 = true
        flag = true
        workValue62(workValue66, flag25, flag)
        workValue62 = SetEntityAsMissionEntity
        workValue66 = arg6
        flag25 = true
        flag = true
        workValue62(workValue66, flag25, flag)
        workValue62 = DeleteObject
        workValue66 = arg6
        workValue62(workValue66)
      end
    end
    workValue62 = dataTable4.slotEnts
    workValue62[arg1] = nil
    workValue62 = dataTable4.flatbedAttach
    if workValue62 then
      workValue62 = dataTable4.flatbedAttach
      workValue66 = workValue37
      flag25 = arg4
      flag = dataTable4.mainModelName
      flag2 = arg1
      workValue66 = workValue66(flag25, flag, flag2)
      workValue62[arg1] = workValue66
    end
    workValue62 = GetEntityCoords
    workValue66 = arg7
    flag25 = true
    -- Beginner: result below is entityCoords.
    workValue62 = workValue62(workValue66, flag25)
    workValue66 = CMG
    workValue66 = workValue66.loadModel
    flag25 = arg5
    -- Beginner: Request/load a GTA model before spawning or applying it.
    workValue66(flag25)
    workValue66 = CreateObject
    flag25 = arg5
    flag = workValue62.x
    flag2 = workValue62.y
    flag4 = workValue62.z
    flag4 = flag4 + 0.5
    flag5 = false
    flag6 = false
    flag7 = false
    -- Beginner: result below is objectEntity.
    workValue66 = workValue66(flag25, flag, flag2, flag4, flag5, flag6, flag7)
    if 0 ~= workValue66 then
      flag25 = DoesEntityExist
      flag = workValue66
      flag25 = flag25(flag)
      if flag25 then
        flag25 = dataTable4.slotEnts
        flag25[arg1] = workValue66
      end
    end
    flag25 = SetModelAsNoLongerNeeded
    flag = arg5
    flag25(flag)
    flag25 = workValue2
    flag25()
    return
  end
  arg7 = dataTable4.anchor
  if not arg7 then
    return
  end
  workValue62 = tonumber
  workValue66 = dataTable4.baseZ
  workValue62 = workValue62(workValue66)
  if not workValue62 then
    workValue62 = 0.0
  end
  workValue66 = nil
  flag25 = nil
  flag = nil
  flag2 = nil
  if arg6 and 0 ~= arg6 then
    flag4 = DoesEntityExist
    flag5 = arg6
    flag4 = flag4(flag5)
    if flag4 then
      flag4 = GetEntityCoords
      flag5 = arg6
      flag6 = true
      -- Beginner: result below is entityCoords.
      flag4 = flag4(flag5, flag6)
      flag5 = flag4.x
      flag6 = flag4.y
      flag = flag4.z
      flag25 = flag6
      workValue66 = flag5
      flag5 = GetEntityHeading
      flag6 = arg6
      -- Beginner: result below is heading.
      flag5 = flag5(flag6)
      flag2 = flag5
      flag5 = SetEntityAsMissionEntity
      flag6 = arg6
      flag7 = true
      flag8 = true
      flag5(flag6, flag7, flag8)
      flag5 = DeleteObject
      flag6 = arg6
      flag5(flag6)
  end
  else
    flag4 = textValue13
    flag4 = flag4()
    flag5 = workValue3
    flag6 = arg1
    flag5 = flag5(flag6)
    flag6 = workValue35
    flag7 = flag5.dx
    flag8 = flag5.dy
    flag9 = flag4
    flag6, flag7 = flag6(flag7, flag8, flag9)
    flag8 = arg7.x
    workValue66 = flag8 + flag6
    flag8 = arg7.y
    flag25 = flag8 + flag7
    flag8 = flag5.dz
    flag = workValue62 + flag8
    flag8 = flag5.h
    flag2 = flag8 + flag4
  end
  flag4 = dataTable4.slotEnts
  flag4[arg1] = nil
  flag4 = CMG
  flag4 = flag4.loadModel
  flag5 = arg5
  -- Beginner: Request/load a GTA model before spawning or applying it.
  flag4(flag5)
  flag4 = CreateObject
  flag5 = arg5
  flag6 = workValue66
  flag7 = flag25
  flag8 = flag
  flag9 = false
  flag10 = false
  numberValue3 = false
  -- Beginner: result below is objectEntity.
  flag4 = flag4(flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
  if 0 ~= flag4 then
    flag5 = DoesEntityExist
    flag6 = flag4
    flag5 = flag5(flag6)
    if flag5 then
      flag5 = SetEntityHeading
      flag6 = flag4
      flag7 = flag2
      -- Beginner: Change the direction an entity is facing.
      flag5(flag6, flag7)
      flag5 = FreezeEntityPosition
      flag6 = flag4
      flag7 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      flag5(flag6, flag7)
      flag5 = SetEntityCollision
      flag6 = flag4
      flag7 = false
      flag8 = false
      flag5(flag6, flag7, flag8)
      flag5 = dataTable4.slotEnts
      flag5[arg1] = flag4
    end
  end
  flag5 = SetModelAsNoLongerNeeded
  flag6 = arg5
  flag5(flag6)
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9
  arg1 = textValue11
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = workValue68
  arg1()
  arg1 = workValue69
  arg1 = arg1()
  arg2 = math
  arg2 = arg2.max
  arg3 = 1
  arg4 = math
  arg4 = arg4.min
  arg5 = #arg1
  arg6 = math
  arg6 = arg6.floor
  arg7 = cmgCall6.mainModelIndex
  if not arg7 then
    arg7 = 1
  end
  arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9 = arg6(arg7)
  arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9 = arg4(arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9)
  arg2 = arg2(arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9)
  cmgCall6.mainModelIndex = arg2
  arg3 = arg1[arg2]
  dataTable4.mainModelName = arg3
  arg4 = CMG
  arg4 = arg4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = GetEntityCoords
  arg6 = arg4
  arg7 = true
  -- Beginner: result below is entityCoords.
  arg5 = arg5(arg6, arg7)
  arg6 = GetGroundZFor_3dCoord
  arg7 = arg5.x
  workValue62 = arg5.y
  workValue66 = arg5.z
  workValue66 = workValue66 + 50.0
  flag25 = 0.0
  flag = false
  arg6, arg7 = arg6(arg7, workValue62, workValue66, flag25, flag)
  if arg7 and arg7 > 0.0 then
    workValue62 = arg7 + 0.05
    if workValue62 then
      goto flow_label_53
    end
  end
  workValue62 = arg5.z
  ::flow_label_53::
  dataTable4.baseZ = workValue62
  workValue62 = vector3
  workValue66 = arg5.x
  flag25 = arg5.y
  flag = dataTable4.baseZ
  workValue62 = workValue62(workValue66, flag25, flag)
  dataTable4.anchor = workValue62
  workValue62 = GetEntityHeading
  workValue66 = arg4
  -- Beginner: result below is heading.
  workValue62 = workValue62(workValue66)
  workValue66 = GetHashKey
  flag25 = arg3
  -- Beginner: result below is hash.
  workValue66 = workValue66(flag25)
  if not workValue66 or 0 == workValue66 then
    flag25 = tCMG
    flag25 = flag25.notify
    flag = "~r~Invalid main wreck model."
    -- Beginner: Show a notification to the player.
    flag25(flag)
    return
  end
  flag25 = CMG
  flag25 = flag25.loadModel
  flag = workValue66
  -- Beginner: Request/load a GTA model before spawning or applying it.
  flag25(flag)
  flag25 = CreateObject
  flag = workValue66
  flag2 = dataTable4.anchor
  flag2 = flag2.x
  flag4 = dataTable4.anchor
  flag4 = flag4.y
  flag5 = dataTable4.baseZ
  flag5 = flag5 + 0.05
  flag6 = false
  flag7 = false
  flag8 = false
  -- Beginner: result below is objectEntity.
  flag25 = flag25(flag, flag2, flag4, flag5, flag6, flag7, flag8)
  dataTable4.mainEnt = flag25
  flag25 = dataTable4.mainEnt
  if 0 ~= flag25 then
    flag25 = DoesEntityExist
    flag = dataTable4.mainEnt
    flag25 = flag25(flag)
    if flag25 then
      goto flow_label_109
    end
  end
  flag25 = tCMG
  flag25 = flag25.notify
  flag = "~r~Failed to spawn main wreck."
  -- Beginner: Show a notification to the player.
  flag25(flag)
  flag25 = SetModelAsNoLongerNeeded
  flag = workValue66
  flag25(flag)
  return
  ::flow_label_109::
  flag25 = SetEntityHeading
  flag = dataTable4.mainEnt
  flag2 = workValue62
  -- Beginner: Change the direction an entity is facing.
  flag25(flag, flag2)
  flag25 = PlaceObjectOnGroundProperly
  flag = dataTable4.mainEnt
  flag25(flag)
  flag25 = SetEntityCollision
  flag = dataTable4.mainEnt
  flag2 = false
  flag4 = false
  flag25(flag, flag2, flag4)
  flag25 = GetEntityCoords
  flag = dataTable4.mainEnt
  flag2 = true
  -- Beginner: result below is entityCoords.
  flag25 = flag25(flag, flag2)
  flag = vector3
  flag2 = flag25.x
  flag4 = flag25.y
  flag5 = dataTable4.baseZ
  flag = flag(flag2, flag4, flag5)
  dataTable4.anchor = flag
  flag = SetModelAsNoLongerNeeded
  flag2 = workValue66
  flag(flag2)
  flag = GetEntityHeading
  flag2 = dataTable4.mainEnt
  -- Beginner: result below is heading.
  flag = flag(flag2)
  flag2 = workValue71
  flag2 = flag2()
  flag4 = 1
  flag5 = 4
  flag6 = 1
  for flag7 = flag4, flag5, flag6 do
    flag8 = workValue3
    flag9 = flag7
    flag8 = flag8(flag9)
    flag9 = workValue35
    flag10 = flag8.dx
    numberValue3 = flag8.dy
    flag11 = flag
    flag9, flag10 = flag9(flag10, numberValue3, flag11)
    numberValue3 = dataTable4.anchor
    numberValue3 = numberValue3.x
    numberValue3 = numberValue3 + flag9
    flag11 = dataTable4.anchor
    flag11 = flag11.y
    flag11 = flag11 + flag10
    flag12 = dataTable4.baseZ
    flag13 = flag8.dz
    flag12 = flag12 + flag13
    flag13 = workValue73
    flag14 = flag7
    flag15 = flag2
    flag13 = flag13(flag14, flag15)
    flag14 = GetHashKey
    flag15 = flag13
    -- Beginner: result below is hash.
    flag14 = flag14(flag15)
    if flag14 and 0 ~= flag14 then
      flag15 = CMG
      flag15 = flag15.loadModel
      flag16 = flag14
      -- Beginner: Request/load a GTA model before spawning or applying it.
      flag15(flag16)
      flag15 = CreateObject
      flag16 = flag14
      flag17 = numberValue3
      numberValue7 = flag11
      flag18 = flag12
      flag19 = false
      flag20 = false
      numberValue9 = false
      -- Beginner: result below is objectEntity.
      flag15 = flag15(flag16, flag17, numberValue7, flag18, flag19, flag20, numberValue9)
      if 0 ~= flag15 then
        flag16 = DoesEntityExist
        flag17 = flag15
        flag16 = flag16(flag17)
        if flag16 then
          flag16 = SetEntityHeading
          flag17 = flag15
          numberValue7 = flag8.h
          numberValue7 = numberValue7 + flag
          -- Beginner: Change the direction an entity is facing.
          flag16(flag17, numberValue7)
          flag16 = PlaceObjectOnGroundProperly
          flag17 = flag15
          flag16(flag17)
          flag16 = FreezeEntityPosition
          flag17 = flag15
          numberValue7 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          flag16(flag17, numberValue7)
          flag16 = SetEntityCollision
          flag17 = flag15
          numberValue7 = false
          flag18 = false
          flag16(flag17, numberValue7, flag18)
          flag16 = dataTable4.slotEnts
          flag16[flag7] = flag15
        end
      end
      flag16 = SetModelAsNoLongerNeeded
      flag17 = flag14
      flag16(flag17)
    end
  end
  dataTable4.kind = "ground"
  dataTable4.flatbedVeh = 0
  dataTable4.flatbedAttach = nil
  dataTable4.active = true
  flag4 = tCMG
  flag4 = flag4.notify
  flag5 = "~g~Ground layout spawned (collision off). Print \226\134\146 cfg.debrisLayoutGroups[mainModel].secondaryOffsets."
  -- Beginner: Show a notification to the player.
  flag4(flag5)
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12
  arg1 = textValue11
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = textValue7
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = GetEntityModel
    arg3 = arg1
    -- Beginner: result below is modelHash.
    arg2 = arg2(arg3)
    arg3 = workValue11
    arg2 = arg3[arg2]
    if arg2 then
      goto flow_label_22
    end
  end
  arg2 = tCMG
  arg2 = arg2.notify
  arg3 = "~r~Sit in your Mechanic flatbed driver seat to tune bed attach offsets."
  arg2(arg3)
  return
  ::flow_label_22::
  arg2 = workValue68
  arg2()
  dataTable4.flatbedVeh = arg1
  arg2 = workValue69
  arg2 = arg2()
  arg3 = math
  arg3 = arg3.max
  arg4 = 1
  arg5 = math
  arg5 = arg5.min
  arg6 = #arg2
  arg7 = math
  arg7 = arg7.floor
  workValue62 = cmgCall6.mainModelIndex
  if not workValue62 then
    workValue62 = 1
  end
  arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12 = arg7(workValue62)
  arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12 = arg5(arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12)
  arg3 = arg3(arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12)
  cmgCall6.mainModelIndex = arg3
  arg4 = arg2[arg3]
  dataTable4.mainModelName = arg4
  arg5 = workValue71
  arg5 = arg5()
  arg6 = workValue74
  arg7 = arg5
  arg6 = arg6(arg7)
  dataTable4.flatbedAttach = arg6
  arg6 = workValue75
  arg7 = arg4
  arg6 = arg6(arg7)
  dataTable4.mainFlatbedAttach = arg6
  arg6 = GetHashKey
  arg7 = arg4
  -- Beginner: result below is hash.
  arg6 = arg6(arg7)
  if not arg6 or 0 == arg6 then
    arg7 = tCMG
    arg7 = arg7.notify
    workValue62 = "~r~Invalid main wreck model."
    -- Beginner: Show a notification to the player.
    arg7(workValue62)
    arg7 = workValue68
    arg7()
    return
  end
  arg7 = GetEntityCoords
  workValue62 = arg1
  workValue66 = true
  -- Beginner: result below is entityCoords.
  arg7 = arg7(workValue62, workValue66)
  workValue62 = CMG
  workValue62 = workValue62.loadModel
  workValue66 = arg6
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workValue62(workValue66)
  workValue62 = CreateObject
  workValue66 = arg6
  flag25 = arg7.x
  flag = arg7.y
  flag2 = arg7.z
  flag2 = flag2 + 0.5
  flag4 = false
  flag5 = false
  flag6 = false
  -- Beginner: result below is objectEntity.
  workValue62 = workValue62(workValue66, flag25, flag, flag2, flag4, flag5, flag6)
  dataTable4.mainEnt = workValue62
  workValue62 = dataTable4.mainEnt
  if 0 ~= workValue62 then
    workValue62 = DoesEntityExist
    workValue66 = dataTable4.mainEnt
    workValue62 = workValue62(workValue66)
    if workValue62 then
      goto flow_label_107
    end
  end
  workValue62 = tCMG
  workValue62 = workValue62.notify
  workValue66 = "~r~Failed to spawn main wreck."
  -- Beginner: Show a notification to the player.
  workValue62(workValue66)
  workValue62 = SetModelAsNoLongerNeeded
  workValue66 = arg6
  workValue62(workValue66)
  workValue62 = workValue68
  workValue62()
  return
  ::flow_label_107::
  workValue62 = SetModelAsNoLongerNeeded
  workValue66 = arg6
  workValue62(workValue66)
  dataTable4.kind = "flatbed"
  workValue62 = 1
  workValue66 = 4
  flag25 = 1
  for flag = workValue62, workValue66, flag25 do
    flag2 = workValue73
    flag4 = flag
    flag5 = arg5
    flag2 = flag2(flag4, flag5)
    flag4 = GetHashKey
    flag5 = flag2
    -- Beginner: result below is hash.
    flag4 = flag4(flag5)
    flag5 = dataTable4.flatbedAttach
    flag5 = flag5[flag]
    if flag4 and 0 ~= flag4 and flag5 then
      flag6 = CMG
      flag6 = flag6.loadModel
      flag7 = flag4
      -- Beginner: Request/load a GTA model before spawning or applying it.
      flag6(flag7)
      flag6 = CreateObject
      flag7 = flag4
      flag8 = arg7.x
      flag9 = arg7.y
      flag10 = arg7.z
      flag10 = flag10 + 0.5
      numberValue3 = false
      flag11 = false
      flag12 = false
      -- Beginner: result below is objectEntity.
      flag6 = flag6(flag7, flag8, flag9, flag10, numberValue3, flag11, flag12)
      if 0 ~= flag6 then
        flag7 = DoesEntityExist
        flag8 = flag6
        flag7 = flag7(flag8)
        if flag7 then
          flag7 = dataTable4.slotEnts
          flag7[flag] = flag6
        end
      end
      flag7 = SetModelAsNoLongerNeeded
      flag8 = flag4
      flag7(flag8)
    end
  end
  workValue62 = workValue2
  workValue62()
  dataTable4.active = true
  workValue62 = tCMG
  workValue62 = workValue62.notify
  workValue66 = "~g~Main wreck + four props on flatbed (collision off). Nudge = ox/oy/oz; Heading \194\177 = rz. Print \226\134\146 cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
  -- Beginner: Show a notification to the player.
  workValue62(workValue66)
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = dataTable4.kind
  if "flatbed" == arg1 then
    arg1 = math
    arg1 = arg1.max
    arg2 = 0
    arg3 = math
    arg3 = arg3.min
    arg4 = 4
    arg5 = math
    arg5 = arg5.floor
    arg6 = tonumber
    arg7 = cmgCall6.selectedIndex
    arg6 = arg6(arg7)
    if not arg6 then
      arg6 = 0
    end
    arg5, arg6, arg7 = arg5(arg6)
    arg3, arg4, arg5, arg6, arg7 = arg3(arg4, arg5, arg6, arg7)
    arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7)
    if 0 == arg1 then
      arg2 = dataTable4.mainEnt
      return arg2
    end
    arg2 = dataTable4.slotEnts
    arg2 = arg2[arg1]
    if not arg2 then
      arg2 = 0
    end
    return arg2
  end
  arg1 = math
  arg1 = arg1.max
  arg2 = 0
  arg3 = math
  arg3 = arg3.min
  arg4 = 4
  arg5 = math
  arg5 = arg5.floor
  arg6 = cmgCall6.selectedIndex
  if not arg6 then
    arg6 = 0
  end
  arg5, arg6, arg7 = arg5(arg6)
  arg3, arg4, arg5, arg6, arg7 = arg3(arg4, arg5, arg6, arg7)
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  if 0 == arg1 then
    arg2 = dataTable4.mainEnt
    return arg2
  end
  arg2 = dataTable4.slotEnts
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = 0
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2, arg3) ===
function workValue8(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6
  arg4 = dataTable4.kind
  if "flatbed" == arg4 then
    arg4 = math
    arg4 = arg4.max
    arg5 = 0
    arg6 = math
    arg6 = arg6.min
    arg7 = 4
    workValue62 = math
    workValue62 = workValue62.floor
    workValue66 = tonumber
    flag25 = cmgCall6.selectedIndex
    workValue66 = workValue66(flag25)
    if not workValue66 then
      workValue66 = 0
    end
    workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6 = workValue62(workValue66)
    arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6 = arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6)
    arg4 = arg4(arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6)
    if 0 == arg4 then
      arg5 = dataTable4.mainFlatbedAttach
      arg6 = dataTable4.mainEnt
      if arg5 and 0 ~= arg6 then
        arg7 = DoesEntityExist
        workValue62 = arg6
        arg7 = arg7(workValue62)
        if arg7 then
          goto flow_label_35
        end
      end
      return
      ::flow_label_35::
      arg7 = tonumber
      workValue62 = cmgCall6.step
      arg7 = arg7(workValue62)
      if not arg7 then
        arg7 = 0.1
      end
      workValue62 = arg5.ox
      workValue66 = arg1 or workValue66
      if not arg1 then
        workValue66 = 0.0
      end
      workValue66 = workValue66 * arg7
      workValue62 = workValue62 + workValue66
      arg5.ox = workValue62
      workValue62 = arg5.oy
      workValue66 = arg2 or workValue66
      if not arg2 then
        workValue66 = 0.0
      end
      workValue66 = workValue66 * arg7
      workValue62 = workValue62 + workValue66
      arg5.oy = workValue62
      workValue62 = arg5.oz
      workValue66 = arg3 or workValue66
      if not arg3 then
        workValue66 = 0.0
      end
      workValue66 = workValue66 * arg7
      workValue62 = workValue62 + workValue66
      arg5.oz = workValue62
      workValue62 = workValue
      workValue62()
      return
    end
    arg5 = dataTable4.flatbedAttach
    if arg5 then
      arg5 = dataTable4.flatbedAttach
      arg5 = arg5[arg4]
    end
    arg6 = dataTable4.slotEnts
    arg6 = arg6[arg4]
    if arg5 and 0 ~= arg6 then
      arg7 = DoesEntityExist
      workValue62 = arg6
      arg7 = arg7(workValue62)
      if arg7 then
        goto flow_label_88
      end
    end
    return
    ::flow_label_88::
    arg7 = tonumber
    workValue62 = cmgCall6.step
    arg7 = arg7(workValue62)
    if not arg7 then
      arg7 = 0.1
    end
    workValue62 = arg5.ox
    workValue66 = arg1 or workValue66
    if not arg1 then
      workValue66 = 0.0
    end
    workValue66 = workValue66 * arg7
    workValue62 = workValue62 + workValue66
    arg5.ox = workValue62
    workValue62 = arg5.oy
    workValue66 = arg2 or workValue66
    if not arg2 then
      workValue66 = 0.0
    end
    workValue66 = workValue66 * arg7
    workValue62 = workValue62 + workValue66
    arg5.oy = workValue62
    workValue62 = arg5.oz
    workValue66 = arg3 or workValue66
    if not arg3 then
      workValue66 = 0.0
    end
    workValue66 = workValue66 * arg7
    workValue62 = workValue62 + workValue66
    arg5.oz = workValue62
    workValue62 = workValue2
    workValue62()
    return
  end
  arg4 = workValue7
  arg4 = arg4()
  if 0 ~= arg4 then
    arg5 = DoesEntityExist
    arg6 = arg4
    arg5 = arg5(arg6)
    if arg5 then
      goto flow_label_134
    end
  end
  return
  ::flow_label_134::
  arg5 = tonumber
  arg6 = cmgCall6.step
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = 0.1
  end
  arg6 = workValue67
  arg7 = arg1 * arg5
  workValue62 = arg2 * arg5
  arg6 = arg6(arg7, workValue62)
  arg7 = GetEntityCoords
  workValue62 = arg4
  workValue66 = true
  -- Beginner: result below is entityCoords.
  arg7 = arg7(workValue62, workValue66)
  workValue62 = SetEntityCoordsNoOffset
  workValue66 = arg4
  flag25 = arg7.x
  flag = arg6.x
  flag25 = flag25 + flag
  flag = arg7.y
  flag2 = arg6.y
  flag = flag + flag2
  flag2 = arg7.z
  flag4 = arg6.z
  flag2 = flag2 + flag4
  flag4 = arg3 or flag4
  if not arg3 then
    flag4 = 0.0
  end
  flag4 = flag4 * arg5
  flag2 = flag2 + flag4
  flag4 = false
  flag5 = false
  flag6 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workValue62(workValue66, flag25, flag, flag2, flag4, flag5, flag6)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue62
  arg2 = dataTable4.kind
  if "flatbed" == arg2 then
    arg2 = math
    arg2 = arg2.max
    arg3 = 0
    arg4 = math
    arg4 = arg4.min
    arg5 = 4
    arg6 = math
    arg6 = arg6.floor
    arg7 = tonumber
    workValue62 = cmgCall6.selectedIndex
    arg7 = arg7(workValue62)
    if not arg7 then
      arg7 = 0
    end
    arg6, arg7, workValue62 = arg6(arg7)
    arg4, arg5, arg6, arg7, workValue62 = arg4(arg5, arg6, arg7, workValue62)
    arg2 = arg2(arg3, arg4, arg5, arg6, arg7, workValue62)
    if 0 == arg2 then
      arg3 = dataTable4.mainFlatbedAttach
      if not arg3 then
        return
      end
      arg4 = arg3.rz
      arg4 = arg4 + arg1
      arg3.rz = arg4
      arg4 = workValue
      arg4()
      return
    end
    arg3 = dataTable4.flatbedAttach
    if arg3 then
      arg3 = dataTable4.flatbedAttach
      arg3 = arg3[arg2]
    end
    if not arg3 then
      return
    end
    arg4 = arg3.rz
    arg4 = arg4 + arg1
    arg3.rz = arg4
    arg4 = workValue2
    arg4()
    return
  end
  arg2 = workValue7
  arg2 = arg2()
  if 0 ~= arg2 then
    arg3 = DoesEntityExist
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_59
    end
  end
  return
  ::flow_label_59::
  arg3 = SetEntityHeading
  arg4 = arg2
  arg5 = GetEntityHeading
  arg6 = arg2
  -- Beginner: result below is heading.
  arg5 = arg5(arg6)
  arg5 = arg5 + arg1
  -- Beginner: Change the direction an entity is facing.
  arg3(arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62
  arg1 = dataTable4.mainEnt
  if 0 ~= arg1 then
    arg1 = DoesEntityExist
    arg2 = dataTable4.mainEnt
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = dataTable4.anchor
      if arg1 then
        goto flow_label_13
      end
    end
  end
  return
  ::flow_label_13::
  arg1 = SetEntityCoordsNoOffset
  arg2 = dataTable4.mainEnt
  arg3 = dataTable4.anchor
  arg3 = arg3.x
  arg4 = dataTable4.anchor
  arg4 = arg4.y
  arg5 = dataTable4.baseZ
  arg5 = arg5 + 0.05
  arg6 = false
  arg7 = false
  workValue62 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, workValue62)
  arg1 = PlaceObjectOnGroundProperly
  arg2 = dataTable4.mainEnt
  arg1(arg2)
  arg1 = SetEntityCollision
  arg2 = dataTable4.mainEnt
  arg3 = false
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = GetEntityCoords
  arg2 = dataTable4.mainEnt
  arg3 = true
  -- Beginner: result below is entityCoords.
  arg1 = arg1(arg2, arg3)
  arg2 = vector3
  arg3 = arg1.x
  arg4 = arg1.y
  arg5 = dataTable4.baseZ
  arg2 = arg2(arg3, arg4, arg5)
  dataTable4.anchor = arg2
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17
  arg1 = dataTable4.kind
  if "ground" ~= arg1 then
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "~r~Use Ground mode and spawn / reset at player to print pile offsets."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
    return
  end
  arg1 = dataTable4.active
  if arg1 then
    arg1 = dataTable4.anchor
    if arg1 then
      arg1 = dataTable4.mainEnt
      if 0 ~= arg1 then
        arg1 = DoesEntityExist
        arg2 = dataTable4.mainEnt
        arg1 = arg1(arg2)
        if arg1 then
          goto flow_label_28
        end
      end
    end
  end
  arg1 = tCMG
  arg1 = arg1.notify
  arg2 = "~r~Start a ground layout session first."
  arg1(arg2)
  return
  ::flow_label_28::
  arg1 = dataTable4.anchor
  arg1 = arg1.x
  arg2 = dataTable4.anchor
  arg2 = arg2.y
  arg3 = dataTable4.baseZ
  arg4 = textValue13
  arg4 = arg4()
  arg5 = {}
  arg6 = #arg5
  arg6 = arg6 + 1
  arg7 = string
  arg7 = arg7.format
  workValue62 = "-- Mechanic debris layout (dev export)  mainModel=%s  anchor=vector3(%.4f, %.4f, %.4f)  mainHeading=%.2f"
  workValue66 = dataTable4.mainModelName
  flag25 = arg1
  flag = arg2
  flag2 = arg3
  flag4 = arg4
  arg7 = arg7(workValue62, workValue66, flag25, flag, flag2, flag4)
  arg5[arg6] = arg7
  arg6 = #arg5
  arg6 = arg6 + 1
  arg5[arg6] = "-- Paste into cfg_mechanic.lua (adjust debrisSpawns site separately if needed)."
  arg6 = #arg5
  arg6 = arg6 + 1
  arg5[arg6] = "cfg.debrisLayoutGroups = cfg.debrisLayoutGroups or {}"
  arg6 = #arg5
  arg6 = arg6 + 1
  arg7 = string
  arg7 = arg7.format
  workValue62 = "cfg.debrisLayoutGroups[\"%s\"] = cfg.debrisLayoutGroups[\"%s\"] or {}"
  workValue66 = dataTable4.mainModelName
  flag25 = dataTable4.mainModelName
  arg7 = arg7(workValue62, workValue66, flag25)
  arg5[arg6] = arg7
  arg6 = #arg5
  arg6 = arg6 + 1
  arg7 = string
  arg7 = arg7.format
  workValue62 = "cfg.debrisLayoutGroups[\"%s\"].secondaryOffsets = {"
  workValue66 = dataTable4.mainModelName
  arg7 = arg7(workValue62, workValue66)
  arg5[arg6] = arg7
  arg6 = workValue71
  arg6 = arg6()
  arg7 = 1
  workValue62 = 4
  workValue66 = 1
  for flag25 = arg7, workValue62, workValue66 do
    flag = dataTable4.slotEnts
    flag = flag[flag25]
    flag2 = workValue73
    flag4 = flag25
    flag5 = arg6
    flag2 = flag2(flag4, flag5)
    if flag and 0 ~= flag then
      flag4 = DoesEntityExist
      flag5 = flag
      flag4 = flag4(flag5)
      if flag4 then
        flag4 = GetEntityCoords
        flag5 = flag
        flag6 = true
        -- Beginner: result below is entityCoords.
        flag4 = flag4(flag5, flag6)
        flag5 = flag4.x
        flag5 = flag5 - arg1
        flag6 = flag4.y
        flag6 = flag6 - arg2
        flag7 = flag4.z
        flag7 = flag7 - arg3
        flag8 = textValue12
        flag9 = flag5
        flag10 = flag6
        numberValue3 = arg4
        flag8, flag9 = flag8(flag9, flag10, numberValue3)
        flag10 = GetEntityHeading
        numberValue3 = flag
        -- Beginner: result below is heading.
        flag10 = flag10(numberValue3)
        flag10 = flag10 - arg4
        while true do
          numberValue3 = 180.0
          if not (flag10 > numberValue3) then
            break
          end
          flag10 = flag10 - 360.0
        end
        while true do
          numberValue3 = -180.0
          if not (flag10 < numberValue3) then
            break
          end
          flag10 = flag10 + 360.0
        end
        numberValue3 = #arg5
        numberValue3 = numberValue3 + 1
        flag11 = string
        flag11 = flag11.format
        flag12 = "    [\"%s\"] = { dx = %.4f, dy = %.4f, dz = %.4f, h = %.2f },"
        flag13 = flag2
        flag14 = flag8
        flag15 = flag9
        flag16 = flag7
        flag17 = flag10
        flag11 = flag11(flag12, flag13, flag14, flag15, flag16, flag17)
        arg5[numberValue3] = flag11
    end
    else
      flag4 = #arg5
      flag4 = flag4 + 1
      flag5 = string
      flag5 = flag5.format
      flag6 = "-- slot %d model=%s (no entity)"
      flag7 = flag25
      flag8 = flag2
      flag5 = flag5(flag6, flag7, flag8)
      arg5[flag4] = flag5
    end
  end
  arg7 = #arg5
  arg7 = arg7 + 1
  arg5[arg7] = "}"
  arg7 = print
  workValue62 = table
  workValue62 = workValue62.concat
  workValue66 = arg5
  flag25 = "\n"
  workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17 = workValue62(workValue66, flag25)
  arg7(workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17)
  arg7 = tCMG
  arg7 = arg7.notify
  workValue62 = "~g~Printed ground offsets to F8 (cfg.debrisLayoutGroups[mainModel].secondaryOffsets)."
  -- Beginner: Show a notification to the player.
  arg7(workValue62)
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11
  arg1 = dataTable4.kind
  if "flatbed" == arg1 then
    arg1 = type
    arg2 = dataTable4.flatbedAttach
    arg1 = arg1(arg2)
    if "table" == arg1 then
      goto flow_label_14
    end
  end
  arg1 = tCMG
  arg1 = arg1.notify
  arg2 = "~r~Use Flatbed mode and spawn on the flatbed first."
  arg1(arg2)
  return
  ::flow_label_14::
  arg1 = tonumber
  arg2 = cmgCall.debrisSecondaryFlatbedBone
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = tonumber
    arg2 = cmgCall.debrisMainFlatbedBone
    arg1 = arg1(arg2)
    if not arg1 then
      arg1 = 20
    end
  end
  arg2 = tonumber
  arg3 = cmgCall.debrisMainFlatbedBone
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = 20
  end
  arg3 = {}
  arg4 = #arg3
  arg4 = arg4 + 1
  arg3[arg4] = "-- Mechanic lane clear: flatbed bed attach (dev export)"
  arg4 = #arg3
  arg4 = arg4 + 1
  arg5 = string
  arg5 = arg5.format
  arg6 = "-- mainModel=%s"
  arg7 = dataTable4.mainModelName
  if not arg7 then
    arg7 = ""
  end
  arg5 = arg5(arg6, arg7)
  arg3[arg4] = arg5
  arg4 = dataTable4.mainFlatbedAttach
  arg5 = type
  arg6 = arg4
  arg5 = arg5(arg6)
  if "table" == arg5 then
    arg5 = #arg3
    arg5 = arg5 + 1
    arg6 = string
    arg6 = arg6.format
    arg7 = "cfg.debrisMainFlatbedBone = %d"
    workValue62 = arg2
    arg6 = arg6(arg7, workValue62)
    arg3[arg5] = arg6
    arg5 = #arg3
    arg5 = arg5 + 1
    arg6 = string
    arg6 = arg6.format
    arg7 = "cfg.debrisMainFlatbedAttach = { ox = %.4f, oy = %.4f, oz = %.4f, rx = %.4f, ry = %.4f, rz = %.4f },"
    workValue62 = arg4.ox
    workValue66 = arg4.oy
    flag25 = arg4.oz
    flag = arg4.rx
    flag2 = arg4.ry
    flag4 = arg4.rz
    arg6 = arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4)
    arg3[arg5] = arg6
  end
  arg5 = #arg3
  arg5 = arg5 + 1
  arg6 = string
  arg6 = arg6.format
  arg7 = "cfg.debrisSecondaryFlatbedBone = %d"
  workValue62 = arg1
  arg6 = arg6(arg7, workValue62)
  arg3[arg5] = arg6
  arg5 = #arg3
  arg5 = arg5 + 1
  arg3[arg5] = "cfg.debrisLayoutGroups = cfg.debrisLayoutGroups or {}"
  arg5 = #arg3
  arg5 = arg5 + 1
  arg6 = string
  arg6 = arg6.format
  arg7 = "cfg.debrisLayoutGroups[\"%s\"] = cfg.debrisLayoutGroups[\"%s\"] or {}"
  workValue62 = dataTable4.mainModelName
  workValue66 = dataTable4.mainModelName
  arg6 = arg6(arg7, workValue62, workValue66)
  arg3[arg5] = arg6
  arg5 = #arg3
  arg5 = arg5 + 1
  arg6 = string
  arg6 = arg6.format
  arg7 = "cfg.debrisLayoutGroups[\"%s\"].secondaryFlatbedAttach = {"
  workValue62 = dataTable4.mainModelName
  arg6 = arg6(arg7, workValue62)
  arg3[arg5] = arg6
  arg5 = workValue71
  arg5 = arg5()
  arg6 = 1
  arg7 = 4
  workValue62 = 1
  for workValue66 = arg6, arg7, workValue62 do
    flag25 = dataTable4.flatbedAttach
    flag25 = flag25[workValue66]
    flag = workValue73
    flag2 = workValue66
    flag4 = arg5
    flag = flag(flag2, flag4)
    if flag25 then
      flag2 = #arg3
      flag2 = flag2 + 1
      flag4 = string
      flag4 = flag4.format
      flag5 = "    [\"%s\"] = { ox = %.4f, oy = %.4f, oz = %.4f, rx = %.4f, ry = %.4f, rz = %.4f },"
      flag6 = flag
      flag7 = flag25.ox
      flag8 = flag25.oy
      flag9 = flag25.oz
      flag10 = flag25.rx
      numberValue3 = flag25.ry
      flag11 = flag25.rz
      flag4 = flag4(flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11)
      arg3[flag2] = flag4
    end
  end
  arg6 = #arg3
  arg6 = arg6 + 1
  arg3[arg6] = "}"
  arg6 = print
  arg7 = table
  arg7 = arg7.concat
  workValue62 = arg3
  workValue66 = "\n"
  arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11 = arg7(workValue62, workValue66)
  arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11)
  arg6 = tCMG
  arg6 = arg6.notify
  arg7 = "~g~Printed flatbed attach to F8 (cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach)."
  -- Beginner: Show a notification to the player.
  arg6(arg7)
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerDevMenuItems
textValue = "Mechanic/Debris layout"

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3
  arg1 = RageUI
  arg1 = arg1.Separator
  arg2 = "Lane clear debris offsets (dev)"
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.Separator
  arg2 = "Two modes: ground pile vs flatbed bone-local attach. Props: collision off."
  arg1(arg2)
  arg1 = math
  arg1 = arg1.max
  arg2 = 1
  arg3 = math
  arg3 = arg3.min
  arg4 = 2
  arg5 = math
  arg5 = arg5.floor
  arg6 = tonumber
  arg7 = cmgCall6.offsetKindIndex
  arg6 = arg6(arg7)
  if not arg6 then
    arg6 = 1
  end
  arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3 = arg5(arg6)
  arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3 = arg3(arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
  cmgCall6.offsetKindIndex = arg1
  arg2 = RageUI
  arg2 = arg2.List
  arg3 = "Offset mode"
  arg4 = dataTable7
  arg5 = arg1
  arg6 = "Ground: cfg.debrisLayoutGroups[mainModel].secondaryOffsets. Flatbed: cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
  arg7 = {}
  workValue62 = true

  -- === HELPER FUNCTION (decompiler name: workValue66; parameters: arg12, arg22, arg32, arg42) ===
  function workValue66(arg12, arg22, arg32, arg42)
    local cmgCall5, textValue6
    cmgCall5 = cmgCall6.offsetKindIndex
    if cmgCall5 ~= arg42 then
      cmgCall5 = dataTable4.active
      if cmgCall5 then
        cmgCall5 = workValue68
        cmgCall5()
        cmgCall5 = tCMG
        cmgCall5 = cmgCall5.notify
        textValue6 = "~y~Session cleared: offset mode changed."
        -- Beginner: Show a notification to the player.
        cmgCall5(textValue6)
      end
      cmgCall6.offsetKindIndex = arg42
    end
  end

  -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
  function flag25()
    local arg12, arg22
  end
  -- Beginner: Draw a RageUI list selector.
  arg2(arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25)
  arg2 = textValue10
  arg2 = arg2()
  if "flatbed" == arg2 then
    arg2 = "Flatbed driver seat. Spawns main + four secondaries (models from Slot 1\226\128\1474 lists) with cfg attaches; nudge ox/oy/oz/rz."
    if arg2 then
      goto flow_label_47
    end
  end
  arg2 = "Spawns main + four secondaries at your feet (Slot 1\226\128\1474 model lists + cfg scene offsets). No job vehicle checks."
  ::flow_label_47::
  arg3 = RageUI
  arg3 = arg3.Button
  arg4 = textValue10
  arg4 = arg4()
  if "flatbed" == arg4 then
    arg4 = "Spawn / reset on flatbed"
    if arg4 then
      goto flow_label_57
    end
  end
  arg4 = "Spawn / reset at player"
  ::flow_label_57::
  arg5 = arg2
  arg6 = true

  -- === HELPER FUNCTION: arg7(arg12, arg22, arg32) ===
  function arg7(arg12, arg22, arg32)
    local arg42
    if arg32 then
      arg42 = textValue10
      arg42 = arg42()
      if "flatbed" == arg42 then
        arg42 = workValue6
        arg42()
      else
        arg42 = workValue5
        arg42()
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(arg4, arg5, arg6, arg7)
  arg3 = RageUI
  arg3 = arg3.Button
  arg4 = "End session (delete props)"
  arg5 = ""
  arg6 = dataTable4.active

  -- === HELPER FUNCTION: arg7(arg12, arg22, arg32) ===
  function arg7(arg12, arg22, arg32)
    local arg42, cmgCall5
    if arg32 then
      arg42 = workValue68
      arg42()
      arg42 = tCMG
      arg42 = arg42.notify
      cmgCall5 = "~y~Debris layout session cleared."
      -- Beginner: Show a notification to the player.
      arg42(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(arg4, arg5, arg6, arg7)
  arg3 = workValue69
  arg3 = arg3()
  arg4 = textValue10
  arg4 = arg4()
  arg4 = "ground" == arg4
  arg5 = RageUI
  arg5 = arg5.List
  arg6 = "Main wreck model"
  arg7 = arg3
  workValue62 = cmgCall6.mainModelIndex
  workValue66 = "Used on next spawn (ground or flatbed mode)."
  flag25 = {}
  flag = true

  -- === HELPER FUNCTION (decompiler name: flag2; parameters: arg12, arg22, arg32, arg42) ===
  function flag2(arg12, arg22, arg32, arg42)
    cmgCall6.mainModelIndex = arg42
  end

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
  function flag4()
    local arg12, arg22
  end
  -- Beginner: Draw a RageUI list selector.
  arg5(arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4)
  arg5 = workValue71
  arg5 = arg5()
  arg6 = RageUI
  arg6 = arg6.Separator
  arg7 = "Secondary props"
  arg6(arg7)
  arg6 = 1
  arg7 = 4
  workValue62 = 1
  for workValue66 = arg6, arg7, workValue62 do
    flag25 = workValue72
    flag = workValue66
    flag25 = flag25(flag)
    flag = math
    flag = flag.max
    flag2 = 1
    flag4 = math
    flag4 = flag4.min
    flag5 = #arg5
    flag6 = math
    flag6 = flag6.floor
    flag7 = tonumber
    flag8 = cmgCall6
    flag8 = flag8[flag25]
    flag7 = flag7(flag8)
    if not flag7 then
      flag7 = 1
    end
    flag6, flag7, flag8, flag9, flag10, numberValue3 = flag6(flag7)
    flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3 = flag4(flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
    flag = flag(flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
    flag2 = cmgCall6
    flag2[flag25] = flag
    flag2 = RageUI
    flag2 = flag2.List
    flag4 = "Slot "
    flag5 = workValue66
    flag6 = " model"
    flag4 = flag4 .. flag5 .. flag6
    flag5 = arg5
    flag6 = flag
    flag7 = "With an active session, changing model swaps that prop in place (offsets kept). Otherwise applies on next spawn."
    flag8 = {}
    flag9 = true

    -- === HELPER FUNCTION (decompiler name: flag10; parameters: arg12, arg22, arg32, arg42) ===
    function flag10(arg12, arg22, arg32, arg42)
      local cmgCall5, textValue6, mathHelper, workValue63, mathHelper2, numberValue20, workValue12, workValue17
      cmgCall5 = math
      cmgCall5 = cmgCall5.max
      textValue6 = 1
      mathHelper = math
      mathHelper = mathHelper.min
      workValue63 = arg5
      workValue63 = #workValue63
      mathHelper2 = math
      mathHelper2 = mathHelper2.floor
      numberValue20 = tonumber
      workValue17 = flag25
      workValue12 = cmgCall6
      workValue12 = workValue12[workValue17]
      numberValue20 = numberValue20(workValue12)
      if not numberValue20 then
        numberValue20 = 1
      end
      mathHelper2, numberValue20, workValue12, workValue17 = mathHelper2(numberValue20)
      mathHelper, workValue63, mathHelper2, numberValue20, workValue12, workValue17 = mathHelper(workValue63, mathHelper2, numberValue20, workValue12, workValue17)
      cmgCall5 = cmgCall5(textValue6, mathHelper, workValue63, mathHelper2, numberValue20, workValue12, workValue17)
      mathHelper = flag25
      textValue6 = cmgCall6
      textValue6[mathHelper] = arg42
      textValue6 = dataTable4.active
      if textValue6 and cmgCall5 ~= arg42 then
        textValue6 = workValue4
        mathHelper = workValue66
        textValue6(mathHelper)
      end
    end

    -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
    function numberValue3()
      local arg12, arg22
    end
    -- Beginner: Draw a RageUI list selector.
    flag2(flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
  end
  if arg4 then
    arg6 = RageUI
    arg6 = arg6.List
    arg7 = "Selected entity"
    workValue62 = dataTable5
    workValue66 = cmgCall6.selectedIndex
    workValue66 = workValue66 + 1
    flag25 = "Nudge / rotate applies to this entity."
    flag = {}
    flag2 = true

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32, arg42) ===
    function flag4(arg12, arg22, arg32, arg42)
      local cmgCall5
      cmgCall5 = arg42 - 1
      cmgCall6.selectedIndex = cmgCall5
    end

    -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
    function flag5()
      local arg12, arg22
    end
    arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5)
  else
    arg6 = math
    arg6 = arg6.max
    arg7 = 1
    workValue62 = math
    workValue62 = workValue62.min
    workValue66 = 5
    flag25 = math
    flag25 = flag25.floor
    flag = tonumber
    flag2 = cmgCall6.selectedIndex
    flag = flag(flag2)
    if not flag then
      flag = 0
    end
    flag25 = flag25(flag)
    flag25 = flag25 + 1
    workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3 = workValue62(workValue66, flag25)
    arg6 = arg6(arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
    arg7 = arg6 - 1
    cmgCall6.selectedIndex = arg7
    arg7 = RageUI
    arg7 = arg7.List
    workValue62 = "Selected entity"
    workValue66 = dataTable6
    flag25 = arg6
    flag = "Main wreck uses cfg.debrisMainFlatbedAttach. Scrap uses cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
    flag2 = {}
    flag4 = true

    -- === HELPER FUNCTION (decompiler name: flag5; parameters: arg12, arg22, arg32, arg42) ===
    function flag5(arg12, arg22, arg32, arg42)
      local cmgCall5
      cmgCall5 = arg42 - 1
      cmgCall6.selectedIndex = cmgCall5
    end

    -- === HELPER FUNCTION (decompiler name: flag6; parameters: none) ===
    function flag6()
      local arg12, arg22
    end
    -- Beginner: Draw a RageUI list selector.
    arg7(workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6)
  end
  arg6 = {}
  arg7 = 0.02
  workValue62 = 0.05
  workValue66 = 0.1
  flag25 = 0.2
  flag = 0.5
  arg6[1] = arg7
  arg6[2] = workValue62
  arg6[3] = workValue66
  arg6[4] = flag25
  arg6[5] = flag
  arg7 = {}
  workValue62 = ipairs
  workValue66 = arg6
  workValue62, workValue66, flag25, flag = workValue62(workValue66)
  for flag2, flag4 in workValue62, workValue66, flag25, flag do
    flag5 = #arg7
    flag5 = flag5 + 1
    flag6 = tostring
    flag7 = flag4
    flag6 = flag6(flag7)
    flag7 = "m"
    flag6 = flag6 .. flag7
    arg7[flag5] = flag6
  end
  workValue62 = math
  workValue62 = workValue62.max
  workValue66 = 1
  flag25 = math
  flag25 = flag25.min
  flag = #arg6
  flag2 = math
  flag2 = flag2.floor
  flag4 = cmgCall6.nudgeStepListIndex
  if not flag4 then
    flag4 = 3
  end
  flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3 = flag2(flag4)
  flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3 = flag25(flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
  workValue62 = workValue62(workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3)
  cmgCall6.nudgeStepListIndex = workValue62
  workValue66 = arg6[workValue62]
  cmgCall6.step = workValue66
  workValue66 = RageUI
  workValue66 = workValue66.List
  flag25 = "Nudge step"
  flag = arg7
  flag2 = workValue62
  if arg4 then
    flag4 = "Distance per nudge (local X/Y or world Z)."
    if flag4 then
      goto flow_label_245
    end
  end
  flag4 = "Step size applied to ox, oy, oz (flatbed attach space)."
  ::flow_label_245::
  flag5 = {}
  flag6 = true

  -- === HELPER FUNCTION (decompiler name: flag7; parameters: arg12, arg22, arg32, arg42) ===
  function flag7(arg12, arg22, arg32, arg42)
    local cmgCall5
    cmgCall6.nudgeStepListIndex = arg42
    cmgCall5 = arg6
    cmgCall5 = cmgCall5[arg42]
    cmgCall6.step = cmgCall5
  end

  -- === HELPER FUNCTION (decompiler name: flag8; parameters: none) ===
  function flag8()
    local arg12, arg22
  end
  workValue66(flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8)
  if arg4 then
    workValue66 = RageUI
    workValue66 = workValue66.Separator
    flag25 = "Nudge (local: +Y forward along wreck heading)"
    workValue66(flag25)
  else
    workValue66 = RageUI
    workValue66 = workValue66.Separator
    flag25 = "Nudge flatbed attach: +X = ox, +Y = oy, \194\177Z = oz"
    workValue66(flag25)
  end
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "Local +Y (forward)"
  flag = ""
  flag2 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42, cmgCall5, textValue6, mathHelper
    if arg32 then
      arg42 = workValue8
      cmgCall5 = 0.0
      textValue6 = 1.0
      mathHelper = 0.0
      arg42(cmgCall5, textValue6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "Local -Y (back)"
  flag = ""
  flag2 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42, cmgCall5, textValue6, mathHelper
    if arg32 then
      arg42 = workValue8
      cmgCall5 = 0.0
      textValue6 = -1.0
      mathHelper = 0.0
      arg42(cmgCall5, textValue6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "Local +X (right)"
  flag = ""
  flag2 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42, cmgCall5, textValue6, mathHelper
    if arg32 then
      arg42 = workValue8
      cmgCall5 = 1.0
      textValue6 = 0.0
      mathHelper = 0.0
      arg42(cmgCall5, textValue6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "Local -X (left)"
  flag = ""
  flag2 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42, cmgCall5, textValue6, mathHelper
    if arg32 then
      arg42 = workValue8
      cmgCall5 = -1.0
      textValue6 = 0.0
      mathHelper = 0.0
      arg42(cmgCall5, textValue6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "World +Z"
  flag = ""
  flag2 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42, cmgCall5, textValue6, mathHelper
    if arg32 then
      arg42 = workValue8
      cmgCall5 = 0.0
      textValue6 = 0.0
      mathHelper = 1.0
      arg42(cmgCall5, textValue6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "World -Z"
  flag = ""
  flag2 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42, cmgCall5, textValue6, mathHelper
    if arg32 then
      arg42 = workValue8
      cmgCall5 = 0.0
      textValue6 = 0.0
      mathHelper = -1.0
      arg42(cmgCall5, textValue6, mathHelper)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  if arg4 then
    workValue66 = RageUI
    workValue66 = workValue66.Separator
    flag25 = "Rotate selected (degrees)"
    workValue66(flag25)
  else
    workValue66 = RageUI
    workValue66 = workValue66.Separator
    flag25 = "Rotate: rz on bed attach (degrees)"
    workValue66(flag25)
  end
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "Heading +5\194\176"
  flag = ""
  flag2 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42, cmgCall5
    if arg32 then
      arg42 = workValue9
      cmgCall5 = 5.0
      arg42(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "Heading -5\194\176"
  flag = ""
  flag2 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42, cmgCall5
    if arg32 then
      arg42 = workValue9
      cmgCall5 = -5.0
      arg42(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  workValue66 = RageUI
  workValue66 = workValue66.Button
  flag25 = "Snap main wreck to anchor"
  flag = "Reset main XY to layout anchor."
  flag2 = dataTable4.active
  if flag2 then
    flag2 = arg4
  end

  -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg12, arg22, arg32) ===
  function flag4(arg12, arg22, arg32)
    local arg42
    if arg32 then
      arg42 = workValue10
      arg42()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  workValue66(flag25, flag, flag2, flag4)
  if arg4 then
    workValue66 = "Prints cfg.debrisLayoutGroups[mainModel].secondaryOffsets (ground)."
    if workValue66 then
      goto flow_label_345
    end
  end
  workValue66 = "Prints cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach (bed)."
  ::flow_label_345::
  flag25 = RageUI
  flag25 = flag25.Button
  flag = "Print cfg snippet (F8 console)"
  flag2 = workValue66
  flag4 = dataTable4.active

  -- === HELPER FUNCTION (decompiler name: flag5; parameters: arg12, arg22, arg32) ===
  function flag5(arg12, arg22, arg32)
    local arg42
    if arg32 then
      arg42 = arg4
      if arg42 then
        arg42 = workValue13
        arg42()
      else
        arg42 = workValue14
        arg42()
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  flag25(flag, flag2, flag4, flag5)
end
cmgCall2(textValue, workValue15)
cmgCall2 = Citizen
cmgCall2 = cmgCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7
  while true do
    arg1 = dataTable4.active
    if arg1 then
      arg1 = dataTable4.anchor
      if arg1 then
        arg2 = DrawMarker
        arg3 = 1
        arg4 = arg1.x
        arg5 = arg1.y
        arg6 = arg1.z
        arg6 = arg6 - 0.35
        arg7 = 0.0
        workValue62 = 0.0
        workValue66 = 0.0
        flag25 = 0.0
        flag = 0.0
        flag2 = 0.0
        flag4 = 1.2
        flag5 = 1.2
        flag6 = 0.4
        flag7 = 50
        flag8 = 200
        flag9 = 255
        flag10 = 120
        numberValue3 = false
        flag11 = false
        flag12 = 2
        flag13 = false
        flag14 = nil
        flag15 = nil
        flag16 = false
        arg2(arg3, arg4, arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16)
      end
      arg2 = workValue7
      arg2 = arg2()
      if 0 ~= arg2 then
        arg3 = DoesEntityExist
        arg4 = arg2
        arg3 = arg3(arg4)
        if arg3 then
          arg3 = GetEntityCoords
          arg4 = arg2
          arg5 = true
          -- Beginner: result below is entityCoords.
          arg3 = arg3(arg4, arg5)
          arg4 = DrawMarker
          arg5 = 1
          arg6 = arg3.x
          arg7 = arg3.y
          workValue62 = arg3.z
          workValue62 = workValue62 - 0.2
          workValue66 = 0.0
          flag25 = 0.0
          flag = 0.0
          flag2 = 0.0
          flag4 = 0.0
          flag5 = 0.0
          flag6 = 0.65
          flag7 = 0.65
          flag8 = 0.35
          flag9 = 255
          flag10 = 180
          numberValue3 = 50
          flag11 = 160
          flag12 = false
          flag13 = false
          flag14 = 2
          flag15 = false
          flag16 = nil
          flag17 = nil
          numberValue7 = false
          arg4(arg5, arg6, arg7, workValue62, workValue66, flag25, flag, flag2, flag4, flag5, flag6, flag7, flag8, flag9, flag10, numberValue3, flag11, flag12, flag13, flag14, flag15, flag16, flag17, numberValue7)
        end
      end
      arg3 = Wait
      arg4 = 0
      arg3(arg4)
    else
      arg1 = Wait
      arg2 = 750
      arg1(arg2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(textValue)
cmgCall2 = AddEventHandler
textValue = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 ~= arg2 then
    return
  end
  arg2 = workValue68
  arg2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall2(textValue, workValue15)
