--[[
    Beginner Guide: cl_nightclub.lua
    ================================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Nightclub
    ==========================

    File: cmg/prod/client/misc/cl_nightclub.lua
    Purpose: This file contains general gameplay utility.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * Press ~INPUT_CONTEXT~ to enter the Diamond Casino Nightclub
      * Press ~INPUT_CONTEXT~ to exit the Diamond Casino Nightclub

]]
local vector3Builder, vector3Builder2, flag5, dataTable2, dataTable3, dataTable4, textValue13, dataTable5, vector3Builder3, textValue14, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12
vector3Builder = vector3
vector3Builder2 = 987.5367
flag5 = 79.6912
dataTable2 = 80.9905
vector3Builder = vector3Builder(vector3Builder2, flag5, dataTable2)
vector3Builder2 = vector3
flag5 = 1578.3608
dataTable2 = 253.3105
dataTable3 = -46.0051
vector3Builder2 = vector3Builder2(flag5, dataTable2, dataTable3)
flag5 = false
dataTable2 = {}
dataTable3 = {}
dataTable4 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
textValue13 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
dataTable3[1] = dataTable4
dataTable3[2] = textValue13
dataTable4 = {}
textValue13 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
dataTable5 = {}
vector3Builder3 = "EntitySet_DJ_Lighting"
textValue14 = "int01_ba_bar_content"
textValue = "dj_01_lights_02"
textValue2 = "int01_ba_booze_0"
textValue3 = "int01_ba_dj_moodyman"
textValue4 = "int01_ba_dry_ice"
textValue5 = "int01_ba_equipment_upgrade"
textValue6 = "int01_ba_lightgrid_01"
textValue7 = "int01_ba_lights_screen"
textValue8 = "int01_ba_security_upgrade"
textValue9 = "int01_ba_style02_podium"
dataTable5[1] = vector3Builder3
dataTable5[2] = textValue14
dataTable5[3] = textValue
dataTable5[4] = textValue2
dataTable5[5] = textValue3
dataTable5[6] = textValue4
dataTable5[7] = textValue5
dataTable5[8] = textValue6
dataTable5[9] = textValue7
dataTable5[10] = textValue8
dataTable5[11] = textValue9
dataTable4[textValue13] = dataTable5
textValue13 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
dataTable5 = {}
vector3Builder3 = "Int01_ba_clubname_0"
textValue14 = "Int01_ba_Style03"
textValue = "Int01_ba_style03_podium"
textValue2 = "Int01_ba_equipment_setup"
textValue3 = "Int01_ba_equipment_upgrade"
textValue4 = "Int01_ba_security_upgrade"
textValue5 = "Int01_ba_dj04"
textValue6 = "Int01_ba_trad_lights"
textValue7 = "Int01_ba_bar_content"
textValue8 = "Int01_ba_booze_03"
textValue9 = "Int01_ba_trophy03"
textValue10 = "Int01_ba_lightgrid_01"
textValue11 = "Int01_ba_dry_ice"
textValue12 = "DJ_04_Lights_03"
dataTable5[1] = vector3Builder3
dataTable5[2] = textValue14
dataTable5[3] = textValue
dataTable5[4] = textValue2
dataTable5[5] = textValue3
dataTable5[6] = textValue4
dataTable5[7] = textValue5
dataTable5[8] = textValue6
dataTable5[9] = textValue7
dataTable5[10] = textValue8
dataTable5[11] = textValue9
dataTable5[12] = textValue10
dataTable5[13] = textValue11
dataTable5[14] = textValue12
dataTable4[textValue13] = dataTable5
textValue13 = {}
dataTable5 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
vector3Builder3 = vector3
textValue14 = 1550.0
textValue = 250.0
textValue2 = -48.0
vector3Builder3 = vector3Builder3(textValue14, textValue, textValue2)
textValue13[dataTable5] = vector3Builder3
dataTable5 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
vector3Builder3 = vector3
textValue14 = -1602.932
textValue = -3019.1
textValue2 = -79.99
vector3Builder3 = vector3Builder3(textValue14, textValue, textValue2)
textValue13[dataTable5] = vector3Builder3
dataTable5 = {}
vector3Builder3 = {}
textValue14 = vector3
textValue = 3.7219
textValue2 = 3.4921
textValue3 = 5.721
textValue14 = textValue14(textValue, textValue2, textValue3)
textValue = vector3
textValue2 = 3.7219
textValue3 = 2.1514
textValue4 = 5.4099
textValue = textValue(textValue2, textValue3, textValue4)
textValue2 = vector3
textValue3 = 3.7219
textValue4 = 0.7985
textValue5 = 5.721
textValue2 = textValue2(textValue3, textValue4, textValue5)
textValue3 = vector3
textValue4 = 3.7219
textValue5 = -1.0028
textValue6 = 5.721
textValue3 = textValue3(textValue4, textValue5, textValue6)
textValue4 = vector3
textValue5 = 3.7219
textValue6 = -2.3244
textValue7 = 5.4099
textValue4 = textValue4(textValue5, textValue6, textValue7)
textValue5 = vector3
textValue6 = 3.7219
textValue7 = -3.7085
textValue8 = 5.721
textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12 = textValue5(textValue6, textValue7, textValue8)
vector3Builder3[1] = textValue14
vector3Builder3[2] = textValue
vector3Builder3[3] = textValue2
vector3Builder3[4] = textValue3
vector3Builder3[5] = textValue4
vector3Builder3[6] = textValue5
vector3Builder3[7] = textValue6
vector3Builder3[8] = textValue7
vector3Builder3[9] = textValue8
vector3Builder3[10] = textValue9
vector3Builder3[11] = textValue10
vector3Builder3[12] = textValue11
vector3Builder3[13] = textValue12
dataTable5[1] = vector3Builder3
vector3Builder3 = {}
textValue14 = vector3
textValue = 5.8927
textValue2 = 3.4921
textValue3 = 5.721
textValue14 = textValue14(textValue, textValue2, textValue3)
textValue = vector3
textValue2 = 5.8927
textValue3 = 2.1514
textValue4 = 5.4099
textValue = textValue(textValue2, textValue3, textValue4)
textValue2 = vector3
textValue3 = 5.8927
textValue4 = 0.7985
textValue5 = 5.721
textValue2 = textValue2(textValue3, textValue4, textValue5)
textValue3 = vector3
textValue4 = 5.8927
textValue5 = -1.0028
textValue6 = 5.721
textValue3 = textValue3(textValue4, textValue5, textValue6)
textValue4 = vector3
textValue5 = 5.8927
textValue6 = -2.3244
textValue7 = 5.4099
textValue4 = textValue4(textValue5, textValue6, textValue7)
textValue5 = vector3
textValue6 = 5.8927
textValue7 = -3.7085
textValue8 = 5.721
textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12 = textValue5(textValue6, textValue7, textValue8)
vector3Builder3[1] = textValue14
vector3Builder3[2] = textValue
vector3Builder3[3] = textValue2
vector3Builder3[4] = textValue3
vector3Builder3[5] = textValue4
vector3Builder3[6] = textValue5
vector3Builder3[7] = textValue6
vector3Builder3[8] = textValue7
vector3Builder3[9] = textValue8
vector3Builder3[10] = textValue9
vector3Builder3[11] = textValue10
vector3Builder3[12] = textValue11
vector3Builder3[13] = textValue12
dataTable5[2] = vector3Builder3
vector3Builder3 = {}
textValue14 = vector3
textValue = 8.0635
textValue2 = 3.4921
textValue3 = 5.721
textValue14 = textValue14(textValue, textValue2, textValue3)
textValue = vector3
textValue2 = 8.0635
textValue3 = 2.1514
textValue4 = 5.4099
textValue = textValue(textValue2, textValue3, textValue4)
textValue2 = vector3
textValue3 = 8.0635
textValue4 = 0.7985
textValue5 = 5.721
textValue2 = textValue2(textValue3, textValue4, textValue5)
textValue3 = vector3
textValue4 = 8.0635
textValue5 = -1.0028
textValue6 = 5.721
textValue3 = textValue3(textValue4, textValue5, textValue6)
textValue4 = vector3
textValue5 = 8.0635
textValue6 = -2.3244
textValue7 = 5.4099
textValue4 = textValue4(textValue5, textValue6, textValue7)
textValue5 = vector3
textValue6 = 8.0635
textValue7 = -3.7085
textValue8 = 5.721
textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12 = textValue5(textValue6, textValue7, textValue8)
vector3Builder3[1] = textValue14
vector3Builder3[2] = textValue
vector3Builder3[3] = textValue2
vector3Builder3[4] = textValue3
vector3Builder3[5] = textValue4
vector3Builder3[6] = textValue5
vector3Builder3[7] = textValue6
vector3Builder3[8] = textValue7
vector3Builder3[9] = textValue8
vector3Builder3[10] = textValue9
vector3Builder3[11] = textValue10
vector3Builder3[12] = textValue11
vector3Builder3[13] = textValue12
dataTable5[3] = vector3Builder3
vector3Builder3 = {}
textValue14 = vector3
textValue = 10.2343
textValue2 = 3.4921
textValue3 = 5.721
textValue14 = textValue14(textValue, textValue2, textValue3)
textValue = vector3
textValue2 = 10.2343
textValue3 = 2.1514
textValue4 = 5.4099
textValue = textValue(textValue2, textValue3, textValue4)
textValue2 = vector3
textValue3 = 10.2343
textValue4 = 0.7985
textValue5 = 5.721
textValue2 = textValue2(textValue3, textValue4, textValue5)
textValue3 = vector3
textValue4 = 10.2343
textValue5 = -1.0028
textValue6 = 5.721
textValue3 = textValue3(textValue4, textValue5, textValue6)
textValue4 = vector3
textValue5 = 10.2343
textValue6 = -2.3244
textValue7 = 5.4099
textValue4 = textValue4(textValue5, textValue6, textValue7)
textValue5 = vector3
textValue6 = 10.2343
textValue7 = -3.7085
textValue8 = 5.721
textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12 = textValue5(textValue6, textValue7, textValue8)
vector3Builder3[1] = textValue14
vector3Builder3[2] = textValue
vector3Builder3[3] = textValue2
vector3Builder3[4] = textValue3
vector3Builder3[5] = textValue4
vector3Builder3[6] = textValue5
vector3Builder3[7] = textValue6
vector3Builder3[8] = textValue7
vector3Builder3[9] = textValue8
vector3Builder3[10] = textValue9
vector3Builder3[11] = textValue10
vector3Builder3[12] = textValue11
vector3Builder3[13] = textValue12
dataTable5[4] = vector3Builder3
vector3Builder3 = {}
textValue14 = vector3
textValue = 12.4051
textValue2 = 3.4921
textValue3 = 5.721
textValue14 = textValue14(textValue, textValue2, textValue3)
textValue = vector3
textValue2 = 12.4051
textValue3 = 2.1514
textValue4 = 5.4099
textValue = textValue(textValue2, textValue3, textValue4)
textValue2 = vector3
textValue3 = 12.4051
textValue4 = 0.7985
textValue5 = 5.721
textValue2 = textValue2(textValue3, textValue4, textValue5)
textValue3 = vector3
textValue4 = 12.4051
textValue5 = -1.0028
textValue6 = 5.721
textValue3 = textValue3(textValue4, textValue5, textValue6)
textValue4 = vector3
textValue5 = 12.4051
textValue6 = -2.3244
textValue7 = 5.4099
textValue4 = textValue4(textValue5, textValue6, textValue7)
textValue5 = vector3
textValue6 = 12.4051
textValue7 = -3.7085
textValue8 = 5.721
textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12 = textValue5(textValue6, textValue7, textValue8)
vector3Builder3[1] = textValue14
vector3Builder3[2] = textValue
vector3Builder3[3] = textValue2
vector3Builder3[4] = textValue3
vector3Builder3[5] = textValue4
vector3Builder3[6] = textValue5
vector3Builder3[7] = textValue6
vector3Builder3[8] = textValue7
vector3Builder3[9] = textValue8
vector3Builder3[10] = textValue9
vector3Builder3[11] = textValue10
vector3Builder3[12] = textValue11
vector3Builder3[13] = textValue12
dataTable5[5] = vector3Builder3
vector3Builder3 = {}
textValue14 = {}
function textValue()
  local arg1, arg2, numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2, flag8, numberValue15, numberValue, numberValue3, numberValue4, dataTable, workValue, workValue2, workValue3, flag, numberValue6, flag2, flag3, flag4
  arg1 = true
  flag5 = arg1
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = "BA_PROP_CLUB_EMIS_RIG_10"
  arg1 = arg1(arg2)
  arg2 = pairs
  numberValue8 = dataTable5
  arg2, numberValue8, iterator2, workValue5 = arg2(numberValue8)
  for cmgCall, flag6 in arg2, numberValue8, iterator2, workValue5 do
    threadCall2 = pairs
    flag8 = flag6
    threadCall2, flag8, numberValue15, numberValue = threadCall2(flag8)
    for numberValue3, numberValue4 in threadCall2, flag8, numberValue15, numberValue do
      dataTable = GetObjectOffsetFromCoords
      workValue = numberValue4.x
      workValue2 = numberValue4.y
      workValue3 = numberValue4.z
      flag = 0
      numberValue6 = 1550.0
      flag2 = 250.0
      flag3 = -50.0
      dataTable = dataTable(workValue, workValue2, workValue3, flag, numberValue6, flag2, flag3)
      workValue = CreateObjectNoOffset
      workValue2 = arg1
      workValue3 = dataTable.x
      flag = dataTable.y
      numberValue6 = dataTable.z
      flag2 = false
      flag3 = false
      flag4 = false
      -- Beginner: result below is objectEntity.
      workValue = workValue(workValue2, workValue3, flag, numberValue6, flag2, flag3, flag4)
      workValue2 = SetObjectLightColor
      workValue3 = workValue
      flag = true
      numberValue6 = 141
      flag2 = 20
      flag3 = 178
      workValue2(workValue3, flag, numberValue6, flag2, flag3)
      workValue2 = vector3Builder3
      workValue2 = #workValue2
      workValue3 = workValue2 + 1
      workValue2 = vector3Builder3
      workValue2[workValue3] = workValue
    end
  end
  arg2 = SetModelAsNoLongerNeeded
  numberValue8 = arg1
  arg2(numberValue8)
  arg2 = {}
  numberValue8 = 1
  iterator2 = pairs
  workValue5 = vector3Builder3
  iterator2, workValue5, cmgCall, flag6 = iterator2(workValue5)
  for threadCall2, flag8 in iterator2, workValue5, cmgCall, flag6 do
    arg2[numberValue8] = flag8
    numberValue8 = numberValue8 + 1
  end
  function iterator2(arg12)
    local arg22, arg3, arg4, workValue6
    arg22 = #arg12
    arg3 = 1
    while arg22 > arg3 do
      arg4 = arg12[arg22]
      workValue6 = arg12[arg3]
      arg12[arg22] = workValue6
      arg12[arg3] = arg4
      arg3 = arg3 + 1
      arg22 = arg22 - 1
    end
  end
  function workValue5(arg12)
    local arg22, arg3
    arg22 = Citizen
    arg22 = arg22.CreateThread
    function arg3()
      local iterator, numberValue7, numberValue9, workValue4, waitCall, numberValue10, workValue7, flag7
      iterator = 0
      numberValue7 = 64
      numberValue9 = 1
      for workValue4 = iterator, numberValue7, numberValue9 do
        waitCall = SetEntityAlpha
        numberValue10 = arg12
        workValue7 = numberValue8
        workValue7 = workValue7 * 4
        flag7 = false
        waitCall(numberValue10, workValue7, flag7)
        waitCall = Citizen
        waitCall = waitCall.Wait
        numberValue10 = 0
        waitCall(numberValue10)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg22(arg3)
  end
  function cmgCall(arg12)
    local arg22, arg3
    arg22 = Citizen
    arg22 = arg22.CreateThread
    function arg3()
      local iterator, numberValue7, numberValue9, workValue4, waitCall, numberValue10, workValue7, flag7
      iterator = 64
      numberValue7 = 0
      numberValue9 = -1
      for workValue4 = iterator, numberValue7, numberValue9 do
        waitCall = SetEntityAlpha
        numberValue10 = arg12
        workValue7 = numberValue8
        workValue7 = workValue7 * 4
        flag7 = false
        waitCall(numberValue10, workValue7, flag7)
        waitCall = Citizen
        waitCall = waitCall.Wait
        numberValue10 = 0
        waitCall(numberValue10)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg22(arg3)
  end
  function flag6(arg12, arg22, arg3, arg4)
    local workValue6, iterator3, numberValue11, numberValue12, numberValue13, numberValue16, numberValue2, threadCall, numberValue5
    while true do
      workValue6 = flag5
      if workValue6 then
        workValue6 = arg12
        iterator3 = pairs
        numberValue11 = workValue6
        iterator3, numberValue11, numberValue12, numberValue13 = iterator3(numberValue11)
        for numberValue16, numberValue2 in iterator3, numberValue11, numberValue12, numberValue13 do
          threadCall = Citizen
          threadCall = threadCall.CreateThread
          function numberValue5()
            local iterator, numberValue7, numberValue9, workValue4, waitCall, numberValue10, workValue7, flag7, numberValue14, flag9
            iterator = pairs
            numberValue7 = numberValue2
            iterator, numberValue7, numberValue9, workValue4 = iterator(numberValue7)
            for waitCall, numberValue10 in iterator, numberValue7, numberValue9, workValue4 do
              workValue7 = arg22
              if "hard" == workValue7 then
                workValue7 = ResetEntityAlpha
                flag7 = arg2
                flag7 = flag7[numberValue10]
                workValue7(flag7)
              end
              workValue7 = arg22
              if "fade" == workValue7 then
                workValue7 = workValue5
                flag7 = arg2
                flag7 = flag7[numberValue10]
                workValue7(flag7)
              end
            end
            iterator = Citizen
            iterator = iterator.Wait
            numberValue7 = 150
            iterator(numberValue7)
            iterator = pairs
            numberValue7 = numberValue2
            iterator, numberValue7, numberValue9, workValue4 = iterator(numberValue7)
            for waitCall, numberValue10 in iterator, numberValue7, numberValue9, workValue4 do
              workValue7 = arg22
              if "hard" == workValue7 then
                workValue7 = SetEntityAlpha
                flag7 = arg2
                flag7 = flag7[numberValue10]
                numberValue14 = 255
                flag9 = false
                workValue7(flag7, numberValue14, flag9)
              end
              workValue7 = arg22
              if "fade" == workValue7 then
                workValue7 = cmgCall
                flag7 = arg2
                flag7 = flag7[numberValue10]
                workValue7(flag7)
              end
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          threadCall(numberValue5)
          threadCall = Citizen
          threadCall = threadCall.Wait
          numberValue5 = arg4 or numberValue5
          if not arg4 then
            numberValue5 = 200
          end
          threadCall(numberValue5)
        end
        if arg3 then
          iterator3 = iterator2
          numberValue11 = workValue6
          iterator3 = iterator3(numberValue11)
          workValue6 = iterator3
        end
      end
      workValue6 = Citizen
      workValue6 = workValue6.Wait
      iterator3 = 0
      workValue6(iterator3)
    end
  end
  threadCall2 = Citizen
  threadCall2 = threadCall2.CreateThread
  function flag8()
    local arg12, arg22, arg3, arg4, workValue6, iterator3, numberValue11, numberValue12, numberValue13, numberValue16, numberValue2, threadCall
    arg12 = {}
    arg22 = {}
    arg3 = 6
    arg22[1] = arg3
    arg3 = {}
    arg4 = 5
    workValue6 = 12
    arg3[1] = arg4
    arg3[2] = workValue6
    arg4 = {}
    workValue6 = 18
    iterator3 = 11
    numberValue11 = 4
    arg4[1] = workValue6
    arg4[2] = iterator3
    arg4[3] = numberValue11
    workValue6 = {}
    iterator3 = 3
    numberValue11 = 10
    numberValue12 = 17
    numberValue13 = 24
    workValue6[1] = iterator3
    workValue6[2] = numberValue11
    workValue6[3] = numberValue12
    workValue6[4] = numberValue13
    iterator3 = {}
    numberValue11 = 30
    numberValue12 = 23
    numberValue13 = 16
    numberValue16 = 9
    numberValue2 = 2
    iterator3[1] = numberValue11
    iterator3[2] = numberValue12
    iterator3[3] = numberValue13
    iterator3[4] = numberValue16
    iterator3[5] = numberValue2
    numberValue11 = {}
    numberValue12 = 1
    numberValue13 = 8
    numberValue16 = 15
    numberValue2 = 22
    threadCall = 29
    numberValue11[1] = numberValue12
    numberValue11[2] = numberValue13
    numberValue11[3] = numberValue16
    numberValue11[4] = numberValue2
    numberValue11[5] = threadCall
    numberValue12 = {}
    numberValue13 = 28
    numberValue16 = 21
    numberValue2 = 14
    threadCall = 7
    numberValue12[1] = numberValue13
    numberValue12[2] = numberValue16
    numberValue12[3] = numberValue2
    numberValue12[4] = threadCall
    numberValue13 = {}
    numberValue16 = 13
    numberValue2 = 20
    threadCall = 27
    numberValue13[1] = numberValue16
    numberValue13[2] = numberValue2
    numberValue13[3] = threadCall
    numberValue16 = {}
    numberValue2 = 19
    threadCall = 26
    numberValue16[1] = numberValue2
    numberValue16[2] = threadCall
    numberValue2 = {}
    threadCall = 25
    numberValue2[1] = threadCall
    arg12[1] = arg22
    arg12[2] = arg3
    arg12[3] = arg4
    arg12[4] = workValue6
    arg12[5] = iterator3
    arg12[6] = numberValue11
    arg12[7] = numberValue12
    arg12[8] = numberValue13
    arg12[9] = numberValue16
    arg12[10] = numberValue2
    arg22 = flag6
    arg3 = arg12
    arg4 = "fade"
    workValue6 = true
    iterator3 = 200
    arg22(arg3, arg4, workValue6, iterator3)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  threadCall2(flag8)
end
function textValue2()
  local arg1, arg2, numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2
  arg1 = false
  flag5 = arg1
  arg1 = DeleteEntity
  arg2 = dataTable2.Bouncer
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = pairs
  arg2 = vector3Builder3
  arg1, arg2, numberValue8, iterator2 = arg1(arg2)
  for workValue5, cmgCall in arg1, arg2, numberValue8, iterator2 do
    flag6 = DeleteEntity
    threadCall2 = cmgCall
    flag6(threadCall2)
  end
  arg1 = pairs
  arg2 = textValue14
  arg1, arg2, numberValue8, iterator2 = arg1(arg2)
  for workValue5, cmgCall in arg1, arg2, numberValue8, iterator2 do
    flag6 = DeleteEntity
    threadCall2 = cmgCall
    -- Beginner: Delete a GTA entity.
    flag6(threadCall2)
  end
end
function textValue3()
  local arg1, arg2, numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2, flag8
  arg1 = drawNativeNotification
  arg2 = "Press ~INPUT_CONTEXT~ to enter the Diamond Casino Nightclub"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
  arg1 = IsControlJustPressed
  arg2 = 1
  numberValue8 = 51
  arg1 = arg1(arg2, numberValue8)
  if arg1 then
    arg1 = DoScreenFadeOut
    arg2 = 1000
    arg1(arg2)
    while true do
      arg1 = IsScreenFadedOut
      arg1 = arg1()
      if arg1 then
        break
      end
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 1.0
      arg1(arg2)
    end
    arg1 = textValue
    arg1()
    arg1 = SetEntityCoords
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    numberValue8 = vector3Builder2.x
    iterator2 = vector3Builder2.y
    workValue5 = vector3Builder2.z
    cmgCall = false
    flag6 = false
    threadCall2 = false
    flag8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg1(arg2, numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2, flag8)
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 200
    arg1(arg2)
    arg1 = DoScreenFadeIn
    arg2 = 1000
    arg1(arg2)
  end
end
function textValue4()
  local arg1, arg2, numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2, flag8
  arg1 = drawNativeNotification
  arg2 = "Press ~INPUT_CONTEXT~ to exit the Diamond Casino Nightclub"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
  arg1 = IsControlJustPressed
  arg2 = 1
  numberValue8 = 51
  arg1 = arg1(arg2, numberValue8)
  if arg1 then
    arg1 = DoScreenFadeOut
    arg2 = 1000
    arg1(arg2)
    while true do
      arg1 = IsScreenFadedOut
      arg1 = arg1()
      if arg1 then
        break
      end
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 1.0
      arg1(arg2)
    end
    arg1 = textValue2
    arg1()
    arg1 = SetEntityCoords
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    numberValue8 = vector3Builder.x
    iterator2 = vector3Builder.y
    workValue5 = vector3Builder.z
    cmgCall = false
    flag6 = false
    threadCall2 = false
    flag8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg1(arg2, numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2, flag8)
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 200
    arg1(arg2)
    arg1 = DoScreenFadeIn
    arg2 = 1000
    arg1(arg2)
  end
end
textValue5 = AddEventHandler
textValue6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function textValue7(arg1, arg2)
  local numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2, flag8, numberValue15, numberValue, numberValue3, numberValue4, dataTable, workValue, workValue2, workValue3
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function numberValue8()
      local arg12, arg22
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function iterator2()
      local arg12, arg22
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function workValue5()
      local arg12, arg22
      arg12 = textValue3
      arg12()
    end
    cmgCall = CMG
    cmgCall = cmgCall.createArea
    flag6 = "nightclub_entrance"
    threadCall2 = vector3Builder
    flag8 = 1.0
    numberValue15 = 6
    numberValue = numberValue8
    numberValue3 = iterator2
    numberValue4 = workValue5
    dataTable = {}
    -- Beginner: Create an interaction area around a world position.
    cmgCall(flag6, threadCall2, flag8, numberValue15, numberValue, numberValue3, numberValue4, dataTable)
    cmgCall = CMG
    cmgCall = cmgCall.createArea
    flag6 = "nightclub_entrance"
    threadCall2 = vector3
    flag8 = 950.79626464844
    numberValue15 = 45.225772857666
    numberValue = 81.000747680664
    threadCall2 = threadCall2(flag8, numberValue15, numberValue)
    flag8 = 1.0
    numberValue15 = 6
    numberValue = numberValue8
    numberValue3 = iterator2
    numberValue4 = workValue5
    dataTable = {}
    cmgCall(flag6, threadCall2, flag8, numberValue15, numberValue, numberValue3, numberValue4, dataTable)
    function cmgCall()
      local arg12, arg22
    end
    function flag6()
      local arg12, arg22
    end
    function threadCall2()
      local arg12, arg22
      arg12 = textValue4
      arg12()
    end
    flag8 = CMG
    flag8 = flag8.createArea
    numberValue15 = "nightclub_exit"
    numberValue = vector3Builder2
    numberValue3 = 3.0
    numberValue4 = 6
    dataTable = cmgCall
    workValue = flag6
    workValue2 = threadCall2
    workValue3 = {}
    -- Beginner: Create an interaction area around a world position.
    flag8(numberValue15, numberValue, numberValue3, numberValue4, dataTable, workValue, workValue2, workValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
textValue5(textValue6, textValue7)
textValue5 = Citizen
textValue5 = textValue5.CreateThread
function textValue6()
  local arg1, arg2, numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2, flag8, numberValue15, numberValue, numberValue3, numberValue4, dataTable, workValue, workValue2, workValue3
  arg1 = tCMG
  arg1 = arg1.addBlip
  arg2 = 987.6535
  numberValue8 = 80.3114
  iterator2 = 80.9905
  workValue5 = 136
  cmgCall = 0
  flag6 = "The Diamond Casino NightClub"
  threadCall2 = 0.5
  flag8 = false
  -- Beginner: Create a minimap blip.
  arg1(arg2, numberValue8, iterator2, workValue5, cmgCall, flag6, threadCall2, flag8)
  arg1 = pairs
  arg2 = dataTable3
  arg1, arg2, numberValue8, iterator2 = arg1(arg2)
  for workValue5, cmgCall in arg1, arg2, numberValue8, iterator2 do
    flag6 = IsIplActive
    threadCall2 = cmgCall
    flag6 = flag6(threadCall2)
    if not flag6 then
      flag6 = RequestIpl
      threadCall2 = cmgCall
      flag6(threadCall2)
    end
    flag6 = dataTable4
    flag6 = flag6[cmgCall]
    if flag6 then
      flag6 = textValue13
      flag6 = flag6[cmgCall]
      if flag6 then
        flag6 = IsIplActive
        threadCall2 = cmgCall
        flag6 = flag6(threadCall2)
        if flag6 then
          flag6 = textValue13
          flag6 = flag6[cmgCall]
          threadCall2 = GetInteriorAtCoords
          flag8 = flag6.x
          numberValue15 = flag6.y
          numberValue = flag6.z
          -- Beginner: result below is interiorId.
          threadCall2 = threadCall2(flag8, numberValue15, numberValue)
          flag8 = IsValidInterior
          numberValue15 = threadCall2
          flag8 = flag8(numberValue15)
          if flag8 then
            flag8 = pairs
            numberValue15 = dataTable4
            numberValue15 = numberValue15[cmgCall]
            flag8, numberValue15, numberValue, numberValue3 = flag8(numberValue15)
            for numberValue4, dataTable in flag8, numberValue15, numberValue, numberValue3 do
              workValue = ActivateInteriorEntitySet
              workValue2 = threadCall2
              workValue3 = dataTable
              workValue(workValue2, workValue3)
            end
            flag8 = RefreshInterior
            numberValue15 = threadCall2
            flag8(numberValue15)
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue5(textValue6)
textValue5 = AddEventHandler
textValue6 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function textValue7(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 ~= arg1 then
    return
  end
  arg2 = textValue2
  arg2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
textValue5(textValue6, textValue7)
textValue5 = AddEventHandler
textValue6 = "onResourceStart"
-- Beginner: this function runs when client event "onResourceStart" fires.
function textValue7(arg1)
  local arg2, numberValue8
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 ~= arg1 then
    return
  end
  arg2 = Citizen
  arg2 = arg2.Wait
  numberValue8 = 1000
  arg2(numberValue8)
  arg2 = GetInteriorFromEntity
  numberValue8 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue8 = numberValue8()
  -- Beginner: result below is interiorId.
  arg2 = arg2(numberValue8)
  if 281089 == arg2 then
    arg2 = textValue
    arg2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStart".
textValue5(textValue6, textValue7)