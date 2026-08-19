--[[
    LEVEL 1 BEGINNER GUIDE — Lscustoms
    =======================================

    File: cmg/prod/client/vehicles/cl_lscustoms.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Lscustoms feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 125
      * Background threads: 0
      * Always-running loops: 14
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
local cmgOperation, cmgOperation2, text5, text6, text8, rageUiOperation3, text15, text16, rageUiOperation5, rageUiOperation6, text, text2, stateFlag3, workingValue3, workingValue5, dataCollection, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue13, workingValue15, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue31, number3, workingValue32, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, rageUiOperation2, dataCollection2, workingValue43, workingValue44, text9, cmgOperation3, workingValue45, workingValue46, workingValue47, workingValue48, eventHandler, text10, text11, cmgOperation4, text12, cmgOperation5, text13, text14
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation2 = "cfg/cfg_lscustoms"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation2)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.loadModule
text5 = "cfg/cfg_store"
-- Beginner: result below is config.
cmgOperation2 = cmgOperation2(text5)
text5 = RMenu
text5 = text5.Add
text6 = "lscustoms"
text8 = "repair"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
text15 = ""
text16 = "Repair Vehicle"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6 = rageUiOperation6()
text = "cmg_lscustomsui"
text2 = "cmg_lscustomsui"
rageUiOperation3, text15, text16, rageUiOperation5, rageUiOperation6, text, text2, stateFlag3, workingValue3, workingValue5, dataCollection, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue13, workingValue15, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue31, number3, workingValue32, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, rageUiOperation2, dataCollection2, workingValue43, workingValue44, text9, cmgOperation3, workingValue45, workingValue46, workingValue47, workingValue48, eventHandler, text10, text11, cmgOperation4, text12, cmgOperation5, text13, text14 = rageUiOperation3(text15, text16, rageUiOperation5, rageUiOperation6, text, text2)
text5(text6, text8, rageUiOperation3, text15, text16, rageUiOperation5, rageUiOperation6, text, text2, stateFlag3, workingValue3, workingValue5, dataCollection, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue13, workingValue15, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue31, number3, workingValue32, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, rageUiOperation2, dataCollection2, workingValue43, workingValue44, text9, cmgOperation3, workingValue45, workingValue46, workingValue47, workingValue48, eventHandler, text10, text11, cmgOperation4, text12, cmgOperation5, text13, text14)
text5 = RMenu
text5 = text5.Add
text6 = "lscustoms"
text8 = "mainmenu"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
text15 = ""
text16 = "Los Santos Customs"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6 = rageUiOperation6()
text = "cmg_lscustomsui"
text2 = "cmg_lscustomsui"
rageUiOperation3, text15, text16, rageUiOperation5, rageUiOperation6, text, text2, stateFlag3, workingValue3, workingValue5, dataCollection, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue13, workingValue15, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue31, number3, workingValue32, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, rageUiOperation2, dataCollection2, workingValue43, workingValue44, text9, cmgOperation3, workingValue45, workingValue46, workingValue47, workingValue48, eventHandler, text10, text11, cmgOperation4, text12, cmgOperation5, text13, text14 = rageUiOperation3(text15, text16, rageUiOperation5, rageUiOperation6, text, text2)
text5(text6, text8, rageUiOperation3, text15, text16, rageUiOperation5, rageUiOperation6, text, text2, stateFlag3, workingValue3, workingValue5, dataCollection, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue13, workingValue15, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue31, number3, workingValue32, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue42, rageUiOperation2, dataCollection2, workingValue43, workingValue44, text9, cmgOperation3, workingValue45, workingValue46, workingValue47, workingValue48, eventHandler, text10, text11, cmgOperation4, text12, cmgOperation5, text13, text14)
text5 = {}

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation
  localValue2 = table
  localValue2 = localValue2.concat
  localValue3 = text5
  text7 = "_"
  localValue2 = localValue2(localValue3, text7)
  localValue3 = table
  localValue3 = localValue3.insert
  text7 = text5
  stringHelper2 = string
  stringHelper2 = stringHelper2.lower
  rageUiOperation4 = string
  rageUiOperation4 = rageUiOperation4.gsub
  nameValue = localValue1.name
  text17 = "%s+"
  text18 = ""
  rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation = rageUiOperation4(nameValue, text17, text18)
  stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation = stringHelper2(rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation)
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation)
  localValue3 = table
  localValue3 = localValue3.concat
  text7 = text5
  stringHelper2 = "_"
  localValue3 = localValue3(text7, stringHelper2)
  localValue1.menu = localValue3
  localValue3 = localValue1.name
  if "Main Menu" ~= localValue3 then
    localValue3 = RMenu
    localValue3 = localValue3.Add
    text7 = "lscustoms"
    stringHelper2 = localValue1.menu
    rageUiOperation4 = RageUI
    rageUiOperation4 = rageUiOperation4.CreateSubMenu
    nameValue = RMenu
    text17 = nameValue
    nameValue = nameValue.Get
    text18 = "lscustoms"
    rageUiOperation7 = localValue2
    -- Beginner: result below is menu.
    nameValue = nameValue(text17, text18, rageUiOperation7)
    text17 = ""
    text18 = localValue1.name
    rageUiOperation7 = CMG
    rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
    rageUiOperation7 = rageUiOperation7()
    rageUiOperation = CMG
    rageUiOperation = rageUiOperation.getRageUIMenuHeight
    rageUiOperation = rageUiOperation()
    rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation = rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation)
    localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation)
  end
  localValue3 = localValue1.type
  if "categoryList" == localValue3 then
    localValue3 = pairs
    text7 = localValue1.categories
    localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
    for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
      text18 = text6
      rageUiOperation7 = text17
      text18(rageUiOperation7)
    end
  else
    localValue3 = RMenu
    text7 = localValue3
    localValue3 = localValue3.Get
    stringHelper2 = "lscustoms"
    rageUiOperation4 = localValue1.menu
    -- Beginner: result below is menu.
    localValue3 = localValue3(text7, stringHelper2, rageUiOperation4)
    text7 = localValue3
    localValue3 = localValue3.AddInstructionButton
    stringHelper2 = {}
    rageUiOperation4 = "~INPUT_NEXT_CAMERA~"
    nameValue = "Change Camera"
    stringHelper2[1] = rageUiOperation4
    stringHelper2[2] = nameValue
    localValue3(text7, stringHelper2)
  end
  localValue3 = table
  localValue3 = localValue3.remove
  text7 = text5
  localValue3(text7)
end
text8 = text6
rageUiOperation3 = cmgOperation.category
text8(rageUiOperation3)
text8 = {}
rageUiOperation3 = nil
text15 = 0
text16 = nil
rageUiOperation5 = 0
rageUiOperation6 = 0
text = 0
text2 = -1
stateFlag3 = false
workingValue3 = nil
workingValue5 = nil
dataCollection = {}

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue1 = {}
  localValue2 = -1
  localValue3 = GetVehicleLiveryCount
  text7 = text15
  localValue3 = localValue3(text7)
  text7 = 1
  for stringHelper2 = localValue2, localValue3, text7 do
    rageUiOperation4 = table
    rageUiOperation4 = rageUiOperation4.insert
    nameValue = localValue1
    text17 = stringHelper2
    rageUiOperation4(nameValue, text17)
  end
  return localValue1
end
dataCollection.livery = workingValue7

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue1 = {}
  localValue2 = 0
  localValue3 = 128
  text7 = 1
  for stringHelper2 = localValue2, localValue3, text7 do
    rageUiOperation4 = DoesExtraExist
    nameValue = text15
    text17 = stringHelper2
    rageUiOperation4 = rageUiOperation4(nameValue, text17)
    if rageUiOperation4 then
      rageUiOperation4 = table
      rageUiOperation4 = rageUiOperation4.insert
      nameValue = localValue1
      text17 = stringHelper2
      rageUiOperation4(nameValue, text17)
    end
  end
  return localValue1
end
dataCollection.extra = workingValue7

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue1 = {}
  localValue2 = 1
  localValue3 = 3
  text7 = 1
  for stringHelper2 = localValue2, localValue3, text7 do
    rageUiOperation4 = table
    rageUiOperation4 = rageUiOperation4.insert
    nameValue = localValue1
    text17 = stringHelper2
    rageUiOperation4(nameValue, text17)
  end
  return localValue1
end
dataCollection.bootupgrade = workingValue7

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5
  localValue3 = SetCamActive
  text7 = rageUiOperation6
  stringHelper2 = true
  localValue3(text7, stringHelper2)
  localValue3 = GetModelDimensions
  text7 = GetEntityModel
  stringHelper2 = text15
  text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5 = text7(stringHelper2)
  localValue3 = localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
  text7 = localValue3.y
  text7 = text7 * -2.0
  stringHelper2 = localValue3.x
  stringHelper2 = stringHelper2 * -2.0
  rageUiOperation4 = localValue3.z
  rageUiOperation4 = rageUiOperation4 * -2.0
  nameValue = nil
  if "front" == localValue1 then
    text17 = GetOffsetFromEntityInWorldCoords
    text18 = text15
    rageUiOperation7 = localValue2.x
    rageUiOperation = text7 / 2.0
    workingValue = localValue2.y
    rageUiOperation = rageUiOperation + workingValue
    workingValue = localValue2.z
    text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue)
    nameValue = text17
  elseif "front-top" == localValue1 then
    text17 = GetOffsetFromEntityInWorldCoords
    text18 = text15
    rageUiOperation7 = localValue2.x
    rageUiOperation = text7 / 2.0
    workingValue = localValue2.y
    rageUiOperation = rageUiOperation + workingValue
    workingValue = localValue2.z
    workingValue = rageUiOperation4 + workingValue
    text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue)
    nameValue = text17
  elseif "back" == localValue1 then
    text17 = GetOffsetFromEntityInWorldCoords
    text18 = text15
    rageUiOperation7 = localValue2.x
    rageUiOperation = text7 / 2.0
    rageUiOperation = -rageUiOperation
    workingValue = localValue2.y
    rageUiOperation = rageUiOperation + workingValue
    workingValue = localValue2.z
    text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue)
    nameValue = text17
  elseif "back-top" == localValue1 then
    text17 = GetOffsetFromEntityInWorldCoords
    text18 = text15
    rageUiOperation7 = localValue2.x
    rageUiOperation = text7 / 2.0
    rageUiOperation = -rageUiOperation
    workingValue = localValue2.y
    rageUiOperation = rageUiOperation + workingValue
    workingValue = rageUiOperation4 / 2.0
    workingValue2 = localValue2.z
    workingValue = workingValue + workingValue2
    text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue)
    nameValue = text17
  elseif "left" == localValue1 then
    text17 = GetOffsetFromEntityInWorldCoords
    text18 = text15
    rageUiOperation7 = stringHelper2 / 2.0
    rageUiOperation7 = -rageUiOperation7
    rageUiOperation = localValue2.x
    rageUiOperation7 = rageUiOperation7 + rageUiOperation
    rageUiOperation = localValue2.y
    workingValue = localValue2.z
    text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue)
    nameValue = text17
  elseif "right" == localValue1 then
    text17 = GetOffsetFromEntityInWorldCoords
    text18 = text15
    rageUiOperation7 = stringHelper2 / 2.0
    rageUiOperation = localValue2.x
    rageUiOperation7 = rageUiOperation7 + rageUiOperation
    rageUiOperation = localValue2.y
    workingValue = localValue2.z
    text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue)
    nameValue = text17
  elseif "middle" == localValue1 then
    text17 = GetOffsetFromEntityInWorldCoords
    text18 = text15
    rageUiOperation7 = localValue2.x
    rageUiOperation = localValue2.y
    workingValue = rageUiOperation4 / 2.0
    workingValue2 = localValue2.z
    workingValue = workingValue + workingValue2
    text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue)
    nameValue = text17
  end
  text17 = SetCamCoord
  text18 = rageUiOperation6
  rageUiOperation7 = nameValue.x
  rageUiOperation = nameValue.y
  workingValue = nameValue.z
  text17(text18, rageUiOperation7, rageUiOperation, workingValue)
  text17 = GetOffsetFromEntityInWorldCoords
  text18 = text15
  rageUiOperation7 = 0.0
  rageUiOperation = 0.0
  workingValue = 0.0
  text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue)
  text18 = PointCamAtCoord
  rageUiOperation7 = rageUiOperation6
  rageUiOperation = text17.x
  workingValue = text17.y
  workingValue2 = text17.z
  text18(rageUiOperation7, rageUiOperation, workingValue, workingValue2)
  text18 = RenderScriptCams
  rageUiOperation7 = true
  rageUiOperation = true
  workingValue = 1000
  workingValue2 = false
  stateFlag5 = false
  text18(rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2) ===
function workingValue8(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2
  localValue3 = GetEntityBoneIndexByName
  text7 = text15
  stringHelper2 = localValue1
  localValue3 = localValue3(text7, stringHelper2)
  if -1 == localValue3 then
    return
  end
  text7 = GetWorldPositionOfEntityBone
  stringHelper2 = text15
  rageUiOperation4 = localValue3
  text7 = text7(stringHelper2, rageUiOperation4)
  stringHelper2 = GetOffsetFromEntityGivenWorldCoords
  rageUiOperation4 = text15
  nameValue = text7.x
  text17 = text7.y
  text18 = text7.z
  stringHelper2 = stringHelper2(rageUiOperation4, nameValue, text17, text18)
  rageUiOperation4 = GetOffsetFromEntityInWorldCoords
  nameValue = text15
  text17 = stringHelper2.x
  text18 = localValue2.x
  text17 = text17 + text18
  text18 = stringHelper2.y
  rageUiOperation7 = localValue2.y
  text18 = text18 + rageUiOperation7
  rageUiOperation7 = stringHelper2.z
  rageUiOperation = localValue2.z
  rageUiOperation7 = rageUiOperation7 + rageUiOperation
  rageUiOperation4 = rageUiOperation4(nameValue, text17, text18, rageUiOperation7)
  nameValue = SetCamActive
  text17 = rageUiOperation6
  text18 = true
  nameValue(text17, text18)
  nameValue = SetCamCoord
  text17 = rageUiOperation6
  text18 = rageUiOperation4.x
  rageUiOperation7 = rageUiOperation4.y
  rageUiOperation = rageUiOperation4.z
  nameValue(text17, text18, rageUiOperation7, rageUiOperation)
  nameValue = GetOffsetFromEntityInWorldCoords
  text17 = text15
  text18 = 0.0
  rageUiOperation7 = stringHelper2.y
  rageUiOperation = stringHelper2.z
  nameValue = nameValue(text17, text18, rageUiOperation7, rageUiOperation)
  text17 = PointCamAtCoord
  text18 = rageUiOperation6
  rageUiOperation7 = nameValue.x
  rageUiOperation = nameValue.y
  workingValue = nameValue.z
  text17(text18, rageUiOperation7, rageUiOperation, workingValue)
  text17 = RenderScriptCams
  text18 = true
  rageUiOperation7 = true
  rageUiOperation = 1000
  workingValue = false
  workingValue2 = false
  text17(text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5
  localValue2 = rageUiOperation6
  if 0 == localValue2 then
    return
  end
  localValue2 = localValue1.cameraPreset
  if not localValue2 then
    return
  end
  localValue3 = cmgOperation.cameraPresets
  localValue3 = localValue3[localValue2]
  text7 = assert
  stringHelper2 = localValue3
  rageUiOperation4 = string
  rageUiOperation4 = rageUiOperation4.format
  nameValue = "Camera preset %s does not exist"
  text17 = localValue2
  rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5 = rageUiOperation4(nameValue, text17)
  text7(stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
  text7 = localValue3.type
  if "moveVeh" == text7 then
    text7 = workingValue7
    stringHelper2 = localValue3.position
    rageUiOperation4 = localValue3.offset
    text7(stringHelper2, rageUiOperation4)
  else
    text7 = localValue3.type
    if "pointBone" == text7 then
      text7 = workingValue8
      stringHelper2 = localValue3.bone
      rageUiOperation4 = localValue3.offset
      text7(stringHelper2, rageUiOperation4)
    else
      text7 = localValue3.type
      if "doors" == text7 then
        text7 = pairs
        stringHelper2 = localValue3.doors
        text7, stringHelper2, rageUiOperation4, nameValue = text7(stringHelper2)
        for text17, text18 in text7, stringHelper2, rageUiOperation4, nameValue do
          rageUiOperation7 = SetVehicleDoorOpen
          rageUiOperation = text15
          workingValue = text18
          workingValue2 = false
          stateFlag5 = false
          rageUiOperation7(rageUiOperation, workingValue, workingValue2, stateFlag5)
        end
      else
        text7 = localValue3.type
        if "viewMode" == text7 then
          text7 = SetFollowVehicleCamViewMode
          stringHelper2 = localValue3.mode
          text7(stringHelper2)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue1 = rageUiOperation6
  if 0 == localValue1 then
    return
  end
  localValue1 = GetFinalRenderedCamCoord
  localValue1 = localValue1()
  localValue2 = SetCamCoord
  localValue3 = rageUiOperation6
  text7 = localValue1.x
  stringHelper2 = localValue1.y
  rageUiOperation4 = localValue1.z
  localValue2(localValue3, text7, stringHelper2, rageUiOperation4)
  localValue2 = GetGameplayCamRot
  localValue3 = 2
  localValue2 = localValue2(localValue3)
  localValue3 = SetCamRot
  text7 = rageUiOperation6
  stringHelper2 = localValue2.x
  rageUiOperation4 = localValue2.y
  nameValue = localValue2.z
  text17 = 2
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17)
  localValue3 = RenderScriptCams
  text7 = true
  stringHelper2 = true
  rageUiOperation4 = 0
  nameValue = false
  text17 = false
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17)
  localValue3 = RenderScriptCams
  text7 = false
  stringHelper2 = true
  rageUiOperation4 = 1000
  nameValue = false
  text17 = false
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17)
  localValue3 = SetCamActive
  text7 = text
  stringHelper2 = true
  localValue3(text7, stringHelper2)
  localValue3 = TogglePausedRenderphases
  text7 = true
  localValue3(text7)
  localValue3 = SetCamActive
  text7 = rageUiOperation6
  stringHelper2 = false
  localValue3(text7, stringHelper2)
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue
  localValue2 = localValue1.cameraPreset
  if not localValue2 then
    return
  end
  localValue3 = cmgOperation.cameraPresets
  localValue3 = localValue3[localValue2]
  text7 = assert
  stringHelper2 = localValue3
  rageUiOperation4 = string
  rageUiOperation4 = rageUiOperation4.format
  nameValue = "Camera preset %s does not exist"
  text17 = localValue2
  rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue = rageUiOperation4(nameValue, text17)
  text7(stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
  text7 = localValue3.type
  if "moveVeh" == text7 then
    text7 = workingValue10
    text7()
  else
    text7 = localValue3.type
    if "pointBone" == text7 then
      text7 = workingValue10
      text7()
    else
      text7 = localValue3.type
      if "doors" == text7 then
        text7 = 0
        stringHelper2 = GetNumberOfVehicleDoors
        rageUiOperation4 = text15
        stringHelper2 = stringHelper2(rageUiOperation4)
        rageUiOperation4 = 1
        for nameValue = text7, stringHelper2, rageUiOperation4 do
          text17 = SetVehicleDoorOpen
          text18 = text15
          rageUiOperation7 = nameValue
          rageUiOperation = false
          workingValue = false
          text17(text18, rageUiOperation7, rageUiOperation, workingValue)
        end
      else
        text7 = localValue3.type
        if "viewMode" == text7 then
          text7 = SetFollowVehicleCamViewMode
          stringHelper2 = 1
          text7(stringHelper2)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1, localValue2) ===
function workingValue13(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7
  localValue3 = pairs
  text7 = localValue1
  localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
  for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
    if true == text17 then
      text18 = localValue2
      rageUiOperation7 = nameValue
      text18(rageUiOperation7)
      return
    end
  end
  localValue3 = localValue2
  text7 = nil
  localValue3(text7)
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue1 = {}
  localValue1[1] = 5
  localValue1[2] = 7
  localValue1[3] = 10
  localValue1[4] = 12
  localValue1[5] = 15
  localValue1[6] = 20
  localValue2 = 6
  localValue3 = 1
  text7 = -1
  for stringHelper2 = localValue2, localValue3, text7 do
    rageUiOperation4 = CMG
    rageUiOperation4 = rageUiOperation4.hasClientSkill
    nameValue = "mechanic_lsc_discount_"
    text17 = stringHelper2
    nameValue = nameValue .. text17
    rageUiOperation4 = rageUiOperation4(nameValue)
    if rageUiOperation4 then
      rageUiOperation4 = localValue1[stringHelper2]
      return rageUiOperation4
    end
  end
  localValue2 = 0
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, text7, stringHelper2
  if not localValue1 or localValue1 <= 0 then
    return localValue1
  end
  localValue2 = workingValue15
  localValue2 = localValue2()
  localValue3 = math
  localValue3 = localValue3.floor
  text7 = localValue2 / 100
  stringHelper2 = 1
  text7 = stringHelper2 - text7
  text7 = localValue1 * text7
  return localValue3(text7)
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2, localValue3) ===
function workingValue18(localValue1, localValue2, localValue3)
  local text7, stringHelper2, rageUiOperation4, nameValue, text17
  if localValue1 then
    text7 = {}
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.BadgeStyle
    stringHelper2 = stringHelper2.CarWhite
    text7.RightBadge = stringHelper2
    return text7
  elseif localValue2 then
    text7 = {}
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.BadgeStyle
    stringHelper2 = stringHelper2.CarBlack
    text7.RightBadge = stringHelper2
    return text7
  else
    text7 = workingValue17
    stringHelper2 = localValue3
    text7 = text7(stringHelper2)
    stringHelper2 = {}
    rageUiOperation4 = "\194\163"
    nameValue = getMoneyStringFormatted
    text17 = text7
    nameValue = nameValue(text17)
    rageUiOperation4 = rageUiOperation4 .. nameValue
    stringHelper2.RightLabel = rageUiOperation4
    return stringHelper2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue
  localValue1 = text2
  if -1 ~= localValue1 then
    return
  end
  localValue1 = GetSoundId
  -- Beginner: result below is soundHandle.
  localValue1 = localValue1()
  text2 = localValue1
  localValue1 = PlaySoundFromEntity
  localValue2 = text2
  localValue3 = "Drill"
  text7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text7 = text7()
  stringHelper2 = "DLC_HEIST_FLEECA_SOUNDSET"
  rageUiOperation4 = true
  nameValue = 0
  localValue1(localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue)
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22, localValue32, localValue4, stateFlag8, stateFlag10
    localValue12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue12 = localValue12()
    while true do
      localValue22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue22 = localValue22()
      localValue22 = localValue22 - localValue12
      localValue32 = 2000
      if not (localValue22 < localValue32) then
        break
      end
      localValue22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue22 = localValue22()
      localValue22 = localValue22 - localValue12
      localValue22 = localValue22 / 2000
      localValue32 = SetVariableOnSound
      localValue4 = text2
      stateFlag8 = "DrillState"
      stateFlag10 = localValue22
      localValue32(localValue4, stateFlag8, stateFlag10)
      localValue32 = Citizen
      localValue32 = localValue32.Wait
      localValue4 = 0
      localValue32(localValue4)
    end
    localValue22 = StopSound
    localValue32 = text2
    localValue22(localValue32)
    localValue22 = Citizen
    localValue22 = localValue22.Wait
    localValue32 = 1000
    localValue22(localValue32)
    localValue22 = ReleaseSoundId
    localValue32 = text2
    localValue22(localValue32)
    localValue22 = -1
    text2 = localValue22
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2) ===
function workingValue20(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue
  localValue3 = localValue1.modType
  if 18 ~= localValue3 then
    localValue3 = localValue1.modType
    if 22 ~= localValue3 then
      goto continueAtStep13
    end
  end
  localValue3 = ToggleVehicleMod
  text7 = text15
  stringHelper2 = localValue1.modType
  rageUiOperation4 = true
  localValue3(text7, stringHelper2, rageUiOperation4)
  goto continueAtStep20
  ::continueAtStep13::
  localValue3 = CMG
  localValue3 = localValue3.setVehicleMod
  text7 = text15
  stringHelper2 = localValue1.modType
  rageUiOperation4 = localValue2
  nameValue = true
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue)
  ::continueAtStep20::
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1) ===
function workingValue21(localValue1)
  local localValue2, localValue3, text7
  localValue2 = workingValue13
  text7 = localValue1.saveKey
  localValue3 = text8
  localValue3 = localValue3[text7]

  -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue12) ===
  function text7(localValue12)
    local localValue22, localValue32, localValue4, stateFlag8, stateFlag10
    if localValue12 then
      localValue22 = localValue1.modType
      if 18 ~= localValue22 then
        localValue22 = localValue1.modType
        if 2 ~= localValue22 then
          goto continueAtStep15
        end
      end
      localValue22 = ToggleVehicleMod
      localValue32 = text15
      localValue4 = localValue1.modType
      stateFlag8 = true
      localValue22(localValue32, localValue4, stateFlag8)
      goto continueAtStep47
      ::continueAtStep15::
      localValue22 = CMG
      localValue22 = localValue22.setVehicleMod
      localValue32 = text15
      localValue4 = localValue1.modType
      stateFlag8 = tonumber
      stateFlag10 = localValue12
      stateFlag8 = stateFlag8(stateFlag10)
      if not stateFlag8 then
        stateFlag8 = 0
      end
      stateFlag10 = false
      localValue22(localValue32, localValue4, stateFlag8, stateFlag10)
    else
      localValue22 = localValue1.modType
      if 18 ~= localValue22 then
        localValue22 = localValue1.modType
        if 2 ~= localValue22 then
          goto continueAtStep40
        end
      end
      localValue22 = ToggleVehicleMod
      localValue32 = text15
      localValue4 = localValue1.modType
      stateFlag8 = false
      localValue22(localValue32, localValue4, stateFlag8)
      goto continueAtStep47
      ::continueAtStep40::
      localValue22 = CMG
      localValue22 = localValue22.setVehicleMod
      localValue32 = text15
      localValue4 = localValue1.modType
      stateFlag8 = -1
      stateFlag10 = false
      localValue22(localValue32, localValue4, stateFlag8, stateFlag10)
    end
    ::continueAtStep47::
  end
  localValue2(localValue3, text7)
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: localValue1) ===
function workingValue22(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number
  localValue2 = -1
  localValue3 = GetNumVehicleMods
  text7 = text15
  stringHelper2 = localValue1.modType
  localValue3 = localValue3(text7, stringHelper2)
  localValue3 = localValue3 - 1
  text7 = 1
  for stringHelper2 = localValue2, localValue3, text7 do
    rageUiOperation4 = "Stock"
    nameValue = nil
    if stringHelper2 >= 0 then
      text17 = GetModTextLabel
      text18 = text15
      rageUiOperation7 = localValue1.modType
      rageUiOperation = stringHelper2
      text17 = text17(text18, rageUiOperation7, rageUiOperation)
      nameValue = text17
      text17 = GetLabelText
      text18 = nameValue
      text17 = text17(text18)
      rageUiOperation4 = text17 or rageUiOperation4
      if "NULL" == text17 or not text17 then
        rageUiOperation4 = "N/A"
      end
    end
    text18 = localValue1.saveKey
    text17 = text8
    text17 = text17[text18]
    text18 = tostring
    rageUiOperation7 = stringHelper2
    text18 = text18(rageUiOperation7)
    text17 = text17[text18]
    if stringHelper2 >= 0 then
      text18 = localValue1.price
      if text18 then
        goto continueAtStep41
      end
    end
    text18 = 0
    ::continueAtStep41::
    rageUiOperation7 = workingValue18
    rageUiOperation = true == text17
    workingValue = nil ~= text17
    workingValue2 = text18
    rageUiOperation7 = rageUiOperation7(rageUiOperation, workingValue, workingValue2)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue = rageUiOperation4
    workingValue2 = nil
    stateFlag5 = rageUiOperation7
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: number; parameters: localValue12, localValue22, localValue32) ===
    function number(localValue12, localValue22, localValue32)
      local localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52
      if localValue22 then
        localValue4 = workingValue20
        stateFlag8 = localValue1
        stateFlag10 = stringHelper2
        localValue4(stateFlag8, stateFlag10)
      end
      if localValue32 then
        localValue4 = text17
        if true == localValue4 then
          localValue4 = notify
          stateFlag8 = "~r~You have already applied this mod"
          -- Beginner: Show a notification to the player.
          localValue4(stateFlag8)
        else
          localValue4 = text17
          if false == localValue4 then
            localValue4 = TriggerServerEvent
            stateFlag8 = "0da10c1417"
            stateFlag10 = rageUiOperation5
            workingValue49 = cmgOperation.categoryToIndentifier
            workingValue50 = localValue1
            workingValue49 = workingValue49[workingValue50]
            workingValue50 = stringHelper2
            workingValue52 = nameValue
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0da10c1417".
            localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52)
            localValue4 = workingValue19
            localValue4()
          else
            localValue4 = TriggerServerEvent
            stateFlag8 = "bdba243925"
            stateFlag10 = rageUiOperation5
            workingValue49 = cmgOperation.categoryToIndentifier
            workingValue50 = localValue1
            workingValue49 = workingValue49[workingValue50]
            workingValue50 = stringHelper2
            workingValue52 = nameValue
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdba243925".
            localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52)
            localValue4 = workingValue19
            localValue4()
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue, workingValue2, stateFlag5, stateFlag6, number)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1, localValue2) ===
function workingValue23(localValue1, localValue2)
  local localValue3, text7, stringHelper2
  localValue3 = localValue1.saveKey
  if "liveries" == localValue3 then
    localValue3 = SetVehicleLivery
    text7 = text15
    stringHelper2 = localValue2
    localValue3(text7, stringHelper2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: localValue1) ===
function workingValue24(localValue1)
  local localValue2, localValue3, text7
  localValue2 = localValue1.saveKey
  if "liveries" == localValue2 then
    localValue2 = workingValue13
    text7 = localValue1.saveKey
    localValue3 = text8
    localValue3 = localValue3[text7]

    -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue12) ===
    function text7(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8
      if localValue12 then
        localValue22 = SetVehicleLivery
        localValue32 = text15
        localValue4 = tonumber
        stateFlag8 = localValue12
        localValue4 = localValue4(stateFlag8)
        if not localValue4 then
          localValue4 = 0
        end
        localValue22(localValue32, localValue4)
      else
        localValue22 = SetVehicleLivery
        localValue32 = text15
        localValue4 = -1
        localValue22(localValue32, localValue4)
      end
    end
    localValue2(localValue3, text7)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1) ===
function workingValue25(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number
  localValue3 = localValue1.generatorName
  localValue2 = dataCollection
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2()
  localValue3 = pairs
  text7 = localValue2
  localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
  for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
    rageUiOperation7 = localValue1.saveKey
    text18 = text8
    text18 = text18[rageUiOperation7]
    rageUiOperation7 = tostring
    rageUiOperation = text17
    rageUiOperation7 = rageUiOperation7(rageUiOperation)
    text18 = text18[rageUiOperation7]
    rageUiOperation7 = workingValue18
    rageUiOperation = true == text18
    workingValue = nil ~= text18
    workingValue2 = localValue1.price
    rageUiOperation7 = rageUiOperation7(rageUiOperation, workingValue, workingValue2)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue = string
    workingValue = workingValue.format
    workingValue2 = "%s %d"
    stateFlag5 = localValue1.prefix
    stateFlag6 = text17
    workingValue = workingValue(workingValue2, stateFlag5, stateFlag6)
    workingValue2 = nil
    stateFlag5 = rageUiOperation7
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: number; parameters: localValue12, localValue22, localValue32) ===
    function number(localValue12, localValue22, localValue32)
      local localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52
      if localValue22 then
        localValue4 = workingValue23
        stateFlag8 = localValue1
        stateFlag10 = text17
        localValue4(stateFlag8, stateFlag10)
      end
      if localValue32 then
        localValue4 = text18
        if true == localValue4 then
          localValue4 = notify
          stateFlag8 = "~r~You have already applied this mod"
          -- Beginner: Show a notification to the player.
          localValue4(stateFlag8)
        else
          localValue4 = text18
          if false == localValue4 then
            localValue4 = TriggerServerEvent
            stateFlag8 = "0da10c1417"
            stateFlag10 = rageUiOperation5
            workingValue49 = cmgOperation.categoryToIndentifier
            workingValue50 = localValue1
            workingValue49 = workingValue49[workingValue50]
            workingValue50 = text17
            workingValue52 = nil
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0da10c1417".
            localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52)
            localValue4 = workingValue19
            localValue4()
          else
            localValue4 = TriggerServerEvent
            stateFlag8 = "bdba243925"
            stateFlag10 = rageUiOperation5
            workingValue49 = cmgOperation.categoryToIndentifier
            workingValue50 = localValue1
            workingValue49 = workingValue49[workingValue50]
            workingValue50 = text17
            workingValue52 = nil
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdba243925".
            localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52)
            localValue4 = workingValue19
            localValue4()
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue, workingValue2, stateFlag5, stateFlag6, number)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1) ===
function workingValue26(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number
  localValue3 = localValue1.generatorName
  localValue2 = dataCollection
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2()
  localValue3 = pairs
  text7 = localValue2
  localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
  for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
    rageUiOperation7 = localValue1.saveKey
    text18 = text8
    text18 = text18[rageUiOperation7]
    rageUiOperation7 = tostring
    rageUiOperation = text17
    rageUiOperation7 = rageUiOperation7(rageUiOperation)
    text18 = text18[rageUiOperation7]
    rageUiOperation7 = workingValue18
    rageUiOperation = true == text18
    workingValue = nil ~= text18
    workingValue2 = localValue1.price
    rageUiOperation7 = rageUiOperation7(rageUiOperation, workingValue, workingValue2)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue = string
    workingValue = workingValue.format
    workingValue2 = "%s %d"
    stateFlag5 = localValue1.prefix
    stateFlag6 = text17
    workingValue = workingValue(workingValue2, stateFlag5, stateFlag6)
    workingValue2 = nil
    stateFlag5 = rageUiOperation7
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: number; parameters: localValue12, localValue22, localValue32) ===
    function number(localValue12, localValue22, localValue32)
      local localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50
      if localValue32 then
        localValue4 = text18
        if true == localValue4 then
          localValue4 = TriggerServerEvent
          stateFlag8 = "2c48d37794"
          stateFlag10 = rageUiOperation5
          workingValue49 = cmgOperation.categoryToIndentifier
          workingValue50 = localValue1
          workingValue49 = workingValue49[workingValue50]
          workingValue50 = text17
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2c48d37794".
          localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50)
          localValue4 = workingValue19
          localValue4()
        else
          localValue4 = text18
          if false == localValue4 then
            localValue4 = TriggerServerEvent
            stateFlag8 = "4b2dc2521d"
            stateFlag10 = rageUiOperation5
            workingValue49 = cmgOperation.categoryToIndentifier
            workingValue50 = localValue1
            workingValue49 = workingValue49[workingValue50]
            workingValue50 = text17
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4b2dc2521d".
            localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50)
            localValue4 = workingValue19
            localValue4()
          else
            localValue4 = TriggerServerEvent
            stateFlag8 = "1f10937c56"
            stateFlag10 = rageUiOperation5
            workingValue49 = cmgOperation.categoryToIndentifier
            workingValue50 = localValue1
            workingValue49 = workingValue49[workingValue50]
            workingValue50 = text17
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1f10937c56".
            localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50)
            localValue4 = workingValue19
            localValue4()
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue, workingValue2, stateFlag5, stateFlag6, number)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue1, localValue2) ===
function workingValue27(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue3 = GetIsVehiclePrimaryColourCustom
  text7 = text15
  localValue3 = localValue3(text7)
  if localValue3 then
    localValue3 = ClearVehicleCustomPrimaryColour
    text7 = text15
    localValue3(text7)
  end
  localValue3 = SetVehicleModColor_1
  text7 = text15
  stringHelper2 = localValue1
  rageUiOperation4 = localValue2
  nameValue = 0
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue)
  localValue3 = GetVehicleColours
  text7 = text15
  localValue3, text7 = localValue3(text7)
  stringHelper2 = SetVehicleColours
  rageUiOperation4 = text15
  nameValue = localValue2
  text17 = text7
  stringHelper2(rageUiOperation4, nameValue, text17)
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1, localValue2) ===
function workingValue28(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue3 = GetIsVehicleSecondaryColourCustom
  text7 = text15
  localValue3 = localValue3(text7)
  if localValue3 then
    localValue3 = ClearVehicleCustomSecondaryColour
    text7 = text15
    localValue3(text7)
  end
  localValue3 = SetVehicleModColor_2
  text7 = text15
  stringHelper2 = localValue1
  rageUiOperation4 = localValue2
  localValue3(text7, stringHelper2, rageUiOperation4)
  localValue3 = GetVehicleColours
  text7 = text15
  localValue3, text7 = localValue3(text7)
  stringHelper2 = SetVehicleColours
  rageUiOperation4 = text15
  nameValue = localValue3
  text17 = localValue2
  stringHelper2(rageUiOperation4, nameValue, text17)
end

-- === HELPER FUNCTION (decompiler name: workingValue29; parameters: localValue1, localValue2) ===
function workingValue29(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18
  localValue3 = localValue1.saveKey
  if "windowtint" == localValue3 then
    text7 = SetVehicleWindowTint
    stringHelper2 = text15
    rageUiOperation4 = localValue2.tint
    text7(stringHelper2, rageUiOperation4)
  elseif "frontwheel" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 6
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "backwheel" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 6
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 24
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "sportwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 0
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "musclewheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 1
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "lowriderwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 2
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "highendwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 7
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "suvwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 3
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "offroadwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 4
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "tunerwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 6
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "bennysonewheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 8
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "bennystwowheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 9
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "openwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 10
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "streetwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 11
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "trackwheels" == localValue3 then
    text7 = SetVehicleWheelType
    stringHelper2 = text15
    rageUiOperation4 = 12
    text7(stringHelper2, rageUiOperation4)
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 23
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "wheelaccessories" == localValue3 then
    text7 = SetVehicleModKit
    stringHelper2 = text15
    rageUiOperation4 = 0
    text7(stringHelper2, rageUiOperation4)
    text7 = ToggleVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 20
    nameValue = true
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = SetVehicleTyreSmokeColor
    stringHelper2 = text15
    rageUiOperation4 = localValue2.colour
    rageUiOperation4 = rageUiOperation4[1]
    nameValue = localValue2.colour
    nameValue = nameValue[2]
    text17 = localValue2.colour
    text17 = text17[3]
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "chrome" == localValue3 then
    text7 = workingValue27
    stringHelper2 = 5
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "classic" == localValue3 then
    text7 = workingValue27
    stringHelper2 = 0
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "matte" == localValue3 then
    text7 = workingValue27
    stringHelper2 = 3
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "metals" == localValue3 then
    text7 = workingValue27
    stringHelper2 = 4
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "metallic" == localValue3 then
    text7 = workingValue27
    stringHelper2 = 1
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "util" == localValue3 then
    text7 = GetVehicleColours
    stringHelper2 = text15
    text7, stringHelper2 = text7(stringHelper2)
    rageUiOperation4 = SetVehicleColours
    nameValue = text15
    text17 = localValue2.index
    text18 = stringHelper2
    rageUiOperation4(nameValue, text17, text18)
  elseif "chameleon" == localValue3 then
    text7 = GetVehicleColours
    stringHelper2 = text15
    text7, stringHelper2 = text7(stringHelper2)
    rageUiOperation4 = SetVehicleColours
    nameValue = text15
    text17 = localValue2.index
    text18 = stringHelper2
    rageUiOperation4(nameValue, text17, text18)
  elseif "chrome2" == localValue3 then
    text7 = workingValue28
    stringHelper2 = 5
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "classic2" == localValue3 then
    text7 = workingValue28
    stringHelper2 = 0
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "matte2" == localValue3 then
    text7 = workingValue28
    stringHelper2 = 3
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "metal2" == localValue3 then
    text7 = workingValue28
    stringHelper2 = 4
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "metallic2" == localValue3 then
    text7 = workingValue28
    stringHelper2 = 1
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "pearlescent" == localValue3 then
    text7 = GetVehicleColours
    stringHelper2 = text15
    text7, stringHelper2 = text7(stringHelper2)
    rageUiOperation4 = SetVehicleExtraColours
    nameValue = text15
    text17 = localValue2.index
    text18 = stringHelper2
    rageUiOperation4(nameValue, text17, text18)
  elseif "wheelcolor" == localValue3 then
    text7 = SetVehicleExtraColours
    stringHelper2 = text15
    rageUiOperation4 = GetVehicleColours
    nameValue = text15
    rageUiOperation4 = rageUiOperation4(nameValue)
    nameValue = localValue2.index
    text7(stringHelper2, rageUiOperation4, nameValue)
  elseif "interiorcolour" == localValue3 then
    text7 = SetVehicleInteriorColor
    stringHelper2 = text15
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "dashboardcolour" == localValue3 then
    text7 = SetVehicleDashboardColor
    stringHelper2 = text15
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "mod_14" == localValue3 then
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 14
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "mod_15" == localValue3 then
    text7 = CMG
    text7 = text7.setVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 15
    nameValue = localValue2.index
    text17 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "mod_22" == localValue3 then
    text7 = ToggleVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 22
    nameValue = localValue2.index
    nameValue = nameValue > 0
    text7(stringHelper2, rageUiOperation4, nameValue)
  elseif "xenonlights" == localValue3 then
    text7 = ToggleVehicleMod
    stringHelper2 = text15
    rageUiOperation4 = 22
    nameValue = true
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = SetVehicleXenonLightsColor
    stringHelper2 = text15
    rageUiOperation4 = localValue2.index
    text7(stringHelper2, rageUiOperation4)
  elseif "neonlayout" == localValue3 then
    text7 = SetVehicleNeonLightEnabled
    stringHelper2 = text15
    rageUiOperation4 = 0
    nameValue = false
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = SetVehicleNeonLightEnabled
    stringHelper2 = text15
    rageUiOperation4 = 1
    nameValue = false
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = SetVehicleNeonLightEnabled
    stringHelper2 = text15
    rageUiOperation4 = 2
    nameValue = false
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = SetVehicleNeonLightEnabled
    stringHelper2 = text15
    rageUiOperation4 = 3
    nameValue = false
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = localValue2.mod
    if 1 == text7 then
      text7 = SetVehicleNeonLightEnabled
      stringHelper2 = text15
      rageUiOperation4 = 0
      nameValue = true
      text7(stringHelper2, rageUiOperation4, nameValue)
      text7 = SetVehicleNeonLightEnabled
      stringHelper2 = text15
      rageUiOperation4 = 1
      nameValue = true
      text7(stringHelper2, rageUiOperation4, nameValue)
      text7 = SetVehicleNeonLightEnabled
      stringHelper2 = text15
      rageUiOperation4 = 2
      nameValue = true
      text7(stringHelper2, rageUiOperation4, nameValue)
      text7 = SetVehicleNeonLightEnabled
      stringHelper2 = text15
      rageUiOperation4 = 3
      nameValue = true
      text7(stringHelper2, rageUiOperation4, nameValue)
    else
      text7 = localValue2.mod
      if 2 == text7 then
        text7 = SetVehicleNeonLightEnabled
        stringHelper2 = text15
        rageUiOperation4 = 2
        nameValue = true
        text7(stringHelper2, rageUiOperation4, nameValue)
        text7 = SetVehicleNeonLightEnabled
        stringHelper2 = text15
        rageUiOperation4 = 3
        nameValue = true
        text7(stringHelper2, rageUiOperation4, nameValue)
      else
        text7 = localValue2.mod
        if 3 == text7 then
          text7 = SetVehicleNeonLightEnabled
          stringHelper2 = text15
          rageUiOperation4 = 0
          nameValue = true
          text7(stringHelper2, rageUiOperation4, nameValue)
          text7 = SetVehicleNeonLightEnabled
          stringHelper2 = text15
          rageUiOperation4 = 1
          nameValue = true
          text7(stringHelper2, rageUiOperation4, nameValue)
          text7 = SetVehicleNeonLightEnabled
          stringHelper2 = text15
          rageUiOperation4 = 2
          nameValue = true
          text7(stringHelper2, rageUiOperation4, nameValue)
        else
          text7 = localValue2.mod
          if 4 == text7 then
            text7 = SetVehicleNeonLightEnabled
            stringHelper2 = text15
            rageUiOperation4 = 0
            nameValue = true
            text7(stringHelper2, rageUiOperation4, nameValue)
            text7 = SetVehicleNeonLightEnabled
            stringHelper2 = text15
            rageUiOperation4 = 1
            nameValue = true
            text7(stringHelper2, rageUiOperation4, nameValue)
            text7 = SetVehicleNeonLightEnabled
            stringHelper2 = text15
            rageUiOperation4 = 3
            nameValue = true
            text7(stringHelper2, rageUiOperation4, nameValue)
          end
        end
      end
    end
    text7 = SetVehicleNeonLightsColour
    stringHelper2 = text15
    rageUiOperation4 = 222
    nameValue = 222
    text17 = 255
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  elseif "neoncolour" == localValue3 then
    text7 = SetVehicleNeonLightEnabled
    stringHelper2 = text15
    rageUiOperation4 = 0
    nameValue = true
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = SetVehicleNeonLightEnabled
    stringHelper2 = text15
    rageUiOperation4 = 1
    nameValue = true
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = SetVehicleNeonLightEnabled
    stringHelper2 = text15
    rageUiOperation4 = 2
    nameValue = true
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = SetVehicleNeonLightEnabled
    stringHelper2 = text15
    rageUiOperation4 = 3
    nameValue = true
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = cmgOperation.neonColours
    stringHelper2 = localValue2.name
    text7 = text7[stringHelper2]
    stringHelper2 = SetVehicleNeonLightsColour
    rageUiOperation4 = text15
    nameValue = text7[1]
    text17 = text7[2]
    text18 = text7[3]
    stringHelper2(rageUiOperation4, nameValue, text17, text18)
  elseif "sounds" == localValue3 then
    text7 = EnableControlAction
    stringHelper2 = 0
    rageUiOperation4 = 71
    nameValue = true
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = Entity
    stringHelper2 = text15
    text7 = text7(stringHelper2)
    text7 = text7.state
    text7 = text7.previewSoundId
    stringHelper2 = localValue2.soundId
    if text7 ~= stringHelper2 then
      text7 = ForceVehicleEngineAudio
      stringHelper2 = text15
      rageUiOperation4 = localValue2.soundId
      text7(stringHelper2, rageUiOperation4)
      text7 = SetTimeout
      stringHelper2 = 500

      -- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
      function rageUiOperation4()
        local localValue12, localValue22, localValue32
        localValue12 = SetVehicleRadioEnabled
        localValue22 = text15
        localValue32 = false
        localValue12(localValue22, localValue32)
        localValue12 = SetVehRadioStation
        localValue22 = text15
        localValue32 = "OFF"
        localValue12(localValue22, localValue32)
      end
      text7(stringHelper2, rageUiOperation4)
      text7 = Entity
      stringHelper2 = text15
      text7 = text7(stringHelper2)
      text7 = text7.state
      stringHelper2 = localValue2.soundId
      text7.previewSoundId = stringHelper2
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue1) ===
function workingValue30(localValue1)
  local localValue2, localValue3, text7, stringHelper2
  localValue2 = localValue1.saveKey
  if "chrome" == localValue2 or "classic" == localValue2 or "matte" == localValue2 or "metallic" == localValue2 or "metals" == localValue2 or "util" == localValue2 or "chameleon" == localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.applyPrimaryVehicleColours
    text7 = text8
    stringHelper2 = text15
    localValue3(text7, stringHelper2)
  elseif "chrome2" == localValue2 or "classic2" == localValue2 or "matte2" == localValue2 or "metallic2" == localValue2 or "metal2" == localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.applySecondaryVehicleColours
    text7 = text8
    stringHelper2 = text15
    localValue3(text7, stringHelper2)
  elseif "windowtint" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.windowtint

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8
      if localValue12 then
        localValue22 = SetVehicleWindowTint
        localValue32 = text15
        localValue4 = tonumber
        stateFlag8 = localValue12
        localValue4 = localValue4(stateFlag8)
        if not localValue4 then
          localValue4 = 0
        end
        localValue22(localValue32, localValue4)
      else
        localValue22 = SetVehicleWindowTint
        localValue32 = text15
        localValue4 = 0
        localValue22(localValue32, localValue4)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "frontwheel" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.frontwheel

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49
      localValue22 = SetVehicleWheelType
      localValue32 = text15
      localValue4 = 6
      localValue22(localValue32, localValue4)
      localValue22 = GetVehicleModVariation
      localValue32 = text15
      localValue4 = 23
      localValue22 = localValue22(localValue32, localValue4)
      if localValue12 then
        localValue32 = CMG
        localValue32 = localValue32.setVehicleMod
        localValue4 = text15
        stateFlag8 = 23
        stateFlag10 = tonumber
        workingValue49 = localValue12
        stateFlag10 = stateFlag10(workingValue49)
        if not stateFlag10 then
          stateFlag10 = 0
        end
        workingValue49 = localValue22
        localValue32(localValue4, stateFlag8, stateFlag10, workingValue49)
      else
        localValue32 = CMG
        localValue32 = localValue32.setVehicleMod
        localValue4 = text15
        stateFlag8 = 23
        stateFlag10 = 0
        workingValue49 = localValue22
        localValue32(localValue4, stateFlag8, stateFlag10, workingValue49)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "backwheel" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.backwheel

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49
      localValue22 = SetVehicleWheelType
      localValue32 = text15
      localValue4 = 6
      localValue22(localValue32, localValue4)
      localValue22 = GetVehicleModVariation
      localValue32 = text15
      localValue4 = 24
      localValue22 = localValue22(localValue32, localValue4)
      if localValue12 then
        localValue32 = CMG
        localValue32 = localValue32.setVehicleMod
        localValue4 = text15
        stateFlag8 = 24
        stateFlag10 = tonumber
        workingValue49 = localValue12
        stateFlag10 = stateFlag10(workingValue49)
        if not stateFlag10 then
          stateFlag10 = 0
        end
        workingValue49 = localValue22
        localValue32(localValue4, stateFlag8, stateFlag10, workingValue49)
      else
        localValue32 = CMG
        localValue32 = localValue32.setVehicleMod
        localValue4 = text15
        stateFlag8 = 24
        stateFlag10 = 0
        workingValue49 = localValue22
        localValue32(localValue4, stateFlag8, stateFlag10, workingValue49)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "pearlescent" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.pearlescent

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49
      localValue22 = GetVehicleColours
      localValue32 = text15
      localValue22, localValue32 = localValue22(localValue32)
      if localValue12 then
        localValue4 = SetVehicleExtraColours
        stateFlag8 = text15
        stateFlag10 = tonumber
        workingValue49 = localValue12
        stateFlag10 = stateFlag10(workingValue49)
        if not stateFlag10 then
          stateFlag10 = 0
        end
        workingValue49 = localValue32
        localValue4(stateFlag8, stateFlag10, workingValue49)
      else
        localValue4 = SetVehicleExtraColours
        stateFlag8 = text15
        stateFlag10 = 0
        workingValue49 = localValue32
        localValue4(stateFlag8, stateFlag10, workingValue49)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "wheelcolor" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.wheelcolor

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8, stateFlag10
      if localValue12 then
        localValue22 = SetVehicleExtraColours
        localValue32 = text15
        localValue4 = GetVehicleColours
        stateFlag8 = text15
        localValue4 = localValue4(stateFlag8)
        stateFlag8 = tonumber
        stateFlag10 = localValue12
        stateFlag8 = stateFlag8(stateFlag10)
        if not stateFlag8 then
          stateFlag8 = 0
        end
        localValue22(localValue32, localValue4, stateFlag8)
      else
        localValue22 = SetVehicleExtraColours
        localValue32 = text15
        localValue4 = GetVehicleColours
        stateFlag8 = text15
        localValue4 = localValue4(stateFlag8)
        stateFlag8 = 0
        localValue22(localValue32, localValue4, stateFlag8)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "interiorcolour" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.interiorcolour

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8
      if localValue12 then
        localValue22 = SetVehicleInteriorColor
        localValue32 = text15
        localValue4 = tonumber
        stateFlag8 = localValue12
        localValue4 = localValue4(stateFlag8)
        if not localValue4 then
          localValue4 = 0
        end
        localValue22(localValue32, localValue4)
      else
        localValue22 = SetVehicleInteriorColor
        localValue32 = text15
        localValue4 = 0
        localValue22(localValue32, localValue4)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "dashboardcolour" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.dashboardcolour

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8
      if localValue12 then
        localValue22 = SetVehicleDashboardColor
        localValue32 = text15
        localValue4 = tonumber
        stateFlag8 = localValue12
        localValue4 = localValue4(stateFlag8)
        if not localValue4 then
          localValue4 = 0
        end
        localValue22(localValue32, localValue4)
      else
        localValue22 = SetVehicleDashboardColor
        localValue32 = text15
        localValue4 = 0
        localValue22(localValue32, localValue4)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "mod_14" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.mod_14

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8, stateFlag10
      if localValue12 then
        localValue22 = CMG
        localValue22 = localValue22.setVehicleMod
        localValue32 = text15
        localValue4 = 14
        stateFlag8 = tonumber
        stateFlag10 = localValue12
        stateFlag8 = stateFlag8(stateFlag10)
        if not stateFlag8 then
          stateFlag8 = 0
        end
        stateFlag10 = false
        localValue22(localValue32, localValue4, stateFlag8, stateFlag10)
      else
        localValue22 = CMG
        localValue22 = localValue22.setVehicleMod
        localValue32 = text15
        localValue4 = 14
        stateFlag8 = -1
        stateFlag10 = false
        localValue22(localValue32, localValue4, stateFlag8, stateFlag10)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "mod_15" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.mod_15

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8, stateFlag10
      if localValue12 then
        localValue22 = CMG
        localValue22 = localValue22.setVehicleMod
        localValue32 = text15
        localValue4 = 15
        stateFlag8 = tonumber
        stateFlag10 = localValue12
        stateFlag8 = stateFlag8(stateFlag10)
        if not stateFlag8 then
          stateFlag8 = 0
        end
        stateFlag10 = false
        localValue22(localValue32, localValue4, stateFlag8, stateFlag10)
      else
        localValue22 = CMG
        localValue22 = localValue22.setVehicleMod
        localValue32 = text15
        localValue4 = 15
        stateFlag8 = -1
        stateFlag10 = false
        localValue22(localValue32, localValue4, stateFlag8, stateFlag10)
      end
    end
    localValue3(text7, stringHelper2)
  elseif "mod_22" == localValue2 or "xenonlights" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.mod_22

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4
      localValue22 = workingValue13
      localValue32 = text8.xenonlights

      -- === HELPER FUNCTION: localValue4(localValue13) ===
      function localValue4(localValue13)
        local localValue23, localValue33, number4, stateFlag9
        localValue23 = localValue12
        if localValue23 then
          localValue23 = tonumber
          localValue33 = localValue12
          localValue23 = localValue23(localValue33)
          if localValue23 > 0 then
            localValue23 = ToggleVehicleMod
            localValue33 = text15
            number4 = 22
            stateFlag9 = true
            localValue23(localValue33, number4, stateFlag9)
            if localValue13 then
              localValue23 = SetVehicleXenonLightsColor
              localValue33 = text15
              number4 = tonumber
              stateFlag9 = localValue13
              number4 = number4(stateFlag9)
              if not number4 then
                number4 = 0
              end
              localValue23(localValue33, number4)
            end
        end
        else
          localValue23 = ToggleVehicleMod
          localValue33 = text15
          number4 = 22
          stateFlag9 = false
          localValue23(localValue33, number4, stateFlag9)
        end
      end
      localValue22(localValue32, localValue4)
    end
    localValue3(text7, stringHelper2)
  elseif "neonlayout" == localValue2 or "neoncolour" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.neonlayout

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4
      localValue22 = workingValue13
      localValue32 = text8.neoncolour

      -- === HELPER FUNCTION: localValue4(localValue13) ===
      function localValue4(localValue13)
        local localValue23, localValue33, number4, stateFlag9, stateFlag11, number5, workingValue51
        localValue23 = localValue12
        if localValue23 then
          localValue23 = tonumber
          localValue33 = localValue12
          localValue23 = localValue23(localValue33)
          if localValue23 > 0 then
            localValue23 = tonumber
            localValue33 = localValue12
            localValue23 = localValue23(localValue33)
            if 1 == localValue23 then
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 0
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 1
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 2
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 3
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
            elseif 2 == localValue23 then
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 2
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 3
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
            elseif 3 == localValue23 then
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 0
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 1
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 2
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
            elseif 4 == localValue23 then
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 0
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 1
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
              localValue33 = SetVehicleNeonLightEnabled
              number4 = text15
              stateFlag9 = 3
              stateFlag11 = true
              localValue33(number4, stateFlag9, stateFlag11)
            end
            if localValue13 then
              localValue33 = cmgOperation.neonColours
              localValue33 = localValue33[localValue13]
              number4 = SetVehicleNeonLightsColour
              stateFlag9 = text15
              stateFlag11 = localValue33[1]
              number5 = localValue33[2]
              workingValue51 = localValue33[3]
              number4(stateFlag9, stateFlag11, number5, workingValue51)
            else
              localValue33 = SetVehicleNeonLightsColour
              number4 = text15
              stateFlag9 = 222
              stateFlag11 = 222
              number5 = 255
              localValue33(number4, stateFlag9, stateFlag11, number5)
            end
        end
        else
          localValue23 = SetVehicleNeonLightEnabled
          localValue33 = text15
          number4 = 0
          stateFlag9 = false
          localValue23(localValue33, number4, stateFlag9)
          localValue23 = SetVehicleNeonLightEnabled
          localValue33 = text15
          number4 = 1
          stateFlag9 = false
          localValue23(localValue33, number4, stateFlag9)
          localValue23 = SetVehicleNeonLightEnabled
          localValue33 = text15
          number4 = 2
          stateFlag9 = false
          localValue23(localValue33, number4, stateFlag9)
          localValue23 = SetVehicleNeonLightEnabled
          localValue33 = text15
          number4 = 3
          stateFlag9 = false
          localValue23(localValue33, number4, stateFlag9)
        end
      end
      localValue22(localValue32, localValue4)
    end
    localValue3(text7, stringHelper2)
  elseif "sounds" == localValue2 then
    localValue3 = workingValue13
    text7 = text8.sounds

    -- === HELPER FUNCTION: stringHelper2(localValue12) ===
    function stringHelper2(localValue12)
      local localValue22, localValue32, localValue4, stateFlag8, stateFlag10
      if localValue12 then
        localValue22 = ForceVehicleEngineAudio
        localValue32 = text15
        localValue4 = CMG
        localValue4 = localValue4.getVehicleSoundNameFromId
        stateFlag8 = tonumber
        stateFlag10 = localValue12
        stateFlag8 = stateFlag8(stateFlag10)
        if not stateFlag8 then
          stateFlag8 = 0
        end
        localValue4, stateFlag8, stateFlag10 = localValue4(stateFlag8)
        localValue22(localValue32, localValue4, stateFlag8, stateFlag10)
      else
        localValue22 = ForceVehicleEngineAudio
        localValue32 = text15
        localValue4 = ""
        localValue22(localValue32, localValue4)
      end
      localValue22 = SetTimeout
      localValue32 = 500

      -- === HELPER FUNCTION: localValue4() ===
      function localValue4()
        local localValue13, localValue23, localValue33
        localValue13 = SetVehicleRadioEnabled
        localValue23 = text15
        localValue33 = false
        localValue13(localValue23, localValue33)
        localValue13 = SetVehRadioStation
        localValue23 = text15
        localValue33 = "OFF"
        localValue13(localValue23, localValue33)
      end
      localValue22(localValue32, localValue4)
    end
    localValue3(text7, stringHelper2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue31; parameters: localValue1) ===
function workingValue31(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1.saveKey
  if "mod_14" == localValue2 then
    localValue2 = Citizen
    localValue2 = localValue2.CreateThread

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22, localValue32, localValue4, stateFlag8
      localValue12 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue12 = localValue12()
      while true do
        localValue22 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue22 = localValue22()
        localValue22 = localValue22 - localValue12
        localValue32 = 2500
        if not (localValue22 < localValue32) then
          break
        end
        localValue22 = SetControlNormal
        localValue32 = 0
        localValue4 = 86
        stateFlag8 = 1.0
        localValue22(localValue32, localValue4, stateFlag8)
        localValue22 = Citizen
        localValue22 = localValue22.Wait
        localValue32 = 0
        localValue22(localValue32)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue2(localValue3)
  else
    localValue2 = workingValue19
    localValue2()
  end
  localValue2 = localValue1.name
  if "Chrome" ~= localValue2 then
    localValue2 = localValue1.name
    if "Classic" ~= localValue2 then
      localValue2 = localValue1.name
      if "Matte" ~= localValue2 then
        localValue2 = localValue1.name
        if "Metallic" ~= localValue2 then
          localValue2 = localValue1.name
          if "Metals" ~= localValue2 then
            localValue2 = localValue1.name
            if "Pearlescent" ~= localValue2 then
              localValue2 = localValue1.name
              if "Util" ~= localValue2 then
                localValue2 = localValue1.name
                if "Chameleon" ~= localValue2 then
                  return
                end
              end
            end
          end
        end
      end
    end
  end
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52, stateFlag12, stateFlag, stateFlag2, stateFlag4
    localValue12 = CMG
    localValue12 = localValue12.loadPtfx
    localValue22 = "scr_as_trans"
    localValue12(localValue22)
    localValue12 = UseParticleFxAsset
    localValue22 = "scr_as_trans"
    localValue12(localValue22)
    localValue12 = StartParticleFxLoopedOnEntity
    localValue22 = "scr_as_trans_smoke"
    localValue32 = text15
    localValue4 = 0.0
    stateFlag8 = 0.0
    stateFlag10 = 0.0
    workingValue49 = 0.0
    workingValue50 = 0.0
    workingValue52 = 0.0
    stateFlag12 = 2.0
    stateFlag = false
    stateFlag2 = false
    stateFlag4 = false
    localValue12 = localValue12(localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52, stateFlag12, stateFlag, stateFlag2, stateFlag4)
    localValue22 = GetVehicleColor
    localValue32 = text15
    localValue22, localValue32, localValue4 = localValue22(localValue32)
    stateFlag8 = SetParticleFxLoopedColour
    stateFlag10 = localValue12
    workingValue49 = localValue22 / 255
    workingValue50 = localValue32 / 255
    workingValue52 = localValue4 / 255
    stateFlag12 = false
    stateFlag8(stateFlag10, workingValue49, workingValue50, workingValue52, stateFlag12)
    stateFlag8 = Citizen
    stateFlag8 = stateFlag8.Wait
    stateFlag10 = 1000
    stateFlag8(stateFlag10)
    stateFlag8 = StopParticleFxLooped
    stateFlag10 = localValue12
    workingValue49 = false
    stateFlag8(stateFlag10, workingValue49)
    stateFlag8 = RemoveNamedPtfxAsset
    stateFlag10 = "scr_as_trans"
    stateFlag8(stateFlag10)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
number3 = 0.5

-- === HELPER FUNCTION (decompiler name: workingValue32; parameters: none) ===
function workingValue32()
  local localValue1, localValue2, localValue3, text7
  localValue1 = GetVehiclePedIsIn
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = false
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1(localValue2, localValue3)
  localValue2 = CMG
  localValue2 = localValue2.getVehicleIdFromModel
  localValue3 = GetEntityModel
  text7 = localValue1
  localValue3, text7 = localValue3(text7)
  localValue2 = localValue2(localValue3, text7)
  localValue3 = cmgOperation2.customCars
  localValue3 = localValue3.Imports
  localValue3 = localValue3[localValue2]
  if localValue3 then
    localValue3 = true
    return localValue3
  end
  localValue3 = false
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: localValue1) ===
function workingValue33(localValue1)
  local localValue2
  if "Engine Tunes" == localValue1 or "Transmission" == localValue1 or "Suspension" == localValue1 or "Turbo" == localValue1 or "Brakes" == localValue1 then
    localValue2 = true
    return localValue2
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue34; parameters: localValue1) ===
function workingValue34(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number, stateFlag7, number2
  localValue2 = localValue1.helpText
  if localValue2 then
    localValue2 = drawNativeNotification
    localValue3 = localValue1.helpText
    text7 = true
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue2(localValue3, text7)
  end
  localValue2 = pairs
  localValue3 = localValue1.items
  localValue2, localValue3, text7, stringHelper2 = localValue2(localValue3)
  for rageUiOperation4, nameValue in localValue2, localValue3, text7, stringHelper2 do
    text17 = localValue1.saveValue
    text17 = nameValue[text17]
    text18 = type
    rageUiOperation7 = text17
    text18 = text18(rageUiOperation7)
    if "table" == text18 then
      text18 = json
      text18 = text18.encode
      rageUiOperation7 = text17
      text18 = text18(rageUiOperation7)
      if text18 then
        goto continueAtStep28
      end
    end
    text18 = tostring
    rageUiOperation7 = text17
    text18 = text18(rageUiOperation7)
    ::continueAtStep28::
    rageUiOperation = localValue1.saveKey
    rageUiOperation7 = text8
    rageUiOperation7 = rageUiOperation7[rageUiOperation]
    rageUiOperation7 = rageUiOperation7[text18]
    rageUiOperation = nameValue.price
    if not rageUiOperation then
      rageUiOperation = localValue1.price
    end
    workingValue = workingValue32
    workingValue = workingValue()
    if workingValue then
      workingValue = workingValue33
      workingValue2 = localValue1.name
      workingValue = workingValue(workingValue2)
      if workingValue then
        workingValue = math
        workingValue = workingValue.floor
        workingValue2 = number3
        workingValue2 = rageUiOperation * workingValue2
        workingValue = workingValue(workingValue2)
        rageUiOperation = workingValue
      end
    end
    workingValue = workingValue18
    workingValue2 = true == rageUiOperation7
    stateFlag5 = nil ~= rageUiOperation7
    stateFlag6 = rageUiOperation
    workingValue = workingValue(workingValue2, stateFlag5, stateFlag6)
    workingValue2 = RageUI
    workingValue2 = workingValue2.ButtonWithStyle
    stateFlag5 = nameValue.name
    stateFlag6 = nil
    number = workingValue
    stateFlag7 = true

    -- === HELPER FUNCTION (decompiler name: number2; parameters: localValue12, localValue22, localValue32) ===
    function number2(localValue12, localValue22, localValue32)
      local localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50
      if localValue22 then
        localValue4 = workingValue29
        stateFlag8 = localValue1
        stateFlag10 = nameValue
        localValue4(stateFlag8, stateFlag10)
      end
      if localValue32 then
        localValue4 = rageUiOperation7
        if true == localValue4 then
          localValue4 = notify
          stateFlag8 = "~r~You have already applied this mod"
          -- Beginner: Show a notification to the player.
          localValue4(stateFlag8)
        else
          localValue4 = rageUiOperation7
          if false == localValue4 then
            localValue4 = TriggerServerEvent
            stateFlag8 = "1d97587305"
            stateFlag10 = rageUiOperation5
            workingValue49 = cmgOperation.categoryToIndentifier
            workingValue50 = localValue1
            workingValue49 = workingValue49[workingValue50]
            workingValue50 = rageUiOperation4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1d97587305".
            localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50)
            localValue4 = workingValue31
            stateFlag8 = localValue1
            localValue4(stateFlag8)
          else
            localValue4 = TriggerServerEvent
            stateFlag8 = "94c59aead0"
            stateFlag10 = rageUiOperation5
            workingValue49 = cmgOperation.categoryToIndentifier
            workingValue50 = localValue1
            workingValue49 = workingValue49[workingValue50]
            workingValue50 = rageUiOperation4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "94c59aead0".
            localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50)
            localValue4 = workingValue31
            stateFlag8 = localValue1
            localValue4(stateFlag8)
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue2(stateFlag5, stateFlag6, number, stateFlag7, number2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1) ===
function workingValue35(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6
  localValue2 = pairs
  localValue3 = localValue1.items
  localValue2, localValue3, text7, stringHelper2 = localValue2(localValue3)
  for rageUiOperation4, nameValue in localValue2, localValue3, text7, stringHelper2 do
    text18 = localValue1.saveKey
    text17 = text8
    text17 = text17[text18]
    if not text17 then
      text17 = 0
    end
    text18 = type
    rageUiOperation7 = text17
    text18 = text18(rageUiOperation7)
    if "number" ~= text18 then
      text18 = tonumber
      rageUiOperation7 = text17
      text18 = text18(rageUiOperation7)
      text17 = text18 or text17
      if not text18 then
        text17 = 0
      end
    end
    text18 = workingValue18
    rageUiOperation7 = localValue1.ownedValue
    rageUiOperation7 = text17 == rageUiOperation7
    rageUiOperation = false
    workingValue = nameValue.price
    if not workingValue then
      workingValue = localValue1.price
    end
    text18 = text18(rageUiOperation7, rageUiOperation, workingValue)
    rageUiOperation7 = RageUI
    rageUiOperation7 = rageUiOperation7.ButtonWithStyle
    rageUiOperation = nameValue.name
    workingValue = nil
    workingValue2 = text18
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag6(localValue12, localValue22, localValue32)
      local localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50
      if localValue32 then
        localValue4 = text17
        stateFlag8 = localValue1.ownedValue
        if localValue4 == stateFlag8 then
          localValue4 = notify
          stateFlag8 = "~r~You have already applied this mod"
          -- Beginner: Show a notification to the player.
          localValue4(stateFlag8)
        else
          localValue4 = TriggerServerEvent
          stateFlag8 = "39ab80a2e4"
          stateFlag10 = rageUiOperation5
          workingValue49 = cmgOperation.categoryToIndentifier
          workingValue50 = localValue1
          workingValue49 = workingValue49[workingValue50]
          workingValue50 = rageUiOperation4
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "39ab80a2e4".
          localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50)
          localValue4 = workingValue19
          localValue4()
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation7(rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue36; parameters: localValue1) ===
function workingValue36(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5
  localValue3 = localValue1.saveKey
  localValue2 = text8
  localValue2 = localValue2[localValue3]
  if not localValue2 then
    localValue2 = {}
  end
  localValue3 = #localValue2
  if localValue3 > 0 then
    localValue3 = drawNativeNotification
    text7 = string
    text7 = text7.format
    stringHelper2 = "Press ~INPUT_FRONTEND_ACCEPT~ to change %s"
    rageUiOperation4 = localValue1.helpSuffix
    text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5 = text7(stringHelper2, rageUiOperation4)
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
  end
  localValue3 = pairs
  text7 = localValue2
  localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
  for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
    text18 = RageUI
    text18 = text18.ButtonWithStyle
    rageUiOperation7 = string
    rageUiOperation7 = rageUiOperation7.format
    rageUiOperation = "%s%d"
    workingValue = localValue1.indexPrefix
    workingValue2 = nameValue
    rageUiOperation7 = rageUiOperation7(rageUiOperation, workingValue, workingValue2)
    rageUiOperation = ""
    workingValue = {}
    workingValue2 = tostring
    stateFlag5 = text17
    workingValue2 = workingValue2(stateFlag5)
    workingValue.RightLabel = workingValue2
    workingValue2 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue12, localValue22, localValue32) ===
    function stateFlag5(localValue12, localValue22, localValue32)
      local localValue4, stateFlag8, stateFlag10, workingValue49
      if localValue32 then
        localValue4 = CMG
        localValue4 = localValue4.clientPrompt
        stateFlag8 = localValue1.inputTitle
        stateFlag10 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue13) ===
        function workingValue49(localValue13)
          local localValue23, localValue33, number4, stateFlag9, stateFlag11, number5, workingValue51, workingValue53
          localValue33 = nameValue
          localValue23 = localValue2
          localValue23 = localValue23[localValue33]
          localValue33 = nil
          number4 = localValue1.valueType
          if "number" == number4 then
            number4 = tonumber
            stateFlag9 = localValue13
            number4 = number4(stateFlag9)
            if number4 then
              localValue33 = number4
            else
              stateFlag9 = notify
              stateFlag11 = "~r~Could not parse number."
              -- Beginner: Show a notification to the player.
              stateFlag9(stateFlag11)
            end
          else
            localValue33 = localValue13
          end
          if localValue33 and localValue33 ~= localValue23 then
            number4 = TriggerServerEvent
            stateFlag9 = "50bb6e7b72"
            stateFlag11 = rageUiOperation5
            number5 = cmgOperation.categoryToIndentifier
            workingValue51 = localValue1
            number5 = number5[workingValue51]
            workingValue51 = nameValue
            workingValue53 = localValue33
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "50bb6e7b72".
            number4(stateFlag9, stateFlag11, number5, workingValue51, workingValue53)
          end
        end
        localValue4(stateFlag8, stateFlag10, workingValue49)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    text18(rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
  end
  localValue3 = RageUI
  localValue3 = localValue3.ButtonWithStyle
  text7 = localValue1.buyTitle
  stringHelper2 = ""
  rageUiOperation4 = {}
  nameValue = "\194\163"
  text17 = getMoneyStringFormatted
  text18 = workingValue17
  rageUiOperation7 = localValue1.price
  text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5 = text18(rageUiOperation7)
  text17 = text17(text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
  nameValue = nameValue .. text17
  rageUiOperation4.RightLabel = nameValue
  nameValue = true

  -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
  function text17(localValue12, localValue22, localValue32)
    local localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50
    if localValue32 then
      localValue4 = TriggerServerEvent
      stateFlag8 = "7a505e9225"
      stateFlag10 = rageUiOperation5
      workingValue49 = cmgOperation.categoryToIndentifier
      workingValue50 = localValue1
      workingValue49 = workingValue49[workingValue50]
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7a505e9225".
      localValue4(stateFlag8, stateFlag10, workingValue49)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17)
end

-- === HELPER FUNCTION (decompiler name: workingValue37; parameters: localValue1, localValue2) ===
function workingValue37(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue3 = localValue1.saveKey
  if "primaryrgb" == localValue3 then
    text7 = SetVehicleCustomPrimaryColour
    stringHelper2 = text15
    rageUiOperation4 = localValue2.red
    nameValue = localValue2.green
    text17 = localValue2.blue
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue38; parameters: localValue1) ===
function workingValue38(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2
  localValue3 = localValue1.saveKey
  localValue2 = text8
  localValue2 = localValue2[localValue3]

  -- === HELPER FUNCTION: localValue3(localValue12, localValue22) ===
  function localValue3(localValue12, localValue22)
    local localValue32, localValue4, stateFlag8, stateFlag10
    if localValue12 then
      localValue32 = CMG
      localValue32 = localValue32.clientPrompt
      localValue4 = "Enter Value (0 - 255)"
      stateFlag8 = ""

      -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: localValue13) ===
      function stateFlag10(localValue13)
        local localValue23, localValue33, number4
        localValue23 = tonumber
        localValue33 = localValue13
        localValue23 = localValue23(localValue33)
        if localValue23 then
          localValue33 = math
          localValue33 = localValue33.type
          number4 = localValue23
          localValue33 = localValue33(number4)
          if "integer" == localValue33 and localValue23 >= 0 then
            localValue33 = 255
            if localValue23 <= localValue33 then
              localValue33 = localValue22
              number4 = localValue23
              localValue33(number4)
            end
          end
        end
      end
      localValue32(localValue4, stateFlag8, stateFlag10)
    end
  end

  -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
  function text7()
    local localValue12, localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49
    localValue12 = workingValue37
    localValue22 = localValue1
    localValue32 = localValue2
    localValue12(localValue22, localValue32)
    localValue12 = TriggerServerEvent
    localValue22 = "e4da2894cf"
    localValue32 = rageUiOperation5
    localValue4 = cmgOperation.categoryToIndentifier
    stateFlag8 = localValue1
    localValue4 = localValue4[stateFlag8]
    stateFlag8 = localValue2.red
    stateFlag10 = localValue2.green
    workingValue49 = localValue2.blue
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e4da2894cf".
    localValue12(localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49)
  end
  if not localValue2 then
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.ButtonWithStyle
    rageUiOperation4 = "Purchase Colour Picker"
    nameValue = ""
    text17 = {}
    text18 = "\194\163"
    rageUiOperation7 = getMoneyStringFormatted
    rageUiOperation = workingValue17
    workingValue = localValue1.price
    rageUiOperation, workingValue, workingValue2 = rageUiOperation(workingValue)
    rageUiOperation7 = rageUiOperation7(rageUiOperation, workingValue, workingValue2)
    text18 = text18 .. rageUiOperation7
    text17.RightLabel = text18
    text18 = true

    -- === HELPER FUNCTION (decompiler name: rageUiOperation7; parameters: localValue12, localValue22, localValue32) ===
    function rageUiOperation7(localValue12, localValue22, localValue32)
      local localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50
      if localValue32 then
        localValue4 = TriggerServerEvent
        stateFlag8 = "a3c480899a"
        stateFlag10 = rageUiOperation5
        workingValue49 = cmgOperation.categoryToIndentifier
        workingValue50 = localValue1
        workingValue49 = workingValue49[workingValue50]
        localValue4(stateFlag8, stateFlag10, workingValue49)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    stringHelper2(rageUiOperation4, nameValue, text17, text18, rageUiOperation7)
  else
    stringHelper2 = drawNativeNotification
    rageUiOperation4 = "Press ~INPUT_FRONTEND_ACCEPT~ to enter an RGB value."
    -- Beginner: Show a GTA-style notification/help prompt.
    stringHelper2(rageUiOperation4)
  end
  stringHelper2 = RageUI
  stringHelper2 = stringHelper2.Slider
  rageUiOperation4 = "Red"
  if localValue2 then
    nameValue = localValue2.red
    if nameValue then
      goto continueAtStep38
    end
  end
  nameValue = 0
  ::continueAtStep38::
  text17 = 255
  text18 = ""
  rageUiOperation7 = false
  rageUiOperation = {}
  workingValue = nil ~= localValue2

  -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue12, localValue22, localValue32, localValue4) ===
  function workingValue2(localValue12, localValue22, localValue32, localValue4)
    local stateFlag8, stateFlag10, workingValue49
    stateFlag8 = localValue3
    stateFlag10 = localValue32

    -- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue13) ===
    function workingValue49(localValue13)
      local localValue23
      localValue2.red = localValue13
      localValue23 = text7
      localValue23()
    end
    stateFlag8(stateFlag10, workingValue49)
    stateFlag8 = localValue2.red
    if stateFlag8 ~= localValue4 then
      localValue2.red = localValue4
      stateFlag8 = text7
      stateFlag8()
    end
  end
  stringHelper2(rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2)
  stringHelper2 = RageUI
  stringHelper2 = stringHelper2.Slider
  rageUiOperation4 = "Green"
  if localValue2 then
    nameValue = localValue2.green
    if nameValue then
      goto continueAtStep58
    end
  end
  nameValue = 0
  ::continueAtStep58::
  text17 = 255
  text18 = ""
  rageUiOperation7 = false
  rageUiOperation = {}
  workingValue = nil ~= localValue2

  -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue12, localValue22, localValue32, localValue4) ===
  function workingValue2(localValue12, localValue22, localValue32, localValue4)
    local stateFlag8, stateFlag10, workingValue49
    stateFlag8 = localValue3
    stateFlag10 = localValue32

    -- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue13) ===
    function workingValue49(localValue13)
      local localValue23
      localValue2.green = localValue13
      localValue23 = text7
      localValue23()
    end
    stateFlag8(stateFlag10, workingValue49)
    stateFlag8 = localValue2.green
    if stateFlag8 ~= localValue4 then
      localValue2.green = localValue4
      stateFlag8 = text7
      stateFlag8()
    end
  end
  stringHelper2(rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2)
  stringHelper2 = RageUI
  stringHelper2 = stringHelper2.Slider
  rageUiOperation4 = "Blue"
  if localValue2 then
    nameValue = localValue2.blue
    if nameValue then
      goto continueAtStep78
    end
  end
  nameValue = 0
  ::continueAtStep78::
  text17 = 255
  text18 = ""
  rageUiOperation7 = false
  rageUiOperation = {}
  workingValue = nil ~= localValue2

  -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue12, localValue22, localValue32, localValue4) ===
  function workingValue2(localValue12, localValue22, localValue32, localValue4)
    local stateFlag8, stateFlag10, workingValue49
    stateFlag8 = localValue3
    stateFlag10 = localValue32

    -- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue13) ===
    function workingValue49(localValue13)
      local localValue23
      localValue2.blue = localValue13
      localValue23 = text7
      localValue23()
    end
    stateFlag8(stateFlag10, workingValue49)
    stateFlag8 = localValue2.blue
    if stateFlag8 ~= localValue4 then
      localValue2.blue = localValue4
      stateFlag8 = text7
      stateFlag8()
    end
  end
  stringHelper2(rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue39; parameters: localValue1, localValue2) ===
function workingValue39(localValue1, localValue2)
  local localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue
  localValue3 = RageUI
  localValue3 = localValue3.ButtonWithStyle
  text7 = localValue1.name
  stringHelper2 = localValue1.description
  rageUiOperation4 = {}
  rageUiOperation4.RightLabel = "\226\134\146\226\134\146\226\134\146"
  nameValue = true

  -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
  function text17(localValue12, localValue22, localValue32)
    local localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52, stateFlag12
    if localValue32 then
      localValue4 = TriggerEvent
      stateFlag8 = "e3500806d7"
      stateFlag10 = localValue1.menuType
      workingValue49 = text15
      workingValue50 = rageUiOperation5
      workingValue52 = text8
      stateFlag12 = localValue2
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e3500806d7".
      localValue4(stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52, stateFlag12)
    end
  end
  text18 = RMenu
  rageUiOperation7 = text18
  text18 = text18.Get
  rageUiOperation = localValue1.menuType
  workingValue = localValue1.menuName
  text18, rageUiOperation7, rageUiOperation, workingValue = text18(rageUiOperation7, rageUiOperation, workingValue)
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
end

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1) ===
function workingValue40(localValue1)
  local localValue2, localValue3, text7
  localValue2 = IsControlJustPressed
  localValue3 = 0
  text7 = 0
  localValue2 = localValue2(localValue3, text7)
  if localValue2 then
    localValue2 = rageUiOperation6
    if 0 == localValue2 then
      localValue2 = workingValue9
      localValue3 = localValue1
      localValue2(localValue3)
    else
      localValue2 = workingValue10
      localValue2()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue41; parameters: localValue1) ===
function workingValue41(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation
  localValue2 = {}
  localValue3 = pairs
  text7 = localValue1.categories
  localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
  for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
    text18 = table
    text18 = text18.insert
    rageUiOperation7 = localValue2
    rageUiOperation = text17
    text18(rageUiOperation7, rageUiOperation)
  end
  localValue3 = table
  localValue3 = localValue3.sort
  text7 = localValue2

  -- === HELPER FUNCTION: stringHelper2(localValue12, localValue22) ===
  function stringHelper2(localValue12, localValue22)
    local localValue32, localValue4
    localValue32 = localValue12.name
    if not localValue32 then
      localValue32 = ""
    end
    localValue4 = localValue22.name
    if not localValue4 then
      localValue4 = ""
    end
    localValue32 = localValue32 < localValue4
    return localValue32
  end
  localValue3(text7, stringHelper2)
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue42; parameters: localValue1) ===
function workingValue42(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18
  localValue2 = RageUI
  localValue2 = localValue2.IsVisible
  localValue3 = RMenu
  text7 = localValue3
  localValue3 = localValue3.Get
  stringHelper2 = "lscustoms"
  rageUiOperation4 = localValue1.menu
  -- Beginner: result below is menu.
  localValue3 = localValue3(text7, stringHelper2, rageUiOperation4)
  text7 = true
  stringHelper2 = true
  rageUiOperation4 = true

  -- === HELPER FUNCTION: nameValue() ===
  function nameValue()
    local localValue12, localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52, stateFlag12, stateFlag, stateFlag2, stateFlag4, workingValue4, text3, workingValue6
    localValue12 = RageUI
    localValue12 = localValue12.BackspaceMenuCallback

    -- === HELPER FUNCTION: localValue22() ===
    function localValue22()
      local localValue13, localValue23
      localValue13 = workingValue11
      localValue23 = localValue1
      localValue13(localValue23)
      localValue13 = localValue1.type
      if "modList" == localValue13 then
        localValue13 = workingValue21
        localValue23 = localValue1
        localValue13(localValue23)
      else
        localValue13 = localValue1.type
        if "staticList" == localValue13 then
          localValue13 = workingValue30
          localValue23 = localValue1
          localValue13(localValue23)
        else
          localValue13 = localValue1.type
          if "indexModList" == localValue13 then
            localValue13 = workingValue24
            localValue23 = localValue1
            localValue13(localValue23)
          end
        end
      end
    end
    localValue12(localValue22)
    localValue12 = localValue1.type
    if "modList" == localValue12 then
      localValue12 = workingValue22
      localValue22 = localValue1
      localValue12(localValue22)
      localValue12 = workingValue40
      localValue22 = localValue1
      localValue12(localValue22)
    else
      localValue12 = localValue1.type
      if "indexModList" == localValue12 then
        localValue12 = workingValue25
        localValue22 = localValue1
        localValue12(localValue22)
        localValue12 = workingValue40
        localValue22 = localValue1
        localValue12(localValue22)
      else
        localValue12 = localValue1.type
        if "indexMultiList" == localValue12 then
          localValue12 = workingValue26
          localValue22 = localValue1
          localValue12(localValue22)
          localValue12 = workingValue40
          localValue22 = localValue1
          localValue12(localValue22)
        else
          localValue12 = localValue1.type
          if "staticList" == localValue12 then
            localValue12 = workingValue34
            localValue22 = localValue1
            localValue12(localValue22)
            localValue12 = workingValue40
            localValue22 = localValue1
            localValue12(localValue22)
          else
            localValue12 = localValue1.type
            if "staticValueList" == localValue12 then
              localValue12 = workingValue35
              localValue22 = localValue1
              localValue12(localValue22)
              localValue12 = workingValue40
              localValue22 = localValue1
              localValue12(localValue22)
            else
              localValue12 = localValue1.type
              if "valueInputList" == localValue12 then
                localValue12 = workingValue36
                localValue22 = localValue1
                localValue12(localValue22)
                localValue12 = workingValue40
                localValue22 = localValue1
                localValue12(localValue22)
              else
                localValue12 = localValue1.type
                if "colourPicker" == localValue12 then
                  localValue12 = workingValue38
                  localValue22 = localValue1
                  localValue12(localValue22)
                  localValue12 = workingValue40
                  localValue22 = localValue1
                  localValue12(localValue22)
                else
                  localValue12 = localValue1.type
                  if "categoryList" == localValue12 then
                    localValue12 = ipairs
                    localValue22 = workingValue41
                    localValue32 = localValue1
                    localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52, stateFlag12, stateFlag, stateFlag2, stateFlag4, workingValue4, text3, workingValue6 = localValue22(localValue32)
                    localValue12, localValue22, localValue32, localValue4 = localValue12(localValue22, localValue32, localValue4, stateFlag8, stateFlag10, workingValue49, workingValue50, workingValue52, stateFlag12, stateFlag, stateFlag2, stateFlag4, workingValue4, text3, workingValue6)
                    for stateFlag8, stateFlag10 in localValue12, localValue22, localValue32, localValue4 do
                      workingValue49 = stateFlag10.visible
                      if workingValue49 then
                        workingValue49 = stateFlag10.type
                        if "externalMenu" == workingValue49 then
                          workingValue49 = workingValue39
                          workingValue50 = stateFlag10
                          workingValue52 = {}
                          stateFlag12 = "lscustoms"
                          stateFlag = localValue1.menu
                          workingValue52[1] = stateFlag12
                          workingValue52[2] = stateFlag
                          workingValue49(workingValue50, workingValue52)
                        else
                          workingValue49 = RageUI
                          workingValue49 = workingValue49.ButtonWithStyle
                          workingValue50 = stateFlag10.name
                          workingValue52 = stateFlag10.description
                          stateFlag12 = {}
                          stateFlag12.RightLabel = "\226\134\146\226\134\146\226\134\146"
                          stateFlag = true

                          -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue13, localValue23, localValue33) ===
                          function stateFlag2(localValue13, localValue23, localValue33)
                            local number4, stateFlag9
                            if localValue33 then
                              number4 = workingValue9
                              stateFlag9 = stateFlag10
                              number4(stateFlag9)
                            end
                          end
                          stateFlag4 = RMenu
                          workingValue4 = stateFlag4
                          stateFlag4 = stateFlag4.Get
                          text3 = "lscustoms"
                          workingValue6 = stateFlag10.menu
                          stateFlag4, workingValue4, text3, workingValue6 = stateFlag4(workingValue4, text3, workingValue6)
                          -- Beginner: Draw a selectable RageUI menu button.
                          workingValue49(workingValue50, workingValue52, stateFlag12, stateFlag, stateFlag2, stateFlag4, workingValue4, text3, workingValue6)
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
  localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue)
  localValue2 = localValue1.type
  if "categoryList" == localValue2 then
    localValue2 = pairs
    localValue3 = localValue1.categories
    localValue2, localValue3, text7, stringHelper2 = localValue2(localValue3)
    for rageUiOperation4, nameValue in localValue2, localValue3, text7, stringHelper2 do
      text17 = workingValue42
      text18 = nameValue
      text17(text18)
    end
  end
end
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateWhile
dataCollection2 = 1.0
workingValue43 = RMenu
workingValue44 = workingValue43
workingValue43 = workingValue43.Get
text9 = "lscustoms"
cmgOperation3 = "mainmenu"
-- Beginner: result below is menu.
workingValue43 = workingValue43(workingValue44, text9, cmgOperation3)
workingValue44 = nil

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text7 = "lscustoms"
  stringHelper2 = "repair"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text7, stringHelper2)
  localValue3 = true
  text7 = true
  stringHelper2 = true

  -- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
  function rageUiOperation4()
    local localValue12, localValue22, localValue32, localValue4, stateFlag8, stateFlag10
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Repair Vehicle"
    localValue32 = nil
    localValue4 = {}
    localValue4.RightLabel = "\194\1631,000"
    stateFlag8 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: localValue13, localValue23, localValue33) ===
    function stateFlag10(localValue13, localValue23, localValue33)
      local number4, stateFlag9
      if localValue33 then
        number4 = TriggerServerEvent
        stateFlag9 = "d4574bdb4a"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d4574bdb4a".
        number4(stateFlag9)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, localValue4, stateFlag8, stateFlag10)
  end
  localValue1(localValue2, localValue3, text7, stringHelper2, rageUiOperation4)
  localValue1 = workingValue42
  localValue2 = cmgOperation.category
  localValue1(localValue2)
end
rageUiOperation2(dataCollection2, workingValue43, workingValue44, text9)
rageUiOperation2 = {}

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2
  localValue1 = true
  return localValue1
end
rageUiOperation2.default = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = IsThisModelACar
  localValue2 = GetEntityModel
  localValue3 = text15
  localValue2, localValue3 = localValue2(localValue3)
  return localValue1(localValue2, localValue3)
end
rageUiOperation2.isCar = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = IsThisModelABike
  localValue2 = GetEntityModel
  localValue3 = text15
  localValue2, localValue3 = localValue2(localValue3)
  return localValue1(localValue2, localValue3)
end
rageUiOperation2.isBike = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = IsThisModelAPlane
  localValue2 = GetEntityModel
  localValue3 = text15
  localValue2, localValue3 = localValue2(localValue3)
  return localValue1(localValue2, localValue3)
end
rageUiOperation2.isPlane = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = GetNumVehicleMods
  localValue2 = text15
  localValue3 = 1
  localValue1 = localValue1(localValue2, localValue3)
  localValue1 = localValue1 > 0
  return localValue1
end
rageUiOperation2.hasFrontBumper = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = GetNumVehicleMods
  localValue2 = text15
  localValue3 = 2
  localValue1 = localValue1(localValue2, localValue3)
  localValue1 = localValue1 > 0
  return localValue1
end
rageUiOperation2.hasRearBumper = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = GetNumVehicleMods
  localValue2 = text15
  localValue3 = 1
  localValue1 = localValue1(localValue2, localValue3)
  localValue1 = localValue1 > 0
  return localValue1
end
rageUiOperation2.hasAnyBumper = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue
  localValue1 = 42
  localValue2 = 46
  localValue3 = 1
  for text7 = localValue1, localValue2, localValue3 do
    stringHelper2 = GetNumVehicleMods
    rageUiOperation4 = text15
    nameValue = text7
    stringHelper2 = stringHelper2(rageUiOperation4, nameValue)
    if stringHelper2 > 0 then
      stringHelper2 = true
      return stringHelper2
    end
  end
  localValue1 = GetNumVehicleMods
  localValue2 = text15
  localValue3 = 5
  localValue1 = localValue1(localValue2, localValue3)
  localValue1 = localValue1 > 0
  return localValue1
end
rageUiOperation2.hasChassis = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue
  localValue1 = 27
  localValue2 = 37
  localValue3 = 1
  for text7 = localValue1, localValue2, localValue3 do
    stringHelper2 = GetNumVehicleMods
    rageUiOperation4 = text15
    nameValue = text7
    stringHelper2 = stringHelper2(rageUiOperation4, nameValue)
    if stringHelper2 > 0 then
      stringHelper2 = true
      return stringHelper2
    end
  end
  localValue1 = false
  return localValue1
end
rageUiOperation2.hasInterior = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = GetNumVehicleMods
  localValue2 = text15
  localValue3 = 25
  localValue1 = localValue1(localValue2, localValue3)
  localValue1 = localValue1 > 0
  return localValue1
end
rageUiOperation2.hasPlates = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = IsThisModelACar
  localValue2 = GetEntityModel
  localValue3 = text15
  localValue2, localValue3 = localValue2(localValue3)
  localValue1 = localValue1(localValue2, localValue3)
  if not localValue1 then
    localValue1 = IsThisModelABike
    localValue2 = GetEntityModel
    localValue3 = text15
    localValue2, localValue3 = localValue2(localValue3)
    localValue1 = localValue1(localValue2, localValue3)
  end
  return localValue1
end
rageUiOperation2.isCarOrBike = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3
  localValue1 = GetEntityModel
  localValue2 = text15
  -- Beginner: result below is modelHash.
  localValue1 = localValue1(localValue2)
  localValue2 = IsThisModelACar
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = IsThisModelABike
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = IsThisModelAHeli
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
    end
  end
  return localValue2
end
rageUiOperation2.isCarOrBikeOrHeli = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2
  localValue1 = text8
  if localValue1 then
    localValue1 = text8.security
    if localValue1 then
      localValue1 = text8.security
      localValue1 = localValue1["21"]
      localValue1 = nil ~= localValue1
    end
  end
  return localValue1
end
rageUiOperation2.hasBiometricLock = dataCollection2
dataCollection2 = {}
dataCollection2[18] = true
dataCollection2[22] = true

-- === HELPER FUNCTION (decompiler name: workingValue43; parameters: localValue1) ===
function workingValue43(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue
  localValue1.visible = true
  localValue2 = localValue1.type
  if "modList" == localValue2 then
    localValue2 = GetNumVehicleMods
    localValue3 = text15
    text7 = localValue1.modType
    localValue2 = localValue2(localValue3, text7)
    localValue2 = localValue2 > 0
    localValue1.visible = localValue2
  else
    localValue2 = localValue1.type
    if "indexModList" ~= localValue2 then
      localValue2 = localValue1.type
      if "indexMultiList" ~= localValue2 then
        goto continueAtStep34
      end
    end
    localValue2 = table
    localValue2 = localValue2.count
    text7 = localValue1.generatorName
    localValue3 = dataCollection
    localValue3 = localValue3[text7]
    localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue = localValue3()
    -- Beginner: result below is count.
    localValue2 = localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
    localValue2 = localValue2 > 0
    localValue1.visible = localValue2
    goto continueAtStep100
    ::continueAtStep34::
    localValue2 = localValue1.type
    if "staticList" == localValue2 then
      localValue2 = string
      localValue2 = localValue2.match
      localValue3 = localValue1.saveKey
      text7 = "mod_"
      localValue2 = localValue2(localValue3, text7)
      if localValue2 then
        localValue2 = tonumber
        localValue3 = string
        localValue3 = localValue3.sub
        text7 = localValue1.saveKey
        stringHelper2 = 5
        localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue = localValue3(text7, stringHelper2)
        localValue2 = localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
        if localValue2 then
          localValue3 = dataCollection2
          localValue3 = localValue3[localValue2]
          if not localValue3 then
            localValue3 = GetNumVehicleMods
            text7 = text15
            stringHelper2 = localValue2
            localValue3 = localValue3(text7, stringHelper2)
            if 0 == localValue3 then
              localValue1.visible = false
            end
          end
        end
      end
    end
    localValue2 = localValue1.requirements
    if localValue2 then
      localValue2 = stringsplit
      localValue3 = localValue1.requirements
      text7 = ","
      localValue2 = localValue2(localValue3, text7)
      localValue3 = pairs
      text7 = localValue2
      localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
      for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
        text18 = string
        text18 = text18.gsub
        rageUiOperation7 = text17
        rageUiOperation = "%s+"
        workingValue = ""
        text18 = text18(rageUiOperation7, rageUiOperation, workingValue)
        text17 = text18
        text18 = rageUiOperation2
        text18 = text18[text17]
        rageUiOperation7 = text18
        rageUiOperation7 = rageUiOperation7()
        if not rageUiOperation7 then
          localValue1.visible = false
          break
        end
      end
    else
      localValue2 = localValue1.visible
      if localValue2 then
        localValue2 = rageUiOperation2.default
        localValue2 = localValue2()
        localValue1.visible = localValue2
      end
    end
  end
  ::continueAtStep100::
  localValue2 = localValue1.type
  if "categoryList" == localValue2 then
    localValue2 = false
    localValue3 = pairs
    text7 = localValue1.categories
    localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
    for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
      text18 = workingValue43
      rageUiOperation7 = text17
      text18(rageUiOperation7)
      text18 = text17.visible
      if text18 then
        localValue2 = true
      end
    end
    if not localValue2 then
      localValue1.visible = false
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: none) ===
function workingValue44()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number
  localValue1 = CMG
  localValue1 = localValue1.getVehicleIdFromModel
  localValue2 = GetEntityModel
  localValue3 = text15
  localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number = localValue2(localValue3)
  localValue1 = localValue1(localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number)
  text16 = localValue1
  localValue1 = DecorExistOn
  localValue2 = text15
  localValue3 = "0a6cf607ed"
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = DecorGetInt
    localValue2 = text15
    localValue3 = "0a6cf607ed"
    localValue1 = localValue1(localValue2, localValue3)
    rageUiOperation5 = localValue1
  else
    localValue1 = 0
    rageUiOperation5 = localValue1
  end
  localValue1 = text16
  if nil ~= localValue1 then
    localValue1 = rageUiOperation5
    if 0 ~= localValue1 then
      localValue1 = rageUiOperation3
      if localValue1 then
        goto continueAtStep39
      end
    end
  end
  localValue1 = notify
  localValue2 = "~r~Could not identify the vehicle you are in."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
  localValue1 = nil
  rageUiOperation3 = localValue1
  localValue1 = 0
  text15 = localValue1
  return
  ::continueAtStep39::
  localValue1 = TriggerServerEvent
  localValue2 = "233c2baede"
  localValue3 = rageUiOperation5
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "233c2baede".
  localValue1(localValue2, localValue3)
  while true do
    localValue1 = text8
    if localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = DisplayRadar
  localValue2 = false
  localValue1(localValue2)
  localValue1 = SetPlayerControl
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = false
  text7 = 0
  localValue1(localValue2, localValue3, text7)
  localValue1 = TriggerServerEvent
  localValue2 = "ae63f8542b"
  localValue3 = rageUiOperation3.index
  text7 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
  localValue1(localValue2, localValue3, text7)
  localValue1 = DoScreenFadeOut
  localValue2 = 500
  localValue1(localValue2)
  while true do
    localValue1 = IsScreenFadingOut
    localValue1 = localValue1()
    if not localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = rageUiOperation3.driveIn
  localValue2 = SetEntityCoordsNoOffset
  localValue3 = text15
  text7 = localValue1.position
  text7 = text7.x
  stringHelper2 = localValue1.position
  stringHelper2 = stringHelper2.y
  rageUiOperation4 = localValue1.position
  rageUiOperation4 = rageUiOperation4.z
  nameValue = false
  text17 = false
  text18 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18)
  localValue2 = SetEntityHeading
  localValue3 = text15
  text7 = localValue1.heading
  -- Beginner: Change the direction an entity is facing.
  localValue2(localValue3, text7)
  localValue2 = FadeOutLocalPlayer
  localValue3 = true
  localValue2(localValue3)
  localValue2 = SetVehicleOnGroundProperly
  localValue3 = text15
  localValue2(localValue3)
  localValue2 = SetVehicleLights
  localValue3 = text15
  text7 = 2
  localValue2(localValue3, text7)
  localValue2 = SetVehicleInteriorlight
  localValue3 = text15
  text7 = true
  localValue2(localValue3, text7)
  localValue2 = SetVehicleDoorsLocked
  localValue3 = text15
  text7 = 4
  localValue2(localValue3, text7)
  localValue2 = SetPlayerInvincible
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  text7 = true
  localValue2(localValue3, text7)
  localValue2 = SetEntityInvincible
  localValue3 = text15
  text7 = true
  localValue2(localValue3, text7)
  localValue2 = SetEntityCanBeDamaged
  localValue3 = text15
  text7 = false
  localValue2(localValue3, text7)
  localValue2 = SetVehRadioStation
  localValue3 = text15
  text7 = "OFF"
  localValue2(localValue3, text7)
  localValue2 = rageUiOperation3.interior
  if localValue2 then
    localValue3 = ForceRoomForEntity
    text7 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text7 = text7()
    stringHelper2 = localValue2.key
    rageUiOperation4 = localValue2.room
    localValue3(text7, stringHelper2, rageUiOperation4)
    localValue3 = ForceRoomForEntity
    text7 = text15
    stringHelper2 = localValue2.key
    rageUiOperation4 = localValue2.room
    localValue3(text7, stringHelper2, rageUiOperation4)
    localValue3 = ForceRoomForGameViewport
    text7 = localValue2.key
    stringHelper2 = localValue2.room
    localValue3(text7, stringHelper2)
  end
  localValue3 = rageUiOperation3.type
  if "automobile" == localValue3 then
    localValue3 = rageUiOperation3.camera
    text7 = GetRenderingCam
    text7 = text7()
    text = text7
    text7 = CreateCam
    stringHelper2 = "DEFAULT_SCRIPTED_CAMERA"
    rageUiOperation4 = true
    -- Beginner: result below is cameraHandle.
    text7 = text7(stringHelper2, rageUiOperation4)
    rageUiOperation6 = text7
    text7 = SetCamCoord
    stringHelper2 = rageUiOperation6
    rageUiOperation4 = localValue3.position
    rageUiOperation4 = rageUiOperation4.x
    nameValue = localValue3.position
    nameValue = nameValue.y
    text17 = localValue3.position
    text17 = text17.z
    text17 = text17 + 1.0
    text7(stringHelper2, rageUiOperation4, nameValue, text17)
    text7 = PointCamAtEntity
    stringHelper2 = rageUiOperation6
    rageUiOperation4 = text15
    nameValue = 1
    text17 = 1
    text18 = 1
    rageUiOperation7 = true
    text7(stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7)
    text7 = SetCamActive
    stringHelper2 = rageUiOperation6
    rageUiOperation4 = true
    text7(stringHelper2, rageUiOperation4)
    text7 = RenderScriptCams
    stringHelper2 = true
    rageUiOperation4 = false
    nameValue = 0
    text17 = false
    text18 = false
    text7(stringHelper2, rageUiOperation4, nameValue, text17, text18)
    text7 = rageUiOperation3.inside
    stringHelper2 = TaskVehicleDriveToCoord
    rageUiOperation4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    rageUiOperation4 = rageUiOperation4()
    nameValue = text15
    text17 = text7.position
    text17 = text17.x
    text18 = text7.position
    text18 = text18.y
    rageUiOperation7 = text7.position
    rageUiOperation7 = rageUiOperation7.z
    rageUiOperation = 3.0
    workingValue = 1.0
    workingValue2 = GetEntityModel
    stateFlag5 = text15
    -- Beginner: result below is modelHash.
    workingValue2 = workingValue2(stateFlag5)
    stateFlag5 = 16777216
    stateFlag6 = 0.1
    number = 1
    stringHelper2(rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number)
  end
  if localValue2 then
    localValue3 = ForceRoomForEntity
    text7 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text7 = text7()
    stringHelper2 = localValue2.key
    rageUiOperation4 = localValue2.room
    localValue3(text7, stringHelper2, rageUiOperation4)
    localValue3 = ForceRoomForEntity
    text7 = text15
    stringHelper2 = localValue2.key
    rageUiOperation4 = localValue2.room
    localValue3(text7, stringHelper2, rageUiOperation4)
    localValue3 = ForceRoomForGameViewport
    text7 = localValue2.key
    stringHelper2 = localValue2.room
    localValue3(text7, stringHelper2)
  end
  localValue3 = DoScreenFadeIn
  text7 = 3000
  localValue3(text7)
  while true do
    localValue3 = IsScreenFadingIn
    localValue3 = localValue3()
    if not localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    text7 = 0
    localValue3(text7)
  end
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  while true do
    text7 = IsVehicleStopped
    stringHelper2 = text15
    text7 = text7(stringHelper2)
    if text7 then
      break
    end
    text7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text7 = text7()
    text7 = text7 - localValue3
    stringHelper2 = 15000
    if text7 > stringHelper2 then
      break
    end
    text7 = Citizen
    text7 = text7.Wait
    stringHelper2 = 0
    text7(stringHelper2)
  end
  text7 = ClearPedTasks
  stringHelper2 = PlayerPedId
  stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number = stringHelper2()
  text7(stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number)
  text7 = rageUiOperation3.type
  if "automobile" == text7 then
    text7 = GetFinalRenderedCamCoord
    text7 = text7()
    stringHelper2 = SetCamCoord
    rageUiOperation4 = rageUiOperation6
    nameValue = text7.x
    text17 = text7.y
    text18 = text7.z
    stringHelper2(rageUiOperation4, nameValue, text17, text18)
    stringHelper2 = GetGameplayCamRot
    rageUiOperation4 = 2
    stringHelper2 = stringHelper2(rageUiOperation4)
    rageUiOperation4 = SetCamRot
    nameValue = rageUiOperation6
    text17 = stringHelper2.x
    text18 = stringHelper2.y
    rageUiOperation7 = stringHelper2.z
    rageUiOperation = 2
    rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation)
    rageUiOperation4 = RenderScriptCams
    nameValue = true
    text17 = true
    text18 = 0
    rageUiOperation7 = false
    rageUiOperation = false
    rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation)
    rageUiOperation4 = RenderScriptCams
    nameValue = false
    text17 = true
    text18 = 1000
    rageUiOperation7 = false
    rageUiOperation = false
    rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation)
    rageUiOperation4 = SetCamActive
    nameValue = rageUiOperation6
    text17 = true
    rageUiOperation4(nameValue, text17)
    rageUiOperation4 = TogglePausedRenderphases
    nameValue = true
    rageUiOperation4(nameValue)
    rageUiOperation4 = SetCamActive
    nameValue = rageUiOperation6
    text17 = false
    rageUiOperation4(nameValue, text17)
  end
  text7 = FreezeEntityPosition
  stringHelper2 = text15
  rageUiOperation4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  text7(stringHelper2, rageUiOperation4)
  text7 = SetEntityCollision
  stringHelper2 = text15
  rageUiOperation4 = false
  nameValue = false
  text7(stringHelper2, rageUiOperation4, nameValue)
  text7 = SetPlayerControl
  stringHelper2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stringHelper2 = stringHelper2()
  rageUiOperation4 = true
  nameValue = 0
  text7(stringHelper2, rageUiOperation4, nameValue)
  text7 = RequestScriptAudioBank
  stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  rageUiOperation4 = false
  text7(stringHelper2, rageUiOperation4)
  text7 = RequestScriptAudioBank
  stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  rageUiOperation4 = false
  text7(stringHelper2, rageUiOperation4)
  text7 = RMenu
  stringHelper2 = text7
  text7 = text7.Get
  rageUiOperation4 = "lscustoms"
  nameValue = "mainmenu"
  -- Beginner: result below is menu.
  text7 = text7(stringHelper2, rageUiOperation4, nameValue)
  stringHelper2 = text7
  text7 = text7.SetSubtitle
  rageUiOperation4 = rageUiOperation3.name
  text7(stringHelper2, rageUiOperation4)
  text7 = workingValue43
  stringHelper2 = cmgOperation.category
  text7(stringHelper2)
  text7 = IsVehicleDamaged
  stringHelper2 = text15
  text7 = text7(stringHelper2)
  if text7 then
    text7 = RageUI
    text7 = text7.Visible
    stringHelper2 = RMenu
    rageUiOperation4 = stringHelper2
    stringHelper2 = stringHelper2.Get
    nameValue = "lscustoms"
    text17 = "repair"
    -- Beginner: result below is menu.
    stringHelper2 = stringHelper2(rageUiOperation4, nameValue, text17)
    rageUiOperation4 = true
    text7(stringHelper2, rageUiOperation4)
  else
    text7 = RageUI
    text7 = text7.Visible
    stringHelper2 = RMenu
    rageUiOperation4 = stringHelper2
    stringHelper2 = stringHelper2.Get
    nameValue = "lscustoms"
    text17 = "mainmenu"
    -- Beginner: result below is menu.
    stringHelper2 = stringHelper2(rageUiOperation4, nameValue, text17)
    rageUiOperation4 = true
    text7(stringHelper2, rageUiOperation4)
  end
  text7 = true
  stateFlag3 = text7
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue
  localValue1 = CMG
  localValue1 = localValue1.getVehicleIdFromModel
  localValue2 = GetEntityModel
  localValue3 = text15
  localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue = localValue2(localValue3)
  localValue1 = localValue1(localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
  text16 = localValue1
  localValue1 = DecorExistOn
  localValue2 = text15
  localValue3 = "0a6cf607ed"
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = DecorGetInt
    localValue2 = text15
    localValue3 = "0a6cf607ed"
    localValue1 = localValue1(localValue2, localValue3)
    rageUiOperation5 = localValue1
  else
    localValue1 = 0
    rageUiOperation5 = localValue1
  end
  localValue1 = text16
  if nil ~= localValue1 then
    localValue1 = rageUiOperation5
    if 0 ~= localValue1 then
      localValue1 = rageUiOperation3
      if localValue1 then
        goto continueAtStep51
      end
    end
  end
  localValue1 = notify
  localValue2 = "~r~Could not identify the vehicle you are in."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
  localValue1 = rageUiOperation3
  if localValue1 then
    localValue1 = TriggerServerEvent
    localValue2 = "ae63f8542b"
    localValue3 = rageUiOperation3.index
    text7 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
    localValue1(localValue2, localValue3, text7)
  end
  localValue1 = nil
  rageUiOperation3 = localValue1
  localValue1 = 0
  text15 = localValue1
  localValue1 = nil
  workingValue3 = localValue1
  localValue1 = nil
  workingValue5 = localValue1
  return
  ::continueAtStep51::
  localValue1 = nil
  text8 = localValue1
  localValue1 = TriggerServerEvent
  localValue2 = "233c2baede"
  localValue3 = rageUiOperation5
  localValue1(localValue2, localValue3)
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue1 = localValue1 + 15000
  while true do
    localValue2 = text8
    if nil ~= localValue2 then
      break
    end
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    if not (localValue1 > localValue2) then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = text8
  if nil == localValue2 then
    localValue2 = notify
    localValue3 = "~r~Could not load vehicle customizations."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    localValue2 = TriggerServerEvent
    localValue3 = "ae63f8542b"
    text7 = rageUiOperation3.index
    stringHelper2 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
    localValue2(localValue3, text7, stringHelper2)
    localValue2 = nil
    rageUiOperation3 = localValue2
    localValue2 = 0
    text15 = localValue2
    localValue2 = nil
    workingValue3 = localValue2
    localValue2 = nil
    workingValue5 = localValue2
    return
  end
  localValue2 = DisplayRadar
  localValue3 = false
  localValue2(localValue3)
  localValue2 = SetPlayerControl
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  text7 = false
  stringHelper2 = 0
  localValue2(localValue3, text7, stringHelper2)
  localValue2 = TriggerServerEvent
  localValue3 = "ae63f8542b"
  text7 = rageUiOperation3.index
  stringHelper2 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
  localValue2(localValue3, text7, stringHelper2)
  localValue2 = DoScreenFadeOut
  localValue3 = 500
  localValue2(localValue3)
  while true do
    localValue2 = IsScreenFadingOut
    localValue2 = localValue2()
    if not localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = rageUiOperation3.inside
  localValue3 = rageUiOperation3.driveIn
  text7 = SetEntityCoordsNoOffset
  stringHelper2 = text15
  rageUiOperation4 = localValue2.position
  rageUiOperation4 = rageUiOperation4.x
  nameValue = localValue2.position
  nameValue = nameValue.y
  text17 = localValue2.position
  text17 = text17.z
  text18 = false
  rageUiOperation7 = false
  rageUiOperation = false
  -- Beginner: Move/teleport an entity to new coordinates.
  text7(stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation)
  text7 = SetEntityHeading
  stringHelper2 = text15
  rageUiOperation4 = localValue2.heading
  if not rageUiOperation4 then
    rageUiOperation4 = localValue3.heading
  end
  -- Beginner: Change the direction an entity is facing.
  text7(stringHelper2, rageUiOperation4)
  text7 = GetPedInVehicleSeat
  stringHelper2 = text15
  rageUiOperation4 = -1
  text7 = text7(stringHelper2, rageUiOperation4)
  stringHelper2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stringHelper2 = stringHelper2()
  if text7 ~= stringHelper2 then
    text7 = TaskWarpPedIntoVehicle
    stringHelper2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    stringHelper2 = stringHelper2()
    rageUiOperation4 = text15
    nameValue = -1
    text7(stringHelper2, rageUiOperation4, nameValue)
    text7 = Citizen
    text7 = text7.Wait
    stringHelper2 = 250
    text7(stringHelper2)
  end
  text7 = FadeOutLocalPlayer
  stringHelper2 = true
  text7(stringHelper2)
  text7 = SetVehicleOnGroundProperly
  stringHelper2 = text15
  text7(stringHelper2)
  text7 = SetVehicleLights
  stringHelper2 = text15
  rageUiOperation4 = 2
  text7(stringHelper2, rageUiOperation4)
  text7 = SetVehicleInteriorlight
  stringHelper2 = text15
  rageUiOperation4 = true
  text7(stringHelper2, rageUiOperation4)
  text7 = SetVehicleDoorsLocked
  stringHelper2 = text15
  rageUiOperation4 = 4
  text7(stringHelper2, rageUiOperation4)
  text7 = SetPlayerInvincible
  stringHelper2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stringHelper2 = stringHelper2()
  rageUiOperation4 = true
  text7(stringHelper2, rageUiOperation4)
  text7 = SetEntityInvincible
  stringHelper2 = text15
  rageUiOperation4 = true
  text7(stringHelper2, rageUiOperation4)
  text7 = SetEntityCanBeDamaged
  stringHelper2 = text15
  rageUiOperation4 = false
  text7(stringHelper2, rageUiOperation4)
  text7 = SetVehRadioStation
  stringHelper2 = text15
  rageUiOperation4 = "OFF"
  text7(stringHelper2, rageUiOperation4)
  text7 = rageUiOperation3.interior
  if text7 then
    stringHelper2 = ForceRoomForEntity
    rageUiOperation4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    rageUiOperation4 = rageUiOperation4()
    nameValue = text7.key
    text17 = text7.room
    stringHelper2(rageUiOperation4, nameValue, text17)
    stringHelper2 = ForceRoomForEntity
    rageUiOperation4 = text15
    nameValue = text7.key
    text17 = text7.room
    stringHelper2(rageUiOperation4, nameValue, text17)
    stringHelper2 = ForceRoomForGameViewport
    rageUiOperation4 = text7.key
    nameValue = text7.room
    stringHelper2(rageUiOperation4, nameValue)
  end
  stringHelper2 = rageUiOperation3.type
  if "automobile" == stringHelper2 then
    stringHelper2 = rageUiOperation3.camera
    rageUiOperation4 = GetRenderingCam
    rageUiOperation4 = rageUiOperation4()
    text = rageUiOperation4
    rageUiOperation4 = CreateCam
    nameValue = "DEFAULT_SCRIPTED_CAMERA"
    text17 = true
    -- Beginner: result below is cameraHandle.
    rageUiOperation4 = rageUiOperation4(nameValue, text17)
    rageUiOperation6 = rageUiOperation4
    rageUiOperation4 = SetCamCoord
    nameValue = rageUiOperation6
    text17 = stringHelper2.position
    text17 = text17.x
    text18 = stringHelper2.position
    text18 = text18.y
    rageUiOperation7 = stringHelper2.position
    rageUiOperation7 = rageUiOperation7.z
    rageUiOperation7 = rageUiOperation7 + 1.0
    rageUiOperation4(nameValue, text17, text18, rageUiOperation7)
    rageUiOperation4 = PointCamAtEntity
    nameValue = rageUiOperation6
    text17 = text15
    text18 = 1
    rageUiOperation7 = 1
    rageUiOperation = 1
    workingValue = true
    rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
    rageUiOperation4 = SetCamActive
    nameValue = rageUiOperation6
    text17 = true
    rageUiOperation4(nameValue, text17)
    rageUiOperation4 = RenderScriptCams
    nameValue = true
    text17 = false
    text18 = 0
    rageUiOperation7 = false
    rageUiOperation = false
    rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation)
  end
  if text7 then
    stringHelper2 = ForceRoomForEntity
    rageUiOperation4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    rageUiOperation4 = rageUiOperation4()
    nameValue = text7.key
    text17 = text7.room
    stringHelper2(rageUiOperation4, nameValue, text17)
    stringHelper2 = ForceRoomForEntity
    rageUiOperation4 = text15
    nameValue = text7.key
    text17 = text7.room
    stringHelper2(rageUiOperation4, nameValue, text17)
    stringHelper2 = ForceRoomForGameViewport
    rageUiOperation4 = text7.key
    nameValue = text7.room
    stringHelper2(rageUiOperation4, nameValue)
  end
  stringHelper2 = DoScreenFadeIn
  rageUiOperation4 = 800
  stringHelper2(rageUiOperation4)
  while true do
    stringHelper2 = IsScreenFadingIn
    stringHelper2 = stringHelper2()
    if not stringHelper2 then
      break
    end
    stringHelper2 = Citizen
    stringHelper2 = stringHelper2.Wait
    rageUiOperation4 = 0
    stringHelper2(rageUiOperation4)
  end
  stringHelper2 = Citizen
  stringHelper2 = stringHelper2.Wait
  rageUiOperation4 = 400
  stringHelper2(rageUiOperation4)
  stringHelper2 = rageUiOperation3.type
  if "automobile" == stringHelper2 then
    stringHelper2 = rageUiOperation6
    if 0 ~= stringHelper2 then
      stringHelper2 = GetFinalRenderedCamCoord
      stringHelper2 = stringHelper2()
      rageUiOperation4 = SetCamCoord
      nameValue = rageUiOperation6
      text17 = stringHelper2.x
      text18 = stringHelper2.y
      rageUiOperation7 = stringHelper2.z
      rageUiOperation4(nameValue, text17, text18, rageUiOperation7)
      rageUiOperation4 = GetGameplayCamRot
      nameValue = 2
      rageUiOperation4 = rageUiOperation4(nameValue)
      nameValue = SetCamRot
      text17 = rageUiOperation6
      text18 = rageUiOperation4.x
      rageUiOperation7 = rageUiOperation4.y
      rageUiOperation = rageUiOperation4.z
      workingValue = 2
      nameValue(text17, text18, rageUiOperation7, rageUiOperation, workingValue)
      nameValue = RenderScriptCams
      text17 = true
      text18 = true
      rageUiOperation7 = 0
      rageUiOperation = false
      workingValue = false
      nameValue(text17, text18, rageUiOperation7, rageUiOperation, workingValue)
      nameValue = RenderScriptCams
      text17 = false
      text18 = true
      rageUiOperation7 = 1000
      rageUiOperation = false
      workingValue = false
      nameValue(text17, text18, rageUiOperation7, rageUiOperation, workingValue)
      nameValue = SetCamActive
      text17 = rageUiOperation6
      text18 = true
      nameValue(text17, text18)
      nameValue = TogglePausedRenderphases
      text17 = true
      nameValue(text17)
      nameValue = SetCamActive
      text17 = rageUiOperation6
      text18 = false
      nameValue(text17, text18)
    end
  end
  stringHelper2 = FreezeEntityPosition
  rageUiOperation4 = text15
  nameValue = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stringHelper2(rageUiOperation4, nameValue)
  stringHelper2 = SetEntityCollision
  rageUiOperation4 = text15
  nameValue = false
  text17 = false
  stringHelper2(rageUiOperation4, nameValue, text17)
  stringHelper2 = SetPlayerControl
  rageUiOperation4 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  rageUiOperation4 = rageUiOperation4()
  nameValue = true
  text17 = 0
  stringHelper2(rageUiOperation4, nameValue, text17)
  stringHelper2 = RequestScriptAudioBank
  rageUiOperation4 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  nameValue = false
  stringHelper2(rageUiOperation4, nameValue)
  stringHelper2 = RequestScriptAudioBank
  rageUiOperation4 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  nameValue = false
  stringHelper2(rageUiOperation4, nameValue)
  stringHelper2 = RMenu
  rageUiOperation4 = stringHelper2
  stringHelper2 = stringHelper2.Get
  nameValue = "lscustoms"
  text17 = "mainmenu"
  -- Beginner: result below is menu.
  stringHelper2 = stringHelper2(rageUiOperation4, nameValue, text17)
  rageUiOperation4 = stringHelper2
  stringHelper2 = stringHelper2.SetSubtitle
  nameValue = rageUiOperation3.name
  stringHelper2(rageUiOperation4, nameValue)
  stringHelper2 = workingValue43
  rageUiOperation4 = cmgOperation.category
  stringHelper2(rageUiOperation4)
  stringHelper2 = IsVehicleDamaged
  rageUiOperation4 = text15
  stringHelper2 = stringHelper2(rageUiOperation4)
  if stringHelper2 then
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.Visible
    rageUiOperation4 = RMenu
    nameValue = rageUiOperation4
    rageUiOperation4 = rageUiOperation4.Get
    text17 = "lscustoms"
    text18 = "repair"
    -- Beginner: result below is menu.
    rageUiOperation4 = rageUiOperation4(nameValue, text17, text18)
    nameValue = true
    stringHelper2(rageUiOperation4, nameValue)
  else
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.Visible
    rageUiOperation4 = RMenu
    nameValue = rageUiOperation4
    rageUiOperation4 = rageUiOperation4.Get
    text17 = "lscustoms"
    text18 = "mainmenu"
    -- Beginner: result below is menu.
    rageUiOperation4 = rageUiOperation4(nameValue, text17, text18)
    nameValue = true
    stringHelper2(rageUiOperation4, nameValue)
  end
  stringHelper2 = true
  stateFlag3 = stringHelper2
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue45; parameters: localValue1, localValue2, localValue3) ===
function workingValue45(localValue1, localValue2, localValue3)
  local text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation
  if localValue1 and 0 ~= localValue1 then
    text7 = DoesEntityExist
    stringHelper2 = localValue1
    text7 = text7(stringHelper2)
    if text7 then
      goto continueAtStep11
    end
  end
  return
  ::continueAtStep11::
  text7 = CMG
  text7 = text7.isInsideLsCustoms
  text7 = text7()
  if text7 then
    return
  end
  if localValue2 then
    text7 = localValue2.x
    if text7 then
      text7 = localValue2.y
      if text7 then
        text7 = localValue2.z
        if text7 then
          workingValue3 = localValue2
          text7 = localValue3 or text7
          if not localValue3 then
            text7 = 0.0
          end
          workingValue5 = text7
      end
    end
  end
  else
    text7 = nil
    workingValue3 = text7
    text7 = nil
    workingValue5 = text7
  end
  text7 = nil
  stringHelper2 = pairs
  rageUiOperation4 = cmgOperation.garages
  stringHelper2, rageUiOperation4, nameValue, text17 = stringHelper2(rageUiOperation4)
  for text18, rageUiOperation7 in stringHelper2, rageUiOperation4, nameValue, text17 do
    rageUiOperation = rageUiOperation7.remoteOnly
    if rageUiOperation then
      text7 = rageUiOperation7
      break
    end
  end
  if text7 then
    stringHelper2 = text7.index
    if stringHelper2 then
      goto continueAtStep64
    end
  end
  stringHelper2 = notify
  rageUiOperation4 = "~r~Remote LS Customs is not available."
  -- Beginner: Show a notification to the player.
  stringHelper2(rageUiOperation4)
  stringHelper2 = nil
  workingValue3 = stringHelper2
  stringHelper2 = nil
  workingValue5 = stringHelper2
  return
  ::continueAtStep64::
  stringHelper2 = GetEntityModel
  rageUiOperation4 = localValue1
  -- Beginner: result below is modelHash.
  stringHelper2 = stringHelper2(rageUiOperation4)
  rageUiOperation4 = IsThisModelACar
  nameValue = stringHelper2
  rageUiOperation4 = rageUiOperation4(nameValue)
  if not rageUiOperation4 then
    rageUiOperation4 = IsThisModelABike
    nameValue = stringHelper2
    rageUiOperation4 = rageUiOperation4(nameValue)
    if not rageUiOperation4 then
      rageUiOperation4 = notify
      nameValue = "~r~Remote LS Customs is only for cars and bikes."
      rageUiOperation4(nameValue)
      rageUiOperation4 = nil
      workingValue3 = rageUiOperation4
      rageUiOperation4 = nil
      workingValue5 = rageUiOperation4
      return
    end
  end
  rageUiOperation3 = text7
  text15 = localValue1
  rageUiOperation4 = Citizen
  rageUiOperation4 = rageUiOperation4.CreateThread
  nameValue = text9
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  rageUiOperation4(nameValue)
end
cmgOperation3.enterRemoteLsCustomsFromGarage = workingValue45

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5
  localValue1 = assert
  localValue2 = rageUiOperation3
  localValue3 = "Unable to drive out of garage without a current garage assigned"
  localValue1(localValue2, localValue3)
  localValue1 = SetPlayerControl
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = false
  text7 = 0
  localValue1(localValue2, localValue3, text7)
  localValue1 = DoScreenFadeOut
  localValue2 = 500
  localValue1(localValue2)
  while true do
    localValue1 = IsScreenFadingOut
    localValue1 = localValue1()
    if not localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = tCMG
  localValue1 = localValue1.applyModsOnVehicle
  localValue2 = text8
  localValue3 = rageUiOperation5
  text7 = text15
  localValue1(localValue2, localValue3, text7)
  localValue1 = rageUiOperation3.remoteOnly
  if localValue1 then
    localValue1 = workingValue3
    if localValue1 then
      localValue1 = workingValue3
      localValue2 = workingValue5
      if not localValue2 then
        localValue2 = 0.0
      end
      localValue3 = rageUiOperation3.index
      text7 = nil
      workingValue3 = text7
      text7 = nil
      workingValue5 = text7
      text7 = FadeOutLocalPlayer
      stringHelper2 = false
      text7(stringHelper2)
      text7 = rageUiOperation6
      if 0 ~= text7 then
        text7 = SetCamActive
        stringHelper2 = rageUiOperation6
        rageUiOperation4 = false
        text7(stringHelper2, rageUiOperation4)
        text7 = RenderScriptCams
        stringHelper2 = false
        rageUiOperation4 = false
        nameValue = 0
        text17 = false
        text18 = false
        text7(stringHelper2, rageUiOperation4, nameValue, text17, text18)
        text7 = DestroyCam
        stringHelper2 = rageUiOperation6
        rageUiOperation4 = false
        text7(stringHelper2, rageUiOperation4)
        text7 = 0
        rageUiOperation6 = text7
      end
      text7 = SetEntityCoords
      stringHelper2 = text15
      rageUiOperation4 = localValue1.x
      nameValue = localValue1.y
      text17 = localValue1.z
      text17 = text17 + 0.5
      text18 = false
      rageUiOperation7 = false
      rageUiOperation = false
      workingValue = false
      -- Beginner: Move/teleport an entity to new coordinates.
      text7(stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
      text7 = SetEntityHeading
      stringHelper2 = text15
      rageUiOperation4 = localValue2
      -- Beginner: Change the direction an entity is facing.
      text7(stringHelper2, rageUiOperation4)
      text7 = GetPedInVehicleSeat
      stringHelper2 = text15
      rageUiOperation4 = -1
      text7 = text7(stringHelper2, rageUiOperation4)
      stringHelper2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      stringHelper2 = stringHelper2()
      if text7 ~= stringHelper2 then
        text7 = TaskWarpPedIntoVehicle
        stringHelper2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        stringHelper2 = stringHelper2()
        rageUiOperation4 = text15
        nameValue = -1
        text7(stringHelper2, rageUiOperation4, nameValue)
        text7 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        text7 = text7()
        text7 = text7 + 2000
        while true do
          stringHelper2 = GetPedInVehicleSeat
          rageUiOperation4 = text15
          nameValue = -1
          stringHelper2 = stringHelper2(rageUiOperation4, nameValue)
          rageUiOperation4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          rageUiOperation4 = rageUiOperation4()
          if stringHelper2 == rageUiOperation4 then
            break
          end
          stringHelper2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          stringHelper2 = stringHelper2()
          if not (text7 > stringHelper2) then
            break
          end
          stringHelper2 = Citizen
          stringHelper2 = stringHelper2.Wait
          rageUiOperation4 = 0
          stringHelper2(rageUiOperation4)
        end
      end
      text7 = SetEntityCollision
      stringHelper2 = text15
      rageUiOperation4 = true
      nameValue = true
      text7(stringHelper2, rageUiOperation4, nameValue)
      text7 = FreezeEntityPosition
      stringHelper2 = text15
      rageUiOperation4 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      text7(stringHelper2, rageUiOperation4)
      text7 = SetVehicleOnGroundProperly
      stringHelper2 = text15
      text7(stringHelper2)
      text7 = SetVehicleDoorsLocked
      stringHelper2 = text15
      rageUiOperation4 = 0
      text7(stringHelper2, rageUiOperation4)
      text7 = SetPlayerInvincible
      stringHelper2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      stringHelper2 = stringHelper2()
      rageUiOperation4 = false
      text7(stringHelper2, rageUiOperation4)
      text7 = SetVehicleLights
      stringHelper2 = text15
      rageUiOperation4 = 0
      text7(stringHelper2, rageUiOperation4)
      text7 = NetworkLeaveTransition
      text7()
      text7 = ClearPedTasks
      stringHelper2 = PlayerPedId
      stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5 = stringHelper2()
      text7(stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
      text7 = SetEntityInvincible
      stringHelper2 = text15
      rageUiOperation4 = false
      text7(stringHelper2, rageUiOperation4)
      text7 = SetEntityCanBeDamaged
      stringHelper2 = text15
      rageUiOperation4 = true
      text7(stringHelper2, rageUiOperation4)
      text7 = CMG
      text7 = text7.setVehicleFixedPreservingFuel
      stringHelper2 = text15
      text7(stringHelper2)
      text7 = ReleaseNamedScriptAudioBank
      stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
      text7(stringHelper2)
      text7 = ReleaseNamedScriptAudioBank
      stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
      text7(stringHelper2)
      text7 = TriggerServerEvent
      stringHelper2 = "ae63f8542b"
      rageUiOperation4 = localValue3
      nameValue = false
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
      text7(stringHelper2, rageUiOperation4, nameValue)
      text7 = nil
      rageUiOperation3 = text7
      text7 = 0
      text15 = text7
      text7 = SetPlayerControl
      stringHelper2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      stringHelper2 = stringHelper2()
      rageUiOperation4 = true
      nameValue = 0
      text7(stringHelper2, rageUiOperation4, nameValue)
      text7 = DisplayRadar
      stringHelper2 = true
      text7(stringHelper2)
      text7 = DoScreenFadeIn
      stringHelper2 = 500
      text7(stringHelper2)
      while true do
        text7 = IsScreenFadingIn
        text7 = text7()
        if not text7 then
          break
        end
        text7 = Citizen
        text7 = text7.Wait
        stringHelper2 = 0
        text7(stringHelper2)
      end
      return
    end
  end
  localValue1 = rageUiOperation3.driveOut
  localValue2 = SetEntityCoords
  localValue3 = text15
  text7 = localValue1.position
  text7 = text7.x
  stringHelper2 = localValue1.position
  stringHelper2 = stringHelper2.y
  rageUiOperation4 = localValue1.position
  rageUiOperation4 = rageUiOperation4.z
  nameValue = false
  text17 = false
  text18 = false
  rageUiOperation7 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7)
  localValue2 = SetEntityHeading
  localValue3 = text15
  text7 = localValue1.heading
  -- Beginner: Change the direction an entity is facing.
  localValue2(localValue3, text7)
  localValue2 = SetEntityCollision
  localValue3 = text15
  text7 = true
  stringHelper2 = true
  localValue2(localValue3, text7, stringHelper2)
  localValue2 = FreezeEntityPosition
  localValue3 = text15
  text7 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, text7)
  localValue2 = SetVehicleOnGroundProperly
  localValue3 = text15
  localValue2(localValue3)
  localValue2 = SetVehicleDoorsLocked
  localValue3 = text15
  text7 = 0
  localValue2(localValue3, text7)
  localValue2 = SetPlayerInvincible
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  text7 = false
  localValue2(localValue3, text7)
  localValue2 = SetVehicleLights
  localValue3 = text15
  text7 = 0
  localValue2(localValue3, text7)
  localValue2 = NetworkLeaveTransition
  localValue2()
  localValue2 = rageUiOperation3.type
  if "automobile" == localValue2 then
    localValue2 = rageUiOperation3.teleportDontDriveOut
    if localValue2 then
      localValue2 = SetEntityCoords
      localValue3 = text15
      text7 = rageUiOperation3.outside
      text7 = text7.position
      text7 = text7.x
      stringHelper2 = rageUiOperation3.outside
      stringHelper2 = stringHelper2.position
      stringHelper2 = stringHelper2.y
      rageUiOperation4 = rageUiOperation3.outside
      rageUiOperation4 = rageUiOperation4.position
      rageUiOperation4 = rageUiOperation4.z
      nameValue = false
      text17 = false
      text18 = false
      rageUiOperation7 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7)
    else
      localValue2 = SetCamActive
      localValue3 = rageUiOperation6
      text7 = false
      localValue2(localValue3, text7)
      localValue2 = RenderScriptCams
      localValue3 = false
      text7 = false
      stringHelper2 = 0
      rageUiOperation4 = false
      nameValue = false
      localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue)
      localValue2 = DestroyCam
      localValue3 = rageUiOperation6
      text7 = false
      localValue2(localValue3, text7)
      localValue2 = 0
      rageUiOperation6 = localValue2
      localValue2 = rageUiOperation3.outside
      localValue3 = TaskVehicleDriveToCoord
      text7 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      text7 = text7()
      stringHelper2 = text15
      rageUiOperation4 = localValue2.position
      rageUiOperation4 = rageUiOperation4.x
      nameValue = localValue2.position
      nameValue = nameValue.y
      text17 = localValue2.position
      text17 = text17.z
      text18 = 3.0
      rageUiOperation7 = 0.1
      rageUiOperation = GetEntityModel
      workingValue = text15
      -- Beginner: result below is modelHash.
      rageUiOperation = rageUiOperation(workingValue)
      workingValue = 16777216
      workingValue2 = 0.1
      stateFlag5 = 1
      localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
    end
  end
  localValue2 = rageUiOperation3.interior
  if localValue2 then
    localValue3 = ForceRoomForEntity
    text7 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text7 = text7()
    stringHelper2 = localValue2.key
    rageUiOperation4 = localValue2.room
    localValue3(text7, stringHelper2, rageUiOperation4)
    localValue3 = ForceRoomForEntity
    text7 = text15
    stringHelper2 = localValue2.key
    rageUiOperation4 = localValue2.room
    localValue3(text7, stringHelper2, rageUiOperation4)
    localValue3 = ForceRoomForGameViewport
    text7 = localValue2.key
    stringHelper2 = localValue2.room
    localValue3(text7, stringHelper2)
  end
  localValue3 = DoScreenFadeIn
  text7 = 3000
  localValue3(text7)
  while true do
    localValue3 = IsScreenFadingIn
    localValue3 = localValue3()
    if not localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    text7 = 0
    localValue3(text7)
  end
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  while true do
    text7 = IsVehicleStopped
    stringHelper2 = text15
    text7 = text7(stringHelper2)
    if text7 then
      break
    end
    text7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text7 = text7()
    text7 = text7 - localValue3
    stringHelper2 = 15000
    if text7 > stringHelper2 then
      break
    end
    text7 = Citizen
    text7 = text7.Wait
    stringHelper2 = 0
    text7(stringHelper2)
  end
  text7 = ClearPedTasks
  stringHelper2 = PlayerPedId
  stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5 = stringHelper2()
  text7(stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
  text7 = SetEntityInvincible
  stringHelper2 = text15
  rageUiOperation4 = false
  text7(stringHelper2, rageUiOperation4)
  text7 = SetEntityCanBeDamaged
  stringHelper2 = text15
  rageUiOperation4 = true
  text7(stringHelper2, rageUiOperation4)
  text7 = CMG
  text7 = text7.setVehicleFixedPreservingFuel
  stringHelper2 = text15
  text7(stringHelper2)
  text7 = ReleaseNamedScriptAudioBank
  stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  text7(stringHelper2)
  text7 = ReleaseNamedScriptAudioBank
  stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  text7(stringHelper2)
  text7 = TriggerServerEvent
  stringHelper2 = "ae63f8542b"
  rageUiOperation4 = rageUiOperation3.index
  nameValue = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
  text7(stringHelper2, rageUiOperation4, nameValue)
  text7 = nil
  rageUiOperation3 = text7
  text7 = 0
  text15 = text7
  text7 = SetPlayerControl
  stringHelper2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stringHelper2 = stringHelper2()
  rageUiOperation4 = true
  nameValue = 0
  text7(stringHelper2, rageUiOperation4, nameValue)
  text7 = DisplayRadar
  stringHelper2 = true
  text7(stringHelper2)
end

-- === HELPER FUNCTION (decompiler name: workingValue45; parameters: localValue1) ===
function workingValue45(localValue1)
  local localValue2, localValue3, text7
  localValue2 = CMG
  localValue2 = localValue2.TriggerServerCallback
  localValue3 = "4268e2656a"
  text7 = localValue1.index
  localValue2 = localValue2(localValue3, text7)
  localValue1.isLocked = localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue46; parameters: localValue1) ===
function workingValue46(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  localValue2, localValue3 = localValue2()
  if 0 ~= localValue2 and localValue3 then
    text7 = rageUiOperation3
    if not text7 then
      goto continueAtStep12
    end
  end
  return
  ::continueAtStep12::
  text7 = tCMG
  text7 = text7.getVehicleInfos
  stringHelper2 = localValue2
  text7 = text7(stringHelper2)
  stringHelper2 = GetEntityModel
  rageUiOperation4 = localValue2
  -- Beginner: result below is modelHash.
  stringHelper2 = stringHelper2(rageUiOperation4)
  rageUiOperation4 = localValue1.isLocked
  if rageUiOperation4 then
    rageUiOperation4 = CMG
    rageUiOperation4 = rageUiOperation4.DrawText
    nameValue = 0.5
    text17 = 0.8
    text18 = "~r~Locked, please wait~w~"
    rageUiOperation7 = 1.0
    rageUiOperation = 4
    workingValue = 0
    rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
  else
    rageUiOperation4 = localValue1.type
    if "plane" == rageUiOperation4 then
      rageUiOperation4 = IsThisModelAPlane
      nameValue = stringHelper2
      rageUiOperation4 = rageUiOperation4(nameValue)
      if not rageUiOperation4 then
        rageUiOperation4 = CMG
        rageUiOperation4 = rageUiOperation4.DrawText
        nameValue = 0.5
        text17 = 0.8
        text18 = "~r~You must be a in a plane to use this~w~"
        rageUiOperation7 = 1.0
        rageUiOperation = 4
        workingValue = 0
        rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
    end
    else
      rageUiOperation4 = localValue1.type
      if "boat" == rageUiOperation4 then
        rageUiOperation4 = IsThisModelABoat
        nameValue = stringHelper2
        rageUiOperation4 = rageUiOperation4(nameValue)
        if not rageUiOperation4 then
          rageUiOperation4 = CMG
          rageUiOperation4 = rageUiOperation4.DrawText
          nameValue = 0.5
          text17 = 0.8
          text18 = "~r~You must be a in a boat to use this~w~"
          rageUiOperation7 = 1.0
          rageUiOperation = 4
          workingValue = 0
          rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
      end
      else
        rageUiOperation4 = CMG
        rageUiOperation4 = rageUiOperation4.getClientUserId
        -- Beginner: result below is userId.
        rageUiOperation4 = rageUiOperation4()
        if text7 ~= rageUiOperation4 then
          rageUiOperation4 = CMG
          rageUiOperation4 = rageUiOperation4.DrawText
          nameValue = 0.5
          text17 = 0.8
          text18 = "~r~Denied, you are not the vehicle owner~w~"
          rageUiOperation7 = 1.0
          rageUiOperation = 4
          workingValue = 0
          rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
        else
          rageUiOperation4 = CMG
          rageUiOperation4 = rageUiOperation4.DrawText
          nameValue = 0.5
          text17 = 0.8
          text18 = "Press ~b~ENTER~w~ to enter ~b~"
          rageUiOperation7 = localValue1.name
          rageUiOperation = "~w~"
          text18 = text18 .. rageUiOperation7 .. rageUiOperation
          rageUiOperation7 = 1.0
          rageUiOperation = 4
          workingValue = 0
          rageUiOperation4(nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue)
          rageUiOperation4 = IsControlJustPressed
          nameValue = 0
          text17 = 201
          rageUiOperation4 = rageUiOperation4(nameValue, text17)
          if rageUiOperation4 then
            rageUiOperation4 = CMG
            rageUiOperation4 = rageUiOperation4.TriggerServerCallback
            nameValue = "4268e2656a"
            text17 = localValue1.index
            rageUiOperation4 = rageUiOperation4(nameValue, text17)
            localValue1.isLocked = rageUiOperation4
            rageUiOperation4 = localValue1.isLocked
            if not rageUiOperation4 then
              rageUiOperation3 = localValue1
              text15 = localValue2
              rageUiOperation4 = Citizen
              rageUiOperation4 = rageUiOperation4.CreateThread
              nameValue = workingValue44
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              rageUiOperation4(nameValue)
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue47; parameters: localValue1) ===
function workingValue47(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  text7 = localValue3
  localValue3 = localValue3.Get
  stringHelper2 = "lscustoms"
  rageUiOperation4 = localValue1.menu
  localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18 = localValue3(text7, stringHelper2, rageUiOperation4)
  -- Beginner: result below is menuVisible.
  localValue2 = localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18)
  if localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = localValue1.type
  if "externalMenu" == localValue2 then
    localValue2 = RageUI
    localValue2 = localValue2.Visible
    localValue3 = RMenu
    text7 = localValue3
    localValue3 = localValue3.Get
    stringHelper2 = localValue1.menuType
    rageUiOperation4 = localValue1.menuName
    localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18 = localValue3(text7, stringHelper2, rageUiOperation4)
    return localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18)
  else
    localValue2 = localValue1.type
    if "categoryList" == localValue2 then
      localValue2 = pairs
      localValue3 = localValue1.categories
      localValue2, localValue3, text7, stringHelper2 = localValue2(localValue3)
      for rageUiOperation4, nameValue in localValue2, localValue3, text7, stringHelper2 do
        text17 = workingValue47
        text18 = nameValue
        text17 = text17(text18)
        if text17 then
          text17 = true
          return text17
        end
      end
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue48; parameters: none) ===
function workingValue48()
  local localValue1, localValue2, localValue3, text7, stringHelper2
  localValue1 = rageUiOperation3
  if localValue1 then
    localValue1 = SetLocalPlayerVisibleLocally
    localValue2 = true
    localValue1(localValue2)
    localValue1 = stateFlag3
    if localValue1 then
      localValue1 = workingValue47
      localValue2 = cmgOperation.category
      localValue1 = localValue1(localValue2)
      if not localValue1 then
        localValue1 = RageUI
        localValue1 = localValue1.Visible
        localValue2 = RMenu
        localValue3 = localValue2
        localValue2 = localValue2.Get
        text7 = "lscustoms"
        stringHelper2 = "repair"
        localValue2, localValue3, text7, stringHelper2 = localValue2(localValue3, text7, stringHelper2)
        -- Beginner: result below is menuVisible.
        localValue1 = localValue1(localValue2, localValue3, text7, stringHelper2)
        if not localValue1 then
          localValue1 = Citizen
          localValue1 = localValue1.CreateThread
          localValue2 = cmgOperation3
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue1(localValue2)
          localValue1 = false
          stateFlag3 = localValue1
        end
      end
    end
  end
end
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number
  localValue1 = pairs
  localValue2 = cmgOperation.garages
  localValue1, localValue2, localValue3, text7 = localValue1(localValue2)
  for stringHelper2, rageUiOperation4 in localValue1, localValue2, localValue3, text7 do
    rageUiOperation4.index = stringHelper2
    nameValue = rageUiOperation4.remoteOnly
    if nameValue then
    else
      nameValue = rageUiOperation4.type
      if "plane" == nameValue then
        nameValue = 3.0
        if nameValue then
          goto continueAtStep17
        end
      end
      nameValue = 1.0
      ::continueAtStep17::
      text17 = CMG
      text17 = text17.createArea
      text18 = "lscustoms_"
      rageUiOperation7 = tostring
      rageUiOperation = stringHelper2
      rageUiOperation7 = rageUiOperation7(rageUiOperation)
      text18 = text18 .. rageUiOperation7
      rageUiOperation7 = rageUiOperation4.driveIn
      rageUiOperation7 = rageUiOperation7.position
      rageUiOperation = 5.0 * nameValue
      workingValue = 6.0 * nameValue
      workingValue2 = workingValue45

      -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
      function stateFlag5()
        local localValue12, localValue22
      end
      stateFlag6 = workingValue46
      number = rageUiOperation4
      -- Beginner: Create an interaction area around a world position.
      text17(text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number)
      text17 = rageUiOperation4.hiddenOnMap
      if not text17 then
        text17 = tCMG
        text17 = text17.addBlip
        text18 = rageUiOperation4.inside
        text18 = text18.position
        text18 = text18.x
        rageUiOperation7 = rageUiOperation4.inside
        rageUiOperation7 = rageUiOperation7.position
        rageUiOperation7 = rageUiOperation7.y
        rageUiOperation = rageUiOperation4.inside
        rageUiOperation = rageUiOperation.position
        rageUiOperation = rageUiOperation.z
        workingValue = 72
        workingValue2 = nil
        stateFlag5 = "LS Customs"
        -- Beginner: Create a minimap blip.
        text17(text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5)
      end
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.createThreadOnTick
  localValue2 = workingValue48
  localValue3 = "LSCustoms"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue1(localValue2, localValue3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(text10)
eventHandler = RegisterNetEvent
text10 = "b5a8ef81c1"
-- Beginner: this function handles network event "b5a8ef81c1".

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, text7, stringHelper2 = localValue2(localValue3)
  for rageUiOperation4, nameValue in localValue2, localValue3, text7, stringHelper2 do
    text17 = cmgOperation.garages
    text17 = text17[nameValue]
    text17.isLocked = true
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b5a8ef81c1".
eventHandler(text10, text11)
eventHandler = RegisterNetEvent
text10 = "08cf0d5d45"
-- Beginner: this function handles network event "08cf0d5d45".

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2
  text8 = localValue1
end
eventHandler(text10, text11)
eventHandler = RegisterNetEvent
text10 = "6b3c48e86c"
-- Beginner: this function handles network event "6b3c48e86c".

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1, localValue2) ===
function text11(localValue1, localValue2)
  local localValue3
  localValue3 = text8
  localValue3[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6b3c48e86c".
eventHandler(text10, text11)
eventHandler = RegisterNetEvent
text10 = "d4574bdb4a"
-- Beginner: this function handles network event "d4574bdb4a".

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, text7, stringHelper2
  localValue1 = CMG
  localValue1 = localValue1.setVehicleFixedPreservingFuel
  localValue2 = text15
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  text7 = "lscustoms"
  stringHelper2 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, text7, stringHelper2)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d4574bdb4a".
eventHandler(text10, text11)
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2
  localValue1 = rageUiOperation3
  localValue1 = nil ~= localValue1
  return localValue1
end
eventHandler.isInsideLsCustoms = text10

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation
  localValue2 = "Not Set"
  localValue3 = DecorGetInt
  text7 = localValue1
  stringHelper2 = "6939027d97"
  localValue3 = localValue3(text7, stringHelper2)
  if localValue3 and 0 ~= localValue3 then
    text7 = pairs
    stringHelper2 = cmgOperation.customExhausts
    text7, stringHelper2, rageUiOperation4, nameValue = text7(stringHelper2)
    for text17, text18 in text7, stringHelper2, rageUiOperation4, nameValue do
      rageUiOperation7 = GetHashKey
      rageUiOperation = text18.soundId
      -- Beginner: result below is hash.
      rageUiOperation7 = rageUiOperation7(rageUiOperation)
      if rageUiOperation7 == localValue3 then
        localValue2 = text18.name
        break
      end
    end
  end
  text7 = DecorGetBool
  stringHelper2 = localValue1
  rageUiOperation4 = "9d5712766f"
  text7 = text7(stringHelper2, rageUiOperation4)
  if text7 then
    text7 = "Yes"
    if text7 then
      goto continueAtStep34
    end
  end
  text7 = "No"
  ::continueAtStep34::
  stringHelper2 = json
  stringHelper2 = stringHelper2.encode
  rageUiOperation4 = Entity
  nameValue = localValue1
  rageUiOperation4 = rageUiOperation4(nameValue)
  rageUiOperation4 = rageUiOperation4.state
  rageUiOperation4 = rageUiOperation4.biometricUsers
  if not rageUiOperation4 then
    rageUiOperation4 = {}
  end
  stringHelper2 = stringHelper2(rageUiOperation4)
  rageUiOperation4 = string
  rageUiOperation4 = rageUiOperation4.format
  nameValue = [[
Audio Override: %s
Biometric Lock: %s
Biometric Users: %s]]
  text17 = localValue2
  text18 = text7
  rageUiOperation7 = stringHelper2
  return rageUiOperation4(nameValue, text17, text18, rageUiOperation7)
end
text10 = CMG
text10 = text10.registerDevMenuEntityEditor
text11 = "LS Customs"
cmgOperation4 = "vehicle"
text12 = eventHandler

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
end
text10(text11, cmgOperation4, text12, cmgOperation5)
text10 = {}
text10[0] = "cfg.sportsWheels"
text10[1] = "cfg.muscleWheels"
text10[2] = "cfg.lowriderWheels"
text10[3] = "cfg.suvWheels"
text10[4] = "cfg.offroadWheels"
text10[5] = "cfg.tunerWheels"
text10[6] = "cfg.bikeWheels"
text10[7] = "cfg.highendWheels"
text10[8] = "cfg.bennysOneWheels"
text10[9] = "cfg.beenysTwoWheels"
text10[10] = "cfg.openWheels"
text10[11] = "cfg.streetWheels"
text10[12] = "cfg.trackWheels"

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number, stateFlag7, number2, stringHelper, text4, workingValue12, workingValue14, workingValue16
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = -1216765807
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.spawnVehicle
  localValue3 = -1216765807
  text7 = localValue1.x
  stringHelper2 = localValue1.y
  rageUiOperation4 = localValue1.z
  nameValue = 0.0
  text17 = false
  text18 = false
  rageUiOperation7 = false
  localValue2 = localValue2(localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7)
  localValue3 = SetVehicleModKit
  text7 = localValue2
  stringHelper2 = 0
  localValue3(text7, stringHelper2)
  localValue3 = ""
  text7 = pairs
  stringHelper2 = text10
  text7, stringHelper2, rageUiOperation4, nameValue = text7(stringHelper2)
  for text17, text18 in text7, stringHelper2, rageUiOperation4, nameValue do
    rageUiOperation7 = localValue3
    rageUiOperation = string
    rageUiOperation = rageUiOperation.format
    workingValue = [[
%s = {
	{name = "Stock", type = %s, index = -1, price = 0},
]]
    workingValue2 = text18
    stateFlag5 = text17
    rageUiOperation = rageUiOperation(workingValue, workingValue2, stateFlag5)
    rageUiOperation7 = rageUiOperation7 .. rageUiOperation
    localValue3 = rageUiOperation7
    rageUiOperation7 = SetVehicleWheelType
    rageUiOperation = localValue2
    workingValue = text17
    rageUiOperation7(rageUiOperation, workingValue)
    rageUiOperation7 = GetNumVehicleMods
    rageUiOperation = localValue2
    workingValue = 23
    rageUiOperation7 = rageUiOperation7(rageUiOperation, workingValue)
    rageUiOperation = 0
    workingValue = -1
    workingValue2 = rageUiOperation7
    stateFlag5 = 1
    for stateFlag6 = workingValue, workingValue2, stateFlag5 do
      number = GetModTextLabel
      stateFlag7 = localValue2
      number2 = 23
      stringHelper = stateFlag6
      number = number(stateFlag7, number2, stringHelper)
      if number then
        stateFlag7 = GetLabelText
        number2 = number
        stateFlag7 = stateFlag7(number2)
        if "NULL" ~= stateFlag7 then
          number2 = localValue3
          stringHelper = string
          stringHelper = stringHelper.format
          text4 = "\t{name = \"%s\", type = %s, index = %s, price = 50000},\n"
          workingValue12 = stateFlag7
          workingValue14 = text17
          workingValue16 = stateFlag6
          stringHelper = stringHelper(text4, workingValue12, workingValue14, workingValue16)
          number2 = number2 .. stringHelper
          localValue3 = number2
        else
          rageUiOperation = rageUiOperation + 1
        end
      else
        rageUiOperation = rageUiOperation + 1
      end
    end
    if rageUiOperation > 0 then
      workingValue = print
      workingValue2 = "^3Warning: %s wheels are missing from wheel type %s due to missing/invalid labels."
      stateFlag5 = rageUiOperation
      stateFlag6 = text17
      workingValue(workingValue2, stateFlag5, stateFlag6)
    end
    workingValue = localValue3
    workingValue2 = [[
}

]]
    workingValue = workingValue .. workingValue2
    localValue3 = workingValue
  end
  text7 = DeleteEntity
  stringHelper2 = localValue2
  -- Beginner: Delete a GTA entity.
  text7(stringHelper2)
  text7 = SetModelAsNoLongerNeeded
  stringHelper2 = -1216765807
  text7(stringHelper2)
  text7 = CMG
  text7 = text7.copyToClipboard
  stringHelper2 = localValue3
  text7(stringHelper2)
  text7 = notify
  stringHelper2 = source
  rageUiOperation4 = "~g~Wheels config copied to clipboard!"
  -- Beginner: Show a notification to the player.
  text7(stringHelper2, rageUiOperation4)
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.registerDevMenuItems
text12 = "LS Customs"

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Copy Wheels Config"
  localValue3 = "Copies the wheels config to the clipboard."
  text7 = true

  -- === HELPER FUNCTION: stringHelper2(localValue12, localValue22, localValue32) ===
  function stringHelper2(localValue12, localValue22, localValue32)
    local localValue4
    if localValue32 then
      localValue4 = text11
      localValue4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, text7, stringHelper2)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  localValue2 = RageUI
  localValue2 = localValue2.Button
  localValue3 = "Set Wheel Type"
  text7 = string
  text7 = text7.format
  stringHelper2 = "Sets the wheel type for the current vehicle. Currently: %s"
  rageUiOperation4 = GetVehicleWheelType
  nameValue = localValue1
  rageUiOperation4, nameValue, text17, text18 = rageUiOperation4(nameValue)
  text7 = text7(stringHelper2, rageUiOperation4, nameValue, text17, text18)
  stringHelper2 = true

  -- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue12, localValue22, localValue32) ===
  function rageUiOperation4(localValue12, localValue22, localValue32)
    local localValue4, stateFlag8, stateFlag10, workingValue49
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      stateFlag8 = "Wheel Type"
      stateFlag10 = ""

      -- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue13) ===
      function workingValue49(localValue13)
        local localValue23, localValue33, number4, stateFlag9
        localValue23 = tonumber
        localValue33 = localValue13
        localValue23 = localValue23(localValue33)
        if localValue23 then
          localValue33 = SetVehicleWheelType
          number4 = localValue1
          stateFlag9 = localValue23
          localValue33(number4, stateFlag9)
        end
      end
      localValue4(stateFlag8, stateFlag10, workingValue49)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue2(localValue3, text7, stringHelper2, rageUiOperation4)
  localValue2 = RageUI
  localValue2 = localValue2.Button
  localValue3 = "Set Wheel Index"
  text7 = string
  text7 = text7.format
  stringHelper2 = "Sets the wheel index for the current vehicle. Currently: %s"
  rageUiOperation4 = GetVehicleMod
  nameValue = localValue1
  text17 = 23
  rageUiOperation4, nameValue, text17, text18 = rageUiOperation4(nameValue, text17)
  text7 = text7(stringHelper2, rageUiOperation4, nameValue, text17, text18)
  stringHelper2 = true

  -- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue12, localValue22, localValue32) ===
  function rageUiOperation4(localValue12, localValue22, localValue32)
    local localValue4, stateFlag8, stateFlag10, workingValue49
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      stateFlag8 = "Wheel Index"
      stateFlag10 = ""

      -- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue13) ===
      function workingValue49(localValue13)
        local localValue23, localValue33, number4, stateFlag9, stateFlag11, number5
        localValue23 = tonumber
        localValue33 = localValue13
        localValue23 = localValue23(localValue33)
        if localValue23 then
          localValue33 = CMG
          localValue33 = localValue33.setVehicleMod
          number4 = localValue1
          stateFlag9 = 23
          stateFlag11 = localValue23
          number5 = false
          localValue33(number4, stateFlag9, stateFlag11, number5)
        end
      end
      localValue4(stateFlag8, stateFlag10, workingValue49)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue2(localValue3, text7, stringHelper2, rageUiOperation4)
  localValue2 = GetVehicleTyresCanBurst
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = RageUI
  localValue3 = localValue3.Checkbox
  text7 = "Tyres Can Burst"
  stringHelper2 = "Whether the vehicle you are currently in can burst its tyres."
  rageUiOperation4 = localValue2
  nameValue = {}

  -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32, localValue4) ===
  function text17(localValue12, localValue22, localValue32, localValue4)
    local stateFlag8, stateFlag10, workingValue49
    stateFlag8 = localValue2
    if stateFlag8 ~= localValue4 then
      stateFlag8 = SetVehicleTyresCanBurst
      stateFlag10 = localValue1
      workingValue49 = localValue4
      stateFlag8(stateFlag10, workingValue49)
    end
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue3(text7, stringHelper2, rageUiOperation4, nameValue, text17)
  localValue3 = DecorGetBool
  text7 = localValue1
  stringHelper2 = "bb6df5797c"
  localValue3 = localValue3(text7, stringHelper2)
  text7 = RageUI
  text7 = text7.Checkbox
  stringHelper2 = "Has Bulletproof Decor"
  rageUiOperation4 = "Whether the vehicle you are currently has the bulletproof decor."
  nameValue = localValue3
  text17 = {}

  -- === HELPER FUNCTION (decompiler name: text18; parameters: localValue12, localValue22, localValue32, localValue4) ===
  function text18(localValue12, localValue22, localValue32, localValue4)
    local stateFlag8, stateFlag10, workingValue49, workingValue50
    stateFlag8 = localValue3
    if stateFlag8 ~= localValue4 then
      stateFlag8 = DecorSetBool
      stateFlag10 = localValue1
      workingValue49 = "bb6df5797c"
      workingValue50 = localValue4
      stateFlag8(stateFlag10, workingValue49, workingValue50)
    end
  end
  -- Beginner: Draw a RageUI checkbox.
  text7(stringHelper2, rageUiOperation4, nameValue, text17, text18)
end
cmgOperation4(text12, cmgOperation5)
cmgOperation4 = {}
text12 = 0
cmgOperation5 = 1
text13 = 4
text14 = 5
cmgOperation4[1] = text12
cmgOperation4[2] = cmgOperation5
cmgOperation4[3] = text13
cmgOperation4[4] = text14

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, localValue3, text7, stringHelper2, rageUiOperation4, nameValue, text17, text18, rageUiOperation7, rageUiOperation, workingValue, workingValue2, stateFlag5, stateFlag6, number
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  localValue1, localValue2 = localValue1()
  if 0 ~= localValue1 and localValue2 then
    localValue3 = DecorGetBool
    text7 = localValue1
    stringHelper2 = "bb6df5797c"
    localValue3 = localValue3(text7, stringHelper2)
    if localValue3 then
      goto continueAtStep15
    end
  end
  return
  ::continueAtStep15::
  localValue3 = pairs
  text7 = cmgOperation4
  localValue3, text7, stringHelper2, rageUiOperation4 = localValue3(text7)
  for nameValue, text17 in localValue3, text7, stringHelper2, rageUiOperation4 do
    text18 = GetTyreHealth
    rageUiOperation7 = localValue1
    rageUiOperation = text17
    text18 = text18(rageUiOperation7, rageUiOperation)
    rageUiOperation7 = 1000.0
    if text18 < rageUiOperation7 then
      rageUiOperation7 = DecorGetInt
      rageUiOperation = localValue1
      workingValue = "b36fb0e830"
      rageUiOperation7 = rageUiOperation7(rageUiOperation, workingValue)
      rageUiOperation = nameValue - 1
      rageUiOperation = rageUiOperation * 8
      workingValue = rageUiOperation7 >> rageUiOperation
      workingValue = workingValue & 255
      if workingValue < 10 then
        workingValue2 = SetTyreHealth
        stateFlag5 = localValue1
        stateFlag6 = text17
        number = 1000.0
        workingValue2(stateFlag5, stateFlag6, number)
        workingValue2 = SetVehicleTyreFixed
        stateFlag5 = localValue1
        stateFlag6 = text17
        workingValue2(stateFlag5, stateFlag6)
        workingValue = workingValue + 1
        workingValue2 = 255
        workingValue2 = workingValue2 << rageUiOperation
        workingValue2 = ~workingValue2
        rageUiOperation7 = rageUiOperation7 & workingValue2
        workingValue2 = workingValue << rageUiOperation
        rageUiOperation7 = rageUiOperation7 | workingValue2
        workingValue2 = DecorSetInt
        stateFlag5 = localValue1
        stateFlag6 = "b36fb0e830"
        number = rageUiOperation7
        workingValue2(stateFlag5, stateFlag6, number)
      end
    end
  end
end
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.createThreadOnTick
text13 = text12
text14 = "Bullet Resistant Wheels"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation5(text13, text14)
cmgOperation5 = DecorRegister
text13 = "bb6df5797c"
text14 = 2
cmgOperation5(text13, text14)
cmgOperation5 = DecorRegister
text13 = "b36fb0e830"
text14 = 3
cmgOperation5(text13, text14)
