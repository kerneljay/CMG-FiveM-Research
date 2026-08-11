--[[
    LEVEL 1 BEGINNER GUIDE — Tattoos
    =====================================

    File: cmg/prod/client/misc/cl_tattoos.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Tattoos feature.

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
local cmgCall, cmgCall2, flag6, rageUiCall2, dataTable8, dataTable9, rageUiCall3, rageUiCall4, dataTable10, dataTable11, dataTable, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, workValue7, workValue8, workValue9, workValue10, eventRegistration, rageUiCall, numberValue8, workValue11, workValue12, cmgCall3, textValue3
cmgCall = RMenu
cmgCall = cmgCall.Add
cmgCall2 = "CMGtattoos"
flag6 = "mainMenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
dataTable8 = ""
dataTable9 = "Tattoo Store"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
dataTable10 = "shopui_title_tattoos2"
dataTable11 = "shopui_title_tattoos2"
rageUiCall2, dataTable8, dataTable9, rageUiCall3, rageUiCall4, dataTable10, dataTable11, dataTable, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, workValue7, workValue8, workValue9, workValue10, eventRegistration, rageUiCall, numberValue8, workValue11, workValue12, cmgCall3, textValue3 = rageUiCall2(dataTable8, dataTable9, rageUiCall3, rageUiCall4, dataTable10, dataTable11)
cmgCall(cmgCall2, flag6, rageUiCall2, dataTable8, dataTable9, rageUiCall3, rageUiCall4, dataTable10, dataTable11, dataTable, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, workValue7, workValue8, workValue9, workValue10, eventRegistration, rageUiCall, numberValue8, workValue11, workValue12, cmgCall3, textValue3)
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall2 = "cfg/ped_cfg/cfg_tattoos"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall2)
cmgCall2 = -1
flag6 = false
rageUiCall2 = {}
dataTable8 = {}
dataTable8.name = "Part 1"
dataTable8.value = "mpbeach_overlays"
dataTable8.currentListIndex = 1
dataTable9 = {}
dataTable9.name = "Part 2"
dataTable9.value = "mpbusiness_overlays"
dataTable9.currentListIndex = 1
rageUiCall3 = {}
rageUiCall3.name = "Part 3"
rageUiCall3.value = "mphipster_overlays"
rageUiCall3.currentListIndex = 1
rageUiCall4 = {}
rageUiCall4.name = "Part 4"
rageUiCall4.value = "mpbiker_overlays"
rageUiCall4.currentListIndex = 1
dataTable10 = {}
dataTable10.name = "Part 5"
dataTable10.value = "mpairraces_overlays"
dataTable10.currentListIndex = 1
dataTable11 = {}
dataTable11.name = "Part 6"
dataTable11.value = "mpbeach_overlays"
dataTable11.currentListIndex = 1
dataTable = {}
dataTable.name = "Part 7"
dataTable.value = "mpchristmas2_overlays"
dataTable.currentListIndex = 1
dataTable3 = {}
dataTable3.name = "Part 8"
dataTable3.value = "mpgunrunning_overlays"
dataTable3.currentListIndex = 1
dataTable4 = {}
dataTable4.name = "Part 9"
dataTable4.value = "mpimportexport_overlays"
dataTable4.currentListIndex = 1
dataTable5 = {}
dataTable5.name = "Part 10"
dataTable5.value = "mplowrider2_overlays"
dataTable5.currentListIndex = 1
dataTable6 = {}
dataTable6.name = "Part 11"
dataTable6.value = "mplowrider_overlays"
dataTable6.currentListIndex = 1
dataTable7 = {}
dataTable7.name = "Custom Tattoos"
dataTable7.value = "new_overlays"
dataTable7.currentListIndex = 1
rageUiCall2[1] = dataTable8
rageUiCall2[2] = dataTable9
rageUiCall2[3] = rageUiCall3
rageUiCall2[4] = rageUiCall4
rageUiCall2[5] = dataTable10
rageUiCall2[6] = dataTable11
rageUiCall2[7] = dataTable
rageUiCall2[8] = dataTable3
rageUiCall2[9] = dataTable4
rageUiCall2[10] = dataTable5
rageUiCall2[11] = dataTable6
rageUiCall2[12] = dataTable7
dataTable8 = cmgCall.tattoosList
dataTable9 = cmgCall.tattoosShops
rageUiCall3 = {}
rageUiCall4 = {}
dataTable10 = nil
dataTable11 = false
dataTable = false
dataTable3 = {}
dataTable4 = {}
dataTable5 = false
dataTable6 = false

-- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
function dataTable7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.GetRageInputText
  arg2 = "Enter tattoo ID you want to wear"
  arg1 = arg1(arg2)
  if arg1 then
    arg2 = false
    dataTable = arg2
    arg2 = tonumber
    arg3 = arg1
    arg2 = arg2(arg3)
    if nil ~= arg2 then
      arg3 = arg2 + 1
      dataTable3.id = arg3
    else
      arg3 = dataTable4.index
      dataTable3.id = arg3
    end
    arg3 = true
    dataTable11 = arg3
    return arg1
  end
  arg2 = false
  dataTable = arg2
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, tableHelper, workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = nil
  if "table" == arg2 then
    tableHelper = {}
    arg3 = tableHelper
    tableHelper = next
    workValue13 = arg1
    numberValue15 = nil
    hashValue = nil
    for workValue15, cmgCall5 in tableHelper, workValue13, numberValue15, hashValue do
      textValue8 = workValue7
      workValue = workValue15
      textValue8 = textValue8(workValue)
      workValue = workValue7
      workValue2 = cmgCall5
      workValue = workValue(workValue2)
      arg3[textValue8] = workValue
    end
    tableHelper = setmetatable
    workValue13 = arg3
    numberValue15 = workValue7
    hashValue = getmetatable
    workValue15 = arg1
    hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2 = hashValue(workValue15)
    numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2 = numberValue15(hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2)
    tableHelper(workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2)
  else
    arg3 = arg1
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, tableHelper, workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue
  arg2 = dataTable8
  arg2 = arg2[arg1]
  arg2 = #arg2
  arg2 = arg2 - 1
  arg3 = {}
  tableHelper = "0/"
  workValue13 = arg2
  tableHelper = tableHelper .. workValue13
  arg3[1] = tableHelper
  tableHelper = 1
  workValue13 = dataTable8
  workValue13 = workValue13[arg1]
  workValue13 = #workValue13
  workValue13 = workValue13 - 1
  numberValue15 = 1
  for hashValue = tableHelper, workValue13, numberValue15 do
    workValue15 = #arg3
    workValue15 = workValue15 + 1
    cmgCall5 = hashValue
    textValue8 = "/"
    workValue = arg2
    cmgCall5 = cmgCall5 .. textValue8 .. workValue
    arg3[workValue15] = cmgCall5
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3) ===
function workValue9(arg1, arg2, arg3)
  local tableHelper, workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3
  tableHelper = SetEntityHeading
  workValue13 = CMG
  workValue13 = workValue13.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workValue13 = workValue13()
  numberValue15 = 297.7296
  -- Beginner: Change the direction an entity is facing.
  tableHelper(workValue13, numberValue15)
  if nil ~= arg1 and nil ~= arg2 and nil ~= arg3 then
    tableHelper = dataTable6
    if tableHelper then
      tableHelper = 1
      workValue13 = rageUiCall4
      workValue13 = #workValue13
      numberValue15 = 1
      for hashValue = tableHelper, workValue13, numberValue15 do
        workValue15 = rageUiCall4
        workValue15 = workValue15[hashValue]
        if nil ~= workValue15 then
          workValue15 = rageUiCall4
          workValue15 = workValue15[hashValue]
          workValue15 = workValue15.current
          if workValue15 == arg1 then
            workValue15 = table
            workValue15 = workValue15.remove
            cmgCall5 = rageUiCall4
            textValue8 = hashValue
            workValue15(cmgCall5, textValue8)
          end
        end
      end
      tableHelper = ClearPedDecorations
      workValue13 = CMG
      workValue13 = workValue13.getPlayerPed
      workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3 = workValue13()
      tableHelper(workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3)
      tableHelper = 1
      workValue13 = rageUiCall4
      workValue13 = #workValue13
      numberValue15 = 1
      for hashValue = tableHelper, workValue13, numberValue15 do
        workValue15 = AddPedDecorationFromHashes
        cmgCall5 = CMG
        cmgCall5 = cmgCall5.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall5 = cmgCall5()
        textValue8 = GetHashKey
        workValue = rageUiCall4
        workValue = workValue[hashValue]
        workValue = workValue.collection
        -- Beginner: result below is hash.
        textValue8 = textValue8(workValue)
        workValue = GetHashKey
        workValue2 = rageUiCall4
        workValue2 = workValue2[hashValue]
        workValue3 = workValue2.collection
        workValue2 = dataTable8
        workValue2 = workValue2[workValue3]
        workValue3 = rageUiCall4
        workValue3 = workValue3[hashValue]
        workValue3 = workValue3.current
        workValue2 = workValue2[workValue3]
        workValue2 = workValue2.nameHash
        workValue, workValue2, workValue3 = workValue(workValue2)
        workValue15(cmgCall5, textValue8, workValue, workValue2, workValue3)
      end
      tableHelper = false
      dataTable6 = tableHelper
    else
      tableHelper = GetEntityModel
      workValue13 = CMG
      workValue13 = workValue13.getPlayerPed
      workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3 = workValue13()
      -- Beginner: result below is modelHash.
      tableHelper = tableHelper(workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3)
      if -1667301416 == tableHelper then
        tableHelper = CMG
        tableHelper = tableHelper.loadCustomisationPreset
        workValue13 = "TattooMale"
        tableHelper(workValue13)
      else
        tableHelper = CMG
        tableHelper = tableHelper.loadCustomisationPreset
        workValue13 = "TattooFemale"
        tableHelper(workValue13)
      end
      tableHelper = ClearPedDecorations
      workValue13 = CMG
      workValue13 = workValue13.getPlayerPed
      workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3 = workValue13()
      tableHelper(workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3)
      tableHelper = 1
      workValue13 = rageUiCall4
      workValue13 = #workValue13
      numberValue15 = 1
      for hashValue = tableHelper, workValue13, numberValue15 do
        workValue15 = AddPedDecorationFromHashes
        cmgCall5 = CMG
        cmgCall5 = cmgCall5.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall5 = cmgCall5()
        textValue8 = GetHashKey
        workValue = rageUiCall4
        workValue = workValue[hashValue]
        workValue = workValue.collection
        -- Beginner: result below is hash.
        textValue8 = textValue8(workValue)
        workValue = GetHashKey
        workValue2 = rageUiCall4
        workValue2 = workValue2[hashValue]
        workValue3 = workValue2.collection
        workValue2 = dataTable8
        workValue2 = workValue2[workValue3]
        workValue3 = rageUiCall4
        workValue3 = workValue3[hashValue]
        workValue3 = workValue3.current
        workValue2 = workValue2[workValue3]
        workValue2 = workValue2.nameHash
        workValue, workValue2, workValue3 = workValue(workValue2)
        workValue15(cmgCall5, textValue8, workValue, workValue2, workValue3)
      end
      tableHelper = AddPedDecorationFromHashes
      workValue13 = CMG
      workValue13 = workValue13.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workValue13 = workValue13()
      numberValue15 = GetHashKey
      hashValue = arg2
      -- Beginner: result below is hash.
      numberValue15 = numberValue15(hashValue)
      hashValue = GetHashKey
      workValue15 = dataTable8
      workValue15 = workValue15[arg2]
      workValue15 = workValue15[arg1]
      workValue15 = workValue15.nameHash
      hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3 = hashValue(workValue15)
      tableHelper(workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3)
      tableHelper = DoesCamExist
      workValue13 = cmgCall2
      tableHelper = tableHelper(workValue13)
      if not tableHelper then
        tableHelper = CreateCam
        workValue13 = "DEFAULT_SCRIPTED_CAMERA"
        numberValue15 = true
        -- Beginner: result below is cameraHandle.
        tableHelper = tableHelper(workValue13, numberValue15)
        cmgCall2 = tableHelper
        tableHelper = GetEntityCoords
        workValue13 = CMG
        workValue13 = workValue13.getPlayerPed
        workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3 = workValue13()
        -- Beginner: result below is entityCoords.
        tableHelper = tableHelper(workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3)
        workValue13 = SetCamCoord
        numberValue15 = cmgCall2
        hashValue = tableHelper.x
        workValue15 = tableHelper.y
        cmgCall5 = tableHelper.z
        workValue13(numberValue15, hashValue, workValue15, cmgCall5)
        workValue13 = SetCamRot
        numberValue15 = cmgCall2
        hashValue = 0.0
        workValue15 = 0.0
        cmgCall5 = 0.0
        textValue8 = 2
        workValue13(numberValue15, hashValue, workValue15, cmgCall5, textValue8)
        workValue13 = SetCamActive
        numberValue15 = cmgCall2
        hashValue = true
        workValue13(numberValue15, hashValue)
        workValue13 = RenderScriptCams
        numberValue15 = true
        hashValue = false
        workValue15 = 0
        cmgCall5 = true
        textValue8 = true
        workValue13(numberValue15, hashValue, workValue15, cmgCall5, textValue8)
        workValue13 = SetCamCoord
        numberValue15 = cmgCall2
        hashValue = tableHelper.x
        workValue15 = tableHelper.y
        cmgCall5 = tableHelper.z
        workValue13(numberValue15, hashValue, workValue15, cmgCall5)
      end
      tableHelper = table
      tableHelper = tableHelper.unpack
      workValue13 = GetEntityCoords
      numberValue15 = CMG
      numberValue15 = numberValue15.getPlayerPed
      numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3 = numberValue15()
      workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3 = workValue13(numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3)
      tableHelper, workValue13, numberValue15 = tableHelper(workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3)
      hashValue = SetCamCoord
      workValue15 = cmgCall2
      cmgCall5 = dataTable8
      cmgCall5 = cmgCall5[arg2]
      cmgCall5 = cmgCall5[arg1]
      cmgCall5 = cmgCall5.addedX
      cmgCall5 = tableHelper + cmgCall5
      textValue8 = dataTable8
      textValue8 = textValue8[arg2]
      textValue8 = textValue8[arg1]
      textValue8 = textValue8.addedY
      textValue8 = workValue13 + textValue8
      workValue = dataTable8
      workValue = workValue[arg2]
      workValue = workValue[arg1]
      workValue = workValue.addedZ
      workValue = numberValue15 + workValue
      hashValue(workValue15, cmgCall5, textValue8, workValue)
      hashValue = SetCamRot
      workValue15 = cmgCall2
      cmgCall5 = 0.0
      textValue8 = 0.0
      workValue = dataTable8
      workValue = workValue[arg2]
      workValue = workValue[arg1]
      workValue = workValue.rotZ
      workValue2 = 2
      hashValue(workValue15, cmgCall5, textValue8, workValue, workValue2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, tableHelper, workValue13, numberValue15
  arg1 = {}
  arg2 = {}
  arg2.label = "Enter Tattoo ID "
  arg2.button = "~INPUT_CELLPHONE_EXTRA_OPTION~"
  arg3 = {}
  arg3.label = "Remove Current Tattoo "
  arg3.button = "~INPUT_CELLPHONE_OPTION~"
  tableHelper = {}
  tableHelper.label = "Purchase Current Tattoo "
  tableHelper.button = "~INPUT_CELLPHONE_SELECT~"
  workValue13 = {}
  workValue13.label = "Next Index "
  workValue13.button = "~INPUT_CELLPHONE_RIGHT~"
  numberValue15 = {}
  numberValue15.label = "Previous Index "
  numberValue15.button = "~INPUT_CELLPHONE_LEFT~"
  arg1[1] = arg2
  arg1[2] = arg3
  arg1[3] = tableHelper
  arg1[4] = workValue13
  arg1[5] = numberValue15
  arg2 = Citizen
  arg2 = arg2.CreateThread

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local serverEventCall, textValue2, numberValue12, textValue6, flag7, cmgCall4, hashValue2, workValue16, textValue7, textValue9
    serverEventCall = Wait
    textValue2 = 0
    serverEventCall(textValue2)
    serverEventCall = RequestScaleformMovie
    textValue2 = "instructional_buttons"
    -- Beginner: result below is scaleformHandle.
    serverEventCall = serverEventCall(textValue2)
    while true do
      textValue2 = HasScaleformMovieLoaded
      numberValue12 = serverEventCall
      textValue2 = textValue2(numberValue12)
      if textValue2 then
        break
      end
      textValue2 = Wait
      numberValue12 = 0
      textValue2(numberValue12)
    end
    textValue2 = BeginScaleformMovieMethod
    numberValue12 = serverEventCall
    textValue6 = "CLEAR_ALL"
    textValue2(numberValue12, textValue6)
    textValue2 = BeginScaleformMovieMethod
    numberValue12 = serverEventCall
    textValue6 = "TOGGLE_MOUSE_BUTTONS"
    textValue2(numberValue12, textValue6)
    textValue2 = ScaleformMovieMethodAddParamBool
    numberValue12 = false
    textValue2(numberValue12)
    textValue2 = EndScaleformMovieMethod
    textValue2()
    textValue2 = ipairs
    numberValue12 = arg1
    textValue2, numberValue12, textValue6, flag7 = textValue2(numberValue12)
    for cmgCall4, hashValue2 in textValue2, numberValue12, textValue6, flag7 do
      workValue16 = BeginScaleformMovieMethod
      textValue7 = serverEventCall
      textValue9 = "SET_DATA_SLOT"
      workValue16(textValue7, textValue9)
      workValue16 = ScaleformMovieMethodAddParamInt
      textValue7 = cmgCall4 - 1
      workValue16(textValue7)
      workValue16 = _ENV
      textValue7 = "ScaleformMovieMethodAddParamPlayerNameString"
      workValue16 = workValue16[textValue7]
      textValue7 = hashValue2.button
      workValue16(textValue7)
      workValue16 = _ENV
      textValue7 = "ScaleformMovieMethodAddParamTextureNameString"
      workValue16 = workValue16[textValue7]
      textValue7 = hashValue2.label
      workValue16(textValue7)
      workValue16 = EndScaleformMovieMethod
      workValue16()
    end
    textValue2 = BeginScaleformMovieMethod
    numberValue12 = serverEventCall
    textValue6 = "DRAW_INSTRUCTIONAL_BUTTONS"
    textValue2(numberValue12, textValue6)
    textValue2 = ScaleformMovieMethodAddParamInt
    numberValue12 = -1
    textValue2(numberValue12)
    textValue2 = EndScaleformMovieMethod
    textValue2()
    while true do
      textValue2 = flag6
      if not textValue2 then
        break
      end
      textValue2 = Wait
      numberValue12 = 0
      textValue2(numberValue12)
      textValue2 = DrawScaleformMovieFullscreen
      numberValue12 = serverEventCall
      textValue6 = 255
      flag7 = 255
      cmgCall4 = 255
      hashValue2 = 255
      workValue16 = 0
      textValue2(numberValue12, textValue6, flag7, cmgCall4, hashValue2, workValue16)
    end
    textValue2 = false
    dataTable5 = textValue2
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
eventRegistration = AddEventHandler
rageUiCall = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: arg1, arg2) ===
function numberValue8(arg1, arg2)
  local arg3, tableHelper, workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2, workValue3, flag2, numberValue, numberValue2, numberValue3, textValue, numberValue4, numberValue5, numberValue6, numberValue7, numberValue9, numberValue10, flag3, flag4, flag5, textValue4, textValue5, numberValue11, numberValue13, numberValue14
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local serverEventCall, textValue2, numberValue12, textValue6, flag7
      serverEventCall = TriggerServerEvent
      textValue2 = "195b53ce8c"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "195b53ce8c".
      serverEventCall(textValue2)
      serverEventCall = Citizen
      serverEventCall = serverEventCall.Wait
      textValue2 = 500
      serverEventCall(textValue2)
      serverEventCall = true
      flag6 = serverEventCall
      serverEventCall = workValue7
      textValue2 = rageUiCall3
      serverEventCall = serverEventCall(textValue2)
      rageUiCall4 = serverEventCall
      serverEventCall = tCMG
      serverEventCall = serverEventCall.getCustomization
      serverEventCall = serverEventCall()
      dataTable10 = serverEventCall
      serverEventCall = RageUI
      serverEventCall = serverEventCall.Visible
      textValue2 = RMenu
      numberValue12 = textValue2
      textValue2 = textValue2.Get
      textValue6 = "CMGtattoos"
      flag7 = "mainMenu"
      -- Beginner: result below is menu.
      textValue2 = textValue2(numberValue12, textValue6, flag7)
      numberValue12 = true
      serverEventCall(textValue2, numberValue12)
    end

    -- === HELPER FUNCTION: tableHelper() ===
    function tableHelper()
      local serverEventCall, textValue2, numberValue12, textValue6, flag7, cmgCall4, hashValue2, workValue16, textValue7, textValue9
      serverEventCall = DoesCamExist
      textValue2 = cmgCall2
      serverEventCall = serverEventCall(textValue2)
      if serverEventCall then
        serverEventCall = RenderScriptCams
        textValue2 = false
        numberValue12 = false
        textValue6 = 0
        flag7 = true
        cmgCall4 = false
        serverEventCall(textValue2, numberValue12, textValue6, flag7, cmgCall4)
        serverEventCall = DestroyCam
        textValue2 = cmgCall2
        numberValue12 = false
        serverEventCall(textValue2, numberValue12)
      end
      serverEventCall = RageUI
      serverEventCall = serverEventCall.Visible
      textValue2 = RMenu
      numberValue12 = textValue2
      textValue2 = textValue2.Get
      textValue6 = "CMGtattoos"
      flag7 = "mainMenu"
      -- Beginner: result below is menu.
      textValue2 = textValue2(numberValue12, textValue6, flag7)
      numberValue12 = false
      serverEventCall(textValue2, numberValue12)
      serverEventCall = tCMG
      serverEventCall = serverEventCall.setCustomization
      textValue2 = dataTable10
      serverEventCall(textValue2)
      serverEventCall = nil
      dataTable10 = serverEventCall
      serverEventCall = ClearPedDecorations
      textValue2 = CMG
      textValue2 = textValue2.getPlayerPed
      textValue2, numberValue12, textValue6, flag7, cmgCall4, hashValue2, workValue16, textValue7, textValue9 = textValue2()
      serverEventCall(textValue2, numberValue12, textValue6, flag7, cmgCall4, hashValue2, workValue16, textValue7, textValue9)
      serverEventCall = 1
      textValue2 = rageUiCall4
      textValue2 = #textValue2
      numberValue12 = 1
      for textValue6 = serverEventCall, textValue2, numberValue12 do
        flag7 = AddPedDecorationFromHashes
        cmgCall4 = CMG
        cmgCall4 = cmgCall4.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall4 = cmgCall4()
        hashValue2 = GetHashKey
        workValue16 = rageUiCall4
        workValue16 = workValue16[textValue6]
        workValue16 = workValue16.collection
        -- Beginner: result below is hash.
        hashValue2 = hashValue2(workValue16)
        workValue16 = GetHashKey
        textValue7 = rageUiCall4
        textValue7 = textValue7[textValue6]
        textValue9 = textValue7.collection
        textValue7 = dataTable8
        textValue7 = textValue7[textValue9]
        textValue9 = rageUiCall4
        textValue9 = textValue9[textValue6]
        textValue9 = textValue9.current
        textValue7 = textValue7[textValue9]
        textValue7 = textValue7.nameHash
        workValue16, textValue7, textValue9 = workValue16(textValue7)
        flag7(cmgCall4, hashValue2, workValue16, textValue7, textValue9)
      end
      serverEventCall = false
      flag6 = serverEventCall
      serverEventCall = {}
      rageUiCall3 = serverEventCall
    end

    -- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
    function workValue13()
      local serverEventCall, textValue2, numberValue12, textValue6, flag7
      serverEventCall = flag6
      if serverEventCall then
        serverEventCall = dataTable5
        if not serverEventCall then
          serverEventCall = workValue10
          serverEventCall()
          serverEventCall = true
          dataTable5 = serverEventCall
        end
      end
      serverEventCall = RageUI
      serverEventCall = serverEventCall.Visible
      textValue2 = RMenu
      numberValue12 = textValue2
      textValue2 = textValue2.Get
      textValue6 = "CMGtattoos"
      flag7 = "mainMenu"
      textValue2, numberValue12, textValue6, flag7 = textValue2(numberValue12, textValue6, flag7)
      -- Beginner: result below is menuVisible.
      serverEventCall = serverEventCall(textValue2, numberValue12, textValue6, flag7)
      if serverEventCall then
        serverEventCall = IsControlJustPressed
        textValue2 = 0
        numberValue12 = 179
        serverEventCall = serverEventCall(textValue2, numberValue12)
        if serverEventCall then
          serverEventCall = dataTable
          if not serverEventCall then
            serverEventCall = true
            dataTable = serverEventCall
            serverEventCall = dataTable7
            serverEventCall()
          end
        end
      end
    end
    numberValue15 = pairs
    hashValue = dataTable9
    numberValue15, hashValue, workValue15, cmgCall5 = numberValue15(hashValue)
    for textValue8, workValue in numberValue15, hashValue, workValue15, cmgCall5 do
      workValue2 = RequestStreamedTextureDict
      workValue3 = "mptattoos1"
      flag2 = false
      workValue2(workValue3, flag2)
      workValue2 = Wait
      workValue3 = 100
      workValue2(workValue3)
      workValue2 = CMG
      workValue2 = workValue2.createArea
      workValue3 = "tattoParlour_"
      flag2 = textValue8
      workValue3 = workValue3 .. flag2
      flag2 = workValue
      numberValue = 1.5
      numberValue2 = 6
      numberValue3 = arg3
      textValue = tableHelper
      numberValue4 = workValue13
      -- Beginner: Create an interaction area around a world position.
      workValue2(workValue3, flag2, numberValue, numberValue2, numberValue3, textValue, numberValue4)
      workValue2 = tCMG
      workValue2 = workValue2.addBlip
      workValue3 = workValue.x
      flag2 = workValue.y
      numberValue = workValue.z
      numberValue2 = 75
      numberValue3 = 0
      textValue = "Tattoo Parlour"
      -- Beginner: Create a minimap blip.
      workValue2(workValue3, flag2, numberValue, numberValue2, numberValue3, textValue)
      workValue2 = tCMG
      workValue2 = workValue2.addMarker
      workValue3 = workValue.x
      flag2 = workValue.y
      numberValue = workValue.z
      numberValue2 = 0.6
      numberValue3 = 0.6
      textValue = 0.6
      numberValue4 = 10
      numberValue5 = 255
      numberValue6 = 81
      numberValue7 = 170
      numberValue9 = 50
      numberValue10 = 9
      flag3 = false
      flag4 = false
      flag5 = true
      textValue4 = "mptattoos1"
      textValue5 = "tattoo_defend_safehouse"
      numberValue11 = 90.0
      numberValue13 = 90.0
      numberValue14 = 0.0
      -- Beginner: Create a world marker.
      workValue2(workValue3, flag2, numberValue, numberValue2, numberValue3, textValue, numberValue4, numberValue5, numberValue6, numberValue7, numberValue9, numberValue10, flag3, flag4, flag5, textValue4, textValue5, numberValue11, numberValue13, numberValue14)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventRegistration(rageUiCall, numberValue8)
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, arg3
  arg1 = false
  while true do
    arg2 = Wait
    arg3 = 500
    arg2(arg3)
    arg2 = tCMG
    arg2 = arg2.isInComa
    arg2 = arg2()
    if arg2 and not arg1 then
      arg1 = true
    end
    arg2 = tCMG
    arg2 = arg2.isInComa
    arg2 = arg2()
    if not arg2 and arg1 then
      arg2 = Wait
      arg3 = 5000
      arg2(arg3)
      arg2 = TriggerServerEvent
      arg3 = "195b53ce8c"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "195b53ce8c".
      arg2(arg3)
      arg1 = false
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(rageUiCall)
eventRegistration = RegisterNetEvent
rageUiCall = "9bb006b498"
-- Beginner: this function handles network event "9bb006b498".

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: arg1) ===
function numberValue8(arg1)
  local arg2, arg3, tableHelper, workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8, workValue, workValue2
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 500
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.unpackTable
  arg3 = arg1
  tableHelper = {}
  workValue13 = "current"
  numberValue15 = "part"
  hashValue = "collection"
  tableHelper[1] = workValue13
  tableHelper[2] = numberValue15
  tableHelper[3] = hashValue
  arg2 = arg2(arg3, tableHelper)
  arg3 = 1
  tableHelper = #arg2
  workValue13 = 1
  for numberValue15 = arg3, tableHelper, workValue13 do
    hashValue = 1
    workValue15 = rageUiCall2
    workValue15 = #workValue15
    cmgCall5 = 1
    for textValue8 = hashValue, workValue15, cmgCall5 do
      workValue = rageUiCall2
      workValue = workValue[textValue8]
      workValue = workValue.name
      workValue2 = arg2[numberValue15]
      workValue2 = workValue2.part
      if workValue == workValue2 then
        workValue = rageUiCall2
        workValue = workValue[textValue8]
        workValue2 = arg2[numberValue15]
        workValue2 = workValue2.current
        workValue.currentListIndex = workValue2
      end
    end
    hashValue = AddPedDecorationFromHashes
    workValue15 = CMG
    workValue15 = workValue15.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    workValue15 = workValue15()
    cmgCall5 = GetHashKey
    textValue8 = arg2[numberValue15]
    textValue8 = textValue8.collection
    -- Beginner: result below is hash.
    cmgCall5 = cmgCall5(textValue8)
    textValue8 = GetHashKey
    workValue = arg2[numberValue15]
    workValue2 = workValue.collection
    workValue = dataTable8
    workValue = workValue[workValue2]
    workValue2 = arg2[numberValue15]
    workValue2 = workValue2.current
    workValue = workValue[workValue2]
    workValue = workValue.nameHash
    textValue8, workValue, workValue2 = textValue8(workValue)
    hashValue(workValue15, cmgCall5, textValue8, workValue, workValue2)
    hashValue = table
    hashValue = hashValue.insert
    workValue15 = rageUiCall3
    cmgCall5 = arg2[numberValue15]
    hashValue(workValue15, cmgCall5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9bb006b498".
eventRegistration(rageUiCall, numberValue8)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2, arg3) ===
function eventRegistration(arg1, arg2, arg3)
  local tableHelper, workValue13, numberValue15, hashValue, workValue15, cmgCall5, textValue8
  tableHelper = pairs
  workValue13 = rageUiCall3
  tableHelper, workValue13, numberValue15, hashValue = tableHelper(workValue13)
  for workValue15, cmgCall5 in tableHelper, workValue13, numberValue15, hashValue do
    textValue8 = cmgCall5.part
    if textValue8 == arg1 then
      textValue8 = cmgCall5.collection
      if textValue8 == arg2 then
        textValue8 = cmgCall5.current
        if textValue8 == arg3 then
          textValue8 = true
          return textValue8
        end
      end
    end
  end
  tableHelper = false
  return tableHelper
end
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
numberValue8 = 1.0
workValue11 = RMenu
workValue12 = workValue11
workValue11 = workValue11.Get
cmgCall3 = "CMGtattoos"
textValue3 = "mainMenu"
-- Beginner: result below is menu.
workValue11 = workValue11(workValue12, cmgCall3, textValue3)
workValue12 = nil

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, tableHelper, workValue13, numberValue15
  arg1 = dataTable
  if not arg1 then
    arg1 = RageUI
    arg1 = arg1.IsVisible
    arg2 = RMenu
    arg3 = arg2
    arg2 = arg2.Get
    tableHelper = "CMGtattoos"
    workValue13 = "mainMenu"
    -- Beginner: result below is menu.
    arg2 = arg2(arg3, tableHelper, workValue13)
    arg3 = true
    tableHelper = false
    workValue13 = true

    -- === HELPER FUNCTION (decompiler name: numberValue15; parameters: none) ===
    function numberValue15()
      local serverEventCall, textValue2, numberValue12, textValue6, flag7, cmgCall4, hashValue2, workValue16, textValue7, textValue9, dataTable2, flag, workValue4, workValue5, workValue6
      serverEventCall = 1
      textValue2 = rageUiCall2
      textValue2 = #textValue2
      numberValue12 = 1
      for textValue6 = serverEventCall, textValue2, numberValue12 do
        flag7 = rageUiCall2
        flag7 = flag7[textValue6]
        dataTable4 = flag7
        cmgCall4 = RageUI
        cmgCall4 = cmgCall4.List
        hashValue2 = flag7.name
        workValue16 = workValue8
        textValue7 = flag7.value
        workValue16 = workValue16(textValue7)
        textValue7 = rageUiCall2
        textValue7 = textValue7[textValue6]
        textValue7 = textValue7.currentListIndex
        textValue9 = "Tattoo Add/Removal Price: \194\1631,000"
        dataTable2 = {}
        flag = true

        -- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg12, arg22, arg32, arg4) ===
        function workValue4(arg12, arg22, arg32, arg4)
          local workValue14, numberValue16, numberValue17, numberValue18, flag8, flag9
          if arg22 then
            workValue14 = IsControlJustPressed
            numberValue16 = 0
            numberValue17 = 177
            workValue14 = workValue14(numberValue16, numberValue17)
            if not workValue14 then
              workValue14 = IsControlJustPressed
              numberValue16 = 0
              numberValue17 = 194
              workValue14 = workValue14(numberValue16, numberValue17)
              if not workValue14 then
                workValue14 = IsControlJustPressed
                numberValue16 = 0
                numberValue17 = 202
                workValue14 = workValue14(numberValue16, numberValue17)
                if not workValue14 then
                  goto flow_label_37
                end
              end
            end
            workValue14 = DoesCamExist
            numberValue16 = cmgCall2
            workValue14 = workValue14(numberValue16)
            if workValue14 then
              workValue14 = RenderScriptCams
              numberValue16 = false
              numberValue17 = false
              numberValue18 = 0
              flag8 = true
              flag9 = false
              workValue14(numberValue16, numberValue17, numberValue18, flag8, flag9)
              workValue14 = DestroyCam
              numberValue16 = cmgCall2
              numberValue17 = false
              workValue14(numberValue16, numberValue17)
            end
            ::flow_label_37::
            workValue14 = IsControlJustPressed
            numberValue16 = 0
            numberValue17 = 172
            workValue14 = workValue14(numberValue16, numberValue17)
            if not workValue14 then
              workValue14 = IsControlJustPressed
              numberValue16 = 0
              numberValue17 = 241
              workValue14 = workValue14(numberValue16, numberValue17)
              if not workValue14 then
                workValue14 = IsControlJustPressed
                numberValue16 = 0
                numberValue17 = 173
                workValue14 = workValue14(numberValue16, numberValue17)
                if not workValue14 then
                  workValue14 = IsControlJustPressed
                  numberValue16 = 0
                  numberValue17 = 242
                  workValue14 = workValue14(numberValue16, numberValue17)
                  if not workValue14 then
                    goto flow_label_67
                  end
                end
              end
            end
            workValue14 = flag7.index
            numberValue16 = dataTable4.index
            if workValue14 ~= numberValue16 then
              workValue14 = flag7
              dataTable4 = workValue14
            end
            ::flow_label_67::
            workValue14 = flag7.name
            numberValue16 = dataTable4.name
            if workValue14 == numberValue16 then
              workValue14 = dataTable11
              if workValue14 then
                workValue14 = dataTable3
                if nil ~= workValue14 then
                  workValue14 = dataTable3.id
                  numberValue16 = workValue8
                  numberValue17 = flag7.value
                  numberValue16 = numberValue16(numberValue17)
                  numberValue16 = #numberValue16
                  if workValue14 <= numberValue16 then
                    workValue14 = dataTable3.id
                    if workValue14 >= 0 then
                      arg4 = dataTable3.id
                      workValue14 = workValue9
                      numberValue16 = arg4
                      numberValue17 = dataTable4.value
                      numberValue18 = flag7.name
                      workValue14(numberValue16, numberValue17, numberValue18)
                      workValue14 = false
                      dataTable11 = workValue14
                  end
                end
                else
                  workValue14 = false
                  dataTable11 = workValue14
                end
              else
                numberValue16 = textValue6
                workValue14 = rageUiCall2
                workValue14 = workValue14[numberValue16]
                workValue14 = workValue14.currentListIndex
                if workValue14 ~= arg4 then
                  workValue14 = workValue9
                  numberValue16 = arg4
                  numberValue17 = dataTable4.value
                  numberValue18 = flag7.name
                  workValue14(numberValue16, numberValue17, numberValue18)
                end
              end
              numberValue16 = textValue6
              workValue14 = rageUiCall2
              workValue14 = workValue14[numberValue16]
              workValue14.currentListIndex = arg4
            end
            workValue14 = flag6
            if workValue14 then
              workValue14 = dataTable
              if not workValue14 then
                workValue14 = IsControlJustReleased
                numberValue16 = 0
                numberValue17 = 178
                workValue14 = workValue14(numberValue16, numberValue17)
                if workValue14 then
                  workValue14 = true
                  dataTable6 = workValue14
                  workValue14 = workValue9
                  numberValue16 = arg4
                  numberValue17 = dataTable4.value
                  numberValue18 = dataTable4.name
                  workValue14(numberValue16, numberValue17, numberValue18)
                  workValue14 = TriggerServerEvent
                  numberValue16 = "4e23f069b7"
                  numberValue17 = rageUiCall4
                  numberValue18 = 1000
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4e23f069b7".
                  workValue14(numberValue16, numberValue17, numberValue18)
                end
              end
            end
          end
          if arg32 then
            workValue14 = eventRegistration
            numberValue16 = flag7.name
            numberValue17 = dataTable4.value
            numberValue18 = arg4
            workValue14 = workValue14(numberValue16, numberValue17, numberValue18)
            if not workValue14 then
              workValue14 = table
              workValue14 = workValue14.insert
              numberValue16 = rageUiCall4
              numberValue17 = {}
              numberValue18 = flag7.name
              numberValue17.part = numberValue18
              numberValue18 = dataTable4.value
              numberValue17.collection = numberValue18
              numberValue17.current = arg4
              workValue14(numberValue16, numberValue17)
              workValue14 = TriggerServerEvent
              numberValue16 = "4e23f069b7"
              numberValue17 = rageUiCall4
              numberValue18 = 1000
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4e23f069b7".
              workValue14(numberValue16, numberValue17, numberValue18)
            else
              workValue14 = notify
              numberValue16 = "~r~You have already purchased this tattoo."
              -- Beginner: Show a notification to the player.
              workValue14(numberValue16)
            end
          end
        end

        -- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
        function workValue5()
          local arg12, arg22
        end
        workValue6 = nil
        -- Beginner: Draw a RageUI list selector.
        cmgCall4(hashValue2, workValue16, textValue7, textValue9, dataTable2, flag, workValue4, workValue5, workValue6)
      end
    end
    arg1(arg2, arg3, tableHelper, workValue13, numberValue15)
  end
end
rageUiCall(numberValue8, workValue11, workValue12, cmgCall3)
