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
local cmgOperation, cmgOperation2, stateFlag6, rageUiOperation2, dataCollection8, dataCollection9, rageUiOperation3, rageUiOperation4, dataCollection10, dataCollection11, dataCollection, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, workingValue7, workingValue8, workingValue9, workingValue10, eventHandler, rageUiOperation, number8, workingValue11, workingValue12, cmgOperation3, text3
cmgOperation = RMenu
cmgOperation = cmgOperation.Add
cmgOperation2 = "CMGtattoos"
stateFlag6 = "mainMenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
dataCollection8 = ""
dataCollection9 = "Tattoo Store"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
dataCollection10 = "shopui_title_tattoos2"
dataCollection11 = "shopui_title_tattoos2"
rageUiOperation2, dataCollection8, dataCollection9, rageUiOperation3, rageUiOperation4, dataCollection10, dataCollection11, dataCollection, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, workingValue7, workingValue8, workingValue9, workingValue10, eventHandler, rageUiOperation, number8, workingValue11, workingValue12, cmgOperation3, text3 = rageUiOperation2(dataCollection8, dataCollection9, rageUiOperation3, rageUiOperation4, dataCollection10, dataCollection11)
cmgOperation(cmgOperation2, stateFlag6, rageUiOperation2, dataCollection8, dataCollection9, rageUiOperation3, rageUiOperation4, dataCollection10, dataCollection11, dataCollection, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, workingValue7, workingValue8, workingValue9, workingValue10, eventHandler, rageUiOperation, number8, workingValue11, workingValue12, cmgOperation3, text3)
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation2 = "cfg/ped_cfg/cfg_tattoos"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation2)
cmgOperation2 = -1
stateFlag6 = false
rageUiOperation2 = {}
dataCollection8 = {}
dataCollection8.name = "Part 1"
dataCollection8.value = "mpbeach_overlays"
dataCollection8.currentListIndex = 1
dataCollection9 = {}
dataCollection9.name = "Part 2"
dataCollection9.value = "mpbusiness_overlays"
dataCollection9.currentListIndex = 1
rageUiOperation3 = {}
rageUiOperation3.name = "Part 3"
rageUiOperation3.value = "mphipster_overlays"
rageUiOperation3.currentListIndex = 1
rageUiOperation4 = {}
rageUiOperation4.name = "Part 4"
rageUiOperation4.value = "mpbiker_overlays"
rageUiOperation4.currentListIndex = 1
dataCollection10 = {}
dataCollection10.name = "Part 5"
dataCollection10.value = "mpairraces_overlays"
dataCollection10.currentListIndex = 1
dataCollection11 = {}
dataCollection11.name = "Part 6"
dataCollection11.value = "mpbeach_overlays"
dataCollection11.currentListIndex = 1
dataCollection = {}
dataCollection.name = "Part 7"
dataCollection.value = "mpchristmas2_overlays"
dataCollection.currentListIndex = 1
dataCollection3 = {}
dataCollection3.name = "Part 8"
dataCollection3.value = "mpgunrunning_overlays"
dataCollection3.currentListIndex = 1
dataCollection4 = {}
dataCollection4.name = "Part 9"
dataCollection4.value = "mpimportexport_overlays"
dataCollection4.currentListIndex = 1
dataCollection5 = {}
dataCollection5.name = "Part 10"
dataCollection5.value = "mplowrider2_overlays"
dataCollection5.currentListIndex = 1
dataCollection6 = {}
dataCollection6.name = "Part 11"
dataCollection6.value = "mplowrider_overlays"
dataCollection6.currentListIndex = 1
dataCollection7 = {}
dataCollection7.name = "Custom Tattoos"
dataCollection7.value = "new_overlays"
dataCollection7.currentListIndex = 1
rageUiOperation2[1] = dataCollection8
rageUiOperation2[2] = dataCollection9
rageUiOperation2[3] = rageUiOperation3
rageUiOperation2[4] = rageUiOperation4
rageUiOperation2[5] = dataCollection10
rageUiOperation2[6] = dataCollection11
rageUiOperation2[7] = dataCollection
rageUiOperation2[8] = dataCollection3
rageUiOperation2[9] = dataCollection4
rageUiOperation2[10] = dataCollection5
rageUiOperation2[11] = dataCollection6
rageUiOperation2[12] = dataCollection7
dataCollection8 = cmgOperation.tattoosList
dataCollection9 = cmgOperation.tattoosShops
rageUiOperation3 = {}
rageUiOperation4 = {}
dataCollection10 = nil
dataCollection11 = false
dataCollection = false
dataCollection3 = {}
dataCollection4 = {}
dataCollection5 = false
dataCollection6 = false

-- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
function dataCollection7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.GetRageInputText
  localValue2 = "Enter tattoo ID you want to wear"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue2 = false
    dataCollection = localValue2
    localValue2 = tonumber
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if nil ~= localValue2 then
      localValue3 = localValue2 + 1
      dataCollection3.id = localValue3
    else
      localValue3 = dataCollection4.index
      dataCollection3.id = localValue3
    end
    localValue3 = true
    dataCollection11 = localValue3
    return localValue1
  end
  localValue2 = false
  dataCollection = localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, tableHelper, workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = nil
  if "table" == localValue2 then
    tableHelper = {}
    localValue3 = tableHelper
    tableHelper = next
    workingValue13 = localValue1
    number15 = nil
    hashValue = nil
    for workingValue15, cmgOperation5 in tableHelper, workingValue13, number15, hashValue do
      text8 = workingValue7
      workingValue = workingValue15
      text8 = text8(workingValue)
      workingValue = workingValue7
      workingValue2 = cmgOperation5
      workingValue = workingValue(workingValue2)
      localValue3[text8] = workingValue
    end
    tableHelper = setmetatable
    workingValue13 = localValue3
    number15 = workingValue7
    hashValue = getmetatable
    workingValue15 = localValue1
    hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2 = hashValue(workingValue15)
    number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2 = number15(hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2)
    tableHelper(workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2)
  else
    localValue3 = localValue1
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, tableHelper, workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue
  localValue2 = dataCollection8
  localValue2 = localValue2[localValue1]
  localValue2 = #localValue2
  localValue2 = localValue2 - 1
  localValue3 = {}
  tableHelper = "0/"
  workingValue13 = localValue2
  tableHelper = tableHelper .. workingValue13
  localValue3[1] = tableHelper
  tableHelper = 1
  workingValue13 = dataCollection8
  workingValue13 = workingValue13[localValue1]
  workingValue13 = #workingValue13
  workingValue13 = workingValue13 - 1
  number15 = 1
  for hashValue = tableHelper, workingValue13, number15 do
    workingValue15 = #localValue3
    workingValue15 = workingValue15 + 1
    cmgOperation5 = hashValue
    text8 = "/"
    workingValue = localValue2
    cmgOperation5 = cmgOperation5 .. text8 .. workingValue
    localValue3[workingValue15] = cmgOperation5
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local tableHelper, workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3
  tableHelper = SetEntityHeading
  workingValue13 = CMG
  workingValue13 = workingValue13.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workingValue13 = workingValue13()
  number15 = 297.7296
  -- Beginner: Change the direction an entity is facing.
  tableHelper(workingValue13, number15)
  if nil ~= localValue1 and nil ~= localValue2 and nil ~= localValue3 then
    tableHelper = dataCollection6
    if tableHelper then
      tableHelper = 1
      workingValue13 = rageUiOperation4
      workingValue13 = #workingValue13
      number15 = 1
      for hashValue = tableHelper, workingValue13, number15 do
        workingValue15 = rageUiOperation4
        workingValue15 = workingValue15[hashValue]
        if nil ~= workingValue15 then
          workingValue15 = rageUiOperation4
          workingValue15 = workingValue15[hashValue]
          workingValue15 = workingValue15.current
          if workingValue15 == localValue1 then
            workingValue15 = table
            workingValue15 = workingValue15.remove
            cmgOperation5 = rageUiOperation4
            text8 = hashValue
            workingValue15(cmgOperation5, text8)
          end
        end
      end
      tableHelper = ClearPedDecorations
      workingValue13 = CMG
      workingValue13 = workingValue13.getPlayerPed
      workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3 = workingValue13()
      tableHelper(workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3)
      tableHelper = 1
      workingValue13 = rageUiOperation4
      workingValue13 = #workingValue13
      number15 = 1
      for hashValue = tableHelper, workingValue13, number15 do
        workingValue15 = AddPedDecorationFromHashes
        cmgOperation5 = CMG
        cmgOperation5 = cmgOperation5.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation5 = cmgOperation5()
        text8 = GetHashKey
        workingValue = rageUiOperation4
        workingValue = workingValue[hashValue]
        workingValue = workingValue.collection
        -- Beginner: result below is hash.
        text8 = text8(workingValue)
        workingValue = GetHashKey
        workingValue2 = rageUiOperation4
        workingValue2 = workingValue2[hashValue]
        workingValue3 = workingValue2.collection
        workingValue2 = dataCollection8
        workingValue2 = workingValue2[workingValue3]
        workingValue3 = rageUiOperation4
        workingValue3 = workingValue3[hashValue]
        workingValue3 = workingValue3.current
        workingValue2 = workingValue2[workingValue3]
        workingValue2 = workingValue2.nameHash
        workingValue, workingValue2, workingValue3 = workingValue(workingValue2)
        workingValue15(cmgOperation5, text8, workingValue, workingValue2, workingValue3)
      end
      tableHelper = false
      dataCollection6 = tableHelper
    else
      tableHelper = GetEntityModel
      workingValue13 = CMG
      workingValue13 = workingValue13.getPlayerPed
      workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3 = workingValue13()
      -- Beginner: result below is modelHash.
      tableHelper = tableHelper(workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3)
      if -1667301416 == tableHelper then
        tableHelper = CMG
        tableHelper = tableHelper.loadCustomisationPreset
        workingValue13 = "TattooMale"
        tableHelper(workingValue13)
      else
        tableHelper = CMG
        tableHelper = tableHelper.loadCustomisationPreset
        workingValue13 = "TattooFemale"
        tableHelper(workingValue13)
      end
      tableHelper = ClearPedDecorations
      workingValue13 = CMG
      workingValue13 = workingValue13.getPlayerPed
      workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3 = workingValue13()
      tableHelper(workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3)
      tableHelper = 1
      workingValue13 = rageUiOperation4
      workingValue13 = #workingValue13
      number15 = 1
      for hashValue = tableHelper, workingValue13, number15 do
        workingValue15 = AddPedDecorationFromHashes
        cmgOperation5 = CMG
        cmgOperation5 = cmgOperation5.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation5 = cmgOperation5()
        text8 = GetHashKey
        workingValue = rageUiOperation4
        workingValue = workingValue[hashValue]
        workingValue = workingValue.collection
        -- Beginner: result below is hash.
        text8 = text8(workingValue)
        workingValue = GetHashKey
        workingValue2 = rageUiOperation4
        workingValue2 = workingValue2[hashValue]
        workingValue3 = workingValue2.collection
        workingValue2 = dataCollection8
        workingValue2 = workingValue2[workingValue3]
        workingValue3 = rageUiOperation4
        workingValue3 = workingValue3[hashValue]
        workingValue3 = workingValue3.current
        workingValue2 = workingValue2[workingValue3]
        workingValue2 = workingValue2.nameHash
        workingValue, workingValue2, workingValue3 = workingValue(workingValue2)
        workingValue15(cmgOperation5, text8, workingValue, workingValue2, workingValue3)
      end
      tableHelper = AddPedDecorationFromHashes
      workingValue13 = CMG
      workingValue13 = workingValue13.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      workingValue13 = workingValue13()
      number15 = GetHashKey
      hashValue = localValue2
      -- Beginner: result below is hash.
      number15 = number15(hashValue)
      hashValue = GetHashKey
      workingValue15 = dataCollection8
      workingValue15 = workingValue15[localValue2]
      workingValue15 = workingValue15[localValue1]
      workingValue15 = workingValue15.nameHash
      hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3 = hashValue(workingValue15)
      tableHelper(workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3)
      tableHelper = DoesCamExist
      workingValue13 = cmgOperation2
      tableHelper = tableHelper(workingValue13)
      if not tableHelper then
        tableHelper = CreateCam
        workingValue13 = "DEFAULT_SCRIPTED_CAMERA"
        number15 = true
        -- Beginner: result below is cameraHandle.
        tableHelper = tableHelper(workingValue13, number15)
        cmgOperation2 = tableHelper
        tableHelper = GetEntityCoords
        workingValue13 = CMG
        workingValue13 = workingValue13.getPlayerPed
        workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3 = workingValue13()
        -- Beginner: result below is entityCoords.
        tableHelper = tableHelper(workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3)
        workingValue13 = SetCamCoord
        number15 = cmgOperation2
        hashValue = tableHelper.x
        workingValue15 = tableHelper.y
        cmgOperation5 = tableHelper.z
        workingValue13(number15, hashValue, workingValue15, cmgOperation5)
        workingValue13 = SetCamRot
        number15 = cmgOperation2
        hashValue = 0.0
        workingValue15 = 0.0
        cmgOperation5 = 0.0
        text8 = 2
        workingValue13(number15, hashValue, workingValue15, cmgOperation5, text8)
        workingValue13 = SetCamActive
        number15 = cmgOperation2
        hashValue = true
        workingValue13(number15, hashValue)
        workingValue13 = RenderScriptCams
        number15 = true
        hashValue = false
        workingValue15 = 0
        cmgOperation5 = true
        text8 = true
        workingValue13(number15, hashValue, workingValue15, cmgOperation5, text8)
        workingValue13 = SetCamCoord
        number15 = cmgOperation2
        hashValue = tableHelper.x
        workingValue15 = tableHelper.y
        cmgOperation5 = tableHelper.z
        workingValue13(number15, hashValue, workingValue15, cmgOperation5)
      end
      tableHelper = table
      tableHelper = tableHelper.unpack
      workingValue13 = GetEntityCoords
      number15 = CMG
      number15 = number15.getPlayerPed
      number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3 = number15()
      workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3 = workingValue13(number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3)
      tableHelper, workingValue13, number15 = tableHelper(workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3)
      hashValue = SetCamCoord
      workingValue15 = cmgOperation2
      cmgOperation5 = dataCollection8
      cmgOperation5 = cmgOperation5[localValue2]
      cmgOperation5 = cmgOperation5[localValue1]
      cmgOperation5 = cmgOperation5.addedX
      cmgOperation5 = tableHelper + cmgOperation5
      text8 = dataCollection8
      text8 = text8[localValue2]
      text8 = text8[localValue1]
      text8 = text8.addedY
      text8 = workingValue13 + text8
      workingValue = dataCollection8
      workingValue = workingValue[localValue2]
      workingValue = workingValue[localValue1]
      workingValue = workingValue.addedZ
      workingValue = number15 + workingValue
      hashValue(workingValue15, cmgOperation5, text8, workingValue)
      hashValue = SetCamRot
      workingValue15 = cmgOperation2
      cmgOperation5 = 0.0
      text8 = 0.0
      workingValue = dataCollection8
      workingValue = workingValue[localValue2]
      workingValue = workingValue[localValue1]
      workingValue = workingValue.rotZ
      workingValue2 = 2
      hashValue(workingValue15, cmgOperation5, text8, workingValue, workingValue2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, tableHelper, workingValue13, number15
  localValue1 = {}
  localValue2 = {}
  localValue2.label = "Enter Tattoo ID "
  localValue2.button = "~INPUT_CELLPHONE_EXTRA_OPTION~"
  localValue3 = {}
  localValue3.label = "Remove Current Tattoo "
  localValue3.button = "~INPUT_CELLPHONE_OPTION~"
  tableHelper = {}
  tableHelper.label = "Purchase Current Tattoo "
  tableHelper.button = "~INPUT_CELLPHONE_SELECT~"
  workingValue13 = {}
  workingValue13.label = "Next Index "
  workingValue13.button = "~INPUT_CELLPHONE_RIGHT~"
  number15 = {}
  number15.label = "Previous Index "
  number15.button = "~INPUT_CELLPHONE_LEFT~"
  localValue1[1] = localValue2
  localValue1[2] = localValue3
  localValue1[3] = tableHelper
  localValue1[4] = workingValue13
  localValue1[5] = number15
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local serverEventCall, text2, number12, text6, stateFlag7, cmgOperation4, hashValue2, workingValue16, text7, text9
    serverEventCall = Wait
    text2 = 0
    serverEventCall(text2)
    serverEventCall = RequestScaleformMovie
    text2 = "instructional_buttons"
    -- Beginner: result below is scaleformHandle.
    serverEventCall = serverEventCall(text2)
    while true do
      text2 = HasScaleformMovieLoaded
      number12 = serverEventCall
      text2 = text2(number12)
      if text2 then
        break
      end
      text2 = Wait
      number12 = 0
      text2(number12)
    end
    text2 = BeginScaleformMovieMethod
    number12 = serverEventCall
    text6 = "CLEAR_ALL"
    text2(number12, text6)
    text2 = BeginScaleformMovieMethod
    number12 = serverEventCall
    text6 = "TOGGLE_MOUSE_BUTTONS"
    text2(number12, text6)
    text2 = ScaleformMovieMethodAddParamBool
    number12 = false
    text2(number12)
    text2 = EndScaleformMovieMethod
    text2()
    text2 = ipairs
    number12 = localValue1
    text2, number12, text6, stateFlag7 = text2(number12)
    for cmgOperation4, hashValue2 in text2, number12, text6, stateFlag7 do
      workingValue16 = BeginScaleformMovieMethod
      text7 = serverEventCall
      text9 = "SET_DATA_SLOT"
      workingValue16(text7, text9)
      workingValue16 = ScaleformMovieMethodAddParamInt
      text7 = cmgOperation4 - 1
      workingValue16(text7)
      workingValue16 = _ENV
      text7 = "ScaleformMovieMethodAddParamPlayerNameString"
      workingValue16 = workingValue16[text7]
      text7 = hashValue2.button
      workingValue16(text7)
      workingValue16 = _ENV
      text7 = "ScaleformMovieMethodAddParamTextureNameString"
      workingValue16 = workingValue16[text7]
      text7 = hashValue2.label
      workingValue16(text7)
      workingValue16 = EndScaleformMovieMethod
      workingValue16()
    end
    text2 = BeginScaleformMovieMethod
    number12 = serverEventCall
    text6 = "DRAW_INSTRUCTIONAL_BUTTONS"
    text2(number12, text6)
    text2 = ScaleformMovieMethodAddParamInt
    number12 = -1
    text2(number12)
    text2 = EndScaleformMovieMethod
    text2()
    while true do
      text2 = stateFlag6
      if not text2 then
        break
      end
      text2 = Wait
      number12 = 0
      text2(number12)
      text2 = DrawScaleformMovieFullscreen
      number12 = serverEventCall
      text6 = 255
      stateFlag7 = 255
      cmgOperation4 = 255
      hashValue2 = 255
      workingValue16 = 0
      text2(number12, text6, stateFlag7, cmgOperation4, hashValue2, workingValue16)
    end
    text2 = false
    dataCollection5 = text2
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
eventHandler = AddEventHandler
rageUiOperation = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: number8; parameters: localValue1, localValue2) ===
function number8(localValue1, localValue2)
  local localValue3, tableHelper, workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2, workingValue3, stateFlag2, number, number2, number3, text, number4, number5, number6, number7, number9, number10, stateFlag3, stateFlag4, stateFlag5, text4, text5, number11, number13, number14
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local serverEventCall, text2, number12, text6, stateFlag7
      serverEventCall = TriggerServerEvent
      text2 = "195b53ce8c"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "195b53ce8c".
      serverEventCall(text2)
      serverEventCall = Citizen
      serverEventCall = serverEventCall.Wait
      text2 = 500
      serverEventCall(text2)
      serverEventCall = true
      stateFlag6 = serverEventCall
      serverEventCall = workingValue7
      text2 = rageUiOperation3
      serverEventCall = serverEventCall(text2)
      rageUiOperation4 = serverEventCall
      serverEventCall = tCMG
      serverEventCall = serverEventCall.getCustomization
      serverEventCall = serverEventCall()
      dataCollection10 = serverEventCall
      serverEventCall = RageUI
      serverEventCall = serverEventCall.Visible
      text2 = RMenu
      number12 = text2
      text2 = text2.Get
      text6 = "CMGtattoos"
      stateFlag7 = "mainMenu"
      -- Beginner: result below is menu.
      text2 = text2(number12, text6, stateFlag7)
      number12 = true
      serverEventCall(text2, number12)
    end

    -- === HELPER FUNCTION: tableHelper() ===
    function tableHelper()
      local serverEventCall, text2, number12, text6, stateFlag7, cmgOperation4, hashValue2, workingValue16, text7, text9
      serverEventCall = DoesCamExist
      text2 = cmgOperation2
      serverEventCall = serverEventCall(text2)
      if serverEventCall then
        serverEventCall = RenderScriptCams
        text2 = false
        number12 = false
        text6 = 0
        stateFlag7 = true
        cmgOperation4 = false
        serverEventCall(text2, number12, text6, stateFlag7, cmgOperation4)
        serverEventCall = DestroyCam
        text2 = cmgOperation2
        number12 = false
        serverEventCall(text2, number12)
      end
      serverEventCall = RageUI
      serverEventCall = serverEventCall.Visible
      text2 = RMenu
      number12 = text2
      text2 = text2.Get
      text6 = "CMGtattoos"
      stateFlag7 = "mainMenu"
      -- Beginner: result below is menu.
      text2 = text2(number12, text6, stateFlag7)
      number12 = false
      serverEventCall(text2, number12)
      serverEventCall = tCMG
      serverEventCall = serverEventCall.setCustomization
      text2 = dataCollection10
      serverEventCall(text2)
      serverEventCall = nil
      dataCollection10 = serverEventCall
      serverEventCall = ClearPedDecorations
      text2 = CMG
      text2 = text2.getPlayerPed
      text2, number12, text6, stateFlag7, cmgOperation4, hashValue2, workingValue16, text7, text9 = text2()
      serverEventCall(text2, number12, text6, stateFlag7, cmgOperation4, hashValue2, workingValue16, text7, text9)
      serverEventCall = 1
      text2 = rageUiOperation4
      text2 = #text2
      number12 = 1
      for text6 = serverEventCall, text2, number12 do
        stateFlag7 = AddPedDecorationFromHashes
        cmgOperation4 = CMG
        cmgOperation4 = cmgOperation4.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation4 = cmgOperation4()
        hashValue2 = GetHashKey
        workingValue16 = rageUiOperation4
        workingValue16 = workingValue16[text6]
        workingValue16 = workingValue16.collection
        -- Beginner: result below is hash.
        hashValue2 = hashValue2(workingValue16)
        workingValue16 = GetHashKey
        text7 = rageUiOperation4
        text7 = text7[text6]
        text9 = text7.collection
        text7 = dataCollection8
        text7 = text7[text9]
        text9 = rageUiOperation4
        text9 = text9[text6]
        text9 = text9.current
        text7 = text7[text9]
        text7 = text7.nameHash
        workingValue16, text7, text9 = workingValue16(text7)
        stateFlag7(cmgOperation4, hashValue2, workingValue16, text7, text9)
      end
      serverEventCall = false
      stateFlag6 = serverEventCall
      serverEventCall = {}
      rageUiOperation3 = serverEventCall
    end

    -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
    function workingValue13()
      local serverEventCall, text2, number12, text6, stateFlag7
      serverEventCall = stateFlag6
      if serverEventCall then
        serverEventCall = dataCollection5
        if not serverEventCall then
          serverEventCall = workingValue10
          serverEventCall()
          serverEventCall = true
          dataCollection5 = serverEventCall
        end
      end
      serverEventCall = RageUI
      serverEventCall = serverEventCall.Visible
      text2 = RMenu
      number12 = text2
      text2 = text2.Get
      text6 = "CMGtattoos"
      stateFlag7 = "mainMenu"
      text2, number12, text6, stateFlag7 = text2(number12, text6, stateFlag7)
      -- Beginner: result below is menuVisible.
      serverEventCall = serverEventCall(text2, number12, text6, stateFlag7)
      if serverEventCall then
        serverEventCall = IsControlJustPressed
        text2 = 0
        number12 = 179
        serverEventCall = serverEventCall(text2, number12)
        if serverEventCall then
          serverEventCall = dataCollection
          if not serverEventCall then
            serverEventCall = true
            dataCollection = serverEventCall
            serverEventCall = dataCollection7
            serverEventCall()
          end
        end
      end
    end
    number15 = pairs
    hashValue = dataCollection9
    number15, hashValue, workingValue15, cmgOperation5 = number15(hashValue)
    for text8, workingValue in number15, hashValue, workingValue15, cmgOperation5 do
      workingValue2 = RequestStreamedTextureDict
      workingValue3 = "mptattoos1"
      stateFlag2 = false
      workingValue2(workingValue3, stateFlag2)
      workingValue2 = Wait
      workingValue3 = 100
      workingValue2(workingValue3)
      workingValue2 = CMG
      workingValue2 = workingValue2.createArea
      workingValue3 = "tattoParlour_"
      stateFlag2 = text8
      workingValue3 = workingValue3 .. stateFlag2
      stateFlag2 = workingValue
      number = 1.5
      number2 = 6
      number3 = localValue3
      text = tableHelper
      number4 = workingValue13
      -- Beginner: Create an interaction area around a world position.
      workingValue2(workingValue3, stateFlag2, number, number2, number3, text, number4)
      workingValue2 = tCMG
      workingValue2 = workingValue2.addBlip
      workingValue3 = workingValue.x
      stateFlag2 = workingValue.y
      number = workingValue.z
      number2 = 75
      number3 = 0
      text = "Tattoo Parlour"
      -- Beginner: Create a minimap blip.
      workingValue2(workingValue3, stateFlag2, number, number2, number3, text)
      workingValue2 = tCMG
      workingValue2 = workingValue2.addMarker
      workingValue3 = workingValue.x
      stateFlag2 = workingValue.y
      number = workingValue.z
      number2 = 0.6
      number3 = 0.6
      text = 0.6
      number4 = 10
      number5 = 255
      number6 = 81
      number7 = 170
      number9 = 50
      number10 = 9
      stateFlag3 = false
      stateFlag4 = false
      stateFlag5 = true
      text4 = "mptattoos1"
      text5 = "tattoo_defend_safehouse"
      number11 = 90.0
      number13 = 90.0
      number14 = 0.0
      -- Beginner: Create a world marker.
      workingValue2(workingValue3, stateFlag2, number, number2, number3, text, number4, number5, number6, number7, number9, number10, stateFlag3, stateFlag4, stateFlag5, text4, text5, number11, number13, number14)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandler(rageUiOperation, number8)
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, localValue3
  localValue1 = false
  while true do
    localValue2 = Wait
    localValue3 = 500
    localValue2(localValue3)
    localValue2 = tCMG
    localValue2 = localValue2.isInComa
    localValue2 = localValue2()
    if localValue2 and not localValue1 then
      localValue1 = true
    end
    localValue2 = tCMG
    localValue2 = localValue2.isInComa
    localValue2 = localValue2()
    if not localValue2 and localValue1 then
      localValue2 = Wait
      localValue3 = 5000
      localValue2(localValue3)
      localValue2 = TriggerServerEvent
      localValue3 = "195b53ce8c"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "195b53ce8c".
      localValue2(localValue3)
      localValue1 = false
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(rageUiOperation)
eventHandler = RegisterNetEvent
rageUiOperation = "9bb006b498"
-- Beginner: this function handles network event "9bb006b498".

-- === HELPER FUNCTION (decompiler name: number8; parameters: localValue1) ===
function number8(localValue1)
  local localValue2, localValue3, tableHelper, workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8, workingValue, workingValue2
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 500
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.unpackTable
  localValue3 = localValue1
  tableHelper = {}
  workingValue13 = "current"
  number15 = "part"
  hashValue = "collection"
  tableHelper[1] = workingValue13
  tableHelper[2] = number15
  tableHelper[3] = hashValue
  localValue2 = localValue2(localValue3, tableHelper)
  localValue3 = 1
  tableHelper = #localValue2
  workingValue13 = 1
  for number15 = localValue3, tableHelper, workingValue13 do
    hashValue = 1
    workingValue15 = rageUiOperation2
    workingValue15 = #workingValue15
    cmgOperation5 = 1
    for text8 = hashValue, workingValue15, cmgOperation5 do
      workingValue = rageUiOperation2
      workingValue = workingValue[text8]
      workingValue = workingValue.name
      workingValue2 = localValue2[number15]
      workingValue2 = workingValue2.part
      if workingValue == workingValue2 then
        workingValue = rageUiOperation2
        workingValue = workingValue[text8]
        workingValue2 = localValue2[number15]
        workingValue2 = workingValue2.current
        workingValue.currentListIndex = workingValue2
      end
    end
    hashValue = AddPedDecorationFromHashes
    workingValue15 = CMG
    workingValue15 = workingValue15.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    workingValue15 = workingValue15()
    cmgOperation5 = GetHashKey
    text8 = localValue2[number15]
    text8 = text8.collection
    -- Beginner: result below is hash.
    cmgOperation5 = cmgOperation5(text8)
    text8 = GetHashKey
    workingValue = localValue2[number15]
    workingValue2 = workingValue.collection
    workingValue = dataCollection8
    workingValue = workingValue[workingValue2]
    workingValue2 = localValue2[number15]
    workingValue2 = workingValue2.current
    workingValue = workingValue[workingValue2]
    workingValue = workingValue.nameHash
    text8, workingValue, workingValue2 = text8(workingValue)
    hashValue(workingValue15, cmgOperation5, text8, workingValue, workingValue2)
    hashValue = table
    hashValue = hashValue.insert
    workingValue15 = rageUiOperation3
    cmgOperation5 = localValue2[number15]
    hashValue(workingValue15, cmgOperation5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9bb006b498".
eventHandler(rageUiOperation, number8)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2, localValue3) ===
function eventHandler(localValue1, localValue2, localValue3)
  local tableHelper, workingValue13, number15, hashValue, workingValue15, cmgOperation5, text8
  tableHelper = pairs
  workingValue13 = rageUiOperation3
  tableHelper, workingValue13, number15, hashValue = tableHelper(workingValue13)
  for workingValue15, cmgOperation5 in tableHelper, workingValue13, number15, hashValue do
    text8 = cmgOperation5.part
    if text8 == localValue1 then
      text8 = cmgOperation5.collection
      if text8 == localValue2 then
        text8 = cmgOperation5.current
        if text8 == localValue3 then
          text8 = true
          return text8
        end
      end
    end
  end
  tableHelper = false
  return tableHelper
end
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
number8 = 1.0
workingValue11 = RMenu
workingValue12 = workingValue11
workingValue11 = workingValue11.Get
cmgOperation3 = "CMGtattoos"
text3 = "mainMenu"
-- Beginner: result below is menu.
workingValue11 = workingValue11(workingValue12, cmgOperation3, text3)
workingValue12 = nil

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, tableHelper, workingValue13, number15
  localValue1 = dataCollection
  if not localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.IsVisible
    localValue2 = RMenu
    localValue3 = localValue2
    localValue2 = localValue2.Get
    tableHelper = "CMGtattoos"
    workingValue13 = "mainMenu"
    -- Beginner: result below is menu.
    localValue2 = localValue2(localValue3, tableHelper, workingValue13)
    localValue3 = true
    tableHelper = false
    workingValue13 = true

    -- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
    function number15()
      local serverEventCall, text2, number12, text6, stateFlag7, cmgOperation4, hashValue2, workingValue16, text7, text9, dataCollection2, stateFlag, workingValue4, workingValue5, workingValue6
      serverEventCall = 1
      text2 = rageUiOperation2
      text2 = #text2
      number12 = 1
      for text6 = serverEventCall, text2, number12 do
        stateFlag7 = rageUiOperation2
        stateFlag7 = stateFlag7[text6]
        dataCollection4 = stateFlag7
        cmgOperation4 = RageUI
        cmgOperation4 = cmgOperation4.List
        hashValue2 = stateFlag7.name
        workingValue16 = workingValue8
        text7 = stateFlag7.value
        workingValue16 = workingValue16(text7)
        text7 = rageUiOperation2
        text7 = text7[text6]
        text7 = text7.currentListIndex
        text9 = "Tattoo Add/Removal Price: \194\1631,000"
        dataCollection2 = {}
        stateFlag = true

        -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue12, localValue22, localValue32, localValue4) ===
        function workingValue4(localValue12, localValue22, localValue32, localValue4)
          local workingValue14, number16, number17, number18, stateFlag8, stateFlag9
          if localValue22 then
            workingValue14 = IsControlJustPressed
            number16 = 0
            number17 = 177
            workingValue14 = workingValue14(number16, number17)
            if not workingValue14 then
              workingValue14 = IsControlJustPressed
              number16 = 0
              number17 = 194
              workingValue14 = workingValue14(number16, number17)
              if not workingValue14 then
                workingValue14 = IsControlJustPressed
                number16 = 0
                number17 = 202
                workingValue14 = workingValue14(number16, number17)
                if not workingValue14 then
                  goto continueAtStep37
                end
              end
            end
            workingValue14 = DoesCamExist
            number16 = cmgOperation2
            workingValue14 = workingValue14(number16)
            if workingValue14 then
              workingValue14 = RenderScriptCams
              number16 = false
              number17 = false
              number18 = 0
              stateFlag8 = true
              stateFlag9 = false
              workingValue14(number16, number17, number18, stateFlag8, stateFlag9)
              workingValue14 = DestroyCam
              number16 = cmgOperation2
              number17 = false
              workingValue14(number16, number17)
            end
            ::continueAtStep37::
            workingValue14 = IsControlJustPressed
            number16 = 0
            number17 = 172
            workingValue14 = workingValue14(number16, number17)
            if not workingValue14 then
              workingValue14 = IsControlJustPressed
              number16 = 0
              number17 = 241
              workingValue14 = workingValue14(number16, number17)
              if not workingValue14 then
                workingValue14 = IsControlJustPressed
                number16 = 0
                number17 = 173
                workingValue14 = workingValue14(number16, number17)
                if not workingValue14 then
                  workingValue14 = IsControlJustPressed
                  number16 = 0
                  number17 = 242
                  workingValue14 = workingValue14(number16, number17)
                  if not workingValue14 then
                    goto continueAtStep67
                  end
                end
              end
            end
            workingValue14 = stateFlag7.index
            number16 = dataCollection4.index
            if workingValue14 ~= number16 then
              workingValue14 = stateFlag7
              dataCollection4 = workingValue14
            end
            ::continueAtStep67::
            workingValue14 = stateFlag7.name
            number16 = dataCollection4.name
            if workingValue14 == number16 then
              workingValue14 = dataCollection11
              if workingValue14 then
                workingValue14 = dataCollection3
                if nil ~= workingValue14 then
                  workingValue14 = dataCollection3.id
                  number16 = workingValue8
                  number17 = stateFlag7.value
                  number16 = number16(number17)
                  number16 = #number16
                  if workingValue14 <= number16 then
                    workingValue14 = dataCollection3.id
                    if workingValue14 >= 0 then
                      localValue4 = dataCollection3.id
                      workingValue14 = workingValue9
                      number16 = localValue4
                      number17 = dataCollection4.value
                      number18 = stateFlag7.name
                      workingValue14(number16, number17, number18)
                      workingValue14 = false
                      dataCollection11 = workingValue14
                  end
                end
                else
                  workingValue14 = false
                  dataCollection11 = workingValue14
                end
              else
                number16 = text6
                workingValue14 = rageUiOperation2
                workingValue14 = workingValue14[number16]
                workingValue14 = workingValue14.currentListIndex
                if workingValue14 ~= localValue4 then
                  workingValue14 = workingValue9
                  number16 = localValue4
                  number17 = dataCollection4.value
                  number18 = stateFlag7.name
                  workingValue14(number16, number17, number18)
                end
              end
              number16 = text6
              workingValue14 = rageUiOperation2
              workingValue14 = workingValue14[number16]
              workingValue14.currentListIndex = localValue4
            end
            workingValue14 = stateFlag6
            if workingValue14 then
              workingValue14 = dataCollection
              if not workingValue14 then
                workingValue14 = IsControlJustReleased
                number16 = 0
                number17 = 178
                workingValue14 = workingValue14(number16, number17)
                if workingValue14 then
                  workingValue14 = true
                  dataCollection6 = workingValue14
                  workingValue14 = workingValue9
                  number16 = localValue4
                  number17 = dataCollection4.value
                  number18 = dataCollection4.name
                  workingValue14(number16, number17, number18)
                  workingValue14 = TriggerServerEvent
                  number16 = "4e23f069b7"
                  number17 = rageUiOperation4
                  number18 = 1000
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4e23f069b7".
                  workingValue14(number16, number17, number18)
                end
              end
            end
          end
          if localValue32 then
            workingValue14 = eventHandler
            number16 = stateFlag7.name
            number17 = dataCollection4.value
            number18 = localValue4
            workingValue14 = workingValue14(number16, number17, number18)
            if not workingValue14 then
              workingValue14 = table
              workingValue14 = workingValue14.insert
              number16 = rageUiOperation4
              number17 = {}
              number18 = stateFlag7.name
              number17.part = number18
              number18 = dataCollection4.value
              number17.collection = number18
              number17.current = localValue4
              workingValue14(number16, number17)
              workingValue14 = TriggerServerEvent
              number16 = "4e23f069b7"
              number17 = rageUiOperation4
              number18 = 1000
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4e23f069b7".
              workingValue14(number16, number17, number18)
            else
              workingValue14 = notify
              number16 = "~r~You have already purchased this tattoo."
              -- Beginner: Show a notification to the player.
              workingValue14(number16)
            end
          end
        end

        -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
        function workingValue5()
          local localValue12, localValue22
        end
        workingValue6 = nil
        -- Beginner: Draw a RageUI list selector.
        cmgOperation4(hashValue2, workingValue16, text7, text9, dataCollection2, stateFlag, workingValue4, workingValue5, workingValue6)
      end
    end
    localValue1(localValue2, localValue3, tableHelper, workingValue13, number15)
  end
end
rageUiOperation(number8, workingValue11, workingValue12, cmgOperation3)
