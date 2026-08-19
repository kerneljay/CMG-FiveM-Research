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
local cmgOperation, cmgOperation3, text3, dataCollection, dataCollection2, iterator, dataCollection3, workingValue16, workingValue17, cmgOperation6, cmgOperation2, hashValue, number, number2, workingValue5, workingValue7, workingValue9, workingValue11, workingValue13, number3, eventHandler, text, workingValue14, cmgOperation4, cmgOperation5, text2, workingValue15, stateFlag6
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation3 = "cfg/cfg_weaponsonback"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.loadModule
text3 = "cfg/weapons"
-- Beginner: result below is config.
cmgOperation3 = cmgOperation3(text3)
text3 = "cmg_chain_on_back"
dataCollection = {}
dataCollection2 = {}
iterator = ipairs
dataCollection3 = cmgOperation.chainOnBackWeaponNames
if not dataCollection3 then
  dataCollection3 = {}
end
iterator, dataCollection3, workingValue16, workingValue17 = iterator(dataCollection3)
for cmgOperation6, cmgOperation2 in iterator, dataCollection3, workingValue16, workingValue17 do
  hashValue = GetHashKey
  number = cmgOperation2
  -- Beginner: result below is hash.
  hashValue = hashValue(number)
  dataCollection2[hashValue] = cmgOperation2
end

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4
  localValue1 = {}
  localValue2 = pairs
  localValue3 = dataCollection
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    dataCollection4 = {}
    workingValue18 = localValue7[1]
    workingValue19 = localValue7[2]
    workingValue = localValue7[3]
    workingValue2 = localValue7[4]
    workingValue3 = localValue7[5]
    workingValue4 = localValue7[6]
    dataCollection4[1] = workingValue18
    dataCollection4[2] = workingValue19
    dataCollection4[3] = workingValue
    dataCollection4[4] = workingValue2
    dataCollection4[5] = workingValue3
    dataCollection4[6] = workingValue4
    localValue1[localValue6] = dataCollection4
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = SetResourceKvp
  localValue2 = text3
  localValue3 = json
  localValue3 = localValue3.encode
  localValue4 = dataCollection
  localValue3, localValue4, localValue5 = localValue3(localValue4)
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = LocalPlayer
  if localValue1 then
    localValue1 = LocalPlayer
    localValue1 = localValue1.state
    if localValue1 then
      localValue1 = LocalPlayer
      localValue1 = localValue1.state
      localValue2 = localValue1
      localValue1 = localValue1.set
      localValue3 = "chainOnBack"
      localValue4 = iterator
      localValue4 = localValue4()
      localValue5 = true
      localValue1(localValue2, localValue3, localValue4, localValue5)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
function workingValue16()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12
  localValue1 = {}
  dataCollection = localValue1
  localValue1 = GetResourceKvpString
  localValue2 = text3
  localValue1 = localValue1(localValue2)
  if not localValue1 or "" == localValue1 then
    return
  end
  localValue2 = pcall
  localValue3 = json
  localValue3 = localValue3.decode
  localValue4 = localValue1
  localValue2, localValue3 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue4 = type
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if "table" == localValue4 then
      goto continueAtStep25
    end
  end
  return
  ::continueAtStep25::
  localValue4 = pairs
  localValue5 = localValue3
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for dataCollection4, workingValue18 in localValue4, localValue5, localValue6, localValue7 do
    workingValue19 = type
    workingValue = dataCollection4
    workingValue19 = workingValue19(workingValue)
    if "string" == workingValue19 then
      workingValue19 = type
      workingValue = workingValue18
      workingValue19 = workingValue19(workingValue)
      if "table" == workingValue19 then
        workingValue19 = workingValue18[1]
        if workingValue19 then
          workingValue19 = workingValue18[2]
          if workingValue19 then
            workingValue19 = workingValue18[3]
            if workingValue19 then
              workingValue19 = workingValue18[4]
              if workingValue19 then
                workingValue19 = workingValue18[5]
                if workingValue19 then
                  workingValue19 = workingValue18[6]
                  if workingValue19 then
                    workingValue19 = dataCollection
                    workingValue = {}
                    workingValue2 = tonumber
                    workingValue3 = workingValue18[1]
                    workingValue2 = workingValue2(workingValue3)
                    if not workingValue2 then
                      workingValue2 = 0.0
                    end
                    workingValue3 = tonumber
                    workingValue4 = workingValue18[2]
                    workingValue3 = workingValue3(workingValue4)
                    if not workingValue3 then
                      workingValue3 = 0.0
                    end
                    workingValue4 = tonumber
                    workingValue6 = workingValue18[3]
                    workingValue4 = workingValue4(workingValue6)
                    if not workingValue4 then
                      workingValue4 = 0.0
                    end
                    workingValue6 = tonumber
                    workingValue8 = workingValue18[4]
                    workingValue6 = workingValue6(workingValue8)
                    if not workingValue6 then
                      workingValue6 = 0.0
                    end
                    workingValue8 = tonumber
                    workingValue10 = workingValue18[5]
                    workingValue8 = workingValue8(workingValue10)
                    if not workingValue8 then
                      workingValue8 = 0.0
                    end
                    workingValue10 = tonumber
                    workingValue12 = workingValue18[6]
                    workingValue10 = workingValue10(workingValue12)
                    if not workingValue10 then
                      workingValue10 = 0.0
                    end
                    workingValue[1] = workingValue2
                    workingValue[2] = workingValue3
                    workingValue[3] = workingValue4
                    workingValue[4] = workingValue6
                    workingValue[5] = workingValue8
                    workingValue[6] = workingValue10
                    workingValue19[dataCollection4] = workingValue
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

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = LocalPlayer
  if localValue1 then
    localValue1 = LocalPlayer
    localValue1 = localValue1.state
    if localValue1 then
      localValue1 = LocalPlayer
      localValue1 = localValue1.state
      localValue2 = localValue1
      localValue1 = localValue1.set
      localValue3 = "chainOnBack"
      localValue4 = iterator
      localValue4 = localValue4()
      localValue5 = true
      localValue1(localValue2, localValue3, localValue4, localValue5)
    end
  end
end
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4
  localValue2 = GetHashKey
  localValue3 = localValue1
  -- Beginner: result below is hash.
  localValue2 = localValue2(localValue3)
  localValue3 = cmgOperation.weapons
  localValue3 = localValue3[localValue2]
  if not localValue3 then
    localValue4 = vector3
    localValue5 = 0.0
    localValue6 = 0.0
    localValue7 = 0.0
    localValue4 = localValue4(localValue5, localValue6, localValue7)
    localValue5 = vector3
    localValue6 = 0.0
    localValue7 = 0.0
    dataCollection4 = 0.0
    localValue5, localValue6, localValue7, dataCollection4 = localValue5(localValue6, localValue7, dataCollection4)
    return localValue4, localValue5, localValue6, localValue7, dataCollection4
  end
  localValue4 = localValue3.offset
  localValue5 = localValue3.rotation
  return localValue4, localValue5
end
cmgOperation6.getChainOnBackCfgTransform = cmgOperation2
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19
  localValue2 = CMG
  localValue2 = localValue2.getChainOnBackCfgTransform
  localValue3 = localValue1
  localValue2, localValue3 = localValue2(localValue3)
  localValue4 = dataCollection
  localValue4 = localValue4[localValue1]
  if localValue4 then
    localValue5 = localValue4[1]
    localValue6 = localValue4[2]
    localValue7 = localValue4[3]
    dataCollection4 = localValue4[4]
    workingValue18 = localValue4[5]
    workingValue19 = localValue4[6]
    return localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19
  end
  localValue5 = localValue2.x
  localValue6 = localValue2.y
  localValue7 = localValue2.z
  dataCollection4 = localValue3.x
  workingValue18 = localValue3.y
  workingValue19 = localValue3.z
  return localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19
end
cmgOperation6.getChainOnBackEffectiveNumbers = cmgOperation2
cmgOperation6 = Citizen
cmgOperation6 = cmgOperation6.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2
  localValue1 = workingValue16
  localValue1()
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 1000
  localValue1(localValue2)
  localValue1 = workingValue17
  localValue1()
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation6(cmgOperation2)
cmgOperation6 = AddEventHandler
cmgOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION: hashValue() ===
function hashValue()
  local localValue1, localValue2
  localValue1 = workingValue16
  localValue1()
  localValue1 = workingValue17
  localValue1()
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation6(cmgOperation2, hashValue)
cmgOperation6 = {}
cmgOperation6.enabled = false
cmgOperation6.hash = 313219588
cmgOperation6.bone = 39317
cmgOperation2 = vector3
hashValue = 0.02
number = 0.09
number2 = 0.01
cmgOperation2 = cmgOperation2(hashValue, number, number2)
cmgOperation6.offset = cmgOperation2
cmgOperation2 = vector3
hashValue = 90.0
number = 0.0
number2 = 0.0
cmgOperation2 = cmgOperation2(hashValue, number, number2)
cmgOperation6.rotation = cmgOperation2
cmgOperation2 = Citizen
cmgOperation2 = cmgOperation2.CreateThread

-- === HELPER FUNCTION: hashValue() ===
function hashValue()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4
  localValue1 = pairs
  localValue2 = cmgOperation3.weapons
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = cmgOperation.weapons
    dataCollection4 = localValue6.hash
    localValue7 = localValue7[dataCollection4]
    if not localValue7 then
      localValue7 = nil
      dataCollection4 = localValue6.mag
      if dataCollection4 then
        dataCollection4 = GetHashKey
        workingValue18 = localValue6.mag
        -- Beginner: result below is hash.
        dataCollection4 = dataCollection4(workingValue18)
        localValue7 = dataCollection4
      end
      dataCollection4 = localValue6.dontShowOnBack
      if not dataCollection4 then
        dataCollection4 = localValue6.class
        if "SMG" == dataCollection4 then
          dataCollection4 = cmgOperation.weapons
          workingValue18 = localValue6.hash
          workingValue19 = {}
          workingValue19.bone = 58271
          workingValue = vector3
          workingValue2 = -0.01
          workingValue3 = 0.1
          workingValue4 = -0.07
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          workingValue19.offset = workingValue
          workingValue = vector3
          workingValue2 = -55.0
          workingValue3 = 0.1
          workingValue4 = 0.0
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          workingValue19.rotation = workingValue
          workingValue = GetHashKey
          workingValue2 = localValue6.model
          -- Beginner: result below is hash.
          workingValue = workingValue(workingValue2)
          workingValue19.model = workingValue
          workingValue19.type = "SMG"
          workingValue19.magComponent = localValue7
          dataCollection4[workingValue18] = workingValue19
        else
          dataCollection4 = localValue6.class
          if "AR" == dataCollection4 then
            dataCollection4 = cmgOperation.weapons
            workingValue18 = localValue6.hash
            workingValue19 = {}
            workingValue19.bone = 24818
            workingValue = vector3
            workingValue2 = -0.12
            workingValue3 = -0.12
            workingValue4 = -0.13
            workingValue = workingValue(workingValue2, workingValue3, workingValue4)
            workingValue19.offset = workingValue
            workingValue = vector3
            workingValue2 = 100.0
            workingValue3 = -3.0
            workingValue4 = 5.0
            workingValue = workingValue(workingValue2, workingValue3, workingValue4)
            workingValue19.rotation = workingValue
            workingValue = GetHashKey
            workingValue2 = localValue6.model
            -- Beginner: result below is hash.
            workingValue = workingValue(workingValue2)
            workingValue19.model = workingValue
            workingValue19.type = "AR"
            workingValue19.magComponent = localValue7
            dataCollection4[workingValue18] = workingValue19
          else
            dataCollection4 = localValue6.class
            if "Heavy" == dataCollection4 then
              dataCollection4 = cmgOperation.weapons
              workingValue18 = localValue6.hash
              workingValue19 = {}
              workingValue19.bone = 24818
              workingValue = vector3
              workingValue2 = -0.12
              workingValue3 = -0.12
              workingValue4 = -0.13
              workingValue = workingValue(workingValue2, workingValue3, workingValue4)
              workingValue19.offset = workingValue
              workingValue = vector3
              workingValue2 = 100.0
              workingValue3 = -3.0
              workingValue4 = 5.0
              workingValue = workingValue(workingValue2, workingValue3, workingValue4)
              workingValue19.rotation = workingValue
              workingValue = GetHashKey
              workingValue2 = localValue6.model
              -- Beginner: result below is hash.
              workingValue = workingValue(workingValue2)
              workingValue19.model = workingValue
              workingValue19.type = "Heavy"
              workingValue19.magComponent = localValue7
              dataCollection4[workingValue18] = workingValue19
            else
              dataCollection4 = localValue6.class
              if "Melee" == dataCollection4 then
                dataCollection4 = localValue6.subType
                if "knuckle" ~= dataCollection4 then
                  dataCollection4 = localValue6.subType
                  if "stungun" ~= dataCollection4 then
                    dataCollection4 = cmgOperation.weapons
                    workingValue18 = localValue6.hash
                    workingValue19 = {}
                    workingValue19.bone = 24818
                    workingValue = vector3
                    workingValue2 = 0.32
                    workingValue3 = -0.15
                    workingValue4 = 0.13
                    workingValue = workingValue(workingValue2, workingValue3, workingValue4)
                    workingValue19.offset = workingValue
                    workingValue = vector3
                    workingValue2 = 0.0
                    workingValue3 = -90.0
                    workingValue4 = 0.0
                    workingValue = workingValue(workingValue2, workingValue3, workingValue4)
                    workingValue19.rotation = workingValue
                    workingValue = GetHashKey
                    workingValue2 = localValue6.model
                    -- Beginner: result below is hash.
                    workingValue = workingValue(workingValue2)
                    workingValue19.model = workingValue
                    workingValue19.type = "Melee"
                    workingValue19.magComponent = localValue7
                    dataCollection4[workingValue18] = workingValue19
                end
              end
              else
                dataCollection4 = localValue6.class
                if "Shotgun" == dataCollection4 then
                  dataCollection4 = cmgOperation.weapons
                  workingValue18 = localValue6.hash
                  workingValue19 = {}
                  workingValue19.bone = 24818
                  workingValue = vector3
                  workingValue2 = -0.12
                  workingValue3 = -0.12
                  workingValue4 = -0.13
                  workingValue = workingValue(workingValue2, workingValue3, workingValue4)
                  workingValue19.offset = workingValue
                  workingValue = vector3
                  workingValue2 = 100.0
                  workingValue3 = -3.0
                  workingValue4 = 5.0
                  workingValue = workingValue(workingValue2, workingValue3, workingValue4)
                  workingValue19.rotation = workingValue
                  workingValue = GetHashKey
                  workingValue2 = localValue6.model
                  -- Beginner: result below is hash.
                  workingValue = workingValue(workingValue2)
                  workingValue19.model = workingValue
                  workingValue19.type = "Shotgun"
                  workingValue19.magComponent = localValue7
                  dataCollection4[workingValue18] = workingValue19
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
cmgOperation2(hashValue)
cmgOperation2 = AddEventHandler
hashValue = "2d7bd9be41"
-- Beginner: this function runs when client event "2d7bd9be41" fires.

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = LocalPlayer
  localValue1 = localValue1.state
  localValue1 = localValue1.weaponsDiagonal
  if not localValue1 then
    localValue1 = LocalPlayer
    localValue1 = localValue1.state
    localValue2 = localValue1
    localValue1 = localValue1.set
    localValue3 = "weaponsDiagonal"
    localValue4 = true
    localValue5 = true
    localValue1(localValue2, localValue3, localValue4, localValue5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "2d7bd9be41".
cmgOperation2(hashValue, number)
cmgOperation2 = AddEventHandler
hashValue = "311dece672"
-- Beginner: this function runs when client event "311dece672" fires.

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = LocalPlayer
  localValue1 = localValue1.state
  localValue1 = localValue1.weaponsDiagonal
  if localValue1 then
    localValue1 = LocalPlayer
    localValue1 = localValue1.state
    localValue2 = localValue1
    localValue1 = localValue1.set
    localValue3 = "weaponsDiagonal"
    localValue4 = nil
    localValue5 = true
    localValue1(localValue2, localValue3, localValue4, localValue5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "311dece672".
cmgOperation2(hashValue, number)
cmgOperation2 = AddEventHandler
hashValue = "c4b3821d33"
-- Beginner: this function runs when client event "c4b3821d33" fires.

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = LocalPlayer
  localValue1 = localValue1.state
  localValue1 = localValue1.frontAR
  if not localValue1 then
    localValue1 = LocalPlayer
    localValue1 = localValue1.state
    localValue2 = localValue1
    localValue1 = localValue1.set
    localValue3 = "frontAR"
    localValue4 = true
    localValue5 = true
    localValue1(localValue2, localValue3, localValue4, localValue5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "c4b3821d33".
cmgOperation2(hashValue, number)
cmgOperation2 = AddEventHandler
hashValue = "45968dd649"
-- Beginner: this function runs when client event "45968dd649" fires.

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = LocalPlayer
  localValue1 = localValue1.state
  localValue1 = localValue1.frontAR
  if localValue1 then
    localValue1 = LocalPlayer
    localValue1 = localValue1.state
    localValue2 = localValue1
    localValue1 = localValue1.set
    localValue3 = "frontAR"
    localValue4 = nil
    localValue5 = true
    localValue1(localValue2, localValue3, localValue4, localValue5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "45968dd649".
cmgOperation2(hashValue, number)
cmgOperation2 = AddEventHandler
hashValue = "b6b9f5a6b2"
-- Beginner: this function runs when client event "b6b9f5a6b2" fires.

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = LocalPlayer
  localValue1 = localValue1.state
  localValue1 = localValue1.frontSMG
  if not localValue1 then
    localValue1 = LocalPlayer
    localValue1 = localValue1.state
    localValue2 = localValue1
    localValue1 = localValue1.set
    localValue3 = "frontSMG"
    localValue4 = true
    localValue5 = true
    localValue1(localValue2, localValue3, localValue4, localValue5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "b6b9f5a6b2".
cmgOperation2(hashValue, number)
cmgOperation2 = AddEventHandler
hashValue = "21f52e326d"
-- Beginner: this function runs when client event "21f52e326d" fires.

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = LocalPlayer
  localValue1 = localValue1.state
  localValue1 = localValue1.frontSMG
  if localValue1 then
    localValue1 = LocalPlayer
    localValue1 = localValue1.state
    localValue2 = localValue1
    localValue1 = localValue1.set
    localValue3 = "frontSMG"
    localValue4 = nil
    localValue5 = true
    localValue1(localValue2, localValue3, localValue4, localValue5)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "21f52e326d".
cmgOperation2(hashValue, number)
cmgOperation2 = {}
hashValue = {}
number = {}
number2 = 0

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3
  localValue1 = GetSelectedPedWeapon
  localValue2 = PlayerPedId
  localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3 = localValue2()
  -- Beginner: result below is weaponHash.
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3)
  localValue2 = CMG
  localValue2 = localValue2.getCachedWeaponStore
  localValue2 = localValue2()
  localValue3 = false
  localValue4 = CMG
  localValue4 = localValue4.hasClientPermission
  localValue5 = "police.onduty.permission"
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue4 = localValue4()
    localValue4 = 0 ~= localValue4
  end
  localValue5 = pairs
  localValue6 = localValue2
  localValue5, localValue6, localValue7, dataCollection4 = localValue5(localValue6)
  for workingValue18 in localValue5, localValue6, localValue7, dataCollection4 do
    workingValue19 = GetHashKey
    workingValue = workingValue18
    -- Beginner: result below is hash.
    workingValue19 = workingValue19(workingValue)
    workingValue = cmgOperation.weapons
    workingValue = workingValue[workingValue19]
    if workingValue then
      if localValue4 then
        workingValue2 = workingValue.type
      end
      workingValue2 = CMG
      workingValue2 = workingValue2.isEmergencyService
      workingValue2 = workingValue2()
      if not workingValue2 then
        workingValue2 = tCMG
        workingValue2 = workingValue2.isInGreenzone
        workingValue3 = false
        workingValue2 = workingValue2(workingValue3)
        workingValue2 = "Heavy" ~= workingValue2 and workingValue2
      end
      workingValue3 = cmgOperation2
      workingValue3 = workingValue3[workingValue19]
      if workingValue3 and not workingValue2 then
        workingValue3 = cmgOperation2
        workingValue3[workingValue19] = nil
        localValue3 = true
      else
        workingValue3 = cmgOperation2
        workingValue3 = workingValue3[workingValue19]
        if not workingValue3 and workingValue19 ~= localValue1 and workingValue2 then
          workingValue3 = cmgOperation2
          workingValue3[workingValue19] = workingValue18
          localValue3 = true
        end
      end
    end
  end
  localValue5 = pairs
  localValue6 = cmgOperation2
  localValue5, localValue6, localValue7, dataCollection4 = localValue5(localValue6)
  for workingValue18, workingValue19 in localValue5, localValue6, localValue7, dataCollection4 do
    workingValue = localValue2[workingValue19]
    if not workingValue or workingValue18 == localValue1 then
      workingValue = cmgOperation2
      workingValue[workingValue18] = nil
      localValue3 = true
    end
  end
  if localValue3 then
    localValue5 = {}
    localValue6 = pairs
    localValue7 = cmgOperation2
    localValue6, localValue7, dataCollection4, workingValue18 = localValue6(localValue7)
    for workingValue19 in localValue6, localValue7, dataCollection4, workingValue18 do
      workingValue = table
      workingValue = workingValue.insert
      workingValue2 = localValue5
      workingValue3 = workingValue19
      workingValue(workingValue2, workingValue3)
    end
    localValue6 = #localValue5
    if localValue6 > 0 then
      localValue6 = LocalPlayer
      localValue6 = localValue6.state
      localValue7 = localValue6
      localValue6 = localValue6.set
      dataCollection4 = "weapons"
      workingValue18 = localValue5
      workingValue19 = true
      localValue6(localValue7, dataCollection4, workingValue18, workingValue19)
    else
      localValue6 = LocalPlayer
      localValue6 = localValue6.state
      localValue7 = localValue6
      localValue6 = localValue6.set
      dataCollection4 = "weapons"
      workingValue18 = nil
      workingValue19 = true
      localValue6(localValue7, dataCollection4, workingValue18, workingValue19)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5
  localValue3 = cmgOperation.weapons
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    localValue4 = 0
    return localValue4
  end
  localValue4 = localValue3.bone
  localValue5 = localValue3.offset
  localValue6 = localValue3.rotation
  localValue7 = dataCollection2
  localValue7 = localValue7[localValue1]
  if localValue7 then
    dataCollection4 = nil
    workingValue18 = localValue2.ped
    workingValue19 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workingValue19 = workingValue19()
    if workingValue18 == workingValue19 then
      workingValue18 = dataCollection
      dataCollection4 = workingValue18[localValue7]
    else
      workingValue18 = type
      workingValue19 = localValue2.chainOnBack
      workingValue18 = workingValue18(workingValue19)
      if "table" == workingValue18 then
        workingValue18 = localValue2.chainOnBack
        dataCollection4 = workingValue18[localValue7]
      end
    end
    if dataCollection4 then
      workingValue18 = vector3
      workingValue19 = dataCollection4[1]
      workingValue = dataCollection4[2]
      workingValue2 = dataCollection4[3]
      workingValue18 = workingValue18(workingValue19, workingValue, workingValue2)
      localValue5 = workingValue18
      workingValue18 = vector3
      workingValue19 = dataCollection4[4]
      workingValue = dataCollection4[5]
      workingValue2 = dataCollection4[6]
      workingValue18 = workingValue18(workingValue19, workingValue, workingValue2)
      localValue6 = workingValue18
    end
  end
  dataCollection4 = cmgOperation6.enabled
  if dataCollection4 then
    dataCollection4 = cmgOperation6.hash
    if localValue1 == dataCollection4 then
      dataCollection4 = localValue2.ped
      workingValue18 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue18 = workingValue18()
      if dataCollection4 == workingValue18 then
        localValue4 = cmgOperation6.bone
        localValue5 = cmgOperation6.offset
        localValue6 = cmgOperation6.rotation
      end
    end
  end
  dataCollection4 = localValue2.diagonal
  if dataCollection4 then
    dataCollection4 = vector3
    workingValue18 = -0.12
    workingValue19 = -0.12
    workingValue = -0.13
    dataCollection4 = dataCollection4(workingValue18, workingValue19, workingValue)
    if localValue5 == dataCollection4 then
      dataCollection4 = vector3
      workingValue18 = 0.0
      workingValue19 = -0.2
      workingValue = 0.0
      dataCollection4 = dataCollection4(workingValue18, workingValue19, workingValue)
      localValue5 = dataCollection4
      dataCollection4 = vector3
      workingValue18 = 0.0
      workingValue19 = 45.0
      workingValue = localValue6.z
      dataCollection4 = dataCollection4(workingValue18, workingValue19, workingValue)
      localValue6 = dataCollection4
    end
  end
  dataCollection4 = localValue2.frontAR
  if dataCollection4 then
    dataCollection4 = localValue3.type
    if "AR" == dataCollection4 then
      dataCollection4 = vector3
      workingValue18 = 0.0
      workingValue19 = 0.18
      workingValue = 0.0
      dataCollection4 = dataCollection4(workingValue18, workingValue19, workingValue)
      localValue5 = dataCollection4
      dataCollection4 = vector3
      workingValue18 = 180.0
      workingValue19 = 148.0
      workingValue = 0.0
      dataCollection4 = dataCollection4(workingValue18, workingValue19, workingValue)
      localValue6 = dataCollection4
    end
  end
  dataCollection4 = localValue2.frontSMG
  if dataCollection4 then
    dataCollection4 = localValue3.type
    if "SMG" == dataCollection4 then
      localValue4 = 24818
      dataCollection4 = vector3
      workingValue18 = 0.0
      workingValue19 = 0.18
      workingValue = 0.0
      dataCollection4 = dataCollection4(workingValue18, workingValue19, workingValue)
      localValue5 = dataCollection4
      dataCollection4 = vector3
      workingValue18 = 180.0
      workingValue19 = 148.0
      workingValue = 0.0
      dataCollection4 = dataCollection4(workingValue18, workingValue19, workingValue)
      localValue6 = dataCollection4
    end
  end
  dataCollection4 = HasModelLoaded
  workingValue18 = localValue3.model
  dataCollection4 = dataCollection4(workingValue18)
  if not dataCollection4 then
    dataCollection4 = RequestModel
    workingValue18 = localValue3.model
    dataCollection4(workingValue18)
    dataCollection4 = 0
    return dataCollection4
  end
  dataCollection4 = localValue3.components
  if not dataCollection4 then
    dataCollection4 = localValue3.magComponent
    if not dataCollection4 then
      goto continueAtStep145
    end
  end
  dataCollection4 = HasWeaponAssetLoaded
  workingValue18 = localValue1
  dataCollection4 = dataCollection4(workingValue18)
  if not dataCollection4 then
    dataCollection4 = RequestWeaponAsset
    workingValue18 = localValue1
    workingValue19 = 4294967295
    workingValue = 4294967295
    dataCollection4(workingValue18, workingValue19, workingValue)
    dataCollection4 = 0
    return dataCollection4
  end
  ::continueAtStep145::
  dataCollection4 = 0
  workingValue18 = localValue3.components
  if workingValue18 then
    workingValue18 = CreateWeaponObject
    workingValue19 = localValue1
    workingValue = 0
    workingValue2 = 0.0
    workingValue3 = 0.0
    workingValue4 = 0.0
    workingValue6 = true
    workingValue8 = 1.0
    workingValue10 = false
    workingValue18 = workingValue18(workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10)
    dataCollection4 = workingValue18
    workingValue18 = pairs
    workingValue19 = localValue3.components
    workingValue18, workingValue19, workingValue, workingValue2 = workingValue18(workingValue19)
    for workingValue3, workingValue4 in workingValue18, workingValue19, workingValue, workingValue2 do
      workingValue6 = GiveWeaponComponentToWeaponObject
      workingValue8 = dataCollection4
      workingValue10 = workingValue4
      workingValue6(workingValue8, workingValue10)
    end
    workingValue18 = localValue3.removeComponents
    if workingValue18 then
      workingValue18 = pairs
      workingValue19 = localValue3.removeComponents
      workingValue18, workingValue19, workingValue, workingValue2 = workingValue18(workingValue19)
      for workingValue3, workingValue4 in workingValue18, workingValue19, workingValue, workingValue2 do
        workingValue6 = RemoveWeaponComponentFromWeaponObject
        workingValue8 = dataCollection4
        workingValue10 = workingValue4
        workingValue6(workingValue8, workingValue10)
      end
    end
  else
    workingValue18 = localValue3.magComponent
    if workingValue18 then
      workingValue18 = CreateWeaponObject
      workingValue19 = localValue1
      workingValue = 0
      workingValue2 = 0.0
      workingValue3 = 0.0
      workingValue4 = 0.0
      workingValue6 = true
      workingValue8 = 1.0
      workingValue10 = false
      workingValue18 = workingValue18(workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10)
      dataCollection4 = workingValue18
      workingValue18 = GiveWeaponComponentToWeaponObject
      workingValue19 = dataCollection4
      workingValue = localValue3.magComponent
      workingValue18(workingValue19, workingValue)
    else
      workingValue18 = CreateObject
      workingValue19 = localValue3.model
      workingValue = 0.0
      workingValue2 = 0.0
      workingValue3 = 0.0
      workingValue4 = false
      workingValue6 = false
      workingValue8 = false
      -- Beginner: result below is objectEntity.
      workingValue18 = workingValue18(workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8)
      dataCollection4 = workingValue18
    end
  end
  workingValue18 = AttachEntityToEntity
  workingValue19 = dataCollection4
  workingValue = localValue2.ped
  workingValue2 = GetPedBoneIndex
  workingValue3 = localValue2.ped
  workingValue4 = localValue4
  workingValue2 = workingValue2(workingValue3, workingValue4)
  workingValue3 = localValue5.x
  workingValue4 = localValue5.y
  workingValue6 = localValue5.z
  workingValue8 = localValue6.x
  workingValue10 = localValue6.y
  workingValue12 = localValue6.z
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  stateFlag4 = false
  number4 = 2
  stateFlag5 = true
  -- Beginner: Attach one entity to another entity.
  workingValue18(workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5)
  workingValue18 = SetModelAsNoLongerNeeded
  workingValue19 = localValue3.model
  workingValue18(workingValue19)
  return dataCollection4
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18
  localValue2 = pairs
  localValue3 = localValue1.weapons
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    if 0 ~= localValue7 then
      dataCollection4 = DeleteEntity
      workingValue18 = localValue7
      -- Beginner: Delete a GTA entity.
      dataCollection4(workingValue18)
      dataCollection4 = localValue1.weapons
      dataCollection4[localValue6] = 0
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue
  localValue2 = localValue1.ped
  if 0 == localValue2 then
    return
  end
  localValue2 = IsEntityVisible
  localValue3 = localValue1.ped
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = workingValue9
    localValue3 = localValue1
    localValue2(localValue3)
    return
  end
  localValue2 = pairs
  localValue3 = localValue1.weapons
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    if 0 == localValue7 then
      dataCollection4 = localValue1.weapons
      workingValue18 = workingValue7
      workingValue19 = localValue6
      workingValue = localValue1
      workingValue18 = workingValue18(workingValue19, workingValue)
      dataCollection4[localValue6] = workingValue18
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4
  localValue1 = pairs
  localValue2 = hashValue
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.playerIndex
    if -1 == localValue7 then
      localValue7 = GetPlayerFromServerId
      dataCollection4 = localValue5
      -- Beginner: result below is playerIndex.
      localValue7 = localValue7(dataCollection4)
      localValue6.playerIndex = localValue7
    end
    localValue7 = localValue6.playerIndex
    if -1 ~= localValue7 then
      localValue7 = pairs
      dataCollection4 = localValue6.weapons
      localValue7, dataCollection4, workingValue18, workingValue19 = localValue7(dataCollection4)
      for workingValue, workingValue2 in localValue7, dataCollection4, workingValue18, workingValue19 do
        if 0 ~= workingValue2 then
          workingValue3 = IsEntityAttached
          workingValue4 = workingValue2
          workingValue3 = workingValue3(workingValue4)
          if not workingValue3 then
            workingValue3 = DeleteEntity
            workingValue4 = workingValue2
            -- Beginner: Delete a GTA entity.
            workingValue3(workingValue4)
            workingValue3 = localValue6.weapons
            workingValue3[workingValue] = 0
          end
        end
      end
      localValue7 = localValue6.ped
      if 0 ~= localValue7 then
        localValue7 = DoesEntityExist
        dataCollection4 = localValue6.ped
        localValue7 = localValue7(dataCollection4)
        if localValue7 then
          goto continueAtStep46
        end
      end
      localValue7 = GetPlayerPed
      dataCollection4 = localValue6.playerIndex
      -- Beginner: result below is playerPed.
      localValue7 = localValue7(dataCollection4)
      localValue6.ped = localValue7
      ::continueAtStep46::
      localValue7 = workingValue11
      dataCollection4 = localValue6
      localValue7(dataCollection4)
    end
  end
end
number3 = 0
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  while true do
    localValue1 = workingValue5
    localValue1()
    localValue1 = number3
    localValue1 = localValue1 % 3
    if 0 == localValue1 then
      localValue1 = workingValue13
      localValue1()
    end
    localValue1 = number3
    localValue1 = localValue1 + 1
    number3 = localValue1
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(text)
eventHandler = RegisterNetEvent
text = "onPlayerDropped"
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = hashValue
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = workingValue9
    localValue4 = localValue2
    localValue3(localValue4)
    localValue3 = hashValue
    localValue3[localValue1] = nil
  end
  localValue3 = number
  localValue3[localValue1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "onPlayerDropped".
eventHandler(text, workingValue14)
eventHandler = AddStateBagChangeHandler
text = "weapons"
workingValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4
  localValue4 = tonumber
  localValue5 = stringsplit
  localValue6 = localValue1
  localValue7 = ":"
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    return
  end
  localValue5 = hashValue
  localValue5 = localValue5[localValue4]
  if nil == localValue3 then
    if localValue5 then
      localValue6 = workingValue9
      localValue7 = localValue5
      localValue6(localValue7)
      localValue6 = hashValue
      localValue6[localValue4] = nil
    end
    return
  end
  if localValue5 then
    localValue6 = Player
    localValue7 = localValue4
    localValue6 = localValue6(localValue7)
    localValue6 = localValue6.state
    localValue6 = localValue6.chainOnBack
    localValue5.chainOnBack = localValue6
    localValue6 = pairs
    localValue7 = localValue5.weapons
    localValue6, localValue7, dataCollection4, workingValue18 = localValue6(localValue7)
    for workingValue19, workingValue in localValue6, localValue7, dataCollection4, workingValue18 do
      workingValue2 = table
      workingValue2 = workingValue2.has
      workingValue3 = localValue3
      workingValue4 = workingValue19
      workingValue2 = workingValue2(workingValue3, workingValue4)
      if not workingValue2 then
        if 0 ~= workingValue then
          workingValue2 = DeleteEntity
          workingValue3 = workingValue
          -- Beginner: Delete a GTA entity.
          workingValue2(workingValue3)
        end
        workingValue2 = localValue5.weapons
        workingValue2[workingValue19] = nil
        workingValue2 = cmgOperation.weapons
        workingValue2 = workingValue2[workingValue19]
        if workingValue2 then
          workingValue3 = SetModelAsNoLongerNeeded
          workingValue4 = workingValue2.model
          workingValue3(workingValue4)
        end
      end
    end
    localValue6 = pairs
    localValue7 = localValue3
    localValue6, localValue7, dataCollection4, workingValue18 = localValue6(localValue7)
    for workingValue19, workingValue in localValue6, localValue7, dataCollection4, workingValue18 do
      workingValue2 = localValue5.weapons
      workingValue2 = workingValue2[workingValue]
      if not workingValue2 then
        workingValue2 = localValue5.weapons
        workingValue2[workingValue] = 0
      end
    end
    localValue6 = workingValue11
    localValue7 = localValue5
    localValue6(localValue7)
  else
    localValue6 = {}
    localValue7 = pairs
    dataCollection4 = localValue3
    localValue7, dataCollection4, workingValue18, workingValue19 = localValue7(dataCollection4)
    for workingValue, workingValue2 in localValue7, dataCollection4, workingValue18, workingValue19 do
      localValue6[workingValue2] = 0
    end
    localValue7 = hashValue
    dataCollection4 = {}
    dataCollection4.ped = 0
    dataCollection4.playerIndex = -1
    dataCollection4.weapons = localValue6
    workingValue18 = Player
    workingValue19 = localValue4
    workingValue18 = workingValue18(workingValue19)
    workingValue18 = workingValue18.state
    workingValue18 = workingValue18.weaponsDiagonal
    dataCollection4.diagonal = workingValue18
    workingValue18 = Player
    workingValue19 = localValue4
    workingValue18 = workingValue18(workingValue19)
    workingValue18 = workingValue18.state
    workingValue18 = workingValue18.frontAR
    dataCollection4.frontAR = workingValue18
    workingValue18 = Player
    workingValue19 = localValue4
    workingValue18 = workingValue18(workingValue19)
    workingValue18 = workingValue18.state
    workingValue18 = workingValue18.frontSMG
    dataCollection4.frontSMG = workingValue18
    workingValue18 = Player
    workingValue19 = localValue4
    workingValue18 = workingValue18(workingValue19)
    workingValue18 = workingValue18.state
    workingValue18 = workingValue18.chainOnBack
    dataCollection4.chainOnBack = workingValue18
    localValue7[localValue4] = dataCollection4
  end
end
eventHandler(text, workingValue14, cmgOperation4)
eventHandler = AddStateBagChangeHandler
text = "weaponsDiagonal"
workingValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = tonumber
  localValue5 = stringsplit
  localValue6 = localValue1
  localValue7 = ":"
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  localValue5 = hashValue
  localValue5 = localValue5[localValue4]
  if localValue5 then
    localValue6 = localValue5.diagonal
    if localValue6 ~= localValue3 then
      localValue5.diagonal = localValue3
      localValue6 = workingValue9
      localValue7 = localValue5
      localValue6(localValue7)
      localValue6 = workingValue11
      localValue7 = localValue5
      localValue6(localValue7)
    end
  end
end
eventHandler(text, workingValue14, cmgOperation4)
eventHandler = AddStateBagChangeHandler
text = "frontAR"
workingValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = tonumber
  localValue5 = stringsplit
  localValue6 = localValue1
  localValue7 = ":"
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  localValue5 = hashValue
  localValue5 = localValue5[localValue4]
  if localValue5 then
    localValue6 = localValue5.frontAR
    if localValue6 ~= localValue3 then
      localValue5.frontAR = localValue3
      localValue6 = workingValue9
      localValue7 = localValue5
      localValue6(localValue7)
      localValue6 = workingValue11
      localValue7 = localValue5
      localValue6(localValue7)
    end
  end
end
eventHandler(text, workingValue14, cmgOperation4)
eventHandler = AddStateBagChangeHandler
text = "frontSMG"
workingValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = tonumber
  localValue5 = stringsplit
  localValue6 = localValue1
  localValue7 = ":"
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  localValue5 = hashValue
  localValue5 = localValue5[localValue4]
  if localValue5 then
    localValue6 = localValue5.frontSMG
    if localValue6 ~= localValue3 then
      localValue5.frontSMG = localValue3
      localValue6 = workingValue9
      localValue7 = localValue5
      localValue6(localValue7)
      localValue6 = workingValue11
      localValue7 = localValue5
      localValue6(localValue7)
    end
  end
end
eventHandler(text, workingValue14, cmgOperation4)
eventHandler = AddStateBagChangeHandler
text = "chainOnBack"
workingValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = tonumber
  localValue5 = stringsplit
  localValue6 = localValue1
  localValue7 = ":"
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    return
  end
  localValue5 = hashValue
  localValue5 = localValue5[localValue4]
  if not localValue5 then
    return
  end
  localValue5.chainOnBack = localValue3
  localValue6 = workingValue9
  localValue7 = localValue5
  localValue6(localValue7)
  localValue6 = workingValue11
  localValue7 = localValue5
  localValue6(localValue7)
end
eventHandler(text, workingValue14, cmgOperation4)
eventHandler = AddStateBagChangeHandler
text = "redDot"
workingValue14 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = tonumber
  localValue5 = stringsplit
  localValue6 = localValue1
  localValue7 = ":"
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue5 = number
    localValue5[localValue4] = localValue3
  end
end
eventHandler(text, workingValue14, cmgOperation4)
eventHandler = 0

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetSelectedPedWeapon
  localValue3 = localValue1
  -- Beginner: result below is weaponHash.
  localValue2 = localValue2(localValue3)
  localValue3 = cmgOperation.redDotWeapons
  localValue3 = localValue3[localValue2]
  if localValue3 then
    localValue3 = IsPlayerFreeAiming
    localValue4 = PlayerId
    localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9 = localValue4()
    localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9)
    if localValue3 then
      localValue3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue3 = localValue3()
      localValue4 = eventHandler
      localValue3 = localValue3 - localValue4
      localValue4 = 200
      if localValue3 > localValue4 then
        localValue3 = LocalPlayer
        localValue3 = localValue3.state
        localValue4 = localValue3
        localValue3 = localValue3.set
        localValue5 = "redDot"
        localValue6 = {}
        localValue7 = GetGameplayCamCoord
        localValue7 = localValue7()
        dataCollection4 = CMG
        dataCollection4 = dataCollection4.rotationToDirection
        workingValue18 = GetGameplayCamRot
        workingValue19 = 2
        workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9 = workingValue18(workingValue19)
        dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9 = dataCollection4(workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9)
        localValue6[1] = localValue7
        localValue6[2] = dataCollection4
        localValue6[3] = workingValue18
        localValue6[4] = workingValue19
        localValue6[5] = workingValue
        localValue6[6] = workingValue2
        localValue6[7] = workingValue3
        localValue6[8] = workingValue4
        localValue6[9] = workingValue6
        localValue6[10] = workingValue8
        localValue6[11] = workingValue10
        localValue6[12] = workingValue12
        localValue6[13] = stateFlag
        localValue6[14] = stateFlag2
        localValue6[15] = stateFlag3
        localValue6[16] = stateFlag4
        localValue6[17] = number4
        localValue6[18] = stateFlag5
        localValue6[19] = number5
        localValue6[20] = number6
        localValue6[21] = number7
        localValue6[22] = number8
        localValue6[23] = number9
        localValue7 = true
        localValue3(localValue4, localValue5, localValue6, localValue7)
        localValue3 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue3 = localValue3()
        eventHandler = localValue3
      end
      localValue3 = 2
      number2 = localValue3
    else
      localValue3 = number2
      if 1 ~= localValue3 then
        localValue3 = LocalPlayer
        localValue3 = localValue3.state
        localValue4 = localValue3
        localValue3 = localValue3.set
        localValue5 = "redDot"
        localValue6 = true
        localValue7 = true
        localValue3(localValue4, localValue5, localValue6, localValue7)
        localValue3 = 1
        number2 = localValue3
      end
    end
  else
    localValue3 = number2
    if 0 ~= localValue3 then
      localValue3 = LocalPlayer
      localValue3 = localValue3.state
      localValue4 = localValue3
      localValue3 = localValue3.set
      localValue5 = "redDot"
      localValue6 = nil
      localValue7 = true
      localValue3(localValue4, localValue5, localValue6, localValue7)
      localValue3 = 0
      number2 = localValue3
    end
  end
  localValue3 = pairs
  localValue4 = number
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, dataCollection4 in localValue3, localValue4, localValue5, localValue6 do
    workingValue18 = GetPlayerFromServerId
    workingValue19 = localValue7
    -- Beginner: result below is playerIndex.
    workingValue18 = workingValue18(workingValue19)
    if workingValue18 >= 0 then
      workingValue19 = GetPlayerPed
      workingValue = workingValue18
      -- Beginner: result below is playerPed.
      workingValue19 = workingValue19(workingValue)
      if 0 ~= workingValue19 then
        workingValue = GetCurrentPedWeaponEntityIndex
        workingValue2 = workingValue19
        workingValue = workingValue(workingValue2)
        if 0 ~= workingValue then
          workingValue2 = nil
          workingValue3 = nil
          workingValue4 = true == dataCollection4
          if workingValue4 then
            workingValue6 = GetEntityCoords
            workingValue8 = workingValue
            -- Beginner: result below is entityCoords.
            workingValue6 = workingValue6(workingValue8)
            workingValue2 = workingValue6
            workingValue6 = select
            workingValue8 = 2
            workingValue10 = GetEntityMatrix
            workingValue12 = workingValue
            workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9 = workingValue10(workingValue12)
            workingValue6 = workingValue6(workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9)
            workingValue3 = workingValue6
          else
            workingValue2 = dataCollection4[1]
            workingValue3 = dataCollection4[2]
          end
          workingValue6 = DrawSpotLight
          workingValue8 = workingValue2.x
          workingValue10 = workingValue2.y
          workingValue12 = workingValue2.z
          stateFlag = workingValue3.x
          stateFlag2 = workingValue3.y
          stateFlag3 = workingValue3.z
          stateFlag4 = 255
          number4 = 0
          stateFlag5 = 0
          if workingValue4 then
            number5 = 5.0
            if number5 then
              goto continueAtStep128
            end
          end
          number5 = 15.0
          ::continueAtStep128::
          number6 = 20.0
          number7 = 100.0
          number8 = 0.0
          number9 = 10.0
          workingValue6(workingValue8, workingValue10, workingValue12, stateFlag, stateFlag2, stateFlag3, stateFlag4, number4, stateFlag5, number5, number6, number7, number8, number9)
        end
      end
    end
  end
end
workingValue14 = CMG
workingValue14 = workingValue14.createThreadOnTick
cmgOperation4 = text
cmgOperation5 = "Taser Red Dot"
-- Beginner: Run a helper every game frame while this script is active.
workingValue14(cmgOperation4, cmgOperation5)
workingValue14 = AddEventHandler
cmgOperation4 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = pairs
    localValue3 = hashValue
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      dataCollection4 = workingValue9
      workingValue18 = localValue7
      dataCollection4(workingValue18)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
workingValue14(cmgOperation4, cmgOperation5)

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = GetPlayerServerId
  localValue2 = PlayerId
  localValue2, localValue3, localValue4 = localValue2()
  -- Beginner: result below is serverId.
  localValue1 = localValue1(localValue2, localValue3, localValue4)
  localValue2 = hashValue
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = workingValue9
    localValue4 = localValue2
    localValue3(localValue4)
    localValue3 = workingValue11
    localValue4 = localValue2
    localValue3(localValue4)
  end
end
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function cmgOperation5(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6
  dataCollection4 = dataCollection
  workingValue18 = {}
  workingValue19 = localValue2
  workingValue = localValue3
  workingValue2 = localValue4
  workingValue3 = localValue5
  workingValue4 = localValue6
  workingValue6 = localValue7
  workingValue18[1] = workingValue19
  workingValue18[2] = workingValue
  workingValue18[3] = workingValue2
  workingValue18[4] = workingValue3
  workingValue18[5] = workingValue4
  workingValue18[6] = workingValue6
  dataCollection4[localValue1] = workingValue18
  dataCollection4 = dataCollection3
  dataCollection4()
  dataCollection4 = workingValue14
  -- Beginner: Register a client-side event handler.
  dataCollection4()
end
cmgOperation4.setChainOnBackOverrideNumbers = cmgOperation5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2
  localValue2 = dataCollection
  localValue2[localValue1] = nil
  localValue2 = dataCollection3
  localValue2()
  localValue2 = workingValue14
  -- Beginner: Register a client-side event handler.
  localValue2()
end
cmgOperation4.clearChainOnBackOverride = cmgOperation5

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, dataCollection4
  localValue4 = SetTextFont
  localValue5 = 4
  localValue4(localValue5)
  localValue4 = SetTextScale
  localValue5 = 0.35
  localValue6 = 0.35
  localValue4(localValue5, localValue6)
  localValue4 = SetTextColour
  localValue5 = 255
  localValue6 = 255
  localValue7 = 255
  dataCollection4 = 215
  localValue4(localValue5, localValue6, localValue7, dataCollection4)
  localValue4 = SetTextOutline
  localValue4()
  localValue4 = SetTextCentre
  localValue5 = false
  localValue4(localValue5)
  localValue4 = BeginTextCommandDisplayText
  localValue5 = "STRING"
  localValue4(localValue5)
  localValue4 = AddTextComponentSubstringPlayerName
  localValue5 = localValue3
  localValue4(localValue5)
  localValue4 = EndTextCommandDisplayText
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
end
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerCommand
text2 = "chainedit"

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isDevMode
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = cmgOperation6.enabled
  localValue1 = not localValue1
  cmgOperation6.enabled = localValue1
  localValue1 = workingValue14
  -- Beginner: Register a client-side event handler.
  localValue1()
end
stateFlag6 = true
cmgOperation5(text2, workingValue15, stateFlag6)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerCommand
text2 = "chainprint"

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19
  localValue1 = CMG
  localValue1 = localValue1.isDevMode
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = print
  localValue2 = "CHAIN CFG => bone=%d, offset=vector3(%.4f, %.4f, %.4f), rotation=vector3(%.2f, %.2f, %.2f)"
  localValue3 = localValue2
  localValue2 = localValue2.format
  localValue4 = cmgOperation6.bone
  localValue5 = cmgOperation6.offset
  localValue5 = localValue5.x
  localValue6 = cmgOperation6.offset
  localValue6 = localValue6.y
  localValue7 = cmgOperation6.offset
  localValue7 = localValue7.z
  dataCollection4 = cmgOperation6.rotation
  dataCollection4 = dataCollection4.x
  workingValue18 = cmgOperation6.rotation
  workingValue18 = workingValue18.y
  workingValue19 = cmgOperation6.rotation
  workingValue19 = workingValue19.z
  localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19)
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19)
end
stateFlag6 = true
cmgOperation5(text2, workingValue15, stateFlag6)
cmgOperation5 = Citizen
cmgOperation5 = cmgOperation5.CreateThread

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection4, workingValue18, workingValue19, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12
  localValue1 = CMG
  localValue1 = localValue1.isDevMode
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  while true do
    localValue1 = cmgOperation6.enabled
    if not localValue1 then
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 500
      localValue1(localValue2)
    else
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 0
      localValue1(localValue2)
      localValue1 = 0.005
      localValue2 = 1.0
      localValue3 = IsControlPressed
      localValue4 = 0
      localValue5 = 21
      localValue3 = localValue3(localValue4, localValue5)
      if localValue3 then
        localValue1 = 0.02
        localValue2 = 5.0
      else
        localValue3 = IsControlPressed
        localValue4 = 0
        localValue5 = 36
        localValue3 = localValue3(localValue4, localValue5)
        if localValue3 then
          localValue1 = 0.001
          localValue2 = 0.2
        end
      end
      localValue3 = IsControlPressed
      localValue4 = 0
      localValue5 = 19
      localValue3 = localValue3(localValue4, localValue5)
      localValue4 = IsControlJustPressed
      localValue5 = 0
      localValue6 = 172
      localValue4 = localValue4(localValue5, localValue6)
      localValue5 = IsControlJustPressed
      localValue6 = 0
      localValue7 = 173
      localValue5 = localValue5(localValue6, localValue7)
      localValue6 = IsControlJustPressed
      localValue7 = 0
      dataCollection4 = 174
      localValue6 = localValue6(localValue7, dataCollection4)
      localValue7 = IsControlJustPressed
      dataCollection4 = 0
      workingValue18 = 175
      localValue7 = localValue7(dataCollection4, workingValue18)
      dataCollection4 = IsControlJustPressed
      workingValue18 = 0
      workingValue19 = 44
      dataCollection4 = dataCollection4(workingValue18, workingValue19)
      workingValue18 = IsControlJustPressed
      workingValue19 = 0
      workingValue = 38
      workingValue18 = workingValue18(workingValue19, workingValue)
      workingValue19 = false
      if not localValue3 then
        if localValue6 then
          workingValue = vector3
          workingValue2 = cmgOperation6.offset
          workingValue2 = workingValue2.x
          workingValue2 = workingValue2 - localValue1
          workingValue3 = cmgOperation6.offset
          workingValue3 = workingValue3.y
          workingValue4 = cmgOperation6.offset
          workingValue4 = workingValue4.z
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.offset = workingValue
          workingValue19 = true
        end
        if localValue7 then
          workingValue = vector3
          workingValue2 = cmgOperation6.offset
          workingValue2 = workingValue2.x
          workingValue2 = workingValue2 + localValue1
          workingValue3 = cmgOperation6.offset
          workingValue3 = workingValue3.y
          workingValue4 = cmgOperation6.offset
          workingValue4 = workingValue4.z
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.offset = workingValue
          workingValue19 = true
        end
        if localValue4 then
          workingValue = vector3
          workingValue2 = cmgOperation6.offset
          workingValue2 = workingValue2.x
          workingValue3 = cmgOperation6.offset
          workingValue3 = workingValue3.y
          workingValue3 = workingValue3 + localValue1
          workingValue4 = cmgOperation6.offset
          workingValue4 = workingValue4.z
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.offset = workingValue
          workingValue19 = true
        end
        if localValue5 then
          workingValue = vector3
          workingValue2 = cmgOperation6.offset
          workingValue2 = workingValue2.x
          workingValue3 = cmgOperation6.offset
          workingValue3 = workingValue3.y
          workingValue3 = workingValue3 - localValue1
          workingValue4 = cmgOperation6.offset
          workingValue4 = workingValue4.z
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.offset = workingValue
          workingValue19 = true
        end
        if dataCollection4 then
          workingValue = vector3
          workingValue2 = cmgOperation6.offset
          workingValue2 = workingValue2.x
          workingValue3 = cmgOperation6.offset
          workingValue3 = workingValue3.y
          workingValue4 = cmgOperation6.offset
          workingValue4 = workingValue4.z
          workingValue4 = workingValue4 + localValue1
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.offset = workingValue
          workingValue19 = true
        end
        if workingValue18 then
          workingValue = vector3
          workingValue2 = cmgOperation6.offset
          workingValue2 = workingValue2.x
          workingValue3 = cmgOperation6.offset
          workingValue3 = workingValue3.y
          workingValue4 = cmgOperation6.offset
          workingValue4 = workingValue4.z
          workingValue4 = workingValue4 - localValue1
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.offset = workingValue
          workingValue19 = true
        end
      else
        if localValue6 then
          workingValue = vector3
          workingValue2 = cmgOperation6.rotation
          workingValue2 = workingValue2.x
          workingValue3 = cmgOperation6.rotation
          workingValue3 = workingValue3.y
          workingValue4 = cmgOperation6.rotation
          workingValue4 = workingValue4.z
          workingValue4 = workingValue4 - localValue2
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.rotation = workingValue
          workingValue19 = true
        end
        if localValue7 then
          workingValue = vector3
          workingValue2 = cmgOperation6.rotation
          workingValue2 = workingValue2.x
          workingValue3 = cmgOperation6.rotation
          workingValue3 = workingValue3.y
          workingValue4 = cmgOperation6.rotation
          workingValue4 = workingValue4.z
          workingValue4 = workingValue4 + localValue2
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.rotation = workingValue
          workingValue19 = true
        end
        if localValue4 then
          workingValue = vector3
          workingValue2 = cmgOperation6.rotation
          workingValue2 = workingValue2.x
          workingValue2 = workingValue2 - localValue2
          workingValue3 = cmgOperation6.rotation
          workingValue3 = workingValue3.y
          workingValue4 = cmgOperation6.rotation
          workingValue4 = workingValue4.z
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.rotation = workingValue
          workingValue19 = true
        end
        if localValue5 then
          workingValue = vector3
          workingValue2 = cmgOperation6.rotation
          workingValue2 = workingValue2.x
          workingValue2 = workingValue2 + localValue2
          workingValue3 = cmgOperation6.rotation
          workingValue3 = workingValue3.y
          workingValue4 = cmgOperation6.rotation
          workingValue4 = workingValue4.z
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.rotation = workingValue
          workingValue19 = true
        end
        if dataCollection4 then
          workingValue = vector3
          workingValue2 = cmgOperation6.rotation
          workingValue2 = workingValue2.x
          workingValue3 = cmgOperation6.rotation
          workingValue3 = workingValue3.y
          workingValue3 = workingValue3 - localValue2
          workingValue4 = cmgOperation6.rotation
          workingValue4 = workingValue4.z
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.rotation = workingValue
          workingValue19 = true
        end
        if workingValue18 then
          workingValue = vector3
          workingValue2 = cmgOperation6.rotation
          workingValue2 = workingValue2.x
          workingValue3 = cmgOperation6.rotation
          workingValue3 = workingValue3.y
          workingValue3 = workingValue3 + localValue2
          workingValue4 = cmgOperation6.rotation
          workingValue4 = workingValue4.z
          workingValue = workingValue(workingValue2, workingValue3, workingValue4)
          cmgOperation6.rotation = workingValue
          workingValue19 = true
        end
      end
      if workingValue19 then
        workingValue = workingValue14
        -- Beginner: Register a client-side event handler.
        workingValue()
      end
      workingValue = cmgOperation4
      workingValue2 = 0.015
      workingValue3 = 0.65
      workingValue4 = "~y~CHAIN EDIT~w~ (%s)  /chainprint to copy"
      workingValue6 = workingValue4
      workingValue4 = workingValue4.format
      if localValue3 then
        workingValue8 = "ROT"
        if workingValue8 then
          goto continueAtStep253
        end
      end
      workingValue8 = "POS"
      ::continueAtStep253::
      workingValue4, workingValue6, workingValue8, workingValue10, workingValue12 = workingValue4(workingValue6, workingValue8)
      workingValue(workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12)
      workingValue = cmgOperation4
      workingValue2 = 0.015
      workingValue3 = 0.675
      workingValue4 = "bone=%d"
      workingValue6 = workingValue4
      workingValue4 = workingValue4.format
      workingValue8 = cmgOperation6.bone
      workingValue4, workingValue6, workingValue8, workingValue10, workingValue12 = workingValue4(workingValue6, workingValue8)
      workingValue(workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12)
      workingValue = cmgOperation4
      workingValue2 = 0.015
      workingValue3 = 0.7
      workingValue4 = "off:  x=%.4f y=%.4f z=%.4f"
      workingValue6 = workingValue4
      workingValue4 = workingValue4.format
      workingValue8 = cmgOperation6.offset
      workingValue8 = workingValue8.x
      workingValue10 = cmgOperation6.offset
      workingValue10 = workingValue10.y
      workingValue12 = cmgOperation6.offset
      workingValue12 = workingValue12.z
      workingValue4, workingValue6, workingValue8, workingValue10, workingValue12 = workingValue4(workingValue6, workingValue8, workingValue10, workingValue12)
      workingValue(workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12)
      workingValue = cmgOperation4
      workingValue2 = 0.015
      workingValue3 = 0.725
      workingValue4 = "rot:  x=%.2f y=%.2f z=%.2f"
      workingValue6 = workingValue4
      workingValue4 = workingValue4.format
      workingValue8 = cmgOperation6.rotation
      workingValue8 = workingValue8.x
      workingValue10 = cmgOperation6.rotation
      workingValue10 = workingValue10.y
      workingValue12 = cmgOperation6.rotation
      workingValue12 = workingValue12.z
      workingValue4, workingValue6, workingValue8, workingValue10, workingValue12 = workingValue4(workingValue6, workingValue8, workingValue10, workingValue12)
      workingValue(workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12)
      workingValue = cmgOperation4
      workingValue2 = 0.015
      workingValue3 = 0.75
      workingValue4 = "Move: Arrows + Q/E | Rotate: hold ALT | SHIFT big | CTRL fine | /chainedit toggle"
      workingValue(workingValue2, workingValue3, workingValue4)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation5(text2)
