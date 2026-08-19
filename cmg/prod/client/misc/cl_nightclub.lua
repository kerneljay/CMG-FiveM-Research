--[[
    LEVEL 1 BEGINNER GUIDE — Nightclub
    =======================================

    File: cmg/prod/client/misc/cl_nightclub.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Nightclub feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 22
      * Background threads: 0
      * Always-running loops: 3
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
local createVector3, createVector32, stateFlag5, dataCollection2, dataCollection3, dataCollection4, text13, dataCollection5, createVector33, text14, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text11, text12
createVector3 = vector3
createVector32 = 987.5367
stateFlag5 = 79.6912
dataCollection2 = 80.9905
createVector3 = createVector3(createVector32, stateFlag5, dataCollection2)
createVector32 = vector3
stateFlag5 = 1578.3608
dataCollection2 = 253.3105
dataCollection3 = -46.0051
createVector32 = createVector32(stateFlag5, dataCollection2, dataCollection3)
stateFlag5 = false
dataCollection2 = {}
dataCollection3 = {}
dataCollection4 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
text13 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
dataCollection3[1] = dataCollection4
dataCollection3[2] = text13
dataCollection4 = {}
text13 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
dataCollection5 = {}
createVector33 = "EntitySet_DJ_Lighting"
text14 = "int01_ba_bar_content"
text = "dj_01_lights_02"
text2 = "int01_ba_booze_0"
text3 = "int01_ba_dj_moodyman"
text4 = "int01_ba_dry_ice"
text5 = "int01_ba_equipment_upgrade"
text6 = "int01_ba_lightgrid_01"
text7 = "int01_ba_lights_screen"
text8 = "int01_ba_security_upgrade"
text9 = "int01_ba_style02_podium"
dataCollection5[1] = createVector33
dataCollection5[2] = text14
dataCollection5[3] = text
dataCollection5[4] = text2
dataCollection5[5] = text3
dataCollection5[6] = text4
dataCollection5[7] = text5
dataCollection5[8] = text6
dataCollection5[9] = text7
dataCollection5[10] = text8
dataCollection5[11] = text9
dataCollection4[text13] = dataCollection5
text13 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
dataCollection5 = {}
createVector33 = "Int01_ba_clubname_0"
text14 = "Int01_ba_Style03"
text = "Int01_ba_style03_podium"
text2 = "Int01_ba_equipment_setup"
text3 = "Int01_ba_equipment_upgrade"
text4 = "Int01_ba_security_upgrade"
text5 = "Int01_ba_dj04"
text6 = "Int01_ba_trad_lights"
text7 = "Int01_ba_bar_content"
text8 = "Int01_ba_booze_03"
text9 = "Int01_ba_trophy03"
text10 = "Int01_ba_lightgrid_01"
text11 = "Int01_ba_dry_ice"
text12 = "DJ_04_Lights_03"
dataCollection5[1] = createVector33
dataCollection5[2] = text14
dataCollection5[3] = text
dataCollection5[4] = text2
dataCollection5[5] = text3
dataCollection5[6] = text4
dataCollection5[7] = text5
dataCollection5[8] = text6
dataCollection5[9] = text7
dataCollection5[10] = text8
dataCollection5[11] = text9
dataCollection5[12] = text10
dataCollection5[13] = text11
dataCollection5[14] = text12
dataCollection4[text13] = dataCollection5
text13 = {}
dataCollection5 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
createVector33 = vector3
text14 = 1550.0
text = 250.0
text2 = -48.0
createVector33 = createVector33(text14, text, text2)
text13[dataCollection5] = createVector33
dataCollection5 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
createVector33 = vector3
text14 = -1602.932
text = -3019.1
text2 = -79.99
createVector33 = createVector33(text14, text, text2)
text13[dataCollection5] = createVector33
dataCollection5 = {}
createVector33 = {}
text14 = vector3
text = 3.7219
text2 = 3.4921
text3 = 5.721
text14 = text14(text, text2, text3)
text = vector3
text2 = 3.7219
text3 = 2.1514
text4 = 5.4099
text = text(text2, text3, text4)
text2 = vector3
text3 = 3.7219
text4 = 0.7985
text5 = 5.721
text2 = text2(text3, text4, text5)
text3 = vector3
text4 = 3.7219
text5 = -1.0028
text6 = 5.721
text3 = text3(text4, text5, text6)
text4 = vector3
text5 = 3.7219
text6 = -2.3244
text7 = 5.4099
text4 = text4(text5, text6, text7)
text5 = vector3
text6 = 3.7219
text7 = -3.7085
text8 = 5.721
text5, text6, text7, text8, text9, text10, text11, text12 = text5(text6, text7, text8)
createVector33[1] = text14
createVector33[2] = text
createVector33[3] = text2
createVector33[4] = text3
createVector33[5] = text4
createVector33[6] = text5
createVector33[7] = text6
createVector33[8] = text7
createVector33[9] = text8
createVector33[10] = text9
createVector33[11] = text10
createVector33[12] = text11
createVector33[13] = text12
dataCollection5[1] = createVector33
createVector33 = {}
text14 = vector3
text = 5.8927
text2 = 3.4921
text3 = 5.721
text14 = text14(text, text2, text3)
text = vector3
text2 = 5.8927
text3 = 2.1514
text4 = 5.4099
text = text(text2, text3, text4)
text2 = vector3
text3 = 5.8927
text4 = 0.7985
text5 = 5.721
text2 = text2(text3, text4, text5)
text3 = vector3
text4 = 5.8927
text5 = -1.0028
text6 = 5.721
text3 = text3(text4, text5, text6)
text4 = vector3
text5 = 5.8927
text6 = -2.3244
text7 = 5.4099
text4 = text4(text5, text6, text7)
text5 = vector3
text6 = 5.8927
text7 = -3.7085
text8 = 5.721
text5, text6, text7, text8, text9, text10, text11, text12 = text5(text6, text7, text8)
createVector33[1] = text14
createVector33[2] = text
createVector33[3] = text2
createVector33[4] = text3
createVector33[5] = text4
createVector33[6] = text5
createVector33[7] = text6
createVector33[8] = text7
createVector33[9] = text8
createVector33[10] = text9
createVector33[11] = text10
createVector33[12] = text11
createVector33[13] = text12
dataCollection5[2] = createVector33
createVector33 = {}
text14 = vector3
text = 8.0635
text2 = 3.4921
text3 = 5.721
text14 = text14(text, text2, text3)
text = vector3
text2 = 8.0635
text3 = 2.1514
text4 = 5.4099
text = text(text2, text3, text4)
text2 = vector3
text3 = 8.0635
text4 = 0.7985
text5 = 5.721
text2 = text2(text3, text4, text5)
text3 = vector3
text4 = 8.0635
text5 = -1.0028
text6 = 5.721
text3 = text3(text4, text5, text6)
text4 = vector3
text5 = 8.0635
text6 = -2.3244
text7 = 5.4099
text4 = text4(text5, text6, text7)
text5 = vector3
text6 = 8.0635
text7 = -3.7085
text8 = 5.721
text5, text6, text7, text8, text9, text10, text11, text12 = text5(text6, text7, text8)
createVector33[1] = text14
createVector33[2] = text
createVector33[3] = text2
createVector33[4] = text3
createVector33[5] = text4
createVector33[6] = text5
createVector33[7] = text6
createVector33[8] = text7
createVector33[9] = text8
createVector33[10] = text9
createVector33[11] = text10
createVector33[12] = text11
createVector33[13] = text12
dataCollection5[3] = createVector33
createVector33 = {}
text14 = vector3
text = 10.2343
text2 = 3.4921
text3 = 5.721
text14 = text14(text, text2, text3)
text = vector3
text2 = 10.2343
text3 = 2.1514
text4 = 5.4099
text = text(text2, text3, text4)
text2 = vector3
text3 = 10.2343
text4 = 0.7985
text5 = 5.721
text2 = text2(text3, text4, text5)
text3 = vector3
text4 = 10.2343
text5 = -1.0028
text6 = 5.721
text3 = text3(text4, text5, text6)
text4 = vector3
text5 = 10.2343
text6 = -2.3244
text7 = 5.4099
text4 = text4(text5, text6, text7)
text5 = vector3
text6 = 10.2343
text7 = -3.7085
text8 = 5.721
text5, text6, text7, text8, text9, text10, text11, text12 = text5(text6, text7, text8)
createVector33[1] = text14
createVector33[2] = text
createVector33[3] = text2
createVector33[4] = text3
createVector33[5] = text4
createVector33[6] = text5
createVector33[7] = text6
createVector33[8] = text7
createVector33[9] = text8
createVector33[10] = text9
createVector33[11] = text10
createVector33[12] = text11
createVector33[13] = text12
dataCollection5[4] = createVector33
createVector33 = {}
text14 = vector3
text = 12.4051
text2 = 3.4921
text3 = 5.721
text14 = text14(text, text2, text3)
text = vector3
text2 = 12.4051
text3 = 2.1514
text4 = 5.4099
text = text(text2, text3, text4)
text2 = vector3
text3 = 12.4051
text4 = 0.7985
text5 = 5.721
text2 = text2(text3, text4, text5)
text3 = vector3
text4 = 12.4051
text5 = -1.0028
text6 = 5.721
text3 = text3(text4, text5, text6)
text4 = vector3
text5 = 12.4051
text6 = -2.3244
text7 = 5.4099
text4 = text4(text5, text6, text7)
text5 = vector3
text6 = 12.4051
text7 = -3.7085
text8 = 5.721
text5, text6, text7, text8, text9, text10, text11, text12 = text5(text6, text7, text8)
createVector33[1] = text14
createVector33[2] = text
createVector33[3] = text2
createVector33[4] = text3
createVector33[5] = text4
createVector33[6] = text5
createVector33[7] = text6
createVector33[8] = text7
createVector33[9] = text8
createVector33[10] = text9
createVector33[11] = text10
createVector33[12] = text11
createVector33[13] = text12
dataCollection5[5] = createVector33
createVector33 = {}
text14 = {}

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2, stateFlag8, number15, number, number3, number4, dataCollection, workingValue, workingValue2, workingValue3, stateFlag, number6, stateFlag2, stateFlag3, stateFlag4
  localValue1 = true
  stateFlag5 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = "BA_PROP_CLUB_EMIS_RIG_10"
  localValue1 = localValue1(localValue2)
  localValue2 = pairs
  number8 = dataCollection5
  localValue2, number8, iterator2, workingValue5 = localValue2(number8)
  for cmgOperation, stateFlag6 in localValue2, number8, iterator2, workingValue5 do
    backgroundThread2 = pairs
    stateFlag8 = stateFlag6
    backgroundThread2, stateFlag8, number15, number = backgroundThread2(stateFlag8)
    for number3, number4 in backgroundThread2, stateFlag8, number15, number do
      dataCollection = GetObjectOffsetFromCoords
      workingValue = number4.x
      workingValue2 = number4.y
      workingValue3 = number4.z
      stateFlag = 0
      number6 = 1550.0
      stateFlag2 = 250.0
      stateFlag3 = -50.0
      dataCollection = dataCollection(workingValue, workingValue2, workingValue3, stateFlag, number6, stateFlag2, stateFlag3)
      workingValue = CreateObjectNoOffset
      workingValue2 = localValue1
      workingValue3 = dataCollection.x
      stateFlag = dataCollection.y
      number6 = dataCollection.z
      stateFlag2 = false
      stateFlag3 = false
      stateFlag4 = false
      -- Beginner: result below is objectEntity.
      workingValue = workingValue(workingValue2, workingValue3, stateFlag, number6, stateFlag2, stateFlag3, stateFlag4)
      workingValue2 = SetObjectLightColor
      workingValue3 = workingValue
      stateFlag = true
      number6 = 141
      stateFlag2 = 20
      stateFlag3 = 178
      workingValue2(workingValue3, stateFlag, number6, stateFlag2, stateFlag3)
      workingValue2 = createVector33
      workingValue2 = #workingValue2
      workingValue3 = workingValue2 + 1
      workingValue2 = createVector33
      workingValue2[workingValue3] = workingValue
    end
  end
  localValue2 = SetModelAsNoLongerNeeded
  number8 = localValue1
  localValue2(number8)
  localValue2 = {}
  number8 = 1
  iterator2 = pairs
  workingValue5 = createVector33
  iterator2, workingValue5, cmgOperation, stateFlag6 = iterator2(workingValue5)
  for backgroundThread2, stateFlag8 in iterator2, workingValue5, cmgOperation, stateFlag6 do
    localValue2[number8] = stateFlag8
    number8 = number8 + 1
  end

  -- === HELPER FUNCTION: iterator2(localValue12) ===
  function iterator2(localValue12)
    local localValue22, localValue3, localValue4, workingValue6
    localValue22 = #localValue12
    localValue3 = 1
    while localValue22 > localValue3 do
      localValue4 = localValue12[localValue22]
      workingValue6 = localValue12[localValue3]
      localValue12[localValue22] = workingValue6
      localValue12[localValue3] = localValue4
      localValue3 = localValue3 + 1
      localValue22 = localValue22 - 1
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue12) ===
  function workingValue5(localValue12)
    local localValue22, localValue3
    localValue22 = Citizen
    localValue22 = localValue22.CreateThread

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local iterator, number7, number9, workingValue4, waitCall, number10, workingValue7, stateFlag7
      iterator = 0
      number7 = 64
      number9 = 1
      for workingValue4 = iterator, number7, number9 do
        waitCall = SetEntityAlpha
        number10 = localValue12
        workingValue7 = number8
        workingValue7 = workingValue7 * 4
        stateFlag7 = false
        waitCall(number10, workingValue7, stateFlag7)
        waitCall = Citizen
        waitCall = waitCall.Wait
        number10 = 0
        waitCall(number10)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue22(localValue3)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue12) ===
  function cmgOperation(localValue12)
    local localValue22, localValue3
    localValue22 = Citizen
    localValue22 = localValue22.CreateThread

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local iterator, number7, number9, workingValue4, waitCall, number10, workingValue7, stateFlag7
      iterator = 64
      number7 = 0
      number9 = -1
      for workingValue4 = iterator, number7, number9 do
        waitCall = SetEntityAlpha
        number10 = localValue12
        workingValue7 = number8
        workingValue7 = workingValue7 * 4
        stateFlag7 = false
        waitCall(number10, workingValue7, stateFlag7)
        waitCall = Citizen
        waitCall = waitCall.Wait
        number10 = 0
        waitCall(number10)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue22(localValue3)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: localValue12, localValue22, localValue3, localValue4) ===
  function stateFlag6(localValue12, localValue22, localValue3, localValue4)
    local workingValue6, iterator3, number11, number12, number13, number16, number2, backgroundThread, number5
    while true do
      workingValue6 = stateFlag5
      if workingValue6 then
        workingValue6 = localValue12
        iterator3 = pairs
        number11 = workingValue6
        iterator3, number11, number12, number13 = iterator3(number11)
        for number16, number2 in iterator3, number11, number12, number13 do
          backgroundThread = Citizen
          backgroundThread = backgroundThread.CreateThread

          -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
          function number5()
            local iterator, number7, number9, workingValue4, waitCall, number10, workingValue7, stateFlag7, number14, stateFlag9
            iterator = pairs
            number7 = number2
            iterator, number7, number9, workingValue4 = iterator(number7)
            for waitCall, number10 in iterator, number7, number9, workingValue4 do
              workingValue7 = localValue22
              if "hard" == workingValue7 then
                workingValue7 = ResetEntityAlpha
                stateFlag7 = localValue2
                stateFlag7 = stateFlag7[number10]
                workingValue7(stateFlag7)
              end
              workingValue7 = localValue22
              if "fade" == workingValue7 then
                workingValue7 = workingValue5
                stateFlag7 = localValue2
                stateFlag7 = stateFlag7[number10]
                workingValue7(stateFlag7)
              end
            end
            iterator = Citizen
            iterator = iterator.Wait
            number7 = 150
            iterator(number7)
            iterator = pairs
            number7 = number2
            iterator, number7, number9, workingValue4 = iterator(number7)
            for waitCall, number10 in iterator, number7, number9, workingValue4 do
              workingValue7 = localValue22
              if "hard" == workingValue7 then
                workingValue7 = SetEntityAlpha
                stateFlag7 = localValue2
                stateFlag7 = stateFlag7[number10]
                number14 = 255
                stateFlag9 = false
                workingValue7(stateFlag7, number14, stateFlag9)
              end
              workingValue7 = localValue22
              if "fade" == workingValue7 then
                workingValue7 = cmgOperation
                stateFlag7 = localValue2
                stateFlag7 = stateFlag7[number10]
                workingValue7(stateFlag7)
              end
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          backgroundThread(number5)
          backgroundThread = Citizen
          backgroundThread = backgroundThread.Wait
          number5 = localValue4 or number5
          if not localValue4 then
            number5 = 200
          end
          backgroundThread(number5)
        end
        if localValue3 then
          iterator3 = iterator2
          number11 = workingValue6
          iterator3 = iterator3(number11)
          workingValue6 = iterator3
        end
      end
      workingValue6 = Citizen
      workingValue6 = workingValue6.Wait
      iterator3 = 0
      workingValue6(iterator3)
    end
  end
  backgroundThread2 = Citizen
  backgroundThread2 = backgroundThread2.CreateThread

  -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
  function stateFlag8()
    local localValue12, localValue22, localValue3, localValue4, workingValue6, iterator3, number11, number12, number13, number16, number2, backgroundThread
    localValue12 = {}
    localValue22 = {}
    localValue3 = 6
    localValue22[1] = localValue3
    localValue3 = {}
    localValue4 = 5
    workingValue6 = 12
    localValue3[1] = localValue4
    localValue3[2] = workingValue6
    localValue4 = {}
    workingValue6 = 18
    iterator3 = 11
    number11 = 4
    localValue4[1] = workingValue6
    localValue4[2] = iterator3
    localValue4[3] = number11
    workingValue6 = {}
    iterator3 = 3
    number11 = 10
    number12 = 17
    number13 = 24
    workingValue6[1] = iterator3
    workingValue6[2] = number11
    workingValue6[3] = number12
    workingValue6[4] = number13
    iterator3 = {}
    number11 = 30
    number12 = 23
    number13 = 16
    number16 = 9
    number2 = 2
    iterator3[1] = number11
    iterator3[2] = number12
    iterator3[3] = number13
    iterator3[4] = number16
    iterator3[5] = number2
    number11 = {}
    number12 = 1
    number13 = 8
    number16 = 15
    number2 = 22
    backgroundThread = 29
    number11[1] = number12
    number11[2] = number13
    number11[3] = number16
    number11[4] = number2
    number11[5] = backgroundThread
    number12 = {}
    number13 = 28
    number16 = 21
    number2 = 14
    backgroundThread = 7
    number12[1] = number13
    number12[2] = number16
    number12[3] = number2
    number12[4] = backgroundThread
    number13 = {}
    number16 = 13
    number2 = 20
    backgroundThread = 27
    number13[1] = number16
    number13[2] = number2
    number13[3] = backgroundThread
    number16 = {}
    number2 = 19
    backgroundThread = 26
    number16[1] = number2
    number16[2] = backgroundThread
    number2 = {}
    backgroundThread = 25
    number2[1] = backgroundThread
    localValue12[1] = localValue22
    localValue12[2] = localValue3
    localValue12[3] = localValue4
    localValue12[4] = workingValue6
    localValue12[5] = iterator3
    localValue12[6] = number11
    localValue12[7] = number12
    localValue12[8] = number13
    localValue12[9] = number16
    localValue12[10] = number2
    localValue22 = stateFlag6
    localValue3 = localValue12
    localValue4 = "fade"
    workingValue6 = true
    iterator3 = 200
    localValue22(localValue3, localValue4, workingValue6, iterator3)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  backgroundThread2(stateFlag8)
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2
  localValue1 = false
  stateFlag5 = localValue1
  localValue1 = DeleteEntity
  localValue2 = dataCollection2.Bouncer
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = pairs
  localValue2 = createVector33
  localValue1, localValue2, number8, iterator2 = localValue1(localValue2)
  for workingValue5, cmgOperation in localValue1, localValue2, number8, iterator2 do
    stateFlag6 = DeleteEntity
    backgroundThread2 = cmgOperation
    stateFlag6(backgroundThread2)
  end
  localValue1 = pairs
  localValue2 = text14
  localValue1, localValue2, number8, iterator2 = localValue1(localValue2)
  for workingValue5, cmgOperation in localValue1, localValue2, number8, iterator2 do
    stateFlag6 = DeleteEntity
    backgroundThread2 = cmgOperation
    -- Beginner: Delete a GTA entity.
    stateFlag6(backgroundThread2)
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2, stateFlag8
  localValue1 = drawNativeNotification
  localValue2 = "Press ~INPUT_CONTEXT~ to enter the Diamond Casino Nightclub"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
  localValue1 = IsControlJustPressed
  localValue2 = 1
  number8 = 51
  localValue1 = localValue1(localValue2, number8)
  if localValue1 then
    localValue1 = DoScreenFadeOut
    localValue2 = 1000
    localValue1(localValue2)
    while true do
      localValue1 = IsScreenFadedOut
      localValue1 = localValue1()
      if localValue1 then
        break
      end
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 1.0
      localValue1(localValue2)
    end
    localValue1 = text
    localValue1()
    localValue1 = SetEntityCoords
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    number8 = createVector32.x
    iterator2 = createVector32.y
    workingValue5 = createVector32.z
    cmgOperation = false
    stateFlag6 = false
    backgroundThread2 = false
    stateFlag8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue1(localValue2, number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2, stateFlag8)
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 200
    localValue1(localValue2)
    localValue1 = DoScreenFadeIn
    localValue2 = 1000
    localValue1(localValue2)
  end
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2, stateFlag8
  localValue1 = drawNativeNotification
  localValue2 = "Press ~INPUT_CONTEXT~ to exit the Diamond Casino Nightclub"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
  localValue1 = IsControlJustPressed
  localValue2 = 1
  number8 = 51
  localValue1 = localValue1(localValue2, number8)
  if localValue1 then
    localValue1 = DoScreenFadeOut
    localValue2 = 1000
    localValue1(localValue2)
    while true do
      localValue1 = IsScreenFadedOut
      localValue1 = localValue1()
      if localValue1 then
        break
      end
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 1.0
      localValue1(localValue2)
    end
    localValue1 = text2
    localValue1()
    localValue1 = SetEntityCoords
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    number8 = createVector3.x
    iterator2 = createVector3.y
    workingValue5 = createVector3.z
    cmgOperation = false
    stateFlag6 = false
    backgroundThread2 = false
    stateFlag8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue1(localValue2, number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2, stateFlag8)
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 200
    localValue1(localValue2)
    localValue1 = DoScreenFadeIn
    localValue2 = 1000
    localValue1(localValue2)
  end
end
text5 = AddEventHandler
text6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2) ===
function text7(localValue1, localValue2)
  local number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2, stateFlag8, number15, number, number3, number4, dataCollection, workingValue, workingValue2, workingValue3
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
    function number8()
      local localValue12, localValue22
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: iterator2() ===
    function iterator2()
      local localValue12, localValue22
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
    function workingValue5()
      local localValue12, localValue22
      localValue12 = text3
      localValue12()
    end
    cmgOperation = CMG
    cmgOperation = cmgOperation.createArea
    stateFlag6 = "nightclub_entrance"
    backgroundThread2 = createVector3
    stateFlag8 = 1.0
    number15 = 6
    number = number8
    number3 = iterator2
    number4 = workingValue5
    dataCollection = {}
    -- Beginner: Create an interaction area around a world position.
    cmgOperation(stateFlag6, backgroundThread2, stateFlag8, number15, number, number3, number4, dataCollection)
    cmgOperation = CMG
    cmgOperation = cmgOperation.createArea
    stateFlag6 = "nightclub_entrance"
    backgroundThread2 = vector3
    stateFlag8 = 950.79626464844
    number15 = 45.225772857666
    number = 81.000747680664
    backgroundThread2 = backgroundThread2(stateFlag8, number15, number)
    stateFlag8 = 1.0
    number15 = 6
    number = number8
    number3 = iterator2
    number4 = workingValue5
    dataCollection = {}
    cmgOperation(stateFlag6, backgroundThread2, stateFlag8, number15, number, number3, number4, dataCollection)

    -- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
    function cmgOperation()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
    function stateFlag6()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: backgroundThread2; parameters: none) ===
    function backgroundThread2()
      local localValue12, localValue22
      localValue12 = text4
      localValue12()
    end
    stateFlag8 = CMG
    stateFlag8 = stateFlag8.createArea
    number15 = "nightclub_exit"
    number = createVector32
    number3 = 3.0
    number4 = 6
    dataCollection = cmgOperation
    workingValue = stateFlag6
    workingValue2 = backgroundThread2
    workingValue3 = {}
    -- Beginner: Create an interaction area around a world position.
    stateFlag8(number15, number, number3, number4, dataCollection, workingValue, workingValue2, workingValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
text5(text6, text7)
text5 = Citizen
text5 = text5.CreateThread

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2, stateFlag8, number15, number, number3, number4, dataCollection, workingValue, workingValue2, workingValue3
  localValue1 = tCMG
  localValue1 = localValue1.addBlip
  localValue2 = 987.6535
  number8 = 80.3114
  iterator2 = 80.9905
  workingValue5 = 136
  cmgOperation = 0
  stateFlag6 = "The Diamond Casino NightClub"
  backgroundThread2 = 0.5
  stateFlag8 = false
  -- Beginner: Create a minimap blip.
  localValue1(localValue2, number8, iterator2, workingValue5, cmgOperation, stateFlag6, backgroundThread2, stateFlag8)
  localValue1 = pairs
  localValue2 = dataCollection3
  localValue1, localValue2, number8, iterator2 = localValue1(localValue2)
  for workingValue5, cmgOperation in localValue1, localValue2, number8, iterator2 do
    stateFlag6 = IsIplActive
    backgroundThread2 = cmgOperation
    stateFlag6 = stateFlag6(backgroundThread2)
    if not stateFlag6 then
      stateFlag6 = RequestIpl
      backgroundThread2 = cmgOperation
      stateFlag6(backgroundThread2)
    end
    stateFlag6 = dataCollection4
    stateFlag6 = stateFlag6[cmgOperation]
    if stateFlag6 then
      stateFlag6 = text13
      stateFlag6 = stateFlag6[cmgOperation]
      if stateFlag6 then
        stateFlag6 = IsIplActive
        backgroundThread2 = cmgOperation
        stateFlag6 = stateFlag6(backgroundThread2)
        if stateFlag6 then
          stateFlag6 = text13
          stateFlag6 = stateFlag6[cmgOperation]
          backgroundThread2 = GetInteriorAtCoords
          stateFlag8 = stateFlag6.x
          number15 = stateFlag6.y
          number = stateFlag6.z
          -- Beginner: result below is interiorId.
          backgroundThread2 = backgroundThread2(stateFlag8, number15, number)
          stateFlag8 = IsValidInterior
          number15 = backgroundThread2
          stateFlag8 = stateFlag8(number15)
          if stateFlag8 then
            stateFlag8 = pairs
            number15 = dataCollection4
            number15 = number15[cmgOperation]
            stateFlag8, number15, number, number3 = stateFlag8(number15)
            for number4, dataCollection in stateFlag8, number15, number, number3 do
              workingValue = ActivateInteriorEntitySet
              workingValue2 = backgroundThread2
              workingValue3 = dataCollection
              workingValue(workingValue2, workingValue3)
            end
            stateFlag8 = RefreshInterior
            number15 = backgroundThread2
            stateFlag8(number15)
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text5(text6)
text5 = AddEventHandler
text6 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 ~= localValue1 then
    return
  end
  localValue2 = text2
  localValue2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
text5(text6, text7)
text5 = AddEventHandler
text6 = "onResourceStart"
-- Beginner: this function runs when client event "onResourceStart" fires.

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, number8
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 ~= localValue1 then
    return
  end
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  number8 = 1000
  localValue2(number8)
  localValue2 = GetInteriorFromEntity
  number8 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number8 = number8()
  -- Beginner: result below is interiorId.
  localValue2 = localValue2(number8)
  if 281089 == localValue2 then
    localValue2 = text
    localValue2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStart".
text5(text6, text7)
