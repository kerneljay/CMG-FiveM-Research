--[[
    LEVEL 1 BEGINNER GUIDE — Weaponsonback
    ===========================================

    File: cmg/prod/client/misc/cl_weaponsonback.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Weaponsonback feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 37
      * Background threads: 0
      * Always-running loops: 2
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
local cmgCall, cmgCall3, textValue3, dataTable, dataTable2, iterator, dataTable3, workValue16, workValue17, cmgCall6, cmgCall2, hashValue, numberValue, numberValue2, workValue5, workValue7, workValue9, workValue11, workValue13, numberValue3, eventRegistration, textValue, workValue14, cmgCall4, cmgCall5, textValue2, workValue15, flag6
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall3 = "cfg/cfg_weaponsonback"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.loadModule
textValue3 = "cfg/weapons"
-- Beginner: result below is config.
cmgCall3 = cmgCall3(textValue3)
textValue3 = "cmg_chain_on_back"
dataTable = {}
dataTable2 = {}
iterator = ipairs
dataTable3 = cmgCall.chainOnBackWeaponNames
if not dataTable3 then
  dataTable3 = {}
end
iterator, dataTable3, workValue16, workValue17 = iterator(dataTable3)
for cmgCall6, cmgCall2 in iterator, dataTable3, workValue16, workValue17 do
  hashValue = GetHashKey
  numberValue = cmgCall2
  -- Beginner: result below is hash.
  hashValue = hashValue(numberValue)
  dataTable2[hashValue] = cmgCall2
end

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4
  arg1 = {}
  arg2 = pairs
  arg3 = dataTable
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    dataTable4 = {}
    workValue18 = arg7[1]
    workValue19 = arg7[2]
    workValue = arg7[3]
    workValue2 = arg7[4]
    workValue3 = arg7[5]
    workValue4 = arg7[6]
    dataTable4[1] = workValue18
    dataTable4[2] = workValue19
    dataTable4[3] = workValue
    dataTable4[4] = workValue2
    dataTable4[5] = workValue3
    dataTable4[6] = workValue4
    arg1[arg6] = dataTable4
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = SetResourceKvp
  arg2 = textValue3
  arg3 = json
  arg3 = arg3.encode
  arg4 = dataTable
  arg3, arg4, arg5 = arg3(arg4)
  arg1(arg2, arg3, arg4, arg5)
  arg1 = LocalPlayer
  if arg1 then
    arg1 = LocalPlayer
    arg1 = arg1.state
    if arg1 then
      arg1 = LocalPlayer
      arg1 = arg1.state
      arg2 = arg1
      arg1 = arg1.set
      arg3 = "chainOnBack"
      arg4 = iterator
      arg4 = arg4()
      arg5 = true
      arg1(arg2, arg3, arg4, arg5)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: none) ===
function workValue16()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12
  arg1 = {}
  dataTable = arg1
  arg1 = GetResourceKvpString
  arg2 = textValue3
  arg1 = arg1(arg2)
  if not arg1 or "" == arg1 then
    return
  end
  arg2 = pcall
  arg3 = json
  arg3 = arg3.decode
  arg4 = arg1
  arg2, arg3 = arg2(arg3, arg4)
  if arg2 then
    arg4 = type
    arg5 = arg3
    arg4 = arg4(arg5)
    if "table" == arg4 then
      goto flow_label_25
    end
  end
  return
  ::flow_label_25::
  arg4 = pairs
  arg5 = arg3
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for dataTable4, workValue18 in arg4, arg5, arg6, arg7 do
    workValue19 = type
    workValue = dataTable4
    workValue19 = workValue19(workValue)
    if "string" == workValue19 then
      workValue19 = type
      workValue = workValue18
      workValue19 = workValue19(workValue)
      if "table" == workValue19 then
        workValue19 = workValue18[1]
        if workValue19 then
          workValue19 = workValue18[2]
          if workValue19 then
            workValue19 = workValue18[3]
            if workValue19 then
              workValue19 = workValue18[4]
              if workValue19 then
                workValue19 = workValue18[5]
                if workValue19 then
                  workValue19 = workValue18[6]
                  if workValue19 then
                    workValue19 = dataTable
                    workValue = {}
                    workValue2 = tonumber
                    workValue3 = workValue18[1]
                    workValue2 = workValue2(workValue3)
                    if not workValue2 then
                      workValue2 = 0.0
                    end
                    workValue3 = tonumber
                    workValue4 = workValue18[2]
                    workValue3 = workValue3(workValue4)
                    if not workValue3 then
                      workValue3 = 0.0
                    end
                    workValue4 = tonumber
                    workValue6 = workValue18[3]
                    workValue4 = workValue4(workValue6)
                    if not workValue4 then
                      workValue4 = 0.0
                    end
                    workValue6 = tonumber
                    workValue8 = workValue18[4]
                    workValue6 = workValue6(workValue8)
                    if not workValue6 then
                      workValue6 = 0.0
                    end
                    workValue8 = tonumber
                    workValue10 = workValue18[5]
                    workValue8 = workValue8(workValue10)
                    if not workValue8 then
                      workValue8 = 0.0
                    end
                    workValue10 = tonumber
                    workValue12 = workValue18[6]
                    workValue10 = workValue10(workValue12)
                    if not workValue10 then
                      workValue10 = 0.0
                    end
                    workValue[1] = workValue2
                    workValue[2] = workValue3
                    workValue[3] = workValue4
                    workValue[4] = workValue6
                    workValue[5] = workValue8
                    workValue[6] = workValue10
                    workValue19[dataTable4] = workValue
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

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = LocalPlayer
  if arg1 then
    arg1 = LocalPlayer
    arg1 = arg1.state
    if arg1 then
      arg1 = LocalPlayer
      arg1 = arg1.state
      arg2 = arg1
      arg1 = arg1.set
      arg3 = "chainOnBack"
      arg4 = iterator
      arg4 = arg4()
      arg5 = true
      arg1(arg2, arg3, arg4, arg5)
    end
  end
end
cmgCall6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable4
  arg2 = GetHashKey
  arg3 = arg1
  -- Beginner: result below is hash.
  arg2 = arg2(arg3)
  arg3 = cmgCall.weapons
  arg3 = arg3[arg2]
  if not arg3 then
    arg4 = vector3
    arg5 = 0.0
    arg6 = 0.0
    arg7 = 0.0
    arg4 = arg4(arg5, arg6, arg7)
    arg5 = vector3
    arg6 = 0.0
    arg7 = 0.0
    dataTable4 = 0.0
    arg5, arg6, arg7, dataTable4 = arg5(arg6, arg7, dataTable4)
    return arg4, arg5, arg6, arg7, dataTable4
  end
  arg4 = arg3.offset
  arg5 = arg3.rotation
  return arg4, arg5
end
cmgCall6.getChainOnBackCfgTransform = cmgCall2
cmgCall6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19
  arg2 = CMG
  arg2 = arg2.getChainOnBackCfgTransform
  arg3 = arg1
  arg2, arg3 = arg2(arg3)
  arg4 = dataTable
  arg4 = arg4[arg1]
  if arg4 then
    arg5 = arg4[1]
    arg6 = arg4[2]
    arg7 = arg4[3]
    dataTable4 = arg4[4]
    workValue18 = arg4[5]
    workValue19 = arg4[6]
    return arg5, arg6, arg7, dataTable4, workValue18, workValue19
  end
  arg5 = arg2.x
  arg6 = arg2.y
  arg7 = arg2.z
  dataTable4 = arg3.x
  workValue18 = arg3.y
  workValue19 = arg3.z
  return arg5, arg6, arg7, dataTable4, workValue18, workValue19
end
cmgCall6.getChainOnBackEffectiveNumbers = cmgCall2
cmgCall6 = Citizen
cmgCall6 = cmgCall6.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2
  arg1 = workValue16
  arg1()
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 1000
  arg1(arg2)
  arg1 = workValue17
  arg1()
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall6(cmgCall2)
cmgCall6 = AddEventHandler
cmgCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION: hashValue() ===
function hashValue()
  local arg1, arg2
  arg1 = workValue16
  arg1()
  arg1 = workValue17
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall6(cmgCall2, hashValue)
cmgCall6 = {}
cmgCall6.enabled = false
cmgCall6.hash = 313219588
cmgCall6.bone = 39317
cmgCall2 = vector3
hashValue = 0.02
numberValue = 0.09
numberValue2 = 0.01
cmgCall2 = cmgCall2(hashValue, numberValue, numberValue2)
cmgCall6.offset = cmgCall2
cmgCall2 = vector3
hashValue = 90.0
numberValue = 0.0
numberValue2 = 0.0
cmgCall2 = cmgCall2(hashValue, numberValue, numberValue2)
cmgCall6.rotation = cmgCall2
cmgCall2 = Citizen
cmgCall2 = cmgCall2.CreateThread

-- === HELPER FUNCTION: hashValue() ===
function hashValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4
  arg1 = pairs
  arg2 = cmgCall3.weapons
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = cmgCall.weapons
    dataTable4 = arg6.hash
    arg7 = arg7[dataTable4]
    if not arg7 then
      arg7 = nil
      dataTable4 = arg6.mag
      if dataTable4 then
        dataTable4 = GetHashKey
        workValue18 = arg6.mag
        -- Beginner: result below is hash.
        dataTable4 = dataTable4(workValue18)
        arg7 = dataTable4
      end
      dataTable4 = arg6.dontShowOnBack
      if not dataTable4 then
        dataTable4 = arg6.class
        if "SMG" == dataTable4 then
          dataTable4 = cmgCall.weapons
          workValue18 = arg6.hash
          workValue19 = {}
          workValue19.bone = 58271
          workValue = vector3
          workValue2 = -0.01
          workValue3 = 0.1
          workValue4 = -0.07
          workValue = workValue(workValue2, workValue3, workValue4)
          workValue19.offset = workValue
          workValue = vector3
          workValue2 = -55.0
          workValue3 = 0.1
          workValue4 = 0.0
          workValue = workValue(workValue2, workValue3, workValue4)
          workValue19.rotation = workValue
          workValue = GetHashKey
          workValue2 = arg6.model
          -- Beginner: result below is hash.
          workValue = workValue(workValue2)
          workValue19.model = workValue
          workValue19.type = "SMG"
          workValue19.magComponent = arg7
          dataTable4[workValue18] = workValue19
        else
          dataTable4 = arg6.class
          if "AR" == dataTable4 then
            dataTable4 = cmgCall.weapons
            workValue18 = arg6.hash
            workValue19 = {}
            workValue19.bone = 24818
            workValue = vector3
            workValue2 = -0.12
            workValue3 = -0.12
            workValue4 = -0.13
            workValue = workValue(workValue2, workValue3, workValue4)
            workValue19.offset = workValue
            workValue = vector3
            workValue2 = 100.0
            workValue3 = -3.0
            workValue4 = 5.0
            workValue = workValue(workValue2, workValue3, workValue4)
            workValue19.rotation = workValue
            workValue = GetHashKey
            workValue2 = arg6.model
            -- Beginner: result below is hash.
            workValue = workValue(workValue2)
            workValue19.model = workValue
            workValue19.type = "AR"
            workValue19.magComponent = arg7
            dataTable4[workValue18] = workValue19
          else
            dataTable4 = arg6.class
            if "Heavy" == dataTable4 then
              dataTable4 = cmgCall.weapons
              workValue18 = arg6.hash
              workValue19 = {}
              workValue19.bone = 24818
              workValue = vector3
              workValue2 = -0.12
              workValue3 = -0.12
              workValue4 = -0.13
              workValue = workValue(workValue2, workValue3, workValue4)
              workValue19.offset = workValue
              workValue = vector3
              workValue2 = 100.0
              workValue3 = -3.0
              workValue4 = 5.0
              workValue = workValue(workValue2, workValue3, workValue4)
              workValue19.rotation = workValue
              workValue = GetHashKey
              workValue2 = arg6.model
              -- Beginner: result below is hash.
              workValue = workValue(workValue2)
              workValue19.model = workValue
              workValue19.type = "Heavy"
              workValue19.magComponent = arg7
              dataTable4[workValue18] = workValue19
            else
              dataTable4 = arg6.class
              if "Melee" == dataTable4 then
                dataTable4 = arg6.subType
                if "knuckle" ~= dataTable4 then
                  dataTable4 = arg6.subType
                  if "stungun" ~= dataTable4 then
                    dataTable4 = cmgCall.weapons
                    workValue18 = arg6.hash
                    workValue19 = {}
                    workValue19.bone = 24818
                    workValue = vector3
                    workValue2 = 0.32
                    workValue3 = -0.15
                    workValue4 = 0.13
                    workValue = workValue(workValue2, workValue3, workValue4)
                    workValue19.offset = workValue
                    workValue = vector3
                    workValue2 = 0.0
                    workValue3 = -90.0
                    workValue4 = 0.0
                    workValue = workValue(workValue2, workValue3, workValue4)
                    workValue19.rotation = workValue
                    workValue = GetHashKey
                    workValue2 = arg6.model
                    -- Beginner: result below is hash.
                    workValue = workValue(workValue2)
                    workValue19.model = workValue
                    workValue19.type = "Melee"
                    workValue19.magComponent = arg7
                    dataTable4[workValue18] = workValue19
                end
              end
              else
                dataTable4 = arg6.class
                if "Shotgun" == dataTable4 then
                  dataTable4 = cmgCall.weapons
                  workValue18 = arg6.hash
                  workValue19 = {}
                  workValue19.bone = 24818
                  workValue = vector3
                  workValue2 = -0.12
                  workValue3 = -0.12
                  workValue4 = -0.13
                  workValue = workValue(workValue2, workValue3, workValue4)
                  workValue19.offset = workValue
                  workValue = vector3
                  workValue2 = 100.0
                  workValue3 = -3.0
                  workValue4 = 5.0
                  workValue = workValue(workValue2, workValue3, workValue4)
                  workValue19.rotation = workValue
                  workValue = GetHashKey
                  workValue2 = arg6.model
                  -- Beginner: result below is hash.
                  workValue = workValue(workValue2)
                  workValue19.model = workValue
                  workValue19.type = "Shotgun"
                  workValue19.magComponent = arg7
                  dataTable4[workValue18] = workValue19
                end
              end
            end
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(hashValue)
cmgCall2 = AddEventHandler
hashValue = "2d7bd9be41"
-- Beginner: this function runs when client event "2d7bd9be41" fires.

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = LocalPlayer
  arg1 = arg1.state
  arg1 = arg1.weaponsDiagonal
  if not arg1 then
    arg1 = LocalPlayer
    arg1 = arg1.state
    arg2 = arg1
    arg1 = arg1.set
    arg3 = "weaponsDiagonal"
    arg4 = true
    arg5 = true
    arg1(arg2, arg3, arg4, arg5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "2d7bd9be41".
cmgCall2(hashValue, numberValue)
cmgCall2 = AddEventHandler
hashValue = "311dece672"
-- Beginner: this function runs when client event "311dece672" fires.

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = LocalPlayer
  arg1 = arg1.state
  arg1 = arg1.weaponsDiagonal
  if arg1 then
    arg1 = LocalPlayer
    arg1 = arg1.state
    arg2 = arg1
    arg1 = arg1.set
    arg3 = "weaponsDiagonal"
    arg4 = nil
    arg5 = true
    arg1(arg2, arg3, arg4, arg5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "311dece672".
cmgCall2(hashValue, numberValue)
cmgCall2 = AddEventHandler
hashValue = "c4b3821d33"
-- Beginner: this function runs when client event "c4b3821d33" fires.

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = LocalPlayer
  arg1 = arg1.state
  arg1 = arg1.frontAR
  if not arg1 then
    arg1 = LocalPlayer
    arg1 = arg1.state
    arg2 = arg1
    arg1 = arg1.set
    arg3 = "frontAR"
    arg4 = true
    arg5 = true
    arg1(arg2, arg3, arg4, arg5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "c4b3821d33".
cmgCall2(hashValue, numberValue)
cmgCall2 = AddEventHandler
hashValue = "45968dd649"
-- Beginner: this function runs when client event "45968dd649" fires.

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = LocalPlayer
  arg1 = arg1.state
  arg1 = arg1.frontAR
  if arg1 then
    arg1 = LocalPlayer
    arg1 = arg1.state
    arg2 = arg1
    arg1 = arg1.set
    arg3 = "frontAR"
    arg4 = nil
    arg5 = true
    arg1(arg2, arg3, arg4, arg5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "45968dd649".
cmgCall2(hashValue, numberValue)
cmgCall2 = AddEventHandler
hashValue = "b6b9f5a6b2"
-- Beginner: this function runs when client event "b6b9f5a6b2" fires.

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = LocalPlayer
  arg1 = arg1.state
  arg1 = arg1.frontSMG
  if not arg1 then
    arg1 = LocalPlayer
    arg1 = arg1.state
    arg2 = arg1
    arg1 = arg1.set
    arg3 = "frontSMG"
    arg4 = true
    arg5 = true
    arg1(arg2, arg3, arg4, arg5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "b6b9f5a6b2".
cmgCall2(hashValue, numberValue)
cmgCall2 = AddEventHandler
hashValue = "21f52e326d"
-- Beginner: this function runs when client event "21f52e326d" fires.

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = LocalPlayer
  arg1 = arg1.state
  arg1 = arg1.frontSMG
  if arg1 then
    arg1 = LocalPlayer
    arg1 = arg1.state
    arg2 = arg1
    arg1 = arg1.set
    arg3 = "frontSMG"
    arg4 = nil
    arg5 = true
    arg1(arg2, arg3, arg4, arg5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "21f52e326d".
cmgCall2(hashValue, numberValue)
cmgCall2 = {}
hashValue = {}
numberValue = {}
numberValue2 = 0

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3
  arg1 = GetSelectedPedWeapon
  arg2 = PlayerPedId
  arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3 = arg2()
  -- Beginner: result below is weaponHash.
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3)
  arg2 = CMG
  arg2 = arg2.getCachedWeaponStore
  arg2 = arg2()
  arg3 = false
  arg4 = CMG
  arg4 = arg4.hasClientPermission
  arg5 = "police.onduty.permission"
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = CMG
    arg4 = arg4.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg4 = arg4()
    arg4 = 0 ~= arg4
  end
  arg5 = pairs
  arg6 = arg2
  arg5, arg6, arg7, dataTable4 = arg5(arg6)
  for workValue18 in arg5, arg6, arg7, dataTable4 do
    workValue19 = GetHashKey
    workValue = workValue18
    -- Beginner: result below is hash.
    workValue19 = workValue19(workValue)
    workValue = cmgCall.weapons
    workValue = workValue[workValue19]
    if workValue then
      if arg4 then
        workValue2 = workValue.type
      end
      workValue2 = CMG
      workValue2 = workValue2.isEmergencyService
      workValue2 = workValue2()
      if not workValue2 then
        workValue2 = tCMG
        workValue2 = workValue2.isInGreenzone
        workValue3 = false
        workValue2 = workValue2(workValue3)
        workValue2 = "Heavy" ~= workValue2 and workValue2
      end
      workValue3 = cmgCall2
      workValue3 = workValue3[workValue19]
      if workValue3 and not workValue2 then
        workValue3 = cmgCall2
        workValue3[workValue19] = nil
        arg3 = true
      else
        workValue3 = cmgCall2
        workValue3 = workValue3[workValue19]
        if not workValue3 and workValue19 ~= arg1 and workValue2 then
          workValue3 = cmgCall2
          workValue3[workValue19] = workValue18
          arg3 = true
        end
      end
    end
  end
  arg5 = pairs
  arg6 = cmgCall2
  arg5, arg6, arg7, dataTable4 = arg5(arg6)
  for workValue18, workValue19 in arg5, arg6, arg7, dataTable4 do
    workValue = arg2[workValue19]
    if not workValue or workValue18 == arg1 then
      workValue = cmgCall2
      workValue[workValue18] = nil
      arg3 = true
    end
  end
  if arg3 then
    arg5 = {}
    arg6 = pairs
    arg7 = cmgCall2
    arg6, arg7, dataTable4, workValue18 = arg6(arg7)
    for workValue19 in arg6, arg7, dataTable4, workValue18 do
      workValue = table
      workValue = workValue.insert
      workValue2 = arg5
      workValue3 = workValue19
      workValue(workValue2, workValue3)
    end
    arg6 = #arg5
    if arg6 > 0 then
      arg6 = LocalPlayer
      arg6 = arg6.state
      arg7 = arg6
      arg6 = arg6.set
      dataTable4 = "weapons"
      workValue18 = arg5
      workValue19 = true
      arg6(arg7, dataTable4, workValue18, workValue19)
    else
      arg6 = LocalPlayer
      arg6 = arg6.state
      arg7 = arg6
      arg6 = arg6.set
      dataTable4 = "weapons"
      workValue18 = nil
      workValue19 = true
      arg6(arg7, dataTable4, workValue18, workValue19)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5
  arg3 = cmgCall.weapons
  arg3 = arg3[arg1]
  if not arg3 then
    arg4 = 0
    return arg4
  end
  arg4 = arg3.bone
  arg5 = arg3.offset
  arg6 = arg3.rotation
  arg7 = dataTable2
  arg7 = arg7[arg1]
  if arg7 then
    dataTable4 = nil
    workValue18 = arg2.ped
    workValue19 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workValue19 = workValue19()
    if workValue18 == workValue19 then
      workValue18 = dataTable
      dataTable4 = workValue18[arg7]
    else
      workValue18 = type
      workValue19 = arg2.chainOnBack
      workValue18 = workValue18(workValue19)
      if "table" == workValue18 then
        workValue18 = arg2.chainOnBack
        dataTable4 = workValue18[arg7]
      end
    end
    if dataTable4 then
      workValue18 = vector3
      workValue19 = dataTable4[1]
      workValue = dataTable4[2]
      workValue2 = dataTable4[3]
      workValue18 = workValue18(workValue19, workValue, workValue2)
      arg5 = workValue18
      workValue18 = vector3
      workValue19 = dataTable4[4]
      workValue = dataTable4[5]
      workValue2 = dataTable4[6]
      workValue18 = workValue18(workValue19, workValue, workValue2)
      arg6 = workValue18
    end
  end
  dataTable4 = cmgCall6.enabled
  if dataTable4 then
    dataTable4 = cmgCall6.hash
    if arg1 == dataTable4 then
      dataTable4 = arg2.ped
      workValue18 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue18 = workValue18()
      if dataTable4 == workValue18 then
        arg4 = cmgCall6.bone
        arg5 = cmgCall6.offset
        arg6 = cmgCall6.rotation
      end
    end
  end
  dataTable4 = arg2.diagonal
  if dataTable4 then
    dataTable4 = vector3
    workValue18 = -0.12
    workValue19 = -0.12
    workValue = -0.13
    dataTable4 = dataTable4(workValue18, workValue19, workValue)
    if arg5 == dataTable4 then
      dataTable4 = vector3
      workValue18 = 0.0
      workValue19 = -0.2
      workValue = 0.0
      dataTable4 = dataTable4(workValue18, workValue19, workValue)
      arg5 = dataTable4
      dataTable4 = vector3
      workValue18 = 0.0
      workValue19 = 45.0
      workValue = arg6.z
      dataTable4 = dataTable4(workValue18, workValue19, workValue)
      arg6 = dataTable4
    end
  end
  dataTable4 = arg2.frontAR
  if dataTable4 then
    dataTable4 = arg3.type
    if "AR" == dataTable4 then
      dataTable4 = vector3
      workValue18 = 0.0
      workValue19 = 0.18
      workValue = 0.0
      dataTable4 = dataTable4(workValue18, workValue19, workValue)
      arg5 = dataTable4
      dataTable4 = vector3
      workValue18 = 180.0
      workValue19 = 148.0
      workValue = 0.0
      dataTable4 = dataTable4(workValue18, workValue19, workValue)
      arg6 = dataTable4
    end
  end
  dataTable4 = arg2.frontSMG
  if dataTable4 then
    dataTable4 = arg3.type
    if "SMG" == dataTable4 then
      arg4 = 24818
      dataTable4 = vector3
      workValue18 = 0.0
      workValue19 = 0.18
      workValue = 0.0
      dataTable4 = dataTable4(workValue18, workValue19, workValue)
      arg5 = dataTable4
      dataTable4 = vector3
      workValue18 = 180.0
      workValue19 = 148.0
      workValue = 0.0
      dataTable4 = dataTable4(workValue18, workValue19, workValue)
      arg6 = dataTable4
    end
  end
  dataTable4 = HasModelLoaded
  workValue18 = arg3.model
  dataTable4 = dataTable4(workValue18)
  if not dataTable4 then
    dataTable4 = RequestModel
    workValue18 = arg3.model
    dataTable4(workValue18)
    dataTable4 = 0
    return dataTable4
  end
  dataTable4 = arg3.components
  if not dataTable4 then
    dataTable4 = arg3.magComponent
    if not dataTable4 then
      goto flow_label_145
    end
  end
  dataTable4 = HasWeaponAssetLoaded
  workValue18 = arg1
  dataTable4 = dataTable4(workValue18)
  if not dataTable4 then
    dataTable4 = RequestWeaponAsset
    workValue18 = arg1
    workValue19 = 4294967295
    workValue = 4294967295
    dataTable4(workValue18, workValue19, workValue)
    dataTable4 = 0
    return dataTable4
  end
  ::flow_label_145::
  dataTable4 = 0
  workValue18 = arg3.components
  if workValue18 then
    workValue18 = CreateWeaponObject
    workValue19 = arg1
    workValue = 0
    workValue2 = 0.0
    workValue3 = 0.0
    workValue4 = 0.0
    workValue6 = true
    workValue8 = 1.0
    workValue10 = false
    workValue18 = workValue18(workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10)
    dataTable4 = workValue18
    workValue18 = pairs
    workValue19 = arg3.components
    workValue18, workValue19, workValue, workValue2 = workValue18(workValue19)
    for workValue3, workValue4 in workValue18, workValue19, workValue, workValue2 do
      workValue6 = GiveWeaponComponentToWeaponObject
      workValue8 = dataTable4
      workValue10 = workValue4
      workValue6(workValue8, workValue10)
    end
    workValue18 = arg3.removeComponents
    if workValue18 then
      workValue18 = pairs
      workValue19 = arg3.removeComponents
      workValue18, workValue19, workValue, workValue2 = workValue18(workValue19)
      for workValue3, workValue4 in workValue18, workValue19, workValue, workValue2 do
        workValue6 = RemoveWeaponComponentFromWeaponObject
        workValue8 = dataTable4
        workValue10 = workValue4
        workValue6(workValue8, workValue10)
      end
    end
  else
    workValue18 = arg3.magComponent
    if workValue18 then
      workValue18 = CreateWeaponObject
      workValue19 = arg1
      workValue = 0
      workValue2 = 0.0
      workValue3 = 0.0
      workValue4 = 0.0
      workValue6 = true
      workValue8 = 1.0
      workValue10 = false
      workValue18 = workValue18(workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10)
      dataTable4 = workValue18
      workValue18 = GiveWeaponComponentToWeaponObject
      workValue19 = dataTable4
      workValue = arg3.magComponent
      workValue18(workValue19, workValue)
    else
      workValue18 = CreateObject
      workValue19 = arg3.model
      workValue = 0.0
      workValue2 = 0.0
      workValue3 = 0.0
      workValue4 = false
      workValue6 = false
      workValue8 = false
      -- Beginner: result below is objectEntity.
      workValue18 = workValue18(workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8)
      dataTable4 = workValue18
    end
  end
  workValue18 = AttachEntityToEntity
  workValue19 = dataTable4
  workValue = arg2.ped
  workValue2 = GetPedBoneIndex
  workValue3 = arg2.ped
  workValue4 = arg4
  workValue2 = workValue2(workValue3, workValue4)
  workValue3 = arg5.x
  workValue4 = arg5.y
  workValue6 = arg5.z
  workValue8 = arg6.x
  workValue10 = arg6.y
  workValue12 = arg6.z
  flag = false
  flag2 = false
  flag3 = false
  flag4 = false
  numberValue4 = 2
  flag5 = true
  -- Beginner: Attach one entity to another entity.
  workValue18(workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5)
  workValue18 = SetModelAsNoLongerNeeded
  workValue19 = arg3.model
  workValue18(workValue19)
  return dataTable4
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18
  arg2 = pairs
  arg3 = arg1.weapons
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    if 0 ~= arg7 then
      dataTable4 = DeleteEntity
      workValue18 = arg7
      -- Beginner: Delete a GTA entity.
      dataTable4(workValue18)
      dataTable4 = arg1.weapons
      dataTable4[arg6] = 0
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue
  arg2 = arg1.ped
  if 0 == arg2 then
    return
  end
  arg2 = IsEntityVisible
  arg3 = arg1.ped
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = workValue9
    arg3 = arg1
    arg2(arg3)
    return
  end
  arg2 = pairs
  arg3 = arg1.weapons
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    if 0 == arg7 then
      dataTable4 = arg1.weapons
      workValue18 = workValue7
      workValue19 = arg6
      workValue = arg1
      workValue18 = workValue18(workValue19, workValue)
      dataTable4[arg6] = workValue18
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4
  arg1 = pairs
  arg2 = hashValue
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.playerIndex
    if -1 == arg7 then
      arg7 = GetPlayerFromServerId
      dataTable4 = arg5
      -- Beginner: result below is playerIndex.
      arg7 = arg7(dataTable4)
      arg6.playerIndex = arg7
    end
    arg7 = arg6.playerIndex
    if -1 ~= arg7 then
      arg7 = pairs
      dataTable4 = arg6.weapons
      arg7, dataTable4, workValue18, workValue19 = arg7(dataTable4)
      for workValue, workValue2 in arg7, dataTable4, workValue18, workValue19 do
        if 0 ~= workValue2 then
          workValue3 = IsEntityAttached
          workValue4 = workValue2
          workValue3 = workValue3(workValue4)
          if not workValue3 then
            workValue3 = DeleteEntity
            workValue4 = workValue2
            -- Beginner: Delete a GTA entity.
            workValue3(workValue4)
            workValue3 = arg6.weapons
            workValue3[workValue] = 0
          end
        end
      end
      arg7 = arg6.ped
      if 0 ~= arg7 then
        arg7 = DoesEntityExist
        dataTable4 = arg6.ped
        arg7 = arg7(dataTable4)
        if arg7 then
          goto flow_label_46
        end
      end
      arg7 = GetPlayerPed
      dataTable4 = arg6.playerIndex
      -- Beginner: result below is playerPed.
      arg7 = arg7(dataTable4)
      arg6.ped = arg7
      ::flow_label_46::
      arg7 = workValue11
      dataTable4 = arg6
      arg7(dataTable4)
    end
  end
end
numberValue3 = 0
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2
  while true do
    arg1 = workValue5
    arg1()
    arg1 = numberValue3
    arg1 = arg1 % 3
    if 0 == arg1 then
      arg1 = workValue13
      arg1()
    end
    arg1 = numberValue3
    arg1 = arg1 + 1
    numberValue3 = arg1
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue)
eventRegistration = RegisterNetEvent
textValue = "onPlayerDropped"
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: arg1) ===
function workValue14(arg1)
  local arg2, arg3, arg4
  arg2 = hashValue
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = workValue9
    arg4 = arg2
    arg3(arg4)
    arg3 = hashValue
    arg3[arg1] = nil
  end
  arg3 = numberValue
  arg3[arg1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "onPlayerDropped".
eventRegistration(textValue, workValue14)
eventRegistration = AddStateBagChangeHandler
textValue = "weapons"
workValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4
  arg4 = tonumber
  arg5 = stringsplit
  arg6 = arg1
  arg7 = ":"
  arg5 = arg5(arg6, arg7)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  if not arg4 then
    return
  end
  arg5 = hashValue
  arg5 = arg5[arg4]
  if nil == arg3 then
    if arg5 then
      arg6 = workValue9
      arg7 = arg5
      arg6(arg7)
      arg6 = hashValue
      arg6[arg4] = nil
    end
    return
  end
  if arg5 then
    arg6 = Player
    arg7 = arg4
    arg6 = arg6(arg7)
    arg6 = arg6.state
    arg6 = arg6.chainOnBack
    arg5.chainOnBack = arg6
    arg6 = pairs
    arg7 = arg5.weapons
    arg6, arg7, dataTable4, workValue18 = arg6(arg7)
    for workValue19, workValue in arg6, arg7, dataTable4, workValue18 do
      workValue2 = table
      workValue2 = workValue2.has
      workValue3 = arg3
      workValue4 = workValue19
      workValue2 = workValue2(workValue3, workValue4)
      if not workValue2 then
        if 0 ~= workValue then
          workValue2 = DeleteEntity
          workValue3 = workValue
          -- Beginner: Delete a GTA entity.
          workValue2(workValue3)
        end
        workValue2 = arg5.weapons
        workValue2[workValue19] = nil
        workValue2 = cmgCall.weapons
        workValue2 = workValue2[workValue19]
        if workValue2 then
          workValue3 = SetModelAsNoLongerNeeded
          workValue4 = workValue2.model
          workValue3(workValue4)
        end
      end
    end
    arg6 = pairs
    arg7 = arg3
    arg6, arg7, dataTable4, workValue18 = arg6(arg7)
    for workValue19, workValue in arg6, arg7, dataTable4, workValue18 do
      workValue2 = arg5.weapons
      workValue2 = workValue2[workValue]
      if not workValue2 then
        workValue2 = arg5.weapons
        workValue2[workValue] = 0
      end
    end
    arg6 = workValue11
    arg7 = arg5
    arg6(arg7)
  else
    arg6 = {}
    arg7 = pairs
    dataTable4 = arg3
    arg7, dataTable4, workValue18, workValue19 = arg7(dataTable4)
    for workValue, workValue2 in arg7, dataTable4, workValue18, workValue19 do
      arg6[workValue2] = 0
    end
    arg7 = hashValue
    dataTable4 = {}
    dataTable4.ped = 0
    dataTable4.playerIndex = -1
    dataTable4.weapons = arg6
    workValue18 = Player
    workValue19 = arg4
    workValue18 = workValue18(workValue19)
    workValue18 = workValue18.state
    workValue18 = workValue18.weaponsDiagonal
    dataTable4.diagonal = workValue18
    workValue18 = Player
    workValue19 = arg4
    workValue18 = workValue18(workValue19)
    workValue18 = workValue18.state
    workValue18 = workValue18.frontAR
    dataTable4.frontAR = workValue18
    workValue18 = Player
    workValue19 = arg4
    workValue18 = workValue18(workValue19)
    workValue18 = workValue18.state
    workValue18 = workValue18.frontSMG
    dataTable4.frontSMG = workValue18
    workValue18 = Player
    workValue19 = arg4
    workValue18 = workValue18(workValue19)
    workValue18 = workValue18.state
    workValue18 = workValue18.chainOnBack
    dataTable4.chainOnBack = workValue18
    arg7[arg4] = dataTable4
  end
end
eventRegistration(textValue, workValue14, cmgCall4)
eventRegistration = AddStateBagChangeHandler
textValue = "weaponsDiagonal"
workValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = tonumber
  arg5 = stringsplit
  arg6 = arg1
  arg7 = ":"
  arg5 = arg5(arg6, arg7)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  arg5 = hashValue
  arg5 = arg5[arg4]
  if arg5 then
    arg6 = arg5.diagonal
    if arg6 ~= arg3 then
      arg5.diagonal = arg3
      arg6 = workValue9
      arg7 = arg5
      arg6(arg7)
      arg6 = workValue11
      arg7 = arg5
      arg6(arg7)
    end
  end
end
eventRegistration(textValue, workValue14, cmgCall4)
eventRegistration = AddStateBagChangeHandler
textValue = "frontAR"
workValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = tonumber
  arg5 = stringsplit
  arg6 = arg1
  arg7 = ":"
  arg5 = arg5(arg6, arg7)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  arg5 = hashValue
  arg5 = arg5[arg4]
  if arg5 then
    arg6 = arg5.frontAR
    if arg6 ~= arg3 then
      arg5.frontAR = arg3
      arg6 = workValue9
      arg7 = arg5
      arg6(arg7)
      arg6 = workValue11
      arg7 = arg5
      arg6(arg7)
    end
  end
end
eventRegistration(textValue, workValue14, cmgCall4)
eventRegistration = AddStateBagChangeHandler
textValue = "frontSMG"
workValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = tonumber
  arg5 = stringsplit
  arg6 = arg1
  arg7 = ":"
  arg5 = arg5(arg6, arg7)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  arg5 = hashValue
  arg5 = arg5[arg4]
  if arg5 then
    arg6 = arg5.frontSMG
    if arg6 ~= arg3 then
      arg5.frontSMG = arg3
      arg6 = workValue9
      arg7 = arg5
      arg6(arg7)
      arg6 = workValue11
      arg7 = arg5
      arg6(arg7)
    end
  end
end
eventRegistration(textValue, workValue14, cmgCall4)
eventRegistration = AddStateBagChangeHandler
textValue = "chainOnBack"
workValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = tonumber
  arg5 = stringsplit
  arg6 = arg1
  arg7 = ":"
  arg5 = arg5(arg6, arg7)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  if not arg4 then
    return
  end
  arg5 = hashValue
  arg5 = arg5[arg4]
  if not arg5 then
    return
  end
  arg5.chainOnBack = arg3
  arg6 = workValue9
  arg7 = arg5
  arg6(arg7)
  arg6 = workValue11
  arg7 = arg5
  arg6(arg7)
end
eventRegistration(textValue, workValue14, cmgCall4)
eventRegistration = AddStateBagChangeHandler
textValue = "redDot"
workValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = tonumber
  arg5 = stringsplit
  arg6 = arg1
  arg7 = ":"
  arg5 = arg5(arg6, arg7)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  if arg4 then
    arg5 = numberValue
    arg5[arg4] = arg3
  end
end
eventRegistration(textValue, workValue14, cmgCall4)
eventRegistration = 0

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetSelectedPedWeapon
  arg3 = arg1
  -- Beginner: result below is weaponHash.
  arg2 = arg2(arg3)
  arg3 = cmgCall.redDotWeapons
  arg3 = arg3[arg2]
  if arg3 then
    arg3 = IsPlayerFreeAiming
    arg4 = PlayerId
    arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9 = arg4()
    arg3 = arg3(arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9)
    if arg3 then
      arg3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg3 = arg3()
      arg4 = eventRegistration
      arg3 = arg3 - arg4
      arg4 = 200
      if arg3 > arg4 then
        arg3 = LocalPlayer
        arg3 = arg3.state
        arg4 = arg3
        arg3 = arg3.set
        arg5 = "redDot"
        arg6 = {}
        arg7 = GetGameplayCamCoord
        arg7 = arg7()
        dataTable4 = CMG
        dataTable4 = dataTable4.rotationToDirection
        workValue18 = GetGameplayCamRot
        workValue19 = 2
        workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9 = workValue18(workValue19)
        dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9 = dataTable4(workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9)
        arg6[1] = arg7
        arg6[2] = dataTable4
        arg6[3] = workValue18
        arg6[4] = workValue19
        arg6[5] = workValue
        arg6[6] = workValue2
        arg6[7] = workValue3
        arg6[8] = workValue4
        arg6[9] = workValue6
        arg6[10] = workValue8
        arg6[11] = workValue10
        arg6[12] = workValue12
        arg6[13] = flag
        arg6[14] = flag2
        arg6[15] = flag3
        arg6[16] = flag4
        arg6[17] = numberValue4
        arg6[18] = flag5
        arg6[19] = numberValue5
        arg6[20] = numberValue6
        arg6[21] = numberValue7
        arg6[22] = numberValue8
        arg6[23] = numberValue9
        arg7 = true
        arg3(arg4, arg5, arg6, arg7)
        arg3 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg3 = arg3()
        eventRegistration = arg3
      end
      arg3 = 2
      numberValue2 = arg3
    else
      arg3 = numberValue2
      if 1 ~= arg3 then
        arg3 = LocalPlayer
        arg3 = arg3.state
        arg4 = arg3
        arg3 = arg3.set
        arg5 = "redDot"
        arg6 = true
        arg7 = true
        arg3(arg4, arg5, arg6, arg7)
        arg3 = 1
        numberValue2 = arg3
      end
    end
  else
    arg3 = numberValue2
    if 0 ~= arg3 then
      arg3 = LocalPlayer
      arg3 = arg3.state
      arg4 = arg3
      arg3 = arg3.set
      arg5 = "redDot"
      arg6 = nil
      arg7 = true
      arg3(arg4, arg5, arg6, arg7)
      arg3 = 0
      numberValue2 = arg3
    end
  end
  arg3 = pairs
  arg4 = numberValue
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, dataTable4 in arg3, arg4, arg5, arg6 do
    workValue18 = GetPlayerFromServerId
    workValue19 = arg7
    -- Beginner: result below is playerIndex.
    workValue18 = workValue18(workValue19)
    if workValue18 >= 0 then
      workValue19 = GetPlayerPed
      workValue = workValue18
      -- Beginner: result below is playerPed.
      workValue19 = workValue19(workValue)
      if 0 ~= workValue19 then
        workValue = GetCurrentPedWeaponEntityIndex
        workValue2 = workValue19
        workValue = workValue(workValue2)
        if 0 ~= workValue then
          workValue2 = nil
          workValue3 = nil
          workValue4 = true == dataTable4
          if workValue4 then
            workValue6 = GetEntityCoords
            workValue8 = workValue
            -- Beginner: result below is entityCoords.
            workValue6 = workValue6(workValue8)
            workValue2 = workValue6
            workValue6 = select
            workValue8 = 2
            workValue10 = GetEntityMatrix
            workValue12 = workValue
            workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9 = workValue10(workValue12)
            workValue6 = workValue6(workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9)
            workValue3 = workValue6
          else
            workValue2 = dataTable4[1]
            workValue3 = dataTable4[2]
          end
          workValue6 = DrawSpotLight
          workValue8 = workValue2.x
          workValue10 = workValue2.y
          workValue12 = workValue2.z
          flag = workValue3.x
          flag2 = workValue3.y
          flag3 = workValue3.z
          flag4 = 255
          numberValue4 = 0
          flag5 = 0
          if workValue4 then
            numberValue5 = 5.0
            if numberValue5 then
              goto flow_label_128
            end
          end
          numberValue5 = 15.0
          ::flow_label_128::
          numberValue6 = 20.0
          numberValue7 = 100.0
          numberValue8 = 0.0
          numberValue9 = 10.0
          workValue6(workValue8, workValue10, workValue12, flag, flag2, flag3, flag4, numberValue4, flag5, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9)
        end
      end
    end
  end
end
workValue14 = CMG
workValue14 = workValue14.createThreadOnTick
cmgCall4 = textValue
cmgCall5 = "Taser Red Dot"
-- Beginner: Run a helper every game frame while this script is active.
workValue14(cmgCall4, cmgCall5)
workValue14 = AddEventHandler
cmgCall4 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1) ===
function cmgCall5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = pairs
    arg3 = hashValue
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      dataTable4 = workValue9
      workValue18 = arg7
      dataTable4(workValue18)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
workValue14(cmgCall4, cmgCall5)

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, arg4
  arg1 = GetPlayerServerId
  arg2 = PlayerId
  arg2, arg3, arg4 = arg2()
  -- Beginner: result below is serverId.
  arg1 = arg1(arg2, arg3, arg4)
  arg2 = hashValue
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = workValue9
    arg4 = arg2
    arg3(arg4)
    arg3 = workValue11
    arg4 = arg2
    arg3(arg4)
  end
end
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function cmgCall5(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6
  dataTable4 = dataTable
  workValue18 = {}
  workValue19 = arg2
  workValue = arg3
  workValue2 = arg4
  workValue3 = arg5
  workValue4 = arg6
  workValue6 = arg7
  workValue18[1] = workValue19
  workValue18[2] = workValue
  workValue18[3] = workValue2
  workValue18[4] = workValue3
  workValue18[5] = workValue4
  workValue18[6] = workValue6
  dataTable4[arg1] = workValue18
  dataTable4 = dataTable3
  dataTable4()
  dataTable4 = workValue14
  -- Beginner: Register a client-side event handler.
  dataTable4()
end
cmgCall4.setChainOnBackOverrideNumbers = cmgCall5
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1) ===
function cmgCall5(arg1)
  local arg2
  arg2 = dataTable
  arg2[arg1] = nil
  arg2 = dataTable3
  arg2()
  arg2 = workValue14
  -- Beginner: Register a client-side event handler.
  arg2()
end
cmgCall4.clearChainOnBackOverride = cmgCall5

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, dataTable4
  arg4 = SetTextFont
  arg5 = 4
  arg4(arg5)
  arg4 = SetTextScale
  arg5 = 0.35
  arg6 = 0.35
  arg4(arg5, arg6)
  arg4 = SetTextColour
  arg5 = 255
  arg6 = 255
  arg7 = 255
  dataTable4 = 215
  arg4(arg5, arg6, arg7, dataTable4)
  arg4 = SetTextOutline
  arg4()
  arg4 = SetTextCentre
  arg5 = false
  arg4(arg5)
  arg4 = BeginTextCommandDisplayText
  arg5 = "STRING"
  arg4(arg5)
  arg4 = AddTextComponentSubstringPlayerName
  arg5 = arg3
  arg4(arg5)
  arg4 = EndTextCommandDisplayText
  arg5 = arg1
  arg6 = arg2
  arg4(arg5, arg6)
end
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerCommand
textValue2 = "chainedit"

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isDevMode
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = cmgCall6.enabled
  arg1 = not arg1
  cmgCall6.enabled = arg1
  arg1 = workValue14
  -- Beginner: Register a client-side event handler.
  arg1()
end
flag6 = true
cmgCall5(textValue2, workValue15, flag6)
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerCommand
textValue2 = "chainprint"

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19
  arg1 = CMG
  arg1 = arg1.isDevMode
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = print
  arg2 = "CHAIN CFG => bone=%d, offset=vector3(%.4f, %.4f, %.4f), rotation=vector3(%.2f, %.2f, %.2f)"
  arg3 = arg2
  arg2 = arg2.format
  arg4 = cmgCall6.bone
  arg5 = cmgCall6.offset
  arg5 = arg5.x
  arg6 = cmgCall6.offset
  arg6 = arg6.y
  arg7 = cmgCall6.offset
  arg7 = arg7.z
  dataTable4 = cmgCall6.rotation
  dataTable4 = dataTable4.x
  workValue18 = cmgCall6.rotation
  workValue18 = workValue18.y
  workValue19 = cmgCall6.rotation
  workValue19 = workValue19.z
  arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19 = arg2(arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19)
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19)
end
flag6 = true
cmgCall5(textValue2, workValue15, flag6)
cmgCall5 = Citizen
cmgCall5 = cmgCall5.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable4, workValue18, workValue19, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12
  arg1 = CMG
  arg1 = arg1.isDevMode
  arg1 = arg1()
  if not arg1 then
    return
  end
  while true do
    arg1 = cmgCall6.enabled
    if not arg1 then
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 500
      arg1(arg2)
    else
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 0
      arg1(arg2)
      arg1 = 0.005
      arg2 = 1.0
      arg3 = IsControlPressed
      arg4 = 0
      arg5 = 21
      arg3 = arg3(arg4, arg5)
      if arg3 then
        arg1 = 0.02
        arg2 = 5.0
      else
        arg3 = IsControlPressed
        arg4 = 0
        arg5 = 36
        arg3 = arg3(arg4, arg5)
        if arg3 then
          arg1 = 0.001
          arg2 = 0.2
        end
      end
      arg3 = IsControlPressed
      arg4 = 0
      arg5 = 19
      arg3 = arg3(arg4, arg5)
      arg4 = IsControlJustPressed
      arg5 = 0
      arg6 = 172
      arg4 = arg4(arg5, arg6)
      arg5 = IsControlJustPressed
      arg6 = 0
      arg7 = 173
      arg5 = arg5(arg6, arg7)
      arg6 = IsControlJustPressed
      arg7 = 0
      dataTable4 = 174
      arg6 = arg6(arg7, dataTable4)
      arg7 = IsControlJustPressed
      dataTable4 = 0
      workValue18 = 175
      arg7 = arg7(dataTable4, workValue18)
      dataTable4 = IsControlJustPressed
      workValue18 = 0
      workValue19 = 44
      dataTable4 = dataTable4(workValue18, workValue19)
      workValue18 = IsControlJustPressed
      workValue19 = 0
      workValue = 38
      workValue18 = workValue18(workValue19, workValue)
      workValue19 = false
      if not arg3 then
        if arg6 then
          workValue = vector3
          workValue2 = cmgCall6.offset
          workValue2 = workValue2.x
          workValue2 = workValue2 - arg1
          workValue3 = cmgCall6.offset
          workValue3 = workValue3.y
          workValue4 = cmgCall6.offset
          workValue4 = workValue4.z
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.offset = workValue
          workValue19 = true
        end
        if arg7 then
          workValue = vector3
          workValue2 = cmgCall6.offset
          workValue2 = workValue2.x
          workValue2 = workValue2 + arg1
          workValue3 = cmgCall6.offset
          workValue3 = workValue3.y
          workValue4 = cmgCall6.offset
          workValue4 = workValue4.z
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.offset = workValue
          workValue19 = true
        end
        if arg4 then
          workValue = vector3
          workValue2 = cmgCall6.offset
          workValue2 = workValue2.x
          workValue3 = cmgCall6.offset
          workValue3 = workValue3.y
          workValue3 = workValue3 + arg1
          workValue4 = cmgCall6.offset
          workValue4 = workValue4.z
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.offset = workValue
          workValue19 = true
        end
        if arg5 then
          workValue = vector3
          workValue2 = cmgCall6.offset
          workValue2 = workValue2.x
          workValue3 = cmgCall6.offset
          workValue3 = workValue3.y
          workValue3 = workValue3 - arg1
          workValue4 = cmgCall6.offset
          workValue4 = workValue4.z
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.offset = workValue
          workValue19 = true
        end
        if dataTable4 then
          workValue = vector3
          workValue2 = cmgCall6.offset
          workValue2 = workValue2.x
          workValue3 = cmgCall6.offset
          workValue3 = workValue3.y
          workValue4 = cmgCall6.offset
          workValue4 = workValue4.z
          workValue4 = workValue4 + arg1
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.offset = workValue
          workValue19 = true
        end
        if workValue18 then
          workValue = vector3
          workValue2 = cmgCall6.offset
          workValue2 = workValue2.x
          workValue3 = cmgCall6.offset
          workValue3 = workValue3.y
          workValue4 = cmgCall6.offset
          workValue4 = workValue4.z
          workValue4 = workValue4 - arg1
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.offset = workValue
          workValue19 = true
        end
      else
        if arg6 then
          workValue = vector3
          workValue2 = cmgCall6.rotation
          workValue2 = workValue2.x
          workValue3 = cmgCall6.rotation
          workValue3 = workValue3.y
          workValue4 = cmgCall6.rotation
          workValue4 = workValue4.z
          workValue4 = workValue4 - arg2
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.rotation = workValue
          workValue19 = true
        end
        if arg7 then
          workValue = vector3
          workValue2 = cmgCall6.rotation
          workValue2 = workValue2.x
          workValue3 = cmgCall6.rotation
          workValue3 = workValue3.y
          workValue4 = cmgCall6.rotation
          workValue4 = workValue4.z
          workValue4 = workValue4 + arg2
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.rotation = workValue
          workValue19 = true
        end
        if arg4 then
          workValue = vector3
          workValue2 = cmgCall6.rotation
          workValue2 = workValue2.x
          workValue2 = workValue2 - arg2
          workValue3 = cmgCall6.rotation
          workValue3 = workValue3.y
          workValue4 = cmgCall6.rotation
          workValue4 = workValue4.z
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.rotation = workValue
          workValue19 = true
        end
        if arg5 then
          workValue = vector3
          workValue2 = cmgCall6.rotation
          workValue2 = workValue2.x
          workValue2 = workValue2 + arg2
          workValue3 = cmgCall6.rotation
          workValue3 = workValue3.y
          workValue4 = cmgCall6.rotation
          workValue4 = workValue4.z
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.rotation = workValue
          workValue19 = true
        end
        if dataTable4 then
          workValue = vector3
          workValue2 = cmgCall6.rotation
          workValue2 = workValue2.x
          workValue3 = cmgCall6.rotation
          workValue3 = workValue3.y
          workValue3 = workValue3 - arg2
          workValue4 = cmgCall6.rotation
          workValue4 = workValue4.z
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.rotation = workValue
          workValue19 = true
        end
        if workValue18 then
          workValue = vector3
          workValue2 = cmgCall6.rotation
          workValue2 = workValue2.x
          workValue3 = cmgCall6.rotation
          workValue3 = workValue3.y
          workValue3 = workValue3 + arg2
          workValue4 = cmgCall6.rotation
          workValue4 = workValue4.z
          workValue = workValue(workValue2, workValue3, workValue4)
          cmgCall6.rotation = workValue
          workValue19 = true
        end
      end
      if workValue19 then
        workValue = workValue14
        -- Beginner: Register a client-side event handler.
        workValue()
      end
      workValue = cmgCall4
      workValue2 = 0.015
      workValue3 = 0.65
      workValue4 = "~y~CHAIN EDIT~w~ (%s)  /chainprint to copy"
      workValue6 = workValue4
      workValue4 = workValue4.format
      if arg3 then
        workValue8 = "ROT"
        if workValue8 then
          goto flow_label_253
        end
      end
      workValue8 = "POS"
      ::flow_label_253::
      workValue4, workValue6, workValue8, workValue10, workValue12 = workValue4(workValue6, workValue8)
      workValue(workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12)
      workValue = cmgCall4
      workValue2 = 0.015
      workValue3 = 0.675
      workValue4 = "bone=%d"
      workValue6 = workValue4
      workValue4 = workValue4.format
      workValue8 = cmgCall6.bone
      workValue4, workValue6, workValue8, workValue10, workValue12 = workValue4(workValue6, workValue8)
      workValue(workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12)
      workValue = cmgCall4
      workValue2 = 0.015
      workValue3 = 0.7
      workValue4 = "off:  x=%.4f y=%.4f z=%.4f"
      workValue6 = workValue4
      workValue4 = workValue4.format
      workValue8 = cmgCall6.offset
      workValue8 = workValue8.x
      workValue10 = cmgCall6.offset
      workValue10 = workValue10.y
      workValue12 = cmgCall6.offset
      workValue12 = workValue12.z
      workValue4, workValue6, workValue8, workValue10, workValue12 = workValue4(workValue6, workValue8, workValue10, workValue12)
      workValue(workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12)
      workValue = cmgCall4
      workValue2 = 0.015
      workValue3 = 0.725
      workValue4 = "rot:  x=%.2f y=%.2f z=%.2f"
      workValue6 = workValue4
      workValue4 = workValue4.format
      workValue8 = cmgCall6.rotation
      workValue8 = workValue8.x
      workValue10 = cmgCall6.rotation
      workValue10 = workValue10.y
      workValue12 = cmgCall6.rotation
      workValue12 = workValue12.z
      workValue4, workValue6, workValue8, workValue10, workValue12 = workValue4(workValue6, workValue8, workValue10, workValue12)
      workValue(workValue2, workValue3, workValue4, workValue6, workValue8, workValue10, workValue12)
      workValue = cmgCall4
      workValue2 = 0.015
      workValue3 = 0.75
      workValue4 = "Move: Arrows + Q/E | Rotate: hold ALT | SHIFT big | CTRL fine | /chainedit toggle"
      workValue(workValue2, workValue3, workValue4)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall5(textValue2)
