--[[
    LEVEL 1 BEGINNER GUIDE — Cleaner
    =====================================

    File: cmg/prod/client/business/cl_cleaner.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: business gameplay and business job logic, specifically the Cleaner feature.

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
      * Always-running loops: 0
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
local workingValue, workingValue12, workingValue21, workingValue25, workingValue26, stateFlag12, number9, workingValue28, stateFlag14, number10, workingValue3, workingValue5, workingValue6, workingValue7, cmgOperation, text, workingValue8, workingValue9, workingValue10, workingValue11, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, dataCollection3, dataCollection4, text4, workingValue22, text6, workingValue23, workingValue24
workingValue = nil
workingValue12 = nil
workingValue21 = nil
workingValue25 = nil
workingValue26 = nil
stateFlag12 = false
number9 = 0
workingValue28 = nil
stateFlag14 = false
number10 = 0
workingValue3 = nil
workingValue5 = nil
workingValue6 = nil
workingValue7 = nil
cmgOperation = CMG
cmgOperation = cmgOperation.registerHudTimerBarProvider
text = "businessCleanerJob"

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local workingValue13, text5, stateFlag11
  workingValue13 = workingValue6
  if workingValue13 then
    workingValue13 = localValue1.push
    text5 = workingValue6
    stateFlag11 = workingValue7
    workingValue13(text5, stateFlag11)
  end
end
cmgOperation(text, workingValue8)

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1) ===
function cmgOperation(localValue1)
  local workingValue13
  workingValue13 = localValue1.jobMetadata
  workingValue = workingValue13
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, workingValue13, text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2, number6, number7
  localValue1 = {}
  workingValue12 = localValue1
  localValue1 = {}
  workingValue21 = localValue1
  localValue1 = {}
  workingValue25 = localValue1
  localValue1 = assert
  workingValue13 = workingValue
  text5 = "initGround nil metadata"
  localValue1(workingValue13, text5)
  localValue1 = false
  workingValue13 = pairs
  text5 = workingValue.groundPoints
  workingValue13, text5, stateFlag11, workingValue27 = workingValue13(text5)
  for number8, cmgOperation2 in workingValue13, text5, stateFlag11, workingValue27 do
    workingValue29 = workingValue.groundModels
    workingValue30 = workingValue.groundModels
    workingValue30 = #workingValue30
    workingValue30 = number8 % workingValue30
    workingValue30 = workingValue30 + 1
    workingValue29 = workingValue29[workingValue30]
    workingValue30 = CMG
    workingValue30 = workingValue30.loadModel
    workingValue31 = workingValue29
    -- Beginner: Request/load a GTA model before spawning or applying it.
    workingValue30(workingValue31)
    workingValue30 = CreateObject
    workingValue31 = workingValue29
    workingValue4 = cmgOperation2.x
    mathHelper = cmgOperation2.y
    number3 = cmgOperation2.z
    number3 = number3 - 1.0
    stateFlag2 = false
    stateFlag4 = false
    stateFlag6 = false
    -- Beginner: result below is objectEntity.
    workingValue30 = workingValue30(workingValue31, workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6)
    workingValue31 = SetEntityHeading
    workingValue4 = workingValue30
    mathHelper = math
    mathHelper = mathHelper.random
    number3 = 1
    stateFlag2 = 360
    mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2, number6, number7 = mathHelper(number3, stateFlag2)
    -- Beginner: Change the direction an entity is facing.
    workingValue31(workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2, number6, number7)
    workingValue31 = SetModelAsNoLongerNeeded
    workingValue4 = workingValue29
    workingValue31(workingValue4)
    workingValue31 = table
    workingValue31 = workingValue31.insert
    workingValue4 = workingValue12
    mathHelper = workingValue30
    workingValue31(workingValue4, mathHelper)
    workingValue31 = tCMG
    workingValue31 = workingValue31.addMarker
    workingValue4 = cmgOperation2.x
    mathHelper = cmgOperation2.y
    number3 = cmgOperation2.z
    number3 = number3 - 0.6
    stateFlag2 = 0.2
    stateFlag4 = 0.2
    stateFlag6 = 0.2
    number4 = 255
    dataCollection = 255
    number5 = 0
    dataCollection2 = 150
    number6 = 25.0
    number7 = 0
    workingValue31 = workingValue31(workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2, number6, number7)
    workingValue4 = table
    workingValue4 = workingValue4.insert
    mathHelper = workingValue21
    number3 = workingValue31
    workingValue4(mathHelper, number3)
    workingValue4 = "business_job_"
    mathHelper = tostring
    number3 = number8
    mathHelper = mathHelper(number3)
    workingValue4 = workingValue4 .. mathHelper
    mathHelper = CMG
    mathHelper = mathHelper.createArea
    number3 = workingValue4
    stateFlag2 = cmgOperation2
    stateFlag4 = 1.0
    stateFlag6 = 1.5

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local workingValue2, text2
    end

    -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
    function dataCollection()
      local workingValue2, text2
    end

    -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
    function number5()
      local workingValue2, text2, dataCollection5, dataCollection6, dataCollection7, tableHelper, text7
      workingValue2 = localValue1
      if not workingValue2 then
        workingValue2 = workingValue25
        if workingValue2 then
          text2 = number8
          workingValue2 = workingValue25
          workingValue2 = workingValue2[text2]
          if workingValue2 then
            workingValue2 = drawNativeNotification
            text2 = "Press ~INPUT_CONTEXT~ to pick up the trash"
            -- Beginner: Show a GTA-style notification/help prompt.
            workingValue2(text2)
            workingValue2 = IsControlJustPressed
            text2 = 0
            dataCollection5 = 51
            workingValue2 = workingValue2(text2, dataCollection5)
            if workingValue2 then
              workingValue2 = CMG
              workingValue2 = workingValue2.disableSittingOnChairThisFrame
              workingValue2()
              workingValue2 = tCMG
              workingValue2 = workingValue2.setCanAnim
              text2 = false
              workingValue2(text2)
              workingValue2 = true
              localValue1 = workingValue2
              workingValue2 = tCMG
              workingValue2 = workingValue2.playAnim
              text2 = true
              dataCollection5 = {}
              dataCollection6 = {}
              dataCollection7 = "pickup_object"
              tableHelper = "pickup_low"
              text7 = 1
              dataCollection6[1] = dataCollection7
              dataCollection6[2] = tableHelper
              dataCollection6[3] = text7
              dataCollection5[1] = dataCollection6
              dataCollection6 = false
              workingValue2(text2, dataCollection5, dataCollection6)
              workingValue2 = Citizen
              workingValue2 = workingValue2.CreateThread

              -- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
              function text2()
                local serverEventCall, text3
                serverEventCall = Citizen
                serverEventCall = serverEventCall.Wait
                text3 = 1500
                serverEventCall(text3)
                serverEventCall = TriggerServerEvent
                text3 = "bf3f551598"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                serverEventCall(text3)
                serverEventCall = DeleteEntity
                text3 = workingValue30
                -- Beginner: Delete a GTA entity.
                serverEventCall(text3)
                serverEventCall = tCMG
                serverEventCall = serverEventCall.removeMarker
                text3 = workingValue31
                serverEventCall(text3)
                serverEventCall = tCMG
                serverEventCall = serverEventCall.removeArea
                text3 = workingValue4
                serverEventCall(text3)
                text3 = number8
                serverEventCall = workingValue25
                serverEventCall[text3] = nil
                serverEventCall = false
                localValue1 = serverEventCall
                serverEventCall = tCMG
                serverEventCall = serverEventCall.setCanAnim
                text3 = true
                serverEventCall(text3)
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              workingValue2(text2)
            end
          end
        end
      end
    end
    dataCollection2 = {}
    -- Beginner: Create an interaction area around a world position.
    mathHelper(number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2)
    mathHelper = table
    mathHelper = mathHelper.insert
    number3 = workingValue25
    stateFlag2 = workingValue4
    mathHelper(number3, stateFlag2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, workingValue13, text5, stateFlag11
  localValue1 = drawNativeText
  workingValue13 = "Locate the ~y~trash~w~ and clean it up"
  -- Beginner: Draw GTA-style text on screen.
  localValue1(workingValue13)
  localValue1 = workingValue25
  if localValue1 then
    localValue1 = table
    localValue1 = localValue1.count
    workingValue13 = workingValue25
    -- Beginner: result below is count.
    localValue1 = localValue1(workingValue13)
    if localValue1 then
      goto continueAtStep14
    end
  end
  localValue1 = 0
  ::continueAtStep14::
  workingValue13 = "~y~TRASH REMAINING"
  workingValue6 = workingValue13
  workingValue13 = tostring
  text5 = localValue1
  workingValue13 = workingValue13(text5)
  workingValue7 = workingValue13
  workingValue13 = CMG
  workingValue13 = workingValue13.setHudTimerBarProviderActive
  text5 = "businessCleanerJob"
  stateFlag11 = true
  workingValue13(text5, stateFlag11)
  workingValue13 = 0 == localValue1
  return workingValue13
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, workingValue13, text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29
  localValue1 = nil
  workingValue6 = localValue1
  localValue1 = nil
  workingValue7 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  workingValue13 = "businessCleanerJob"
  text5 = false
  localValue1(workingValue13, text5)
  localValue1 = workingValue12
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue12
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = DeleteEntity
      workingValue29 = number8
      -- Beginner: Delete a GTA entity.
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = workingValue21
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue21
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.removeMarker
      workingValue29 = number8
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = workingValue25
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue25
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.removeArea
      workingValue29 = number8
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = nil
  workingValue12 = localValue1
  localValue1 = nil
  workingValue21 = localValue1
  localValue1 = nil
  workingValue25 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, workingValue13, text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2
  localValue1 = {}
  workingValue21 = localValue1
  localValue1 = {}
  workingValue25 = localValue1
  localValue1 = assert
  workingValue13 = workingValue
  text5 = "initSurface nil metadata"
  localValue1(workingValue13, text5)
  localValue1 = false
  workingValue13 = pairs
  text5 = workingValue.surfacePoints
  workingValue13, text5, stateFlag11, workingValue27 = workingValue13(text5)
  for number8, cmgOperation2 in workingValue13, text5, stateFlag11, workingValue27 do
    workingValue29 = tCMG
    workingValue29 = workingValue29.addMarker
    workingValue30 = cmgOperation2.x
    workingValue31 = cmgOperation2.y
    workingValue4 = cmgOperation2.z
    workingValue4 = workingValue4 - 0.6
    mathHelper = 0.2
    number3 = 0.2
    stateFlag2 = 0.2
    stateFlag4 = 255
    stateFlag6 = 255
    number4 = 0
    dataCollection = 150
    number5 = 25.0
    dataCollection2 = 0
    workingValue29 = workingValue29(workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2)
    workingValue30 = table
    workingValue30 = workingValue30.insert
    workingValue31 = workingValue21
    workingValue4 = workingValue29
    workingValue30(workingValue31, workingValue4)
    workingValue30 = "business_job_"
    workingValue31 = tostring
    workingValue4 = number8
    workingValue31 = workingValue31(workingValue4)
    workingValue30 = workingValue30 .. workingValue31
    workingValue31 = CMG
    workingValue31 = workingValue31.createArea
    workingValue4 = workingValue30
    mathHelper = cmgOperation2
    number3 = 2.0
    stateFlag2 = 1.5

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local workingValue2, text2
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
    function stateFlag6()
      local workingValue2, text2
    end

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local workingValue2, text2, dataCollection5, dataCollection6, dataCollection7, tableHelper, text7, stateFlag13
      workingValue2 = localValue1
      if not workingValue2 then
        workingValue2 = workingValue25
        if workingValue2 then
          workingValue2 = workingValue25
          if workingValue2 then
            text2 = number8
            workingValue2 = workingValue25
            workingValue2 = workingValue2[text2]
            if workingValue2 then
              workingValue2 = drawNativeNotification
              text2 = "Press ~INPUT_CONTEXT~ to clean the table"
              -- Beginner: Show a GTA-style notification/help prompt.
              workingValue2(text2)
              workingValue2 = IsControlJustPressed
              text2 = 0
              dataCollection5 = 51
              workingValue2 = workingValue2(text2, dataCollection5)
              if workingValue2 then
                workingValue2 = CMG
                workingValue2 = workingValue2.disableSittingOnChairThisFrame
                workingValue2()
                workingValue2 = tCMG
                workingValue2 = workingValue2.setCanAnim
                text2 = false
                workingValue2(text2)
                workingValue2 = true
                localValue1 = workingValue2
                workingValue2 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                workingValue2 = workingValue2()
                text2 = tCMG
                text2 = text2.playAnim
                dataCollection5 = true
                dataCollection6 = {}
                dataCollection7 = {}
                tableHelper = "timetable@floyd@clean_kitchen@base"
                text7 = "base"
                stateFlag13 = 1
                dataCollection7[1] = tableHelper
                dataCollection7[2] = text7
                dataCollection7[3] = stateFlag13
                dataCollection6[1] = dataCollection7
                dataCollection7 = false
                text2(dataCollection5, dataCollection6, dataCollection7)
                text2 = Citizen
                text2 = text2.CreateThread

                -- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: none) ===
                function dataCollection5()
                  local serverEventCall, text3
                  serverEventCall = Citizen
                  serverEventCall = serverEventCall.Wait
                  text3 = 6000
                  serverEventCall(text3)
                  serverEventCall = ClearPedSecondaryTask
                  text3 = workingValue2
                  serverEventCall(text3)
                  serverEventCall = ClearPedTasks
                  text3 = workingValue2
                  serverEventCall(text3)
                  serverEventCall = TriggerServerEvent
                  text3 = "bf3f551598"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                  serverEventCall(text3)
                  serverEventCall = tCMG
                  serverEventCall = serverEventCall.removeMarker
                  text3 = workingValue29
                  serverEventCall(text3)
                  serverEventCall = tCMG
                  serverEventCall = serverEventCall.removeArea
                  text3 = workingValue30
                  serverEventCall(text3)
                  text3 = number8
                  serverEventCall = workingValue25
                  serverEventCall[text3] = nil
                  serverEventCall = false
                  localValue1 = serverEventCall
                  serverEventCall = tCMG
                  serverEventCall = serverEventCall.setCanAnim
                  text3 = true
                  serverEventCall(text3)
                end
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                text2(dataCollection5)
              end
            end
          end
        end
      end
    end
    dataCollection = {}
    -- Beginner: Create an interaction area around a world position.
    workingValue31(workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection)
    workingValue31 = table
    workingValue31 = workingValue31.insert
    workingValue4 = workingValue25
    mathHelper = workingValue30
    workingValue31(workingValue4, mathHelper)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, workingValue13, text5, stateFlag11
  localValue1 = drawNativeText
  workingValue13 = "Clean the dirty ~y~tables~w~ and prepare for customers"
  -- Beginner: Draw GTA-style text on screen.
  localValue1(workingValue13)
  localValue1 = workingValue25
  if localValue1 then
    localValue1 = table
    localValue1 = localValue1.count
    workingValue13 = workingValue25
    -- Beginner: result below is count.
    localValue1 = localValue1(workingValue13)
    if localValue1 then
      goto continueAtStep14
    end
  end
  localValue1 = 0
  ::continueAtStep14::
  workingValue13 = "~y~TABLES REMAINING"
  workingValue6 = workingValue13
  workingValue13 = tostring
  text5 = localValue1
  workingValue13 = workingValue13(text5)
  workingValue7 = workingValue13
  workingValue13 = CMG
  workingValue13 = workingValue13.setHudTimerBarProviderActive
  text5 = "businessCleanerJob"
  stateFlag11 = true
  workingValue13(text5, stateFlag11)
  workingValue13 = 0 == localValue1
  return workingValue13
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, workingValue13, text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29
  localValue1 = nil
  workingValue6 = localValue1
  localValue1 = nil
  workingValue7 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  workingValue13 = "businessCleanerJob"
  text5 = false
  localValue1(workingValue13, text5)
  localValue1 = workingValue21
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue21
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.removeMarker
      workingValue29 = number8
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = workingValue25
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue25
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.removeArea
      workingValue29 = number8
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = nil
  workingValue21 = localValue1
  localValue1 = nil
  workingValue25 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, workingValue13
  localValue1 = "floor"
  workingValue26 = localValue1
  localValue1 = false
  stateFlag12 = localValue1
  localValue1 = 1
  number9 = localValue1
  localValue1 = workingValue
  if localValue1 then
    localValue1 = workingValue.toiletPoints
    workingValue13 = number9
    localValue1 = localValue1[workingValue13]
    workingValue28 = localValue1
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
function workingValue16()
  local localValue1, workingValue13, text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2
  localValue1 = workingValue26
  if "floor" == localValue1 then
    localValue1 = stateFlag12
    if not localValue1 then
      localValue1 = {}
      workingValue21 = localValue1
      localValue1 = {}
      workingValue25 = localValue1
      localValue1 = assert
      workingValue13 = workingValue28
      text5 = "tickToilet nil metadata (floor)"
      localValue1(workingValue13, text5)
      localValue1 = false
      workingValue13 = pairs
      text5 = workingValue28.liquidPoints
      workingValue13, text5, stateFlag11, workingValue27 = workingValue13(text5)
      for number8, cmgOperation2 in workingValue13, text5, stateFlag11, workingValue27 do
        workingValue29 = tCMG
        workingValue29 = workingValue29.addMarker
        workingValue30 = cmgOperation2.x
        workingValue31 = cmgOperation2.y
        workingValue4 = cmgOperation2.z
        workingValue4 = workingValue4 - 0.6
        mathHelper = 0.2
        number3 = 0.2
        stateFlag2 = 0.2
        stateFlag4 = 255
        stateFlag6 = 255
        number4 = 0
        dataCollection = 150
        number5 = 25.0
        dataCollection2 = 0
        workingValue29 = workingValue29(workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2)
        workingValue30 = table
        workingValue30 = workingValue30.insert
        workingValue31 = workingValue21
        workingValue4 = workingValue29
        workingValue30(workingValue31, workingValue4)
        workingValue30 = "business_job_"
        workingValue31 = tostring
        workingValue4 = number8
        workingValue31 = workingValue31(workingValue4)
        workingValue30 = workingValue30 .. workingValue31
        workingValue31 = CMG
        workingValue31 = workingValue31.createArea
        workingValue4 = workingValue30
        mathHelper = cmgOperation2
        number3 = 1.0
        stateFlag2 = 1.5

        -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
        function stateFlag4()
          local workingValue2, text2
        end

        -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
        function stateFlag6()
          local workingValue2, text2
        end

        -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
        function number4()
          local workingValue2, text2, dataCollection5, dataCollection6, dataCollection7, tableHelper, text7, stateFlag13, stateFlag15, number11, number, number2, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9, stateFlag10
          workingValue2 = localValue1
          if not workingValue2 then
            workingValue2 = workingValue25
            if workingValue2 then
              text2 = number8
              workingValue2 = workingValue25
              workingValue2 = workingValue2[text2]
              if workingValue2 then
                workingValue2 = drawNativeNotification
                text2 = "Press ~INPUT_CONTEXT~ to mop the floor"
                -- Beginner: Show a GTA-style notification/help prompt.
                workingValue2(text2)
                workingValue2 = IsControlJustPressed
                text2 = 0
                dataCollection5 = 51
                workingValue2 = workingValue2(text2, dataCollection5)
                if workingValue2 then
                  workingValue2 = CMG
                  workingValue2 = workingValue2.disableSittingOnChairThisFrame
                  workingValue2()
                  workingValue2 = tCMG
                  workingValue2 = workingValue2.setCanAnim
                  text2 = false
                  workingValue2(text2)
                  workingValue2 = true
                  localValue1 = workingValue2
                  workingValue2 = tCMG
                  workingValue2 = workingValue2.playAnim
                  text2 = true
                  dataCollection5 = {}
                  dataCollection6 = {}
                  dataCollection7 = "move_mop"
                  tableHelper = "idle_scrub_small_player"
                  text7 = 1
                  dataCollection6[1] = dataCollection7
                  dataCollection6[2] = tableHelper
                  dataCollection6[3] = text7
                  dataCollection5[1] = dataCollection6
                  dataCollection6 = false
                  workingValue2(text2, dataCollection5, dataCollection6)
                  workingValue2 = CMG
                  workingValue2 = workingValue2.loadModel
                  text2 = -320848029
                  -- Beginner: Request/load a GTA model before spawning or applying it.
                  workingValue2(text2)
                  workingValue2 = CMG
                  workingValue2 = workingValue2.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  workingValue2 = workingValue2()
                  text2 = CMG
                  text2 = text2.requestEntitySpawn
                  dataCollection5 = "business_cleaner_mop"
                  text2(dataCollection5)
                  text2 = CreateObject
                  dataCollection5 = -320848029
                  dataCollection6 = workingValue2.x
                  dataCollection7 = workingValue2.y
                  tableHelper = workingValue2.z
                  text7 = true
                  stateFlag13 = false
                  stateFlag15 = false
                  -- Beginner: result below is objectEntity.
                  text2 = text2(dataCollection5, dataCollection6, dataCollection7, tableHelper, text7, stateFlag13, stateFlag15)
                  dataCollection5 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  dataCollection5 = dataCollection5()
                  dataCollection6 = AttachEntityToEntity
                  dataCollection7 = text2
                  tableHelper = dataCollection5
                  text7 = GetPedBoneIndex
                  stateFlag13 = dataCollection5
                  stateFlag15 = 28422
                  text7 = text7(stateFlag13, stateFlag15)
                  stateFlag13 = 0.0
                  stateFlag15 = 0.0
                  number11 = 0.12
                  number = 0.0
                  number2 = 0.0
                  stateFlag = 0.0
                  stateFlag3 = true
                  stateFlag5 = true
                  stateFlag7 = false
                  stateFlag8 = true
                  stateFlag9 = 1
                  stateFlag10 = true
                  -- Beginner: Attach one entity to another entity.
                  dataCollection6(dataCollection7, tableHelper, text7, stateFlag13, stateFlag15, number11, number, number2, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
                  dataCollection6 = SetModelAsNoLongerNeeded
                  dataCollection7 = -320848029
                  dataCollection6(dataCollection7)
                  dataCollection6 = Citizen
                  dataCollection6 = dataCollection6.CreateThread

                  -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
                  function dataCollection7()
                    local serverEventCall, text3
                    serverEventCall = Citizen
                    serverEventCall = serverEventCall.Wait
                    text3 = 4000
                    serverEventCall(text3)
                    serverEventCall = DeleteEntity
                    text3 = text2
                    -- Beginner: Delete a GTA entity.
                    serverEventCall(text3)
                    serverEventCall = TriggerServerEvent
                    text3 = "bf3f551598"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                    serverEventCall(text3)
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.removeMarker
                    text3 = workingValue29
                    serverEventCall(text3)
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.removeArea
                    text3 = workingValue30
                    serverEventCall(text3)
                    text3 = number8
                    serverEventCall = workingValue25
                    serverEventCall[text3] = nil
                    serverEventCall = false
                    localValue1 = serverEventCall
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.setCanAnim
                    text3 = true
                    serverEventCall(text3)
                  end
                  -- Beginner: Start a separate FiveM thread so this code can run independently.
                  dataCollection6(dataCollection7)
                end
              end
            end
          end
        end
        dataCollection = {}
        -- Beginner: Create an interaction area around a world position.
        workingValue31(workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection)
        workingValue31 = table
        workingValue31 = workingValue31.insert
        workingValue4 = workingValue25
        mathHelper = workingValue30
        workingValue31(workingValue4, mathHelper)
      end
      workingValue13 = true
      stateFlag12 = workingValue13
    end
    localValue1 = drawNativeText
    workingValue13 = "Mop the ~y~pee~w~ on the toilet floor"
    -- Beginner: Draw GTA-style text on screen.
    localValue1(workingValue13)
    localValue1 = workingValue25
    if localValue1 then
      localValue1 = table
      localValue1 = localValue1.count
      workingValue13 = workingValue25
      -- Beginner: result below is count.
      localValue1 = localValue1(workingValue13)
    end
    if 0 == localValue1 then
      localValue1 = workingValue21
      if localValue1 then
        localValue1 = pairs
        workingValue13 = workingValue21
        localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
        for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
          cmgOperation2 = tCMG
          cmgOperation2 = cmgOperation2.removeMarker
          workingValue29 = number8
          cmgOperation2(workingValue29)
        end
      end
      localValue1 = workingValue25
      if localValue1 then
        localValue1 = pairs
        workingValue13 = workingValue25
        localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
        for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
          cmgOperation2 = tCMG
          cmgOperation2 = cmgOperation2.removeArea
          workingValue29 = number8
          cmgOperation2(workingValue29)
        end
      end
      localValue1 = nil
      workingValue21 = localValue1
      localValue1 = nil
      workingValue25 = localValue1
      localValue1 = "scrub"
      workingValue26 = localValue1
      localValue1 = false
      stateFlag12 = localValue1
    end
  else
    localValue1 = workingValue26
    if "scrub" == localValue1 then
      localValue1 = stateFlag12
      if not localValue1 then
        localValue1 = {}
        workingValue21 = localValue1
        localValue1 = {}
        workingValue25 = localValue1
        localValue1 = assert
        workingValue13 = workingValue28
        text5 = "tickToilet nil metadata (scrub)"
        localValue1(workingValue13, text5)
        localValue1 = false
        workingValue13 = tCMG
        workingValue13 = workingValue13.addMarker
        text5 = workingValue28.scrub
        text5 = text5.x
        stateFlag11 = workingValue28.scrub
        stateFlag11 = stateFlag11.y
        workingValue27 = workingValue28.scrub
        workingValue27 = workingValue27.z
        workingValue27 = workingValue27 - 0.6
        number8 = 0.2
        cmgOperation2 = 0.2
        workingValue29 = 0.2
        workingValue30 = 255
        workingValue31 = 255
        workingValue4 = 0
        mathHelper = 150
        number3 = 25.0
        stateFlag2 = 0
        workingValue13 = workingValue13(text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2)
        text5 = table
        text5 = text5.insert
        stateFlag11 = workingValue21
        workingValue27 = workingValue13
        text5(stateFlag11, workingValue27)
        text5 = "business_job_"
        stateFlag11 = tostring
        workingValue27 = 1
        stateFlag11 = stateFlag11(workingValue27)
        text5 = text5 .. stateFlag11
        stateFlag11 = CMG
        stateFlag11 = stateFlag11.createArea
        workingValue27 = text5
        number8 = workingValue28.scrub
        number8 = number8.xyz
        cmgOperation2 = 1.0
        workingValue29 = 1.5

        -- === HELPER FUNCTION (decompiler name: workingValue30; parameters: none) ===
        function workingValue30()
          local workingValue2, text2
        end

        -- === HELPER FUNCTION (decompiler name: workingValue31; parameters: none) ===
        function workingValue31()
          local workingValue2, text2
        end

        -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
        function workingValue4()
          local workingValue2, text2, dataCollection5, dataCollection6, dataCollection7, tableHelper, text7
          workingValue2 = localValue1
          if not workingValue2 then
            workingValue2 = workingValue25
            if workingValue2 then
              workingValue2 = workingValue25
              workingValue2 = workingValue2[1]
              if workingValue2 then
                workingValue2 = drawNativeNotification
                text2 = "Press ~INPUT_CONTEXT~ to plunge the toilet"
                -- Beginner: Show a GTA-style notification/help prompt.
                workingValue2(text2)
                workingValue2 = IsControlJustPressed
                text2 = 0
                dataCollection5 = 51
                workingValue2 = workingValue2(text2, dataCollection5)
                if workingValue2 then
                  workingValue2 = CMG
                  workingValue2 = workingValue2.disableSittingOnChairThisFrame
                  workingValue2()
                  workingValue2 = tCMG
                  workingValue2 = workingValue2.setCanAnim
                  text2 = false
                  workingValue2(text2)
                  workingValue2 = true
                  localValue1 = workingValue2
                  workingValue2 = tCMG
                  workingValue2 = workingValue2.playAnim
                  text2 = true
                  dataCollection5 = {}
                  dataCollection6 = {}
                  dataCollection7 = "switch@trevor@on_toilet"
                  tableHelper = "trev_on_toilet_loop"
                  text7 = 1
                  dataCollection6[1] = dataCollection7
                  dataCollection6[2] = tableHelper
                  dataCollection6[3] = text7
                  dataCollection5[1] = dataCollection6
                  dataCollection6 = false
                  workingValue2(text2, dataCollection5, dataCollection6)
                  workingValue2 = Citizen
                  workingValue2 = workingValue2.CreateThread

                  -- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
                  function text2()
                    local serverEventCall, text3
                    serverEventCall = Citizen
                    serverEventCall = serverEventCall.Wait
                    text3 = 7500
                    serverEventCall(text3)
                    serverEventCall = TriggerServerEvent
                    text3 = "bf3f551598"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                    serverEventCall(text3)
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.removeMarker
                    text3 = workingValue13
                    serverEventCall(text3)
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.removeArea
                    text3 = text5
                    serverEventCall(text3)
                    serverEventCall = workingValue25
                    serverEventCall[1] = nil
                    serverEventCall = false
                    localValue1 = serverEventCall
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.setCanAnim
                    text3 = true
                    serverEventCall(text3)
                  end
                  -- Beginner: Start a separate FiveM thread so this code can run independently.
                  workingValue2(text2)
                end
              end
            end
          end
        end
        mathHelper = {}
        -- Beginner: Create an interaction area around a world position.
        stateFlag11(workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper)
        stateFlag11 = table
        stateFlag11 = stateFlag11.insert
        workingValue27 = workingValue25
        number8 = text5
        stateFlag11(workingValue27, number8)
        stateFlag11 = true
        stateFlag12 = stateFlag11
      end
      localValue1 = drawNativeText
      workingValue13 = "Plunge the ~y~toilet~w~ to remove blockages"
      -- Beginner: Draw GTA-style text on screen.
      localValue1(workingValue13)
      localValue1 = workingValue25
      if localValue1 then
        localValue1 = table
        localValue1 = localValue1.count
        workingValue13 = workingValue25
        -- Beginner: result below is count.
        localValue1 = localValue1(workingValue13)
      end
      if 0 == localValue1 then
        localValue1 = workingValue21
        if localValue1 then
          localValue1 = pairs
          workingValue13 = workingValue21
          localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
          for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
            cmgOperation2 = tCMG
            cmgOperation2 = cmgOperation2.removeMarker
            workingValue29 = number8
            cmgOperation2(workingValue29)
          end
        end
        localValue1 = workingValue25
        if localValue1 then
          localValue1 = pairs
          workingValue13 = workingValue25
          localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
          for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
            cmgOperation2 = tCMG
            cmgOperation2 = cmgOperation2.removeArea
            workingValue29 = number8
            cmgOperation2(workingValue29)
          end
        end
        localValue1 = nil
        workingValue21 = localValue1
        localValue1 = nil
        workingValue25 = localValue1
        localValue1 = "hands"
        workingValue26 = localValue1
        localValue1 = false
        stateFlag12 = localValue1
      end
    else
      localValue1 = workingValue26
      if "hands" == localValue1 then
        localValue1 = stateFlag12
        if not localValue1 then
          localValue1 = {}
          workingValue21 = localValue1
          localValue1 = {}
          workingValue25 = localValue1
          localValue1 = assert
          workingValue13 = workingValue28
          text5 = "tickToilet nil metadata (hands)"
          localValue1(workingValue13, text5)
          localValue1 = false
          workingValue13 = tCMG
          workingValue13 = workingValue13.addMarker
          text5 = workingValue28.hands
          text5 = text5.x
          stateFlag11 = workingValue28.hands
          stateFlag11 = stateFlag11.y
          workingValue27 = workingValue28.hands
          workingValue27 = workingValue27.z
          workingValue27 = workingValue27 - 0.6
          number8 = 0.2
          cmgOperation2 = 0.2
          workingValue29 = 0.2
          workingValue30 = 255
          workingValue31 = 255
          workingValue4 = 0
          mathHelper = 150
          number3 = 25.0
          stateFlag2 = 0
          workingValue13 = workingValue13(text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2)
          text5 = table
          text5 = text5.insert
          stateFlag11 = workingValue21
          workingValue27 = workingValue13
          text5(stateFlag11, workingValue27)
          text5 = "business_job_"
          stateFlag11 = tostring
          workingValue27 = 1
          stateFlag11 = stateFlag11(workingValue27)
          text5 = text5 .. stateFlag11
          stateFlag11 = CMG
          stateFlag11 = stateFlag11.createArea
          workingValue27 = text5
          number8 = workingValue28.hands
          number8 = number8.xyz
          cmgOperation2 = 1.0
          workingValue29 = 1.5

          -- === HELPER FUNCTION (decompiler name: workingValue30; parameters: none) ===
          function workingValue30()
            local workingValue2, text2
          end

          -- === HELPER FUNCTION (decompiler name: workingValue31; parameters: none) ===
          function workingValue31()
            local workingValue2, text2
          end

          -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
          function workingValue4()
            local workingValue2, text2, dataCollection5, dataCollection6, dataCollection7, tableHelper, text7
            workingValue2 = localValue1
            if not workingValue2 then
              workingValue2 = workingValue25
              if workingValue2 then
                workingValue2 = workingValue25
                workingValue2 = workingValue2[1]
                if workingValue2 then
                  workingValue2 = drawNativeNotification
                  text2 = "Press ~INPUT_CONTEXT~ to wash your hands"
                  -- Beginner: Show a GTA-style notification/help prompt.
                  workingValue2(text2)
                  workingValue2 = IsControlJustPressed
                  text2 = 0
                  dataCollection5 = 51
                  workingValue2 = workingValue2(text2, dataCollection5)
                  if workingValue2 then
                    workingValue2 = CMG
                    workingValue2 = workingValue2.disableSittingOnChairThisFrame
                    workingValue2()
                    workingValue2 = tCMG
                    workingValue2 = workingValue2.setCanAnim
                    text2 = false
                    workingValue2(text2)
                    workingValue2 = true
                    localValue1 = workingValue2
                    workingValue2 = tCMG
                    workingValue2 = workingValue2.playAnim
                    text2 = true
                    dataCollection5 = {}
                    dataCollection6 = {}
                    dataCollection7 = "switch@michael@wash_face"
                    tableHelper = "loop_michael"
                    text7 = 1
                    dataCollection6[1] = dataCollection7
                    dataCollection6[2] = tableHelper
                    dataCollection6[3] = text7
                    dataCollection5[1] = dataCollection6
                    dataCollection6 = false
                    workingValue2(text2, dataCollection5, dataCollection6)
                    workingValue2 = Citizen
                    workingValue2 = workingValue2.CreateThread

                    -- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
                    function text2()
                      local serverEventCall, text3
                      serverEventCall = Citizen
                      serverEventCall = serverEventCall.Wait
                      text3 = 3800
                      serverEventCall(text3)
                      serverEventCall = TriggerServerEvent
                      text3 = "bf3f551598"
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                      serverEventCall(text3)
                      serverEventCall = tCMG
                      serverEventCall = serverEventCall.removeMarker
                      text3 = workingValue13
                      serverEventCall(text3)
                      serverEventCall = tCMG
                      serverEventCall = serverEventCall.removeArea
                      text3 = text5
                      serverEventCall(text3)
                      serverEventCall = workingValue25
                      serverEventCall[1] = nil
                      serverEventCall = false
                      localValue1 = serverEventCall
                      serverEventCall = tCMG
                      serverEventCall = serverEventCall.setCanAnim
                      text3 = true
                      serverEventCall(text3)
                    end
                    -- Beginner: Start a separate FiveM thread so this code can run independently.
                    workingValue2(text2)
                  end
                end
              end
            end
          end
          mathHelper = {}
          -- Beginner: Create an interaction area around a world position.
          stateFlag11(workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper)
          stateFlag11 = table
          stateFlag11 = stateFlag11.insert
          workingValue27 = workingValue25
          number8 = text5
          stateFlag11(workingValue27, number8)
          stateFlag11 = true
          stateFlag12 = stateFlag11
        end
        localValue1 = drawNativeText
        workingValue13 = "Wash your hands and face at the ~y~sink~w~ thoroughly"
        -- Beginner: Draw GTA-style text on screen.
        localValue1(workingValue13)
        localValue1 = workingValue25
        if localValue1 then
          localValue1 = table
          localValue1 = localValue1.count
          workingValue13 = workingValue25
          -- Beginner: result below is count.
          localValue1 = localValue1(workingValue13)
          if 0 ~= localValue1 then
            goto continueAtStep380
          end
        end
        localValue1 = workingValue21
        if localValue1 then
          localValue1 = pairs
          workingValue13 = workingValue21
          localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
          for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
            cmgOperation2 = tCMG
            cmgOperation2 = cmgOperation2.removeMarker
            workingValue29 = number8
            cmgOperation2(workingValue29)
          end
        end
        localValue1 = workingValue25
        if localValue1 then
          localValue1 = pairs
          workingValue13 = workingValue25
          localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
          for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
            cmgOperation2 = tCMG
            cmgOperation2 = cmgOperation2.removeArea
            workingValue29 = number8
            cmgOperation2(workingValue29)
          end
        end
        localValue1 = nil
        workingValue21 = localValue1
        localValue1 = nil
        workingValue25 = localValue1
        localValue1 = workingValue
        if localValue1 then
          localValue1 = number9
          workingValue13 = table
          workingValue13 = workingValue13.count
          text5 = workingValue.toiletPoints
          -- Beginner: result below is count.
          workingValue13 = workingValue13(text5)
          if localValue1 == workingValue13 then
            localValue1 = true
            return localValue1
        end
        else
          localValue1 = "floor"
          workingValue26 = localValue1
          localValue1 = false
          stateFlag12 = localValue1
          localValue1 = number9
          localValue1 = localValue1 + 1
          number9 = localValue1
          localValue1 = workingValue
          if localValue1 then
            localValue1 = workingValue.toiletPoints
            workingValue13 = number9
            localValue1 = localValue1[workingValue13]
            workingValue28 = localValue1
          end
        end
      end
    end
  end
  ::continueAtStep380::
  localValue1 = false
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, workingValue13, text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29
  localValue1 = workingValue21
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue21
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.removeMarker
      workingValue29 = number8
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = workingValue25
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue25
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.removeArea
      workingValue29 = number8
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = nil
  workingValue21 = localValue1
  localValue1 = nil
  workingValue25 = localValue1
  localValue1 = 0
  number9 = localValue1
  localValue1 = nil
  workingValue28 = localValue1
  localValue1 = false
  stateFlag12 = localValue1
  localValue1 = nil
  workingValue26 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, workingValue13, text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2
  localValue1 = {}
  workingValue21 = localValue1
  localValue1 = {}
  workingValue25 = localValue1
  localValue1 = false
  stateFlag14 = localValue1
  localValue1 = 0
  number10 = localValue1
  localValue1 = assert
  workingValue13 = workingValue
  text5 = "initBin nil metadata"
  localValue1(workingValue13, text5)
  localValue1 = false
  workingValue13 = pairs
  text5 = workingValue.binPoints
  workingValue13, text5, stateFlag11, workingValue27 = workingValue13(text5)
  for number8, cmgOperation2 in workingValue13, text5, stateFlag11, workingValue27 do
    workingValue29 = tCMG
    workingValue29 = workingValue29.addMarker
    workingValue30 = cmgOperation2.x
    workingValue31 = cmgOperation2.y
    workingValue4 = cmgOperation2.z
    workingValue4 = workingValue4 - 1.0
    mathHelper = 0.4
    number3 = 0.4
    stateFlag2 = 0.4
    stateFlag4 = 255
    stateFlag6 = 255
    number4 = 0
    dataCollection = 150
    number5 = 25.0
    dataCollection2 = 1
    workingValue29 = workingValue29(workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection, number5, dataCollection2)
    workingValue30 = table
    workingValue30 = workingValue30.insert
    workingValue31 = workingValue21
    workingValue4 = workingValue29
    workingValue30(workingValue31, workingValue4)
    workingValue30 = "business_job_"
    workingValue31 = tostring
    workingValue4 = number8
    workingValue31 = workingValue31(workingValue4)
    workingValue30 = workingValue30 .. workingValue31
    workingValue31 = CMG
    workingValue31 = workingValue31.createArea
    workingValue4 = workingValue30
    mathHelper = cmgOperation2.xyz
    number3 = 1.0
    stateFlag2 = 1.5

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local workingValue2, text2
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
    function stateFlag6()
      local workingValue2, text2
    end

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local workingValue2, text2, dataCollection5, dataCollection6, dataCollection7, tableHelper, text7, stateFlag13, stateFlag15, number11, number, number2, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9
      workingValue2 = localValue1
      if not workingValue2 then
        workingValue2 = workingValue25
        if workingValue2 then
          workingValue2 = workingValue25
          if workingValue2 then
            text2 = number8
            workingValue2 = workingValue25
            workingValue2 = workingValue2[text2]
            if workingValue2 then
              workingValue2 = stateFlag14
              if not workingValue2 then
                workingValue2 = drawNativeNotification
                text2 = "Press ~INPUT_CONTEXT~ to replace the bin ban"
                -- Beginner: Show a GTA-style notification/help prompt.
                workingValue2(text2)
                workingValue2 = IsControlJustPressed
                text2 = 0
                dataCollection5 = 51
                workingValue2 = workingValue2(text2, dataCollection5)
                if workingValue2 then
                  workingValue2 = CMG
                  workingValue2 = workingValue2.disableSittingOnChairThisFrame
                  workingValue2()
                  workingValue2 = tCMG
                  workingValue2 = workingValue2.setCanAnim
                  text2 = false
                  workingValue2(text2)
                  workingValue2 = true
                  localValue1 = workingValue2
                  workingValue2 = tCMG
                  workingValue2 = workingValue2.playAnim
                  text2 = true
                  dataCollection5 = {}
                  dataCollection6 = {}
                  dataCollection7 = "anim@heists@narcotics@trash"
                  tableHelper = "walk"
                  text7 = 1
                  dataCollection6[1] = dataCollection7
                  dataCollection6[2] = tableHelper
                  dataCollection6[3] = text7
                  dataCollection5[1] = dataCollection6
                  dataCollection6 = true
                  workingValue2(text2, dataCollection5, dataCollection6)
                  workingValue2 = CMG
                  workingValue2 = workingValue2.loadModel
                  text2 = 1138881502
                  -- Beginner: Request/load a GTA model before spawning or applying it.
                  workingValue2(text2)
                  workingValue2 = CMG
                  workingValue2 = workingValue2.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  workingValue2 = workingValue2()
                  text2 = CMG
                  text2 = text2.requestEntitySpawn
                  dataCollection5 = "business_cleaner_binbag"
                  text2(dataCollection5)
                  text2 = CreateObject
                  dataCollection5 = 1138881502
                  dataCollection6 = workingValue2.x
                  dataCollection7 = workingValue2.y
                  tableHelper = workingValue2.z
                  text7 = true
                  stateFlag13 = false
                  stateFlag15 = false
                  -- Beginner: result below is objectEntity.
                  text2 = text2(dataCollection5, dataCollection6, dataCollection7, tableHelper, text7, stateFlag13, stateFlag15)
                  number10 = text2
                  text2 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  text2 = text2()
                  dataCollection5 = AttachEntityToEntity
                  dataCollection6 = number10
                  dataCollection7 = text2
                  tableHelper = GetPedBoneIndex
                  text7 = text2
                  stateFlag13 = 57005
                  tableHelper = tableHelper(text7, stateFlag13)
                  text7 = 0.12
                  stateFlag13 = 0.0
                  stateFlag15 = 0.0
                  number11 = 25.0
                  number = 270.0
                  number2 = 180.0
                  stateFlag = true
                  stateFlag3 = true
                  stateFlag5 = false
                  stateFlag7 = true
                  stateFlag8 = 1
                  stateFlag9 = true
                  -- Beginner: Attach one entity to another entity.
                  dataCollection5(dataCollection6, dataCollection7, tableHelper, text7, stateFlag13, stateFlag15, number11, number, number2, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9)
                  dataCollection5 = SetModelAsNoLongerNeeded
                  dataCollection6 = 1138881502
                  dataCollection5(dataCollection6)
                  dataCollection5 = TriggerServerEvent
                  dataCollection6 = "bf3f551598"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                  dataCollection5(dataCollection6)
                  dataCollection5 = true
                  stateFlag14 = dataCollection5
                  dataCollection5 = tCMG
                  dataCollection5 = dataCollection5.removeMarker
                  dataCollection6 = workingValue29
                  dataCollection5(dataCollection6)
                  dataCollection5 = tCMG
                  dataCollection5 = dataCollection5.removeArea
                  dataCollection6 = workingValue30
                  dataCollection5(dataCollection6)
                  dataCollection6 = number8
                  dataCollection5 = workingValue25
                  dataCollection5[dataCollection6] = nil
                  dataCollection5 = false
                  localValue1 = dataCollection5
                  dataCollection5 = tCMG
                  dataCollection5 = dataCollection5.setCanAnim
                  dataCollection6 = true
                  dataCollection5(dataCollection6)
                  dataCollection5 = notify
                  dataCollection6 = "~g~Picked up bin bag!"
                  -- Beginner: Show a notification to the player.
                  dataCollection5(dataCollection6)
                end
              end
            end
          end
        end
      end
    end
    dataCollection = {}
    -- Beginner: Create an interaction area around a world position.
    workingValue31(workingValue4, mathHelper, number3, stateFlag2, stateFlag4, stateFlag6, number4, dataCollection)
    workingValue31 = table
    workingValue31 = workingValue31.insert
    workingValue4 = workingValue25
    mathHelper = workingValue30
    workingValue31(workingValue4, mathHelper)
  end
  workingValue13 = CMG
  workingValue13 = workingValue13.createArea
  text5 = "business_job_bin"
  stateFlag11 = workingValue.binDeliveryPoint
  workingValue27 = 1.0
  number8 = 1.5

  -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
  function cmgOperation2()
    local workingValue2, text2
  end

  -- === HELPER FUNCTION (decompiler name: workingValue29; parameters: none) ===
  function workingValue29()
    local workingValue2, text2
  end

  -- === HELPER FUNCTION (decompiler name: workingValue30; parameters: none) ===
  function workingValue30()
    local workingValue2, text2, dataCollection5
    workingValue2 = stateFlag14
    if workingValue2 then
      workingValue2 = drawNativeNotification
      text2 = "Press ~INPUT_CONTEXT~ to dispose of the bin bag"
      -- Beginner: Show a GTA-style notification/help prompt.
      workingValue2(text2)
      workingValue2 = IsControlJustPressed
      text2 = 0
      dataCollection5 = 51
      workingValue2 = workingValue2(text2, dataCollection5)
      if workingValue2 then
        workingValue2 = CMG
        workingValue2 = workingValue2.disableSittingOnChairThisFrame
        workingValue2()
        workingValue2 = tCMG
        workingValue2 = workingValue2.setCanAnim
        text2 = false
        workingValue2(text2)
        workingValue2 = true
        localValue1 = workingValue2
        workingValue2 = DeleteEntity
        text2 = number10
        -- Beginner: Delete a GTA entity.
        workingValue2(text2)
        workingValue2 = tCMG
        workingValue2 = workingValue2.stopAnim
        text2 = false
        workingValue2(text2)
        workingValue2 = notify
        text2 = "~r~Thrown away bin bag."
        -- Beginner: Show a notification to the player.
        workingValue2(text2)
        workingValue2 = TriggerServerEvent
        text2 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        workingValue2(text2)
        workingValue2 = false
        stateFlag14 = workingValue2
        workingValue2 = false
        localValue1 = workingValue2
        workingValue2 = tCMG
        workingValue2 = workingValue2.setCanAnim
        text2 = true
        workingValue2(text2)
      end
    end
  end
  workingValue31 = {}
  workingValue13 = workingValue13(text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31)
  workingValue3 = workingValue13
  workingValue13 = tCMG
  workingValue13 = workingValue13.addMarker
  text5 = workingValue.binDeliveryPoint
  text5 = text5.x
  stateFlag11 = workingValue.binDeliveryPoint
  stateFlag11 = stateFlag11.y
  workingValue27 = workingValue.binDeliveryPoint
  workingValue27 = workingValue27.z
  workingValue27 = workingValue27 - 1.0
  number8 = 0.4
  cmgOperation2 = 0.4
  workingValue29 = 0.4
  workingValue30 = 255
  workingValue31 = 255
  workingValue4 = 0
  mathHelper = 150
  number3 = 25.0
  stateFlag2 = 1
  workingValue13 = workingValue13(text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29, workingValue30, workingValue31, workingValue4, mathHelper, number3, stateFlag2)
  workingValue5 = workingValue13
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, workingValue13, text5, stateFlag11
  localValue1 = stateFlag14
  if localValue1 then
    localValue1 = drawNativeText
    workingValue13 = "Take the bin bag ~y~outside~w~ to the tip"
    -- Beginner: Draw GTA-style text on screen.
    localValue1(workingValue13)
  else
    localValue1 = drawNativeText
    workingValue13 = "Locate the nearest ~y~bin~w~ and empty it"
    localValue1(workingValue13)
  end
  localValue1 = workingValue25
  if localValue1 then
    localValue1 = table
    localValue1 = localValue1.count
    workingValue13 = workingValue25
    -- Beginner: result below is count.
    localValue1 = localValue1(workingValue13)
    if localValue1 then
      goto continueAtStep21
    end
  end
  localValue1 = 0
  ::continueAtStep21::
  workingValue13 = "~y~BINS REMAINING"
  workingValue6 = workingValue13
  workingValue13 = tostring
  text5 = localValue1
  workingValue13 = workingValue13(text5)
  workingValue7 = workingValue13
  workingValue13 = CMG
  workingValue13 = workingValue13.setHudTimerBarProviderActive
  text5 = "businessCleanerJob"
  stateFlag11 = true
  workingValue13(text5, stateFlag11)
  workingValue13 = 0 == localValue1
  return workingValue13
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, workingValue13, text5, stateFlag11, workingValue27, number8, cmgOperation2, workingValue29
  localValue1 = nil
  workingValue6 = localValue1
  localValue1 = nil
  workingValue7 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  workingValue13 = "businessCleanerJob"
  text5 = false
  localValue1(workingValue13, text5)
  localValue1 = workingValue21
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue21
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.removeMarker
      workingValue29 = number8
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = workingValue25
  if localValue1 then
    localValue1 = pairs
    workingValue13 = workingValue25
    localValue1, workingValue13, text5, stateFlag11 = localValue1(workingValue13)
    for workingValue27, number8 in localValue1, workingValue13, text5, stateFlag11 do
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.removeArea
      workingValue29 = number8
      cmgOperation2(workingValue29)
    end
  end
  localValue1 = workingValue3
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeArea
    workingValue13 = workingValue3
    localValue1(workingValue13)
  end
  localValue1 = DeleteEntity
  workingValue13 = number10
  -- Beginner: Delete a GTA entity.
  localValue1(workingValue13)
  localValue1 = workingValue5
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeMarker
    workingValue13 = workingValue5
    localValue1(workingValue13)
  end
  localValue1 = nil
  workingValue5 = localValue1
  localValue1 = 0
  number10 = localValue1
  localValue1 = nil
  workingValue3 = localValue1
  localValue1 = false
  stateFlag14 = localValue1
  localValue1 = nil
  workingValue21 = localValue1
  localValue1 = nil
  workingValue25 = localValue1
  localValue1 = nil
  workingValue = localValue1
end
dataCollection3 = {}
dataCollection4 = {}
dataCollection4.init = text
dataCollection4.tick = workingValue8
dataCollection4.finish = workingValue9
dataCollection4.next = "surface"
dataCollection3.ground = dataCollection4
dataCollection4 = {}
dataCollection4.init = workingValue10
dataCollection4.tick = workingValue11
dataCollection4.finish = workingValue14
dataCollection4.next = "toilet"
dataCollection3.surface = dataCollection4
dataCollection4 = {}
dataCollection4.init = workingValue15
dataCollection4.tick = workingValue16
dataCollection4.finish = workingValue17
dataCollection4.next = "bin"
dataCollection3.toilet = dataCollection4
dataCollection4 = {}
dataCollection4.init = workingValue18
dataCollection4.tick = workingValue19
dataCollection4.finish = workingValue20
dataCollection4.next = "ground"
dataCollection3.bin = dataCollection4
dataCollection4 = CMG
dataCollection4 = dataCollection4.registerBusinessJob
text4 = "cleaner"
workingValue22 = cmgOperation
text6 = "ground"
workingValue23 = dataCollection3
workingValue24 = nil
dataCollection4(text4, workingValue22, text6, workingValue23, workingValue24)
