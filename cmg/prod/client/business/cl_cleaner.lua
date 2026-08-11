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
local workValue, workValue12, workValue21, workValue25, workValue26, flag12, numberValue9, workValue28, flag14, numberValue10, workValue3, workValue5, workValue6, workValue7, cmgCall, textValue, workValue8, workValue9, workValue10, workValue11, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, dataTable3, dataTable4, textValue4, workValue22, textValue6, workValue23, workValue24
workValue = nil
workValue12 = nil
workValue21 = nil
workValue25 = nil
workValue26 = nil
flag12 = false
numberValue9 = 0
workValue28 = nil
flag14 = false
numberValue10 = 0
workValue3 = nil
workValue5 = nil
workValue6 = nil
workValue7 = nil
cmgCall = CMG
cmgCall = cmgCall.registerHudTimerBarProvider
textValue = "businessCleanerJob"

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local workValue13, textValue5, flag11
  workValue13 = workValue6
  if workValue13 then
    workValue13 = arg1.push
    textValue5 = workValue6
    flag11 = workValue7
    workValue13(textValue5, flag11)
  end
end
cmgCall(textValue, workValue8)

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1) ===
function cmgCall(arg1)
  local workValue13
  workValue13 = arg1.jobMetadata
  workValue = workValue13
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, workValue13, textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2, numberValue6, numberValue7
  arg1 = {}
  workValue12 = arg1
  arg1 = {}
  workValue21 = arg1
  arg1 = {}
  workValue25 = arg1
  arg1 = assert
  workValue13 = workValue
  textValue5 = "initGround nil metadata"
  arg1(workValue13, textValue5)
  arg1 = false
  workValue13 = pairs
  textValue5 = workValue.groundPoints
  workValue13, textValue5, flag11, workValue27 = workValue13(textValue5)
  for numberValue8, cmgCall2 in workValue13, textValue5, flag11, workValue27 do
    workValue29 = workValue.groundModels
    workValue30 = workValue.groundModels
    workValue30 = #workValue30
    workValue30 = numberValue8 % workValue30
    workValue30 = workValue30 + 1
    workValue29 = workValue29[workValue30]
    workValue30 = CMG
    workValue30 = workValue30.loadModel
    workValue31 = workValue29
    -- Beginner: Request/load a GTA model before spawning or applying it.
    workValue30(workValue31)
    workValue30 = CreateObject
    workValue31 = workValue29
    workValue4 = cmgCall2.x
    mathHelper = cmgCall2.y
    numberValue3 = cmgCall2.z
    numberValue3 = numberValue3 - 1.0
    flag2 = false
    flag4 = false
    flag6 = false
    -- Beginner: result below is objectEntity.
    workValue30 = workValue30(workValue31, workValue4, mathHelper, numberValue3, flag2, flag4, flag6)
    workValue31 = SetEntityHeading
    workValue4 = workValue30
    mathHelper = math
    mathHelper = mathHelper.random
    numberValue3 = 1
    flag2 = 360
    mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2, numberValue6, numberValue7 = mathHelper(numberValue3, flag2)
    -- Beginner: Change the direction an entity is facing.
    workValue31(workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2, numberValue6, numberValue7)
    workValue31 = SetModelAsNoLongerNeeded
    workValue4 = workValue29
    workValue31(workValue4)
    workValue31 = table
    workValue31 = workValue31.insert
    workValue4 = workValue12
    mathHelper = workValue30
    workValue31(workValue4, mathHelper)
    workValue31 = tCMG
    workValue31 = workValue31.addMarker
    workValue4 = cmgCall2.x
    mathHelper = cmgCall2.y
    numberValue3 = cmgCall2.z
    numberValue3 = numberValue3 - 0.6
    flag2 = 0.2
    flag4 = 0.2
    flag6 = 0.2
    numberValue4 = 255
    dataTable = 255
    numberValue5 = 0
    dataTable2 = 150
    numberValue6 = 25.0
    numberValue7 = 0
    workValue31 = workValue31(workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2, numberValue6, numberValue7)
    workValue4 = table
    workValue4 = workValue4.insert
    mathHelper = workValue21
    numberValue3 = workValue31
    workValue4(mathHelper, numberValue3)
    workValue4 = "business_job_"
    mathHelper = tostring
    numberValue3 = numberValue8
    mathHelper = mathHelper(numberValue3)
    workValue4 = workValue4 .. mathHelper
    mathHelper = CMG
    mathHelper = mathHelper.createArea
    numberValue3 = workValue4
    flag2 = cmgCall2
    flag4 = 1.0
    flag6 = 1.5

    -- === HELPER FUNCTION (decompiler name: numberValue4; parameters: none) ===
    function numberValue4()
      local workValue2, textValue2
    end

    -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
    function dataTable()
      local workValue2, textValue2
    end

    -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: none) ===
    function numberValue5()
      local workValue2, textValue2, dataTable5, dataTable6, dataTable7, tableHelper, textValue7
      workValue2 = arg1
      if not workValue2 then
        workValue2 = workValue25
        if workValue2 then
          textValue2 = numberValue8
          workValue2 = workValue25
          workValue2 = workValue2[textValue2]
          if workValue2 then
            workValue2 = drawNativeNotification
            textValue2 = "Press ~INPUT_CONTEXT~ to pick up the trash"
            -- Beginner: Show a GTA-style notification/help prompt.
            workValue2(textValue2)
            workValue2 = IsControlJustPressed
            textValue2 = 0
            dataTable5 = 51
            workValue2 = workValue2(textValue2, dataTable5)
            if workValue2 then
              workValue2 = CMG
              workValue2 = workValue2.disableSittingOnChairThisFrame
              workValue2()
              workValue2 = tCMG
              workValue2 = workValue2.setCanAnim
              textValue2 = false
              workValue2(textValue2)
              workValue2 = true
              arg1 = workValue2
              workValue2 = tCMG
              workValue2 = workValue2.playAnim
              textValue2 = true
              dataTable5 = {}
              dataTable6 = {}
              dataTable7 = "pickup_object"
              tableHelper = "pickup_low"
              textValue7 = 1
              dataTable6[1] = dataTable7
              dataTable6[2] = tableHelper
              dataTable6[3] = textValue7
              dataTable5[1] = dataTable6
              dataTable6 = false
              workValue2(textValue2, dataTable5, dataTable6)
              workValue2 = Citizen
              workValue2 = workValue2.CreateThread

              -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
              function textValue2()
                local serverEventCall, textValue3
                serverEventCall = Citizen
                serverEventCall = serverEventCall.Wait
                textValue3 = 1500
                serverEventCall(textValue3)
                serverEventCall = TriggerServerEvent
                textValue3 = "bf3f551598"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                serverEventCall(textValue3)
                serverEventCall = DeleteEntity
                textValue3 = workValue30
                -- Beginner: Delete a GTA entity.
                serverEventCall(textValue3)
                serverEventCall = tCMG
                serverEventCall = serverEventCall.removeMarker
                textValue3 = workValue31
                serverEventCall(textValue3)
                serverEventCall = tCMG
                serverEventCall = serverEventCall.removeArea
                textValue3 = workValue4
                serverEventCall(textValue3)
                textValue3 = numberValue8
                serverEventCall = workValue25
                serverEventCall[textValue3] = nil
                serverEventCall = false
                arg1 = serverEventCall
                serverEventCall = tCMG
                serverEventCall = serverEventCall.setCanAnim
                textValue3 = true
                serverEventCall(textValue3)
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              workValue2(textValue2)
            end
          end
        end
      end
    end
    dataTable2 = {}
    -- Beginner: Create an interaction area around a world position.
    mathHelper(numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2)
    mathHelper = table
    mathHelper = mathHelper.insert
    numberValue3 = workValue25
    flag2 = workValue4
    mathHelper(numberValue3, flag2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, workValue13, textValue5, flag11
  arg1 = drawNativeText
  workValue13 = "Locate the ~y~trash~w~ and clean it up"
  -- Beginner: Draw GTA-style text on screen.
  arg1(workValue13)
  arg1 = workValue25
  if arg1 then
    arg1 = table
    arg1 = arg1.count
    workValue13 = workValue25
    -- Beginner: result below is count.
    arg1 = arg1(workValue13)
    if arg1 then
      goto flow_label_14
    end
  end
  arg1 = 0
  ::flow_label_14::
  workValue13 = "~y~TRASH REMAINING"
  workValue6 = workValue13
  workValue13 = tostring
  textValue5 = arg1
  workValue13 = workValue13(textValue5)
  workValue7 = workValue13
  workValue13 = CMG
  workValue13 = workValue13.setHudTimerBarProviderActive
  textValue5 = "businessCleanerJob"
  flag11 = true
  workValue13(textValue5, flag11)
  workValue13 = 0 == arg1
  return workValue13
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, workValue13, textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29
  arg1 = nil
  workValue6 = arg1
  arg1 = nil
  workValue7 = arg1
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  workValue13 = "businessCleanerJob"
  textValue5 = false
  arg1(workValue13, textValue5)
  arg1 = workValue12
  if arg1 then
    arg1 = pairs
    workValue13 = workValue12
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = DeleteEntity
      workValue29 = numberValue8
      -- Beginner: Delete a GTA entity.
      cmgCall2(workValue29)
    end
  end
  arg1 = workValue21
  if arg1 then
    arg1 = pairs
    workValue13 = workValue21
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.removeMarker
      workValue29 = numberValue8
      cmgCall2(workValue29)
    end
  end
  arg1 = workValue25
  if arg1 then
    arg1 = pairs
    workValue13 = workValue25
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.removeArea
      workValue29 = numberValue8
      cmgCall2(workValue29)
    end
  end
  arg1 = nil
  workValue12 = arg1
  arg1 = nil
  workValue21 = arg1
  arg1 = nil
  workValue25 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, workValue13, textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2
  arg1 = {}
  workValue21 = arg1
  arg1 = {}
  workValue25 = arg1
  arg1 = assert
  workValue13 = workValue
  textValue5 = "initSurface nil metadata"
  arg1(workValue13, textValue5)
  arg1 = false
  workValue13 = pairs
  textValue5 = workValue.surfacePoints
  workValue13, textValue5, flag11, workValue27 = workValue13(textValue5)
  for numberValue8, cmgCall2 in workValue13, textValue5, flag11, workValue27 do
    workValue29 = tCMG
    workValue29 = workValue29.addMarker
    workValue30 = cmgCall2.x
    workValue31 = cmgCall2.y
    workValue4 = cmgCall2.z
    workValue4 = workValue4 - 0.6
    mathHelper = 0.2
    numberValue3 = 0.2
    flag2 = 0.2
    flag4 = 255
    flag6 = 255
    numberValue4 = 0
    dataTable = 150
    numberValue5 = 25.0
    dataTable2 = 0
    workValue29 = workValue29(workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2)
    workValue30 = table
    workValue30 = workValue30.insert
    workValue31 = workValue21
    workValue4 = workValue29
    workValue30(workValue31, workValue4)
    workValue30 = "business_job_"
    workValue31 = tostring
    workValue4 = numberValue8
    workValue31 = workValue31(workValue4)
    workValue30 = workValue30 .. workValue31
    workValue31 = CMG
    workValue31 = workValue31.createArea
    workValue4 = workValue30
    mathHelper = cmgCall2
    numberValue3 = 2.0
    flag2 = 1.5

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local workValue2, textValue2
    end

    -- === HELPER FUNCTION (decompiler name: flag6; parameters: none) ===
    function flag6()
      local workValue2, textValue2
    end

    -- === HELPER FUNCTION (decompiler name: numberValue4; parameters: none) ===
    function numberValue4()
      local workValue2, textValue2, dataTable5, dataTable6, dataTable7, tableHelper, textValue7, flag13
      workValue2 = arg1
      if not workValue2 then
        workValue2 = workValue25
        if workValue2 then
          workValue2 = workValue25
          if workValue2 then
            textValue2 = numberValue8
            workValue2 = workValue25
            workValue2 = workValue2[textValue2]
            if workValue2 then
              workValue2 = drawNativeNotification
              textValue2 = "Press ~INPUT_CONTEXT~ to clean the table"
              -- Beginner: Show a GTA-style notification/help prompt.
              workValue2(textValue2)
              workValue2 = IsControlJustPressed
              textValue2 = 0
              dataTable5 = 51
              workValue2 = workValue2(textValue2, dataTable5)
              if workValue2 then
                workValue2 = CMG
                workValue2 = workValue2.disableSittingOnChairThisFrame
                workValue2()
                workValue2 = tCMG
                workValue2 = workValue2.setCanAnim
                textValue2 = false
                workValue2(textValue2)
                workValue2 = true
                arg1 = workValue2
                workValue2 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                workValue2 = workValue2()
                textValue2 = tCMG
                textValue2 = textValue2.playAnim
                dataTable5 = true
                dataTable6 = {}
                dataTable7 = {}
                tableHelper = "timetable@floyd@clean_kitchen@base"
                textValue7 = "base"
                flag13 = 1
                dataTable7[1] = tableHelper
                dataTable7[2] = textValue7
                dataTable7[3] = flag13
                dataTable6[1] = dataTable7
                dataTable7 = false
                textValue2(dataTable5, dataTable6, dataTable7)
                textValue2 = Citizen
                textValue2 = textValue2.CreateThread

                -- === HELPER FUNCTION (decompiler name: dataTable5; parameters: none) ===
                function dataTable5()
                  local serverEventCall, textValue3
                  serverEventCall = Citizen
                  serverEventCall = serverEventCall.Wait
                  textValue3 = 6000
                  serverEventCall(textValue3)
                  serverEventCall = ClearPedSecondaryTask
                  textValue3 = workValue2
                  serverEventCall(textValue3)
                  serverEventCall = ClearPedTasks
                  textValue3 = workValue2
                  serverEventCall(textValue3)
                  serverEventCall = TriggerServerEvent
                  textValue3 = "bf3f551598"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                  serverEventCall(textValue3)
                  serverEventCall = tCMG
                  serverEventCall = serverEventCall.removeMarker
                  textValue3 = workValue29
                  serverEventCall(textValue3)
                  serverEventCall = tCMG
                  serverEventCall = serverEventCall.removeArea
                  textValue3 = workValue30
                  serverEventCall(textValue3)
                  textValue3 = numberValue8
                  serverEventCall = workValue25
                  serverEventCall[textValue3] = nil
                  serverEventCall = false
                  arg1 = serverEventCall
                  serverEventCall = tCMG
                  serverEventCall = serverEventCall.setCanAnim
                  textValue3 = true
                  serverEventCall(textValue3)
                end
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                textValue2(dataTable5)
              end
            end
          end
        end
      end
    end
    dataTable = {}
    -- Beginner: Create an interaction area around a world position.
    workValue31(workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable)
    workValue31 = table
    workValue31 = workValue31.insert
    workValue4 = workValue25
    mathHelper = workValue30
    workValue31(workValue4, mathHelper)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, workValue13, textValue5, flag11
  arg1 = drawNativeText
  workValue13 = "Clean the dirty ~y~tables~w~ and prepare for customers"
  -- Beginner: Draw GTA-style text on screen.
  arg1(workValue13)
  arg1 = workValue25
  if arg1 then
    arg1 = table
    arg1 = arg1.count
    workValue13 = workValue25
    -- Beginner: result below is count.
    arg1 = arg1(workValue13)
    if arg1 then
      goto flow_label_14
    end
  end
  arg1 = 0
  ::flow_label_14::
  workValue13 = "~y~TABLES REMAINING"
  workValue6 = workValue13
  workValue13 = tostring
  textValue5 = arg1
  workValue13 = workValue13(textValue5)
  workValue7 = workValue13
  workValue13 = CMG
  workValue13 = workValue13.setHudTimerBarProviderActive
  textValue5 = "businessCleanerJob"
  flag11 = true
  workValue13(textValue5, flag11)
  workValue13 = 0 == arg1
  return workValue13
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, workValue13, textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29
  arg1 = nil
  workValue6 = arg1
  arg1 = nil
  workValue7 = arg1
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  workValue13 = "businessCleanerJob"
  textValue5 = false
  arg1(workValue13, textValue5)
  arg1 = workValue21
  if arg1 then
    arg1 = pairs
    workValue13 = workValue21
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.removeMarker
      workValue29 = numberValue8
      cmgCall2(workValue29)
    end
  end
  arg1 = workValue25
  if arg1 then
    arg1 = pairs
    workValue13 = workValue25
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.removeArea
      workValue29 = numberValue8
      cmgCall2(workValue29)
    end
  end
  arg1 = nil
  workValue21 = arg1
  arg1 = nil
  workValue25 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, workValue13
  arg1 = "floor"
  workValue26 = arg1
  arg1 = false
  flag12 = arg1
  arg1 = 1
  numberValue9 = arg1
  arg1 = workValue
  if arg1 then
    arg1 = workValue.toiletPoints
    workValue13 = numberValue9
    arg1 = arg1[workValue13]
    workValue28 = arg1
  end
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: none) ===
function workValue16()
  local arg1, workValue13, textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2
  arg1 = workValue26
  if "floor" == arg1 then
    arg1 = flag12
    if not arg1 then
      arg1 = {}
      workValue21 = arg1
      arg1 = {}
      workValue25 = arg1
      arg1 = assert
      workValue13 = workValue28
      textValue5 = "tickToilet nil metadata (floor)"
      arg1(workValue13, textValue5)
      arg1 = false
      workValue13 = pairs
      textValue5 = workValue28.liquidPoints
      workValue13, textValue5, flag11, workValue27 = workValue13(textValue5)
      for numberValue8, cmgCall2 in workValue13, textValue5, flag11, workValue27 do
        workValue29 = tCMG
        workValue29 = workValue29.addMarker
        workValue30 = cmgCall2.x
        workValue31 = cmgCall2.y
        workValue4 = cmgCall2.z
        workValue4 = workValue4 - 0.6
        mathHelper = 0.2
        numberValue3 = 0.2
        flag2 = 0.2
        flag4 = 255
        flag6 = 255
        numberValue4 = 0
        dataTable = 150
        numberValue5 = 25.0
        dataTable2 = 0
        workValue29 = workValue29(workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2)
        workValue30 = table
        workValue30 = workValue30.insert
        workValue31 = workValue21
        workValue4 = workValue29
        workValue30(workValue31, workValue4)
        workValue30 = "business_job_"
        workValue31 = tostring
        workValue4 = numberValue8
        workValue31 = workValue31(workValue4)
        workValue30 = workValue30 .. workValue31
        workValue31 = CMG
        workValue31 = workValue31.createArea
        workValue4 = workValue30
        mathHelper = cmgCall2
        numberValue3 = 1.0
        flag2 = 1.5

        -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
        function flag4()
          local workValue2, textValue2
        end

        -- === HELPER FUNCTION (decompiler name: flag6; parameters: none) ===
        function flag6()
          local workValue2, textValue2
        end

        -- === HELPER FUNCTION (decompiler name: numberValue4; parameters: none) ===
        function numberValue4()
          local workValue2, textValue2, dataTable5, dataTable6, dataTable7, tableHelper, textValue7, flag13, flag15, numberValue11, numberValue, numberValue2, flag, flag3, flag5, flag7, flag8, flag9, flag10
          workValue2 = arg1
          if not workValue2 then
            workValue2 = workValue25
            if workValue2 then
              textValue2 = numberValue8
              workValue2 = workValue25
              workValue2 = workValue2[textValue2]
              if workValue2 then
                workValue2 = drawNativeNotification
                textValue2 = "Press ~INPUT_CONTEXT~ to mop the floor"
                -- Beginner: Show a GTA-style notification/help prompt.
                workValue2(textValue2)
                workValue2 = IsControlJustPressed
                textValue2 = 0
                dataTable5 = 51
                workValue2 = workValue2(textValue2, dataTable5)
                if workValue2 then
                  workValue2 = CMG
                  workValue2 = workValue2.disableSittingOnChairThisFrame
                  workValue2()
                  workValue2 = tCMG
                  workValue2 = workValue2.setCanAnim
                  textValue2 = false
                  workValue2(textValue2)
                  workValue2 = true
                  arg1 = workValue2
                  workValue2 = tCMG
                  workValue2 = workValue2.playAnim
                  textValue2 = true
                  dataTable5 = {}
                  dataTable6 = {}
                  dataTable7 = "move_mop"
                  tableHelper = "idle_scrub_small_player"
                  textValue7 = 1
                  dataTable6[1] = dataTable7
                  dataTable6[2] = tableHelper
                  dataTable6[3] = textValue7
                  dataTable5[1] = dataTable6
                  dataTable6 = false
                  workValue2(textValue2, dataTable5, dataTable6)
                  workValue2 = CMG
                  workValue2 = workValue2.loadModel
                  textValue2 = -320848029
                  -- Beginner: Request/load a GTA model before spawning or applying it.
                  workValue2(textValue2)
                  workValue2 = CMG
                  workValue2 = workValue2.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  workValue2 = workValue2()
                  textValue2 = CMG
                  textValue2 = textValue2.requestEntitySpawn
                  dataTable5 = "business_cleaner_mop"
                  textValue2(dataTable5)
                  textValue2 = CreateObject
                  dataTable5 = -320848029
                  dataTable6 = workValue2.x
                  dataTable7 = workValue2.y
                  tableHelper = workValue2.z
                  textValue7 = true
                  flag13 = false
                  flag15 = false
                  -- Beginner: result below is objectEntity.
                  textValue2 = textValue2(dataTable5, dataTable6, dataTable7, tableHelper, textValue7, flag13, flag15)
                  dataTable5 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  dataTable5 = dataTable5()
                  dataTable6 = AttachEntityToEntity
                  dataTable7 = textValue2
                  tableHelper = dataTable5
                  textValue7 = GetPedBoneIndex
                  flag13 = dataTable5
                  flag15 = 28422
                  textValue7 = textValue7(flag13, flag15)
                  flag13 = 0.0
                  flag15 = 0.0
                  numberValue11 = 0.12
                  numberValue = 0.0
                  numberValue2 = 0.0
                  flag = 0.0
                  flag3 = true
                  flag5 = true
                  flag7 = false
                  flag8 = true
                  flag9 = 1
                  flag10 = true
                  -- Beginner: Attach one entity to another entity.
                  dataTable6(dataTable7, tableHelper, textValue7, flag13, flag15, numberValue11, numberValue, numberValue2, flag, flag3, flag5, flag7, flag8, flag9, flag10)
                  dataTable6 = SetModelAsNoLongerNeeded
                  dataTable7 = -320848029
                  dataTable6(dataTable7)
                  dataTable6 = Citizen
                  dataTable6 = dataTable6.CreateThread

                  -- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
                  function dataTable7()
                    local serverEventCall, textValue3
                    serverEventCall = Citizen
                    serverEventCall = serverEventCall.Wait
                    textValue3 = 4000
                    serverEventCall(textValue3)
                    serverEventCall = DeleteEntity
                    textValue3 = textValue2
                    -- Beginner: Delete a GTA entity.
                    serverEventCall(textValue3)
                    serverEventCall = TriggerServerEvent
                    textValue3 = "bf3f551598"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                    serverEventCall(textValue3)
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.removeMarker
                    textValue3 = workValue29
                    serverEventCall(textValue3)
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.removeArea
                    textValue3 = workValue30
                    serverEventCall(textValue3)
                    textValue3 = numberValue8
                    serverEventCall = workValue25
                    serverEventCall[textValue3] = nil
                    serverEventCall = false
                    arg1 = serverEventCall
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.setCanAnim
                    textValue3 = true
                    serverEventCall(textValue3)
                  end
                  -- Beginner: Start a separate FiveM thread so this code can run independently.
                  dataTable6(dataTable7)
                end
              end
            end
          end
        end
        dataTable = {}
        -- Beginner: Create an interaction area around a world position.
        workValue31(workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable)
        workValue31 = table
        workValue31 = workValue31.insert
        workValue4 = workValue25
        mathHelper = workValue30
        workValue31(workValue4, mathHelper)
      end
      workValue13 = true
      flag12 = workValue13
    end
    arg1 = drawNativeText
    workValue13 = "Mop the ~y~pee~w~ on the toilet floor"
    -- Beginner: Draw GTA-style text on screen.
    arg1(workValue13)
    arg1 = workValue25
    if arg1 then
      arg1 = table
      arg1 = arg1.count
      workValue13 = workValue25
      -- Beginner: result below is count.
      arg1 = arg1(workValue13)
    end
    if 0 == arg1 then
      arg1 = workValue21
      if arg1 then
        arg1 = pairs
        workValue13 = workValue21
        arg1, workValue13, textValue5, flag11 = arg1(workValue13)
        for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
          cmgCall2 = tCMG
          cmgCall2 = cmgCall2.removeMarker
          workValue29 = numberValue8
          cmgCall2(workValue29)
        end
      end
      arg1 = workValue25
      if arg1 then
        arg1 = pairs
        workValue13 = workValue25
        arg1, workValue13, textValue5, flag11 = arg1(workValue13)
        for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
          cmgCall2 = tCMG
          cmgCall2 = cmgCall2.removeArea
          workValue29 = numberValue8
          cmgCall2(workValue29)
        end
      end
      arg1 = nil
      workValue21 = arg1
      arg1 = nil
      workValue25 = arg1
      arg1 = "scrub"
      workValue26 = arg1
      arg1 = false
      flag12 = arg1
    end
  else
    arg1 = workValue26
    if "scrub" == arg1 then
      arg1 = flag12
      if not arg1 then
        arg1 = {}
        workValue21 = arg1
        arg1 = {}
        workValue25 = arg1
        arg1 = assert
        workValue13 = workValue28
        textValue5 = "tickToilet nil metadata (scrub)"
        arg1(workValue13, textValue5)
        arg1 = false
        workValue13 = tCMG
        workValue13 = workValue13.addMarker
        textValue5 = workValue28.scrub
        textValue5 = textValue5.x
        flag11 = workValue28.scrub
        flag11 = flag11.y
        workValue27 = workValue28.scrub
        workValue27 = workValue27.z
        workValue27 = workValue27 - 0.6
        numberValue8 = 0.2
        cmgCall2 = 0.2
        workValue29 = 0.2
        workValue30 = 255
        workValue31 = 255
        workValue4 = 0
        mathHelper = 150
        numberValue3 = 25.0
        flag2 = 0
        workValue13 = workValue13(textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2)
        textValue5 = table
        textValue5 = textValue5.insert
        flag11 = workValue21
        workValue27 = workValue13
        textValue5(flag11, workValue27)
        textValue5 = "business_job_"
        flag11 = tostring
        workValue27 = 1
        flag11 = flag11(workValue27)
        textValue5 = textValue5 .. flag11
        flag11 = CMG
        flag11 = flag11.createArea
        workValue27 = textValue5
        numberValue8 = workValue28.scrub
        numberValue8 = numberValue8.xyz
        cmgCall2 = 1.0
        workValue29 = 1.5

        -- === HELPER FUNCTION (decompiler name: workValue30; parameters: none) ===
        function workValue30()
          local workValue2, textValue2
        end

        -- === HELPER FUNCTION (decompiler name: workValue31; parameters: none) ===
        function workValue31()
          local workValue2, textValue2
        end

        -- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
        function workValue4()
          local workValue2, textValue2, dataTable5, dataTable6, dataTable7, tableHelper, textValue7
          workValue2 = arg1
          if not workValue2 then
            workValue2 = workValue25
            if workValue2 then
              workValue2 = workValue25
              workValue2 = workValue2[1]
              if workValue2 then
                workValue2 = drawNativeNotification
                textValue2 = "Press ~INPUT_CONTEXT~ to plunge the toilet"
                -- Beginner: Show a GTA-style notification/help prompt.
                workValue2(textValue2)
                workValue2 = IsControlJustPressed
                textValue2 = 0
                dataTable5 = 51
                workValue2 = workValue2(textValue2, dataTable5)
                if workValue2 then
                  workValue2 = CMG
                  workValue2 = workValue2.disableSittingOnChairThisFrame
                  workValue2()
                  workValue2 = tCMG
                  workValue2 = workValue2.setCanAnim
                  textValue2 = false
                  workValue2(textValue2)
                  workValue2 = true
                  arg1 = workValue2
                  workValue2 = tCMG
                  workValue2 = workValue2.playAnim
                  textValue2 = true
                  dataTable5 = {}
                  dataTable6 = {}
                  dataTable7 = "switch@trevor@on_toilet"
                  tableHelper = "trev_on_toilet_loop"
                  textValue7 = 1
                  dataTable6[1] = dataTable7
                  dataTable6[2] = tableHelper
                  dataTable6[3] = textValue7
                  dataTable5[1] = dataTable6
                  dataTable6 = false
                  workValue2(textValue2, dataTable5, dataTable6)
                  workValue2 = Citizen
                  workValue2 = workValue2.CreateThread

                  -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
                  function textValue2()
                    local serverEventCall, textValue3
                    serverEventCall = Citizen
                    serverEventCall = serverEventCall.Wait
                    textValue3 = 7500
                    serverEventCall(textValue3)
                    serverEventCall = TriggerServerEvent
                    textValue3 = "bf3f551598"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                    serverEventCall(textValue3)
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.removeMarker
                    textValue3 = workValue13
                    serverEventCall(textValue3)
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.removeArea
                    textValue3 = textValue5
                    serverEventCall(textValue3)
                    serverEventCall = workValue25
                    serverEventCall[1] = nil
                    serverEventCall = false
                    arg1 = serverEventCall
                    serverEventCall = tCMG
                    serverEventCall = serverEventCall.setCanAnim
                    textValue3 = true
                    serverEventCall(textValue3)
                  end
                  -- Beginner: Start a separate FiveM thread so this code can run independently.
                  workValue2(textValue2)
                end
              end
            end
          end
        end
        mathHelper = {}
        -- Beginner: Create an interaction area around a world position.
        flag11(workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper)
        flag11 = table
        flag11 = flag11.insert
        workValue27 = workValue25
        numberValue8 = textValue5
        flag11(workValue27, numberValue8)
        flag11 = true
        flag12 = flag11
      end
      arg1 = drawNativeText
      workValue13 = "Plunge the ~y~toilet~w~ to remove blockages"
      -- Beginner: Draw GTA-style text on screen.
      arg1(workValue13)
      arg1 = workValue25
      if arg1 then
        arg1 = table
        arg1 = arg1.count
        workValue13 = workValue25
        -- Beginner: result below is count.
        arg1 = arg1(workValue13)
      end
      if 0 == arg1 then
        arg1 = workValue21
        if arg1 then
          arg1 = pairs
          workValue13 = workValue21
          arg1, workValue13, textValue5, flag11 = arg1(workValue13)
          for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
            cmgCall2 = tCMG
            cmgCall2 = cmgCall2.removeMarker
            workValue29 = numberValue8
            cmgCall2(workValue29)
          end
        end
        arg1 = workValue25
        if arg1 then
          arg1 = pairs
          workValue13 = workValue25
          arg1, workValue13, textValue5, flag11 = arg1(workValue13)
          for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
            cmgCall2 = tCMG
            cmgCall2 = cmgCall2.removeArea
            workValue29 = numberValue8
            cmgCall2(workValue29)
          end
        end
        arg1 = nil
        workValue21 = arg1
        arg1 = nil
        workValue25 = arg1
        arg1 = "hands"
        workValue26 = arg1
        arg1 = false
        flag12 = arg1
      end
    else
      arg1 = workValue26
      if "hands" == arg1 then
        arg1 = flag12
        if not arg1 then
          arg1 = {}
          workValue21 = arg1
          arg1 = {}
          workValue25 = arg1
          arg1 = assert
          workValue13 = workValue28
          textValue5 = "tickToilet nil metadata (hands)"
          arg1(workValue13, textValue5)
          arg1 = false
          workValue13 = tCMG
          workValue13 = workValue13.addMarker
          textValue5 = workValue28.hands
          textValue5 = textValue5.x
          flag11 = workValue28.hands
          flag11 = flag11.y
          workValue27 = workValue28.hands
          workValue27 = workValue27.z
          workValue27 = workValue27 - 0.6
          numberValue8 = 0.2
          cmgCall2 = 0.2
          workValue29 = 0.2
          workValue30 = 255
          workValue31 = 255
          workValue4 = 0
          mathHelper = 150
          numberValue3 = 25.0
          flag2 = 0
          workValue13 = workValue13(textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2)
          textValue5 = table
          textValue5 = textValue5.insert
          flag11 = workValue21
          workValue27 = workValue13
          textValue5(flag11, workValue27)
          textValue5 = "business_job_"
          flag11 = tostring
          workValue27 = 1
          flag11 = flag11(workValue27)
          textValue5 = textValue5 .. flag11
          flag11 = CMG
          flag11 = flag11.createArea
          workValue27 = textValue5
          numberValue8 = workValue28.hands
          numberValue8 = numberValue8.xyz
          cmgCall2 = 1.0
          workValue29 = 1.5

          -- === HELPER FUNCTION (decompiler name: workValue30; parameters: none) ===
          function workValue30()
            local workValue2, textValue2
          end

          -- === HELPER FUNCTION (decompiler name: workValue31; parameters: none) ===
          function workValue31()
            local workValue2, textValue2
          end

          -- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
          function workValue4()
            local workValue2, textValue2, dataTable5, dataTable6, dataTable7, tableHelper, textValue7
            workValue2 = arg1
            if not workValue2 then
              workValue2 = workValue25
              if workValue2 then
                workValue2 = workValue25
                workValue2 = workValue2[1]
                if workValue2 then
                  workValue2 = drawNativeNotification
                  textValue2 = "Press ~INPUT_CONTEXT~ to wash your hands"
                  -- Beginner: Show a GTA-style notification/help prompt.
                  workValue2(textValue2)
                  workValue2 = IsControlJustPressed
                  textValue2 = 0
                  dataTable5 = 51
                  workValue2 = workValue2(textValue2, dataTable5)
                  if workValue2 then
                    workValue2 = CMG
                    workValue2 = workValue2.disableSittingOnChairThisFrame
                    workValue2()
                    workValue2 = tCMG
                    workValue2 = workValue2.setCanAnim
                    textValue2 = false
                    workValue2(textValue2)
                    workValue2 = true
                    arg1 = workValue2
                    workValue2 = tCMG
                    workValue2 = workValue2.playAnim
                    textValue2 = true
                    dataTable5 = {}
                    dataTable6 = {}
                    dataTable7 = "switch@michael@wash_face"
                    tableHelper = "loop_michael"
                    textValue7 = 1
                    dataTable6[1] = dataTable7
                    dataTable6[2] = tableHelper
                    dataTable6[3] = textValue7
                    dataTable5[1] = dataTable6
                    dataTable6 = false
                    workValue2(textValue2, dataTable5, dataTable6)
                    workValue2 = Citizen
                    workValue2 = workValue2.CreateThread

                    -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
                    function textValue2()
                      local serverEventCall, textValue3
                      serverEventCall = Citizen
                      serverEventCall = serverEventCall.Wait
                      textValue3 = 3800
                      serverEventCall(textValue3)
                      serverEventCall = TriggerServerEvent
                      textValue3 = "bf3f551598"
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                      serverEventCall(textValue3)
                      serverEventCall = tCMG
                      serverEventCall = serverEventCall.removeMarker
                      textValue3 = workValue13
                      serverEventCall(textValue3)
                      serverEventCall = tCMG
                      serverEventCall = serverEventCall.removeArea
                      textValue3 = textValue5
                      serverEventCall(textValue3)
                      serverEventCall = workValue25
                      serverEventCall[1] = nil
                      serverEventCall = false
                      arg1 = serverEventCall
                      serverEventCall = tCMG
                      serverEventCall = serverEventCall.setCanAnim
                      textValue3 = true
                      serverEventCall(textValue3)
                    end
                    -- Beginner: Start a separate FiveM thread so this code can run independently.
                    workValue2(textValue2)
                  end
                end
              end
            end
          end
          mathHelper = {}
          -- Beginner: Create an interaction area around a world position.
          flag11(workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper)
          flag11 = table
          flag11 = flag11.insert
          workValue27 = workValue25
          numberValue8 = textValue5
          flag11(workValue27, numberValue8)
          flag11 = true
          flag12 = flag11
        end
        arg1 = drawNativeText
        workValue13 = "Wash your hands and face at the ~y~sink~w~ thoroughly"
        -- Beginner: Draw GTA-style text on screen.
        arg1(workValue13)
        arg1 = workValue25
        if arg1 then
          arg1 = table
          arg1 = arg1.count
          workValue13 = workValue25
          -- Beginner: result below is count.
          arg1 = arg1(workValue13)
          if 0 ~= arg1 then
            goto flow_label_380
          end
        end
        arg1 = workValue21
        if arg1 then
          arg1 = pairs
          workValue13 = workValue21
          arg1, workValue13, textValue5, flag11 = arg1(workValue13)
          for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
            cmgCall2 = tCMG
            cmgCall2 = cmgCall2.removeMarker
            workValue29 = numberValue8
            cmgCall2(workValue29)
          end
        end
        arg1 = workValue25
        if arg1 then
          arg1 = pairs
          workValue13 = workValue25
          arg1, workValue13, textValue5, flag11 = arg1(workValue13)
          for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
            cmgCall2 = tCMG
            cmgCall2 = cmgCall2.removeArea
            workValue29 = numberValue8
            cmgCall2(workValue29)
          end
        end
        arg1 = nil
        workValue21 = arg1
        arg1 = nil
        workValue25 = arg1
        arg1 = workValue
        if arg1 then
          arg1 = numberValue9
          workValue13 = table
          workValue13 = workValue13.count
          textValue5 = workValue.toiletPoints
          -- Beginner: result below is count.
          workValue13 = workValue13(textValue5)
          if arg1 == workValue13 then
            arg1 = true
            return arg1
        end
        else
          arg1 = "floor"
          workValue26 = arg1
          arg1 = false
          flag12 = arg1
          arg1 = numberValue9
          arg1 = arg1 + 1
          numberValue9 = arg1
          arg1 = workValue
          if arg1 then
            arg1 = workValue.toiletPoints
            workValue13 = numberValue9
            arg1 = arg1[workValue13]
            workValue28 = arg1
          end
        end
      end
    end
  end
  ::flow_label_380::
  arg1 = false
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, workValue13, textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29
  arg1 = workValue21
  if arg1 then
    arg1 = pairs
    workValue13 = workValue21
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.removeMarker
      workValue29 = numberValue8
      cmgCall2(workValue29)
    end
  end
  arg1 = workValue25
  if arg1 then
    arg1 = pairs
    workValue13 = workValue25
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.removeArea
      workValue29 = numberValue8
      cmgCall2(workValue29)
    end
  end
  arg1 = nil
  workValue21 = arg1
  arg1 = nil
  workValue25 = arg1
  arg1 = 0
  numberValue9 = arg1
  arg1 = nil
  workValue28 = arg1
  arg1 = false
  flag12 = arg1
  arg1 = nil
  workValue26 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: none) ===
function workValue18()
  local arg1, workValue13, textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2
  arg1 = {}
  workValue21 = arg1
  arg1 = {}
  workValue25 = arg1
  arg1 = false
  flag14 = arg1
  arg1 = 0
  numberValue10 = arg1
  arg1 = assert
  workValue13 = workValue
  textValue5 = "initBin nil metadata"
  arg1(workValue13, textValue5)
  arg1 = false
  workValue13 = pairs
  textValue5 = workValue.binPoints
  workValue13, textValue5, flag11, workValue27 = workValue13(textValue5)
  for numberValue8, cmgCall2 in workValue13, textValue5, flag11, workValue27 do
    workValue29 = tCMG
    workValue29 = workValue29.addMarker
    workValue30 = cmgCall2.x
    workValue31 = cmgCall2.y
    workValue4 = cmgCall2.z
    workValue4 = workValue4 - 1.0
    mathHelper = 0.4
    numberValue3 = 0.4
    flag2 = 0.4
    flag4 = 255
    flag6 = 255
    numberValue4 = 0
    dataTable = 150
    numberValue5 = 25.0
    dataTable2 = 1
    workValue29 = workValue29(workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable, numberValue5, dataTable2)
    workValue30 = table
    workValue30 = workValue30.insert
    workValue31 = workValue21
    workValue4 = workValue29
    workValue30(workValue31, workValue4)
    workValue30 = "business_job_"
    workValue31 = tostring
    workValue4 = numberValue8
    workValue31 = workValue31(workValue4)
    workValue30 = workValue30 .. workValue31
    workValue31 = CMG
    workValue31 = workValue31.createArea
    workValue4 = workValue30
    mathHelper = cmgCall2.xyz
    numberValue3 = 1.0
    flag2 = 1.5

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local workValue2, textValue2
    end

    -- === HELPER FUNCTION (decompiler name: flag6; parameters: none) ===
    function flag6()
      local workValue2, textValue2
    end

    -- === HELPER FUNCTION (decompiler name: numberValue4; parameters: none) ===
    function numberValue4()
      local workValue2, textValue2, dataTable5, dataTable6, dataTable7, tableHelper, textValue7, flag13, flag15, numberValue11, numberValue, numberValue2, flag, flag3, flag5, flag7, flag8, flag9
      workValue2 = arg1
      if not workValue2 then
        workValue2 = workValue25
        if workValue2 then
          workValue2 = workValue25
          if workValue2 then
            textValue2 = numberValue8
            workValue2 = workValue25
            workValue2 = workValue2[textValue2]
            if workValue2 then
              workValue2 = flag14
              if not workValue2 then
                workValue2 = drawNativeNotification
                textValue2 = "Press ~INPUT_CONTEXT~ to replace the bin ban"
                -- Beginner: Show a GTA-style notification/help prompt.
                workValue2(textValue2)
                workValue2 = IsControlJustPressed
                textValue2 = 0
                dataTable5 = 51
                workValue2 = workValue2(textValue2, dataTable5)
                if workValue2 then
                  workValue2 = CMG
                  workValue2 = workValue2.disableSittingOnChairThisFrame
                  workValue2()
                  workValue2 = tCMG
                  workValue2 = workValue2.setCanAnim
                  textValue2 = false
                  workValue2(textValue2)
                  workValue2 = true
                  arg1 = workValue2
                  workValue2 = tCMG
                  workValue2 = workValue2.playAnim
                  textValue2 = true
                  dataTable5 = {}
                  dataTable6 = {}
                  dataTable7 = "anim@heists@narcotics@trash"
                  tableHelper = "walk"
                  textValue7 = 1
                  dataTable6[1] = dataTable7
                  dataTable6[2] = tableHelper
                  dataTable6[3] = textValue7
                  dataTable5[1] = dataTable6
                  dataTable6 = true
                  workValue2(textValue2, dataTable5, dataTable6)
                  workValue2 = CMG
                  workValue2 = workValue2.loadModel
                  textValue2 = 1138881502
                  -- Beginner: Request/load a GTA model before spawning or applying it.
                  workValue2(textValue2)
                  workValue2 = CMG
                  workValue2 = workValue2.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  workValue2 = workValue2()
                  textValue2 = CMG
                  textValue2 = textValue2.requestEntitySpawn
                  dataTable5 = "business_cleaner_binbag"
                  textValue2(dataTable5)
                  textValue2 = CreateObject
                  dataTable5 = 1138881502
                  dataTable6 = workValue2.x
                  dataTable7 = workValue2.y
                  tableHelper = workValue2.z
                  textValue7 = true
                  flag13 = false
                  flag15 = false
                  -- Beginner: result below is objectEntity.
                  textValue2 = textValue2(dataTable5, dataTable6, dataTable7, tableHelper, textValue7, flag13, flag15)
                  numberValue10 = textValue2
                  textValue2 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  textValue2 = textValue2()
                  dataTable5 = AttachEntityToEntity
                  dataTable6 = numberValue10
                  dataTable7 = textValue2
                  tableHelper = GetPedBoneIndex
                  textValue7 = textValue2
                  flag13 = 57005
                  tableHelper = tableHelper(textValue7, flag13)
                  textValue7 = 0.12
                  flag13 = 0.0
                  flag15 = 0.0
                  numberValue11 = 25.0
                  numberValue = 270.0
                  numberValue2 = 180.0
                  flag = true
                  flag3 = true
                  flag5 = false
                  flag7 = true
                  flag8 = 1
                  flag9 = true
                  -- Beginner: Attach one entity to another entity.
                  dataTable5(dataTable6, dataTable7, tableHelper, textValue7, flag13, flag15, numberValue11, numberValue, numberValue2, flag, flag3, flag5, flag7, flag8, flag9)
                  dataTable5 = SetModelAsNoLongerNeeded
                  dataTable6 = 1138881502
                  dataTable5(dataTable6)
                  dataTable5 = TriggerServerEvent
                  dataTable6 = "bf3f551598"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
                  dataTable5(dataTable6)
                  dataTable5 = true
                  flag14 = dataTable5
                  dataTable5 = tCMG
                  dataTable5 = dataTable5.removeMarker
                  dataTable6 = workValue29
                  dataTable5(dataTable6)
                  dataTable5 = tCMG
                  dataTable5 = dataTable5.removeArea
                  dataTable6 = workValue30
                  dataTable5(dataTable6)
                  dataTable6 = numberValue8
                  dataTable5 = workValue25
                  dataTable5[dataTable6] = nil
                  dataTable5 = false
                  arg1 = dataTable5
                  dataTable5 = tCMG
                  dataTable5 = dataTable5.setCanAnim
                  dataTable6 = true
                  dataTable5(dataTable6)
                  dataTable5 = notify
                  dataTable6 = "~g~Picked up bin bag!"
                  -- Beginner: Show a notification to the player.
                  dataTable5(dataTable6)
                end
              end
            end
          end
        end
      end
    end
    dataTable = {}
    -- Beginner: Create an interaction area around a world position.
    workValue31(workValue4, mathHelper, numberValue3, flag2, flag4, flag6, numberValue4, dataTable)
    workValue31 = table
    workValue31 = workValue31.insert
    workValue4 = workValue25
    mathHelper = workValue30
    workValue31(workValue4, mathHelper)
  end
  workValue13 = CMG
  workValue13 = workValue13.createArea
  textValue5 = "business_job_bin"
  flag11 = workValue.binDeliveryPoint
  workValue27 = 1.0
  numberValue8 = 1.5

  -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
  function cmgCall2()
    local workValue2, textValue2
  end

  -- === HELPER FUNCTION (decompiler name: workValue29; parameters: none) ===
  function workValue29()
    local workValue2, textValue2
  end

  -- === HELPER FUNCTION (decompiler name: workValue30; parameters: none) ===
  function workValue30()
    local workValue2, textValue2, dataTable5
    workValue2 = flag14
    if workValue2 then
      workValue2 = drawNativeNotification
      textValue2 = "Press ~INPUT_CONTEXT~ to dispose of the bin bag"
      -- Beginner: Show a GTA-style notification/help prompt.
      workValue2(textValue2)
      workValue2 = IsControlJustPressed
      textValue2 = 0
      dataTable5 = 51
      workValue2 = workValue2(textValue2, dataTable5)
      if workValue2 then
        workValue2 = CMG
        workValue2 = workValue2.disableSittingOnChairThisFrame
        workValue2()
        workValue2 = tCMG
        workValue2 = workValue2.setCanAnim
        textValue2 = false
        workValue2(textValue2)
        workValue2 = true
        arg1 = workValue2
        workValue2 = DeleteEntity
        textValue2 = numberValue10
        -- Beginner: Delete a GTA entity.
        workValue2(textValue2)
        workValue2 = tCMG
        workValue2 = workValue2.stopAnim
        textValue2 = false
        workValue2(textValue2)
        workValue2 = notify
        textValue2 = "~r~Thrown away bin bag."
        -- Beginner: Show a notification to the player.
        workValue2(textValue2)
        workValue2 = TriggerServerEvent
        textValue2 = "bf3f551598"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
        workValue2(textValue2)
        workValue2 = false
        flag14 = workValue2
        workValue2 = false
        arg1 = workValue2
        workValue2 = tCMG
        workValue2 = workValue2.setCanAnim
        textValue2 = true
        workValue2(textValue2)
      end
    end
  end
  workValue31 = {}
  workValue13 = workValue13(textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31)
  workValue3 = workValue13
  workValue13 = tCMG
  workValue13 = workValue13.addMarker
  textValue5 = workValue.binDeliveryPoint
  textValue5 = textValue5.x
  flag11 = workValue.binDeliveryPoint
  flag11 = flag11.y
  workValue27 = workValue.binDeliveryPoint
  workValue27 = workValue27.z
  workValue27 = workValue27 - 1.0
  numberValue8 = 0.4
  cmgCall2 = 0.4
  workValue29 = 0.4
  workValue30 = 255
  workValue31 = 255
  workValue4 = 0
  mathHelper = 150
  numberValue3 = 25.0
  flag2 = 1
  workValue13 = workValue13(textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29, workValue30, workValue31, workValue4, mathHelper, numberValue3, flag2)
  workValue5 = workValue13
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
function workValue19()
  local arg1, workValue13, textValue5, flag11
  arg1 = flag14
  if arg1 then
    arg1 = drawNativeText
    workValue13 = "Take the bin bag ~y~outside~w~ to the tip"
    -- Beginner: Draw GTA-style text on screen.
    arg1(workValue13)
  else
    arg1 = drawNativeText
    workValue13 = "Locate the nearest ~y~bin~w~ and empty it"
    arg1(workValue13)
  end
  arg1 = workValue25
  if arg1 then
    arg1 = table
    arg1 = arg1.count
    workValue13 = workValue25
    -- Beginner: result below is count.
    arg1 = arg1(workValue13)
    if arg1 then
      goto flow_label_21
    end
  end
  arg1 = 0
  ::flow_label_21::
  workValue13 = "~y~BINS REMAINING"
  workValue6 = workValue13
  workValue13 = tostring
  textValue5 = arg1
  workValue13 = workValue13(textValue5)
  workValue7 = workValue13
  workValue13 = CMG
  workValue13 = workValue13.setHudTimerBarProviderActive
  textValue5 = "businessCleanerJob"
  flag11 = true
  workValue13(textValue5, flag11)
  workValue13 = 0 == arg1
  return workValue13
end

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: none) ===
function workValue20()
  local arg1, workValue13, textValue5, flag11, workValue27, numberValue8, cmgCall2, workValue29
  arg1 = nil
  workValue6 = arg1
  arg1 = nil
  workValue7 = arg1
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  workValue13 = "businessCleanerJob"
  textValue5 = false
  arg1(workValue13, textValue5)
  arg1 = workValue21
  if arg1 then
    arg1 = pairs
    workValue13 = workValue21
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.removeMarker
      workValue29 = numberValue8
      cmgCall2(workValue29)
    end
  end
  arg1 = workValue25
  if arg1 then
    arg1 = pairs
    workValue13 = workValue25
    arg1, workValue13, textValue5, flag11 = arg1(workValue13)
    for workValue27, numberValue8 in arg1, workValue13, textValue5, flag11 do
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.removeArea
      workValue29 = numberValue8
      cmgCall2(workValue29)
    end
  end
  arg1 = workValue3
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.removeArea
    workValue13 = workValue3
    arg1(workValue13)
  end
  arg1 = DeleteEntity
  workValue13 = numberValue10
  -- Beginner: Delete a GTA entity.
  arg1(workValue13)
  arg1 = workValue5
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.removeMarker
    workValue13 = workValue5
    arg1(workValue13)
  end
  arg1 = nil
  workValue5 = arg1
  arg1 = 0
  numberValue10 = arg1
  arg1 = nil
  workValue3 = arg1
  arg1 = false
  flag14 = arg1
  arg1 = nil
  workValue21 = arg1
  arg1 = nil
  workValue25 = arg1
  arg1 = nil
  workValue = arg1
end
dataTable3 = {}
dataTable4 = {}
dataTable4.init = textValue
dataTable4.tick = workValue8
dataTable4.finish = workValue9
dataTable4.next = "surface"
dataTable3.ground = dataTable4
dataTable4 = {}
dataTable4.init = workValue10
dataTable4.tick = workValue11
dataTable4.finish = workValue14
dataTable4.next = "toilet"
dataTable3.surface = dataTable4
dataTable4 = {}
dataTable4.init = workValue15
dataTable4.tick = workValue16
dataTable4.finish = workValue17
dataTable4.next = "bin"
dataTable3.toilet = dataTable4
dataTable4 = {}
dataTable4.init = workValue18
dataTable4.tick = workValue19
dataTable4.finish = workValue20
dataTable4.next = "ground"
dataTable3.bin = dataTable4
dataTable4 = CMG
dataTable4 = dataTable4.registerBusinessJob
textValue4 = "cleaner"
workValue22 = cmgCall
textValue6 = "ground"
workValue23 = dataTable3
workValue24 = nil
dataTable4(textValue4, workValue22, textValue6, workValue23, workValue24)
